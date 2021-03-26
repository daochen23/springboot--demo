package com.demo.mybatis_pagehelper.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 货架和物料中间表
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("shelf_product")
public class ShelfProductDO extends Model<ShelfProductDO> {

    private static final long serialVersionUID=1L;

    /**
     * 货架名称
     */
    @TableField("shelf_name")
    private String shelfName;

    /**
     * 物料id
     */
    @TableField("product_id")
    private String productId;

    /**
     * 地址码
     */
    @TableField("point_name")
    private String pointName;


    @Override
    protected Serializable pkVal() {
        return null;
    }

}
