/*untuk menggunakan fungsi auto increment di tabel customer dapat langsung insert data seperti biasa*/
INSERT INTO customer(nama,tanggal_lahir) VALUES
	('Andi Law','1999-01-03 00:00:00'),
	('Budi Guichia','1998-01-03 00:00:00'),
	('Cynthia','1999-01-03 00:00:00');

/*untuk menggunakan fungsi auto increment di tabel transaksi dapat insert data lewat prosedur yang sudah dibuat*/	
CALL INSERT_INTO_transaksi('2019-01-06 00:00:00','Beli Deterjen dan Minuman','CUST1998010300000001');
CALL INSERT_INTO_transaksi('2019-01-06 00:02:00','Beli Chiki','CUST1998010300000001');
CALL INSERT_INTO_transaksi('2019-01-07 00:00:00','Beli Pulsa','CUST1998010300000001');