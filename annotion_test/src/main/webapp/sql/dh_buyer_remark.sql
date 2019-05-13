SELECT * FROM `t_walmart_order_item` WHERE sku = '002323' AND order_id = '276160533804';

SELECT * FROM `t_walmart_order_item_img` WHERE sku = '002323';

ALTER TABLE `t_dh_order` ADD COLUMN `buyer_remark` VARCHAR(1000)  COMMENT '买家留言' AFTER `order_remark`;

SELECT * FROM t_dh_order WHERE id = '276160641240';

SELECT * FROM t_dxm_order0c WHERE id IN(276160641240, 276160641273);

SELECT * FROM t_wish_shop WHERE platform = 'walmart' AND puid = 4;

SELECT * FROM t_user WHERE  id = '232073';