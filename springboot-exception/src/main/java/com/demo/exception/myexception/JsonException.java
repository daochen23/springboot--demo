package com.demo.exception.myexception;

import com.demo.exception.constant.Status;

/**
 * @Description: TODO(Json 异常)
 * @Author Shaodi.kou
 * @Date 2021/3/22 10:49
 */
public class JsonException extends BaseException {

    public JsonException(Status status) {
        super(status);
    }

    public JsonException(Integer code, String message) {
        super(code, message);
    }
}
