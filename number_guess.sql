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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 201);
INSERT INTO public.games VALUES (2, 1, 196);
INSERT INTO public.games VALUES (3, 2, 732);
INSERT INTO public.games VALUES (4, 2, 93);
INSERT INTO public.games VALUES (5, 1, 316);
INSERT INTO public.games VALUES (6, 1, 968);
INSERT INTO public.games VALUES (7, 1, 632);
INSERT INTO public.games VALUES (8, 3, 572);
INSERT INTO public.games VALUES (9, 3, 244);
INSERT INTO public.games VALUES (10, 4, 837);
INSERT INTO public.games VALUES (11, 4, 276);
INSERT INTO public.games VALUES (12, 3, 351);
INSERT INTO public.games VALUES (13, 3, 359);
INSERT INTO public.games VALUES (14, 3, 605);
INSERT INTO public.games VALUES (15, 5, 539);
INSERT INTO public.games VALUES (16, 5, 33);
INSERT INTO public.games VALUES (17, 6, 193);
INSERT INTO public.games VALUES (18, 6, 108);
INSERT INTO public.games VALUES (19, 5, 554);
INSERT INTO public.games VALUES (20, 5, 565);
INSERT INTO public.games VALUES (21, 5, 78);
INSERT INTO public.games VALUES (22, 7, 950);
INSERT INTO public.games VALUES (23, 7, 234);
INSERT INTO public.games VALUES (24, 8, 691);
INSERT INTO public.games VALUES (25, 8, 43);
INSERT INTO public.games VALUES (26, 7, 216);
INSERT INTO public.games VALUES (27, 7, 75);
INSERT INTO public.games VALUES (28, 7, 682);
INSERT INTO public.games VALUES (29, 9, 337);
INSERT INTO public.games VALUES (30, 9, 110);
INSERT INTO public.games VALUES (31, 10, 792);
INSERT INTO public.games VALUES (32, 10, 392);
INSERT INTO public.games VALUES (33, 9, 285);
INSERT INTO public.games VALUES (34, 9, 861);
INSERT INTO public.games VALUES (35, 9, 102);
INSERT INTO public.games VALUES (36, 11, 431);
INSERT INTO public.games VALUES (37, 11, 346);
INSERT INTO public.games VALUES (38, 12, 896);
INSERT INTO public.games VALUES (39, 12, 177);
INSERT INTO public.games VALUES (40, 11, 149);
INSERT INTO public.games VALUES (41, 11, 925);
INSERT INTO public.games VALUES (42, 11, 296);
INSERT INTO public.games VALUES (43, 13, 709);
INSERT INTO public.games VALUES (44, 13, 990);
INSERT INTO public.games VALUES (45, 14, 462);
INSERT INTO public.games VALUES (46, 14, 508);
INSERT INTO public.games VALUES (47, 13, 467);
INSERT INTO public.games VALUES (48, 13, 464);
INSERT INTO public.games VALUES (49, 13, 832);
INSERT INTO public.games VALUES (50, 15, 412);
INSERT INTO public.games VALUES (51, 15, 149);
INSERT INTO public.games VALUES (52, 16, 135);
INSERT INTO public.games VALUES (53, 16, 365);
INSERT INTO public.games VALUES (54, 15, 800);
INSERT INTO public.games VALUES (55, 15, 349);
INSERT INTO public.games VALUES (56, 15, 11);
INSERT INTO public.games VALUES (57, 17, 70);
INSERT INTO public.games VALUES (58, 17, 410);
INSERT INTO public.games VALUES (59, 18, 907);
INSERT INTO public.games VALUES (60, 18, 688);
INSERT INTO public.games VALUES (61, 17, 715);
INSERT INTO public.games VALUES (62, 17, 384);
INSERT INTO public.games VALUES (63, 17, 624);
INSERT INTO public.games VALUES (64, 19, 648);
INSERT INTO public.games VALUES (65, 19, 778);
INSERT INTO public.games VALUES (66, 20, 626);
INSERT INTO public.games VALUES (67, 20, 733);
INSERT INTO public.games VALUES (68, 19, 303);
INSERT INTO public.games VALUES (69, 19, 717);
INSERT INTO public.games VALUES (70, 19, 692);
INSERT INTO public.games VALUES (71, 21, 841);
INSERT INTO public.games VALUES (72, 21, 880);
INSERT INTO public.games VALUES (73, 22, 485);
INSERT INTO public.games VALUES (74, 22, 27);
INSERT INTO public.games VALUES (75, 21, 361);
INSERT INTO public.games VALUES (76, 21, 655);
INSERT INTO public.games VALUES (77, 21, 673);
INSERT INTO public.games VALUES (78, 23, 884);
INSERT INTO public.games VALUES (79, 23, 86);
INSERT INTO public.games VALUES (80, 24, 344);
INSERT INTO public.games VALUES (81, 24, 763);
INSERT INTO public.games VALUES (82, 23, 846);
INSERT INTO public.games VALUES (83, 23, 703);
INSERT INTO public.games VALUES (84, 23, 177);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1728573287554');
INSERT INTO public.users VALUES (2, 'user_1728573287553');
INSERT INTO public.users VALUES (3, 'user_1728573384087');
INSERT INTO public.users VALUES (4, 'user_1728573384086');
INSERT INTO public.users VALUES (5, 'user_1728573392707');
INSERT INTO public.users VALUES (6, 'user_1728573392706');
INSERT INTO public.users VALUES (7, 'user_1728573656155');
INSERT INTO public.users VALUES (8, 'user_1728573656154');
INSERT INTO public.users VALUES (9, 'user_1728574530885');
INSERT INTO public.users VALUES (10, 'user_1728574530884');
INSERT INTO public.users VALUES (11, 'user_1728574582627');
INSERT INTO public.users VALUES (12, 'user_1728574582626');
INSERT INTO public.users VALUES (13, 'user_1728574680163');
INSERT INTO public.users VALUES (14, 'user_1728574680162');
INSERT INTO public.users VALUES (15, 'user_1728574722646');
INSERT INTO public.users VALUES (16, 'user_1728574722645');
INSERT INTO public.users VALUES (17, 'user_1728574733132');
INSERT INTO public.users VALUES (18, 'user_1728574733131');
INSERT INTO public.users VALUES (19, 'user_1728574761838');
INSERT INTO public.users VALUES (20, 'user_1728574761837');
INSERT INTO public.users VALUES (21, 'user_1728574785835');
INSERT INTO public.users VALUES (22, 'user_1728574785834');
INSERT INTO public.users VALUES (23, 'user_1728574807952');
INSERT INTO public.users VALUES (24, 'user_1728574807951');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

