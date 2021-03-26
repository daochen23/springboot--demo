package com.demo.mybatis_pagehelper.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 物料表
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("product")
public class ProductDO extends Model<ProductDO> {

    private static final long serialVersionUID=1L;

    /**
     * 物料ID
     */
      @TableId("product_id")
    private String productId;

    /**
     * 物料名称
     */
    @TableField("product_name")
    private String productName;

    /**
     * 工艺ID
     */
    @TableField("arts_id")
    private String artsId;


    @Override
    protected Serializable pkVal() {
        return this.productId;
    }

}
