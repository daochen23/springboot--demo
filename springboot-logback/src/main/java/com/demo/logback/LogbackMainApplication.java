package com.demo.logback;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/22 14:10
 */

@SpringBootApplication
@Slf4j
public class LogbackMainApplication {
    public static void main(String[] args) {
        ConfigurableApplicationContext run = SpringApplication.run(LogbackMainApplication.class, args);
        int length = run.getBeanDefinitionNames().length;
        log.info("Spring Boot 启动初始化了 {} 个 Bean", length);
    }
}
