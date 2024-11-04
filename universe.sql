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
-- Name: ballsacks; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ballsacks (
    ballsacks_id integer NOT NULL,
    name character varying(30),
    material text NOT NULL
);


ALTER TABLE public.ballsacks OWNER TO freecodecamp;

--
-- Name: ballsacks_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ballsacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ballsacks_id_seq OWNER TO freecodecamp;

--
-- Name: ballsacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ballsacks_id_seq OWNED BY public.ballsacks.ballsacks_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    inhabitants_in_billions integer,
    has_obi_wan boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    inhabitants integer,
    has_had_neil_armstrong_visit boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    inhabitants integer,
    gas_giant boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_billions_of_years numeric(3,1),
    classification text NOT NULL,
    hot_or_not boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: ballsacks ballsacks_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ballsacks ALTER COLUMN ballsacks_id SET DEFAULT nextval('public.ballsacks_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: ballsacks; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ballsacks VALUES (1, 'chaurs left nut', 'steel');
INSERT INTO public.ballsacks VALUES (2, 'chaurs right nut', 'steel');
INSERT INTO public.ballsacks VALUES (3, 'luffys right nut', 'rubber');
INSERT INTO public.ballsacks VALUES (4, 'luffys left nut', 'rubber');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Star Wars Galaxy', true, 100000000, true);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', false, 0, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', false, 0, false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', true, 696969, false);
INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', true, 8, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', false, 0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, false, 1);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, false, 2);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, false, 4);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, false, 10);
INSERT INTO public.moon VALUES (21, 'The Moon', NULL, NULL, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ilium', NULL, NULL, false, 4);
INSERT INTO public.planet VALUES (2, 'Mustafar', NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (7, 'Venus', NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (8, 'Mars', NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (9, 'Your Anus', NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (10, 'Neptune', NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (11, 'Earth', true, 8, false, 2);
INSERT INTO public.planet VALUES (12, 'Trisolaris', true, NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Tatooine Suns', NULL, 'Big boys', true, 3);
INSERT INTO public.star VALUES (2, 'The SUN', NULL, 'THE FUCKING GOAT', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', NULL, 'Trisolaran af', true, 1);
INSERT INTO public.star VALUES (4, 'Ilium sun', NULL, 'idk', true, 3);
INSERT INTO public.star VALUES (5, 'Bingus the III', NULL, 'Morbidly obese', true, 5);
INSERT INTO public.star VALUES (6, 'Mustafar sun', NULL, 'idk', true, 3);


--
-- Name: ballsacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ballsacks_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: ballsacks ballsacks_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ballsacks
    ADD CONSTRAINT ballsacks_pkey PRIMARY KEY (ballsacks_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: ballsacks unique_balls; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ballsacks
    ADD CONSTRAINT unique_balls UNIQUE (ballsacks_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


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

