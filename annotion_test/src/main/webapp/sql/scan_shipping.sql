
#扫描完后查询订单信息
SELECT package_number, weight, product_weight  FROM t_dxm_order0c WHERE package_number = 'XM4065133';

SELECT * FROM t_dxm_product_order_relation;

SELECT * FROM t_weight_config WHERE puid = 4;


 

SELECT id, order_id, apply_time FROM t_dxm_order0c WHERE  order_id = '95363991575903';

ALTER TABLE `t_weight_config` ADD COLUMN `is_enable_smt_timeout` TINYINT(1) DEFAULT 0 COMMENT '是否开启速卖通运单号有限期设置 0：否 1：是' AFTER `scan_print`;

ALTER TABLE `t_weight_config` ADD COLUMN `smt_timeout` SMALLINT COMMENT '速卖通运单号有限期 ' AFTER `is_enable_smt_timeout`;


#-12175708


SELECT * FROM t_dxm_product_order_relation0c WHERE puid =:puid AND shop_id=:shopId AND dxm_order_id=:orderId AND platform_product_id=:platformProductId AND platform_var_id=:platformVarId AND state=:state

