DELIMITER $$

USE `20170801143_db_uas`$$

DROP TRIGGER /*!50032 IF EXISTS */ `trigger_bfcust`$$

CREATE
    /*!50017 DEFINER = 'root'@'localhost' */
    TRIGGER `trigger_bfcust` BEFORE INSERT ON `customer` 
    FOR EACH ROW BEGIN
	DECLARE temp VARCHAR(16);
	DECLARE temp1 DATETIME;
	DECLARE yyyy VARCHAR(8);
	DECLARE mm VARCHAR(4);
	DECLARE dd VARCHAR(4);
	DECLARE v_id VARCHAR(20); 
	SET temp1 = new.tanggal_lahir;
	SET yyyy = (SELECT CONCAT('0000',YEAR(temp1)));
	SET mm = (SELECT CONCAT('00',MONTH(temp1)));
	SET dd = (SELECT CONCAT('00',DAY(temp1)));
	SET temp = (SELECT CONCAT('00000000',get_increment_id_cust(temp1)));
	SET v_id = (SELECT CONCAT('CUST',SUBSTRING(yyyy,LENGTH(yyyy)-3,4)
	,SUBSTRING(mm,LENGTH(mm)-1,2),SUBSTRING(dd,LENGTH(dd)-1,2),SUBSTRING(temp,LENGTH(temp)-7,8)));
	SET new.id_customer = v_id;
    END;
$$

DELIMITER ;