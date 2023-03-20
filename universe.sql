--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    galaxy_types character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    moon_types character varying(40),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    planet_types character varying(40),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: public; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.public (
    name character varying(40),
    int_1 integer DEFAULT 0 NOT NULL,
    int_2 integer DEFAULT 1 NOT NULL,
    public_id integer NOT NULL
);


ALTER TABLE public.public OWNER TO freecodecamp;

--
-- Name: public_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.public_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.public_id_seq OWNER TO freecodecamp;

--
-- Name: public_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.public_id_seq OWNED BY public.public.public_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    star_types character varying(40),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: public public_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.public ALTER COLUMN public_id SET DEFAULT nextval('public.public_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'TC1', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS1');
INSERT INTO public.galaxy VALUES (2, 'TC2', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS2');
INSERT INTO public.galaxy VALUES (3, 'TC3', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS3');
INSERT INTO public.galaxy VALUES (4, 'TC4', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS4');
INSERT INTO public.galaxy VALUES (5, 'TC5', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS5');
INSERT INTO public.galaxy VALUES (6, 'TC6', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'TC1', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS1', 1);
INSERT INTO public.moon VALUES (2, 'TC2', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS2', 2);
INSERT INTO public.moon VALUES (3, 'TC3', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS3', 3);
INSERT INTO public.moon VALUES (4, 'TC4', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS4', 4);
INSERT INTO public.moon VALUES (5, 'TC5', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS5', 5);
INSERT INTO public.moon VALUES (6, 'TC6', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS6', 6);
INSERT INTO public.moon VALUES (7, 'TC7', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS7', 7);
INSERT INTO public.moon VALUES (8, 'TC8', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS8', 8);
INSERT INTO public.moon VALUES (9, 'TC9', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS9', 9);
INSERT INTO public.moon VALUES (10, 'TC10', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS10', 10);
INSERT INTO public.moon VALUES (11, 'TC11', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS11', 11);
INSERT INTO public.moon VALUES (12, 'TC12', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS12', 12);
INSERT INTO public.moon VALUES (13, 'TC13', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS13', 1);
INSERT INTO public.moon VALUES (14, 'TC14', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS14', 2);
INSERT INTO public.moon VALUES (15, 'TC15', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS15', 3);
INSERT INTO public.moon VALUES (16, 'TC16', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS16', 4);
INSERT INTO public.moon VALUES (17, 'TC17', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS17', 5);
INSERT INTO public.moon VALUES (18, 'TC18', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS18', 6);
INSERT INTO public.moon VALUES (19, 'TC19', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS19', 7);
INSERT INTO public.moon VALUES (20, 'TC20', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS20', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'TC1', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS1', 1);
INSERT INTO public.planet VALUES (2, 'TC2', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS2', 2);
INSERT INTO public.planet VALUES (3, 'TC3', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS3', 3);
INSERT INTO public.planet VALUES (4, 'TC4', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS4', 4);
INSERT INTO public.planet VALUES (5, 'TC5', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS5', 5);
INSERT INTO public.planet VALUES (6, 'TC6', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS6', 6);
INSERT INTO public.planet VALUES (7, 'TC7', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS7', 1);
INSERT INTO public.planet VALUES (8, 'TC8', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS8', 2);
INSERT INTO public.planet VALUES (9, 'TC9', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS9', 3);
INSERT INTO public.planet VALUES (10, 'TC10', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS10', 4);
INSERT INTO public.planet VALUES (11, 'TC11', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS11', 5);
INSERT INTO public.planet VALUES (12, 'TC12', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS12', 6);


--
-- Data for Name: public; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.public VALUES (NULL, 0, 1, 1);
INSERT INTO public.public VALUES (NULL, 0, 1, 2);
INSERT INTO public.public VALUES (NULL, 0, 1, 3);
INSERT INTO public.public VALUES ('TC1', 0, 1, 4);
INSERT INTO public.public VALUES ('TC2', 0, 1, 5);
INSERT INTO public.public VALUES ('TC3', 0, 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'TC1', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS1', 1);
INSERT INTO public.star VALUES (2, 'TC2', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS2', 2);
INSERT INTO public.star VALUES (3, 'TC3', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS3', 3);
INSERT INTO public.star VALUES (4, 'TC4', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS4', 4);
INSERT INTO public.star VALUES (5, 'TC5', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS5', 5);
INSERT INTO public.star VALUES (6, 'TC6', 1, 1, 'Lorem ipsum', true, true, 1.0, 'TS6', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: public_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.public_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_key UNIQUE (galaxy_types);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_types_key UNIQUE (moon_types);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: public public_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.public
    ADD CONSTRAINT public_name_key UNIQUE (name);


--
-- Name: public public_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.public
    ADD CONSTRAINT public_pkey PRIMARY KEY (public_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_types_key UNIQUE (star_types);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

