/*
MySQL Data Transfer
Source Host: localhost
Source Database: snoozles
Target Host: localhost
Target Database: snoozles
Date: 2013/7/1 10:12:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for group_lnk_role
-- ----------------------------
CREATE TABLE `group_lnk_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `rel_group_id` varchar(36) default NULL,
  `rel_role_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKA89B418C6582D8D0` (`rel_group_id`),
  KEY `FKA89B418C3BAB2BD9` (`rel_role_id`),
  CONSTRAINT `FKA89B418C3BAB2BD9` FOREIGN KEY (`rel_role_id`) REFERENCES `t_role` (`role_id`),
  CONSTRAINT `FKA89B418C6582D8D0` FOREIGN KEY (`rel_group_id`) REFERENCES `t_user_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for group_lnk_user
-- ----------------------------
CREATE TABLE `group_lnk_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `rel_group_id` varchar(36) default NULL,
  `rel_user_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKA89CACE16582D8D0` (`rel_group_id`),
  KEY `FKA89CACE1E0D5EFB9` (`rel_user_id`),
  CONSTRAINT `FKA89CACE1E0D5EFB9` FOREIGN KEY (`rel_user_id`) REFERENCES `t_user` (`user_id`),
  CONSTRAINT `FKA89CACE16582D8D0` FOREIGN KEY (`rel_group_id`) REFERENCES `t_user_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role_lnk_privilage
-- ----------------------------
CREATE TABLE `role_lnk_privilage` (
  `id` bigint(20) NOT NULL auto_increment,
  `rel_prvg_id` varchar(36) default NULL,
  `rel_role_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6374B20E4CDFB54D` (`rel_prvg_id`),
  KEY `FK6374B20E3BAB2BD9` (`rel_role_id`),
  CONSTRAINT `FK6374B20E3BAB2BD9` FOREIGN KEY (`rel_role_id`) REFERENCES `t_role` (`role_id`),
  CONSTRAINT `FK6374B20E4CDFB54D` FOREIGN KEY (`rel_prvg_id`) REFERENCES `t_privilage` (`prvg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_privilage
-- ----------------------------
CREATE TABLE `t_privilage` (
  `id` bigint(20) NOT NULL auto_increment,
  `prvg_id` varchar(36) default NULL,
  `prvg_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `prvg_id_` (`prvg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `role_desc` varchar(100) default NULL,
  `role_id` varchar(36) default NULL,
  `role_name` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `role_id_` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
CREATE TABLE `t_test` (
  `id` bigint(20) NOT NULL auto_increment,
  `s_create_ip` varchar(100) default NULL,
  `s_create_time` datetime default NULL,
  `s_create_user` varchar(100) default NULL,
  `s_del_flg` varchar(10) default NULL,
  `s_modify_count` int(11) default NULL,
  `s_name` varchar(100) default NULL,
  `s_update_ip` varchar(100) default NULL,
  `s_update_time` datetime default NULL,
  `s_update_user` varchar(100) default NULL,
  `s_test1` varchar(100) default NULL,
  `s_test2` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` varchar(36) default NULL,
  `user_name` varchar(100) default NULL,
  `user_pswd` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id_` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_group
-- ----------------------------
CREATE TABLE `t_user_group` (
  `id` bigint(20) NOT NULL auto_increment,
  `group_id` varchar(36) default NULL,
  `group_name` varchar(100) default NULL,
  `parent_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id_` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_lnk_role
-- ----------------------------
CREATE TABLE `user_lnk_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `rel_role_id` varchar(36) default NULL,
  `rel_user_id` varchar(36) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK4CF681C03BAB2BD9` (`rel_role_id`),
  KEY `FK4CF681C0E0D5EFB9` (`rel_user_id`),
  CONSTRAINT `FK4CF681C0E0D5EFB9` FOREIGN KEY (`rel_user_id`) REFERENCES `t_user` (`user_id`),
  CONSTRAINT `FK4CF681C03BAB2BD9` FOREIGN KEY (`rel_role_id`) REFERENCES `t_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
