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
1	Server error	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.654+00	2023-04-03 17:45:00.654+00
2	Page not found	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.656+00	2023-04-03 17:45:00.656+00
3	Go to home	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.658+00	2023-04-03 17:45:00.658+00
4	The server is being updated	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.66+00	2023-04-03 17:45:00.661+00
5	Try refreshing the page a little later	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.663+00	2023-04-03 17:45:00.663+00
6	Refresh page	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.665+00	2023-04-03 17:45:00.665+00
7	Home	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.667+00	2023-04-03 17:45:00.667+00
8	Rating of Internet services	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.669+00	2023-04-03 17:45:00.669+00
9	Section	{"ru": "", "ua": ""}	3	2023-04-03 17:45:00.671+00	2023-04-03 17:45:00.671+00
10	Exit	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.832+00	2023-04-03 17:45:03.832+00
11	Yes	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.834+00	2023-04-03 17:45:03.834+00
12	No	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.835+00	2023-04-03 17:45:03.835+00
13	OK	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.837+00	2023-04-03 17:45:03.837+00
14	Description	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.839+00	2023-04-03 17:45:03.839+00
15	Screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.841+00	2023-04-03 17:45:03.841+00
16	Logo	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.843+00	2023-04-03 17:45:03.843+00
17	Edit site	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.845+00	2023-04-03 17:45:03.845+00
18	Add site	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.847+00	2023-04-03 17:45:03.847+00
19	Update	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.848+00	2023-04-03 17:45:03.848+00
20	You need to take a screenshot first	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.85+00	2023-04-03 17:45:03.85+00
21	For a subdomain, you can try to find the logo that is used for the domain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.852+00	2023-04-03 17:45:03.852+00
22	Based on current screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.853+00	2023-04-03 17:45:03.853+00
23	For subdomains, screenshots are not generated automatically, because the logos for the domain and subdomain can be the same	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.855+00	2023-04-03 17:45:03.855+00
24	The domain images will be linked to the subdomain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.857+00	2023-04-03 17:45:03.857+00
25	This means that when you edit the logo/color, the changes will show up wherever this screenshot is used	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.859+00	2023-04-03 17:45:03.859+00
26	Change the logo	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.861+00	2023-04-03 17:45:03.861+00
27	Site color	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.863+00	2023-04-03 17:45:03.863+00
28	Change color	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.865+00	2023-04-03 17:45:03.865+00
29	Logo or screenshot for the domain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.866+00	2023-04-03 17:45:03.866+00
30	Screeshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.868+00	2023-04-03 17:45:03.868+00
31	Check for availability	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.87+00	2023-04-03 17:45:03.87+00
32	Link images to a subdomain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.873+00	2023-04-03 17:45:03.873+00
33	A logo can be created on the "Create a logo" tab	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.874+00	2023-04-03 17:45:03.874+00
34	Domain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.877+00	2023-04-03 17:45:03.877+00
35	There are no logos or screenshots for this domain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.879+00	2023-04-03 17:45:03.879+00
36	Check	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.881+00	2023-04-03 17:45:03.881+00
37	A screenshot for this domain is in the process of being created	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.883+00	2023-04-03 17:45:03.883+00
38	There is already another image associated with the domain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.885+00	2023-04-03 17:45:03.885+00
39	Link this image?	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.886+00	2023-04-03 17:45:03.886+00
40	Domain images are tied to a subdomain	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.888+00	2023-04-03 17:45:03.888+00
41	Site color updated	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.889+00	2023-04-03 17:45:03.889+00
42	To create a logo, go to the "Create Logo" tab	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.891+00	2023-04-03 17:45:03.891+00
43	Link	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.894+00	2023-04-03 17:45:03.894+00
44	Name	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.896+00	2023-04-03 17:45:03.896+00
45	Labels	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.897+00	2023-04-03 17:45:03.897+00
46	Priority	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.899+00	2023-04-03 17:45:03.899+00
47	Hide	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.901+00	2023-04-03 17:45:03.901+00
48	Delete	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.902+00	2023-04-03 17:45:03.902+00
49	Save	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.904+00	2023-04-03 17:45:03.904+00
50	Create	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.905+00	2023-04-03 17:45:03.905+00
51	Added	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.907+00	2023-04-03 17:45:03.907+00
52	Modified	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.909+00	2023-04-03 17:45:03.909+00
53	Are you sure you want to delete?	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.912+00	2023-04-03 17:45:03.912+00
54	Removed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.914+00	2023-04-03 17:45:03.914+00
55	The site has been queued for taking a screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.916+00	2023-04-03 17:45:03.916+00
56	Screenshots are not generated automatically for subdomains	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.917+00	2023-04-03 17:45:03.918+00
57	There are no screenshots for this site	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.919+00	2023-04-03 17:45:03.919+00
58	Take new screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.921+00	2023-04-03 17:45:03.921+00
59	Upload screenshot manually	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.922+00	2023-04-03 17:45:03.922+00
60	Select screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.924+00	2023-04-03 17:45:03.924+00
61	An invalid file type has been selected	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.927+00	2023-04-03 17:45:03.927+00
62	There is already a screenshot for this site. Create new?	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.929+00	2023-04-03 17:45:03.929+00
63	The site has been added to the queue for taking a screenshot	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.93+00	2023-04-03 17:45:03.93+00
64	Screenshot uploaded	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.932+00	2023-04-03 17:45:03.932+00
65	Color	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.933+00	2023-04-03 17:45:03.933+00
66	Preview	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.935+00	2023-04-03 17:45:03.935+00
67	Crop	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.936+00	2023-04-03 17:45:03.936+00
68	Ratings list	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.937+00	2023-04-03 17:45:03.937+00
69	Sections list	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.939+00	2023-04-03 17:45:03.939+00
70	Cache control	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.94+00	2023-04-03 17:45:03.94+00
71	User profile	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.943+00	2023-04-03 17:45:03.943+00
72	App Settings	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.945+00	2023-04-03 17:45:03.945+00
73	Create cache for sections	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.946+00	2023-04-03 17:45:03.946+00
74	Create cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.948+00	2023-04-03 17:45:03.948+00
75	Rebuild all cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.949+00	2023-04-03 17:45:03.949+00
76	Delete all cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.95+00	2023-04-03 17:45:03.95+00
77	Delete cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.952+00	2023-04-03 17:45:03.952+00
78	Cache created	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.953+00	2023-04-03 17:45:03.953+00
79	Cache deleted	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.954+00	2023-04-03 17:45:03.954+00
80	Password	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.956+00	2023-04-03 17:45:03.956+00
81	Login	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.958+00	2023-04-03 17:45:03.958+00
82	Send	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.96+00	2023-04-03 17:45:03.96+00
83	Label text	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.962+00	2023-04-03 17:45:03.962+00
84	Label color	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.963+00	2023-04-03 17:45:03.963+00
85	Label	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.965+00	2023-04-03 17:45:03.965+00
86	Edit	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.966+00	2023-04-03 17:45:03.966+00
87	Label created	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.968+00	2023-04-03 17:45:03.968+00
88	Label changed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.969+00	2023-04-03 17:45:03.969+00
89	Label removed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.97+00	2023-04-03 17:45:03.97+00
90	Main Settings	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.972+00	2023-04-03 17:45:03.972+00
91	Content	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.973+00	2023-04-03 17:45:03.973+00
92	Create a logo	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.975+00	2023-04-03 17:45:03.975+00
93	Screenshots of the error	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.977+00	2023-04-03 17:45:03.977+00
94	Edit rating	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.979+00	2023-04-03 17:45:03.979+00
95	Create a new rating	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.981+00	2023-04-03 17:45:03.981+00
96	Add	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.982+00	2023-04-03 17:45:03.982+00
97	Is hidden	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.984+00	2023-04-03 17:45:03.984+00
98	Add Label	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.985+00	2023-04-03 17:45:03.986+00
99	Edit Label	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.987+00	2023-04-03 17:45:03.987+00
100	from	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.989+00	2023-04-03 17:45:03.989+00
101	Processed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.991+00	2023-04-03 17:45:03.991+00
102	Not processed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.994+00	2023-04-03 17:45:03.994+00
103	Update list	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.996+00	2023-04-03 17:45:03.996+00
104	Logo added	{"ru": "", "ua": ""}	2	2023-04-03 17:45:03.998+00	2023-04-03 17:45:03.998+00
105	Sections	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04+00	2023-04-03 17:45:04+00
106	Rating type	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.001+00	2023-04-03 17:45:04.001+00
107	Display	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.003+00	2023-04-03 17:45:04.003+00
108	Sorting	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.004+00	2023-04-03 17:45:04.004+00
109	When you save the section will be removed from the cache. Also when recreating all caches will not be published	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.005+00	2023-04-03 17:45:04.005+00
110	Remove from site	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.007+00	2023-04-03 17:45:04.007+00
111	Publish	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.009+00	2023-04-03 17:45:04.009+00
112	Publication date	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.011+00	2023-04-03 17:45:04.011+00
113	Cache Creation Date	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.012+00	2023-04-03 17:45:04.012+00
114	Delete from cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.014+00	2023-04-03 17:45:04.014+00
115	Add to cache	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.015+00	2023-04-03 17:45:04.015+00
116	The rating cannot be published if:	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.016+00	2023-04-03 17:45:04.017+00
117	If the rating is hidden	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.018+00	2023-04-03 17:45:04.018+00
118	If there is no content to post, or the content is hidden	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.019+00	2023-04-03 17:45:04.019+00
119	Create rating	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.021+00	2023-04-03 17:45:04.021+00
120	Save your changes	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.022+00	2023-04-03 17:45:04.022+00
121	Tile	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.023+00	2023-04-03 17:45:04.023+00
122	Line	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.026+00	2023-04-03 17:45:04.026+00
123	Sites	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.028+00	2023-04-03 17:45:04.028+00
124	Alexa Rank	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.03+00	2023-04-03 17:45:04.03+00
125	Clicks	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.031+00	2023-04-03 17:45:04.031+00
126	Rating created	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.033+00	2023-04-03 17:45:04.033+00
127	Rating changed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.035+00	2023-04-03 17:45:04.035+00
128	Rating removed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.036+00	2023-04-03 17:45:04.036+00
129	To create a cache, you need to save changes	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.038+00	2023-04-03 17:45:04.038+00
130	Rating published	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.039+00	2023-04-03 17:45:04.039+00
131	The rating is not displayed on the website	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.041+00	2023-04-03 17:45:04.041+00
132	Error text	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.043+00	2023-04-03 17:45:04.043+00
133	Error date	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.046+00	2023-04-03 17:45:04.046+00
134	Date of first publication	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.047+00	2023-04-03 17:45:04.047+00
135	Publication date (cached)	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.049+00	2023-04-03 17:45:04.049+00
136	Not published	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.05+00	2023-04-03 17:45:04.05+00
137	Add Section	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.052+00	2023-04-03 17:45:04.052+00
138	Section added	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.053+00	2023-04-03 17:45:04.053+00
139	Section deleted	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.055+00	2023-04-03 17:45:04.055+00
140	Section edited	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.056+00	2023-04-03 17:45:04.056+00
141	Main	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.058+00	2023-04-03 17:45:04.058+00
142	Translations - Website	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.06+00	2023-04-03 17:45:04.06+00
143	Translations - Admin	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.062+00	2023-04-03 17:45:04.062+00
144	Translations - API server	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.064+00	2023-04-03 17:45:04.064+00
145	List of languages of the admin panel	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.065+00	2023-04-03 17:45:04.065+00
146	Admin panel language by default	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.068+00	2023-04-03 17:45:04.068+00
147	List of site languages	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.069+00	2023-04-03 17:45:04.069+00
148	Site default language	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.071+00	2023-04-03 17:45:04.071+00
149	Language changed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.073+00	2023-04-03 17:45:04.073+00
150	Language list changed	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.075+00	2023-04-03 17:45:04.075+00
151	Translitions	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.078+00	2023-04-03 17:45:04.078+00
152	Update list of translations	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.079+00	2023-04-03 17:45:04.079+00
153	Translation edited	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.081+00	2023-04-03 17:45:04.081+00
154	Translations updated	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.082+00	2023-04-03 17:45:04.082+00
155	Change E-mail	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.084+00	2023-04-03 17:45:04.084+00
156	Change password	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.085+00	2023-04-03 17:45:04.085+00
157	E-mail updated	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.086+00	2023-04-03 17:45:04.086+00
158	Password updated	{"ru": "", "ua": ""}	2	2023-04-03 17:45:04.088+00	2023-04-03 17:45:04.088+00
159	First you need to add the language to the general list	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.44+00	2023-04-03 17:45:06.44+00
160	The list should include the default language	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.442+00	2023-04-03 17:45:06.442+00
161	text	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.444+00	2023-04-03 17:45:06.444+00
162	Wrong data format	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.446+00	2023-04-03 17:45:06.446+00
163	The number of characters in a string must be in the range:	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.447+00	2023-04-03 17:45:06.447+00
164	The number of elements can be in the range:	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.449+00	2023-04-03 17:45:06.449+00
165	Color value must be in HEX format	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.451+00	2023-04-03 17:45:06.451+00
166	The link must start with "http" or "https"	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.453+00	2023-04-03 17:45:06.453+00
167	There is no such id	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.454+00	2023-04-03 17:45:06.454+00
168	A label with the same name already exists	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.456+00	2023-04-03 17:45:06.456+00
169	This url is already in the ranking	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.458+00	2023-04-03 17:45:06.458+00
170	Server error	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.461+00	2023-04-03 17:45:06.461+00
171	Not enough data	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.464+00	2023-04-03 17:45:06.464+00
172	This site is currently in the screenshot queue	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.465+00	2023-04-03 17:45:06.465+00
173	Invalid file	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.467+00	2023-04-03 17:45:06.467+00
174	You can not delete a section that has ratings	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.468+00	2023-04-03 17:45:06.468+00
175	You can not remove a rating that has sites or labels	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.469+00	2023-04-03 17:45:06.469+00
176	Value must be e-mail	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.471+00	2023-04-03 17:45:06.471+00
177	This e-mail already exists	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.473+00	2023-04-03 17:45:06.473+00
178	Incorrect login or password	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.475+00	2023-04-03 17:45:06.475+00
179	Exceeded number of login attempts. Authorization temporarily blocked	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.477+00	2023-04-03 17:45:06.477+00
180	Auth error	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.479+00	2023-04-03 17:45:06.479+00
181	This field cannot be empty	{"ru": "", "ua": ""}	1	2023-04-03 17:45:06.481+00	2023-04-03 17:45:06.481+00
\.


--
-- Name: translations_translationId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."translations_translationId_seq"', 181, true);


--
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY ("translationId");


--
-- PostgreSQL database dump complete
--

