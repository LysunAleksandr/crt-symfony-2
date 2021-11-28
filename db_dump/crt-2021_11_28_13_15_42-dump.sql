--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS crt;
--
-- Name: crt; Type: DATABASE; Schema: -; Owner: dbuser
--

CREATE DATABASE crt WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE crt OWNER TO dbuser;

\connect crt

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: animal_classes; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE public.animal_classes (
    id integer NOT NULL,
    name text NOT NULL,
    can_flying boolean DEFAULT false
);


ALTER TABLE public.animal_classes OWNER TO dbuser;

--
-- Name: COLUMN animal_classes.id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animal_classes.id IS 'ID - уникальный идентификатор записи';


--
-- Name: COLUMN animal_classes.name; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animal_classes.name IS 'название класса животных ';


--
-- Name: COLUMN animal_classes.can_flying; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animal_classes.can_flying IS 'признак — бывают ли среди них те, кто может летать';


--
-- Name: animal_classes_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE public.animal_classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_classes_id_seq OWNER TO dbuser;

--
-- Name: animal_classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE public.animal_classes_id_seq OWNED BY public.animal_classes.id;


--
-- Name: animals; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE public.animals (
    id integer NOT NULL,
    name text NOT NULL,
    can_flying boolean DEFAULT false,
    legs_count integer,
    class_id integer NOT NULL
);


ALTER TABLE public.animals OWNER TO dbuser;

--
-- Name: COLUMN animals.id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animals.id IS 'ID - уникальный идентификатор записи';


--
-- Name: COLUMN animals.name; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animals.name IS 'название животного';


--
-- Name: COLUMN animals.can_flying; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animals.can_flying IS 'признак — умеют ли летать';


--
-- Name: COLUMN animals.legs_count; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animals.legs_count IS 'количество лап';


--
-- Name: COLUMN animals.class_id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.animals.class_id IS 'ID класса животного';


--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE public.animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_id_seq OWNER TO dbuser;

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE public.animals_id_seq OWNED BY public.animals.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    founded_at date,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO dbuser;

--
-- Name: COLUMN cities.id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.cities.id IS 'ID - уникальный идентификатор записи';


--
-- Name: COLUMN cities.name; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.cities.name IS 'название города';


--
-- Name: COLUMN cities.founded_at; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.cities.founded_at IS 'дата основания города';


--
-- Name: COLUMN cities.country_id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.cities.country_id IS 'ID страны, в которой находится этот город';


--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO dbuser;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name text NOT NULL,
    code character varying(3) NOT NULL
);


ALTER TABLE public.countries OWNER TO dbuser;

--
-- Name: COLUMN countries.id; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.countries.id IS 'ID - уникальный идентификатор записи';


--
-- Name: COLUMN countries.name; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.countries.name IS 'название страны';


--
-- Name: COLUMN countries.code; Type: COMMENT; Schema: public; Owner: dbuser
--

COMMENT ON COLUMN public.countries.code IS 'символьный код страны';


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO dbuser;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: animal_classes id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.animal_classes ALTER COLUMN id SET DEFAULT nextval('public.animal_classes_id_seq'::regclass);


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.animals ALTER COLUMN id SET DEFAULT nextval('public.animals_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Data for Name: animal_classes; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY public.animal_classes (id, name, can_flying) FROM stdin;
1	Mammals	f
2	Birds	t
3	Amhibians	f
\.


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY public.animals (id, name, can_flying, legs_count, class_id) FROM stdin;
1	monkey	f	4	1
2	zebra	f	4	1
3	sparrow	t	4	2
4	flamingo	t	4	2
5	Frog	f	4	3
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY public.cities (id, name, founded_at, country_id) FROM stdin;
1	Kurgan	1679-07-29	1
2	Moscow	1147-04-11	1
3	New York	1624-03-02	3
4	Berlin	1237-04-06	2
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY public.countries (id, name, code) FROM stdin;
1	RUSSIA	RUS
2	Germany	GER
3	USA	USA
\.


--
-- Name: animal_classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('public.animal_classes_id_seq', 3, true);


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('public.animals_id_seq', 5, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('public.cities_id_seq', 4, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('public.countries_id_seq', 3, true);


--
-- Name: animal_classes animal_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.animal_classes
    ADD CONSTRAINT animal_classes_pkey PRIMARY KEY (id);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

