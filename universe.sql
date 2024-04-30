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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric,
    diameter numeric,
    distance_from_earth integer,
    is_visible_to_naked_eye boolean
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
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    age numeric NOT NULL,
    color text NOT NULL,
    weight integer NOT NULL,
    diameter integer NOT NULL,
    is_artifitail boolean NOT NULL,
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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    color text NOT NULL,
    distance_to_earth integer NOT NULL,
    weight numeric NOT NULL,
    is_like_earth boolean NOT NULL,
    peopels integer NOT NULL
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
-- Name: shape; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shape (
    name character varying NOT NULL,
    num integer NOT NULL,
    is_be boolean NOT NULL,
    shape_id integer NOT NULL
);


ALTER TABLE public.shape OWNER TO freecodecamp;

--
-- Name: shape_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.shape_shape_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shape_shape_id_seq OWNER TO freecodecamp;

--
-- Name: shape_shape_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.shape_shape_id_seq OWNED BY public.shape.shape_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    area integer,
    weight numeric NOT NULL,
    color text NOT NULL,
    do_i_love boolean NOT NULL,
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
-- Name: shape shape_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape ALTER COLUMN shape_id SET DEFAULT nextval('public.shape_shape_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda_galaxy', 1, 1.23, 22, 250, true);
INSERT INTO public.galaxy VALUES ('Triangulum_Galaxy', 2, 0.01, 6, 300, true);
INSERT INTO public.galaxy VALUES ('Whirlpool_galaxy', 3, NULL, 0.5, 2300, false);
INSERT INTO public.galaxy VALUES ('Sombrero_galaxy', 4, NULL, 5, 2800, false);
INSERT INTO public.galaxy VALUES ('Milky_way', 5, 0.58, 15, NULL, true);
INSERT INTO public.galaxy VALUES ('Small_magellanic_cloud', 6, 70, NULL, 203, true);
INSERT INTO public.galaxy VALUES ('Large_magellanic_cloud', 7, NULL, NULL, 168, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('waterplanet', 2, 4, 'white', 456, 15365, true, 2);
INSERT INTO public.moon VALUES ('jinplanet', 3, 5, 'yeelow', 423, 43242, false, 3);
INSERT INTO public.moon VALUES ('fireplanet', 7, 6, 'red', 423454, 321, false, 7);
INSERT INTO public.moon VALUES ('woodplacet', 8, 7, 'black', 1156, 532, true, 8);
INSERT INTO public.moon VALUES ('tuplane', 9, 7, 'codew', 32, 4236544, true, 9);
INSERT INTO public.moon VALUES ('fesadfsad', 10, 4, 'rew', 114356, 432234, false, 10);
INSERT INTO public.moon VALUES ('woodprettelacet', 11, 9, 'blarwefsck', 115256, 5353282, false, 11);
INSERT INTO public.moon VALUES ('eqwr', 12, 7, 'blfdsvxack', 11534246, 5786532, true, 12);
INSERT INTO public.moon VALUES ('woodptreyhlacet', 13, 8, 'blarewck', 112567656, 4234, true, 13);
INSERT INTO public.moon VALUES ('vcxv', 14, 5, 'blar42ewck', 867543, 7857820, true, 15);
INSERT INTO public.moon VALUES ('gdf', 15, 8, 'blarewrewck', 72857858, 4202047, false, 16);
INSERT INTO public.moon VALUES ('rewrfs', 16, 6, 'blarew423rewck', 5875782, 402024, true, 17);
INSERT INTO public.moon VALUES ('gfbsretetgf', 17, 7, 'blar534wefewck', 227204, 2404, false, 18);
INSERT INTO public.moon VALUES ('fdsghytuhyt', 18, 8, 'blarfds34ewck', 527017, 2407452, true, 15);
INSERT INTO public.moon VALUES ('5234rewsrf', 21, 10, 'gdfs584rt43', 564142, 654410, false, 20);
INSERT INTO public.moon VALUES ('rwefsd432', 22, 9, '3451564dfg', 65442134, 876230, true, 21);
INSERT INTO public.moon VALUES ('423rfg45sdf', 25, 6, '654ygrt', 6705321, 6102540, true, 24);
INSERT INTO public.moon VALUES ('4234rfs4523edf', 27, 4, 'werf434', 546142, 6043231, true, 26);
INSERT INTO public.moon VALUES ('4234r6542fsd', 28, 6, '234rwe', 3243512, 61572560, false, 27);
INSERT INTO public.moon VALUES ('vfdjw654tgdfdsf', 29, 8, 'fsd453', 423510, 5341605, true, 28);
INSERT INTO public.moon VALUES ('fdscfvsd4532', 20, 9, 'gdf125et', 45270, 17450421, true, 18);
INSERT INTO public.moon VALUES ('423asf', 23, 8, '5489ererre', 6532474, 765210132, true, 23);
INSERT INTO public.moon VALUES ('423423fds', 24, 7, '1564fdg', 423231, 534457610, false, 23);
INSERT INTO public.moon VALUES ('4234f43sdf', 26, 5, 'rewf4', 645510, 53402, false, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('waterplanet', 2, 4, 'white', 456, 15365, true, 74894);
INSERT INTO public.planet VALUES ('jinplanet', 3, 5, 'yeelow', 423, 43242, false, 42321);
INSERT INTO public.planet VALUES ('fireplanet', 7, 6, 'red', 423454, 321, false, 3123);
INSERT INTO public.planet VALUES ('woodplacet', 8, 7, 'black', 1156, 532, true, 421);
INSERT INTO public.planet VALUES ('tuplane', 9, 7, 'codew', 32, 4236544, true, 443221);
INSERT INTO public.planet VALUES ('fesadfsad', 10, 4, 'rew', 114356, 432234, false, 426731);
INSERT INTO public.planet VALUES ('woodprettelacet', 11, 9, 'blarwefsck', 115256, 5353282, false, 42341);
INSERT INTO public.planet VALUES ('eqwr', 12, 7, 'blfdsvxack', 11534246, 5786532, true, 426451);
INSERT INTO public.planet VALUES ('woodptreyhlacet', 13, 8, 'blarewck', 112567656, 432, true, 42176);
INSERT INTO public.planet VALUES ('vcxv', 14, 5, 'blar42ewck', 867543, 7857820, true, 257278);
INSERT INTO public.planet VALUES ('gdf', 15, 8, 'blarewrewck', 72857858, 4202047, false, 248730);
INSERT INTO public.planet VALUES ('rewrfs', 16, 6, 'blarew423rewck', 5875782, 402024, true, 2872);
INSERT INTO public.planet VALUES ('gfbsretetgf', 17, 7, 'blar534wefewck', 227204, 2404, false, 52178);
INSERT INTO public.planet VALUES ('fdsghytuhyt', 18, 8, 'blarfds34ewck', 527017, 2407452, true, 254200);
INSERT INTO public.planet VALUES ('534rfdsf', 20, 9, 'gdf125et', 45270, 17450421, true, 53432410);
INSERT INTO public.planet VALUES ('423423', 21, 10, 'gdfs584rt43', 564142, 654410, false, 754210);
INSERT INTO public.planet VALUES ('fsdfwe234', 23, 8, '5489ererre', 6532474, 765210132, true, 64512034);
INSERT INTO public.planet VALUES ('rwefsd', 24, 7, '1564fdg', 423231, 534457610, false, 53420);
INSERT INTO public.planet VALUES ('tyhrgre3423', 26, 5, 'rewf4', 645510, 53402, false, 64525410);
INSERT INTO public.planet VALUES ('54323', 27, 4, 'werf434', 546142, 6043231, true, 64506);
INSERT INTO public.planet VALUES ('432redfds', 28, 6, '234rwe', 3243512, 61572560, false, 53420345);
INSERT INTO public.planet VALUES ('756tyhfgg', 29, 8, 'fsd453', 423510, 5341605, true, 510867);


--
-- Data for Name: shape; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shape VALUES ('spiral', 451, true, 1);
INSERT INTO public.shape VALUES ('irregular', 4516, true, 2);
INSERT INTO public.shape VALUES ('circle', 432, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 4, 1060, 5145.1, 'red', true, 1);
INSERT INTO public.star VALUES ('bilibili', 5, 514, 4512, 'blue', false, 2);
INSERT INTO public.star VALUES ('tainlangxing', 6, 451, 12.645, 'nocolor', false, 5);
INSERT INTO public.star VALUES ('baobootlezuo', 7, 542, 23685.1, 'green', true, 1);
INSERT INTO public.star VALUES ('sourthriverthree', 8, 454, 154, 'black', false, 4);
INSERT INTO public.star VALUES ('bigxiezuo', 9, 4841, 5641, 'white', false, 3);
INSERT INTO public.star VALUES ('skycangfive', 10, 784, 1564, 'skyblue', true, 5);
INSERT INTO public.star VALUES ('jingyuzuoyzstar', 11, 4561, 423, 'yeelow', true, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 8, true);


--
-- Name: shape_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.shape_shape_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_diameter_key UNIQUE (diameter);


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
-- Name: moon moon_weight_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_weight_key UNIQUE (weight);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


--
-- Name: planet planet_distance_to_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_to_earth_key UNIQUE (distance_to_earth);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_peopels_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_peopels_key UNIQUE (peopels);


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
-- Name: planet planet_weight_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_weight_key UNIQUE (weight);


--
-- Name: shape shape_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_name_key UNIQUE (name);


--
-- Name: shape shape_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_num_key UNIQUE (num);


--
-- Name: shape shape_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shape
    ADD CONSTRAINT shape_pkey PRIMARY KEY (shape_id);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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
-- Name: star star_weight_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_weight_key UNIQUE (weight);


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

