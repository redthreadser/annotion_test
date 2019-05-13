SELECT id FROM t_dxm_product WHERE puid = 4 AND sku = 'te1234st ' AND is_del = 0;

SELECT * FROM t_dxm_product_order_relation WHERE product_id IN (SELECT id FROM t_dxm_product WHERE puid = 4 AND sku = 'te1234st');

SELECT * FROM t_dxm_product_order_relation

SELECT id, order_state, commit_platform_status, package_number, is_voided FROM t_dxm_order0c WHERE id IN (
	SELECT DISTINCT dxm_order_id FROM t_dxm_product_order_relation0c WHERE product_id IN (
		SELECT id FROM t_dxm_product WHERE puid = 4 AND sku = 'te1234st') LIMIT 5000  
) AND `id` = parent_id LIMIT 5000 #and order_state = 'processed' ; #= '274878209064';

SELECT * FROM t_dxm_order0c ORDER BY create_time DESC

SELECT id, sku_count, package_product_status FROM  t_dxm_order0c WHERE order_id = '0412e263fc4377a5-2';

SELECT COUNT(*) FROM t_dxm_order0c WHERE id = '276160536504';

SELECT * FROM `t_dxm_order0c` WHERE  `puid` = 4  AND`id`IN(274878209064,276160575680,276160637167,276160637174,276160643059,276160643061) AND`order_state`='paid' 
AND`is_voided`=? AND`is_removed`=? AND`is_free`=? AND`is_batch`=?;

SELECT  FROM `t_dxm_order0c` WHERE  `puid` = 4  AND `id` IN(274878209064,276160575680,276160637167,276160637174,276160643059,276160643061);


SELECT id, update_time FROM `t_dxm_order0c` WHERE puid = 4 ORDER BY update_time DESC;