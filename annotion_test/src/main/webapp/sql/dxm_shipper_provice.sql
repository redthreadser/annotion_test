SELECT * FROM t_user_config WHERE puid = 4 `auto_upload_agent_order`;

SELECT * FROM `t_dxm_upload_agent_relation`;

SELECT `auto_upload_agent_order`, update_time AS autoUploadState FROM `t_user_config` WHERE puid = 4;

SELECT * FROM t_dxm_upload_agent_relation WHERE puid = 4 AND `auth_id`=274877911129;

SELECT * FROM t_dxm_order_upload_agent WHERE puid = 4 AND`upload_status` = 'unupload' AND shipped_time >= '2017-11-08 20:49:25' AND shipped_time <='2017-11-08 21:01:52'

SELECT * FROM t_ebay_order WHERE id = '276160633100';

EXPLAIN 
SELECT * FROM t_ship_agent_provider p INNER JOIN t_ship_agent_provider_authorize_detail t ON p.id=t.agent_provider_id WHERE p.is_order_upload_agent = 1;

SELECT order_id, order_state FROM t_dxm_order WHERE order_state='shipped';

SELECT * FROM t_dxm_order_upload_agent WHERE package_number IN ('XM4052648C6', 'XM4052562', 'XM4046028');

UPDATE t_dxm_order_upload_agent ;

SELECT * FROM t_lazada_product WHERE item_id = 'sku1';

SELECT * FROM t_smt_order WHERE order_id = '86397474367043';

DELETE FROM t_dxm_upload_agent_relation WHERE puid = 4 AND agent_id = 1;

SELECT * FROM t_dxm_log WHERE user_name IS NULL

SELECT id, order_id, parent_id FROM t_dxm_order WHERE puid = 4

SELECT * FROM t_dxm_order0c WHERE 