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
 * 出库表
 * </p>
 *
 * @author Shaodi.kou
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("outbound_log")
public class OutboundLogDO extends Model<OutboundLogDO> {

    private static final long serialVersionUID=1L;

    /**
     * 出库ID
     */
      @TableId("outbound_id")
    private String outboundId;

    /**
     * 货架名称
     */
    @TableField("shelf_name")
    private String shelfName;

    /**
     * 起始点位
     */
    @TableField("start_point")
    private String startPoint;

    /**
     * 物料ID
     */
    @TableField("product_id")
    private String productId;

    /**
     * 出库时间
     */
    @TableField("out_time")
    private Date outTime;

    /**
     * 目标点位
     */
    @TableField("target_point")
    private String targetPoint;

    /**
     * New -> 新建任务 Executing -> 正在执行 Finished -> 已经完成
     */
    @TableField("outbound_status")
    private String outboundStatus;

    /**
     * 高级搬运任务ID
     */
    @TableField("agv_taskId")
    private String agvTaskid;


    @Override
    protected Serializable pkVal() {
        return this.outboundId;
    }

}
