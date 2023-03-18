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
    name character varying NOT NULL,
    type text,
    can_be_seen boolean,
    size_in_km integer
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
    description text,
    distance_from_earth numeric,
    size integer,
    can_be_seen boolean,
    have_water boolean,
    earth_days integer,
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
    description text,
    distance_from_earth_in_km numeric,
    size_km integer,
    can_be_seen boolean,
    have_moons boolean,
    number_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: roman_god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.roman_god (
    roman_god_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.roman_god OWNER TO freecodecamp;

--
-- Name: roman_gods_roman_god_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.roman_gods_roman_god_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roman_gods_roman_god_id_seq OWNER TO freecodecamp;

--
-- Name: roman_gods_roman_god_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.roman_gods_roman_god_id_seq OWNED BY public.roman_god.roman_god_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    color text,
    size text
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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: roman_god roman_god_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.roman_god ALTER COLUMN roman_god_id SET DEFAULT nextval('public.roman_gods_roman_god_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Moon Goddess', 384400, 1740, true, false, 30, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars largest moon', 77790000, 22, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars smallest moon', 77790000, 6, false, false, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Titan', 'Saturn largest moon', 1200000000, 5149, false, true, 16, NULL);
INSERT INTO public.moon VALUES (5, 'Enceladus', 'Ocean Moon', 1272000000, 252, false, true, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 'Smallest Galilean Moon', 628300000, 3121, false, true, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Saturn smallest moon', 1272000000, 198, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Dione', 'Saturn 4th largest moon', 1272000000, 562, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Ganymede', 'Largest Moon in the Solar System', 628300000, 2634, false, true, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Saturn III', 1272000000, 1062, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Saturn 2nd largest moon', 1272000000, 1528, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Methone', 'Egg-shaped Moon', NULL, 3, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Calypso', 'Trojan Moon', NULL, 21, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Callisto', 'Jupiter 2nd largest moon', 628300000, 4821, false, true, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Phoebe', 'Irregular-sized Moon', NULL, 213, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Hyperion', 'Saturn VII', NULL, 270, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Telesto', 'Tethys Trojan', NULL, 25, false, true, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Lapetus', 'Saturn 24th Moon', NULL, 1469, false, true, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Io', 'Jupiter I', NULL, 3643, false, false, 2, NULL);
INSERT INTO public.moon VALUES (20, 'Cyllene', 'Jupiter XLVIII', NULL, 2, false, false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun', 54600000, 2440, false, false, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Brightest planet in the Solar System', 61000000, 12104, true, false, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'Densest Planet in the Solar System', NULL, 12756, true, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'The Red Planet', 54600000, 3390, true, true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet', 69911588000000, 69911, true, true, 92, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Second largest planet', 1599600000, 58232, true, true, 83, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the sun', 2600000000, 25362, true, true, 27, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The ninth planet from the sun', 4622100000, 24622, false, true, 14, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'The Dwarf Planet', 5050000000, 1188, false, true, 5, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'The Super Earth', NULL, 15290, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-69c', 'Exoplanet', NULL, 10894, false, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 'Closest Exoplanet from the Solar System', NULL, NULL, false, false, 0, NULL);


--
-- Data for Name: roman_god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.roman_god VALUES (1, 'Mercury', 1);
INSERT INTO public.roman_god VALUES (2, 'Venus', 2);
INSERT INTO public.roman_god VALUES (3, 'Earth', 3);
INSERT INTO public.roman_god VALUES (4, 'Mars', 4);
INSERT INTO public.roman_god VALUES (5, 'Jupiter', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Polaris', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Antares', 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 1, false);


--
-- Name: roman_gods_roman_god_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.roman_gods_roman_god_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: planet planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: roman_god roman_gods_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.roman_god
    ADD CONSTRAINT roman_gods_name_key UNIQUE (name);


--
-- Name: roman_god roman_gods_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.roman_god
    ADD CONSTRAINT roman_gods_pkey PRIMARY KEY (roman_god_id);


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
-- Name: roman_god roman_gods_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.roman_god
    ADD CONSTRAINT roman_gods_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

