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
-- Name: bonus; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bonus (
    bonus_id integer NOT NULL,
    name character varying(40),
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_million_of_years integer,
    planet_types text,
    distance_from_earth numeric
);


ALTER TABLE public.bonus OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric,
    galaxy_types text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric,
    planet_types text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: bonus; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bonus VALUES (1, NULL, false, false, NULL, NULL, NULL);
INSERT INTO public.bonus VALUES (2, NULL, false, false, NULL, NULL, NULL);
INSERT INTO public.bonus VALUES (3, NULL, false, false, NULL, NULL, NULL);
INSERT INTO public.bonus VALUES (4, NULL, false, false, NULL, NULL, NULL);
INSERT INTO public.bonus VALUES (5, NULL, false, false, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', false, false, 10000, 'known as Messier 31 (M31), is a spiral galaxy located about 2.5 million light years away.', 2.537, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', false, false, 600, 'the two long tails of stars, gas and dust ejected from the galaxies as a result of the collision resemble an insects antennae', 45, 'Interacting');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', false, false, 1200, 'consist of stars, planets, and vast clouds of gas and dust, all bound together by gravity', 111, 'spiral arms');
INSERT INTO public.galaxy VALUES (4, 'Bear Paw Galaxy', false, false, 0, 'a blue compact dwarf galaxy in the constellation Lynx, located around 3 degrees NNW of 31 Lyncis.', 22, 'blue compact dwarfgalaxy');
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', false, false, 13280, 'relatively isolated spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices', 17.29, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', false, true, 13310, 'a grand design spiral galaxy about 12 million light-years away in the constellation Ursa Major', 11.74, 'spiral galaxy');
INSERT INTO public.galaxy VALUES (7, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, NULL, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, NULL, false, false, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, false, false, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, NULL, false, false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, false, false, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, NULL, false, false, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, NULL, false, false, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, NULL, false, false, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, NULL, false, false, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, NULL, false, false, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, NULL, false, false, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, NULL, false, false, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, NULL, false, false, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, NULL, false, false, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, NULL, false, false, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, NULL, false, false, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, NULL, false, false, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, NULL, false, false, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, NULL, false, false, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, NULL, false, false, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, NULL, false, false, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, NULL, false, false, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, false, false, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, false, false, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, NULL, false, false, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, NULL, false, false, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, NULL, false, false, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, NULL, false, false, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, NULL, false, false, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, NULL, false, false, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, NULL, false, false, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, NULL, false, false, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, NULL, false, false, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, NULL, false, false, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, NULL, false, false, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, NULL, false, false, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, NULL, false, false, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, NULL, false, false, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, NULL, false, false, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, NULL, false, false, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, NULL, false, false, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, NULL, false, false, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', false, false, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star_2', false, false, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star_3', false, false, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star_4', false, false, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star_5', false, false, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star_6', false, false, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, 'star_7', false, false, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, 'star_8', false, false, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, 'star_9', false, false, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, 'star_10', false, false, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, NULL, false, false, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, NULL, false, false, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, NULL, false, false, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, NULL, false, false, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, NULL, false, false, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, NULL, false, false, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, NULL, false, false, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, NULL, false, false, NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, NULL, false, false, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, NULL, false, false, NULL, NULL, NULL, 20);


--
-- Name: bonus bonus_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT bonus_name_key UNIQUE (name);


--
-- Name: bonus bonus_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT bonus_pkey PRIMARY KEY (bonus_id);


--
-- Name: galaxy galaxy_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_of_years_key UNIQUE (age_in_millions_of_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
