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
-- Name: labels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.labels (
    "labelId" integer NOT NULL,
    name jsonb DEFAULT '{}'::jsonb,
    color character varying(7) NOT NULL,
    "ratingId" integer NOT NULL,
    "visitorId" integer,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.labels OWNER TO postgres;

--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    "ratingId" integer NOT NULL,
    "userId" integer DEFAULT 0,
    name jsonb DEFAULT '{}'::jsonb,
    descr jsonb DEFAULT '{}'::jsonb,
    "isHiden" boolean DEFAULT true,
    "sectionsIds" jsonb,
    "visitorId" integer DEFAULT 0,
    "dateCreate" timestamp with time zone,
    "typeRating" integer DEFAULT 0,
    "typeSort" integer DEFAULT 0,
    "typeDisplay" integer DEFAULT 0
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

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings."ratingId";


--
-- Name: ratings_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings_items (
    "ratingItemId" integer NOT NULL,
    "ratingId" integer NOT NULL,
    "siteId" integer DEFAULT 0,
    url text DEFAULT ''::text NOT NULL,
    name jsonb DEFAULT '{}'::jsonb,
    "labelsIds" jsonb DEFAULT '{}'::jsonb,
    priority integer DEFAULT 0,
    click integer DEFAULT 0,
    "isHiden" boolean DEFAULT false,
    "dateCreate" timestamp with time zone
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

ALTER SEQUENCE public.ratings_items_id_seq OWNED BY public.ratings_items."ratingItemId";


--
-- Name: sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sites (
    "siteId" integer NOT NULL,
    color character varying(255) DEFAULT ''::character varying,
    host character varying(255) DEFAULT ''::character varying,
    "dateCreate" timestamp with time zone,
    "alexaRank" integer DEFAULT 10000000,
    "dateDomainCreate" date,
    "siteLogoId" integer DEFAULT 0,
    "siteScreenshotId" integer,
    "dateLogoCreate" timestamp with time zone
);


ALTER TABLE public.sites OWNER TO postgres;

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

ALTER SEQUENCE public.ratings_items_img_id_seq OWNED BY public.sites."siteId";


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

ALTER SEQUENCE public.ratings_labels_id_seq OWNED BY public.labels."labelId";


--
-- Name: records_deleted; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.records_deleted (
    "recordDeletedId" integer NOT NULL,
    "tableName" character varying(255) NOT NULL,
    "tableId" integer NOT NULL,
    "tableRecord" jsonb NOT NULL,
    "dateCreate" timestamp with time zone
);


ALTER TABLE public.records_deleted OWNER TO postgres;

--
-- Name: records_deleted_recordDeletedId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."records_deleted_recordDeletedId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."records_deleted_recordDeletedId_seq" OWNER TO postgres;

--
-- Name: records_deleted_recordDeletedId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."records_deleted_recordDeletedId_seq" OWNED BY public.records_deleted."recordDeletedId";


--
-- Name: sites_screenshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sites_screenshots (
    "siteScreenshotId" integer NOT NULL,
    "siteId" integer,
    url text DEFAULT ''::text,
    "errorMessage" jsonb DEFAULT '""'::jsonb,
    "dateCreate" timestamp with time zone,
    "isUploadCustomScreenshot" boolean DEFAULT false,
    "dateScreenshotCreated" timestamp with time zone,
    "dateScreenshotError" timestamp with time zone
);


ALTER TABLE public.sites_screenshots OWNER TO postgres;

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

ALTER SEQUENCE public.screens_processing_id_seq OWNED BY public.sites_screenshots."siteScreenshotId";


--
-- Name: sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sections (
    "sectionId" integer NOT NULL,
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

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections."sectionId";


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
-- Name: labels labelId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.labels ALTER COLUMN "labelId" SET DEFAULT nextval('public.ratings_labels_id_seq'::regclass);


--
-- Name: ratings ratingId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN "ratingId" SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: ratings_items ratingItemId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items ALTER COLUMN "ratingItemId" SET DEFAULT nextval('public.ratings_items_id_seq'::regclass);


--
-- Name: records_deleted recordDeletedId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records_deleted ALTER COLUMN "recordDeletedId" SET DEFAULT nextval('public."records_deleted_recordDeletedId_seq"'::regclass);


--
-- Name: sections sectionId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections ALTER COLUMN "sectionId" SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: sites siteId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites ALTER COLUMN "siteId" SET DEFAULT nextval('public.ratings_items_img_id_seq'::regclass);


--
-- Name: sites_screenshots siteScreenshotId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites_screenshots ALTER COLUMN "siteScreenshotId" SET DEFAULT nextval('public.screens_processing_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: sites ratings_items_img_host_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT ratings_items_img_host_key UNIQUE (host);


--
-- Name: sites ratings_items_img_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites
    ADD CONSTRAINT ratings_items_img_pkey PRIMARY KEY ("siteId");


--
-- Name: ratings_items ratings_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings_items
    ADD CONSTRAINT ratings_items_pkey PRIMARY KEY ("ratingItemId");


--
-- Name: labels ratings_labels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT ratings_labels_pkey PRIMARY KEY ("labelId");


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY ("ratingId");


--
-- Name: records_deleted records_deleted_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.records_deleted
    ADD CONSTRAINT records_deleted_pkey PRIMARY KEY ("recordDeletedId");


--
-- Name: sites_screenshots screens_processing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sites_screenshots
    ADD CONSTRAINT screens_processing_pkey PRIMARY KEY ("siteScreenshotId");


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY ("sectionId");


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

