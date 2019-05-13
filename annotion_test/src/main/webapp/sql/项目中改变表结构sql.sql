t_picking_list_template#添加字段，存储是否自动上传预报单
ALTER TABLE `t_user_config`  ADD auto_upload_agent_order TINYINT(1) DEFAULT 0 COMMENT '是否自动上传预报单 0表示未开启,1表示开启'；


# wish 价格转化
ALTER TABLE `t_wish_order01` ADD COLUMN `original_order_total` DOUBLE DEFAULT '0' COMMENT '订单总金额(平台原始值)(物品价格+运费)' 
AFTER shipping_cost,
	ADD COLUMN `original_price` DOUBLE DEFAULT '0' COMMENT '用户支付的价格(平台原始值)' AFTER original_order_total,
	ADD COLUMN `original_cost` DOUBLE DEFAULT '0' COMMENT 'wish支付的价格(平台原始值)' AFTER original_price,
	ADD COLUMN `original_shipping` DOUBLE DEFAULT '0' COMMENT '用户支付的运费(平台原始值)' AFTER original_cost,
	ADD COLUMN `original_shipping_cost` DOUBLE DEFAULT '0' COMMENT 'wish支付的运费(平台原始值)' AFTER original_shipping,
	ADD COLUMN `order_unit` VARCHAR(10) COMMENT '订单金额单位' AFTER original_shipping_cost,
	ADD COLUMN `original_refund_amount` DOUBLE DEFAULT '0' COMMENT '退款费用(平台原始值)' AFTER order_unit

#增加规则
INSERT INTO  `t_rule_condition`(`rule_type`, `cond_type`, `order_num`, `cond_name`, `cond_value_name`, `link_url`, `comment`, `help_link`, `create_time`, `update_time`)  
VALUES(1,14,13,'订单预估利润为','指定区间',NULL,NULL,NULL,NOW(),NOW());	

#修改排序号
UPDATE `t_rule_condition` SET `order_num_new` = '5',  update_time = NOW() WHERE `cond_type` = '4'; 
UPDATE `t_rule_condition` SET `order_num_new` = '10', update_time = NOW() WHERE `cond_type` = '1'; 
UPDATE `t_rule_condition` SET `order_num_new` = '20', update_time = NOW() WHERE `cond_type` = '8'; 
UPDATE `t_rule_condition` SET `order_num_new` = '25', update_time = NOW() WHERE `cond_type` = '9'; 
UPDATE `t_rule_condition` SET `order_num_new` = '30', update_time = NOW() WHERE `cond_type` = '10'; 
UPDATE `t_rule_condition` SET `order_num_new` = '35', update_time = NOW() WHERE `cond_type` = '7'; 
UPDATE `t_rule_condition` SET `order_num_new` = '40', update_time = NOW() WHERE `cond_type` = '5'; 
UPDATE `t_rule_condition` SET `order_num_new` = '45', update_time = NOW() WHERE `cond_type` = '14'; 
UPDATE `t_rule_condition` SET `order_num_new` = '50', update_time = NOW() WHERE `cond_type` = '15'; 
UPDATE `t_rule_condition` SET `order_num_new` = '60', update_time = NOW() WHERE `cond_type` = '6'; 
UPDATE `t_rule_condition` SET `order_num_new` = '65', update_time = NOW() WHERE `cond_type` = '2'; 
UPDATE `t_rule_condition` SET `order_num_new` = '70', update_time = NOW() WHERE `cond_type` = '3'; 
UPDATE `t_rule_condition` SET `order_num_new` = '80', update_time = NOW() WHERE `cond_type` = '11'; 
UPDATE `t_rule_condition` SET `order_num_new` = '85', update_time = NOW() WHERE `cond_type` = '12'; 


INSERT INTO 
`t_rule_condition`(`rule_type`, `cond_type`, `order_num`, `cond_name`, `cond_value_name`, `link_url`, `comment`, `help_link`, `create_time`, `update_time`) 
VALUES(1,16,15,'订单地址为','指定州省',NULL,NULL,NULL,NOW(),NOW()), (1,17,-1000,'订单地址为','排除州省',NULL,NULL,NULL,NOW(),NOW());

#tophatter增加标记
ALTER TABLE `t_tophatter_order` ADD COLUMN `remark` VARCHAR(100)  COMMENT '加售产品标记';
	
#拣货单模板
ALTER TABLE `t_picking_list_template` ADD COLUMN `sbm_id` TINYINT(1) DEFAULT 0 COMMENT '识别码：0 否 1：是' AFTER sku_code;

ALTER TABLE `t_picking_list_template` ADD COLUMN `all_sbm_code` TINYINT(1) DEFAULT 0 COMMENT '汇总识别码(商品) 0：否 1：是' AFTER all_sku_code;

ALTER TABLE `t_picking_list_template` ADD COLUMN `order_create_time` TINYINT(1) DEFAULT 0 COMMENT '订单下单时间：0 否 1：是' AFTER print_date;

#扫描发货smt有限期设置
ALTER TABLE `t_weight_config` ADD COLUMN `is_enable_smt_timeout` TINYINT(1) DEFAULT 0 COMMENT '是否开启速卖通运单号有限期设置 0：否 1：是' AFTER `scan_print`;

ALTER TABLE `t_weight_config` ADD COLUMN `smt_timeout` SMALLINT COMMENT '速卖通运单号有限期 ' AFTER `is_enable_smt_timeout`;

ALTER TABLE `t_picking_list_template` ADD COLUMN `sbm_id` TINYINT(1) DEFAULT 0 COMMENT '识别码：0 否 1：是' AFTER sku_code;

#配货单增加字段
ALTER TABLE `cross_commerce`.`t_picking_list_template` ADD COLUMN `agent_provider_name` TINYINT(1) DEFAULT 0 NULL COMMENT '物流名称：0：否 1：是' AFTER `buyer_country`; 

	