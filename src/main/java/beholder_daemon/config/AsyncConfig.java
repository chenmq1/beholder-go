package beholder_daemon.config;

import java.util.concurrent.ThreadPoolExecutor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

@Configuration
@EnableAsync
public class AsyncConfig {
    
    @Bean("burnPairSyncExecutor")
    public ThreadPoolTaskExecutor burnPairSyncExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(19);           // 核心线程数
        executor.setMaxPoolSize(19);           // 最大线程数
        executor.setQueueCapacity(200000000);        // 队列容量
        executor.setKeepAliveSeconds(60);      // 线程空闲时间
        executor.setThreadNamePrefix("burnPair-sync-");  // 线程名前缀
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy()); // 拒绝策略
        //executor.setWaitForTasksToCompleteOnShutdown(true); // 关闭时等待任务完成
        //executor.setAwaitTerminationSeconds(60); // 等待任务完成的最大时间
        executor.initialize();
        return executor;
    }    
    // 可以为不同业务配置不同的线程池
    @Bean("threeGetExecutor")
    public ThreadPoolTaskExecutor threeGetExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(19);           // 核心线程数
        executor.setMaxPoolSize(19);           // 最大线程数
        executor.setQueueCapacity(200000000);        // 队列容量
        executor.setKeepAliveSeconds(60);      // 线程空闲时间
        executor.setThreadNamePrefix("burnPair-sync-");  // 线程名前缀
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy()); // 拒绝策略
        //executor.setWaitForTasksToCompleteOnShutdown(true); // 关闭时等待任务完成
        //executor.setAwaitTerminationSeconds(60); // 等待任务完成的最大时间
        executor.initialize();
        return executor;
    }    
}