SELECT * FROM t_dxm_order WHERE platform = 'wish' ORDER BY create_time, order_unit

SELECT * FROM `t_currency_exchange_rate` 

SELECT order_id, id,order_unit,
order_amount, ship_amount, refund_amount_usd, update_time
FROM t_dxm_order0c WHERE update_time > '2019-01-15 15:38:26' AND order_id  IN ( '5c3a98910000000000000000') ;  #9892添加

#查店铺
SELECT * FROM t_wish_shop WHERE puid = 4 AND id = 91543

SELECT * FROM t_dxm_order0c WHERE order_id = '8343340756348';

SELECT * FROM t_lazada_order WHERE lzd_order_id = '8343340756348'
SELECT order_id_wish, order_total,id,
 `original_order_total`, `original_price`,price ,`original_cost`,cost, `original_shipping`,shipping ,`original_shipping_cost`, 
 `shipping_cost`,`order_unit`, `original_refund_amount`,`create_time`, `update_time`
 FROM t_wish_order0c WHERE  update_time > '2019-01-15 15:38:26' AND  order_id_wish IN ( '5c3a98920000000000000000'); 

SELECT * FROM t_wish_order0c WHERE id ='276160633945' update_time > '2019-01-14 19:20:03'

`original_order_amount`, `original_ship_amount`, `original_refund_amount`

`original_order_total`=?, `original_price`=?, `original_cost`=?, `original_shipping`=?, `original_shipping_cost`=?, `order_unit`=?, `original_refund_amount`=?
