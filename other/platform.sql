/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : faucet

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-24 18:18:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for platform
-- ----------------------------
DROP TABLE IF EXISTS `platform`;
CREATE TABLE `platform` (
  `pid` int(11) NOT NULL COMMENT '平台id',
  `owner` int(11) NOT NULL COMMENT '拥有者uid',
  `pname` varchar(32) NOT NULL COMMENT '平台名称',
  `url` varchar(32) NOT NULL COMMENT '地址',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `phone` varchar(20) NOT NULL COMMENT '联系电话',
  `contact` varchar(20) NOT NULL COMMENT '联系人',
  `status` int(11) NOT NULL COMMENT '平台状态',
  `auditor` varchar(30) DEFAULT NULL COMMENT '审核人',
  `memo` text COMMENT '备注',
  `create_time` bigint(20) NOT NULL COMMENT '创建日期',
  `last_update_time` bigint(20) NOT NULL COMMENT '最后更新日期',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
