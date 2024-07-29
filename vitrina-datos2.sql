--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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

--
-- Data for Name: trofeos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (1, 'Mundial', 1986, 1);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (2, 'Copa América', 1991, 1);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (3, 'Copa América', 1993, 1);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (4, 'Copa América', 2021, 1);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (5, 'Mundial', 1958, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (6, 'Mundial', 1962, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (7, 'Mundial', 1970, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (8, 'Mundial', 1994, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (9, 'Mundial', 2002, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (10, 'Copa América', 1989, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (11, 'Copa América', 1997, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (12, 'Copa América', 1999, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (13, 'Copa América', 2004, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (14, 'Copa América', 2007, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (15, 'Copa América', 2019, 2);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (16, 'Copa América Finalista', 1993, 3);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (17, 'Copa América Finalista', 2001, 3);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (18, 'Copa América', 2015, 4);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (19, 'Copa América', 2016, 4);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (20, 'Mundial', 1930, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (21, 'Mundial', 1950, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (22, 'Copa América', 1916, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (23, 'Copa América', 1917, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (24, 'Copa América', 1920, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (25, 'Copa América', 1923, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (26, 'Copa América', 1924, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (27, 'Copa América', 1926, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (28, 'Copa América', 1935, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (29, 'Copa América', 1942, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (30, 'Copa América', 1956, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (31, 'Copa América', 1959, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (32, 'Copa América', 1967, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (33, 'Copa América', 1983, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (34, 'Copa América', 1987, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (35, 'Copa América', 1995, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (36, 'Copa América', 2011, 5);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (37, 'Mundial', 1998, 6);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (38, 'Mundial', 2018, 6);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (39, 'Eurocopa', 1984, 6);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (40, 'Eurocopa', 2000, 6);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (41, 'Mundial', 2010, 7);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (42, 'Eurocopa', 1964, 7);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (43, 'Eurocopa', 2008, 7);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (44, 'Eurocopa', 2012, 7);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (45, 'Mundial', 1934, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (46, 'Mundial', 1938, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (47, 'Mundial', 1982, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (48, 'Mundial', 2006, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (49, 'Eurocopa', 1968, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (50, 'Eurocopa', 2020, 8);
INSERT INTO public.trofeos (id, nombre, anio, equipo_id) VALUES (52, 'Copa América', 2024, 1);


--
-- Name: trofeos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trofeos_id_seq', 52, true);


--
-- Data for Name: goleadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (1, 'Messi', 1, 70);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (2, 'Pelé', 2, 77);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (3, 'Hugo Sánchez', 3, 29);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (4, 'Alexis Sánchez', 4, 46);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (5, 'Luis Suárez', 5, 55);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (6, 'Thierry Henry', 6, 51);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (7, 'David Villa', 7, 59);
INSERT INTO public.goleadores (id, nombre, equipo_id, goles) VALUES (8, 'Roberto Baggio', 8, 27);

--
-- PostgreSQL database dump complete
--

