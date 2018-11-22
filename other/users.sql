/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : faucet

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-31 13:24:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `auth` int(11) NOT NULL COMMENT '临时权限',
  `authentication` varchar(32) DEFAULT NULL COMMENT '登录凭证',
  `memo` text COMMENT '备注',
  `last_login_time` bigint(20) DEFAULT NULL COMMENT '最后登录日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '588589f6016404f15cf7fafa006ca0707fe9362f8a757867d99dcafbfd417e70', '0', 'cd393efb4723a8e137836c5dad1b0c35', '', '1509427443081');
INSERT INTO `users` VALUES ('5', 'benjen', '7915b2bfc5eb7ed1f330ed4ea3f949ba353179581c206c517fc8f19ef8fdaf0e', '1', 'f570939c82c054b09e18cbf4710fc77b', '', '1509092513540');
