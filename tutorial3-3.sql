--3-3 外部キー　ここでも宣言するので、
CREATE TABLE cities (
        city     varchar(80) primary key, --ここが第2章での宣言とは違う
        location point
);

CREATE TABLE weather (
        city      varchar(80) references cities(city),
        temp_lo   int,
        temp_hi   int,
        prcp      real,
        date      date
);