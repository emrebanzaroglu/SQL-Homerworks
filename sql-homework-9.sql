A�a��daki sorgu senaryolar�n� dvdrental �rnek veri taban� �zerinden ger�ekle�tiriniz.

1) city tablosu ile country tablosunda bulunan �ehir (city) ve �lke (country) isimlerini birlikte g�rebilece�imiz INNER JOIN sorgusunu yaz�n�z.
2) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte g�rebilece�imiz INNER JOIN sorgusunu yaz�n�z.
3) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte g�rebilece�imiz INNER JOIN sorgusunu yaz�n�z.

1) SELECT city.city,country.country FROM city 
INNER JOIN country ON city.country_id = country.country_id;

2) SELECT payment.payment_id,customer.first_name,customer.last_name FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

3) SELECT rental.rental_id,customer.first_name,customer.last_name FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;
```
