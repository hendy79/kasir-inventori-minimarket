CREATE DATABASE 20170801143_db_uas;
USE 20170801143_db_uas;

CREATE TABLE customer(
	id_customer CHAR(20) PRIMARY KEY NOT NULL,
	nama VARCHAR(250) NOT NULL,
	tanggal_lahir DATETIME NOT NULL);

CREATE TABLE transaksi(
	id_transaksi CHAR(15) PRIMARY KEY NOT NULL,
	tanggal DATETIME NOT NULL,
	keterangan TEXT NULL,
	id_customer CHAR(20) NOT NULL,
	FOREIGN KEY (id_customer) REFERENCES customer (id_customer));