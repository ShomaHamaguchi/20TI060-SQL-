--集約関数のページを見るとよい。
--https://www.postgresql.jp/document/13/html/tutorial-agg.html
--SELECT  country_id ,count(*) FROM city GROUP BY country_id; これで各country_idでcityのカウントができた
--間違い  SELECT  country_id ,count(*) FROM cityGROUP BY country_id,city;

--cityテーブルには各country_idにいくつのcityがあるか？大きい順に並べよ。をすべて満たすのは、下のコード
SELECT  country_id ,count(*) FROM city
GROUP BY country_id
ORDER BY COUNT DESC;