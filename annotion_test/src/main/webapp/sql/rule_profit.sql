SELECT * FROM t_rule WHERE  rule_type = 2 AND puid = 4  ORDER BY update_time DESC;

SELECT * FROM t_rule_detail WHERE rule_id = '274879034673' ORDER BY update_time DESC ;

SELECT * FROM t_rule_detail ORDER BY update_time DESC ;

SELECT * FROM t_lazada_order WHERE lzd_order_id = '6547814654253';

SELECT * FROM t_dxm_order0c WHERE puid = 4 AND (package_number LIKE '' OR package_number LIKE '')

SELECT 
  id, package_number, order_id, `rule_id`, `is_rule_comment`,is_mergeable,
  is_has_gift, order_state, is_merge, ship_amount,
  platform, order_unit,update_time
FROM
  t_dxm_order0c 
WHERE #package_number = 'XM4061095'; 
 #order_id in ('42898765111');
order_id IN('1254255');

SELECT * FROM t_wish_order;



#清除系统规则的标记
UPDATE 
  `t_dxm_order0c` 
SET
  `rule_id` = 0,
  `is_rule_comment` = 0,
  `is_rule_message` = 0,
  `is_rule_buyer_select` = 0,
  `is_rule_customs_form` = 0,
  `is_rule_stock_num` = 0,
  `is_rule_stock_sku` = 0,
  `is_rule_russian_name` = 0,
  `is_rule_stock_no_sku` = 0,
  `is_rule_blacklist` = 0 
WHERE `puid` = 4 
  AND `order_state` = 'paid' 
  AND order_id = '#BK54335867';

  
 #拣货备注 
 SELECT * FROM t_dxm_package_comment WHERE package_id = '276160634594';
 
select 
  shipped_total_shipping_charges,
  shipped_total_amount,
  initial_total_shipping_charges_amount 
from
  t_cd_order 
  INSERT INTO `t_rule_condition` (
    `rule_type`,
    `cond_type`,
    `order_num`,
    `cond_name`,
    `cond_value_name`,
    `link_url`,
    `comment`,
    `help_link`,
    `create_time`,
    `update_time`
  ) 
  values(1, 15, 14, '订单买家支付运费为', '指定区间', NULL, NULL, NULL, NOW(),NOW() ) ;


select * from t_calculate_logistic_fee_template where id = '274877912475';

select * from `t_calculate_logistic_fee_template_detail` where template_id = '206158430642';


select * from t_dxm_order0c where puid = 4 and tracking_number in ('12323423423423','LI000445512FR','12353215','UP272819183CN','992797517501000931500','LM437835344CN','JNCL-6026011867','958422665',123,2345,123456,3234566,123,'QWERTYUI',31677867605,12345123,65432);


select * from t_export_template where id = -1;