SELECT  * FROM t_wish_shop  WHERE platform = 'mymall';

UPDATE t_wish_shop SET merchant_id = '6b012fb7b7e3fbdcb60bfb78369d11b6' WHERE id = '1111111293';

SELECT  * FROM t_wish_shop  WHERE puid = 4 AND id IN ('91539','91536','91549');

SELECT * FROM t_lazada_order tl WHERE shop_id = '1111111640';

SELECT * FROM t_lazada_order tl WHERE `lzd_order_id` = ?`cross_commerce`

SELECT * FROM t_lazada_product ORDER BY update_time DESC WHERE shop_id = 1111111640

SELECT * FROM t_lazada_product lp LEFT JOIN t_wish_shop ws ON lp.shop_id = ws.id WHERE primary_sku = '5rfv-Black-Int:XS-06';

SELECT * afrom t_lazada_product WHERE primary_sku = ?

SELECT p.item_code, p.* FROM t_dh_product p WHERE shop_id='1111111277'

select * from t_dh_order where shop_id='1111111634';

select item_code from t_dh_product where shop_id = '1111111634';


select * from t_shopify_order where shop_id = '1111111513';

select * from t_shopify_product where shop_id = '1111111513' and product_id_shopify is not null order by update_time desc ; product_id_shopify = '10411255434';

select * from t_woocommerce_order where order_id_wcc = ?;

## shopee ##
select * from t_shopee_order where shop_id = '1111111241'; #1111111622

select * from t_shopee_product WHERE shop_id = '1111111241';

#joom
select * from t_joom_order where shop_id = '1111111626'

select * from t_joom_product where shop_id = '1111111626';

#  cd
select * from t_cd_order where shop_id = '2000306' order by order_time desc;


## tophatter
`t_alibaba_product_seq`where shop_id = '1111111331' order by order_time desc;

select * from t_tophatter_order WHERE shop_id = '2000077' and order_id = '35556544';

select * from t_factorymarket_order

select * from t_vova_order where shop_id = '1111111641';

select distinct(shop_id) from t_cd_order where shop_id = '1111111641';


SELECT * FROM t_magento_order w


select * from t_magento2_order



select * from `t_ueeshop_order` where pud =
 
select * from `t_gogomall_order` where `order_id` = ?

select * from t_jd_order where shop_id = '1111111632';


