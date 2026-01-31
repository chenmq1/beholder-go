package service;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import beholder_daemon.BeholderDaemonApplication;
import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.ContractCodeRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.service.GetCodeService;
import beholder_daemon.service.burnPair.PairAutocheckService;
import beholder_daemon.service.burnPair.PairValuateSubService;
import beholder_daemon.service.uniswapCallback.CodeGetService;
import beholder_daemon.service.uniswapCallback.SenderAutocheckService;
import beholder_daemon.service.uniswapCallback.ThreeGetService;

@SpringBootTest(classes = BeholderDaemonApplication.class)
class GetCodeTest {
    
    @Autowired
    private GetCodeService getCodeService;

    @Autowired
    private CodeGetService codeGetService;

    @Autowired
    private ContractCodeRepository contractCodeRepository;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    @Autowired
    private PairValuateSubService pairValuateSubService;

    @Autowired
    private SenderAutocheckService pairAutocheckService;

    @Autowired
    private ThreeGetService threeGetService;
    
    @Test
    void testSingleCode() throws Exception{
        System.out.println("test started.");
        getCodeService.getCode("0x000000000000fb06f868b46876350c37f5c86610", 2);
        System.out.println("test finished.");
    }

    @Test
    void showDownloadedCode() throws Exception{
        ContractCode code1 = contractCodeRepository.findById("0x46878b84dfe4dfc46538aa7f23b279c4423c4444").orElseThrow(() -> new RuntimeException("Not found"));;
        System.out.println("========================================");
        System.out.println(code1.getVerifiedCodeDecompressed());
        System.out.println("========================================");
        System.out.println(code1.getDecompiledCodeDecompressed());

    }
    @Test
    void balanceOfTest() throws Exception{
        UniswapPair pair = uniswapV2PairRepository.findById("0x03ee2fbb60ace79e9b2f9892482bef38f9473578").orElseThrow(() -> new RuntimeException("Not found"));;
        System.out.println("========================================");
        pairValuateSubService.processSubTask(pair);
        System.out.println("========================================");
    }
    @Test
    void testUniswapThreeGet() throws Exception{
        System.out.println("========================================");
        threeGetService.processTask(null); 
        System.out.println("========================================");
    }
    @Test
    void justTest() throws Exception{
        System.out.println("========================================");
        pairAutocheckService.processTask(null); 
        System.out.println("========================================");
    }
}