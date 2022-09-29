--Aþaðýdaki sorgu senaryolarýný dvdrental örnek veri tabaný üzerinden gerçekleþtiriniz.

--1) film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklý deðerleri sýralayýnýz.
--2) film tablosunda bulunan replacement_cost sütununda birbirinden farklý kaç tane veri vardýr?
--3) film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile baþlar ve ayný zamanda rating 'G' ye eþittir?
--4) country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluþmaktadýr?
--5) city tablosundaki þehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?


1) SELECT DISTINCT replacement_cost FROM film;

2) SELECT COUNT(DISTINCT replacement_cost) FROM film;

3) SELECT  COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';

4) SELECT COUNT(*) FROM country WHERE country LIKE '_____';

5) SELECT COUNT(*) FROM city WHERE city ILIKE '%R'
```
