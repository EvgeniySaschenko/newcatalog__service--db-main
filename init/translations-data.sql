--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.translations (
    "translationId" integer NOT NULL,
    key text NOT NULL,
    text jsonb DEFAULT '{"ru": "", "ua": ""}'::jsonb,
    type integer NOT NULL,
    "dateCreate" timestamp with time zone,
    "dateUpdate" timestamp with time zone
);


ALTER TABLE public.translations OWNER TO postgres;

--
-- Name: translations_translationId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."translations_translationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."translations_translationId_seq" OWNER TO postgres;

--
-- Name: translations_translationId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."translations_translationId_seq" OWNED BY public.translations."translationId";


--
-- Name: translations translationId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations ALTER COLUMN "translationId" SET DEFAULT nextval('public."translations_translationId_seq"'::regclass);


--
-- Data for Name: translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.translations ("translationId", key, text, type, "dateCreate", "dateUpdate") FROM stdin;
\.


--
-- Name: translations_translationId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."translations_translationId_seq"', 1, false);


--
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY ("translationId");


--
-- PostgreSQL database dump complete
--

