package com.demo.exception.myexception;

import com.demo.exception.constant.Status;

/**
 * @Description: TODO(页面异常)
 * @Author Shaodi.kou
 * @Date 2021/3/22 10:53
 */
public class PageException extends BaseException {
    public PageException(Status status) {
        super(status);
    }

    public PageException(Integer code, String message) {
        super(code, message);
    }
}
