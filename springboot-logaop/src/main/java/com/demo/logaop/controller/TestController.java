package com.demo.logaop.controller;

import cn.hutool.core.lang.Dict;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/25 15:34
 */
@RestController
@Slf4j
public class TestController {
    /**
     * 测试方法
     * @param who
     * @return
     */
    @GetMapping("/test")
    public Dict test(String who) {
        return Dict.create().set("who", StrUtil.isBlank(who) ? "me" : who);
    }

    /**
     * 测试 post json 方法
     * @param map
     * @return
     */
    @PostMapping("/testJson")
    public Dict testJson(@RequestBody Map<String, Object> map) {
        final String jsonStr = JSONUtil.toJsonStr(map);
        log.info(jsonStr);
        return Dict.create().set("json", map);
    }
}
