package com.demo.mybatis_pagehelper.controller;


import com.demo.mybatis_pagehelper.entity.ArtsDO;
import com.demo.mybatis_pagehelper.service.ArtsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 工艺表 前端控制器
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@RestController
@RequestMapping("/arts")
public class ArtsController {
    @Autowired
    private ArtsService artsService;

    @GetMapping("/selectArtsByPage")
    public List<ArtsDO> selectArtsByPage(@RequestParam(name = "current") Integer current,
                                         @RequestParam(name = "size") Integer size) {
        return artsService.selectArtsByPage(current, size);
    }
}

