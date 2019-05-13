
ALTER TABLE `t_wish_order0c` 
	ADD COLUMN `original_order_total` DOUBLE DEFAULT '0' COMMENT '订单总金额(平台原始值)(物品价格+运费)' AFTER shipping_cost,
	ADD COLUMN `original_price` DOUBLE DEFAULT '0' COMMENT '用户支付的价格(平台原始值)' AFTER original_order_total,
	ADD COLUMN `original_cost` DOUBLE DEFAULT '0' COMMENT 'wish支付的价格(平台原始值)' AFTER original_price,
	ADD COLUMN `original_shipping` DOUBLE DEFAULT '0' COMMENT '用户支付的运费(平台原始值)' AFTER original_cost,
	ADD COLUMN `original_shipping_cost` DOUBLE DEFAULT '0' COMMENT 'wish支付的运费(平台原始值)' AFTER original_shipping,
	ADD COLUMN `order_unit` VARCHAR(10) COMMENT '订单金额单位' AFTER original_shipping_cost,
	ADD COLUMN `original_refund_amount` DOUBLE DEFAULT '0' COMMENT '退款费用(平台原始值)' AFTER order_unit
 


#wish增加本地价格，增加字段
ALTER TABLE `t_dxm_order0c` ADD(
   `original_ship_amount` FLOAT DEFAULT '0' COMMENT '物流费用(平台原始值)',
   `original_refund_amount` FLOAT DEFAULT NULL COMMENT '退款金额USD(平台原始值)',
   `original_order_amount` DOUBLE DEFAULT '0' COMMENT '订单总金额(平台原始值)(物品价格+运费)'
)
