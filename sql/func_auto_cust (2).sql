DELIMITER $$

USE `20170801143_db_uas`$$

DROP FUNCTION IF EXISTS `get_increment_id_cust`$$

CREATE DEFINER=`root`@`localhost` FUNCTION `get_increment_id_cust`(par1 DATETIME) RETURNS INT(11)
BEGIN
	DECLARE id INT;
	SET id = (
	SELECT IFNULL(
	MAX(CONVERT(RIGHT(id_customer,8), INT)),
	0) AS id FROM customer 
	WHERE DAY(tanggal_lahir)=DAY(par1) AND 
	MONTH(tanggal_lahir)=MONTH(par1) AND
	YEAR(tanggal_lahir)=YEAR(par1));
	RETURN id+1;
    END$$

DELIMITER ;