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
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(15) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (327, 2018, 'Final', 415, 416, 2, 4);
INSERT INTO public.games VALUES (328, 2018, 'Third Place', 417, 418, 0, 2);
INSERT INTO public.games VALUES (329, 2018, 'Semi-Final', 416, 418, 1, 2);
INSERT INTO public.games VALUES (330, 2018, 'Semi-Final', 415, 417, 0, 1);
INSERT INTO public.games VALUES (331, 2018, 'Quarter-Final', 416, 419, 2, 3);
INSERT INTO public.games VALUES (332, 2018, 'Quarter-Final', 418, 420, 0, 2);
INSERT INTO public.games VALUES (333, 2018, 'Quarter-Final', 417, 421, 1, 2);
INSERT INTO public.games VALUES (334, 2018, 'Quarter-Final', 415, 422, 0, 2);
INSERT INTO public.games VALUES (335, 2018, 'Eighth-Final', 418, 423, 1, 2);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 420, 424, 0, 1);
INSERT INTO public.games VALUES (337, 2018, 'Eighth-Final', 417, 425, 2, 3);
INSERT INTO public.games VALUES (338, 2018, 'Eighth-Final', 421, 426, 0, 2);
INSERT INTO public.games VALUES (339, 2018, 'Eighth-Final', 416, 427, 1, 2);
INSERT INTO public.games VALUES (340, 2018, 'Eighth-Final', 419, 428, 1, 2);
INSERT INTO public.games VALUES (341, 2018, 'Eighth-Final', 422, 429, 1, 2);
INSERT INTO public.games VALUES (342, 2018, 'Eighth-Final', 415, 430, 3, 4);
INSERT INTO public.games VALUES (343, 2014, 'Final', 431, 430, 0, 1);
INSERT INTO public.games VALUES (344, 2014, 'Third Place', 432, 421, 0, 3);
INSERT INTO public.games VALUES (345, 2014, 'Semi-Final', 430, 432, 0, 1);
INSERT INTO public.games VALUES (346, 2014, 'Semi-Final', 431, 421, 1, 7);
INSERT INTO public.games VALUES (347, 2014, 'Quarter-Final', 432, 433, 0, 1);
INSERT INTO public.games VALUES (348, 2014, 'Quarter-Final', 430, 417, 0, 1);
INSERT INTO public.games VALUES (349, 2014, 'Quarter-Final', 421, 423, 1, 2);
INSERT INTO public.games VALUES (350, 2014, 'Quarter-Final', 431, 415, 0, 1);
INSERT INTO public.games VALUES (351, 2014, 'Eighth-Final', 421, 434, 1, 2);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 423, 422, 0, 2);
INSERT INTO public.games VALUES (353, 2014, 'Eighth-Final', 415, 435, 0, 2);
INSERT INTO public.games VALUES (354, 2014, 'Eighth-Final', 431, 436, 1, 2);
INSERT INTO public.games VALUES (355, 2014, 'Eighth-Final', 432, 426, 1, 2);
INSERT INTO public.games VALUES (356, 2014, 'Eighth-Final', 433, 437, 1, 2);
INSERT INTO public.games VALUES (357, 2014, 'Eighth-Final', 430, 424, 0, 1);
INSERT INTO public.games VALUES (358, 2014, 'Eighth-Final', 417, 438, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (415, 'France');
INSERT INTO public.teams VALUES (416, 'Croatia');
INSERT INTO public.teams VALUES (417, 'Belgium');
INSERT INTO public.teams VALUES (418, 'England');
INSERT INTO public.teams VALUES (419, 'Russia');
INSERT INTO public.teams VALUES (420, 'Sweden');
INSERT INTO public.teams VALUES (421, 'Brazil');
INSERT INTO public.teams VALUES (422, 'Uruguay');
INSERT INTO public.teams VALUES (423, 'Colombia');
INSERT INTO public.teams VALUES (424, 'Switzerland');
INSERT INTO public.teams VALUES (425, 'Japan');
INSERT INTO public.teams VALUES (426, 'Mexico');
INSERT INTO public.teams VALUES (427, 'Denmark');
INSERT INTO public.teams VALUES (428, 'Spain');
INSERT INTO public.teams VALUES (429, 'Portugal');
INSERT INTO public.teams VALUES (430, 'Argentina');
INSERT INTO public.teams VALUES (431, 'Germany');
INSERT INTO public.teams VALUES (432, 'Netherlands');
INSERT INTO public.teams VALUES (433, 'Costa Rica');
INSERT INTO public.teams VALUES (434, 'Chile');
INSERT INTO public.teams VALUES (435, 'Nigeria');
INSERT INTO public.teams VALUES (436, 'Algeria');
INSERT INTO public.teams VALUES (437, 'Greece');
INSERT INTO public.teams VALUES (438, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 358, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 438, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

