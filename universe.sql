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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
                               galaxy_id integer NOT NULL,
                               age integer,
                               distance_from_earth numeric(10,2),
                               description text NOT NULL,
                               name character varying(40) NOT NULL,
                               has_life boolean,
                               is_spherical boolean
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
                             age integer,
                             distance_from_earth numeric(10,2),
                             description text,
                             name character varying(40) NOT NULL,
                             has_life boolean,
                             is_spherical boolean,
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
                               age integer,
                               distance_from_earth numeric(10,2),
                               description text,
                               name character varying(40) NOT NULL,
                               has_life boolean,
                               is_spherical boolean,
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
                                  satellite_id integer NOT NULL,
                                  name character varying(60) NOT NULL,
                                  planet_id integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
                             star_id integer NOT NULL,
                             age integer,
                             distance_from_earth numeric(10,2),
                             description text,
                             name character varying(40) NOT NULL,
                             has_life boolean,
                             is_spherical boolean,
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 6000, 400000.54, 'starry', 'milky way', true, true);
INSERT INTO public.galaxy VALUES (2, 6000, 500000.54, 'dense', 'alpha-centauri', true, true);
INSERT INTO public.galaxy VALUES (3, 6000, 600000.54, 'sparse', 'milky path', true, true);
INSERT INTO public.galaxy VALUES (4, 6000, 400000.54, 'starry', 'milky way2', true, true);
INSERT INTO public.galaxy VALUES (5, 6000, 500000.54, 'dense', 'alpha-centauri2', true, true);
INSERT INTO public.galaxy VALUES (6, 6000, 600000.54, 'sparse', 'milky path2', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3000, 4000.64, 'gray', 'moon', true, true, 1);
INSERT INTO public.moon VALUES (2, 5000, 4000.64, 'black', 'lio', true, true, 8);
INSERT INTO public.moon VALUES (3, 8000, 4000.64, 'white', 'eli', true, true, 9);
INSERT INTO public.moon VALUES (4, 3000, 4000.64, 'gray', 'moon2', true, true, 10);
INSERT INTO public.moon VALUES (5, 5000, 4000.64, 'black', 'lio21', true, true, 11);
INSERT INTO public.moon VALUES (6, 8000, 4000.64, 'white', 'eli36', true, true, 12);
INSERT INTO public.moon VALUES (7, 3000, 4000.64, 'gray', 'moon23', true, true, 2);
INSERT INTO public.moon VALUES (8, 5000, 4000.64, 'black', 'lio22', true, true, 3);
INSERT INTO public.moon VALUES (9, 8000, 4000.64, 'white', 'eli35', true, true, 4);
INSERT INTO public.moon VALUES (10, 3000, 4000.64, 'gray', 'moon24', true, true, 5);
INSERT INTO public.moon VALUES (11, 5000, 4000.64, 'black', 'lio23', true, true, 6);
INSERT INTO public.moon VALUES (12, 8000, 4000.64, 'white', 'eli34', true, true, 7);
INSERT INTO public.moon VALUES (13, 3000, 4000.64, 'gray', 'moon25', true, true, 10);
INSERT INTO public.moon VALUES (14, 5000, 4000.64, 'black', 'lio24', true, true, 11);
INSERT INTO public.moon VALUES (15, 8000, 4000.64, 'white', 'eli33', true, true, 12);
INSERT INTO public.moon VALUES (16, 3000, 4000.64, 'gray', 'moon26', true, true, 1);
INSERT INTO public.moon VALUES (17, 5000, 4000.64, 'black', 'lio25', true, true, 2);
INSERT INTO public.moon VALUES (18, 8000, 4000.64, 'white', 'eli32', true, true, 3);
INSERT INTO public.moon VALUES (19, 3000, 4000.64, 'gray', 'moon27', true, true, 4);
INSERT INTO public.moon VALUES (20, 5000, 4000.64, 'black', 'lio26', true, true, 5);
INSERT INTO public.moon VALUES (21, 8000, 4000.64, 'white', 'eli31', true, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 3000, 0.00, 'green and blue', 'earth', true, true, 1);
INSERT INTO public.planet VALUES (2, 4000, 0.00, 'green and red', 'venus', false, true, 2);
INSERT INTO public.planet VALUES (3, 7000, 0.00, 'green and yellow', 'neptune', true, true, 3);
INSERT INTO public.planet VALUES (4, 3000, 0.00, 'green and blue', 'earth2', true, true, 4);
INSERT INTO public.planet VALUES (5, 4000, 0.00, 'green and red', 'venus2', false, true, 5);
INSERT INTO public.planet VALUES (6, 7000, 0.00, 'green and yellow', 'neptune2', true, true, 6);
INSERT INTO public.planet VALUES (7, 3000, 0.00, 'green and blue', 'earth3', true, true, 1);
INSERT INTO public.planet VALUES (8, 4000, 0.00, 'green and red', 'venus3', false, true, 2);
INSERT INTO public.planet VALUES (9, 7000, 0.00, 'green and yellow', 'neptune3', true, true, 3);
INSERT INTO public.planet VALUES (10, 3000, 0.00, 'green and blue', 'earth4', true, true, 4);
INSERT INTO public.planet VALUES (11, 4000, 0.00, 'green and red', 'venus4', false, true, 5);
INSERT INTO public.planet VALUES (12, 7000, 0.00, 'green and yellow', 'neptune4', true, true, 6);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Skulken-45', 2);
INSERT INTO public.satellite VALUES (2, 'Skulken-48', 3);
INSERT INTO public.satellite VALUES (3, 'Skulken-49', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 7000, 860000.64, 'yellow giant', 'sun', true, true, 1);
INSERT INTO public.star VALUES (2, 6000, 840000.64, 'yellow dwarf', 'star2', false, true, 2);
INSERT INTO public.star VALUES (3, 9000, 560000.64, 'white giant', 'sunstar3', true, false, 3);
INSERT INTO public.star VALUES (4, 7000, 860000.64, 'blue giant', 'sun2', true, true, 4);
INSERT INTO public.star VALUES (5, 6000, 840000.64, 'red dwarf', 'star3', true, false, 5);
INSERT INTO public.star VALUES (6, 9000, 560000.64, 'white supernova', 'sunstar4', true, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: satellite unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

