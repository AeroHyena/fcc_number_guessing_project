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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 13);
INSERT INTO public.games VALUES (2, 3, 838);
INSERT INTO public.games VALUES (3, 3, 824);
INSERT INTO public.games VALUES (4, 4, 489);
INSERT INTO public.games VALUES (5, 4, 719);
INSERT INTO public.games VALUES (6, 3, 509);
INSERT INTO public.games VALUES (7, 3, 733);
INSERT INTO public.games VALUES (8, 3, 734);
INSERT INTO public.games VALUES (9, 3, 90);
INSERT INTO public.games VALUES (10, 7, 195);
INSERT INTO public.games VALUES (11, 7, 437);
INSERT INTO public.games VALUES (12, 8, 859);
INSERT INTO public.games VALUES (13, 8, 740);
INSERT INTO public.games VALUES (14, 7, 264);
INSERT INTO public.games VALUES (15, 7, 739);
INSERT INTO public.games VALUES (16, 7, 740);
INSERT INTO public.games VALUES (17, 7, 360);
INSERT INTO public.games VALUES (18, 9, 487);
INSERT INTO public.games VALUES (19, 9, 52);
INSERT INTO public.games VALUES (20, 10, 676);
INSERT INTO public.games VALUES (21, 10, 338);
INSERT INTO public.games VALUES (22, 9, 906);
INSERT INTO public.games VALUES (23, 9, 242);
INSERT INTO public.games VALUES (24, 9, 243);
INSERT INTO public.games VALUES (25, 9, 16);
INSERT INTO public.games VALUES (26, 11, 2);
INSERT INTO public.games VALUES (27, 11, 334);
INSERT INTO public.games VALUES (28, 12, 19);
INSERT INTO public.games VALUES (29, 12, 507);
INSERT INTO public.games VALUES (30, 11, 490);
INSERT INTO public.games VALUES (31, 11, 366);
INSERT INTO public.games VALUES (32, 11, 367);
INSERT INTO public.games VALUES (33, 11, 175);
INSERT INTO public.games VALUES (34, 13, 157);
INSERT INTO public.games VALUES (35, 13, 75);
INSERT INTO public.games VALUES (36, 14, 957);
INSERT INTO public.games VALUES (37, 14, 451);
INSERT INTO public.games VALUES (38, 13, 632);
INSERT INTO public.games VALUES (39, 13, 600);
INSERT INTO public.games VALUES (40, 13, 601);
INSERT INTO public.games VALUES (41, 13, 695);
INSERT INTO public.games VALUES (42, 15, 361);
INSERT INTO public.games VALUES (43, 15, 42);
INSERT INTO public.games VALUES (44, 16, 22);
INSERT INTO public.games VALUES (45, 16, 133);
INSERT INTO public.games VALUES (46, 15, 569);
INSERT INTO public.games VALUES (47, 15, 220);
INSERT INTO public.games VALUES (48, 15, 221);
INSERT INTO public.games VALUES (49, 15, 336);
INSERT INTO public.games VALUES (50, 18, 927);
INSERT INTO public.games VALUES (51, 18, 375);
INSERT INTO public.games VALUES (52, 19, 873);
INSERT INTO public.games VALUES (53, 19, 366);
INSERT INTO public.games VALUES (54, 18, 310);
INSERT INTO public.games VALUES (55, 18, 139);
INSERT INTO public.games VALUES (56, 18, 140);
INSERT INTO public.games VALUES (57, 18, 605);
INSERT INTO public.games VALUES (58, 20, 404);
INSERT INTO public.games VALUES (59, 20, 859);
INSERT INTO public.games VALUES (60, 21, 653);
INSERT INTO public.games VALUES (61, 21, 364);
INSERT INTO public.games VALUES (62, 20, 961);
INSERT INTO public.games VALUES (63, 20, 241);
INSERT INTO public.games VALUES (64, 20, 242);
INSERT INTO public.games VALUES (65, 20, 456);
INSERT INTO public.games VALUES (66, 22, 767);
INSERT INTO public.games VALUES (67, 22, 748);
INSERT INTO public.games VALUES (68, 23, 104);
INSERT INTO public.games VALUES (69, 23, 99);
INSERT INTO public.games VALUES (70, 22, 480);
INSERT INTO public.games VALUES (71, 22, 803);
INSERT INTO public.games VALUES (72, 22, 804);
INSERT INTO public.games VALUES (73, 22, 305);
INSERT INTO public.games VALUES (74, 24, 484);
INSERT INTO public.games VALUES (75, 24, 421);
INSERT INTO public.games VALUES (76, 25, 630);
INSERT INTO public.games VALUES (77, 25, 26);
INSERT INTO public.games VALUES (78, 24, 446);
INSERT INTO public.games VALUES (79, 24, 179);
INSERT INTO public.games VALUES (80, 24, 180);
INSERT INTO public.games VALUES (81, 24, 521);
INSERT INTO public.games VALUES (82, 26, 951);
INSERT INTO public.games VALUES (83, 26, 75);
INSERT INTO public.games VALUES (84, 27, 980);
INSERT INTO public.games VALUES (85, 27, 527);
INSERT INTO public.games VALUES (86, 26, 708);
INSERT INTO public.games VALUES (87, 26, 421);
INSERT INTO public.games VALUES (88, 26, 422);
INSERT INTO public.games VALUES (89, 26, 292);
INSERT INTO public.games VALUES (90, 28, 719);
INSERT INTO public.games VALUES (91, 28, 208);
INSERT INTO public.games VALUES (92, 29, 706);
INSERT INTO public.games VALUES (93, 29, 461);
INSERT INTO public.games VALUES (94, 28, 287);
INSERT INTO public.games VALUES (95, 28, 83);
INSERT INTO public.games VALUES (96, 28, 84);
INSERT INTO public.games VALUES (97, 28, 986);
INSERT INTO public.games VALUES (98, 30, 293);
INSERT INTO public.games VALUES (99, 30, 270);
INSERT INTO public.games VALUES (100, 31, 128);
INSERT INTO public.games VALUES (101, 31, 280);
INSERT INTO public.games VALUES (102, 30, 518);
INSERT INTO public.games VALUES (103, 30, 571);
INSERT INTO public.games VALUES (104, 30, 572);
INSERT INTO public.games VALUES (105, 30, 683);
INSERT INTO public.games VALUES (106, 32, 946);
INSERT INTO public.games VALUES (107, 32, 251);
INSERT INTO public.games VALUES (108, 33, 758);
INSERT INTO public.games VALUES (109, 33, 985);
INSERT INTO public.games VALUES (110, 32, 234);
INSERT INTO public.games VALUES (111, 32, 707);
INSERT INTO public.games VALUES (112, 32, 708);
INSERT INTO public.games VALUES (113, 32, 164);
INSERT INTO public.games VALUES (114, 34, 550);
INSERT INTO public.games VALUES (115, 34, 679);
INSERT INTO public.games VALUES (116, 35, 803);
INSERT INTO public.games VALUES (117, 35, 166);
INSERT INTO public.games VALUES (118, 34, 889);
INSERT INTO public.games VALUES (119, 34, 527);
INSERT INTO public.games VALUES (120, 34, 528);
INSERT INTO public.games VALUES (121, 34, 295);
INSERT INTO public.games VALUES (122, 36, 741);
INSERT INTO public.games VALUES (123, 36, 366);
INSERT INTO public.games VALUES (124, 37, 611);
INSERT INTO public.games VALUES (125, 37, 862);
INSERT INTO public.games VALUES (126, 36, 100);
INSERT INTO public.games VALUES (127, 36, 506);
INSERT INTO public.games VALUES (128, 36, 507);
INSERT INTO public.games VALUES (129, 36, 596);
INSERT INTO public.games VALUES (130, 38, 820);
INSERT INTO public.games VALUES (131, 38, 12);
INSERT INTO public.games VALUES (132, 39, 617);
INSERT INTO public.games VALUES (133, 39, 757);
INSERT INTO public.games VALUES (134, 38, 505);
INSERT INTO public.games VALUES (135, 38, 496);
INSERT INTO public.games VALUES (136, 38, 497);
INSERT INTO public.games VALUES (137, 38, 606);
INSERT INTO public.games VALUES (138, 40, 537);
INSERT INTO public.games VALUES (139, 40, 753);
INSERT INTO public.games VALUES (140, 41, 834);
INSERT INTO public.games VALUES (141, 41, 389);
INSERT INTO public.games VALUES (142, 40, 620);
INSERT INTO public.games VALUES (143, 40, 32);
INSERT INTO public.games VALUES (144, 40, 33);
INSERT INTO public.games VALUES (145, 40, 936);
INSERT INTO public.games VALUES (146, 42, 69);
INSERT INTO public.games VALUES (147, 42, 350);
INSERT INTO public.games VALUES (148, 43, 862);
INSERT INTO public.games VALUES (149, 43, 198);
INSERT INTO public.games VALUES (150, 42, 702);
INSERT INTO public.games VALUES (151, 42, 36);
INSERT INTO public.games VALUES (152, 42, 37);
INSERT INTO public.games VALUES (153, 42, 457);
INSERT INTO public.games VALUES (154, 44, 749);
INSERT INTO public.games VALUES (155, 44, 15);
INSERT INTO public.games VALUES (156, 45, 445);
INSERT INTO public.games VALUES (157, 45, 825);
INSERT INTO public.games VALUES (158, 44, 362);
INSERT INTO public.games VALUES (159, 44, 823);
INSERT INTO public.games VALUES (160, 44, 824);
INSERT INTO public.games VALUES (161, 44, 694);
INSERT INTO public.games VALUES (162, 46, 914);
INSERT INTO public.games VALUES (163, 46, 785);
INSERT INTO public.games VALUES (164, 47, 996);
INSERT INTO public.games VALUES (165, 47, 48);
INSERT INTO public.games VALUES (166, 46, 63);
INSERT INTO public.games VALUES (167, 46, 215);
INSERT INTO public.games VALUES (168, 46, 216);
INSERT INTO public.games VALUES (169, 46, 861);
INSERT INTO public.games VALUES (170, 48, 892);
INSERT INTO public.games VALUES (171, 48, 977);
INSERT INTO public.games VALUES (172, 49, 217);
INSERT INTO public.games VALUES (173, 49, 613);
INSERT INTO public.games VALUES (174, 48, 290);
INSERT INTO public.games VALUES (175, 48, 945);
INSERT INTO public.games VALUES (176, 48, 946);
INSERT INTO public.games VALUES (177, 48, 202);
INSERT INTO public.games VALUES (178, 50, 717);
INSERT INTO public.games VALUES (179, 50, 856);
INSERT INTO public.games VALUES (180, 51, 691);
INSERT INTO public.games VALUES (181, 51, 905);
INSERT INTO public.games VALUES (182, 50, 625);
INSERT INTO public.games VALUES (183, 50, 373);
INSERT INTO public.games VALUES (184, 50, 374);
INSERT INTO public.games VALUES (185, 50, 753);
INSERT INTO public.games VALUES (186, 52, 615);
INSERT INTO public.games VALUES (187, 52, 954);
INSERT INTO public.games VALUES (188, 53, 357);
INSERT INTO public.games VALUES (189, 53, 597);
INSERT INTO public.games VALUES (190, 52, 215);
INSERT INTO public.games VALUES (191, 52, 132);
INSERT INTO public.games VALUES (192, 52, 133);
INSERT INTO public.games VALUES (193, 52, 365);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Aero');
INSERT INTO public.users VALUES (2, 'AEro');
INSERT INTO public.users VALUES (3, 'user_1724329686156');
INSERT INTO public.users VALUES (4, 'user_1724329686155');
INSERT INTO public.users VALUES (5, 'user_1724329978040');
INSERT INTO public.users VALUES (6, 'user_1724329978039');
INSERT INTO public.users VALUES (7, 'user_1724330363996');
INSERT INTO public.users VALUES (8, 'user_1724330363995');
INSERT INTO public.users VALUES (9, 'user_1724330402287');
INSERT INTO public.users VALUES (10, 'user_1724330402286');
INSERT INTO public.users VALUES (11, 'user_1724330443412');
INSERT INTO public.users VALUES (12, 'user_1724330443411');
INSERT INTO public.users VALUES (13, 'user_1724330601487');
INSERT INTO public.users VALUES (14, 'user_1724330601486');
INSERT INTO public.users VALUES (15, 'user_1724332522783');
INSERT INTO public.users VALUES (16, 'user_1724332522782');
INSERT INTO public.users VALUES (17, 'Aaa');
INSERT INTO public.users VALUES (18, 'user_1724333076180');
INSERT INTO public.users VALUES (19, 'user_1724333076179');
INSERT INTO public.users VALUES (20, 'user_1724333080148');
INSERT INTO public.users VALUES (21, 'user_1724333080147');
INSERT INTO public.users VALUES (22, 'user_1724333479358');
INSERT INTO public.users VALUES (23, 'user_1724333479357');
INSERT INTO public.users VALUES (24, 'user_1724333505127');
INSERT INTO public.users VALUES (25, 'user_1724333505126');
INSERT INTO public.users VALUES (26, 'user_1724333566707');
INSERT INTO public.users VALUES (27, 'user_1724333566706');
INSERT INTO public.users VALUES (28, 'user_1724334858346');
INSERT INTO public.users VALUES (29, 'user_1724334858345');
INSERT INTO public.users VALUES (30, 'user_1724334877402');
INSERT INTO public.users VALUES (31, 'user_1724334877401');
INSERT INTO public.users VALUES (32, 'user_1724335049695');
INSERT INTO public.users VALUES (33, 'user_1724335049694');
INSERT INTO public.users VALUES (34, 'user_1724335279733');
INSERT INTO public.users VALUES (35, 'user_1724335279732');
INSERT INTO public.users VALUES (36, 'user_1724335306346');
INSERT INTO public.users VALUES (37, 'user_1724335306345');
INSERT INTO public.users VALUES (38, 'user_1724335316674');
INSERT INTO public.users VALUES (39, 'user_1724335316673');
INSERT INTO public.users VALUES (40, 'user_1724335345306');
INSERT INTO public.users VALUES (41, 'user_1724335345305');
INSERT INTO public.users VALUES (42, 'user_1724335358581');
INSERT INTO public.users VALUES (43, 'user_1724335358580');
INSERT INTO public.users VALUES (44, 'user_1724335382074');
INSERT INTO public.users VALUES (45, 'user_1724335382073');
INSERT INTO public.users VALUES (46, 'user_1724335414830');
INSERT INTO public.users VALUES (47, 'user_1724335414829');
INSERT INTO public.users VALUES (48, 'user_1724335441123');
INSERT INTO public.users VALUES (49, 'user_1724335441122');
INSERT INTO public.users VALUES (50, 'user_1724335958880');
INSERT INTO public.users VALUES (51, 'user_1724335958879');
INSERT INTO public.users VALUES (52, 'user_1724335991605');
INSERT INTO public.users VALUES (53, 'user_1724335991604');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 193, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 53, true);


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
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

