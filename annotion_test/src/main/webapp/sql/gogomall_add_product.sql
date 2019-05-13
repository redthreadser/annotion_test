 AND package_number = 'XM4065694';

SELECT * FROM t_smt_order_product03 WHERE order_id = '704178242804674';


SELECT id, order_id, sku_count, origin_id, parent_id, pack FROM t_dxm_order0c WHERE order_id = '241085731322774';

SELECT * FROM t_lazada_order_item WHERE order_id = '276160634594';

SELECT * FROM t_gogomall_order WHERE order_num = '1543930769551';

#update `t_gogomall_order_item` set old_quantity = quantity; 


SELECT * FROM `t_gogomall_order_item` WHERE puid = 3 AND order_id = '207441152556';

SELECT * FROM t_dxm_product_order_relation03 WHERE unique_key = '4ad815b100b4074a01db8f643975820c82e688805d0595222d0cfb9300fdd4b5';

UPDATE `t_gogomall_order_item` SET old_quantity = quantity; 
ALTER TABLE `t_gogomall_order_item` ADD COLUMN `old_quantity` INT(8) COMMENT '原始数量' AFTER `quantity`;
ALTER TABLE `t_gogomall_order_item` ADD COLUMN `is_add_product` TINYINT(1) DEFAULT 0 COMMENT '是否追加' AFTER `old_quantity`;
ALTER TABLE `t_gogomall_order_item` ADD COLUMN `is_add_gift` TINYINT(1) DEFAULT 0 COMMENT '追加的是否是礼品' AFTER `is_add_product`;

`old_quantity`, `is_add_product`, `is_add_gift`,

SELECT * FROM t_wish_shop WHERE platform = 'gogomall';

SELECT * FROM t_user WHERE id = 3;



SELECT * FROM t_dxm_warehose_product WHERE product_id = '207458789395' AND is_used = 1;



SELECT t1.* FROM  t_dxm_temp_smt_pair t1 WHERE t1.puid = 4 AND t1.status_type IN (1) ORDER BY create_time DESC;
