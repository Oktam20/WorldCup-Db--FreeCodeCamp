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
    round character varying(50) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team__seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team__seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team__seq OWNER TO freecodecamp;

--
-- Name: teams_team__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team__seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team__seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (529, 2018, 'Final', 978, 979, 4, 2);
INSERT INTO public.games VALUES (530, 2018, 'Third Place', 980, 981, 2, 0);
INSERT INTO public.games VALUES (531, 2018, 'Semi-Final', 979, 981, 2, 1);
INSERT INTO public.games VALUES (532, 2018, 'Semi-Final', 978, 980, 1, 0);
INSERT INTO public.games VALUES (533, 2018, 'Quarter-Final', 979, 982, 3, 2);
INSERT INTO public.games VALUES (534, 2018, 'Quarter-Final', 981, 983, 2, 0);
INSERT INTO public.games VALUES (535, 2018, 'Quarter-Final', 980, 984, 2, 1);
INSERT INTO public.games VALUES (536, 2018, 'Quarter-Final', 978, 985, 2, 0);
INSERT INTO public.games VALUES (537, 2018, 'Eighth-Final', 981, 986, 2, 1);
INSERT INTO public.games VALUES (538, 2018, 'Eighth-Final', 983, 987, 1, 0);
INSERT INTO public.games VALUES (539, 2018, 'Eighth-Final', 980, 988, 3, 2);
INSERT INTO public.games VALUES (540, 2018, 'Eighth-Final', 984, 989, 2, 0);
INSERT INTO public.games VALUES (541, 2018, 'Eighth-Final', 979, 990, 2, 1);
INSERT INTO public.games VALUES (542, 2018, 'Eighth-Final', 982, 991, 2, 1);
INSERT INTO public.games VALUES (543, 2018, 'Eighth-Final', 985, 992, 2, 1);
INSERT INTO public.games VALUES (544, 2018, 'Eighth-Final', 978, 993, 4, 3);
INSERT INTO public.games VALUES (545, 2014, 'Final', 994, 993, 1, 0);
INSERT INTO public.games VALUES (546, 2014, 'Third Place', 995, 984, 3, 0);
INSERT INTO public.games VALUES (547, 2014, 'Semi-Final', 993, 995, 1, 0);
INSERT INTO public.games VALUES (548, 2014, 'Semi-Final', 994, 984, 7, 1);
INSERT INTO public.games VALUES (549, 2014, 'Quarter-Final', 995, 996, 1, 0);
INSERT INTO public.games VALUES (550, 2014, 'Quarter-Final', 993, 980, 1, 0);
INSERT INTO public.games VALUES (551, 2014, 'Quarter-Final', 984, 986, 2, 1);
INSERT INTO public.games VALUES (552, 2014, 'Quarter-Final', 994, 978, 1, 0);
INSERT INTO public.games VALUES (553, 2014, 'Eighth-Final', 984, 997, 2, 1);
INSERT INTO public.games VALUES (554, 2014, 'Eighth-Final', 986, 985, 2, 0);
INSERT INTO public.games VALUES (555, 2014, 'Eighth-Final', 978, 998, 2, 0);
INSERT INTO public.games VALUES (556, 2014, 'Eighth-Final', 994, 999, 2, 1);
INSERT INTO public.games VALUES (557, 2014, 'Eighth-Final', 995, 989, 2, 1);
INSERT INTO public.games VALUES (558, 2014, 'Eighth-Final', 996, 1000, 2, 1);
INSERT INTO public.games VALUES (559, 2014, 'Eighth-Final', 993, 987, 1, 0);
INSERT INTO public.games VALUES (560, 2014, 'Eighth-Final', 980, 1001, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (978, 'France');
INSERT INTO public.teams VALUES (979, 'Croatia');
INSERT INTO public.teams VALUES (980, 'Belgium');
INSERT INTO public.teams VALUES (981, 'England');
INSERT INTO public.teams VALUES (982, 'Russia');
INSERT INTO public.teams VALUES (983, 'Sweden');
INSERT INTO public.teams VALUES (984, 'Brazil');
INSERT INTO public.teams VALUES (985, 'Uruguay');
INSERT INTO public.teams VALUES (986, 'Colombia');
INSERT INTO public.teams VALUES (987, 'Switzerland');
INSERT INTO public.teams VALUES (988, 'Japan');
INSERT INTO public.teams VALUES (989, 'Mexico');
INSERT INTO public.teams VALUES (990, 'Denmark');
INSERT INTO public.teams VALUES (991, 'Spain');
INSERT INTO public.teams VALUES (992, 'Portugal');
INSERT INTO public.teams VALUES (993, 'Argentina');
INSERT INTO public.teams VALUES (994, 'Germany');
INSERT INTO public.teams VALUES (995, 'Netherlands');
INSERT INTO public.teams VALUES (996, 'Costa Rica');
INSERT INTO public.teams VALUES (997, 'Chile');
INSERT INTO public.teams VALUES (998, 'Nigeria');
INSERT INTO public.teams VALUES (999, 'Algeria');
INSERT INTO public.teams VALUES (1000, 'Greece');
INSERT INTO public.teams VALUES (1001, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 560, true);


--
-- Name: teams_team__seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team__seq', 1001, true);


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

