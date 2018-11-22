/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80003
Source Host           : localhost:3306
Source Database       : faucet

Target Server Type    : MYSQL
Target Server Version : 80003
File Encoding         : 65001

Date: 2017-11-22 22:04:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wallet_config
-- ----------------------------
DROP TABLE IF EXISTS `wallet_config`;
CREATE TABLE `wallet_config` (
  `config_key` varchar(50) NOT NULL COMMENT '配置键',
  `config_content` text COMMENT '配置内容',
  `type` varchar(10) NOT NULL COMMENT '类型(string、number or object...)',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wallet_config
-- ----------------------------
INSERT INTO `wallet_config` VALUES ('balance_task_timeout', '30000', 'Number', '资产定时任务刷新间隔');
INSERT INTO `wallet_config` VALUES ('coin_unit', 'YOYO', 'String', '货币单位');
INSERT INTO `wallet_config` VALUES ('csaf_param', '100', 'Number', '币天及积分积累 最终显示转化参数');
INSERT INTO `wallet_config` VALUES ('erc20_fees', '5', 'Number', 'ERC20转出手续费');
INSERT INTO `wallet_config` VALUES ('erc20_master', '43752382', 'String', '网关帐号');
INSERT INTO `wallet_config` VALUES ('history_page_size', '20', 'Number', '近期活动每页数量');
INSERT INTO `wallet_config` VALUES ('min_committee_pledge', '1000', 'Number', '理事会最低抵押');
INSERT INTO `wallet_config` VALUES ('min_witness_pledge', '10000', 'Number', '见证人最低抵押');
INSERT INTO `wallet_config` VALUES ('retain_count', '100000', 'Number', '计算保留位数 5位');
