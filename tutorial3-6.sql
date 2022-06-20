--3-6 継承
CREATE TABLE capitals (
  name       text,
  population real,

  elevation  int,    -- （フィート単位）
  state      char(2)
);

CREATE TABLE non_capitals (
  name       text,
  population real,

  elevation  int     -- （フィート単位）
);

CREATE VIEW cities AS
  SELECT name, population, elevation FROM capitals
    UNION
  SELECT name, population, elevation FROM non_capitals;

  --よりよい解決法は次の構文
  CREATE TABLE cities (
  name       text,
  population real,

  elevation  int     -- （フィート単位）
);

CREATE TABLE capitals (
  state      char(2) UNIQUE NOT NULL
) INHERITS (cities);


SELECT name, elevation
  FROM cities
  WHERE elevation > 500;


  SELECT name, elevation
    FROM ONLY cities
    WHERE elevation > 500;