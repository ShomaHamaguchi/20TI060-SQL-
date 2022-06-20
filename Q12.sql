--副問い合わせを利用。映画のタイトルは複数出てくるが、それは、出てくる映画のreplacement_costが同じだから
SELECT title FROM film 
WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film);

--以下はタイトルだけでなく、replacement_costも一緒に出力するコード メモとして残しておく
-- SELECT title,replacement_cost FROM film WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film);