--Aþaðýdaki sorgu senaryolarýný dvdrental örnek veri tabaný üzerinden gerçekleþtiriniz.

--1) film tablosunda film uzunluðu length sütununda gösterilmektedir. Uzunluðu ortalama film uzunluðundan fazla kaç tane film vardýr?
--2) film tablosunda en yüksek rental_rate deðerine sahip kaç tane film vardýr?
--3) film tablosunda en düþük rental_rate ve en düþük replacement_cost deðerlerine sahip filmleri sýralayýnýz.
--4) payment tablosunda en fazla sayýda alýþveriþ yapan müþterileri(customer) sýralayýnýz.


1) SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film);

2) SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

3) SELECT title,rental_rate,replacement_cost FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = ( SELECT MIN(replacement_cost) FROM film );


4) SELECT COUNT(payment_id),(SELECT first_name FROM customer WHERE payment.customer_id=customer.customer_id) FROM payment 
GROUP BY customer_id 
ORDER BY COUNT(payment_id) DESC;

