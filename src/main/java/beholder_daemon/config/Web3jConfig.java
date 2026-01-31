package beholder_daemon.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;

import java.util.concurrent.Executors;

@Configuration
public class Web3jConfig {

    @Value("${web3j.chains.ethereum}")
    private String ethereumUrl;

    @Value("${web3j.chains.bsc}")
    private String bscUrl;

    @Value("${web3j.chains.polygon}")
    private String polygonUrl;

    @Value("${web3j.chains.arbitrum}")
    private String arbitrumUrl;

    @Value("${web3j.chains.base}")
    private String baseUrl;

    @Value("${web3j.chains.optimism}")
    private String optimismUrl;

    @Value("${web3j.timeout:10000}")
    private long timeout;

    @Bean
    public Web3j ethereumWeb3j() {
        return Web3j.build(new HttpService(ethereumUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }

    @Bean
    public Web3j bscWeb3j() {
        return Web3j.build(new HttpService(bscUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }

    @Bean
    public Web3j polygonWeb3j() {
        return Web3j.build(new HttpService(polygonUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }

    @Bean
    public Web3j arbitrumWeb3j() {
        return Web3j.build(new HttpService(arbitrumUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }

    @Bean
    public Web3j baseWeb3j() {
        return Web3j.build(new HttpService(baseUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }

    @Bean
    public Web3j optimismWeb3j() {
        return Web3j.build(new HttpService(optimismUrl), timeout, Executors.newSingleThreadScheduledExecutor());
    }
}