/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.36 : Database - cross_commerce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cross_commerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cross_commerce`;

/*Table structure for table `t_dxm_print_count` */

DROP TABLE IF EXISTS `t_dxm_print_count`;

CREATE TABLE `t_dxm_print_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `argent_name_type` int(2) DEFAULT NULL COMMENT '货代的id',
  `puid_count` bigint(20) DEFAULT NULL COMMENT '客户的数量',
  `order_count` bigint(20) DEFAULT NULL COMMENT '订单的数量',
  `day_time` date DEFAULT NULL COMMENT '日期',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `day_time` (`day_time`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

/*Data for the table `t_dxm_print_count` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
