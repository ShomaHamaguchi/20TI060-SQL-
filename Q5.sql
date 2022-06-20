--PGかGなのでWHERE句ではOR文を使った。
SELECT * FROM film
WHERE rating = 'PG' OR rating = 'G'
OFFSET 0 LIMIT 5;