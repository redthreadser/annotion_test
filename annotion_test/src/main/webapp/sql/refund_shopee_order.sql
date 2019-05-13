SELECT 
  id,
  auth_id,
  order_id,
  shop_id,
  order_state,
  order_state_platform,
  commit_platform_status,
  is_mergeable,
  merge_id,
  is_voided,
  is_split,
  update_time
FROM
  t_dxm_order0c 
WHERE platform = 'shopee'  
  AND order_id = '18102221363NWKU' ;
  AND`is_mergeable`=1 AND`merge_id`=`id`AND`is_voided`=0 AND`is_split`=0  #240861396322774
  AND shop_id = '1111111290'
##########
  
SELECT * FROM t_dxm_order0c WHERE auth_id = '70';
  
SELECT * FROM t_wish_shop WHERE puid = 4 AND platform = 'shopee' AND id = '1111111290';

SELECT * FROM t_shopee_order WHERE id = '276160614697';


SELECT id, merge_id FROM t_dxm_order0c WHERE merge_id IS NOT NULL   id = '137439255189';

SELECT id, dxm_order_id, order_state, state FROM t_dxm_product_order_relation0c WHERE dxm_order_id = '276160614697';


SELECT id, merge_id FROM t_dxm_order0c WHERE id IN(274878144983, 274878143521)

SELECT * FROM t_shopee_order_item WHERE order_id = '276160634588';