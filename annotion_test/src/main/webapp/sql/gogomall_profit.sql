# 利润统计表
SELECT * FROM t_dxm_stat_profit_reckon03  WHERE platform = 'gogomall' AND package_number = 'XM3019865' ORDER BY update_time DESC;

SELECT MD5(269876)

SELECT * FROM t_dxm_stat_profit_reckon0c WHERE FIND_IN_SET(shop_id, '1000090,0');


SELECT * FROM t_dxm_stat_sales_product WHERE platform = 'gogomall' AND  ORDER BY update_time DESC;

SELECT * FROM t_gogomall_order  WHERE order_num = '1550872670300'; #ORDER BY pay_success_time DESC ;

SELECT * FROM t_dxm_order03 WHERE order_id = '1550872670300';



SELECT * FROM t_gogomall_order_item WHERE order_id = '207441164659';

SELECT item_sku, COUNT(1) FROM t_gogomall_order_item GROUP BY shop_id, item_sku;

SELECT `puid`,`shop_id`, `item_sku`, `product_id`, `main_image`, `item_title`, `size`, `color`, SUM(`quantity`) AS `salesCount`,
COUNT(`order_id`) AS `orderCount`, SUM(`price` * `quantity`) AS `salesAmount` 
FROM `t_gogomall_order_item` WHERE `puid` IN(3)  GROUP BY `shop_id`, `item_sku`;  #AND (`item_sku` IS NULL OR `item_sku` = '')


# 利润统计表
SELECT id, puid, platform, is_refund_fee_modify_manually FROM t_dxm_stat_profit_reckon0c;

#
SELECT * FROM t_dxm_warehose_inout_record WHERE order_no = '';  #order_no 平台订单号


SELECT * FROM t_dxm_stat_sales_daily WHERE platform = 'gogomall' ORDER BY update_time DESC ;

SELECT product_uuid, COUNT(1) FROM t_dxm_stat_sales_daily WHERE puid = 3 AND platform = 'gogomall' GROUP BY product_uuid;

SELECT * FROM `t_dxm_stat_sales_product` WHERE puid = 3 AND platform = 'gogomall' ORDER BY create_time DESC;

SELECT * FROM t_dxm_stat_sales_product WHERE product_uuid = '5c71ea5f99bcea8a15d5e2e2a888d46c';  #XM3020869  XM3019755



SELECT `puid`,`shop_id`, `item_sku`, `product_id`, `main_image`, `item_title`, `size`, `color`, SUM(`quantity`) AS `salesCount`,
COUNT(`order_id`) AS `orderCount`, SUM(`price` * `quantity`) AS `salesAmount` 
FROM `t_gogomall_order_item` WHERE `puid` IN(3)  AND order_id IN (SELECT id FROM t_gogomall_order WHERE puid = 3 AND pay_success_time BETWEEN '2019-02-26 16:00:00' AND '2019-02-27 15:59:59'   ) AND item_sku IS NOT NULL
GROUP BY `shop_id`, `item_sku`; 

SELECT id FROM t_gogomall_order WHERE pay_success_time BETWEEN '2019-02-24 04:16:30' AND '2019-02-27 20:47:31'; 

SELECT * FROM t_user WHERE id = 3;

SELECT * FROM t_user_config WHERE puid = 3;








#计算产品重量和价格

SELECT * FROM t_gogomall_order WHERE order_num = '1551290652399';

SELECT * FROM t_dxm_product_order_relation03 WHERE platform = 'gogomall'  AND dxm_order_id = '207441165117';

SELECT * FROM t_dxm_warehose_product WHERE product_id = '207458789397';

SELECT * FROM t_dxm_product WHERE id  = '207458789397';

SELECT * FROM t_gogomall_order_item WHERE order_id = '1543930769551';

 #2747130017775743

SELECT * FROM t_dxm_order03 WHERE order_id = '1543930769551';

SELECT * FROM t_dxm_warehose_product;  # 价格

SELECT * FROM t_dxm_product  #重量  DxmCommodityProduct
