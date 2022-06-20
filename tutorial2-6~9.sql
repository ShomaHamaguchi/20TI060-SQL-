CREATE TABLE weather (
    city            varchar(80),

    temp_lo         int,           -- 最低気温
    temp_hi         int,           -- 最高気温
    prcp            real,          -- 降水量
    date            date
);

CREATE TABLE cities (
    name            varchar(80),
    location        point
);

INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);
 
 -------ここから2-6以降を行う
 --結合
 SELECT *
    FROM weather, cities
    WHERE city = name;

SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather, cities
    WHERE cities.name = weather.city;

SELECT *
    FROM weather INNER JOIN cities ON (weather.city = cities.name);

SELECT *
    FROM weather LEFT OUTER JOIN cities ON (weather.city = cities.name);

--ここから2-7 集約関数
SELECT max(temp_lo) FROM weather;

SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city;

SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;

--ここから2-8 更新
UPDATE weather
    SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
    WHERE date > '1994-11-28';

--ここから2-9 削除
DELETE FROM weather WHERE city = 'Hayward';
SELECT * FROM weather;

--メモ
--このsqlファイルを同じデータベースで何回も実行すると、San Franciscoは削除しないので、
--そのデータベースでは、ひたすらに、San Franciscoのデータが増えていく。
--もし、San Franciscoをなくしたいのであれば、2-9のDELETEを使う。
--今回はこのことを発見できたため、あえて、San Franciscoを削除しないままにしておく。