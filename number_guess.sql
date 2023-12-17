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
    user_id integer NOT NULL,
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
    user_name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (12, 2, 2);
INSERT INTO public.games VALUES (13, 2, 1);
INSERT INTO public.games VALUES (42, 47, 599);
INSERT INTO public.games VALUES (43, 48, 403);
INSERT INTO public.games VALUES (44, 47, 970);
INSERT INTO public.games VALUES (45, 47, 261);
INSERT INTO public.games VALUES (46, 47, 370);
INSERT INTO public.games VALUES (47, 49, 755);
INSERT INTO public.games VALUES (48, 50, 520);
INSERT INTO public.games VALUES (49, 49, 926);
INSERT INTO public.games VALUES (50, 49, 449);
INSERT INTO public.games VALUES (51, 49, 987);
INSERT INTO public.games VALUES (52, 47, 1);
INSERT INTO public.games VALUES (53, 51, 702);
INSERT INTO public.games VALUES (54, 52, 499);
INSERT INTO public.games VALUES (55, 51, 428);
INSERT INTO public.games VALUES (56, 51, 160);
INSERT INTO public.games VALUES (57, 51, 860);
INSERT INTO public.games VALUES (58, 53, 260);
INSERT INTO public.games VALUES (59, 54, 772);
INSERT INTO public.games VALUES (60, 53, 327);
INSERT INTO public.games VALUES (61, 53, 720);
INSERT INTO public.games VALUES (62, 53, 516);
INSERT INTO public.games VALUES (63, 55, 85);
INSERT INTO public.games VALUES (64, 56, 166);
INSERT INTO public.games VALUES (65, 55, 976);
INSERT INTO public.games VALUES (66, 55, 802);
INSERT INTO public.games VALUES (67, 55, 971);
INSERT INTO public.games VALUES (68, 57, 366);
INSERT INTO public.games VALUES (69, 58, 544);
INSERT INTO public.games VALUES (70, 57, 981);
INSERT INTO public.games VALUES (71, 57, 740);
INSERT INTO public.games VALUES (72, 57, 957);
INSERT INTO public.games VALUES (73, 1, 3);
INSERT INTO public.games VALUES (74, 48, 2);
INSERT INTO public.games VALUES (75, 59, 35);
INSERT INTO public.games VALUES (76, 60, 398);
INSERT INTO public.games VALUES (77, 59, 884);
INSERT INTO public.games VALUES (78, 59, 120);
INSERT INTO public.games VALUES (79, 59, 866);
INSERT INTO public.games VALUES (80, 63, 4);
INSERT INTO public.games VALUES (81, 64, 785);
INSERT INTO public.games VALUES (82, 65, 178);
INSERT INTO public.games VALUES (83, 64, 182);
INSERT INTO public.games VALUES (84, 64, 312);
INSERT INTO public.games VALUES (85, 64, 202);
INSERT INTO public.games VALUES (86, 1, 1);
INSERT INTO public.games VALUES (87, 66, 472);
INSERT INTO public.games VALUES (88, 67, 590);
INSERT INTO public.games VALUES (89, 66, 517);
INSERT INTO public.games VALUES (90, 66, 336);
INSERT INTO public.games VALUES (91, 66, 479);
INSERT INTO public.games VALUES (92, 68, 102);
INSERT INTO public.games VALUES (93, 69, 750);
INSERT INTO public.games VALUES (94, 68, 111);
INSERT INTO public.games VALUES (95, 68, 993);
INSERT INTO public.games VALUES (96, 68, 658);
INSERT INTO public.games VALUES (97, 70, 337);
INSERT INTO public.games VALUES (98, 71, 700);
INSERT INTO public.games VALUES (99, 70, 133);
INSERT INTO public.games VALUES (100, 70, 3);
INSERT INTO public.games VALUES (101, 70, 654);
INSERT INTO public.games VALUES (102, 72, 147);
INSERT INTO public.games VALUES (103, 73, 717);
INSERT INTO public.games VALUES (104, 72, 92);
INSERT INTO public.games VALUES (105, 72, 388);
INSERT INTO public.games VALUES (106, 72, 19);
INSERT INTO public.games VALUES (107, 74, 948);
INSERT INTO public.games VALUES (108, 75, 980);
INSERT INTO public.games VALUES (109, 74, 34);
INSERT INTO public.games VALUES (110, 74, 662);
INSERT INTO public.games VALUES (111, 74, 274);
INSERT INTO public.games VALUES (112, 76, 732);
INSERT INTO public.games VALUES (113, 77, 74);
INSERT INTO public.games VALUES (114, 76, 278);
INSERT INTO public.games VALUES (115, 76, 241);
INSERT INTO public.games VALUES (116, 76, 709);
INSERT INTO public.games VALUES (117, 78, 288);
INSERT INTO public.games VALUES (118, 79, 432);
INSERT INTO public.games VALUES (119, 78, 518);
INSERT INTO public.games VALUES (120, 78, 317);
INSERT INTO public.games VALUES (121, 78, 113);
INSERT INTO public.games VALUES (122, 84, 1);
INSERT INTO public.games VALUES (123, 85, 452);
INSERT INTO public.games VALUES (124, 85, 594);
INSERT INTO public.games VALUES (125, 86, 792);
INSERT INTO public.games VALUES (126, 86, 568);
INSERT INTO public.games VALUES (127, 85, 137);
INSERT INTO public.games VALUES (128, 85, 653);
INSERT INTO public.games VALUES (129, 85, 640);
INSERT INTO public.games VALUES (130, 87, 1);
INSERT INTO public.games VALUES (131, 1, 1);
INSERT INTO public.games VALUES (132, 88, 381);
INSERT INTO public.games VALUES (133, 88, 584);
INSERT INTO public.games VALUES (134, 89, 229);
INSERT INTO public.games VALUES (135, 89, 279);
INSERT INTO public.games VALUES (136, 88, 216);
INSERT INTO public.games VALUES (137, 88, 132);
INSERT INTO public.games VALUES (138, 88, 221);
INSERT INTO public.games VALUES (139, 90, 342);
INSERT INTO public.games VALUES (140, 90, 144);
INSERT INTO public.games VALUES (141, 91, 250);
INSERT INTO public.games VALUES (142, 91, 986);
INSERT INTO public.games VALUES (143, 90, 57);
INSERT INTO public.games VALUES (144, 90, 479);
INSERT INTO public.games VALUES (145, 90, 880);
INSERT INTO public.games VALUES (146, 92, 340);
INSERT INTO public.games VALUES (147, 92, 404);
INSERT INTO public.games VALUES (148, 93, 371);
INSERT INTO public.games VALUES (149, 93, 368);
INSERT INTO public.games VALUES (150, 92, 176);
INSERT INTO public.games VALUES (151, 92, 834);
INSERT INTO public.games VALUES (152, 92, 70);
INSERT INTO public.games VALUES (153, 94, 605);
INSERT INTO public.games VALUES (154, 94, 348);
INSERT INTO public.games VALUES (155, 95, 563);
INSERT INTO public.games VALUES (156, 95, 966);
INSERT INTO public.games VALUES (157, 94, 70);
INSERT INTO public.games VALUES (158, 94, 347);
INSERT INTO public.games VALUES (159, 94, 79);
INSERT INTO public.games VALUES (160, 96, 379);
INSERT INTO public.games VALUES (161, 96, 799);
INSERT INTO public.games VALUES (162, 97, 647);
INSERT INTO public.games VALUES (163, 97, 930);
INSERT INTO public.games VALUES (164, 96, 575);
INSERT INTO public.games VALUES (165, 96, 316);
INSERT INTO public.games VALUES (166, 96, 359);
INSERT INTO public.games VALUES (167, 98, 222);
INSERT INTO public.games VALUES (168, 99, 999);
INSERT INTO public.games VALUES (169, 98, 970);
INSERT INTO public.games VALUES (170, 98, 450);
INSERT INTO public.games VALUES (171, 98, 646);
INSERT INTO public.games VALUES (172, 100, 385);
INSERT INTO public.games VALUES (173, 100, 819);
INSERT INTO public.games VALUES (174, 101, 698);
INSERT INTO public.games VALUES (175, 101, 945);
INSERT INTO public.games VALUES (176, 100, 726);
INSERT INTO public.games VALUES (177, 100, 609);
INSERT INTO public.games VALUES (178, 100, 845);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Pavlina');
INSERT INTO public.users VALUES (2, 'Ivana');
INSERT INTO public.users VALUES (47, 'user_1702828914626');
INSERT INTO public.users VALUES (48, 'user_1702828914625');
INSERT INTO public.users VALUES (49, 'user_1702828945457');
INSERT INTO public.users VALUES (50, 'user_1702828945456');
INSERT INTO public.users VALUES (51, 'user_1702837158836');
INSERT INTO public.users VALUES (52, 'user_1702837158835');
INSERT INTO public.users VALUES (53, 'user_1702837213109');
INSERT INTO public.users VALUES (54, 'user_1702837213108');
INSERT INTO public.users VALUES (55, 'user_1702837829682');
INSERT INTO public.users VALUES (56, 'user_1702837829681');
INSERT INTO public.users VALUES (57, 'user_1702837843547');
INSERT INTO public.users VALUES (58, 'user_1702837843546');
INSERT INTO public.users VALUES (59, 'user_1702837982426');
INSERT INTO public.users VALUES (60, 'user_1702837982425');
INSERT INTO public.users VALUES (61, 'Rado');
INSERT INTO public.users VALUES (62, 'Tomas');
INSERT INTO public.users VALUES (63, 'Felix');
INSERT INTO public.users VALUES (64, 'user_1702838965955');
INSERT INTO public.users VALUES (65, 'user_1702838965954');
INSERT INTO public.users VALUES (66, 'user_1702839252785');
INSERT INTO public.users VALUES (67, 'user_1702839252784');
INSERT INTO public.users VALUES (68, 'user_1702839327951');
INSERT INTO public.users VALUES (69, 'user_1702839327950');
INSERT INTO public.users VALUES (70, 'user_1702839337156');
INSERT INTO public.users VALUES (71, 'user_1702839337155');
INSERT INTO public.users VALUES (72, 'user_1702839347186');
INSERT INTO public.users VALUES (73, 'user_1702839347185');
INSERT INTO public.users VALUES (74, 'user_1702839387335');
INSERT INTO public.users VALUES (75, 'user_1702839387334');
INSERT INTO public.users VALUES (76, 'user_1702839478462');
INSERT INTO public.users VALUES (77, 'user_1702839478461');
INSERT INTO public.users VALUES (78, 'user_1702839563497');
INSERT INTO public.users VALUES (79, 'user_1702839563496');
INSERT INTO public.users VALUES (80, 'Esmeralda');
INSERT INTO public.users VALUES (81, 'Jiri');
INSERT INTO public.users VALUES (82, 'Brona');
INSERT INTO public.users VALUES (83, 'Vera');
INSERT INTO public.users VALUES (84, 'Feri');
INSERT INTO public.users VALUES (85, 'user_1702840138808');
INSERT INTO public.users VALUES (86, 'user_1702840138807');
INSERT INTO public.users VALUES (87, 'Marta');
INSERT INTO public.users VALUES (88, 'user_1702840262769');
INSERT INTO public.users VALUES (89, 'user_1702840262768');
INSERT INTO public.users VALUES (90, 'user_1702840323103');
INSERT INTO public.users VALUES (91, 'user_1702840323102');
INSERT INTO public.users VALUES (92, 'user_1702841534282');
INSERT INTO public.users VALUES (93, 'user_1702841534281');
INSERT INTO public.users VALUES (94, 'user_1702841739194');
INSERT INTO public.users VALUES (95, 'user_1702841739193');
INSERT INTO public.users VALUES (96, 'user_1702842005635');
INSERT INTO public.users VALUES (97, 'user_1702842005634');
INSERT INTO public.users VALUES (98, 'user_1702842068630');
INSERT INTO public.users VALUES (99, 'user_1702842068629');
INSERT INTO public.users VALUES (100, 'user_1702842087089');
INSERT INTO public.users VALUES (101, 'user_1702842087088');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 178, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 101, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

