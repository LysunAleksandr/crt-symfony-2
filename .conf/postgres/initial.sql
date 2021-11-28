CREATE TABLE IF NOT EXISTS
    countries
    (
        id SERIAL PRIMARY KEY,
        name text NOT NULL,
        code varchar(3) NOT NULL
    );

comment on column countries.id is 'ID - уникальный идентификатор записи';
comment on column countries.name is 'название страны';
comment on column countries.code is 'символьный код страны';

CREATE TABLE IF NOT EXISTS
    cities
    (
        id SERIAL PRIMARY KEY,
        name varchar(255) NOT NULL,
        founded_at date,
        country_id int NOT NULL
    );
COMMENT ON COLUMN public.cities.id IS 'ID - уникальный идентификатор записи';
COMMENT ON COLUMN public.cities.name IS 'название города';
comment on column public.cities.founded_at is 'дата основания города';
COMMENT ON COLUMN public.cities.country_id IS 'ID страны, в которой находится этот город';

CREATE TABLE IF NOT EXISTS
    animal_classes
    (
        id SERIAL PRIMARY KEY,
        name text NOT NULL,
        can_flying boolean DEFAULT false
    );
COMMENT ON COLUMN public.animal_classes.id IS 'ID - уникальный идентификатор записи';
COMMENT ON COLUMN public.animal_classes.name IS 'название класса животных ';
COMMENT ON COLUMN public.animal_classes.can_flying IS 'признак — бывают ли среди них те, кто может летать';


CREATE TABLE IF NOT EXISTS
    animals
    (
        id SERIAL PRIMARY KEY,
        name text NOT NULL,
        can_flying boolean DEFAULT false,
        legs_count int,
        class_id int NOT NULL
    );

COMMENT ON COLUMN public.animals.id IS 'ID - уникальный идентификатор записи';
COMMENT ON COLUMN public.animals.name IS 'название животного';
COMMENT ON COLUMN public.animals.can_flying IS 'признак — умеют ли летать';
COMMENT ON COLUMN public.animals.legs_count IS 'количество лап';
COMMENT ON COLUMN public.animals.class_id IS 'ID класса животного';




INSERT INTO
    countries
    (name, code)
VALUES
    ('RUSSIA', 'RUS'),
    ('Germany', 'GER'),
    ('USA', 'USA');


INSERT INTO
    cities
    (name, founded_at, country_id)
VALUES
    ('Kurgan', '1679-07-29', 1),
    ('Moscow', '1147-04-11', 1),
    ('New York', '1624-03-02',3),
    ('Berlin', '1237-04-06', 2);


INSERT INTO
    animal_classes
    (name, can_flying)
VALUES
    ('Mammals', false),
    ('Birds', true),
    ('Amhibians', false);

INSERT INTO
    animals
    (name, can_flying, legs_count, class_id)
VALUES
    ('monkey', false, 4, 1),
    ('zebra', false, 4, 1),
    ('sparrow', true, 4, 2),
    ('flamingo', true, 4, 2),
    ('Frog', false, 4, 3);

