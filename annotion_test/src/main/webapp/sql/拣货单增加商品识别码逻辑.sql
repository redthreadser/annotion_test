SELECT  sbm_id,`template_name`,`template_type`, sbm_id, all_sbm_code FROM t_picking_list_template WHERE  puid = 4 ORDER BY update_time DESC;

SELECT id, sbm_id, uninue_flag, all_sbm_code FROM t_dxm_product WHERE  puid = 4 ORDER BY update_time;

SELECT id, sbm_id, uninue_flag FROM t_dxm_product  WHERE sbm_id IS NOT NULL;
SELECT * FROM #276177907877


ALTER TABLE `t_picking_list_template` ADD COLUMN `sbm_id` TINYINT(1) DEFAULT 0 COMMENT '识别码：0 否 1：是' AFTER sku_code;

ALTER TABLE `t_picking_list_template` ADD COLUMN `all_sbm_code` TINYINT(1) DEFAULT 0 COMMENT '汇总识别码(商品) 0：否 1：是' AFTER all_sku_code;


SELECT * FROM t_print_jh_config;