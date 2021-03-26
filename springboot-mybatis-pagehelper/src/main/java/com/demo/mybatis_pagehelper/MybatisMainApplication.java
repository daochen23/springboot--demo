package com.demo.mybatis_pagehelper;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @Author Shaodi.kou
 * @Date 2021/3/26 10:30
 */
@SpringBootApplication
@MapperScan("com.demo.mybatis_pagehelper.dao")
public class MybatisMainApplication {
    public static void main(String[] args) {
        SpringApplication.run(MybatisMainApplication.class, args);
    }
}
