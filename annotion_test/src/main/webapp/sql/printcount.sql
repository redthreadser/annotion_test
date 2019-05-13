## 查询出统计的记录
SELECT COUNT(DISTINCT(`puid`)) puid_count, COUNT(DISTINCT(`order_id`)) order_count, DATE_FORMAT(`create_time`,'%Y-%m-%d') date_time, 70 argent_name_type
FROM `t_dxm_feite_log`  GROUP BY date_time HAVING date_time BETWEEN '2018-12-18' AND '2018-12-18'

`t_dxm_print_count`

## 查询飞特表中的数据
SELECT * FROM t_dxm_feite_log

## 插入飞特表中的数据
INSERT INTO `cross_commerce`.`t_dxm_feite_log` ( 
  `id`,
  `puid`,
  
  
  
  `order_id`,
  `print_number`,
  `track_number`,
  `create_time`
) 
VALUES
  (
    '274879916481',
    '3',
    '276160532573',
    'F214121808040009',
    'UT119578080TH',
    NOW()
  ) ;

SELECT * FROM t_shipped_agent_order_count WHERE 1=1  ORDER BY happen_date DESC,shop_num DESC,order_num DESC  LIMIT 0,300




SELECT `id`, `argent_name_type`, `puid_count`, `order_count`, `day_time`, `create_time` 
FROM `cross_commerce`.`t_dxm_print_count` dpc WHERE dpc.`argent_name_type` = 70 AND dpc.`day_time` BETWEEN '2018-12-12' AND '2018-12-13'

SELECT * FROM `t_dxm_print_count` dc WHERE dc.`argent_name_type` = 70 AND  day_time BETWEEN '2018-12-12' AND '2018-12-13'
LIMIT 0, 1000 ;

UPDATE 
  `cross_commerce`.`t_dxm_print_count` 
SET
  `puid_count` = 'puid_count',
  `order_count` = 'order_count',
WHERE `day_time` = 'day_time';

SELECT `argent_name_type`, `puid_count`, `order_count`, `day_time`, `create_time` 
FROM `cross_commerce`.`t_dxm_print_count` dpc;

WHERE dpc.`argent_name_type` = 70 AND dpc.`day_time` BETWEEN '2018-1-12' AND '2018-12-17' ORDER BY dpc.`day_time` DESC LIMIT 0,100;

##  查询打印数量
SELECT COUNT(1) FROM `t_dxm_print_count` dc WHERE dc.`argent_name_type` = 70  AND dc.`day_time` BETWEEN '2018-1-12' AND '2018-12-17'

## 创建唯一索引
CREATE UNIQUE INDEX day_time ON `t_dxm_print_count`(`day_time`);

SELECT DATEDIFF(DATE_FORMAT(NOW(),'%Y-%m-%d'),MAX(create_time)) day_num,DATE_FORMAT(NOW(),'%Y-%m-%d') cur_date ,DATE_FORMAT(MAX(create_time),'%Y-%m-%d') create_time FROM t_hot_orderwish_count


`update_time`