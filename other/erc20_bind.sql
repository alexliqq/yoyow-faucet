# Host: localhost  (Version: 5.5.53)
# Date: 2017-09-13 01:06:02
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Procedure "BindETHtoUid"
#
DELIMITER $$

DROP PROCEDURE IF EXISTS `BindETHtoUid`$$
CREATE PROCEDURE `BindETHtoUid`(inuid varchar(100),out outeth varchar(100))
BEGIN
    DECLARE varid INTEGER DEFAULT 0;
    set outeth=NULL;
    select id,eth into @varid,outeth from erc20 where uid=inuid;
    if outeth is NULL then
        set @varid=0;
        START TRANSACTION;
            select id,eth into @varid,outeth from erc20 where uid is null order by id LIMIT 0,1 FOR UPDATE;
            update erc20 set uid=inuid,bindingtime=now() where id=@varid;
        COMMIT;
    end if;
    select outeth;
END$$
DELIMITER ;
