package com.demo.mybatis_pagehelper.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.demo.mybatis_pagehelper.entity.ArtsDO;
import com.demo.mybatis_pagehelper.dao.ArtsDao;
import com.demo.mybatis_pagehelper.service.ArtsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 工艺表 服务实现类
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Service
@Slf4j
public class ArtsServiceImpl extends ServiceImpl<ArtsDao, ArtsDO> implements ArtsService {
    @Autowired
    private ArtsDao artsDao;

    @Override
    public List<ArtsDO> selectArtsByPage(Integer current, Integer size) {
        Page<ArtsDO> page = new Page<>(current, size);
        Page artsData = artsDao.selectPage(page, null);
        log.info("当前页：pageNum = {}", artsData.getCurrent());
        log.info("当前页数据：pageData = {}", artsData.getRecords());
        log.info("一共多少条：total = {}", artsData.getTotal());
        log.info("每页多少行：pageSize = {}", artsData.getSize());
        log.info("一共多少页：pages = {}", artsData.getPages());
        return artsData.getRecords();
    }
}
