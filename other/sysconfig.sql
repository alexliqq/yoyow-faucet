/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : faucet

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-31 13:23:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sysConfig
-- ----------------------------
DROP TABLE IF EXISTS `sysConfig`;
CREATE TABLE `sysConfig` (
  `config_key` varchar(50) NOT NULL COMMENT '配置键',
  `config_content` text COMMENT '配置内容',
  `type` varchar(10) NOT NULL COMMENT '类型(string、number or object...)',
  `scope` int(255) DEFAULT NULL COMMENT '作用系统，0 水龙头， 1 钱包',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  UNIQUE KEY `sysConfig_key_uindex` (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysConfig
-- ----------------------------
INSERT INTO `sysConfig` VALUES ('allowance_per_article', '{\"amount\":0,\"asset_id\":0}', 'Object', '0', '每文最低收入（不参与分成收入）');
INSERT INTO `sysConfig` VALUES ('apiServer', 'ws://demo.yoyow.org:8590', 'String', '0', '水龙头');
INSERT INTO `sysConfig` VALUES ('authentication_due', '300000', 'Number', '0', '登录令牌过期时间 单位ms');
INSERT INTO `sysConfig` VALUES ('balance_task_timeout', '30000', 'Number', '1', '资产定时任务刷新间隔');
INSERT INTO `sysConfig` VALUES ('buyout_percent', '10000', 'Number', '0', '买断价比例');
INSERT INTO `sysConfig` VALUES ('check_connect_interval', '180000', 'Number', '0', '检查ws连接间隔');
INSERT INTO `sysConfig` VALUES ('coin_unit', 'YOYO', 'String', '1', '货币单位');
INSERT INTO `sysConfig` VALUES ('csaf_param', '100', 'Number', '1', '币天及积分积累 最终显示转化参数');
INSERT INTO `sysConfig` VALUES ('erc20byuid', '179353760', 'String', '0', 'etc20支付网关uid');
INSERT INTO `sysConfig` VALUES ('erc20_fees', '5', 'Number', '1', 'ERC20转出手续费');
INSERT INTO `sysConfig` VALUES ('erc20_master', '43752382', 'String', '1', '网关帐号');
INSERT INTO `sysConfig` VALUES ('giftYoyo', '100', 'Number', '0', '注册时赠送的yoyo');
INSERT INTO `sysConfig` VALUES ('history_page_size', '20', 'Number', '1', '近期活动每页数量');
INSERT INTO `sysConfig` VALUES ('invitation_count', '5', 'Number', '0', '邀请码每天限制数量');
INSERT INTO `sysConfig` VALUES ('ipDue', '30000', 'Number', '0', 'ip 多少时间范围内不得操作 单位ms');
INSERT INTO `sysConfig` VALUES ('max_share_per_article', '{\"amount\":0,\"asset_id\":0}', 'Object', '0', '每文最高分成金额');
INSERT INTO `sysConfig` VALUES ('max_share_total', '{\"amount\":0,\"asset_id\":0}', 'Object', '0', '账户最高分成金额');
INSERT INTO `sysConfig` VALUES ('post_need_code', 'true', 'Boolean', '0', '开启发帖权是否需要激活码');
INSERT INTO `sysConfig` VALUES ('referrer', '25997', 'Number', '0', '引荐人uid');
INSERT INTO `sysConfig` VALUES ('referrer_percent', '0', 'Number', '0', '引荐人分成比例');
INSERT INTO `sysConfig` VALUES ('registrar', '206336051', 'Number', '0', '注册商uid');
INSERT INTO `sysConfig` VALUES ('registrar_key', '5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS', 'String', '0', '注册商私钥');
INSERT INTO `sysConfig` VALUES ('registrar_memo_key', '5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS', 'String', '0', '注册商备注私钥');
INSERT INTO `sysConfig` VALUES ('registrar_percent', '0', 'Number', '0', '注册商分成比例');
INSERT INTO `sysConfig` VALUES ('retain_count', '100000', 'Number', '1', '计算保留位数 5位');
INSERT INTO `sysConfig` VALUES ('seed_end', '999999', 'Number', '0', '种子区间结束');
INSERT INTO `sysConfig` VALUES ('seed_hold', '[821001,999999]', 'Array', '0', '种子保留');
INSERT INTO `sysConfig` VALUES ('seed_start', '821001', 'Number', '0', '种子区间开始');
INSERT INTO `sysConfig` VALUES ('voting_account', '175', 'Number', '0', '代理选举账号 uid');
