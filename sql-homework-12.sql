A�a��daki sorgu senaryolar�n� dvdrental �rnek veri taban� �zerinden ger�ekle�tiriniz.

1) film tablosunda film uzunlu�u length s�tununda g�sterilmektedir. Uzunlu�u ortalama film uzunlu�undan fazla ka� tane film vard�r?
2) film tablosunda en y�ksek rental_rate de�erine sahip ka� tane film vard�r?
3) film tablosunda en d���k rental_rate ve en d���k replacement_cost de�erlerine sahip filmleri s�ralay�n�z.
4) payment tablosunda en fazla say�da al��veri� yapan m��terileri(customer) s�ralay�n�z.


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
```
