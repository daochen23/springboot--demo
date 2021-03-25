package com.demo.exception.myexception;

import com.demo.exception.constant.Status;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Description: TODO(异常基类)
 * @Author Shaodi.kou
 * @Date 2021/3/22 10:47
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class BaseException extends RuntimeException {
    private Integer code;
    private String message;

    public BaseException(Status status) {
        super(status.getMessage());
        this.code = status.getCode();
        this.message = status.getMessage();
    }

    public BaseException(Integer code, String message) {
        super(message);
        this.code = code;
        this.message = message;
    }
}
