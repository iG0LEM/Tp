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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: equipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipos (
    id integer NOT NULL,
    pais character varying(100) NOT NULL,
    trofeos integer NOT NULL,
    goleador character varying(100) NOT NULL
);


ALTER TABLE public.equipos OWNER TO postgres;

--
-- Name: equipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipos_id_seq OWNER TO postgres;

--
-- Name: equipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipos_id_seq OWNED BY public.equipos.id;


--
-- Name: goleadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goleadores (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    equipo_id integer NOT NULL,
    goles integer NOT NULL
);


ALTER TABLE public.goleadores OWNER TO postgres;

--
-- Name: goleadores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.goleadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goleadores_id_seq OWNER TO postgres;

--
-- Name: goleadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.goleadores_id_seq OWNED BY public.goleadores.id;


--
-- Name: trofeos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trofeos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    anio integer NOT NULL,
    equipo_id integer NOT NULL
);


ALTER TABLE public.trofeos OWNER TO postgres;

--
-- Name: trofeos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trofeos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trofeos_id_seq OWNER TO postgres;

--
-- Name: trofeos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trofeos_id_seq OWNED BY public.trofeos.id;


--
-- Name: equipos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos ALTER COLUMN id SET DEFAULT nextval('public.equipos_id_seq'::regclass);


--
-- Name: goleadores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goleadores ALTER COLUMN id SET DEFAULT nextval('public.goleadores_id_seq'::regclass);


--
-- Name: trofeos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos ALTER COLUMN id SET DEFAULT nextval('public.trofeos_id_seq'::regclass);


--
-- Name: equipos equipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id);


--
-- Name: goleadores goleadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goleadores
    ADD CONSTRAINT goleadores_pkey PRIMARY KEY (id);


--
-- Name: trofeos trofeos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT trofeos_pkey PRIMARY KEY (id);


--
-- Name: goleadores goleadores_equipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goleadores
    ADD CONSTRAINT goleadores_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.equipos(id);


--
-- Name: trofeos trofeos_equipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trofeos
    ADD CONSTRAINT trofeos_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.equipos(id);


--
-- PostgreSQL database dump complete
--

