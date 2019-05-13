SELECT id, order_id, agent_provider_name, package_number FROM t_dxm_order0c WHERE order_id = '1001-30'; #XM4061442 vadd4565

#查询订单数量
SELECT id, order_id, agent_provider_name, package_number FROM t_dxm_order0c_history WHERE id NOT IN (
SELECT dxm_order_id FROM t_dxm_order_shipped WHERE puid = 4 AND order_state = 'change_finish');  #change_md, change_finish change_tracking

SELECT * FROM t_dxm_order0c WHERE package_number = 'XM4060912C1';

SELECT * FROM `t_dxm_order_shipped` WHERE package_number = 'XM4054337G2';

SELECT * FROM `t_dxm_order_shipped` WHERE dxm_order_id = '274878127305'; #276160637518

SELECT * FROM t_export_template WHERE id = 189;


SELECT dxm_order_id, COUNT(1) FROM t_dxm_order_shipped WHERE puid = 4 AND order_state = 'change_md' AND storage_id = 2 GROUP BY dxm_order_id;

SELECT tt.`dxm_order_id`, dd.`order_id`, dd.`package_number`, dd.`id` FROM t_dxm_order_shipped tt INNER JOIN t_dxm_order0c dd ON tt.`dxm_order_id` = dd.`id` 
WHERE  dd.puid = 4 AND tt.order_state = 'change_finish'; 

SELECT * FROM t_export_template ORDER BY update_time DESC;