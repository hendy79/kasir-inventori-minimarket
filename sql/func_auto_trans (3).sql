DELIMITER $$

USE `20170801143_db_uas`$$

DROP FUNCTION IF EXISTS `get_increment_id_trans`$$

CREATE DEFINER=`root`@`localhost` FUNCTION `get_increment_id_trans`(par1 DATETIME) RETURNS INT(11)
BEGIN
	DECLARE id INT;
	SET id = (
	SELECT IFNULL(
	MAX(CONVERT(RIGHT(id_transaksi,6), INT)),
	0) AS id FROM transaksi 
	WHERE DAY(tanggal)=DAY(par1) AND 
	MONTH(tanggal)=MONTH(par1) AND
	YEAR(tanggal)=YEAR(par1));
	RETURN id+1;
    END$$

DELIMITER ;