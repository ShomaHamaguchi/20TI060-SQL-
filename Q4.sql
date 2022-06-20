--注意：コラムratingはchar型なので、WHERE句では、rating = PG　ではなく、rating = 'PG'と書く。
SELECT * FROM film
WHERE rating = 'PG'
OFFSET 0 LIMIT 5;