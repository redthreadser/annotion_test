SELECT * FROM t_dxm_message_template WHERE puid = 4 ;

SELECT id, order_state FROM t_dxm_order03 WHERE order_id = '1550873075658';

SELECT * FROM t_gogomall_order ORDER BY update_time DESC;




SELECT * FROM t_dxm_order0c WHERE order_id = '528717632';

SELECT * FROM t_smt_package_express;

ALTER TABLE t_gogomall_order ADD COLUMN `buyer_sp_name` VARCHAR(100) COMMENT '买家指定物流的具体方式' AFTER `buyer_shipping_type`;

ALTER TABLE t_gogomall_order  MODIFY COLUMN shipping_provider VARCHAR(100) COMMENT '';


SELECT * FROM `t_ship_agent` WHERE `agent_type`= 21;

SELECT * FROM `t_ship_agent_provider` WHERE `agent_id`= 26187 AND is_del=1 ORDER BY agent_provider_name;

SELECT * FROM `t_ship_agent_provider` WHERE agent_provider_name = 'YunExpress-UKNTN';

SELECT * FROM t_wish_shop WHERE platform IN ( 'gogomall');

SELECT MD5(3)

SELECT  * FROM t_user WHERE puid = 4;

SELECT * FROM t_ebay_shipping_service_detail WHERE site = 'Belgium_Dutch';

SELECT * FROM t_dxm_user_role WHERE puid = 4;

SELECT * FROM t_wish_shop WHERE is_del = 0 AND puid= 4 ORDER BY order_index, create_time;


 

