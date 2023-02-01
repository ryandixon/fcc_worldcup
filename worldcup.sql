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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (206, 2018, 'Final', 600, 601, 4, 2);
INSERT INTO public.games VALUES (207, 2018, 'Third Place', 602, 603, 2, 0);
INSERT INTO public.games VALUES (208, 2018, 'Semi-Final', 601, 603, 2, 1);
INSERT INTO public.games VALUES (209, 2018, 'Semi-Final', 600, 602, 1, 0);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 601, 604, 3, 2);
INSERT INTO public.games VALUES (211, 2018, 'Quarter-Final', 603, 605, 2, 0);
INSERT INTO public.games VALUES (212, 2018, 'Quarter-Final', 602, 606, 2, 1);
INSERT INTO public.games VALUES (213, 2018, 'Quarter-Final', 600, 607, 2, 0);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 603, 608, 2, 1);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 605, 609, 1, 0);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 602, 610, 3, 2);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 606, 611, 2, 0);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 601, 612, 2, 1);
INSERT INTO public.games VALUES (219, 2018, 'Eighth-Final', 604, 613, 2, 1);
INSERT INTO public.games VALUES (220, 2018, 'Eighth-Final', 607, 614, 2, 1);
INSERT INTO public.games VALUES (221, 2018, 'Eighth-Final', 600, 615, 4, 3);
INSERT INTO public.games VALUES (222, 2014, 'Final', 616, 615, 1, 0);
INSERT INTO public.games VALUES (223, 2014, 'Third Place', 617, 606, 3, 0);
INSERT INTO public.games VALUES (224, 2014, 'Semi-Final', 615, 617, 1, 0);
INSERT INTO public.games VALUES (225, 2014, 'Semi-Final', 616, 606, 7, 1);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 617, 618, 1, 0);
INSERT INTO public.games VALUES (227, 2014, 'Quarter-Final', 615, 602, 1, 0);
INSERT INTO public.games VALUES (228, 2014, 'Quarter-Final', 606, 608, 2, 1);
INSERT INTO public.games VALUES (229, 2014, 'Quarter-Final', 616, 600, 1, 0);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 606, 619, 2, 1);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 608, 607, 2, 0);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 600, 620, 2, 0);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 616, 621, 2, 1);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 617, 611, 2, 1);
INSERT INTO public.games VALUES (235, 2014, 'Eighth-Final', 618, 622, 2, 1);
INSERT INTO public.games VALUES (236, 2014, 'Eighth-Final', 615, 609, 1, 0);
INSERT INTO public.games VALUES (237, 2014, 'Eighth-Final', 602, 623, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (600, 'France');
INSERT INTO public.teams VALUES (601, 'Croatia');
INSERT INTO public.teams VALUES (602, 'Belgium');
INSERT INTO public.teams VALUES (603, 'England');
INSERT INTO public.teams VALUES (604, 'Russia');
INSERT INTO public.teams VALUES (605, 'Sweden');
INSERT INTO public.teams VALUES (606, 'Brazil');
INSERT INTO public.teams VALUES (607, 'Uruguay');
INSERT INTO public.teams VALUES (608, 'Colombia');
INSERT INTO public.teams VALUES (609, 'Switzerland');
INSERT INTO public.teams VALUES (610, 'Japan');
INSERT INTO public.teams VALUES (611, 'Mexico');
INSERT INTO public.teams VALUES (612, 'Denmark');
INSERT INTO public.teams VALUES (613, 'Spain');
INSERT INTO public.teams VALUES (614, 'Portugal');
INSERT INTO public.teams VALUES (615, 'Argentina');
INSERT INTO public.teams VALUES (616, 'Germany');
INSERT INTO public.teams VALUES (617, 'Netherlands');
INSERT INTO public.teams VALUES (618, 'Costa Rica');
INSERT INTO public.teams VALUES (619, 'Chile');
INSERT INTO public.teams VALUES (620, 'Nigeria');
INSERT INTO public.teams VALUES (621, 'Algeria');
INSERT INTO public.teams VALUES (622, 'Greece');
INSERT INTO public.teams VALUES (623, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 237, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 623, true);


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


