--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    username character varying(22),
    user_id integer NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 6, 75);
INSERT INTO public.games VALUES (2, 6, 249);
INSERT INTO public.games VALUES (3, 7, 409);
INSERT INTO public.games VALUES (4, 7, 131);
INSERT INTO public.games VALUES (5, 6, 387);
INSERT INTO public.games VALUES (6, 6, 441);
INSERT INTO public.games VALUES (7, 6, 967);
INSERT INTO public.games VALUES (8, 8, 9);
INSERT INTO public.games VALUES (9, 9, 419);
INSERT INTO public.games VALUES (10, 9, 520);
INSERT INTO public.games VALUES (11, 10, 400);
INSERT INTO public.games VALUES (12, 10, 808);
INSERT INTO public.games VALUES (13, 9, 852);
INSERT INTO public.games VALUES (14, 9, 782);
INSERT INTO public.games VALUES (15, 9, 69);
INSERT INTO public.games VALUES (16, 11, 591);
INSERT INTO public.games VALUES (17, 11, 456);
INSERT INTO public.games VALUES (18, 12, 355);
INSERT INTO public.games VALUES (19, 12, 818);
INSERT INTO public.games VALUES (20, 11, 236);
INSERT INTO public.games VALUES (21, 11, 724);
INSERT INTO public.games VALUES (22, 11, 206);
INSERT INTO public.games VALUES (23, 13, 233);
INSERT INTO public.games VALUES (24, 13, 28);
INSERT INTO public.games VALUES (25, 14, 885);
INSERT INTO public.games VALUES (26, 14, 467);
INSERT INTO public.games VALUES (27, 13, 858);
INSERT INTO public.games VALUES (28, 13, 449);
INSERT INTO public.games VALUES (29, 13, 273);
INSERT INTO public.games VALUES (30, 15, 365);
INSERT INTO public.games VALUES (31, 15, 379);
INSERT INTO public.games VALUES (32, 16, 569);
INSERT INTO public.games VALUES (33, 16, 333);
INSERT INTO public.games VALUES (34, 15, 334);
INSERT INTO public.games VALUES (35, 15, 30);
INSERT INTO public.games VALUES (36, 15, 425);
INSERT INTO public.games VALUES (37, 17, 572);
INSERT INTO public.games VALUES (38, 17, 782);
INSERT INTO public.games VALUES (39, 18, 777);
INSERT INTO public.games VALUES (40, 18, 467);
INSERT INTO public.games VALUES (41, 17, 452);
INSERT INTO public.games VALUES (42, 17, 374);
INSERT INTO public.games VALUES (43, 17, 135);
INSERT INTO public.games VALUES (44, 19, 9);
INSERT INTO public.games VALUES (45, 19, 20);
INSERT INTO public.games VALUES (46, 20, 288);
INSERT INTO public.games VALUES (47, 20, 225);
INSERT INTO public.games VALUES (48, 21, 943);
INSERT INTO public.games VALUES (49, 21, 85);
INSERT INTO public.games VALUES (50, 20, 691);
INSERT INTO public.games VALUES (51, 20, 338);
INSERT INTO public.games VALUES (52, 20, 719);
INSERT INTO public.games VALUES (53, 22, 525);
INSERT INTO public.games VALUES (54, 22, 583);
INSERT INTO public.games VALUES (55, 23, 562);
INSERT INTO public.games VALUES (56, 23, 948);
INSERT INTO public.games VALUES (57, 22, 488);
INSERT INTO public.games VALUES (58, 22, 856);
INSERT INTO public.games VALUES (59, 22, 187);
INSERT INTO public.games VALUES (60, 24, 840);
INSERT INTO public.games VALUES (61, 24, 1001);
INSERT INTO public.games VALUES (62, 25, 866);
INSERT INTO public.games VALUES (63, 25, 324);
INSERT INTO public.games VALUES (64, 24, 977);
INSERT INTO public.games VALUES (65, 24, 978);
INSERT INTO public.games VALUES (66, 24, 112);
INSERT INTO public.games VALUES (67, 26, 559);
INSERT INTO public.games VALUES (68, 26, 871);
INSERT INTO public.games VALUES (69, 27, 309);
INSERT INTO public.games VALUES (70, 27, 489);
INSERT INTO public.games VALUES (71, 26, 515);
INSERT INTO public.games VALUES (72, 26, 359);
INSERT INTO public.games VALUES (73, 26, 995);
INSERT INTO public.games VALUES (74, 28, 436);
INSERT INTO public.games VALUES (75, 28, 373);
INSERT INTO public.games VALUES (76, 29, 370);
INSERT INTO public.games VALUES (77, 29, 646);
INSERT INTO public.games VALUES (78, 28, 71);
INSERT INTO public.games VALUES (79, 28, 970);
INSERT INTO public.games VALUES (80, 28, 531);
INSERT INTO public.games VALUES (81, 30, 256);
INSERT INTO public.games VALUES (82, 30, 980);
INSERT INTO public.games VALUES (83, 31, 164);
INSERT INTO public.games VALUES (84, 31, 472);
INSERT INTO public.games VALUES (85, 30, 954);
INSERT INTO public.games VALUES (86, 30, 786);
INSERT INTO public.games VALUES (87, 30, 540);
INSERT INTO public.games VALUES (88, 32, 957);
INSERT INTO public.games VALUES (89, 32, 496);
INSERT INTO public.games VALUES (90, 33, 92);
INSERT INTO public.games VALUES (91, 33, 257);
INSERT INTO public.games VALUES (92, 32, 285);
INSERT INTO public.games VALUES (93, 32, 471);
INSERT INTO public.games VALUES (94, 32, 769);
INSERT INTO public.games VALUES (95, 34, 147);
INSERT INTO public.games VALUES (96, 34, 480);
INSERT INTO public.games VALUES (97, 35, 193);
INSERT INTO public.games VALUES (98, 35, 4);
INSERT INTO public.games VALUES (99, 34, 758);
INSERT INTO public.games VALUES (100, 34, 609);
INSERT INTO public.games VALUES (101, 34, 380);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES ('user_1794092595571', 1);
INSERT INTO public.players VALUES ('user_1794092977764', 2);
INSERT INTO public.players VALUES ('user_1794092977763', 3);
INSERT INTO public.players VALUES ('user_1794093082094', 4);
INSERT INTO public.players VALUES ('user_1794093082093', 5);
INSERT INTO public.players VALUES ('user_1794093334037', 6);
INSERT INTO public.players VALUES ('user_1794093334036', 7);
INSERT INTO public.players VALUES ('Harold', 8);
INSERT INTO public.players VALUES ('user_1794093516036', 9);
INSERT INTO public.players VALUES ('user_1794093516035', 10);
INSERT INTO public.players VALUES ('user_1794093610113', 11);
INSERT INTO public.players VALUES ('user_1794093610112', 12);
INSERT INTO public.players VALUES ('user_1794093687987', 13);
INSERT INTO public.players VALUES ('user_1794093687986', 14);
INSERT INTO public.players VALUES ('user_1794093812513', 15);
INSERT INTO public.players VALUES ('user_1794093812512', 16);
INSERT INTO public.players VALUES ('user_1794093820584', 17);
INSERT INTO public.players VALUES ('user_1794093820583', 18);
INSERT INTO public.players VALUES ('Hasan', 19);
INSERT INTO public.players VALUES ('user_1794094226524', 20);
INSERT INTO public.players VALUES ('user_1794094226523', 21);
INSERT INTO public.players VALUES ('user_1794094271077', 22);
INSERT INTO public.players VALUES ('user_1794094271076', 23);
INSERT INTO public.players VALUES ('user_1794094288800', 24);
INSERT INTO public.players VALUES ('user_1794094288799', 25);
INSERT INTO public.players VALUES ('user_1794094295117', 26);
INSERT INTO public.players VALUES ('user_1794094295116', 27);
INSERT INTO public.players VALUES ('user_1794094298991', 28);
INSERT INTO public.players VALUES ('user_1794094298990', 29);
INSERT INTO public.players VALUES ('user_1794094405538', 30);
INSERT INTO public.players VALUES ('user_1794094405537', 31);
INSERT INTO public.players VALUES ('user_1794094590030', 32);
INSERT INTO public.players VALUES ('user_1794094590029', 33);
INSERT INTO public.players VALUES ('user_1794094770994', 34);
INSERT INTO public.players VALUES ('user_1794094770993', 35);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_unique UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

