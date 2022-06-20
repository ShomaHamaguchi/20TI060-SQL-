SELECT * FROM store 
INNER JOIN address ON store.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id;