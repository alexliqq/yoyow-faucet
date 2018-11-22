-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: faucet
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `seed` int(11) NOT NULL COMMENT 'uid种子',
  `uid` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(32) NOT NULL COMMENT '昵称',
  `head_img` text COMMENT '头像',
  `is_post` tinyint(1) DEFAULT '0' COMMENT '是否作者',
  `is_referrer` tinyint(1) DEFAULT '0' COMMENT '是否引荐人',
  `is_create` tinyint(1) DEFAULT '0' COMMENT '是否可创建用户',
  `is_admin` tinyint(1) DEFAULT '0' COMMENT '是否管理员',
  `registrar` int(11) DEFAULT NULL COMMENT '注册人（商）',
  `referrer` int(11) DEFAULT NULL COMMENT '引荐人',
  `create_date` bigint(20) DEFAULT NULL COMMENT '创建日期',
  `lastmodify_date` bigint(20) DEFAULT NULL COMMENT '最后修改日期',
  `phone` varchar(20) DEFAULT NULL COMMENT '用户认证电话',
  `microletter` varchar(20) DEFAULT NULL COMMENT '用户认证微信',
  UNIQUE KEY `account_seed_uindex` (`seed`),
  UNIQUE KEY `account_uid_uindex` (`uid`),
  UNIQUE KEY `account_username_uindex` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`seed`, `uid`, `username`, `nickname`, `head_img`, `is_post`, `is_referrer`, `is_create`, `is_admin`, `registrar`, `referrer`, `create_date`, `lastmodify_date`, `phone`, `microletter`) VALUES (10009,2562529,'testj10','ahahahaha','',0,0,0,0,25638,26861,1499677582072,1499677582072,NULL,NULL),(10010,2562698,'testj11','ahahahaha','',0,0,0,0,25638,26861,1499677644709,1499677644709,NULL,NULL),(10011,2562888,'testj12','ahahahaha','',0,0,0,0,25638,26861,1499677682006,1499677682006,NULL,NULL),(10012,2563242,'testj13','ahahahaha','',0,0,0,0,25638,26861,1499678324076,1499678324076,NULL,NULL),(10013,2563569,'testj14','ahahahaha','',0,0,0,0,25638,26861,1499678354986,1499678354986,NULL,NULL),(100002,25600515,'testj98','ahahahaha','',0,0,0,0,25638,26861,1499680004214,1499680004214,NULL,NULL),(100003,25600980,'testj15','ahahahaha','',0,0,0,0,25638,26861,1499775284922,1499775284922,NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitationCode`
--

DROP TABLE IF EXISTS `invitationCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitationCode` (
  `code` varchar(10) NOT NULL COMMENT '验证码',
  `creator` int(11) NOT NULL COMMENT '创建人uid',
  `create_date` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `consumer` int(11) DEFAULT NULL COMMENT '消费人uid',
  `consume_date` bigint(20) DEFAULT '0' COMMENT '消费时间',
  `is_consume` tinyint(1) DEFAULT '0' COMMENT '是否消费',
  UNIQUE KEY `invitationCode_code_uindex` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitationCode`
--

LOCK TABLES `invitationCode` WRITE;
/*!40000 ALTER TABLE `invitationCode` DISABLE KEYS */;
INSERT INTO `invitationCode` (`code`, `creator`, `create_date`, `consumer`, `consume_date`, `is_consume`) VALUES ('000000',1,0,1,0,1),('000001',1,0,1,0,1),('4MSIH3',10000,1498819312631,NULL,0,0),('6RP9OY',10000,1498223383330,NULL,0,0),('7WIIBJ',10000,1498223376067,NULL,0,0),('8N6XGT',10000,1498223362098,NULL,0,0),('B7D56O',2562529,1499679892464,NULL,0,0),('BNYOH9',10000,1498819324191,25601240,1498828848699,0),('F8DLIL',2562529,1499679898458,NULL,0,0),('GAINS9',2562529,1499679903662,NULL,0,0),('LZX288',10000,1498223379532,NULL,0,0),('OPSZOB',10000,1498819319704,NULL,0,0),('PLT3OZ',10000,1498223386746,NULL,0,1),('PV74RV',2562529,1499679901057,NULL,0,0),('WT4VPJ',2562529,1499679895734,NULL,0,0);
/*!40000 ALTER TABLE `invitationCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipInfo`
--

DROP TABLE IF EXISTS `ipInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipInfo` (
  `ip` varchar(15) NOT NULL COMMENT 'ip地址',
  `ctrl` varchar(20) NOT NULL COMMENT '操作方式',
  `lastmodify` bigint(20) NOT NULL COMMENT '最后操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipInfo`
--

LOCK TABLES `ipInfo` WRITE;
/*!40000 ALTER TABLE `ipInfo` DISABLE KEYS */;
INSERT INTO `ipInfo` (`ip`, `ctrl`, `lastmodify`) VALUES ('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('127.0.0.1','createAccount',1498815014241),('1','createAccount',1499775284916);
/*!40000 ALTER TABLE `ipInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysConfig`
--

DROP TABLE IF EXISTS `sysConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysConfig` (
  `config_key` varchar(50) NOT NULL COMMENT '配置键',
  `config_content` text COMMENT '配置内容',
  `type` varchar(10) NOT NULL COMMENT '类型(string、number or object...)',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  UNIQUE KEY `sysConfig_key_uindex` (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysConfig`
--

LOCK TABLES `sysConfig` WRITE;
/*!40000 ALTER TABLE `sysConfig` DISABLE KEYS */;
INSERT INTO `sysConfig` (`config_key`, `config_content`, `type`, `remark`) VALUES ('allowance_per_article','{\"amount\":0,\"asset_id\":0}','Object','每文最低收入（不参与分成收入）'),('apiServer','ws://demo.yoyow.org:8590','String','api服务器地址'),('buyout_percent','10000','Number','买断价比例'),('erc20byuid','232124520','String','etc20支付网关uid'),('invitation_count','5','Number','邀请码每天限制数量'),('ipDue','30000','Number','ip 多少时间范围内不得操作 单位ms'),('max_share_per_article','{\"amount\":0,\"asset_id\":0}','Object','每文最高分成金额'),('max_share_total','{\"amount\":0,\"asset_id\":0}','Object','账户最高分成金额'),('post_need_code','true','Boolean','开启发帖权是否需要激活码'),('referrer','25997','Number','引荐人uid'),('referrer_percent','0','Number','引荐人分成比例'),('registrar','206336051','Number','注册商uid'),('registrar_key','5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS','String','注册商私钥'),('registrar_memo_key','5KGpVB6FPn1Knywc55fJz3835bYB5VvYhAq8qbvKquUgCM3n4WS','String','注册商备注私钥'),('registrar_percent','0','Number','注册商分成比例'),('seed_end','999999','Number','种子区间结束'),('seed_hold','[821001,999999]','Array','种子保留'),('seed_start','821001','Number','种子区间开始'),('voting_account','175','Number','代理选举账号 uid');
/*!40000 ALTER TABLE `sysConfig` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-17 22:35:54
