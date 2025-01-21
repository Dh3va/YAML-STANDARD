--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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
-- Name: users; Type: TABLE; Schema: public; Owner: ps_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO ps_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ps_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ps_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ps_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ps_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ps_user
--

COPY public.users (id, name, email, password) FROM stdin;
1	Alessandro	alessandro.pranzo@gmail.com	\\x674141414141426e6b414f6765357a65545142597232716a7431627a774d6c6d3553704f4a476d6367743761424c7a5f503434666d6c52534b4c4b3377614c304c303234696938744a515a4f4948376f58744f683350546b716267734b5a537230413d3d
2	Baba	baba.pranzo@gmail.com	\\x674141414141426e6b414f39687a716e3279377337754a564f6c6b6d385439676f483542565f7a7035576d5569685f47666931657a4f4e4f773736686439523178367763366733326a62675a6277587a68656850325971495135707356786d752d513d3d
3	Baba	baba.pranzo@gmail.com	\\x674141414141426e6b414f2d4776464571726944737a6645453648386a424368666d4a4b37545246364947376d47705f744c414547353773375a74524941516d6575757a6e5f323236475f55414c732d5247696b7979324a6a596d7071786d4563673d3d
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ps_user
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ps_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

