--第3章は第2章と一部データを利用している。
--もし、cityテーブルやweatherテーブルがなかったら、
--第2章のページから、CREATE TABLEする

--3-1ははじめ

--3-2 ビュー
CREATE VIEW myview AS
    SELECT city, temp_lo, temp_hi, prcp, date, location
        FROM weather, cities
        WHERE city = name;

SELECT * FROM myview;

