--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: goals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."goals" (
    id bigint NOT NULL,
    month_number integer NOT NULL,
    year_number integer NOT NULL,
    month_goal money NOT NULL
);


ALTER TABLE public."goals" OWNER TO postgres;

--
-- Name: goals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."goals" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."goals_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."sales" (
    id bigint NOT NULL,
    date date NOT NULL,
    amount money NOT NULL,
    id_seller bigint NOT NULL
);


ALTER TABLE public."sales" OWNER TO postgres;

--
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."sales" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."sales_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."sellers" (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public."sellers" OWNER TO postgres;

--
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."sellers" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."sellers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Data for Name: goals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."goals" (id, month_number, year_number, month_goal) FROM stdin;
\.


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."sales" (id, date, amount, id_seller) FROM stdin;
\.


--
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."sellers" (id, name) FROM stdin;
\.


--
-- Name: goals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."goals_id_seq"', 1, false);


--
-- Name: sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."sales_id_seq"', 1, false);


--
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."sellers_id_seq"', 1, false);


--
-- Name: goals goals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."goals"
    ADD CONSTRAINT "goals_pkey" PRIMARY KEY (id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."sales"
    ADD CONSTRAINT "sales_pkey" PRIMARY KEY (id);


--
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."sellers"
    ADD CONSTRAINT "sellers_pkey" PRIMARY KEY (id);


--
-- Name: sales sellersFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."sales"
    ADD CONSTRAINT "sellersFK" FOREIGN KEY (id_seller) REFERENCES public."sellers"(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

