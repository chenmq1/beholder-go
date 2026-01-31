package beholder_daemon.utils;

import java.util.concurrent.Executors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Chains {
    @Autowired
    public Web3j ethereumWeb3j;

    @Autowired
    public Web3j bscWeb3j;

    @Autowired
    public Web3j polygonWeb3j;

    @Autowired
    public Web3j arbitrumWeb3j;

    @Autowired
    public Web3j baseWeb3j;
    
    @Autowired
    public Web3j optimismWeb3j;

    public static final String SCANAPI_URL = "https://api.etherscan.io/v2/api?chainid=%d&module=contract&action=getsourcecode&address=%%s&apikey=UQER5WBE8GYPMHFBW5PTUVMHVVEM95G2E7";
    public static final String DEDAUB_DECOMPILE_URL = "https://app.dedaub.com/%s/address/%%s/decompiled";
    public static final int[] REAL_IDS = {0,1,56,137,42161,8453,10};
    public Web3j [] web3js = null;
    public String dedaubChainStrs [] = {null,"ethereum","binance","polygon","arbitrum","base","optimism"};
    
    public String getScanApiUrl(int chainId){
        return String.format(SCANAPI_URL,REAL_IDS[chainId]);
    }

    public Web3j getWeb3j(int chainId){
        if (web3js == null){
            web3js = new Web3j [] {null,ethereumWeb3j,bscWeb3j,polygonWeb3j,arbitrumWeb3j,baseWeb3j,optimismWeb3j};
        }
        return web3js[chainId];
    }

    public String getDedaubDecompileURL(int chainId){
        return String.format(DEDAUB_DECOMPILE_URL,dedaubChainStrs[chainId]);
    }    
}
