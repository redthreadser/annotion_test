INSERT INTO `t_apply_track_config`(`puid`, `auth_id`, `is_select_approve`, `create_time`, `update_time`) 
VALUES(5222, '228384989045804819,228384989045804820,228384989045804821', 1, NOW(), NOW());

SELECT * FROM t_apply_track_config;
INSERT INTO `t_apply_track_task`(`id`, `puid`, `agent_name_type`, `agent_id`, `agent_provider_id`, `dxm_order_id`, `sort_number`, `apply_state`, `create_time`, `update_time`) 
VALUES(1, 4, 28, );

UPDATE t_apply_track_task SET apply_state = 0, update_time = NOW() WHERE dxm_order_id IN( '228384990326821003','228384990326821004','228384990326821005','228384990326821006','228384990326821007','228384990326821008','228384990326821009','228384990326821010','228384990326821011','228384990326821012','228384990326821013','228384990326821014','228384990326821015','228384990326821016','228384990326821017','228384990326821018','228384990326821019','228384990326821020','228384990326821021','228384990326821022','228384990326821023','228384990326821024','228384990326821025','228384990326821026','228384990326821027','228384990326821028','228384990326821029','228384990326821030','228384990326821031','228384990326821032','228384990326821033','228384990326821034','228384990326821035','228384990326821036','228384990326821037','228384990326821038','228384990326821039','228384990326821040','228384990326821041','228384990326821042','228384990326821043','228384990326821044','228384990326821045','228384990326821046','228384990326821047','228384990326821048','228384990326821049','228384990326821050','228384990326821051','228384990326821052','228384990326821053','228384990326821054','228384990326821055','228384990326821056','228384990326821057','228384990326821058','228384990326821059','228384990326821060','228384990326821061','228384990326821062','228384990326821063','228384990326821064','228384990326821065','228384990326821066','228384990326821067','228384990326821068','228384990326821069','228384990326821070','228384990326821071','228384990326821072','228384990326821073','228384990326821074','228384990326821075','228384990326821076','228384990326821077','228384990326821078','228384990326821079','228384990326821080','228384990326821081','228384990326821082','228384990326821083','228384990326821084','228384990326821085','228384990326821086','228384990326821087','228384990326821088','228384990326821089','228384990326821090','228384990326821091','228384990326821092','228384990326821093','228384990326821094','228384990326821095','228384990326821096','228384990326821097','228384990326821098','228384990326821099','228384990326821100','228384990326821101','228384990326821102' );

SELECT * FROM t_apply_track_task WHERE device_id = 1 AND apply_state = -1 LIMIT 10000 ;
#DELETE FROM t_apply_track_task WHERE apply_state != 8 LIMIT 80000;

SELECT MD5(3323439);

SELECT * FROM `t_apply_track_task` WHERE apply_state = 2  ORDER BY sort_number LIMIT 15, 5 ; #228384990326819986 228384990326819985

UPDATE t_apply_track_task SET apply_state = 0, update_time = NOW() WHERE sort_number >= 1 AND sort_number <= 2;

UPDATE t_apply_track_task SET apply_state = 8, error_msg = NULL,  update_time = NOW() WHERE apply_state = -1;

SELECT * FROM t_apply_track_task WHERE dxm_order_id = 228384990326824306;



SELECT * FROM t_apply_track_log ORDER BY create_time DESC

#查询移入后修改的状态
SELECT id, order_state, apply_tracking_number_status, sign_ban_ship, update_time FROM t_dxm_order0c WHERE id IN 
(SELECT dxm_order_id FROM t_apply_track_task WHERE puid = 4  );

SELECT id, order_state, apply_tracking_number_status, sign_ban_ship, update_time FROM t_dxm_order04 WHERE id IN
 (SELECT dxm_order_id FROM t_apply_track_task WHERE puid = 232073 );
 # 更新申请状态
 UPDATE t_dxm_order04 SET apply_tracking_number_status = 'fail' WHERE id IN
 (SELECT dxm_order_id FROM t_apply_track_task WHERE puid = 232073 );
 
 SELECT * FROM t_dxm_order0b WHERE order_id = '20190416-2-1039';  228384989045804819  228384990326819949
 
 SELECT id, puid, order_id, order_state, apply_tracking_number_status, tracking_number,auth_id, forward_order_id, package_number, 
 error_msg, buyer_country, is_voided
	FROM t_dxm_order0b WHERE id IN(228384990326824306) 
	AND apply_tracking_number_status = 'applying' LIMIT 20000;
	
 SELECT id, puid, order_id, order_state, apply_tracking_number_status, tracking_number,auth_id, forward_order_id, package_number, error_msg, buyer_country 
FROM  t_dxm_order0c WHERE puid = 4 AND apply_tracking_number_status = 'fail';   #274879696089,274877912560,274879696238
	
UPDATE t_dxm_order0b SET apply_tracking_number_status = 'fail', update_time = NOW() WHERE puid = 3323439 AND apply_tracking_number_status = 'applying';
SELECT * FROM t_apply_track_log ORDER BY create_time DESC;

#delete from t_apply_track_log
 
 SELECT dxm_order_id, COUNT(1) FROM t_apply_track_task WHERE puid = 4 GROUP BY dxm_order_id;
 
 
SELECT id, puid, order_id, order_state, apply_tracking_number_status, tracking_number,auth_id, forward_order_id, package_number, 
FROM t_dxm_order0b ORDER BY update_time DESC ;

SELECT id, order_state AS state, buyer_country FROM t_dxm_order0b WHERE puid = '';

EXPLAIN SELECT * FROM t_dxm_order0b WHERE puid = 3323439 AND auth_id = '228384989045804820';
AND ( order_state = 'approved') LIMIT 10000;



 ALTER TABLE `t_apply_track_task` ADD COLUMN `buyer_country` VARCHAR(50) NULL COMMENT '买家国家' AFTER `error_msg`; 
 
 SELECT dxm_order_id FROM `t_apply_track_task` WHERE apply_state = 0 ORDER BY apply_type, sort_number  LIMIT 2000
 
 ALTER TABLE `t_apply_track_task` ADD COLUMN `apply_type` TINYINT(1) NULL DEFAULT 1 COMMENT '订单的状态，1 申请失败，2 待处理' AFTER `dxm_order_id`; 
 
 
 SELECT id, package_number, order_state, shop_id FROM t_dxm_order0c WHERE order_id = '79123394008079';
 
 SELECT * FROM t_wish_shop WHERE id = 59;
 
 
 
SELECT id,  FROM t_ship_agent_provider_authorize_detail WHERE puid = 4


SET is_print_pl = ?, is_print_md = ?, md_sign_time = ?, jh_sign_time = ?, update_time = NOW()