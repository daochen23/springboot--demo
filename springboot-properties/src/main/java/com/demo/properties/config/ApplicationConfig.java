package com.demo.properties.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/21 15:01
 */
@Configuration
@Data
public class ApplicationConfig {
    @Value("$application.name")
    private String name;
    @Value("$application.version")
    private String version;
}
