--間違い  SELECT  country_id ,count(*) FROM city GROUP BY country_id  ORDER BY COUNT DESC HAVING COUNT >=20;

SELECT  country_id ,count(*) FROM city
GROUP BY country_id HAVING count(*) >= 20  ORDER BY COUNT DESC;