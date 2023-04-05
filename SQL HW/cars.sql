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
-- Name: avto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avto (
    id integer NOT NULL,
    name_a character varying(250),
    avto_id integer
);


ALTER TABLE public.avto OWNER TO postgres;

--
-- Name: avto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.avto_id_seq OWNER TO postgres;

--
-- Name: avto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avto_id_seq OWNED BY public.avto.id;


--
-- Name: avto_manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avto_manufacturer (
    id integer NOT NULL,
    manufactur_id character varying(250),
    avto_id integer
);


ALTER TABLE public.avto_manufacturer OWNER TO postgres;

--
-- Name: avto_manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avto_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.avto_manufacturer_id_seq OWNER TO postgres;

--
-- Name: avto_manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avto_manufacturer_id_seq OWNED BY public.avto_manufacturer.id;


--
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturer (
    id integer NOT NULL,
    name_m character varying(250),
    manufacturer_id integer
);


ALTER TABLE public.manufacturer OWNER TO postgres;

--
-- Name: manufacturer_avto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturer_avto (
    id integer NOT NULL,
    manufacturer_id character varying(250),
    avto_id integer
);


ALTER TABLE public.manufacturer_avto OWNER TO postgres;

--
-- Name: manufacturer_avto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturer_avto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturer_avto_id_seq OWNER TO postgres;

--
-- Name: manufacturer_avto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturer_avto_id_seq OWNED BY public.manufacturer_avto.id;


--
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    id integer NOT NULL,
    name character varying(250),
    model_id integer
);


ALTER TABLE public.model OWNER TO postgres;

--
-- Name: manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturer_id_seq OWNER TO postgres;

--
-- Name: manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturer_id_seq OWNED BY public.model.id;


--
-- Name: manufacturer_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.manufacturer_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manufacturer_id_seq1 OWNER TO postgres;

--
-- Name: manufacturer_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.manufacturer_id_seq1 OWNED BY public.manufacturer.id;


--
-- Name: avto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avto ALTER COLUMN id SET DEFAULT nextval('public.avto_id_seq'::regclass);


--
-- Name: avto_manufacturer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avto_manufacturer ALTER COLUMN id SET DEFAULT nextval('public.avto_manufacturer_id_seq'::regclass);


--
-- Name: manufacturer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer ALTER COLUMN id SET DEFAULT nextval('public.manufacturer_id_seq1'::regclass);


--
-- Name: manufacturer_avto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer_avto ALTER COLUMN id SET DEFAULT nextval('public.manufacturer_avto_id_seq'::regclass);


--
-- Name: model id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN id SET DEFAULT nextval('public.manufacturer_id_seq'::regclass);


--
-- Data for Name: avto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avto (id, name_a, avto_id) FROM stdin;
1	Volkswagen	\N
2	Toyota	\N
3	Ford	\N
4	BMW	\N
12	VAZ	\N
\.


--
-- Data for Name: avto_manufacturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avto_manufacturer (id, manufactur_id, avto_id) FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Data for Name: manufacturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturer (id, name_m, manufacturer_id) FROM stdin;
1	Volkswagen_AG	\N
2	Toyota_Motors_Corporation	\N
3	Ford_Motor_Company	\N
4	BMW	\N
\.


--
-- Data for Name: manufacturer_avto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturer_avto (id, manufacturer_id, avto_id) FROM stdin;
1	1	1
2	1	1
3	2	2
4	2	2
5	3	3
6	3	3
7	4	4
\.


--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model (id, name, model_id) FROM stdin;
15	Passat	1
16	Golf	1
17	Camry	2
18	Corolla	2
19	Fiesta	3
20	Focus	3
21	E_36	4
22	Aveo	\N
\.


--
-- Name: avto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avto_id_seq', 12, true);


--
-- Name: avto_manufacturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avto_manufacturer_id_seq', 3, true);


--
-- Name: manufacturer_avto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturer_avto_id_seq', 7, true);


--
-- Name: manufacturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturer_id_seq', 22, true);


--
-- Name: manufacturer_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.manufacturer_id_seq1', 4, true);


--
-- PostgreSQL database dump complete
--

