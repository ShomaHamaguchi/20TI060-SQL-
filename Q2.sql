--filmテーブルからfilm_id, titleの列を５行だけ抽出 下では0~4行目の５行分を抽出
SELECT film_id,title FROM film
OFFSET 0 LIMIT 5;