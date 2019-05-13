#规则列表条件
SELECT * FROM `t_rule_condition`;

SELECT * FROM t_rule WHERE puid = 232073 ORDER BY update_time DESC;
#规则详情
SELECT * FROM t_rule_detail  WHERE  rule_id = '15947935125681486' ORDER BY update_time DESC;  #274879034623  274879034550 #630940

SELECT * FROM t_rule_detail ORDER BY update_time DESC

SELECT * FROM t_rule WHERE rule_name = '自定义标记';


SELECT * FROM t_dxm_user_role WHERE uid = '232239';

SELECT * FROM t_dxm_role WHERE id = '64';

UPDATE `t_rule_condition` SET `order_num` = '5',  update_time = NOW() WHERE `cond_type` = '4'; 

SELECT * FROM t_dxm_resource WHERE id = '94';

SELECT * FROM t_user WHERE account  LIKE 'test%';


SELECT * FROM t_dxm_order0c WHERE order_id = '0416cadd6cb7d511-6';

SELECT id, country_ch, province FROM t_dxm_package_address WHERE province IS NOT NULL ORDER BY create_time DESC;


ALTER TABLE `t_rule_condition` ADD COLUMN `order_num_new` INT(3) DEFAULT 0 COMMENT '排序值（新）' AFTER `order_num`;

t_rule_condition



INSERT INTO 
`t_rule_condition`(`rule_type`, `cond_type`, `order_num`, `cond_name`, `cond_value_name`, `link_url`, `comment`, `help_link`, `create_time`, `update_time`) 
VALUES(1,16,111,'订单地址为','指定州省',NULL,NULL,NULL,NOW(),NOW()), (1,17,-1000,'订单地址为','排除州省',NULL,NULL,NULL,NOW(),NOW());



INSERT INTO 
`t_rule_condition`(`rule_type`, `cond_type`, `order_num`, `cond_name`, `cond_value_name`, `link_url`, `comment`, `help_link`, `create_time`, `update_time`) 
VALUES(1,18,41,41, '订单为','wish需妥投订单',NULL,NULL,NULL,NOW(),NOW()), (1,19,71,71, '订单商品为','指定分类',NULL,'只有开启库存才能使用此条件！',NULL,NOW(),NOW());










