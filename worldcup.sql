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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (95, 2018, 'Final', 169, 170, 4, 2);
INSERT INTO public.games VALUES (96, 2018, 'Third Place', 171, 172, 2, 0);
INSERT INTO public.games VALUES (97, 2018, 'Semi-Final', 170, 172, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Semi-Final', 169, 171, 1, 0);
INSERT INTO public.games VALUES (99, 2018, 'Quarter-Final', 170, 178, 3, 2);
INSERT INTO public.games VALUES (100, 2018, 'Quarter-Final', 172, 180, 2, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 171, 182, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 169, 184, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 172, 186, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 180, 188, 1, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 171, 190, 3, 2);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 182, 192, 2, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 170, 194, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 178, 196, 2, 1);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 184, 198, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 169, 200, 4, 3);
INSERT INTO public.games VALUES (111, 2014, 'Final', 201, 200, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Third Place', 203, 182, 3, 0);
INSERT INTO public.games VALUES (113, 2014, 'Semi-Final', 200, 203, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Semi-Final', 201, 182, 7, 1);
INSERT INTO public.games VALUES (115, 2014, 'Quarter-Final', 203, 210, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Quarter-Final', 200, 171, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 182, 186, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 201, 169, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 182, 218, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 186, 184, 2, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 169, 222, 2, 0);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 201, 224, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 203, 192, 2, 1);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 210, 228, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 200, 188, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 171, 232, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (169, 'France');
INSERT INTO public.teams VALUES (170, 'Croatia');
INSERT INTO public.teams VALUES (171, 'Belgium');
INSERT INTO public.teams VALUES (172, 'England');
INSERT INTO public.teams VALUES (178, 'Russia');
INSERT INTO public.teams VALUES (180, 'Sweden');
INSERT INTO public.teams VALUES (182, 'Brazil');
INSERT INTO public.teams VALUES (184, 'Uruguay');
INSERT INTO public.teams VALUES (186, 'Colombia');
INSERT INTO public.teams VALUES (188, 'Switzerland');
INSERT INTO public.teams VALUES (190, 'Japan');
INSERT INTO public.teams VALUES (192, 'Mexico');
INSERT INTO public.teams VALUES (194, 'Denmark');
INSERT INTO public.teams VALUES (196, 'Spain');
INSERT INTO public.teams VALUES (198, 'Portugal');
INSERT INTO public.teams VALUES (200, 'Argentina');
INSERT INTO public.teams VALUES (201, 'Germany');
INSERT INTO public.teams VALUES (203, 'Netherlands');
INSERT INTO public.teams VALUES (210, 'Costa Rica');
INSERT INTO public.teams VALUES (218, 'Chile');
INSERT INTO public.teams VALUES (222, 'Nigeria');
INSERT INTO public.teams VALUES (224, 'Algeria');
INSERT INTO public.teams VALUES (228, 'Greece');
INSERT INTO public.teams VALUES (232, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 25, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 25, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 232, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

