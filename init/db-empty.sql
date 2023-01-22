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
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    "userId" integer DEFAULT 0,
    name jsonb DEFAULT '{}'::jsonb,
    descr jsonb DEFAULT '{}'::jsonb,
    "isHiden" boolean DEFAULT true,
    "typeRating" character varying(20),
    "typeSort" character varying(20),
    "typeDisplay" character varying(20),
    "sectionsIds" jsonb,
    "visitorId" integer DEFAULT 0,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: ratings_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings_items (
    id integer NOT NULL,
    "ratingId" integer NOT NULL,
    "imgId" integer DEFAULT 0,
    url text DEFAULT ''::text NOT NULL,
    ref character varying(255) DEFAULT ''::character varying,
    name jsonb DEFAULT '{}'::jsonb,
    "pageHtml" text DEFAULT ''::text,
    "labelsIds" jsonb DEFAULT '{}'::jsonb,
    priority integer DEFAULT 0,
    "alexaRankContry" integer DEFAULT 10000000,
    "alexaRank" integer DEFAULT 10000000,
    "alexaJson" jsonb DEFAULT '{}'::jsonb,
    click integer DEFAULT 0,
    "isHiden" boolean DEFAULT false,
    "dateCreate" timestamp with time zone,
    whois jsonb
);


ALTER TABLE public.ratings_items OWNER TO postgres;

--
-- Name: ratings_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_items_id_seq OWNER TO postgres;

--
-- Name: ratings_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_items_id_seq OWNED BY public.ratings_items.id;


--
-- Name: ratings_items_img; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings_items_img (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying,
    color character varying(255) DEFAULT ''::character varying,
    host character varying(255) DEFAULT ''::character varying,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.ratings_items_img OWNER TO postgres;

--
-- Name: ratings_items_img_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_items_img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_items_img_id_seq OWNER TO postgres;

--
-- Name: ratings_items_img_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_items_img_id_seq OWNED BY public.ratings_items_img.id;


--
-- Name: ratings_labels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings_labels (
    id integer NOT NULL,
    name jsonb DEFAULT '{}'::jsonb,
    color character varying(7) NOT NULL,
    "ratingId" integer NOT NULL,
    "visitorId" integer,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.ratings_labels OWNER TO postgres;

--
-- Name: ratings_labels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_labels_id_seq OWNER TO postgres;

--
-- Name: ratings_labels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_labels_id_seq OWNED BY public.ratings_labels.id;


--
-- Name: screens_processing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screens_processing (
    id integer NOT NULL,
    "ratingId" integer,
    "imgId" integer,
    "typeRating" integer,
    host character varying(255),
    url text DEFAULT ''::text,
    "isСanceled" boolean DEFAULT false,
    "isCreatedScreen" boolean DEFAULT false,
    "isProcessed" boolean DEFAULT true,
    "isCreatedLogo" boolean DEFAULT false,
    "isError" boolean DEFAULT false,
    "errorMessage" jsonb DEFAULT '""'::jsonb,
    "dateUpdate" timestamp with time zone,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.screens_processing OWNER TO postgres;

--
-- Name: screens_processing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.screens_processing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.screens_processing_id_seq OWNER TO postgres;

--
-- Name: screens_processing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.screens_processing_id_seq OWNED BY public.screens_processing.id;


--
-- Name: sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sections (
    id integer NOT NULL,
    "parentId" integer,
    name jsonb DEFAULT '{}'::jsonb,
    priority integer DEFAULT 0,
    "isHiden" boolean DEFAULT true,
    "visitorId" integer,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.sections OWNER TO postgres;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_id_seq OWNER TO postgres;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: sites_processing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sites_processing (
    id integer NOT NULL,
    "ratingId" integer,
    "imgId" integer,
    "typeRating" integer,
    host character varying(255),
    url text DEFAULT ''::text,
    "isСanceled" boolean DEFAULT false,
    "isCreated" boolean DEFAULT false,
    "isProcessed" boolean DEFAULT true,
    "isError" boolean DEFAULT false,
    "errorMessage" jsonb DEFAULT '""'::jsonb,
    "dateUpdate" timestamp with time zone,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.sites_processing OWNER TO postgres;

--
-- Name: sites_processing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sites_processing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sites_processing_id_seq OWNER TO postgres;

--
-- Name: sites_processing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sites_processing_id_seq OWNED BY public.sites_processing.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    avatar character varying(32) DEFAULT ''::character varying,
    name character varying(100),
    mail character varying(255),
    password character varying(255) NOT NULL,
    "accessRight" integer DEFAULT 1,
    "visitorId" integer,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: ratings_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items ALTER COLUMN id SET DEFAULT nextval('public.ratings_items_id_seq'::regclass);


--
-- Name: ratings_items_img id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items_img ALTER COLUMN id SET DEFAULT nextval('public.ratings_items_img_id_seq'::regclass);


--
-- Name: ratings_labels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_labels ALTER COLUMN id SET DEFAULT nextval('public.ratings_labels_id_seq'::regclass);


--
-- Name: screens_processing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screens_processing ALTER COLUMN id SET DEFAULT nextval('public.screens_processing_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: sites_processing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites_processing ALTER COLUMN id SET DEFAULT nextval('public.sites_processing_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: ratings_items_img ratings_items_img_host_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items_img
    ADD CONSTRAINT ratings_items_img_host_key UNIQUE (host);


--
-- Name: ratings_items_img ratings_items_img_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items_img
    ADD CONSTRAINT ratings_items_img_pkey PRIMARY KEY (id);


--
-- Name: ratings_items ratings_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items
    ADD CONSTRAINT ratings_items_pkey PRIMARY KEY (id);


--
-- Name: ratings_labels ratings_labels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_labels
    ADD CONSTRAINT ratings_labels_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: screens_processing screens_processing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screens_processing
    ADD CONSTRAINT screens_processing_pkey PRIMARY KEY (id);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: sites_processing sites_processing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites_processing
    ADD CONSTRAINT sites_processing_pkey PRIMARY KEY (id);


--
-- Name: users users_mail_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_mail_key UNIQUE (mail);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

