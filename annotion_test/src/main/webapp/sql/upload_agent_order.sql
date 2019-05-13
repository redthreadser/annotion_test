#创建生成序列号 sql
CREATE TABLE `t_dxm_upload_agent_seq` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stub` CHAR(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stub` (`stub`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8mb4 COMMENT='物流和货代之间的关系表的序列生成表'

#创建物流与货代关系表
CREATE TABLE `t_dxm_upload_agent_relation` (
  `id` BIGINT(20) NOT NULL,
  `puid` INT(11) DEFAULT '0',
  `agent_id` INT(20) DEFAULT '0' COMMENT '代理商id',
  `auth_name` VARCHAR(100) DEFAULT NULL COMMENT '展示的物流方式名称',
  `auth_id` BIGINT(20) DEFAULT '0' COMMENT '物流方式授权ID',
  `upload_auth_id` BIGINT(20) DEFAULT '0' COMMENT '上传的物流方式id',
  `upload_agent_id` INT(11) DEFAULT '0' COMMENT '上传的代理商id',
  `upload_provider_name` VARCHAR(100) DEFAULT NULL COMMENT '上传的货代的名称',
  `create_time` DATETIME DEFAULT NULL,
  `update_time` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_auth_id_puid` (`puid`,`auth_id`),
  KEY `idx_puid` (`puid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='物流和货代之间的映射表'