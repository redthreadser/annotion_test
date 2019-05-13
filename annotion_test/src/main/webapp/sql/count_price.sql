
SELECT * FROM t_mymall_order
#mymall
SELECT DATE_FORMAT(create_at, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(total_price_usd) price, SUM(shipping_price) shipping FROM `t_mymall_order` WHERE shop_id=1111111625 AND state!='refunded' AND DATEDIFF(NOW(), create_at)<10000 AND create_at < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;

SELECT * FROM t_factorymarket_order
#factorymarket 
SELECT DATE_FORMAT(create_at, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(total_price) price, SUM(total_shipping_cost) shipping FROM `t_factorymarket_order` WHERE shop_id=1111111205 AND state!='Cancelled' AND DATEDIFF(NOW(), create_at)<10000 AND create_at < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;

SELECT * FROM t_ueeshop_order;
#ueeshop 
SELECT DATE_FORMAT(order_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(order_total_price_usd) price, SUM(shipping_price) shipping FROM `t_ueeshop_order` WHERE shop_id=1111111462 AND order_status!=7 AND DATEDIFF(NOW(), order_time)<10000 AND order_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;



SELECT * FROM t_shopyy_order;
#shopyy 
SELECT DATE_FORMAT(order_create_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(order_total_price_usd) price, 
SUM(cost_shipping) shipping FROM `t_shopyy_order` WHERE shop_id=1111111457 AND order_status!=600 AND DATEDIFF(NOW(), order_create_time)<10000 AND order_create_time < DATE_FORMAT(NOW(), '%Y-%m-%d') 
GROUP BY happen_date;

SELECT * FROM t_vova_order;
#vova 
SELECT DATE_FORMAT(confirm_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_goods_sn)) quantity, SUM(total_amount) price, SUM(shipping_fee) shipping FROM `t_vova_order` WHERE shop_id=1111111484 AND order_state!=2 AND DATEDIFF(NOW(), confirm_time)<10000 AND confirm_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;


SELECT * FROM t_jingdong_order;
#jd 
SELECT DATE_FORMAT(book_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(pay_total_usd) price, 
SUM(shipping_cost_usd) shipping FROM `t_jingdong_order` WHERE shop_id=1111111631 AND order_status!=99 
AND DATEDIFF(NOW(), book_time)<10000 AND book_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;


SELECT * FROM t_jd_id_order;
#jd_id 
SELECT DATE_FORMAT(book_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(total_price_usd) price FROM `t_jd_id_order` WHERE shop_id=1111111669 AND order_status!=5 AND DATEDIFF(NOW(), book_time)<10000 AND book_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;


SELECT * FROM t_gogomall_order;
#gogomall 
SELECT DATE_FORMAT(order_create_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(order_amount) price, SUM(shipping_amount) shipping FROM `t_gogomall_order` WHERE shop_id=1111111647 AND order_state!='closed' AND DATEDIFF(NOW(), order_create_time)<10000 AND order_create_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;


SELECT * FROM t_wish_shop_income_month;
SELECT * FROM t_shopee_order;
#t_shopee_order 
SELECT DATE_FORMAT(order_create, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_num_shopee)) quantity, SUM(total_paid_usd) price, SUM(actual_shipping_cost) shipping FROM `t_shopee_order` WHERE shop_id=1000097 AND order_status!='CANCELLED' AND DATEDIFF(NOW(), order_create)<10000 AND order_create < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;


SELECT order_id,  order_total, shipping FROM t_joom_order WHERE DATE_FORMAT(order_time, '%Y-%m-%d') = '2017-07-22' AND shop_id = '2000024';
#joom
SELECT DATE_FORMAT(order_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(order_total) price, SUM(shipping) shipping FROM `t_joom_order` WHERE shop_id=2000024 AND state!='REFUNDED' AND DATEDIFF(NOW(), order_time)<10000 AND order_time < DATE_FORMAT(NOW(), '%Y-%m-%d')  GROUP BY happen_date;


SELECT * FROM t_tophatter_order WHERE DATE_FORMAT(order_time, '%Y-%m-%d') = '2017-07-22' AND shop_id = '2000024';
#t_tophatter_order
SELECT DATE_FORMAT(order_time, '%Y-%m-%d') AS happen_date ,COUNT(DISTINCT(order_id)) quantity, SUM(disbursement_amount) price FROM `t_tophatter_order` WHERE shop_id=2000077 AND `state` !='refunded' AND DATEDIFF(NOW(), order_time)<10000 AND order_time < DATE_FORMAT(NOW(), '%Y-%m-%d') GROUP BY happen_date;

#分支  wip-wishBuyerProvider-qpf
SELECT * FROM t_dxm_order0c WHERE platform = 'wish';

SELECT id, puid, premium_carrier FROM t_wish_order0c WHERE order_id_wish = '5c92f27696e9955287205872';



































