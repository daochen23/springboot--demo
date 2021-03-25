package com.demo.properties.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/21 17:12
 */
@Data
@Component
@ConfigurationProperties(prefix = "developer")
public class DeveloperPropertiesConfig {
    private String name;
    private String website;
    private String qq;
    private String phoneNumber;
}
