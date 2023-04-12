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
    name character varying(30) NOT NULL,
    description text,
    type_id integer NOT NULL,
    distance_from_earth_in_ly integer,
    apparent_magnitude numeric(4,2)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    type_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: galaxy_types_type_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_type_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_type_id_seq1 OWNER TO freecodecamp;

--
-- Name: galaxy_types_type_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_type_id_seq1 OWNED BY public.galaxy_types.type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    mean_radius_km numeric(9,2),
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
    name character varying NOT NULL,
    description text NOT NULL,
    type_id integer NOT NULL,
    orbital_period_in_days numeric(8,2),
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    type_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: planet_types_type_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_type_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_type_id_seq1 OWNER TO freecodecamp;

--
-- Name: planet_types_type_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_type_id_seq1 OWNED BY public.planet_types.type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    constellation text NOT NULL,
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_type_id_seq'::regclass);


--
-- Name: galaxy_types type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN type_id SET DEFAULT nextval('public.galaxy_types_type_id_seq1'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_type_id_seq'::regclass);


--
-- Name: planet_types type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN type_id SET DEFAULT nextval('public.planet_types_type_id_seq1'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Is the closest big galaxy to the Milky Way', 1, 3, 3.44);
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 'It appears to rotate backwards', 2, 200000000, 12.60);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'It has a spectacular dark band of absorbing dust', 1, 17300000, 8.52);
INSERT INTO public.galaxy VALUES (4, 'Bodes Galaxy', 'Named for Johann Elert Bode', 1, 12000000, 6.94);
INSERT INTO public.galaxy VALUES (5, 'Butterlfy Galaxies', 'Looks are similar to a butterfly', 1, 60000000, 10.90);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'Appears similar in shape to a cigar', 4, 12000000, 8.41);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth', 1, 28000, 20.20);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral Galaxies', 'Galaxies that are sorrounded by halos, mixtures of old stars, star clusters and dark matter', 1);
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical Galaxies', 'Have shapes that range from completely round to oval', 2);
INSERT INTO public.galaxy_types VALUES (3, 'Lenticular Galaxies', 'A cross between spirals and ellipticals', 3);
INSERT INTO public.galaxy_types VALUES (4, 'Irregular Galaxies', 'Have unusual shapes', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth only natural satellite', 1738.00, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars innermost satellite', 11267.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars outermost satellite', 6.20, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter innermost satellite', 1821.60, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'The smallest of the 4 Galilean Moons', 1560.80, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest and most massive of the Solar System moons', 2634.10, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'The second largest moon of Jupiter', 2410.30, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'The third closest orbit around Jupiter', 83.50, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 'The largest irregular stallite of Jupiter', 69.80, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 'A prograde irregular stallite of Jupiter', 43.00, 5);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 'A retrograde irregular stallite of Jupiter', 30.00, 5);
INSERT INTO public.moon VALUES (12, 'Sinope', 'A retrograde irregular stallite of Jupiter', 19.00, 5);
INSERT INTO public.moon VALUES (13, 'Lysithea', 'A prograde irregular stallite of Jupiter', 18.00, 5);
INSERT INTO public.moon VALUES (14, 'Carme', 'A retrograde irregular stallite of Jupiter', 23.00, 5);
INSERT INTO public.moon VALUES (15, 'Ananke', 'A retrograde irregular moon of Jupiter', 14.00, 5);
INSERT INTO public.moon VALUES (16, 'Leda', 'A prograde irregular stallite of Jupiter', 10.00, 5);
INSERT INTO public.moon VALUES (17, 'Thebe', 'The fourth of Jupiter moons by distance', 49.30, 5);
INSERT INTO public.moon VALUES (18, 'Adrastea', 'The second of Jupiter moons by distance', 8.20, 5);
INSERT INTO public.moon VALUES (19, 'Metis', 'The innermost known moon of Jupiter', 21.50, 5);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 'One of Jupiter outer natural satellites', 4.50, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our solar system', 1, 88.00, 1, false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 'Spins slowly in the opposite direction from most planets', 1, 583.92, 1, false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 'The only with geological activity', 1, 1.00, 1, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Smaller than Earth and Venus', 1, 686.98, 1, false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'More than twice as massive than other planets in our solar system', 4, 4333.00, 1, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Adorned with a complex system of icy rings', 4, 10759.00, 1, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Rotates at a nearly 90-degree angle from its orbit', 3, 30687.00, 1, false, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The most distant major planet orbiting the sun', 3, 60190.00, 1, false, true);
INSERT INTO public.planet VALUES (9, 'YZ Ceti b', 'A terrestrial exoplanet', 1, 2.00, 2, false, true);
INSERT INTO public.planet VALUES (10, 'YZ Ceti c', 'A Super Earth exoplanet', 2, 3.10, 2, false, true);
INSERT INTO public.planet VALUES (11, 'YZ Ceti d', 'A Super Earth exoplanet', 2, 4.70, 2, false, true);
INSERT INTO public.planet VALUES (12, 'Tau Ceti e', 'A Super Earth exoplanet', 2, 162.90, 3, false, true);
INSERT INTO public.planet VALUES (13, 'Tau Ceti f', 'A Super Earth exoplanet', 2, 620.93, 3, false, true);
INSERT INTO public.planet VALUES (14, 'Tau Ceti g', 'A Super Earth exoplanet', 2, 20.00, 3, false, true);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'A rocky world outside our solar system', 1);
INSERT INTO public.planet_types VALUES (2, 'Super-Earth', 'A potentially rocky world larger than Earth', 2);
INSERT INTO public.planet_types VALUES (3, 'Neptune-like', 'Gaseous worlds around the size of Neptune', 3);
INSERT INTO public.planet_types VALUES (4, 'Gas Giant', 'A giant planet composed mainly of gas', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our Sun', 'None', 7);
INSERT INTO public.star VALUES (2, 'YZ Ceti', 'A red dwarf in the constellation of Cetus', 'Cetus', 7);
INSERT INTO public.star VALUES (3, 'Tau Ceti', 'A single star in the constellation of Cetus', 'Cetus', 7);
INSERT INTO public.star VALUES (4, 'HD219134', 'Main sequence star in the constellation of Cassiopeia', 'Cassiopeia', 7);
INSERT INTO public.star VALUES (5, 'TRAPPIST-1', 'An Ultra-cool red dwarf in the constellation of Aquarius', 'Aquarius', 7);
INSERT INTO public.star VALUES (6, '55 Cancri', 'A binary star system in the constellation of Cancer', 'Cancer', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_type_id_seq', 4, true);


--
-- Name: galaxy_types_type_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_type_id_seq1', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_type_id_seq', 4, true);


--
-- Name: planet_types_type_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_type_id_seq1', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_id_key UNIQUE (type_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_type_id_key UNIQUE (type_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.galaxy_types(type_id);


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
-- Name: planet planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.planet_types(type_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

