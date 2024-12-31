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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter numeric(3,1)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    type character varying(20),
    distance_from_earth numeric(10,2)
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
    name character varying(20) NOT NULL,
    description text,
    has_water boolean,
    diameter_in_km numeric(5,1),
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
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    diameter_in_km integer,
    number_of_moons integer,
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
    name character varying(20) NOT NULL,
    description text,
    galaxy_id integer,
    luminosity numeric
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 93.9);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 52.5);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 51.2);
INSERT INTO public.asteroid VALUES (4, 'Eros', 1.7);
INSERT INTO public.asteroid VALUES (5, 'Itokawa', 0.5);
INSERT INTO public.asteroid VALUES (6, 'Hygiea', 43.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System.', 'Spiral', 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way and on a collision course with it in about 4 billion years.', 'Spiral', 2.54);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group of galaxies, located near the Andromeda Galaxy.', 'Spiral', 3.00);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy with a bright nucleus and a large central bulge, resembling a sombrero hat.', 'Spiral', 28.00);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'A well-known spiral galaxy located in the constellation Canes Venatici.', 'Spiral', 30.00);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'A barred spiral galaxy located in the constellation Ursa Major.', 'Barred Spiral', 25.00);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 'An elliptical galaxy in the Virgo Cluster, famous for having a supermassive black hole at its center.', 'Elliptical', 53.50);
INSERT INTO public.galaxy VALUES (8, 'Cartwheel', 'A ring galaxy formed by a collision with another galaxy, resembling a cartwheel.', 'Ring', 500.00);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', 'An elliptical galaxy located in the Centaurus constellation, known for its central black hole.', 'Elliptical', 13.00);
INSERT INTO public.galaxy VALUES (10, 'NGC 1300', 'A barred spiral galaxy located in the constellation Eridanus.', 'Barred Spiral', 60.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Moon', 'Earth only natural satellite.', true, 3474.8, 1);
INSERT INTO public.moon VALUES (21, 'Phobos', 'The larger moon of Mars, with an irregular shape.', false, 22.4, 2);
INSERT INTO public.moon VALUES (22, 'Deimos', 'The smaller moon of Mars, with a cratered surface.', false, 12.4, 2);
INSERT INTO public.moon VALUES (23, 'Io', 'A volcanic moon of Jupiter with many active volcanoes.', false, 3643.2, 4);
INSERT INTO public.moon VALUES (24, 'Europa', 'A moon of Jupiter, with an icy surface and potential subsurface ocean.', true, 3121.6, 4);
INSERT INTO public.moon VALUES (25, 'Ganymede', 'The largest moon in the Solar System, also a moon of Jupiter.', true, 5268.2, 4);
INSERT INTO public.moon VALUES (26, 'Callisto', 'A heavily cratered moon of Jupiter.', false, 4820.6, 4);
INSERT INTO public.moon VALUES (27, 'Titan', 'The largest moon of Saturn, with a thick atmosphere.', true, 5150.0, 5);
INSERT INTO public.moon VALUES (28, 'Rhea', 'A moon of Saturn with a surface of ice and rock.', false, 1527.6, 5);
INSERT INTO public.moon VALUES (29, 'Enceladus', 'A moon of Saturn known for its ice geysers.', true, 504.2, 5);
INSERT INTO public.moon VALUES (30, 'Mimas', 'A moon of Saturn, often called the Death Star moon.', false, 396.0, 5);
INSERT INTO public.moon VALUES (31, 'Triton', 'Neptune largest moon, with a retrograde orbit.', true, 2706.8, 8);
INSERT INTO public.moon VALUES (32, 'Miranda', 'A moon of Uranus with a surface of ridges and valleys.', false, 471.6, 7);
INSERT INTO public.moon VALUES (33, 'Ariel', 'A moon of Uranus with a young, icy surface.', false, 1157.8, 7);
INSERT INTO public.moon VALUES (34, 'Umbriel', 'A dark, icy moon of Uranus with many craters.', false, 1169.4, 7);
INSERT INTO public.moon VALUES (35, 'Titania', 'The largest moon of Uranus, with canyons and cliffs.', false, 1578.0, 7);
INSERT INTO public.moon VALUES (36, 'Oberon', 'A moon of Uranus with a heavily cratered surface.', false, 1523.0, 7);
INSERT INTO public.moon VALUES (37, 'Iapetus', 'A moon of Saturn with a two-tone coloration.', false, 1469.0, 5);
INSERT INTO public.moon VALUES (38, 'Charon', 'The largest moon of Pluto, with a nearly symmetrical orbit.', false, 1212.0, 9);
INSERT INTO public.moon VALUES (41, 'Gobbler', 'A moon of Neptune with a peculiar orbital pattern.', false, 182.5, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun, supporting life.', true, true, 12742, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The red planet with iron oxide on its surface.', false, true, 6779, 2, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'A planet with a toxic atmosphere.', false, false, 12104, 0, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The largest planet with many moons.', false, true, 139820, 79, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Famous for its stunning ring system.', false, true, 116460, 82, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'The closest planet to the Sun, extremely hot.', false, false, 4879, 0, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'A tilted planet with a blue-green color.', false, true, 50724, 27, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'A blue planet with strong winds.', false, true, 49528, 14, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 'An exoplanet in the habitable zone.', true, true, 12500, 1, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'An exoplanet in a Sun-like star’s habitable zone.', true, true, 13100, 1, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'A hot Jupiter with an observed atmosphere.', false, false, 132000, 0, 3);
INSERT INTO public.planet VALUES (12, 'Tatooine', 'A desert planet with twin suns (fictional).', false, false, 10400, 3, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system, providing light and energy to Earth.', 1, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'The brightest star in the Alpha Centauri star system, located 4.37 light years from Earth.', 2, 1.5);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion, one of the largest stars visible to the naked eye.', 3, 100000);
INSERT INTO public.star VALUES (4, 'Sirius', 'The brightest star in the night sky, part of the constellation Canis Major, located 8.6 light years from Earth.', 4, 25);
INSERT INTO public.star VALUES (5, 'Polaris', 'The current North Star, located in the constellation Ursa Minor, and a supergiant star.', 5, 10000);
INSERT INTO public.star VALUES (6, 'Rigel', 'A blue supergiant star in the constellation Orion, known for being one of the most luminous stars.', 6, 120000);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'The closest known star to the Sun, part of the Alpha Centauri star system, located 4.24 light years away.', 2, 0.00005);
INSERT INTO public.star VALUES (8, 'Arcturus', 'A giant star in the constellation Boötes, one of the brightest stars in the sky.', 7, 170);
INSERT INTO public.star VALUES (9, 'Vega', 'A bright star in the constellation Lyra, a part of the Summer Triangle, and one of the most luminous stars in the local stellar neighborhood.', 8, 40);
INSERT INTO public.star VALUES (10, 'Antares', 'A red supergiant star in the heart of the Scorpius constellation, often referred to as the "heart of the scorpion".', 9, 50000);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: planet planet_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


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

