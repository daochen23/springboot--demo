package com.demo.exception.controller;

import com.demo.exception.constant.Status;
import com.demo.exception.model.ApiResponse;
import com.demo.exception.myexception.JsonException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/22 11:12
 */
@RestController
public class TestController {
    @GetMapping("/json")
    public ApiResponse jsonException() {
        throw new JsonException(Status.UNKNOWN_ERROR);
    }
}
