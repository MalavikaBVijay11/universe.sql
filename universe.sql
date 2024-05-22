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
    name character varying NOT NULL,
    galnum integer,
    uninum integer,
    gala numeric,
    axy text,
    state boolean
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
    name character varying NOT NULL,
    moon integer,
    noom integer,
    nummoon numeric,
    moonname text,
    status boolean,
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
    name character varying NOT NULL,
    pla integer,
    net integer,
    planetnum numeric,
    planetname text,
    state boolean,
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
    name character varying NOT NULL,
    stnum integer,
    arnum integer,
    numstar numeric,
    starname text,
    status boolean,
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying NOT NULL,
    sooryannum integer,
    sunnum integer,
    sooryan numeric,
    sun text,
    state boolean
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 2, 3, 2.3, 'milkyway', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 3, 4, 3.4, 'Andromeda', true);
INSERT INTO public.galaxy VALUES (3, 'sombrero', 4, 5, 4.5, 'Sombrero', true);
INSERT INTO public.galaxy VALUES (4, 'cigar', 5, 6, 5.6, 'Cigar', true);
INSERT INTO public.galaxy VALUES (5, 'cartwheel', 6, 7, 6.7, 'Cartwheel', true);
INSERT INTO public.galaxy VALUES (6, 'whirlpool', 7, 8, 7.8, 'Whirlpool', true);
INSERT INTO public.galaxy VALUES (7, 'rogue ', 7, 4, 7.4, 'Rogue ', false);
INSERT INTO public.galaxy VALUES (8, 'diamond', 4, 8, 4.8, 'Diamond', false);
INSERT INTO public.galaxy VALUES (9, 'ocean', 9, 6, 9.6, 'Ocean', false);
INSERT INTO public.galaxy VALUES (10, 'super', 2, 7, 2.7, 'Super', false);
INSERT INTO public.galaxy VALUES (11, 'low', 1, 8, 1.8, 'Low', false);
INSERT INTO public.galaxy VALUES (12, 'high', 1, 5, 1.5, 'High', false);
INSERT INTO public.galaxy VALUES (13, 'xxx ', 7, 14, 7.14, 'XXX ', false);
INSERT INTO public.galaxy VALUES (14, 'yyy', 4, 18, 4.18, 'YYY', false);
INSERT INTO public.galaxy VALUES (15, 'zzz', 9, 16, 9.16, 'ZZZ', false);
INSERT INTO public.galaxy VALUES (16, 'aaa', 2, 17, 2.17, 'AAA', false);
INSERT INTO public.galaxy VALUES (17, 'bbb', 1, 18, 1.18, 'BBB', false);
INSERT INTO public.galaxy VALUES (18, 'ccc', 1, 15, 1.15, 'CCC', false);
INSERT INTO public.galaxy VALUES (19, 'ddd ', 7, 14, 7.14, 'DDD', false);
INSERT INTO public.galaxy VALUES (20, 'eee', 4, 18, 4.18, 'EEE', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'malu', 1, 2, 1.2, 'abc', true, 1);
INSERT INTO public.moon VALUES (2, 'vish', 2, 3, 2.3, 'lub', true, 2);
INSERT INTO public.moon VALUES (3, 'achu', 3, 4, 3.4, 'jdf', true, 3);
INSERT INTO public.moon VALUES (4, 'blessly', 4, 5, 4.5, 'sjd', true, 4);
INSERT INTO public.moon VALUES (5, 'boney', 5, 6, 5.6, 'dbs', true, 5);
INSERT INTO public.moon VALUES (6, 'daison', 6, 7, 6.7, 'dwd', true, 6);
INSERT INTO public.moon VALUES (7, 'rooney', 7, 8, 7.8, 'esw', true, 7);
INSERT INTO public.moon VALUES (8, 'bella', 8, 9, 8.9, 'wjw', true, 8);
INSERT INTO public.moon VALUES (9, 'jenny', 8, 9, 8.9, 'fgk', true, 9);
INSERT INTO public.moon VALUES (10, 'tinku', 1, 9, 1.9, 'jii', true, 10);
INSERT INTO public.moon VALUES (11, 'rinku', 1, 6, 1.6, 'kjo', true, 11);
INSERT INTO public.moon VALUES (12, 'teddy', 1, 7, 1.7, 'odc', true, 12);
INSERT INTO public.moon VALUES (14, 'vish', 2, 3, 2.3, 'dew', false, 14);
INSERT INTO public.moon VALUES (15, 'achu', 3, 4, 3.4, 'dwj', false, 15);
INSERT INTO public.moon VALUES (16, 'blessly', 4, 5, 4.5, 'ppo', false, 16);
INSERT INTO public.moon VALUES (17, 'boney', 5, 6, 5.6, 'klc', false, 17);
INSERT INTO public.moon VALUES (18, 'daison', 6, 7, 6.7, 'mki', false, 18);
INSERT INTO public.moon VALUES (19, 'rooney', 7, 8, 7.8, 'axc', false, 19);
INSERT INTO public.moon VALUES (20, 'bella', 8, 9, 8.9, 'ytr', false, 20);
INSERT INTO public.moon VALUES (13, 'malu', 1, 2, 1.2, 'sdh', false, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'malu', 1, 2, 1.2, 'earth', true, 1);
INSERT INTO public.planet VALUES (2, 'vish', 2, 3, 2.3, 'venus', true, 2);
INSERT INTO public.planet VALUES (3, 'achu', 3, 4, 3.4, 'pluto', true, 3);
INSERT INTO public.planet VALUES (4, 'blessly', 4, 5, 4.5, 'saturn', true, 4);
INSERT INTO public.planet VALUES (5, 'boney', 5, 6, 5.6, 'uranus', true, 5);
INSERT INTO public.planet VALUES (6, 'daison', 6, 7, 6.7, 'jupiter', true, 6);
INSERT INTO public.planet VALUES (7, 'rooney', 7, 8, 7.8, 'neptune', true, 7);
INSERT INTO public.planet VALUES (8, 'bella', 8, 9, 8.9, 'mars', true, 8);
INSERT INTO public.planet VALUES (9, 'jenny', 8, 9, 8.9, 'mercury', true, 9);
INSERT INTO public.planet VALUES (10, 'tinku', 1, 9, 1.9, 'kepler', true, 10);
INSERT INTO public.planet VALUES (11, 'rinku', 1, 6, 1.6, 'gliese', true, 11);
INSERT INTO public.planet VALUES (12, 'teddy', 1, 7, 1.7, 'proxima', true, 12);
INSERT INTO public.planet VALUES (13, 'keerthi', 1, 12, 1.12, 'earth', false, 13);
INSERT INTO public.planet VALUES (14, 'veena', 2, 13, 2.13, 'venus', false, 14);
INSERT INTO public.planet VALUES (15, 'lachu', 3, 14, 3.14, 'pluto', false, 15);
INSERT INTO public.planet VALUES (16, 'sharon', 4, 15, 4.15, 'saturn', false, 16);
INSERT INTO public.planet VALUES (17, 'brad', 5, 16, 5.16, 'uranus', false, 17);
INSERT INTO public.planet VALUES (18, 'dyson', 6, 17, 6.17, 'jupiter', false, 18);
INSERT INTO public.planet VALUES (19, 'richu', 7, 18, 7.18, 'neptune', false, 19);
INSERT INTO public.planet VALUES (20, 'jack', 8, 19, 8.19, 'mars', false, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'milky', 1, 2, 1.2, 'Anna', true, 1);
INSERT INTO public.star VALUES (2, 'andromeda', 2, 3, 2.3, 'Bashi', true, 2);
INSERT INTO public.star VALUES (3, 'sombrero', 3, 4, 3.4, 'Charlie', true, 3);
INSERT INTO public.star VALUES (4, 'cigar', 4, 5, 4.5, 'David', true, 4);
INSERT INTO public.star VALUES (5, 'cartwheel', 5, 6, 5.6, 'Elza', true, 5);
INSERT INTO public.star VALUES (6, 'whirlpool', 6, 7, 6.7, 'Frad', true, 6);
INSERT INTO public.star VALUES (7, 'abc', 7, 2, 7.2, 'Ted', false, 7);
INSERT INTO public.star VALUES (8, 'def', 2, 8, 2.8, 'Dev', false, 8);
INSERT INTO public.star VALUES (9, 'ghi', 9, 4, 9.4, 'Nish', false, 9);
INSERT INTO public.star VALUES (10, 'jkl', 6, 5, 6.5, 'Nick', false, 10);
INSERT INTO public.star VALUES (11, 'mno', 3, 6, 3.6, 'John', false, 11);
INSERT INTO public.star VALUES (12, 'pqr', 4, 7, 4.7, 'Rose', false, 12);
INSERT INTO public.star VALUES (13, 'ab', 7, 2, 7.2, 'Rick', false, 13);
INSERT INTO public.star VALUES (14, 'cd', 2, 8, 2.8, 'Manu', false, 14);
INSERT INTO public.star VALUES (15, 'ef', 9, 4, 9.4, 'Neena', false, 15);
INSERT INTO public.star VALUES (16, 'gh', 6, 5, 6.5, 'Shine', false, 16);
INSERT INTO public.star VALUES (17, 'ij', 3, 6, 3.6, 'Joy', false, 17);
INSERT INTO public.star VALUES (18, 'kl', 4, 7, 4.7, 'Rani', false, 18);
INSERT INTO public.star VALUES (19, 'mn', 4, 7, 4.7, 'Raghu', false, 19);
INSERT INTO public.star VALUES (20, 'op', 4, 7, 4.7, 'Madhav', false, 20);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'solar', 1, 12, 1.12, 'sun1', true);
INSERT INTO public.sun VALUES (2, 'power', 2, 13, 2.13, 'sun2', true);
INSERT INTO public.sun VALUES (15, 'volt', 3, 14, 3.14, 'sun3', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 1, false);


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
-- Name: moon moon_moonname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moonname_key UNIQUE (moonname);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_starname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_starname_key UNIQUE (starname);


--
-- Name: star star_starname_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_starname_key1 UNIQUE (starname);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_key UNIQUE (sun);


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



