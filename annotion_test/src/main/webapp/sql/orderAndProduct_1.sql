SELECT * FROM t_smt_order00 WHERE order_id = '90072608477043'
SELECT * FROM t_wish_shop ws WHERE  id= '2000079';

SELECT  * FROM t_wish_shop ws WHERE puid = 4 AND platform = 'lazada';

SELECT * FROM t_ebay_order WHERE order_id = '110199229762-28638876001' #shop_id = '1999996';




SELECT * FROM t_wish_order WHERE shop_id = '1999996';

SELECT * FROM `t_ebay_product_detail` WHERE  product_id = '110294832956' ;

SELECT * FROM t_smt_product WHERE

SELECT t.`item_id` FROM t_ebay_product t WHERE shop_id = '1999996' AND puid = 0;
SELECT * FROM t_ebay_product t WHERE item_id = '110294832956' AND puid = 0;

SELECT * FROM t_wish_order

SELECT * FROM t_wish_product WHERE shop_id = '1999996';

SELECT * FROM t_wish_order

SELECT * FROM t_amazon_order WHERE shop_id = '2000079'   `amazon_order_id`;

SELECT `asin`, tp.*  FROM t_amazon_product  tp WHERE tp.`shop_id` = '2000079';