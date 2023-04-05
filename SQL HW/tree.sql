--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: men; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.men (
    id integer NOT NULL,
    number integer,
    fullname character varying(200)
);


ALTER TABLE public.men OWNER TO postgres;

--
-- Name: men_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.men_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.men_id_seq OWNER TO postgres;

--
-- Name: men_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.men_id_seq OWNED BY public.men.id;


--
-- Name: men id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.men ALTER COLUMN id SET DEFAULT nextval('public.men_id_seq'::regclass);


--
-- Data for Name: men; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.men (id, number, fullname) FROM stdin;
1	0	Roman Ivanovich
2	1	Max Romanovich
3	2	Ivan Maksimovich
4	3	Oleg Ivanovich
5	4	Dzavelin Olegovich
\.


--
-- Name: men_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.men_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

