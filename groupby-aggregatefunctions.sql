SELECT * FROM SALES
--aggregate functions(sum,min,max,avg,count)
--kullan�m �ekli olarak selectden sonra bunlardan istedi�ini yazars�n
--daha sonra parantez i�inde s�tun ad� verebilirsin
--sonra yan�na kendin bir isim verirsin �yle gelir
--en sona from tabload� gelir zaten

SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMF�YAT, 
MIN(PRICE) ENDUSUKF�YAT, AVG(PRICE) ORTALAMAF�YAT FROM SALES

--aggregate functions where ile birlikte kullan�m�
SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMF�YAT, 
MIN(PRICE) ENDUSUKF�YAT, AVG(PRICE) ORTALAMAF�YAT FROM SALES WHERE CITY='�STANBUL'

SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMF�YAT, 
MIN(PRICE) ENDUSUKF�YAT, AVG(PRICE) ORTALAMAF�YAT FROM SALES WHERE CITY='ANKARA'

--GROUP BY KULLANIMI �STENEN S�TUNLARI GRUPLAYARAK GET�R�R
--Ayn� de�ere sahip sat�rlar tek bir grup alt�nda toplan�r.
--Genelde SUM(), COUNT(), AVG(), MAX(), MIN() gibi toplama fonksiyonlar�yla birlikte kullan�l�r.
--SELECT i�inde GROUP BY�da kulland���n alanlar ya aggregate fonksiyon i�inde olmal� ya da do�rudan GROUP BY listesinde yer almal�.
--SELECT KOLON1,KOLON2.....AGGREGATELER VARSA WHERE EN SON GROUP BY KOLON1,KOLON2

SELECT CITY SEHIR ,SUM(TOTALPRICE) CIRO FROM SALES
GROUP BY CITY
--E�ER GROUP BY BURDA OLMASA CITY �EH�RDEN DOLAYI HATA ALIRDIK 
--��NK� YA AGG ���NDE OLACAK YA DA GROUP BY DEM��T�K
