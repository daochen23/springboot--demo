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
 * 
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("point")
public class PointDO extends Model<PointDO> {

    private static final long serialVersionUID=1L;

    /**
     * 点位ID
     */
      @TableId("point_id")
    private String pointId;

    /**
     * 点位名称
     */
    @TableField("point_name")
    private Integer pointName;

    /**
     * 点位类型
     */
    @TableField("point_type")
    private String pointType;

    /**
     * 0 -> 未锁格 1 -> 锁格
     */
    @TableField("point_status")
    private Integer pointStatus;

    /**
     * 叫料旋转点
     */
    @TableField("rotateCellIds_call")
    private String rotatecellidsCall;

    /**
     * 释放旋转点
     */
    @TableField("rotateCellIds_relese")
    private String rotatecellidsRelese;

    /**
     * 叫料方向
     */
    @TableField("directiions_call")
    private String directiionsCall;

    /**
     * 释放方向
     */
    @TableField("directiions_relese")
    private String directiionsRelese;


    @Override
    protected Serializable pkVal() {
        return this.pointId;
    }

}
