package com.demo.properties.controller;

import cn.hutool.core.lang.Dict;
import com.demo.properties.config.ApplicationConfig;
import com.demo.properties.config.DeveloperPropertiesConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/21 17:15
 */
@RestController
public class TestController {
    private final ApplicationConfig applicationConfig;
    private final DeveloperPropertiesConfig developerPropertiesConfig;

    @Autowired
    public TestController(ApplicationConfig applicationConfig, DeveloperPropertiesConfig developerPropertiesConfig) {
        this.applicationConfig = applicationConfig;
        this.developerPropertiesConfig = developerPropertiesConfig;
    }

    @GetMapping("/property")
    public Dict index() {
        return Dict.create().set("applicationConfig", applicationConfig).set("developerPropertiesConfig", developerPropertiesConfig);
    }
}
