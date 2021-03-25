package com.demo.hello.controller;

import cn.hutool.core.util.StrUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/21 11:37
 */
@RestController
public class HelloWordController {
    /**
     * Hello World
     * @param who 参数，非必须
     * @return
     */
    @GetMapping("/hello")
    public String hello(@RequestParam(required = false, name = "who") String who) {

        if (StrUtil.isEmpty(who)) {
            who = "Hello World";
        }
        return StrUtil.format("Hello,{}", who);
    }
}
