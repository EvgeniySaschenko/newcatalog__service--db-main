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
    "serviceType" integer NOT NULL,
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

COPY public.translations ("translationId", key, text, "serviceType", "dateCreate", "dateUpdate") FROM stdin;
2	Page not found	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.656+00	2023-04-09 16:28:34.708+00
4	The server is being updated	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.66+00	2023-04-09 16:28:34.717+00
5	Try refreshing the page a little later	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.663+00	2023-04-09 16:28:34.719+00
6	Refresh page	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.665+00	2023-04-09 16:28:34.72+00
7	Home	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.667+00	2023-04-09 16:28:34.721+00
8	Rating of Internet services	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.669+00	2023-04-09 16:28:34.722+00
9	Section	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.671+00	2023-04-09 16:28:34.724+00
10	Exit	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.832+00	2023-04-09 16:28:34.725+00
11	Yes	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.834+00	2023-04-09 16:28:34.726+00
12	No	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.835+00	2023-04-09 16:28:34.728+00
13	OK	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.837+00	2023-04-09 16:28:34.73+00
14	Description	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.839+00	2023-04-09 16:28:34.731+00
15	Screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.841+00	2023-04-09 16:28:34.733+00
16	Logo	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.843+00	2023-04-09 16:28:34.735+00
17	Edit site	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.845+00	2023-04-09 16:28:34.737+00
18	Add site	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.847+00	2023-04-09 16:28:34.739+00
19	Update	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.848+00	2023-04-09 16:28:34.745+00
21	For a subdomain, you can try to find the logo that is used for the domain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.852+00	2023-04-09 16:28:34.749+00
22	Based on current screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.853+00	2023-04-09 16:28:34.751+00
23	For subdomains, screenshots are not generated automatically, because the logos for the domain and subdomain can be the same	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.855+00	2023-04-09 16:28:34.753+00
24	The domain images will be linked to the subdomain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.857+00	2023-04-09 16:28:34.754+00
25	This means that when you edit the logo/color, the changes will show up wherever this screenshot is used	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.859+00	2023-04-09 16:28:34.756+00
26	Change the logo	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.861+00	2023-04-09 16:28:34.758+00
27	Site color	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.863+00	2023-04-09 16:28:34.76+00
28	Change color	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.865+00	2023-04-09 16:28:34.762+00
29	Logo or screenshot for the domain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.866+00	2023-04-09 16:28:34.764+00
30	Screeshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.868+00	2023-04-09 16:28:34.766+00
31	Check for availability	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.87+00	2023-04-09 16:28:34.768+00
32	Link images to a subdomain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.873+00	2023-04-09 16:28:34.769+00
33	A logo can be created on the "Create a logo" tab	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.874+00	2023-04-09 16:28:34.77+00
34	Domain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.877+00	2023-04-09 16:28:34.772+00
35	There are no logos or screenshots for this domain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.879+00	2023-04-09 16:28:34.773+00
36	Check	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.881+00	2023-04-09 16:28:34.776+00
37	A screenshot for this domain is in the process of being created	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.883+00	2023-04-09 16:28:34.777+00
38	There is already another image associated with the domain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.885+00	2023-04-09 16:28:34.779+00
39	Link this image?	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.886+00	2023-04-09 16:28:34.781+00
40	Domain images are tied to a subdomain	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.888+00	2023-04-09 16:28:34.785+00
41	Site color updated	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.889+00	2023-04-09 16:28:34.787+00
42	To create a logo, go to the "Create Logo" tab	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.891+00	2023-04-09 16:28:34.788+00
43	Link	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.894+00	2023-04-09 16:28:34.79+00
44	Name	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.896+00	2023-04-09 16:28:34.792+00
45	Labels	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.897+00	2023-04-09 16:28:34.793+00
46	Priority	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.899+00	2023-04-09 16:28:34.795+00
47	Hide	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.901+00	2023-04-09 16:28:34.797+00
48	Delete	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.902+00	2023-04-09 16:28:34.798+00
49	Save	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.904+00	2023-04-09 16:28:34.8+00
50	Create	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.905+00	2023-04-09 16:28:34.801+00
51	Added	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.907+00	2023-04-09 16:28:34.803+00
52	Modified	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.909+00	2023-04-09 16:28:34.81+00
54	Removed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.914+00	2023-04-09 16:28:34.817+00
55	The site has been queued for taking a screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.916+00	2023-04-09 16:28:34.818+00
56	Screenshots are not generated automatically for subdomains	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.917+00	2023-04-09 16:28:34.82+00
57	There are no screenshots for this site	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.919+00	2023-04-09 16:28:34.821+00
58	Take new screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.921+00	2023-04-09 16:28:34.823+00
59	Upload screenshot manually	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.922+00	2023-04-09 16:28:34.824+00
60	Select screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.924+00	2023-04-09 16:28:34.826+00
61	An invalid file type has been selected	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.927+00	2023-04-09 16:28:34.829+00
62	There is already a screenshot for this site. Create new?	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.929+00	2023-04-09 16:28:34.831+00
63	The site has been added to the queue for taking a screenshot	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.93+00	2023-04-09 16:28:34.833+00
64	Screenshot uploaded	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.932+00	2023-04-09 16:28:34.834+00
65	Color	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.933+00	2023-04-09 16:28:34.836+00
66	Preview	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.935+00	2023-04-09 16:28:34.837+00
67	Crop	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.936+00	2023-04-09 16:28:34.838+00
68	Ratings list	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.937+00	2023-04-09 16:28:34.84+00
69	Sections list	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.939+00	2023-04-09 16:28:34.841+00
70	Cache control	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.94+00	2023-04-09 16:28:34.842+00
71	User profile	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.943+00	2023-04-09 16:28:34.843+00
72	App Settings	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.945+00	2023-04-09 16:28:34.845+00
73	Create cache for sections	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.946+00	2023-04-09 16:28:34.847+00
74	Create cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.948+00	2023-04-09 16:28:34.848+00
75	Rebuild all cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.949+00	2023-04-09 16:28:34.85+00
76	Delete all cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.95+00	2023-04-09 16:28:34.851+00
77	Delete cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.952+00	2023-04-09 16:28:34.852+00
78	Cache created	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.953+00	2023-04-09 16:28:34.853+00
79	Cache deleted	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.954+00	2023-04-09 16:28:34.855+00
81	Login	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.958+00	2023-04-09 16:28:34.857+00
82	Send	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.96+00	2023-04-09 16:28:34.858+00
83	Label text	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.962+00	2023-04-09 16:28:34.858+00
84	Label color	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.963+00	2023-04-09 16:28:34.86+00
85	Label	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.965+00	2023-04-09 16:28:34.861+00
86	Edit	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.966+00	2023-04-09 16:28:34.863+00
88	Label changed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.969+00	2023-04-09 16:28:34.866+00
89	Label removed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.97+00	2023-04-09 16:28:34.867+00
90	Main Settings	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.972+00	2023-04-09 16:28:34.868+00
91	Content	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.973+00	2023-04-09 16:28:34.869+00
92	Create a logo	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.975+00	2023-04-09 16:28:34.87+00
93	Screenshots of the error	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.977+00	2023-04-09 16:28:34.871+00
94	Edit rating	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.979+00	2023-04-09 16:28:34.872+00
95	Create a new rating	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.981+00	2023-04-09 16:28:34.873+00
96	Add	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.982+00	2023-04-09 16:28:34.874+00
97	Is hidden	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.984+00	2023-04-09 16:28:34.875+00
98	Add Label	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.985+00	2023-04-09 16:28:34.876+00
99	Edit Label	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.987+00	2023-04-09 16:28:34.877+00
100	from	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.989+00	2023-04-09 16:28:34.879+00
101	Processed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.991+00	2023-04-09 16:28:34.88+00
102	Not processed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.994+00	2023-04-09 16:28:34.882+00
103	Update list	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.996+00	2023-04-09 16:28:34.883+00
104	Logo added	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.998+00	2023-04-09 16:28:34.884+00
105	Sections	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04+00	2023-04-09 16:28:34.885+00
106	Rating type	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.001+00	2023-04-09 16:28:34.887+00
107	Display	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.003+00	2023-04-09 16:28:34.888+00
108	Sorting	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.004+00	2023-04-09 16:28:34.889+00
110	Remove from site	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.007+00	2023-04-09 16:28:34.893+00
111	Publish	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.009+00	2023-04-09 16:28:34.895+00
112	Publication date	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.011+00	2023-04-09 16:28:34.897+00
113	Cache Creation Date	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.012+00	2023-04-09 16:28:34.898+00
114	Delete from cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.014+00	2023-04-09 16:28:34.899+00
115	Add to cache	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.015+00	2023-04-09 16:28:34.9+00
116	The rating cannot be published if:	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.016+00	2023-04-09 16:28:34.901+00
117	If the rating is hidden	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.018+00	2023-04-09 16:28:34.902+00
118	If there is no content to post, or the content is hidden	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.019+00	2023-04-09 16:28:34.903+00
119	Create rating	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.021+00	2023-04-09 16:28:34.904+00
120	Save your changes	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.022+00	2023-04-09 16:28:34.905+00
121	Tile	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.023+00	2023-04-09 16:28:34.906+00
122	Line	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.026+00	2023-04-09 16:28:34.907+00
123	Sites	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.028+00	2023-04-09 16:28:34.908+00
124	Alexa Rank	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.03+00	2023-04-09 16:28:34.909+00
125	Clicks	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.031+00	2023-04-09 16:28:34.91+00
126	Rating created	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.033+00	2023-04-09 16:28:34.912+00
127	Rating changed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.035+00	2023-04-09 16:28:34.913+00
128	Rating removed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.036+00	2023-04-09 16:28:34.915+00
129	To create a cache, you need to save changes	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.038+00	2023-04-09 16:28:34.918+00
130	Rating published	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.039+00	2023-04-09 16:28:34.919+00
131	The rating is not displayed on the website	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.041+00	2023-04-09 16:28:34.921+00
132	Error text	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.043+00	2023-04-09 16:28:34.922+00
133	Error date	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.046+00	2023-04-09 16:28:34.924+00
134	Date of first publication	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.047+00	2023-04-09 16:28:34.925+00
135	Publication date (cached)	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.049+00	2023-04-09 16:28:34.927+00
136	Not published	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.05+00	2023-04-09 16:28:34.929+00
137	Add Section	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.052+00	2023-04-09 16:28:34.931+00
138	Section added	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.053+00	2023-04-09 16:28:34.932+00
139	Section deleted	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.055+00	2023-04-09 16:28:34.934+00
140	Section edited	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.056+00	2023-04-09 16:28:34.935+00
141	Main	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.058+00	2023-04-09 16:28:34.937+00
142	Translations - Website	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.06+00	2023-04-09 16:28:34.939+00
143	Translations - Admin	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.062+00	2023-04-09 16:28:34.94+00
144	Translations - API server	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.064+00	2023-04-09 16:28:34.941+00
145	List of languages of the admin panel	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.065+00	2023-04-09 16:28:34.943+00
146	Admin panel language by default	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.068+00	2023-04-09 16:28:34.945+00
147	List of site languages	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.069+00	2023-04-09 16:28:34.947+00
148	Site default language	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.071+00	2023-04-09 16:28:34.949+00
149	Language changed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.073+00	2023-04-09 16:28:34.95+00
150	Language list changed	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.075+00	2023-04-09 16:28:34.951+00
151	Translitions	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.078+00	2023-04-09 16:28:34.952+00
152	Update list of translations	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.079+00	2023-04-09 16:28:34.954+00
153	Translation edited	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.081+00	2023-04-09 16:28:34.955+00
154	Translations updated	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.082+00	2023-04-09 16:28:34.956+00
155	Change E-mail	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.084+00	2023-04-09 16:28:34.957+00
157	E-mail updated	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.086+00	2023-04-09 16:28:34.959+00
158	Password updated	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.088+00	2023-04-09 16:28:34.961+00
159	First you need to add the language to the general list	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.44+00	2023-04-09 16:28:34.963+00
160	The list should include the default language	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.442+00	2023-04-09 16:28:34.965+00
161	text	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.444+00	2023-04-09 16:28:34.966+00
162	Wrong data format	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.446+00	2023-04-09 16:28:34.968+00
1	Server error	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.654+00	2023-04-09 16:28:34.697+00
3	Go to home	{"ru": "", "uk": ""}	3	2023-04-03 17:45:00.658+00	2023-04-09 16:28:34.712+00
20	You need to take a screenshot first	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.85+00	2023-04-09 16:28:34.747+00
53	Are you sure you want to delete?	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.912+00	2023-04-09 16:28:34.815+00
80	Password	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.956+00	2023-04-09 16:28:34.856+00
87	Label created	{"ru": "", "uk": ""}	2	2023-04-03 17:45:03.968+00	2023-04-09 16:28:34.864+00
109	When you save the section will be removed from the cache. Also when recreating all caches will not be published	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.005+00	2023-04-09 16:28:34.891+00
156	Change password	{"ru": "", "uk": ""}	2	2023-04-03 17:45:04.085+00	2023-04-09 16:28:34.958+00
163	The number of characters in a string must be in the range:	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.447+00	2023-04-09 16:28:34.969+00
164	The number of elements can be in the range:	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.449+00	2023-04-09 16:28:34.97+00
165	Color value must be in HEX format	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.451+00	2023-04-09 16:28:34.972+00
166	The link must start with "http" or "https"	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.453+00	2023-04-09 16:28:34.973+00
167	There is no such id	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.454+00	2023-04-09 16:28:34.975+00
168	A label with the same name already exists	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.456+00	2023-04-09 16:28:34.977+00
169	This url is already in the ranking	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.458+00	2023-04-09 16:28:34.979+00
170	Server error	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.461+00	2023-04-09 16:28:34.981+00
171	Not enough data	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.464+00	2023-04-09 16:28:34.983+00
172	This site is currently in the screenshot queue	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.465+00	2023-04-09 16:28:34.985+00
173	Invalid file	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.467+00	2023-04-09 16:28:34.986+00
174	You can not delete a section that has ratings	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.468+00	2023-04-09 16:28:34.988+00
175	You can not remove a rating that has sites or labels	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.469+00	2023-04-09 16:28:34.989+00
176	Value must be e-mail	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.471+00	2023-04-09 16:28:34.991+00
177	This e-mail already exists	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.473+00	2023-04-09 16:28:34.992+00
178	Incorrect login or password	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.475+00	2023-04-09 16:28:34.994+00
179	Exceeded number of login attempts. Authorization temporarily blocked	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.477+00	2023-04-09 16:28:34.996+00
180	Auth error	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.479+00	2023-04-09 16:28:34.999+00
181	This field cannot be empty	{"ru": "", "uk": ""}	1	2023-04-03 17:45:06.481+00	2023-04-09 16:28:35.001+00
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

