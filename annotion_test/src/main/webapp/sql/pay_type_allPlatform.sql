
SELECT id, platform, package_number FROM t_dxm_order0c WHERE order_id = '276160642954';

SELECT id, order_create_time， package_number FROM t_dxm_order0c WHERE order_id = '2000187-399';

SELECT * FROM t_wish_order0c

SELECT order_id, payment_type FROM t_smt_order0c  WHERE id IN (SELECT id FROM t_dxm_order0c WHERE order_id = '87387353229487') ;

SELECT id, payment_method FROM t_amazon_order WHERE id IN ('274878145042', '274878145043', '274878189194', '274878145041'); 

SELECT id, payment_method FROM t_ebay_order WHERE id = '276160643022'; ###

SELECT id, payment_type FROM t_smt_order; 

SELECT payment_method FROM t_lazada_order WHERE id = '276160637175';    ###

SELECT  pay_type FROM t_jingdong_order WHERE id = '276160620875'; #支付方式 1：payPal 2:Credit  ###1.PAYPAL 2.CREDIT OR DEBIT CARD 3.YANDEX 4.QIWI

SELECT id, payment_type, order_id FROM t_jd_id_order WHERE id = '276160642954'; ###

SELECT COUNT(1), payment_type FROM t_jd_id_order GROUP BY payment_type ;

SELECT id, payment_method, cod FROM t_shopee_order WHERE id = '276160614694';  ###

SELECT id, payment_method FROM t_ueeshop_order   ###

SELECT id, payment_method FROM t_shopyy_order;  ###

SELECT id, payment_method FROM t_gogomall_order;  ###

SELECT id, payment_type FROM t_smt_order0c;

SELECT id, payment_method FROM t_amazon_order;

SELECT id, payment_gateway_names, note  FROM t_shopify_order;


	
# ceshihuojiawei  shirt-002 100-POR-001-2  100-MIL-005
shopify ###





SELECT * FROM t_magento2_order   #payType



SELECT * FROM t_wish_order0c;

SELECT * FROM t_tophatter_order;





SELECT is_voided FROM t_dxm_order0c WHERE order_id = '250043486';

UPDATE t_dxm_order0c SET is_voided = ?, is_free = ?, is_batch = ?, void_time = ?,  handle_state = ?, handle_time = ?, update_time = NOW()



























getPayTypeStrByNo(payTypeNo)