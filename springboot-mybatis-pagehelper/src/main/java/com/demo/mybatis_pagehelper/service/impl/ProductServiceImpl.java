package com.demo.mybatis_pagehelper.service.impl;

import com.demo.mybatis_pagehelper.entity.ProductDO;
import com.demo.mybatis_pagehelper.dao.ProductDao;
import com.demo.mybatis_pagehelper.service.ProductService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 物料表 服务实现类
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductDao, ProductDO> implements ProductService {

}
