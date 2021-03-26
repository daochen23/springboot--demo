package com.demo.mybatis_pagehelper.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 工艺表
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("arts")
public class ArtsDO extends Model<ArtsDO> {

    private static final long serialVersionUID=1L;

    /**
     * 工艺表ID
     */
      @TableId("arts_id")
    private String artsId;

    /**
     * 工艺名称
     */
    @TableField("arts_name")
    private String artsName;


    @Override
    protected Serializable pkVal() {
        return this.artsId;
    }

}
