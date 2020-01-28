NAMA	: HENDY
NIM		: 20170801143

File-file .sql yang terdapat di directory ini dapat dijalankan secara
berurutan sesuai dengan nomor urut yang terdapat di sebelah kanan nama
file sql.

Untuk melakukan inserting data terhadap customer dapat dilakukan seperti
biasa dengan menggunakan DML 'Insert Into' tanpa mengisi field id_customer

Untuk melakukan inserting data terhadap transaksi dapat dilakukan
menggunakan pemanggilan prosedur yang telah dibuat dengan cara mengetikan 
perintah:
CALL INSERT_INTO_transaksi(<Field_Tanggal>,<Field_Keterangan>,<Field_Id_Customer>);

Contoh penginsertan data dapat dilihat di file bernomor urut 6