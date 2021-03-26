package com.demo.mybatis_pagehelper.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.demo.mybatis_pagehelper.entity.ArtsDO;

import java.util.List;

/**
 * <p>
 * 工艺表 服务类
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
public interface ArtsService extends IService<ArtsDO> {
    List<ArtsDO> selectArtsByPage(Integer current, Integer size);
}
