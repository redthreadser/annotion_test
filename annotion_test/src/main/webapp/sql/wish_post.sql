#物流代理商，一个授权账号一条记录
SELECT id, agent_name_type gType, agent_name AS agentName  FROM `t_ship_agent`  WHERE  id = 15 
SELECT * FROM `t_ship_agent_provider` WHERE agent_id = 92;     #wish邮的所有渠道            

SELECT id, agent_id , agent_provider_name AS pName, `t_apply_track_task` FROM t_ship_agent_provider_authorize_detail WHERE puid = 4 AND agent_id = 2260

SELECT * FROM t_ship_agent_provider_authorize_detail WHERE id = '15947935126341768';

SELECT * FROM t_dxm_order0c WHERE order_id = '254770403';


SELECT * FROM `t_ship_agent_provider_authorize` WHERE id = '206158435055';

#具体的物流提供商
SELECT  agent_id, agent_provider_name, puid, agent_provider_id FROM `t_ship_agent_provider_authorize_detail` WHERE  id = '206158435055';

#代理商和具体物流商连表查询 wish邮agent_name_type == 28
SELECT 
  d.`id`, g.`id`, g.`agent_name`,d.`agent_provider_id`,  d.`agent_provider_name`,  g.`agent_type`, g.`agent_name_type`, d.`agent_id`
FROM
  `t_ship_agent` g 
  INNER JOIN t_ship_agent_provider_authorize_detail d 
    ON g.`id` = d.`agent_id` 
WHERE d.`puid` = '4' 
  AND d.`is_enable` = 1 
  AND d.`is_delete` = 0 
  AND g.`agent_name_type`= 28
ORDER BY d.`agent_id` ;

SELECT 
  d.`id`, g.`id`, g.`agent_name`,d.`agent_provider_id`,  d.`agent_provider_name`,  
  g.`agent_type`, g.`agent_name_type`, d.`agent_id`, d.`is_enable` , d.`puid`
FROM
  `t_ship_agent` g 
  INNER JOIN t_ship_agent_provider_authorize_detail d 
    ON g.`id` = d.`agent_id` 
WHERE d.`puid` = '3323439' 
  AND d.`is_enable` = 1 
  AND d.`is_delete` = 0 
  AND g.`agent_name_type`= 28
ORDER BY d.`agent_id` ;


SELECT * FROM t_ship_agent WHERE puid = 3 AND agent_name_type = 28;

SELECT * FROM t_ship_agent_provider_authorize_detail


#查询改物流方式所有的用户订单
SELECT id, auth_id  FROM t_dxm_order04 WHERE order_state = 'approved' AND auth_id != 0 AND puid = 232073 ORDER BY d #3 206158434537,206158435055  15947935126341471,15947935126341768

SELECT *  FROM t_dxm_order0c WHERE puid IN(4, 3) ORDER BY FIELD(puid, 4, 3);

SELECT * FROM t_user_config WHERE puid = 4;

SELECT * FROM t_apply_track_config WHERE puid = 4;

UPDATE t_apply_track_config SET `is_enable` = FALSE , update_time = NOW() WHERE puid = 4


SELECT * FROM t_apply_track_log ORDER BY create_time DESC LIMIT 5000;

UPDATE t_apply_track_config SET `is_select_approve` = ? AND update_time = NOW() WHERE puid = ?;

SELECT * FROM t_apply_track_log WHERE puid = ? AND create_time BETWEEN ? AND ? ORDER BY create_time;




SELECT * FROM t_user WHERE account = '20190417'; #  3323439

SELECT * FROM t_user_config WHERE puid IN(3, 4, 232073, 3323439);


SELECT * FROM t_ship_agent_provider_authorize_detail WHERE puid = '4';

SELECT id, puid, agent_provider_id, agent_provider_name, smt_provider, wish_provider,ebay_provider FROM t_ship_agent_provider_authorize_detail 
WHERE puid = '3323439' AND agent_id = '1307' AND id = '274877910960';

SELECT * FROM `t_ship_agent_provider` WHERE id IN('4309', 4310, 4311) '6099';

SELECT  FROM t_dxm_order0c WHERE order_id = '5a606e980000000000000000';

SELECT MD5() #15947935126341769

