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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    id integer NOT NULL,
    number_of_guesses integer,
    user_id integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: game_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_info_id_seq OWNER TO freecodecamp;

--
-- Name: game_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_info_id_seq OWNED BY public.game_info.id;


--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: game_info id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info ALTER COLUMN id SET DEFAULT nextval('public.game_info_id_seq'::regclass);


--
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (1, 2, 6);
INSERT INTO public.game_info VALUES (2, 6, 7);
INSERT INTO public.game_info VALUES (3, 3, 7);
INSERT INTO public.game_info VALUES (4, 11, 8);
INSERT INTO public.game_info VALUES (5, 7, 8);
INSERT INTO public.game_info VALUES (6, 6, 7);
INSERT INTO public.game_info VALUES (7, 1, 7);
INSERT INTO public.game_info VALUES (8, 8, 7);
INSERT INTO public.game_info VALUES (9, 2, 9);
INSERT INTO public.game_info VALUES (10, 4, 9);
INSERT INTO public.game_info VALUES (11, 8, 10);
INSERT INTO public.game_info VALUES (12, 5, 10);
INSERT INTO public.game_info VALUES (13, 11, 9);
INSERT INTO public.game_info VALUES (14, 1, 9);
INSERT INTO public.game_info VALUES (15, 10, 9);
INSERT INTO public.game_info VALUES (16, 8, 11);
INSERT INTO public.game_info VALUES (17, 5, 11);
INSERT INTO public.game_info VALUES (18, 4, 12);
INSERT INTO public.game_info VALUES (19, 9, 12);
INSERT INTO public.game_info VALUES (20, 6, 11);
INSERT INTO public.game_info VALUES (21, 1, 11);
INSERT INTO public.game_info VALUES (22, 5, 11);
INSERT INTO public.game_info VALUES (23, 4, 19);
INSERT INTO public.game_info VALUES (24, 10, 19);
INSERT INTO public.game_info VALUES (25, 11, 20);
INSERT INTO public.game_info VALUES (26, 10, 20);
INSERT INTO public.game_info VALUES (27, 6, 19);
INSERT INTO public.game_info VALUES (28, 4, 19);
INSERT INTO public.game_info VALUES (29, 10, 19);
INSERT INTO public.game_info VALUES (30, 4, 1);
INSERT INTO public.game_info VALUES (31, 6, 21);
INSERT INTO public.game_info VALUES (32, 9, 21);
INSERT INTO public.game_info VALUES (33, 3, 22);
INSERT INTO public.game_info VALUES (34, 6, 22);
INSERT INTO public.game_info VALUES (35, 7, 21);
INSERT INTO public.game_info VALUES (36, 11, 21);
INSERT INTO public.game_info VALUES (37, 10, 21);
INSERT INTO public.game_info VALUES (38, 7, 23);
INSERT INTO public.game_info VALUES (39, 11, 23);
INSERT INTO public.game_info VALUES (40, 11, 24);
INSERT INTO public.game_info VALUES (41, 11, 24);
INSERT INTO public.game_info VALUES (42, 12, 23);
INSERT INTO public.game_info VALUES (43, 3, 23);
INSERT INTO public.game_info VALUES (44, 8, 23);
INSERT INTO public.game_info VALUES (45, 89, 25);
INSERT INTO public.game_info VALUES (46, 855, 25);
INSERT INTO public.game_info VALUES (47, 433, 26);
INSERT INTO public.game_info VALUES (48, 713, 26);
INSERT INTO public.game_info VALUES (49, 143, 25);
INSERT INTO public.game_info VALUES (50, 1000, 25);
INSERT INTO public.game_info VALUES (51, 679, 25);
INSERT INTO public.game_info VALUES (52, 328, 27);
INSERT INTO public.game_info VALUES (53, 179, 27);
INSERT INTO public.game_info VALUES (54, 874, 28);
INSERT INTO public.game_info VALUES (55, 506, 28);
INSERT INTO public.game_info VALUES (56, 289, 27);
INSERT INTO public.game_info VALUES (57, 7, 27);
INSERT INTO public.game_info VALUES (58, 824, 27);
INSERT INTO public.game_info VALUES (59, 101, 29);
INSERT INTO public.game_info VALUES (60, 274, 29);
INSERT INTO public.game_info VALUES (61, 483, 30);
INSERT INTO public.game_info VALUES (62, 700, 30);
INSERT INTO public.game_info VALUES (63, 204, 29);
INSERT INTO public.game_info VALUES (64, 613, 29);
INSERT INTO public.game_info VALUES (65, 81, 29);
INSERT INTO public.game_info VALUES (66, 16, 1);
INSERT INTO public.game_info VALUES (67, 721, 31);
INSERT INTO public.game_info VALUES (68, 23, 31);
INSERT INTO public.game_info VALUES (69, 485, 32);
INSERT INTO public.game_info VALUES (70, 205, 32);
INSERT INTO public.game_info VALUES (71, 98, 31);
INSERT INTO public.game_info VALUES (72, 94, 31);
INSERT INTO public.game_info VALUES (73, 390, 31);
INSERT INTO public.game_info VALUES (74, 899, 33);
INSERT INTO public.game_info VALUES (75, 789, 33);
INSERT INTO public.game_info VALUES (76, 284, 34);
INSERT INTO public.game_info VALUES (77, 649, 34);
INSERT INTO public.game_info VALUES (78, 306, 33);
INSERT INTO public.game_info VALUES (79, 796, 33);
INSERT INTO public.game_info VALUES (80, 226, 33);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (1, 'qwe');
INSERT INTO public.user_info VALUES (2, '500');
INSERT INTO public.user_info VALUES (3, '');
INSERT INTO public.user_info VALUES (4, 'user_1715758121127');
INSERT INTO public.user_info VALUES (5, 'user_1715758121126');
INSERT INTO public.user_info VALUES (6, '5');
INSERT INTO public.user_info VALUES (7, 'user_1715758293157');
INSERT INTO public.user_info VALUES (8, 'user_1715758293156');
INSERT INTO public.user_info VALUES (9, 'user_1715758898754');
INSERT INTO public.user_info VALUES (10, 'user_1715758898753');
INSERT INTO public.user_info VALUES (11, 'user_1715758914199');
INSERT INTO public.user_info VALUES (12, 'user_1715758914198');
INSERT INTO public.user_info VALUES (13, 'user_1715759076043');
INSERT INTO public.user_info VALUES (14, 'user_1715759076042');
INSERT INTO public.user_info VALUES (15, 'user_1715759076042');
INSERT INTO public.user_info VALUES (16, 'user_1715759113753');
INSERT INTO public.user_info VALUES (17, 'user_1715759113752');
INSERT INTO public.user_info VALUES (18, 'user_1715759113752');
INSERT INTO public.user_info VALUES (19, 'user_1715759651394');
INSERT INTO public.user_info VALUES (20, 'user_1715759651393');
INSERT INTO public.user_info VALUES (21, 'user_1715759724417');
INSERT INTO public.user_info VALUES (22, 'user_1715759724416');
INSERT INTO public.user_info VALUES (23, 'user_1715759776835');
INSERT INTO public.user_info VALUES (24, 'user_1715759776834');
INSERT INTO public.user_info VALUES (25, 'user_1715759857324');
INSERT INTO public.user_info VALUES (26, 'user_1715759857323');
INSERT INTO public.user_info VALUES (27, 'user_1715759890680');
INSERT INTO public.user_info VALUES (28, 'user_1715759890679');
INSERT INTO public.user_info VALUES (29, 'user_1715759906432');
INSERT INTO public.user_info VALUES (30, 'user_1715759906431');
INSERT INTO public.user_info VALUES (31, 'user_1715760018127');
INSERT INTO public.user_info VALUES (32, 'user_1715760018126');
INSERT INTO public.user_info VALUES (33, 'user_1715760050534');
INSERT INTO public.user_info VALUES (34, 'user_1715760050533');


--
-- Name: game_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_info_id_seq', 80, true);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 34, true);


--
-- Name: game_info game_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_id_key UNIQUE (id);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- Name: game_info game_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_info(user_id);


--
-- PostgreSQL database dump complete
--

