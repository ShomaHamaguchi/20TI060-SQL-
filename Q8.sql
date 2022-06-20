--country_idを昇順に並べて、最初の10都市より、都市の数が１０個になるように抽出した。
SELECT * FROM city WHERE country_id<=10 ORDER BY country_id;