--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13
-- Dumped by pg_dump version 13.13

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

\connect universe

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
-- Name: description; Type: TABLE; Schema: public; Owner: rockyuser
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    note text,
    hal_life boolean
);


ALTER TABLE public.description OWNER TO rockyuser;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: rockyuser
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO rockyuser;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rockyuser
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: rockyuser
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    diameter_in_ly numeric NOT NULL,
    distance_in_ly numeric,
    notes text
);


ALTER TABLE public.galaxy OWNER TO rockyuser;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: rockyuser
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO rockyuser;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rockyuser
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: rockyuser
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    sidereal_period numeric,
    parent integer NOT NULL,
    discovery_year integer
);


ALTER TABLE public.moon OWNER TO rockyuser;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: rockyuser
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO rockyuser;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rockyuser
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: rockyuser
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    distance_from_sun integer,
    volume integer,
    near_star integer NOT NULL
);


ALTER TABLE public.planet OWNER TO rockyuser;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: rockyuser
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO rockyuser;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rockyuser
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: rockyuser
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    constellation character varying(30),
    designation character varying(30),
    galaxy_types integer NOT NULL,
    distance integer
);


ALTER TABLE public.star OWNER TO rockyuser;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: rockyuser
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO rockyuser;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rockyuser
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: rockyuser
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: rockyuser
--

INSERT INTO public.galaxy VALUES (3, 'andromeda', 220000, 2500000, 'andromeda is the closest big galaxy to the milky way and is expected to collide with the milky way arround 4.5 billion years from now the two. will eventually merge into a single new galaxy called milkdroneda.');
INSERT INTO public.galaxy VALUES (2, 'lmc', 14000, 158000, '-');
INSERT INTO public.galaxy VALUES (1, 'milky way', 100000, 0, 'the galaxy containing the sun and its solar system, and therefore earth.');
INSERT INTO public.galaxy VALUES (4, 'cigar galaxy', 37000, 11500000, 'also known as messier 99 or m99.');
INSERT INTO public.galaxy VALUES (5, 'pinwheel galaxy', 170000, 20870000, 'also known as 101 or m101.');
INSERT INTO public.galaxy VALUES (6, 'sombrero galaxy', 50000, 293500000, 'also known as messier object 104 or m104.');
INSERT INTO public.galaxy VALUES (7, 'whirlpool galaxy', 60000, 30000000, '-');
INSERT INTO public.galaxy VALUES (8, 'ngc 1300', 110000, 61000000, '-');
INSERT INTO public.galaxy VALUES (9, 'tadpole galaxy', 280000, 420000000, 'this shape resulted from tidal interaction that drew out a long tidal tail.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: rockyuser
--

INSERT INTO public.moon VALUES (1, 'moon', 27.321582, 3, 0);
INSERT INTO public.moon VALUES (2, 'phobos', 0.319, 4, 1877);
INSERT INTO public.moon VALUES (3, 'lo', 1.769, 5, 1610);
INSERT INTO public.moon VALUES (4, 'europa', 3.551, 5, 1610);
INSERT INTO public.moon VALUES (5, 'ganymede', 7.155, 5, 1610);
INSERT INTO public.moon VALUES (6, 'callisto', 16.69, 5, 1610);
INSERT INTO public.moon VALUES (7, 'amalthea', 0.498, 5, 1892);
INSERT INTO public.moon VALUES (8, 'himalia', 250.56, 5, 1908);
INSERT INTO public.moon VALUES (9, 'mimas', 0.942, 6, 1789);
INSERT INTO public.moon VALUES (10, 'enceladus', 1.370, 6, 1789);
INSERT INTO public.moon VALUES (11, 'tethys', 1.888, 6, 1684);
INSERT INTO public.moon VALUES (12, 'dione', 2.737, 6, 1684);
INSERT INTO public.moon VALUES (13, 'rhea', 4.518, 6, 1672);
INSERT INTO public.moon VALUES (14, 'titan', 15.95, 6, 1655);
INSERT INTO public.moon VALUES (15, 'ariel', 2.520, 7, 1851);
INSERT INTO public.moon VALUES (16, 'umbriel', 4.144, 7, 1851);
INSERT INTO public.moon VALUES (17, 'titania', 8.706, 7, 1787);
INSERT INTO public.moon VALUES (18, 'oberon', 13.46, 7, 1787);
INSERT INTO public.moon VALUES (19, 'triton', 5.877, 8, 1846);
INSERT INTO public.moon VALUES (20, 'nereid', 360.14, 8, 1949);
INSERT INTO public.moon VALUES (21, 'galatea', 0.429, 8, 1989);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: rockyuser
--

INSERT INTO public.planet VALUES (3, 'earth', 149597890, 10830, 3);
INSERT INTO public.planet VALUES (2, 'venus', 108208930, 928, 7);
INSERT INTO public.planet VALUES (5, 'jupiter', 778412010, 11431, 1);
INSERT INTO public.planet VALUES (4, 'mars', 227936640, 16318, 4);
INSERT INTO public.planet VALUES (1, 'mercury', 57909175, 6083, 2);
INSERT INTO public.planet VALUES (6, 'saturn', 1426725400, 8270, 4);
INSERT INTO public.planet VALUES (7, 'uranus', 28709722, 6254, 2);
INSERT INTO public.planet VALUES (8, 'neptune', 44982529, 6834, 1);
INSERT INTO public.planet VALUES (9, 'ceres', 4137000, 421, 6);
INSERT INTO public.planet VALUES (10, 'pluto', 590638000, 699, 1);
INSERT INTO public.planet VALUES (11, 'haumea', 648400000, 198, 1);
INSERT INTO public.planet VALUES (12, 'makemake', 685000000, 17, 2);
INSERT INTO public.planet VALUES (13, 'eris', 1021000000, 659, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: rockyuser
--

INSERT INTO public.star VALUES (1, 'lynx', 'xo-5', 3, 97);
INSERT INTO public.star VALUES (2, 'eridanus', 'achernar', 5, 199);
INSERT INTO public.star VALUES (3, 'cancer', 'acubens', 1, 355);
INSERT INTO public.star VALUES (4, 'leo', 'adhafera', 1, 101);
INSERT INTO public.star VALUES (5, 'taurus', 'ain', 1, 174);
INSERT INTO public.star VALUES (6, 'cepheus', 'alfrik', 2, 692);
INSERT INTO public.star VALUES (7, 'gemini', 'alhena', 1, 84);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rockyuser
--

SELECT pg_catalog.setval('public.description_description_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rockyuser
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rockyuser
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rockyuser
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rockyuser
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constellation_key; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_key UNIQUE (constellation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (parent) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (near_star) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: rockyuser
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_types) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

