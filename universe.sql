--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(20)
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    number_planets numeric
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
    name character varying(30) NOT NULL,
    description text,
    distance_from_planet integer,
    has_been_visited boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    size integer,
    type character varying(30),
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    color character varying(20),
    galaxy_id integer
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
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'etzin', 'green');
INSERT INTO public.aliens VALUES (2, 'bilu', 'blue');
INSERT INTO public.aliens VALUES (3, 'guardian', 'yellow');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 'very big', 890, 8);
INSERT INTO public.galaxy VALUES (2, 'other', 'very big', 890, 8);
INSERT INTO public.galaxy VALUES (3, 'psql', 'very big', 890, 8);
INSERT INTO public.galaxy VALUES (4, 'fcc', 'very big', 890, 8);
INSERT INTO public.galaxy VALUES (5, 'reset', 'very big', 890, 8);
INSERT INTO public.galaxy VALUES (6, 'fkey', 'very big', 890, 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'malu', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (2, 'theo', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (3, 'laika', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (4, 'bob', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (5, 'chiro', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (6, 'curo', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (7, 'caramelo', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (8, 'pitucha', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (9, 'luke', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (10, 'duke', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (11, 'gato', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (12, 'thor', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (13, 'loki', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (14, 'art', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (15, 'seis', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (16, 'thunder', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (17, 'players', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (18, 'fleetwood', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (19, 'mac', 'very small', 234, true, 8);
INSERT INTO public.moon VALUES (20, 'dreams', 'very small', 234, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terra', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (2, 'mars', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (3, 'mercurio', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (4, 'jupiter', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (5, 'plutao', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (6, 'venus', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (7, 'afrodite', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (8, 'urano', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (9, 'earth', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (10, 'saturno', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (11, 'saturday', 'very planet', 432, 'water', 3);
INSERT INTO public.planet VALUES (12, 'monday', 'very planet', 432, 'water', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lua', 'very pretty', true, 'grey', 1);
INSERT INTO public.star VALUES (2, 'aries', 'very pretty', true, 'grey', 4);
INSERT INTO public.star VALUES (3, 'sagitario', 'very pretty', true, 'grey', 5);
INSERT INTO public.star VALUES (4, 'gemeos', 'very pretty', true, 'grey', 5);
INSERT INTO public.star VALUES (5, 'peixes', 'very pretty', true, 'grey', 5);
INSERT INTO public.star VALUES (6, 'aquario', 'very pretty', true, 'grey', 5);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: aliens name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

