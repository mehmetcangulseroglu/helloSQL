--create..

--normalde tables sa� tik new table vs derdik kod ile create sayesinde olu�tururuz
--CREATE TABLE <TABLOADI> (KOLON1 T�P1,KOLON2 T�P2.....)

--CREATE TABLE CUSTOMERS(ID INT,TCNUMBER VARCHAR(15),....)

--NORMALDE MANUEL OLU�TURURKEN TABLOYU ID'YI OTOMAT�K ARTAN YAPIYORDUK BURDA NASIL YAPACAZ?
--IDENTITY(1,1) EKLE YANINA
--CREATE TABLE CUSTOMERS(ID INT IDENTITY(1,1),TCNUMBER VARCHAR(15),....)


--PRIMARY KEY DE OLSUN �STERSEN YANINA EKLERS�N PRIMAR KEY D�YE
--CREATE TABLE CUSTOMERS(ID INT IDENTITY(1,1) PRIMARY KEY,TCNUMBER VARCHAR(15),....)

--NORMALDE EL�NLE ALLOW NULLS KONTROL� YAPAB�L�RS�N E�ER KODDA YAPMAK �STERSEN YANINA NOT NULL EKLE
--CREATE TABLE CUSTOMERS(ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,TCNUMBER VARCHAR(15),....)
