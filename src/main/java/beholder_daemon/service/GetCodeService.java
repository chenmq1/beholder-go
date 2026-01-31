package beholder_daemon.service;

import beholder_daemon.parser.SolidityLexer;
import beholder_daemon.parser.SolidityParser;

import java.io.IOException;
import java.math.BigInteger;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.repository.ContractCodeRepository;
import beholder_daemon.utils.Chains;
import beholder_daemon.utils.GzipUtils;
import beholder_daemon.utils.SolidityVisitors;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameterName;
import org.web3j.protocol.core.methods.response.EthGetStorageAt;

@Slf4j
@Service
public class GetCodeService {

    @Autowired
    HttpClient httpClient;

    @Autowired
    HttpClient httpProxiedClient;

    @Autowired
    ContractCodeRepository contractCodeRepository;

    @Autowired
    Chains chains;

    @Autowired
    Web3Utils web3Utils;

    public static int IO_EXCEPTION_RETRY=4;

    public short getCode(String address,int chainId)throws Exception{ // return 1:eoa,2:very no decomp,4:decomp no very,6:both decomp/very, 0: neither decomp/very,8:smart eoa
        return getCode(address,chainId,"",null);
    }
    public short getCode(String address,int chainId,String verifiedProxyChain,ContractCode code)throws Exception{
        //System.out.println("get Code started...");
        String messageStr = "";
        if (code == null){
            code = new ContractCode();
            code.setAddress(address);
        }
        String binary = web3Utils.retryWithIoException(()-> chains.getWeb3j(chainId).ethGetCode(address, DefaultBlockParameterName.LATEST).send().getCode(),IO_EXCEPTION_RETRY);
        //System.out.println(binary);
        if (binary == null){
            System.out.println("======================binary code is null. address:"+address);
        }else if (binary.equals("0x")||binary.equals("0x0")){
            code.setEoa((short)1);
            contractCodeRepository.save(code);
            return 1;
        }else if (binary.startsWith("0xef0100")){
            code.setEoa((short)2);
            if (binary.length()!=48)
                throw new Exception("binary starts with 0xef0100 but length !=48:"+binary);
            String smartEoaAddress = "0x"+binary.substring(8);
            code.setSmartEoaAddress(smartEoaAddress);
            contractCodeRepository.save(code);
            //short result = getCode(smartEoaAddress,chainId);
            //log.info("getting smart eoa proxy contract({}),result:{}",smartEoaAddress,result);
            return 8;
        }else{
            code.setBinary(binary);
        }
        //System.out.println("binary:"+code.getBinary());

        Object [] verifiedResult = getVerified(address, chainId);
        System.out.println("got Code.");
        messageStr += (String)verifiedResult[1];
        JsonNode node = (JsonNode)verifiedResult[0];
        boolean verifiedGetSuccess=true;
        boolean decompiledGetSuccess=true;
        if (node == null){
            code.setVerifiedStatus("getFailed");
            verifiedGetSuccess=false;
            System.out.println("failed to get verified.");
        }else{
            String check_result = checkVerifiedCode((JsonNode)verifiedResult[0], chains.getWeb3j(chainId), address);
            if (check_result.equals("pair"))
                code.setVerifiedStatus("pair");
            else if (check_result.startsWith("0x")){
                code.setVerifiedStatus("proxy");
                verifiedProxyChain += check_result + ".";
                code.setVerifiedProxyChain(verifiedProxyChain);
                String contractName = ((JsonNode)verifiedResult[0]).get(0).get("ContractName").asText();
                code.setVerifiedFilename(contractName);
                contractCodeRepository.save(code);
                return getCode(check_result,chainId,verifiedProxyChain,code);
                //verifiedGetSuccess = false;
            }else if (check_result.equals("unverified")){
                code.setVerifiedStatus("unverified");
                verifiedGetSuccess = false;
            }else{
                code.setVerifiedStatus("downloaded");
                code.setVerifiedCodeCompressed(check_result);
                String contractName = ((JsonNode)verifiedResult[0]).get(0).get("ContractName").asText();
                code.setVerifiedFilename(contractName);
            }
        }

        if (!code.getVerifiedStatus().equals("pair")){
            String [] decompiledResult = getDecompiled(address, chainId);
            System.out.println("got decompiled Code.");
            messageStr += decompiledResult[1];
            if (decompiledResult[0]==null){
                code.setDecompiledStatus("failed");
                decompiledGetSuccess=false;
            }else if (decompiledResult[0].equals(""))
                code.setDecompiledStatus("empty");
            else{
                //check for proxy
                CharStream input = CharStreams.fromString(decompiledResult[0]);
                SolidityLexer lexer = new SolidityLexer(input);
                CommonTokenStream tokens = new CommonTokenStream(lexer);
                SolidityParser parser = new SolidityParser(tokens);
                SolidityParser.SourceUnitContext tree = parser.sourceUnit();
                Object [] result = this.proxyedAddress(tree, tokens);
                if (result != null){
                    String proxiedAddress = (String)result[1];
                    if (result [0]!=null){
                        EthGetStorageAt response;
                        response = web3Utils.retryWithIoException(() ->
                           chains.getWeb3j(chainId).ethGetStorageAt(address, new BigInteger(((String)result[0]).substring(2),16), DefaultBlockParameterName.LATEST).send(),IO_EXCEPTION_RETRY);
                        proxiedAddress = response.getData();
                        proxiedAddress = "0x"+proxiedAddress.substring(26);
                    }
                    verifiedProxyChain += proxiedAddress + ",";
                    code.setVerifiedProxyChain(verifiedProxyChain);
                    code.setDecompiledCodeCompressed(decompiledResult[0]);
                    return getCode(proxiedAddress, chainId, verifiedProxyChain, code);
                }else
                    code.setDecompiledStatus("downloaded");
                //end check for proxy                
                code.setDecompiledCodeCompressed(decompiledResult[0]);
            }
        }
        /*System.out.println(code.getDecompiledCode().length);
        System.out.println(code.getDecompiledStatus());
        System.out.println(code.getVerifiedStatus());
        System.out.println(messageStr);*/
        //System.out.println(code.getVerifiedCodeDecompressed());
        log.info(messageStr);

        contractCodeRepository.save(code);
        byte result = 0;
        if (verifiedGetSuccess)
            result |= (1<<1);
        if (decompiledGetSuccess)
            result |= (1<<2);
        return result;
    }


    // process verified code, return value: 1,content to save db, 2,"0xXXXXx" proxied by address;3,"pair" pair Code,ingored
    private String checkVerifiedCode(JsonNode data,Web3j web3j,String address)throws Exception{
        if (data.isArray()){
            // check verified
            if (data.size()==0)
                return "unverified";
            //System.out.println(data.toString());
            String content = data.get(0).get("SourceCode").asText();
            if (content.length()==0)
                return "unverified";

            //check pair ingore
            String contractName = data.get(0).get("ContractName").asText();
            if ((contractName.equals("PancakeV3Pool"))||(contractName.equals("PancakePair")))
                return "pair";

            //check proxy
            //System.out.println("=================contractName==================");
            //System.out.println(contractName);
            String slot = null;
            if ((contractName.equals("GnosisSafeProxy"))||(contractName.equals("SafeProxy"))){
                slot = "0x0";
            }else if ((contractName.equals("TransparentUpgradeableProxy"))||(contractName.equals("AdminUpgradeabilityProxy"))
                ||contractName.equals("BeaconProxy")||contractName.equals("ERC1967Proxy")||contractName.equals("BEP20UpgradeableProxy")){ 
                slot = "0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
            }
            if (slot!=null){
                EthGetStorageAt response;
                final BigInteger position = new BigInteger(slot.substring(2), 16);
                response = web3Utils.retryWithIoException(() ->
                    web3j.ethGetStorageAt(address, position, DefaultBlockParameterName.LATEST).send(),IO_EXCEPTION_RETRY);
                String proxiedAddress = response.getData();
                return "0x"+proxiedAddress.substring(26);
            }

            /*if (!content.startsWith("{{")){
                content = "{{\"sources\": {\""+contractName+"\":\""+content+"\"}}}";
            }*/
            return content;
        }else{
            System.out.println(address);
            System.out.println(data.toString());
            throw new Exception(" the code returned by etherscan is in mal format");
        }
    }

    // try to download verified code from etherscan.io
    private Object [] getVerified(String address,int chainId)throws Exception{
        String result = "";
        HttpRequest request = HttpRequest.newBuilder()
            .uri(URI.create(String.format(chains.getScanApiUrl(chainId),address)))
            .GET()
            .build();

        HttpResponse<String> response;
        int retryCount=0;
        // 发送请求
        while (true){
            try {
                response = httpProxiedClient.send(request, HttpResponse.BodyHandlers.ofString());
                break;
            }catch(IOException e){
                if (retryCount>IO_EXCEPTION_RETRY)
                    throw e;
                Thread.sleep(1000);
                retryCount ++;
            }
        }
        result += "verified request complete\n";
        if (response.statusCode()==200){
            String dataString = response.body();
            try{
                ObjectMapper mapper = new ObjectMapper();
                JsonNode root = mapper.readTree(dataString);
                dataString = root.get("result").asText();
                return new Object []{root.get("result"),result};
            }catch(Exception e){
                result += "parse failed,incorrect json structure in response.";
                return new Object []{null,result};
            }
        }else{
            result += "incorrect response code,get decompiled failed.\n";
            return new Object []{null,result};
        }
    }


    public final String startStr = "<script id=\"__NEXT_DATA__\" type=\"application/json\">";
    //try to download decompiled code from dedaub.
    private String[] getDecompiled(String address,int chainId)throws Exception{// [code,message]
        String result = "";
        HttpRequest request = HttpRequest.newBuilder()
            .uri(URI.create(String.format(chains.getDedaubDecompileURL(chainId),address)))
            //.uri(URI.create("https://httpbin.org/anything"))
            .header("authority", "app.dedaub.com")
            .header("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9")
            .header("accept-encoding", "gzip, deflate, br")
            .header("accept-language", "en-US,en;q=0.9")
            .header("cache-control", "max-age=0")
            .header("cookie", "_ga=GA1.1.1542047446.1738567628; hubspotutk=0d26dcbd922efc3ea1f94beede693763; _hjSessionUser_3862678=eyJpZCI6IjUwZjFlMTJjLTQyZjAtNWE4Yy1iODg5LWU1NTA1OTIyM2FjZiIsImNyZWF0ZWQiOjE3Mzg1Njc2MjkzOTYsImV4aXN0aW5nIjp0cnVlfQ==; _gcl_au=1.1.155946329.1762527212.757936965.1764638406.1764638407; __Host-next-auth.csrf-token=d4ca45f3db310f39d38b9eb3253096c15ec27c2c0da4760adec712e8ec9701f8%7Cabefadc58f13f376dc0fd558a3578d5d5a09d446b310596ef9d77264b72e7176; __Secure-next-auth.callback-url=https%3A%2F%2Fapp.dedaub.com; __hssrc=1; __hstc=42676154.0d26dcbd922efc3ea1f94beede693763.1738567633326.1766366180632.1766459663404.159; cf_clearance=yTa4BuccVM_uLC2PcIP2bgIhPV4YOZSUFLbTpHZA6RM-1766461370-1.2.1.1-WWHO25VVQTb7XYTREtlZzihplc_vfFh8M6ag9XBjJdn5xf.pwC.ZOFosYNrKM5DCDwaRtjS72WxLsWnRtnsyio5C3aI0IYXIaasRwHAm.ijqzw4CKusjiKOL8iytKV1ic68_JVA1nBMNvEk4LZigFTTjpGvWkkdgVvPJg2L8XxTfu7LmRNURaCskgmfWzH8cCxmSNqEaHq.b1iXeW4bRSuW0ndVrYt1epFNRs1OErwk; _ga_C83BQX5EL9=GS2.1.s1766459616$o191$g1$t1766461416$j13$l0$h1950728265; _ga_XFRJ1BYKHT=GS2.1.s1766459616$o198$g1$t1766461416$j13$l0$h0; __Secure-next-auth.session-token.0=eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..OWQhW5fZCNV2M7uc.had7X8lion7Xd4xy0emjEXpN7aa4yxXIjMRGmI73JooZ01XwPgNtBCabOdKyLoadSx4xIJ48TkiwsyRlWpjuiDZ3EOTUkMdS5kaa_KZemcZyJy6PPSW-XyFqfqnq-rE1Uj_txUqhzpq5blETBS261P2crMHRp0Dk8mx7W9qWFgSKbuWX_TlBiWL_z8ipE8Caj1wBsjbTk1mP4JLOHfEPWrskSwqrwtcgUumf7sL7cXrnqJt9M6dob8nb_3OzJhd0dMQo5uw5SseZS_sl1c0CgY2pRuF59e7XwB_4LmShxR3Q-3BVNQnO7SyivhiyaVJY28nO1NU7JvGWTeK8lDlBGaRIjJ1wtEEqdK1lIN0twGvuofj3lKsqJT0PbWOUHzu7YRukJLI1BH2PAz_yc-2tGn0ZsKTvHBxE9KMgfFX5Fkm1U1_3qMG0Y4XNcSMVuNKJM4Q3Ex69_gvfWgS4sHAaIotMqwG_IMUl7CFpqBMObYjd02V0PmNiU1PBh2cq8L4fociqklXk5rqUOHCk-suGh5oenka60rlXqSRHWrpcxOdbJxb0wEfBlvGQjXbkgjiTUwp0xJhG63jZFI6DBcSbRAWDGcB1BhQTH8Pq2WCHT9Y9z4Vr3FfDBxks4I1gSjx9691OIgXktkut8woR_jGn1bjlUV2M9nIlaYWqEDRFypS-ac6E9EE9ht9qRePFwSm6pnf9JJaMD4bS7DAhtD4syVD5wwTp8W8jPpp3wC2BqNyeX76K3RPgtZgdcl6d1FD_AAj9cCe4uJSJz-04SO-MXY5v2pmALxHfkfmF5KgKuJ6zmf7x5dDwx5zNze1KuloTC4QI-ZSOYwYakJzQNh50W01ahS_EhJc-hJuutYibpqqvFN_F1DKKyXJgcmgqZMXtfTdD4n_yTqkGo_h4DQr4YoKWj0OFnTeYocKWuD7nq7ZSQNSd99MqUTT6yUSJDKoTqJ2-EtUnKxvqV_0wl0H5YA4LrKTDNHCevCtLO7-cti_EOOheR3yKQozXYoURZc8RzmHFCw4eGCiu9oCxFv8DoOl9CtsIY3e7C2MA-liy39SGvVh30L0OLfDW0P5pGtsGotTePFouj60tfv7CFgNYzX03AEDTFOjLcWz22e-tWtqa0B98z-eu_xshz9rS6A1c6Xc6jXWAcMwuYUw7Uxf1Gk5W70NpgfuYsbvvV6RHSCZAkg-CdfS0FDNg2FoUvZvbkMB3wSGkPxcDkztO7qMALwGWXkJSz_SWfEULIQDPfA78A5SfRUf-q-Y-sDG8ExCEMrMxwItnqvx5rAoq9dgTTlfz-jjzyvhGRZ8_zp-IcOPbN38A6bUWlcrAukoseWcDRc76xstrucme2ijWREUIB5hH-zC_2ltmD7E8aVMq8NqKCZBQ7ae9LHy7nDbt6uxOvDVJhwqbv8422AXYV-dt9hEIoti2kYyAbTHtWt950R_eK6Trf-BQoXea8uLS5ZHM4VmTw3qD2yXmPKeIiZx7RhCSAAgV_IvsWK3tpKrrELfq2T6ee4lufjH2jE4eVL8vRxZfi8QnBlguPrfK006BTgDjfDeke322bE7tOWyoU75M8VMaLqdz5abWpvK43V6Ad7XxqylvUj3McNTKfh2Qf4QLdDMIl6AwoGwTos9W8Ocz5TEyTvypm7R8xOTsc215IN_jctBXCNjJiSpedPPsqgNzjT4ty4bAzuPhRhAGNEUBJodlm6UNGxpcxVdXt5CwSLENveZFLbZ2ZTx_noKoA-v5IVw8k-O038XFc3yzOm0j5mMOFY53E_bso5mcWcIiN_ERwkxqjgKUejZtm__9MnymHr_AnQBBgir2b01dw-lXmUv8mZ8GmRVjgn7YJA7rFLVxGvA98pfm28dLi4XQR4fISQB0GhAFpnZNm7Fr62hEF541FFpIzfMQBkC1BxLgLu2U-GrqS6p9IwfSEL2gG81JXPat36r1c5mRt1TqH4pFAC1Fg5l8fizZeBm1Nygg0BorZM2hHn2JB4-lIeH-fsl3SLYvaMo2YjpuiSnGHRieZW02pa1ajY-_PmSl7-i3CpAHyDbvaAhAtgIP11X58_jt1Emxl5LiFTbdudb0VOiZxr9F0hm4MRRxW4YmLOaVsbbEpOl7VHIjKM20-jxMaeFvsh00432ek4NtHU4zPMH4tvkZuiDBgNHm7AX0-GqieenPQWwGueiAyK_fkIjxHnomMakO5muW6MDecqQdGDZhIYiqWvjxNpM3mki5WWecgr4Sc6TCcj5KkuQ1LYGFf2OMxII8wOoqCsdKQCAVBZqOi822Jzv6VK0e0OpMMGc318zQKGKA8FFiHyxbLWI8zy_xpuVH5ByEYuLyXSwDFozJpNpPIgjXak898cGN-Z_aiuYuFUxTixLNl0be96QTli_7Zh68SWy_BWhtfnZ1edO8bV4VwXgXrpltqMxA5ll1f-yv3NOlrRqAI0_6KSkJVVFjFZLLy8aI_fS7YxgcwVk80gATJBGud51MoxhbeeqfvHjUCdQ7Ynpn-8ZC1Oza6IhXKlHkOefaWc_8WpzEi1zFc5yDEhxN9ck6d8X_GMvhfdb26kXBEF8WTnYXQjyIgQFuZEG5JZzXfEgxUbzttCkaPJw7YDOU8FN2SrS9jNny9nxOPGWz-6LtYV8J1CrGaf-i_p1HGqUua4tGCcMAIgjpk7dnYitFTHAVGbUUzSAu8AlB1CnpQBrwupexEih7Fl7qpxqPskbJr2m3ETPF9cLt5TccETlpagvjTLesB0OJEwH70xeL66XOGEyVX1oOLagveOgnAxb9D3R33iIU9XSoNbCCKNKBozS3nE3A0kljQRm7VfBxhtSRC8WO2GQkI2wDRDY_M14ZEGQVfjPq-hpLwlt0JaG4tb1Dw1BwbwfqtuSWPRY9qV79jTbQaEIx7P9YNsN4jpbMBaPAGZPaMPrCT9Y1GUUvVu1JSONwpRX_2az0-il3OR_gyKxaAMPnFSHL1fvSKWQPvTPILzy9lHNwXUmu-nVR1VKQaWq3CwskbqGzrdMZ0Uq-eAHCq0mApneiKtuPG8KnsPs_u0fOF8_VfXHPqRT4gfsB3fkrwt3_ziTI2_vx_8upcYUPPpvEw3AkJR34s_Qmpe6iD456mvHSd_yxeYiu6s08VRfvWMcVWuwwWdeVDmro5atCbMT3RS4omwhkMe8_elp5JZTfide4C8nPcpVcfvxngxvzs0tjuhshw9C5-t1JMmylcYxqVaKZzfHa53sdlu3vchfD9t_KrPVQFdt4SwdF5rG5YF2YjuaU-fjj6Q0CtMLc5HHM3spU2XfQTkarUOy4RyZPR2Lvc7IOs_cDmh9F6naDxxK9Tzt3cTEqwWNY16dpGcmX5UFcBuw4O3c7zyQ0TuIvziQ-z5a1LXEkFp-2qqGETMOJtOBwQ3qi1aPBrMcXWHJRu3uml2w9CVnUdRmFlIodI-0hZB2LDsi9niNvY5-x5Bo7t39wczvJrq6L1f-r5LKeJin8-WlFNkui2uXTxRTSil99xprM9bz7EiKkLd9x77DOl_dABI-RwfnJLayvXTVXAiuRpeTKtBIArz5rk01px_TfH9XfeQMzzDlhrv_InLRS2QLJoK_f2UYXHvDpgZrDiiFXTeMXPffvlc3Y3htn3S-JaWYATaXNopg27TBubk-ZizjU_1qKdrRZlhzAuGAX3cXID-St2e_6DefsxV_agz58NeYxlxzmgRES1OjBWs3ctvM_F8gxQq2NqXrN41GWnnpYfgeb7Lx5PYE-JvkEgP2gs32-lXXaqVq5sTeJxVIUzLKQzG2fLIa7cam06Bl4xTp8f01n3zj3gU4OkODSZM679iI0vMQrTqhje5CU1rdm9xmlf6mv1PjMGRR6HuCmtgKnVFbzfSJWXZe; __Secure-next-auth.session-token.1=s8GRO5OYjZHa8gr2Hxgs9IyJmKHWe9hm4z3ZoHybL4UHPoPWXnJv_OGyMEpqaFNUSXMf52o_o5-Cr6nqfR1Resh-AsaZg6y-Aa_7zSM4foOAvXZjIE8oRa9SHtzQZ4FEW9SIoqjOAjVihWGmgU9O7SqgZDDylEQvt7u5BtbaMatR5L2r-7UPabt2wVqnx4GnYZRmLNv5jM7voS1gxBZmHFGn7DSHnbarPM8yynH5yA52JWjK-weK8v6yukYStySAH74LT9y6GIFk5NQNMhtGQARmUBvNMwNZJnmngXBCfr3xBTc3LE6DTCmt0tAicfeqzKhFgg9g7ZN3suZ-Tev3rYrnTkMBODRtUu3tMPSyqMANQod_gaxe5ahPco19Jo4Vn7QsLy-H9mW5Q-qaRqd1npnn1yltmYEWOww4tIs26WPBypt_FOc3gqPStMfswlXno3yZnyf9DYDGTIL0FVR0zm-lWu8xAVFZwxPnYHAE-eug00CL7RPbO8WtfvOfPCsFr.2PuCoe46jI2x64A1bTdQEw")
            .header("sec-fetch-dest", "document")
            .header("sec-fetch-user", "?1")
            .header("sec-fetch-mode", "cors")
            .header("sec-fetch-site", "none")
            .header("upgrade-insecure-requests", "1")
            .header("user-agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36")
            .GET()
            .build();

        HttpResponse<byte[]> responseBytes;
        int retryCount=0;
        // 发送请求
        while (true){
            try {
                responseBytes = httpClient.send(request, HttpResponse.BodyHandlers.ofByteArray());
                break;
            }catch(IOException e){
                if (retryCount>IO_EXCEPTION_RETRY)
                    throw e;
                Thread.sleep(1000);
                retryCount ++;
            }
        }
        result += "decompiled request complete\n";
        // 输出结果
        /*System.out.println("HTTP Version: " + response.version());
        System.out.println("Status Code: " + response.statusCode());
        System.out.println("Headers: " + response.headers().map());
        System.out.println("Body length: " + response.body().length());
        System.out.println("body content: " + response.body());*/
        result += "return code:" + responseBytes.statusCode();
        if (responseBytes.statusCode()==200){
            String dataString = new String(GzipUtils.decompressBrotli(responseBytes.body()),StandardCharsets.UTF_8);
            try{
                int startIndex=dataString.indexOf(startStr)+startStr.length();
                int endIndex=dataString.indexOf("</script>",startIndex);
                dataString = dataString.substring(startIndex,endIndex);
            }catch(Exception e){
                System.out.println(dataString);
                result += "parse failed,can't found script body in response.";
                return new String []{null,result};
            }
            try{
                ObjectMapper mapper = new ObjectMapper();
                Map<String, Object> data = mapper.readValue(dataString, Map.class);
                if (data.containsKey("page")&&((String)data.get("page")).equals("/login")){
                    log.info("cookies need update...");
                    throw new Exception("cookies need update...");
                }
                data = (Map<String, Object>) data.get("props");
                data = (Map<String, Object>) data.get("pageProps");
                data = (Map<String, Object>) data.get("contractPayload");
                String content = (String) data.get("decompiled");
                return new String []{content,result};
            }catch(Exception e){
                result += "parse failed,incorrect json structure in response.";
                if (e.getClass().getSimpleName().equals("Excption")&&e.getMessage().equals("cookies need update..."))
                    throw e;
                System.out.println(e);
                e.printStackTrace(System.out);
                System.out.println(dataString);
                return new String []{"",result};
            }
        }else{
            result += "incorrect response code,get decompiled failed.\n";
            return new String []{null,result};
        }
    }

    private Object [] proxyedAddress(SolidityParser.SourceUnitContext tree,CommonTokenStream tokens)throws Exception{
        // return String slot, String ProxyAddress
        ParseTree selector = null;
        int functionDefined = 0;
        String functionSelectAddress = null;
        for (ParseTree child : tree.children){
            if (child.getClass().getSimpleName().equals("FunctionDefinitionContext")){// 处理函数定义
                functionDefined ++;
                if (functionDefined>1)// multiple function define. not a proxyContract
                    return null;
                selector = child;
            }else if (child.getClass().getSimpleName().equals("StateVariableDeclarationContext")&&
            child.getChild(1).getClass().getSimpleName().equals("IdentifierContext")&&
            child.getChild(1).getText().equals("___function_selector__") ){//处理storage定义中的注释
                ParserRuleContext stateVarCtx = (ParserRuleContext) child;
                int rightTokenIndex = stateVarCtx.stop.getTokenIndex();
                List<Token> hiddenTokens = tokens.getHiddenTokensToRight(rightTokenIndex);
                if (hiddenTokens != null && !hiddenTokens.isEmpty()) {
                    Token comment = hiddenTokens.get(0);
                    String functionSelectComment = comment.getText();
                    
                    // 解析STORAGE[xxx]中的地址
                    int startIndex = functionSelectComment.indexOf("STORAGE[");
                    if (startIndex != -1) {
                        startIndex += "STORAGE[".length();
                        int endIndex = functionSelectComment.indexOf("]", startIndex);
                        if (endIndex != -1) {
                            functionSelectAddress = functionSelectComment.substring(startIndex, endIndex);
                        }
                    }
                }
            }
        }
        if (selector == null) return null;
        
        // 检查函数名;
        if (selector.getChildCount() >= 2) {
            ParseTree funcNameNode = selector.getChild(0).getChild(1);
            if (!"__function_selector__".equals(funcNameNode.getText())) {
                return null;
            }
        }
        
        // 访问函数体（第4个子节点，索引3）
        SolidityVisitors.VisitBlockForFunctionCall visitor = SolidityVisitors.Factory.VISIT_BLOCK_FOR_FUNCTIONCALL.create();
        if (selector.getChildCount() > 3) {
            selector.getChild(3).accept(visitor);
        }
        
        // 检查函数调用
        List<String> functionCalls = visitor.getFunctionCalls();
        for (String call : functionCalls) {
            if (call.toLowerCase().endsWith(".delegatecall")) {
                String contract = call.substring(0, call.length() - ".delegatecall".length());
                
                if (contract.toLowerCase().startsWith("0x") && contract.length() == 42) {
                    return new Object[]{null, contract}; // [null, address]
                }
                else if (contract.startsWith("STORAGE[")) {
                    contract = contract.substring("STORAGE[".length(), contract.length() - 1);
                    if (contract.toLowerCase().startsWith("0x") && contract.length() == 42) {
                        return new Object[]{contract, null}; // [storageAddr, null]
                    }
                    else if ("this".equals(contract)) {
                        //throw new Exception("Dead loop,find this in proxy search");
                        return new Object[]{"contractAddress", null}; // [contractAddress, null]
                    }
                }
                else if ("___function_selector__".equals(contract)) {
                    return new Object[]{functionSelectAddress, null}; // [functionSelectAddress, null]
                }
            }
        }
        return null;
    }
}
