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
 * 货架表
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("shelf")
public class ShelfDO extends Model<ShelfDO> {

    private static final long serialVersionUID=1L;

    /**
     * 货架ID
     */
      @TableId("shelf_id")
    private String shelfId;

    /**
     * 货架名称
     */
    @TableField("shelf_name")
    private Integer shelfName;

    /**
     * 货架类型
     */
    @TableField("shelf_type")
    private String shelfType;

    /**
     * 0->未被占用 1->被占用
     */
    @TableField("shelf_status")
    private Integer shelfStatus;

    /**
     * 点位名称
     */
    @TableField("point_name")
    private String pointName;

    /**
     * 如果货架是b点记录一下起始点位
     */
    @TableField("b_start_point")
    private String bStartPoint;


    @Override
    protected Serializable pkVal() {
        return this.shelfId;
    }

}
