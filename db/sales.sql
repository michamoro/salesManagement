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
-- Name: Goals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Goals" (
    id bigint NOT NULL,
    month_number integer NOT NULL,
    year_number integer NOT NULL,
    month_goal money NOT NULL
);


ALTER TABLE public."Goals" OWNER TO postgres;

--
-- Name: Goals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Goals" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Goals_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Name: Sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sales" (
    id bigint NOT NULL,
    date date NOT NULL,
    amount money NOT NULL,
    id_seller bigint NOT NULL
);


ALTER TABLE public."Sales" OWNER TO postgres;

--
-- Name: Sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Sales" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sales_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Name: Sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sellers" (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public."Sellers" OWNER TO postgres;

--
-- Name: Sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Sellers" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Sellers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- Data for Name: Goals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Goals" (id, month_number, year_number, month_goal) FROM stdin;
\.


--
-- Data for Name: Sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sales" (id, date, amount, id_seller) FROM stdin;
\.


--
-- Data for Name: Sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sellers" (id, name) FROM stdin;
\.


--
-- Name: Goals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Goals_id_seq"', 1, false);


--
-- Name: Sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sales_id_seq"', 1, false);


--
-- Name: Sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sellers_id_seq"', 1, false);


--
-- Name: Goals Goals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Goals"
    ADD CONSTRAINT "Goals_pkey" PRIMARY KEY (id);


--
-- Name: Sales Sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sales"
    ADD CONSTRAINT "Sales_pkey" PRIMARY KEY (id);


--
-- Name: Sellers Sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sellers"
    ADD CONSTRAINT "Sellers_pkey" PRIMARY KEY (id);


--
-- Name: Sales SellersFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sales"
    ADD CONSTRAINT "SellersFK" FOREIGN KEY (id_seller) REFERENCES public."Sellers"(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

