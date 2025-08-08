SELECT * FROM SALES
--aggregate functions(sum,min,max,avg,count)
--kullaným þekli olarak selectden sonra bunlardan istediðini yazarsýn
--daha sonra parantez içinde sütun adý verebilirsin
--sonra yanýna kendin bir isim verirsin öyle gelir
--en sona from tabloadý gelir zaten

SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMFÝYAT, 
MIN(PRICE) ENDUSUKFÝYAT, AVG(PRICE) ORTALAMAFÝYAT FROM SALES

--aggregate functions where ile birlikte kullanýmý
SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMFÝYAT, 
MIN(PRICE) ENDUSUKFÝYAT, AVG(PRICE) ORTALAMAFÝYAT FROM SALES WHERE CITY='ÝSTANBUL'

SELECT COUNT(*) SATIRSAYISI,SUM(TOTALPRICE) TOPLAMFÝYAT, 
MIN(PRICE) ENDUSUKFÝYAT, AVG(PRICE) ORTALAMAFÝYAT FROM SALES WHERE CITY='ANKARA'

--GROUP BY KULLANIMI ÝSTENEN SÜTUNLARI GRUPLAYARAK GETÝRÝR
--Ayný deðere sahip satýrlar tek bir grup altýnda toplanýr.
--Genelde SUM(), COUNT(), AVG(), MAX(), MIN() gibi toplama fonksiyonlarýyla birlikte kullanýlýr.
--SELECT içinde GROUP BY’da kullandýðýn alanlar ya aggregate fonksiyon içinde olmalý ya da doðrudan GROUP BY listesinde yer almalý.
--SELECT KOLON1,KOLON2.....AGGREGATELER VARSA WHERE EN SON GROUP BY KOLON1,KOLON2

SELECT CITY SEHIR ,SUM(TOTALPRICE) CIRO FROM SALES
GROUP BY CITY
--EÐER GROUP BY BURDA OLMASA CITY ÞEHÝRDEN DOLAYI HATA ALIRDIK 
--ÇÜNKÜ YA AGG ÝÇÝNDE OLACAK YA DA GROUP BY DEMÝÞTÝK
