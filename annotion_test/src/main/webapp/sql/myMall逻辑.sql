SELECT * FROM t_mymall_order WHERE puid = 3 AND update_time > '2019-04-07' AND shop_id = '1111111680'  ORDER BY update_time DESC LIMIT 50000; 

# delete FROM t_mymall_order WHERE puid = 3 AND update_time > '2019-04-08'  ORDER BY update_time DESC LIMIT 50000; 

SELECT * FROM t_dxm_order03 WHERE puid = 3 AND update_time > '2019-04-08' AND platform = 'mymall'  ORDER BY update_time DESC LIMIT 50000;




SELECT * FROM `t_mymall_order_shipping_detail` WHERE puid = 3 AND update_time > '2019-04-08' ORDER BY update_time DESC LIMIT 50000;

SELECT * FROM `t_dxm_product_order_relation03` WHERE puid = 3 AND update_time > '2019-04-08' ORDER BY update_time DESC LIMIT 50000;


SELECT * FROM t_dxm_package_address03 WHERE puid = 3 AND update_time > '2019-04-08' AND phone_number = '+7(985) 237-99-21' ORDER BY update_time DESC LIMIT 50000;

SELECT phone_number, COUNT(*) FROM t_dxm_package_address03 GROUP BY phone_number;


SELECT MD5(3)

SELECT * FROM t_wish_shop WHERE platform = 'myMall' AND puid = 3;


#aZFJmETnOv9o   Ei-Vigo

select * from t_user where puid = '3';

ALTER TABLE `t_mymall_order` ADD COLUMN `is_mall_logistic` TINYINT(1)  COMMENT '是否是线上发货: 0 :否, 1：是, null:原始值' AFTER `shipping_price_unit`;

