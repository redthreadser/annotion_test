SELECT * FROM t_lazada_order WHERE id = '276160633678';
SELECT * FROM t_lazada_product WHERE item_id IS NOT NULL;

# 查询店小秘order
SELECT 
  id,
  order_id,
  order_state,
  order_state_platform,
  commit_platform_status,
  update_time
FROM
  t_dxm_order0c 
WHERE platform = 'lazada'
AND order_id = '241085731322774';


#lazada order
SELECT lzd_order_id, lzd_order_num FROM t_lazada_order WHERE lzd_order_id = '241085731322774' ;  #240861396322774
  
SELECT id, dxm_order_id, order_state, state FROM t_dxm_product_order_relation0c WHERE dxm_order_id = '276160634584';
SELECT * FROM t_dxm_product_order_relation0c WHERE dxm_order_id = '276160633643';

SELECT id,order_id, order_item_id, `status` FROM t_lazada_order_item WHERE order_id = '276160634583';

SELECT * FROM t_lazada_order_item

SELECT order_id, COUNT(*) FROM t_lazada_order_item GROUP BY order_id;


SELECT * FROM t_wish_shop WHERE puid = 4 AND platform = 'lazada' AND id =  1111111241 ;


