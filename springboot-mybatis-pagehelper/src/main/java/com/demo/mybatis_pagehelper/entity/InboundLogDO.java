package com.demo.mybatis_pagehelper.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.sql.Date;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

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
@TableName("inbound_log")
public class InboundLogDO extends Model<InboundLogDO> {

    private static final long serialVersionUID=1L;

    /**
     * 入库记录ID
     */
      @TableId("inbound_id")
    private String inboundId;

    /**
     * 货架名称
     */
    @TableField("shelf_name")
    private String shelfName;

    /**
     * 点位名称
     */
    @TableField("point_name")
    private String pointName;

    /**
     * 物料ID
     */
    @TableField("product_id")
    private String productId;

    /**
     * 绑定时间
     */
    @TableField("bind_time")
    private Date bindTime;


    @Override
    protected Serializable pkVal() {
        return this.inboundId;
    }

}
