/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80003
Source Host           : localhost:3306
Source Database       : faucet

Target Server Type    : MYSQL
Target Server Version : 80003
File Encoding         : 65001

Date: 2017-11-22 22:04:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for faucet_config
-- ----------------------------
DROP TABLE IF EXISTS `faucet_config`;
CREATE TABLE `faucet_config` (
  `config_key` varchar(50) NOT NULL COMMENT '配置键',
  `config_content` text COMMENT '配置内容',
  `type` varchar(10) NOT NULL COMMENT '类型(string、number or object...)',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faucet_config
-- ----------------------------
INSERT INTO `faucet_config` VALUES ('allowance_per_article', '{\"amount\":0,\"asset_id\":0}', 'Object', '每文最低收入（不参与分成收入）');
INSERT INTO `faucet_config` VALUES ('apiServer', 'ws://47.52.155.181:8090', 'String', '水龙头');
INSERT INTO `faucet_config` VALUES ('authentication_due', '300000', 'Number', '登录令牌过期时间 单位ms');
INSERT INTO `faucet_config` VALUES ('buyout_percent', '10000', 'Number', '买断价比例');
INSERT INTO `faucet_config` VALUES ('check_connect_interval', '180000', 'Number', '检查ws连接间隔');
INSERT INTO `faucet_config` VALUES ('erc20byuid', '179353760', 'String', 'etc20支付网关uid');
INSERT INTO `faucet_config` VALUES ('giftYoyo', '100', 'Number', '注册时赠送的yoyo');
INSERT INTO `faucet_config` VALUES ('invitation_count', '5', 'Number', '邀请码每天限制数量');
INSERT INTO `faucet_config` VALUES ('ipDue', '30000', 'Number', 'ip 多少时间范围内不得操作 单位ms');
INSERT INTO `faucet_config` VALUES ('max_share_per_article', '{\"amount\":0,\"asset_id\":0}', 'Object', '每文最高分成金额');
INSERT INTO `faucet_config` VALUES ('max_share_total', '{\"amount\":0,\"asset_id\":0}', 'Object', '账户最高分成金额');
INSERT INTO `faucet_config` VALUES ('post_need_code', 'true', 'Boolean', '开启发帖权是否需要激活码');
INSERT INTO `faucet_config` VALUES ('referrer', '25997', 'Number', '引荐人uid');
INSERT INTO `faucet_config` VALUES ('referrer_percent', '0', 'Number', '引荐人分成比例');
INSERT INTO `faucet_config` VALUES ('registrar', '206336051', 'Number', '注册商uid');
INSERT INTO `faucet_config` VALUES ('registrar_key', '5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS', 'String', '注册商私钥');
INSERT INTO `faucet_config` VALUES ('registrar_memo_key', '5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS', 'String', '注册商备注私钥');
INSERT INTO `faucet_config` VALUES ('registrar_percent', '0', 'Number', '注册商分成比例');
INSERT INTO `faucet_config` VALUES ('seed_end', '999999', 'Number', '种子区间结束');
INSERT INTO `faucet_config` VALUES ('seed_hold', '[821001,999999]', 'Array', '种子保留');
INSERT INTO `faucet_config` VALUES ('seed_start', '821001', 'Number', '种子区间开始');
INSERT INTO `faucet_config` VALUES ('voting_account', '175', 'Number', '代理选举账号 uid');
