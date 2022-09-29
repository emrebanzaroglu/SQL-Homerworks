--Aþaðýdaki sorgu senaryolarýný dvdrental örnek veri tabaný üzerinden gerçekleþtiriniz.

--1) film tablosunda bulunan rental_rate sütunundaki deðerlerin ortalamasý nedir?
--2) film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile baþlar?
--3) film tablosunda bulunan filmlerden rental_rate deðeri 0.99 a eþit olan en uzun (length) film kaç dakikadýr?
--4) film tablosunda bulunan filmlerin uzunluðu 150 dakikadan büyük olanlarýna ait kaç farklý replacement_cost deðeri vardýr?


1) SELECT AVG(rental_rate) FROM film;

2) SELECT COUNT(title) FROM film WHERE title LIKE 'C%';

3) SELECT MAX(length) FROM film WHERE rental_rate = 0.99;

4) SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150;
```
