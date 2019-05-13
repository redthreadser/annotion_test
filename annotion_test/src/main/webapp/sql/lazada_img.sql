SELECT id, order_state FROM t_dxm_order0c WHERE id = '276160633657';

SELECT * FROM t_lazada_order WHERE lzd_order_id = '238385678656445'; 

SELECT * FROM t_lazada_order_item WHERE order_id = '276160633657';



SELECT main_img FROM t_lazada_order_item WHERE main_img IS NOT NULL AND main_img <> '' AND main_img LIKE '%_%';

SELECT * FROM t_dxm_order0c 

SELECT main_image FROM t_lazada_product WHERE main_image LIKE '%_800%';

SELECT id, order_id, commit_platform_status, order_state, order_state_platform FROM t_dxm_order0c 
WHERE platform = 'wish' AND (order_state = 'allocated_has' OR order_state = 'allocated_out');

UPDATE t_dxm_order0c SET commit_platform_status = 'uncommit' WHERE platform = 'wish' AND (order_state = 'allocated_has' OR order_state = 'allocated_out')
AND commit_platform_status = 'success' ; 


SELECT * FROM t_picking_list_template WHERE id IN ('274877907171', '274877907179');

SELECT t1.*  FROM  t_dxm_product t1 , (SELECT DISTINCT(product_id) FROM t_dxm_product_variation WHERE puid=4 AND sku = '888ceshi' ) t2  
WHERE t1.puid = 4 AND t1.is_del =  0 AND t1.id = t2.product_id ORDER BY create_time DESC 
