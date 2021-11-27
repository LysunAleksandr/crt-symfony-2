# crt-symfony-2
# For Create DataBase
CREATE TABLE IF NOT EXISTS countries (
	id SERIAL PRIMARY KEY,
	name text,
	code varchar(3) NOT NULL
);

CREATE TABLE IF NOT EXISTS cities (
	id SERIAL PRIMARY KEY,
	name varchar(255) NOT NULL,
	founded_at timestamp,
	country_id int NOT NULL
);

CREATE TABLE IF NOT EXISTS animal_classes (
	id SERIAL PRIMARY KEY,
	name text NOT NULL,
	can_flying SMALLINT DEFAULT 0 CHECK (can_flying<=1 AND can_flying>=0)
);

CREATE TABLE IF NOT EXISTS animals (
	id SERIAL PRIMARY KEY,
	name text NOT NULL,
	can_flying SMALLINT DEFAULT 0 CHECK (can_flying<=1 AND can_flying>=0),
	legs_count int,
	class_id int NOT NULL
);


INSERT INTO countries (name, code)
VALUES ('RUSSIA', '001'), ('USA', '002');

INSERT INTO cities (name, founded_at, country_id)
VALUES ('Tyumen', '1586-07-29T00:00:00.0', '072'), ('Moscow', '1147-04-11T00:00:00.0', '777');

INSERT INTO animal_classes (name, can_flying)
VALUES ('Birds', 1), ('Dogs', 0);

INSERT INTO animals (name, can_flying, legs_count, class_id)
VALUES ('Sparrow', 0, 4, 1), ('Bulldog', 0, 4, 2);
