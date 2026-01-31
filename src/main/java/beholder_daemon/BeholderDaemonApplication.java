package beholder_daemon;

import java.util.TimeZone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import jakarta.annotation.PostConstruct;

@SpringBootApplication
@EnableAsync(proxyTargetClass = true)      // 启用CGLIB for @Async
@EnableCaching(proxyTargetClass = true)    // 启用CGLIB for @Cacheable
@EnableTransactionManagement(proxyTargetClass = true)  // 启用CGLIB for @Transactional
@EnableAspectJAutoProxy(proxyTargetClass = true)      // 启用CGLIB for AOP
public class BeholderDaemonApplication {

	public static void main(String[] args) {
		SpringApplication.run(BeholderDaemonApplication.class, args);
	}

}
