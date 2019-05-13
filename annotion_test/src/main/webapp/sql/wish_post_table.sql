
# 抢单号配置表
CREATE TABLE `t_apply_track_config` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `puid` INT(11) DEFAULT NULL COMMENT '商户id',
  `auth_id` VARCHAR(3000) DEFAULT NULL COMMENT '用户具体的授权物流方式的集合',
  `is_enable` TINYINT(1) DEFAULT '0' COMMENT '是否开启此功能',
  `is_select_approve` TINYINT(1) DEFAULT '0' COMMENT '是否选择待处理里面的订单',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COMMENT '抢单号配置表';

#任务表
CREATE TABLE `t_apply_track_task` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `puid` INT(11) DEFAULT NULL,
  `agent_name_type` INT(2) DEFAULT NULL COMMENT '代理商实际类型',
  `agent_id` INT(11) DEFAULT NULL COMMENT '代理商ID',
  `agent_provider_id` INT(11) DEFAULT NULL COMMENT '渠道ID',
  `auth_id` BIGINT(20) DEFAULT NULL COMMENT '授权的具体物流商id',
  `dxm_order_id` BIGINT(20) DEFAULT NULL COMMENT '我们的订单id',
  `sort_number` INT(11) DEFAULT NULL COMMENT '排序值',
  `apply_state` SMALLINT(6) DEFAULT '0' COMMENT '创建状态：0 待创建，1 创建成功',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '抢单号任务表';

#日志表
CREATE TABLE `t_apply_track_log` (
  `id` BIGINT(20) NOT NULL,
  `puid` INT(11) DEFAULT NULL COMMENT '商户id',
  `auth_id` BIGINT(20) DEFAULT NULL COMMENT '授权的物流承运商id',
  `agent_id` INT(11) DEFAULT NULL COMMENT '代理商id',
  `track_number` VARCHAR(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '运单号',
  `agent_provider_name` VARCHAR(150) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '物流代理商-物流承运商',
  `package_number` VARCHAR(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '包裹号',
  `order_id` VARCHAR(100) DEFAULT NULL COMMENT '平台订单号',
  `dxm_order_id` BIGINT(20) DEFAULT NULL COMMENT '店小秘点单id',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '抢单号日志表';



#日志表生成序列
CREATE TABLE `t_apply_track_log_seq` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stub` CHAR(1) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stub` (`stub`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8;
