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
60	Select screenshot	{"en": "Select screenshot", "ru": "Выбрать скриншот", "uk": "Виберіть скріншот"}	2	2023-04-03 17:45:03.924+00	2023-05-15 11:16:44.943+00
82	Send	{"en": "Send", "ru": "Отправить", "uk": "Надіслати"}	2	2023-04-03 17:45:03.96+00	2023-05-15 11:19:29.324+00
35	There are no logos or screenshots for this domain	{"en": "There are no logos or screenshots for this domain", "ru": "Для этого домена нет логотипов или скриншотов", "uk": "Для цього домену немає логотипів чи скріншотів"}	2	2023-04-03 17:45:03.879+00	2023-05-15 12:01:47.242+00
338	SSL certificates	{"en": "SSL certificates", "ru": "SSL-сертификаты", "uk": "SSL сертифікати"}	2	2023-05-15 11:29:31.526+00	2023-05-15 11:38:00.14+00
19	Update	{"en": "Update", "ru": "Обновить", "uk": "Оновити"}	2	2023-04-03 17:45:03.848+00	2023-05-15 12:26:58.156+00
71	User profile	{"en": "User profile", "ru": "Профиль пользователя", "uk": "Профіль користувача"}	2	2023-04-03 17:45:03.943+00	2023-05-15 12:29:36.383+00
59	Upload screenshot manually	{"en": "Upload screenshot manually", "ru": "Загрузить скриншот вручную", "uk": "Завантажити скріншот вручну"}	2	2023-04-03 17:45:03.922+00	2023-05-15 12:28:36.487+00
11	Yes	{"en": "Yes", "ru": "Да", "uk": "Так"}	2	2023-04-03 17:45:03.834+00	2023-05-15 12:33:26.846+00
2	Page not found	{"en": "Page not found", "ru": "Страница не найдена", "uk": "Сторінку не знайдено"}	3	2023-04-03 17:45:00.656+00	2023-05-14 22:46:56.235+00
6	Refresh page	{"en": "Refresh page", "ru": "Обновить страницу", "uk": "Оновити сторінку"}	3	2023-04-03 17:45:00.665+00	2023-05-14 22:48:10.251+00
9	Section	{"en": "Section", "ru": "Раздел", "uk": "Розділ"}	3	2023-04-03 17:45:00.671+00	2023-05-14 22:48:33.258+00
37	A screenshot for this domain is in the process of being created	{"en": "A screenshot for this domain is in the process of being created", "ru": "Скриншот для этого домена находится в процессе создания", "uk": "Скріншот для цього домену в процесі створення"}	2	2023-04-03 17:45:03.883+00	2023-05-14 22:54:19.354+00
22	Based on current screenshot	{"en": "Based on current screenshot", "ru": "На основе текущего скриншота", "uk": "На основі поточного скріншоту"}	2	2023-04-03 17:45:03.853+00	2023-05-14 23:17:37.02+00
78	Cache created	{"en": "Cache created", "ru": "Кэш создан", "uk": "Кеш створено"}	2	2023-04-03 17:45:03.953+00	2023-05-14 23:20:16.162+00
79	Cache deleted	{"en": "Cache deleted", "ru": "Кэш удален", "uk": "Кеш видалено"}	2	2023-04-03 17:45:03.954+00	2023-05-14 23:20:43.235+00
26	Change the logo	{"en": "Change the logo", "ru": "Изменить логотип", "uk": "Змінити логотип"}	2	2023-04-03 17:45:03.861+00	2023-05-14 23:25:20.954+00
65	Color	{"en": "Color", "ru": "Цвет", "uk": "Колір"}	2	2023-04-03 17:45:03.933+00	2023-05-14 23:37:31.307+00
50	Create	{"en": "Create", "ru": "Создать", "uk": "Створити"}	2	2023-04-03 17:45:03.905+00	2023-05-14 23:43:03.178+00
74	Create cache	{"en": "Create cache", "ru": "Создать кеш", "uk": "Створити кеш"}	2	2023-04-03 17:45:03.948+00	2023-05-14 23:44:47.939+00
67	Crop	{"en": "Crop", "ru": "Обрезать", "uk": "Обрізка"}	2	2023-04-03 17:45:03.936+00	2023-05-14 23:52:33.808+00
77	Delete cache	{"en": "Delete cache", "ru": "Удалить кеш", "uk": "Видалити кеш"}	2	2023-04-03 17:45:03.952+00	2023-05-14 23:56:22.546+00
14	Description	{"en": "Description", "ru": "Описание", "uk": "Опис"}	2	2023-04-03 17:45:03.839+00	2023-05-14 23:57:21.833+00
34	Domain	{"en": "Domain", "ru": "Домен", "uk": "Домен"}	2	2023-04-03 17:45:03.877+00	2023-05-15 00:01:04.448+00
10	Exit	{"en": "Exit", "ru": "Выход", "uk": "Вихід"}	2	2023-04-03 17:45:03.832+00	2023-05-15 00:08:24.999+00
47	Hide	{"en": "Hide", "ru": "Скрыть", "uk": "Сховати"}	2	2023-04-03 17:45:03.901+00	2023-05-15 09:47:40.858+00
43	Link	{"en": "Link", "ru": "Ссылка", "uk": "Посилання"}	2	2023-04-03 17:45:03.894+00	2023-05-15 10:20:53.924+00
84	Label color	{"en": "Label color", "ru": "Цвет ярлыка", "uk": "Колір ярлика"}	2	2023-04-03 17:45:03.963+00	2023-05-15 10:15:14.072+00
83	Label text	{"en": "Label text", "ru": "Текст ярлыка", "uk": "Текст ярлика"}	2	2023-04-03 17:45:03.962+00	2023-05-15 10:15:10.953+00
45	Labels	{"en": "Labels", "ru": "Ярлыки", "uk": "Ярлики"}	2	2023-04-03 17:45:03.897+00	2023-05-15 10:16:13.749+00
39	Link this image?	{"en": "Link this image?", "ru": "Связать это изображение?", "uk": "Зв'язати це зображення?"}	2	2023-04-03 17:45:03.886+00	2023-05-15 10:23:06.786+00
81	Login	{"en": "Login", "ru": "Логин", "uk": "Логін"}	2	2023-04-03 17:45:03.958+00	2023-05-15 10:24:35.185+00
68	Ratings list	{"en": "Ratings list", "ru": "Список рейтингов", "uk": "Список рейтингів"}	2	2023-04-03 17:45:03.937+00	2023-05-15 10:45:20.308+00
12	No	{"en": "No", "ru": "Нет", "uk": "Ні"}	2	2023-04-03 17:45:03.835+00	2023-05-15 10:31:47.265+00
44	Name	{"en": "Name", "ru": "Название", "uk": "Назва"}	2	2023-04-03 17:45:03.896+00	2023-05-15 10:31:24.718+00
13	OK	{"en": "OK", "ru": "OK", "uk": "OK"}	2	2023-04-03 17:45:03.837+00	2023-05-15 10:33:04.621+00
66	Preview	{"en": "Preview", "ru": "Превью", "uk": "Превью"}	2	2023-04-03 17:45:03.935+00	2023-05-15 10:35:50.053+00
54	Removed	{"en": "Removed", "ru": "Удален", "uk": "Видалено"}	2	2023-04-03 17:45:03.914+00	2023-05-15 10:49:35.498+00
48	Delete	{"en": "Delete", "ru": "Удалить", "uk": "Видалити"}	2	2023-04-03 17:45:03.902+00	2023-05-15 10:50:38.241+00
49	Save	{"en": "Save", "ru": "Сохранить", "uk": "Зберегти"}	2	2023-04-03 17:45:03.904+00	2023-05-15 11:05:26.892+00
15	Screenshot	{"en": "Screenshot", "ru": "Скриншот", "uk": "Скріншот"}	2	2023-04-03 17:45:03.841+00	2023-05-15 11:07:37.062+00
69	Sections list	{"en": "Sections list", "ru": "Список разделов", "uk": "Список розділів"}	2	2023-04-03 17:45:03.939+00	2023-05-15 11:15:51.183+00
335	Selection color - background	{"en": "Selection color - background", "ru": "Цвет выделения - фон", "uk": "Колір виділення - фон"}	2	2023-05-15 11:17:14.642+00	2023-05-15 11:17:49.242+00
131	The rating is not displayed on the website	{"en": "The rating is not displayed on the website", "ru": "Рейтинг не отображается на сайте", "uk": "Рейтинг не відображається на сайті"}	2	2023-04-03 17:45:04.041+00	2023-05-15 11:48:17.79+00
121	Tile	{"en": "Tile", "ru": "Плитка", "uk": "Плитка"}	2	2023-04-03 17:45:04.023+00	2023-05-15 12:12:55.174+00
103	Update list	{"en": "Update list", "ru": "Обновить список", "uk": "Оновити список"}	2	2023-04-03 17:45:03.996+00	2023-05-15 12:27:31.266+00
152	Update list of translations	{"en": "Update list of translations", "ru": "Обновить список переводов", "uk": "Оновити список перекладів"}	2	2023-04-03 17:45:04.079+00	2023-05-15 12:27:54.815+00
20	You need to take a screenshot first	{"en": "You need to take a screenshot first", "ru": "Сначала нужно сделать скриншот", "uk": "Спочатку потрібно зробити скріншот"}	2	2023-04-03 17:45:03.85+00	2023-05-15 12:33:45.389+00
160	The list should include the default language	{"en": "The list should include the default language", "ru": "Список должен включать язык по умолчанию", "uk": "Список має містити мову за замовчуванням"}	1	2023-04-03 17:45:06.442+00	2023-05-15 12:51:35.287+00
100	from	{"en": "from", "ru": "от", "uk": "від"}	2	2023-04-03 17:45:03.989+00	2023-05-15 12:35:35.375+00
161	text	{"en": "text", "ru": "текст", "uk": "текст"}	1	2023-04-03 17:45:06.444+00	2023-05-15 12:59:29.755+00
115	Add to cache	{"en": "Add to cache", "ru": "Добавить в кеш", "uk": "Додати в кеш"}	2	2023-04-03 17:45:04.015+00	2023-05-14 23:04:12.078+00
1	Server error	{"en": "Server error", "ru": "Ошибка сервера", "uk": "Помилка сервера"}	3	2023-04-03 17:45:00.654+00	2023-05-14 22:49:00.749+00
96	Add	{"en": "Add", "ru": "Добавить", "uk": "Додати"}	2	2023-04-03 17:45:03.982+00	2023-05-14 22:54:39.729+00
124	Alexa Rank	{"en": "Alexa Rank", "ru": "Alexa Rank", "uk": "Alexa Rank"}	2	2023-04-03 17:45:04.03+00	2023-05-14 23:05:33.513+00
53	Are you sure you want to delete?	{"en": "Are you sure you want to delete?", "ru": "Вы уверены, что хотите удалить?", "uk": "Ви впевнені, що хочете видалити?"}	2	2023-04-03 17:45:03.912+00	2023-05-14 23:15:08.228+00
113	Cache Creation Date	{"en": "Cache Creation Date", "ru": "Дата создания кэша", "uk": "Дата створення кешу"}	2	2023-04-03 17:45:04.012+00	2023-05-14 23:19:53.662+00
155	Change E-mail	{"en": "Change E-mail", "ru": "Изменить e-mail", "uk": "Змінити E-mail"}	2	2023-04-03 17:45:04.084+00	2023-05-14 23:24:06.853+00
125	Clicks	{"en": "Clicks", "ru": "Клики", "uk": "Кліки"}	2	2023-04-03 17:45:04.031+00	2023-05-14 23:34:47.776+00
91	Content	{"en": "Content", "ru": "Содержание", "uk": "Контент"}	2	2023-04-03 17:45:03.973+00	2023-05-14 23:42:39.965+00
92	Create a logo	{"en": "Create a logo", "ru": "Создать логотип", "uk": "Створити логотип"}	2	2023-04-03 17:45:03.975+00	2023-05-14 23:43:45.199+00
95	Create a new rating	{"en": "Create a new rating", "ru": "Создать новый рейтинг", "uk": "Створити новий рейтинг"}	2	2023-04-03 17:45:03.981+00	2023-05-14 23:44:23.64+00
119	Create rating	{"en": "Create rating", "ru": "Создать рейтинг", "uk": "Створити рейтинг"}	2	2023-04-03 17:45:04.021+00	2023-05-14 23:51:37.659+00
114	Delete from cache	{"en": "Delete from cache", "ru": "Удалить из кеша", "uk": "Видалити з кешу"}	2	2023-04-03 17:45:04.014+00	2023-05-14 23:56:56.066+00
107	Display	{"en": "Display", "ru": "Отображение", "uk": "Відображення"}	2	2023-04-03 17:45:04.003+00	2023-05-15 00:00:49.299+00
86	Edit	{"en": "Edit", "ru": "Редактировать", "uk": "Редагувати"}	2	2023-04-03 17:45:03.966+00	2023-05-15 00:04:17.255+00
94	Edit rating	{"en": "Edit rating", "ru": "Редактировать рейтинг", "uk": "Редагувати рейтинг"}	2	2023-04-03 17:45:03.979+00	2023-05-15 00:05:31.345+00
132	Error text	{"en": "Error text", "ru": "Текст ошибки", "uk": "Текст помилки"}	2	2023-04-03 17:45:04.043+00	2023-05-15 00:07:35.481+00
97	Is hidden	{"en": "Is hidden", "ru": "Скрыт", "uk": "Прихований"}	2	2023-04-03 17:45:03.984+00	2023-05-15 10:08:37.318+00
149	Language changed	{"en": "Language changed", "ru": "Язык изменен", "uk": "Мова змінена"}	2	2023-04-03 17:45:04.073+00	2023-05-15 10:19:22.481+00
85	Label	{"en": "Label", "ru": "Ярлык", "uk": "Ярлик"}	2	2023-04-03 17:45:03.965+00	2023-05-15 10:12:18.156+00
150	Language list changed	{"en": "Language list changed", "ru": "Список языков изменен", "uk": "Список мов змінено"}	2	2023-04-03 17:45:04.075+00	2023-05-15 10:19:49.969+00
122	Line	{"en": "Line", "ru": "Линия", "uk": "Лінія"}	2	2023-04-03 17:45:04.026+00	2023-05-15 10:20:30.268+00
90	Main Settings	{"en": "Main Settings", "ru": "Основные настройки", "uk": "Основні налаштування"}	2	2023-04-03 17:45:03.972+00	2023-05-15 10:29:55.056+00
102	Not processed	{"en": "Not processed", "ru": "Не обработан", "uk": "Не оброблено"}	2	2023-04-03 17:45:03.994+00	2023-05-15 10:32:36.085+00
136	Not published	{"en": "Not published", "ru": "Не опубликовано", "uk": "Не опубліковано"}	2	2023-04-03 17:45:04.05+00	2023-05-15 10:32:57.025+00
80	Password	{"en": "Password", "ru": "Пароль", "uk": "Пароль"}	2	2023-04-03 17:45:03.956+00	2023-05-15 10:33:52.678+00
101	Processed	{"en": "Processed", "ru": "Обработано", "uk": "Оброблено"}	2	2023-04-03 17:45:03.991+00	2023-05-15 10:36:54.019+00
112	Publication date	{"en": "Publication date", "ru": "Дата публикации", "uk": "Дата публікації"}	2	2023-04-03 17:45:04.011+00	2023-05-15 10:38:07.806+00
111	Publish	{"en": "Publish", "ru": "Опубликовать", "uk": "Опублікувати"}	2	2023-04-03 17:45:04.009+00	2023-05-15 10:41:05.041+00
130	Rating published	{"en": "Rating published", "ru": "Рейтинг опубликован", "uk": "Рейтинг опубліковано"}	2	2023-04-03 17:45:04.039+00	2023-05-15 10:44:33.366+00
106	Rating type	{"en": "Rating type", "ru": "Тип рейтинга", "uk": "Тип рейтингу"}	2	2023-04-03 17:45:04.001+00	2023-05-15 10:44:55.353+00
93	Screenshots of the error	{"en": "Screenshots of the error", "ru": "Скриншоты ошибки", "uk": "Скріншоти помилки"}	2	2023-04-03 17:45:03.977+00	2023-05-15 11:11:53.964+00
105	Sections	{"en": "Sections", "ru": "Разделы", "uk": "Розділи"}	2	2023-04-03 17:45:04+00	2023-05-15 11:15:27.004+00
218	Source links	{"en": "Source links", "ru": "Ссылки на источники", "uk": "Посилання на джерела"}	2	2023-05-14 22:39:16.107+00	2023-05-15 11:27:54.829+00
198	Status	{"en": "Status", "ru": "Статус", "uk": "Статус"}	2	2023-05-14 22:39:16.06+00	2023-05-15 11:32:55.398+00
345	The server is not ready to process requests, an update is in progress	{"en": "The server is not ready to process requests, an update is in progress", "ru": "Сервер не готов к обработке запросов, идет обновление", "uk": "Сервер не готовий обробляти запити, триває оновлення"}	2	2023-05-15 11:53:26.591+00	2023-05-15 11:53:59.858+00
189	URL not found on server	{"en": "URL not found on server", "ru": "URL не найден на сервере", "uk": "URL не знайдено на сервері"}	2	2023-05-14 22:39:16.009+00	2023-05-15 12:25:07.092+00
191	Unexpected error	{"en": "Unexpected error", "ru": "Неожиданная ошибка", "uk": "Неочікувана помилка"}	2	2023-05-14 22:39:16.014+00	2023-05-15 12:25:36.43+00
188	User is not authorized	{"en": "User is not authorized", "ru": "Пользователь не авторизован", "uk": "Користувач не авторизований"}	2	2023-05-14 22:39:16.008+00	2023-05-15 12:29:18.218+00
168	A label with the same name already exists	{"en": "A label with the same name already exists", "ru": "Ярлык с таким названием уже существует", "uk": "Ярлык з такою назвою вже існує"}	1	2023-04-03 17:45:06.456+00	2023-05-15 12:37:19.951+00
180	Auth error	{"en": "Auth error", "ru": "Ошибка авторизации", "uk": "Помилка авторизації"}	1	2023-04-03 17:45:06.479+00	2023-05-15 12:37:51.983+00
283	Translations	{"en": "Translations", "ru": "Переводы", "uk": "Переклади"}	2	2023-05-14 22:39:16.234+00	2023-05-15 12:20:03.319+00
178	Incorrect login or password	{"en": "Incorrect login or password", "ru": "Неправильный логин или пароль", "uk": "Неправильний логін або пароль"}	1	2023-04-03 17:45:06.475+00	2023-05-15 12:41:04.474+00
171	Not enough data	{"en": "Not enough data", "ru": "Не хватает данных", "uk": "Не хватает данных"}	1	2023-04-03 17:45:06.464+00	2023-05-15 12:46:19.102+00
170	Server error	{"en": "Server error", "ru": "Ошибка сервера", "uk": "Помилка сервера"}	1	2023-04-03 17:45:06.461+00	2023-05-15 12:50:18.222+00
164	The number of elements can be in the range:	{"en": "The number of elements can be in the range:", "ru": "Количество элементов может быть в диапазоне:", "uk": "Кількість елементів може бути в діапазоні:"}	1	2023-04-03 17:45:06.449+00	2023-05-15 12:52:38.53+00
183	Description	{"en": "Description", "ru": "Описание", "uk": "Опис"}	3	2023-05-14 22:39:09.014+00	2023-05-14 22:40:13.296+00
184	Links to sources	{"en": "Links to sources", "ru": "Ссылки на источники", "uk": "Посилання на джерела"}	3	2023-05-14 22:39:09.016+00	2023-05-14 22:44:56.338+00
182	Page content not found	{"en": "Page content not found", "ru": "Контент страницы не найден", "uk": "Контент сторінки не знайдено"}	3	2023-05-14 22:39:09+00	2023-05-14 22:46:26.543+00
197	Backups report	{"en": "Backups report", "ru": "Отчет о резервных копиях", "uk": "Звіт про резервне копіювання"}	2	2023-05-14 22:39:16.058+00	2023-05-14 23:17:02.544+00
156	Change password	{"en": "Change password", "ru": "Изменить пароль", "uk": "Змінити пароль"}	2	2023-04-03 17:45:04.085+00	2023-05-14 23:24:46.75+00
213	Create cache for sections?	{"en": "Create cache for sections?", "ru": "Создать кеш для разделов?", "uk": "Створити кеш для розділів?"}	2	2023-05-14 22:39:16.089+00	2023-05-14 23:46:02.466+00
200	Date create	{"en": "Date create", "ru": "Дата создания", "uk": "Дата створення"}	2	2023-05-14 22:39:16.063+00	2023-05-14 23:52:59.193+00
210	Delete all cache?	{"en": "Delete all cache?", "ru": "Удалить весь кеш?", "uk": "Видалити весь кеш?"}	2	2023-05-14 22:39:16.084+00	2023-05-14 23:55:32.824+00
201	Error	{"en": "Error", "ru": "Ошибка", "uk": "Помилка"}	2	2023-05-14 22:39:16.065+00	2023-05-15 00:06:51.164+00
217	Errors occurred while creating a backup	{"en": "Errors occurred while creating a backup", "ru": "Произошли ошибки при создании резервной копии", "uk": "Під час створення резервної копії виникли помилки"}	2	2023-05-14 22:39:16.095+00	2023-05-15 00:08:05.263+00
202	In progress	{"en": "In progress", "ru": "В процессе", "uk": "В процесі"}	2	2023-05-14 22:39:16.067+00	2023-05-15 10:00:45.559+00
229	List of languages	{"en": "List of languages", "ru": "Список языков", "uk": "Список мов"}	2	2023-05-14 22:39:16.139+00	2023-05-15 10:23:26.852+00
194	Not found	{"en": "Not found", "ru": "Не найдено", "uk": "Не знайдено"}	2	2023-05-14 22:39:16.024+00	2023-05-15 10:32:10.475+00
192	Panel control	{"en": "Panel control", "ru": "Панель управления", "uk": "Панель керування"}	2	2023-05-14 22:39:16.018+00	2023-05-15 10:33:41.61+00
203	Ready	{"en": "Ready", "ru": "Готово", "uk": "Готово"}	2	2023-05-14 22:39:16.069+00	2023-05-15 10:46:30.767+00
212	Rebuild all cache?	{"en": "Rebuild all cache?", "ru": "Перестроить весь кэш?", "uk": "Перебудувати весь кеш?"}	2	2023-05-14 22:39:16.087+00	2023-05-15 10:47:51.697+00
199	Report	{"en": "Report", "ru": "Отчет", "uk": "Звіт"}	2	2023-05-14 22:39:16.062+00	2023-05-15 10:51:51.489+00
190	Request Entity Too Large	{"en": "Request Entity Too Large", "ru": "Запрос объекта слишком большой", "uk": "Об’єкт запиту занадто великий"}	2	2023-05-14 22:39:16.011+00	2023-05-15 10:52:36.794+00
195	Routes must not have the same name	{"en": "Routes must not have the same name", "ru": "Маршруты не должны иметь одинаковые названия", "uk": "Маршрути не повинні мати однакові назви"}	2	2023-05-14 22:39:16.025+00	2023-05-15 10:54:20.189+00
215	Run backup?	{"en": "Run backup?", "ru": "Запустить резервное копирование?", "uk": "Запустити резервне копіювання?"}	2	2023-05-14 22:39:16.092+00	2023-05-15 11:01:39.264+00
181	This field cannot be empty	{"en": "This field cannot be empty", "ru": "Это поле не может быть пустым", "uk": "Це поле не може бути порожнім"}	1	2023-04-03 17:45:06.481+00	2023-05-15 12:56:04.699+00
176	Value must be e-mail	{"en": "Value must be e-mail", "ru": "Значение должно быть e-mail", "uk": "Значення має бути e-mail"}	1	2023-04-03 17:45:06.471+00	2023-05-15 12:57:12.374+00
351	#Title main page	{"en": "Internet service rating", "ru": "Рейтинг интернет-сервисов", "uk": "Рейтинг інтернет-сервісів"}	3	2023-05-15 18:15:17.139+00	2023-05-15 18:15:58.988+00
354	Add website	{"en": "Add website", "ru": "Добавить веб-сайт", "uk": "Додати веб-сайт"}	2	2023-05-15 20:08:55.499+00	2023-05-15 20:09:34.508+00
248	The key (string) that the server should return in the response if requests to the API server are allowed	{"en": "The key (string) that the server should return in the response if requests to the API server are allowed", "ru": "Ключ (строка), который сервер должен вернуть в ответе, если запросы к серверу API разрешены", "uk": "Ключ (рядок), який сервер має повернути у відповідь, якщо запити до сервера API дозволені"}	2	2023-05-14 22:39:16.172+00	2023-05-15 11:45:15.954+00
268	The phrase that will be added at the beginning of the "title" tag	{"en": "The phrase that will be added at the beginning of the \\"title\\" tag", "ru": "Фраза, которая будет добавлена в начало тега title", "uk": "Фраза, яка буде додана на початку тегу \\"title\\""}	2	2023-05-14 22:39:16.208+00	2023-05-15 11:45:40.899+00
262	This CSS will be added to the "head" tag	{"en": "This CSS will be added to the \\"head\\" tag", "ru": "Этот CSS будет добавлен к тегу «head».", "uk": "Цей CSS буде додано до тегу \\"head\\"."}	2	2023-05-14 22:39:16.196+00	2023-05-15 12:04:49.431+00
270	To activate Google Tag Manager, add your id	{"en": "To activate Google Tag Manager, add your id", "ru": "Чтобы активировать Google Tag Manager, добавьте свой идентификатор", "uk": "Щоб активувати Google Tag Manager, додайте свій ідентифікатор"}	2	2023-05-14 22:39:16.211+00	2023-05-15 12:13:44.102+00
265	This HTML will be added after the "header" tag	{"en": "This HTML will be added after the \\"header\\" tag", "ru": "Этот HTML будет добавлен после тега \\"header\\"", "uk": "Цей HTML буде додано після тегу \\"header\\""}	2	2023-05-14 22:39:16.203+00	2023-05-15 12:09:04.815+00
263	This HTML will be added to the "header" tag	{"en": "This HTML will be added to the \\"header\\" tag", "ru": "Этот HTML будет добавлен в тег \\"header\\"", "uk": "Цей HTML буде додано в тег \\"header\\"."}	2	2023-05-14 22:39:16.197+00	2023-05-15 12:10:50.895+00
285	Backup server not responding	{"en": "Backup server not responding", "ru": "Сервер резервного копирования не отвечает", "uk": "Сервер резервного копіювання не відповідає"}	1	2023-05-14 22:39:20.558+00	2023-05-15 12:38:21.302+00
287	Incorrect file type	{"en": "Incorrect file type", "ru": "Неправильний тип файлу", "uk": "Неправильный тип файла"}	1	2023-05-14 22:39:20.568+00	2023-05-15 12:40:38.178+00
293	Invalid SSL private key	{"en": "Invalid SSL private key", "ru": "Некорректный приватный ключ SSL", "uk": "Некоректний приватний ключ SSL"}	1	2023-05-14 22:39:20.589+00	2023-05-15 12:45:51.62+00
288	Not valid setting	{"en": "Not valid setting", "ru": "Недействительная настройка", "uk": "Недійсне налаштування"}	1	2023-05-14 22:39:20.574+00	2023-05-15 12:47:53.458+00
289	The server must be available	{"en": "The server must be available", "ru": "Сервер должен быть доступен", "uk": "Сервер має бути доступним"}	1	2023-05-14 22:39:20.576+00	2023-05-15 12:53:14.586+00
249	Any string	{"en": "Any string", "ru": "Любая строка", "uk": "Будь-який рядок"}	2	2023-05-14 22:39:16.174+00	2023-05-14 23:06:34.662+00
236	Backup	{"en": "Backup", "ru": "Бэкап", "uk": "Резервне копіювання"}	2	2023-05-14 22:39:16.154+00	2023-05-14 23:16:27.092+00
255	Color primary	{"en": "Color primary", "ru": "Основной цвет", "uk": "Основний колір"}	2	2023-05-14 22:39:16.184+00	2023-05-14 23:38:02.842+00
233	Colors	{"en": "Colors", "ru": "Цвета", "uk": "Кольори"}	2	2023-05-14 22:39:16.147+00	2023-05-14 23:41:29.058+00
230	Default language	{"en": "Default language", "ru": "Язык по умолчанию", "uk": "Мова за замовчуванням"}	2	2023-05-14 22:39:16.141+00	2023-05-14 23:54:11.027+00
272	File not selected	{"en": "File not selected", "ru": "Файл не выбран", "uk": "Файл не вибрано"}	2	2023-05-14 22:39:16.215+00	2023-05-15 00:08:46.695+00
279	For domain	{"en": "For domain", "ru": "Для домена", "uk": "Для домену"}	2	2023-05-14 22:39:16.227+00	2023-05-15 00:12:45.671+00
237	Host	{"en": "Host", "ru": "Хост", "uk": "Хост"}	2	2023-05-14 22:39:16.156+00	2023-05-15 09:51:03.112+00
252	Image favicon	{"en": "Image favicon", "ru": "Изображение favicon", "uk": "Зображення favicon"}	2	2023-05-14 22:39:16.179+00	2023-05-15 09:56:53.268+00
251	Image logo	{"en": "Image logo", "ru": "Изображение логотипа", "uk": "Зображення логотипу"}	2	2023-05-14 22:39:16.177+00	2023-05-15 09:57:21.481+00
232	Images	{"en": "Images", "ru": "Изображения", "uk": "Зображення"}	2	2023-05-14 22:39:16.145+00	2023-05-15 10:00:15.882+00
264	Info bar above "header"	{"en": "Info bar above \\"header\\"", "ru": "Информационная панель над \\"header\\"", "uk": "Інформаційна панель над \\"header\\""}	2	2023-05-14 22:39:16.2+00	2023-05-15 10:01:33.894+00
256	Inverted primary color	{"en": "Інвертований основний колір", "ru": "Инвертированный основной цвет", "uk": "Інвертований основний колір"}	2	2023-05-14 22:39:16.186+00	2023-05-15 10:08:06.443+00
235	Marketing / SEO	{"en": "Marketing / SEO", "ru": "Маркетинг / SEO", "uk": "Маркетинг / SEO"}	2	2023-05-14 22:39:16.152+00	2023-05-15 10:30:17.585+00
269	Phrase that will be added at the end of the "title" tag	{"en": "Phrase that will be added at the end of the \\"title\\" tag", "ru": "Фраза, которая будет добавлена в конце тега \\"title\\"", "uk": "Фраза, яка буде додана в кінці тегу \\"title\\""}	2	2023-05-14 22:39:16.21+00	2023-05-15 10:34:57.143+00
239	Port	{"en": "Port", "ru": "Порт", "uk": "Порт"}	2	2023-05-14 22:39:16.159+00	2023-05-15 10:35:07.741+00
244	Public key comment	{"en": "Public key comment", "ru": "Комментарий открытого ключа", "uk": "Коментар відкритого ключа"}	2	2023-05-14 22:39:16.167+00	2023-05-15 10:37:42.061+00
280	SSL certificate has been changed	{"en": "SSL certificate has been changed", "ru": "SSL-сертификат изменен", "uk": "Сертифікат SSL змінено"}	2	2023-05-14 22:39:16.229+00	2023-05-15 11:03:07.694+00
250	Select file	{"en": "Select file", "ru": "Выберите файл", "uk": "Виберіть файл"}	2	2023-05-14 22:39:16.175+00	2023-05-15 11:16:12.571+00
353	Server protection	{"en": "Server protection", "ru": "Защита сервера", "uk": "Захист сервера"}	2	2023-05-15 19:12:43.594+00	2023-05-15 19:13:59.538+00
7	Home	{"en": "Main page", "ru": "Главная страница", "uk": "Головна сторінка"}	3	2023-04-03 17:45:00.667+00	2023-05-14 22:44:24.973+00
185	Sources	{"en": "Sources", "ru": "Источники", "uk": "Джерела"}	3	2023-05-14 22:39:09.018+00	2023-05-14 22:49:25.63+00
4	The server is being updated	{"en": "The server is being updated", "ru": "Сервер обновляется", "uk": "Сервер оновлюється"}	3	2023-04-03 17:45:00.66+00	2023-05-14 22:49:51.23+00
5	Try refreshing the page a little later	{"en": "Try refreshing the page a little later", "ru": "Попробуйте чуть позже обновить страницу", "uk": "Спробуйте трохи пізніше оновити сторінку"}	3	2023-04-03 17:45:00.663+00	2023-05-14 22:50:50.979+00
336	Selection color - text	{"en": "Selection color - text", "ru": "Цвет выделения - текст", "uk": "Колір виділення - текст"}	2	2023-05-15 11:18:06.441+00	2023-05-15 11:18:40.611+00
296	Not exist ISO key	{"en": "Not exist ISO key", "ru": "Не существует ключа ISO", "uk": "Ключ ISO не існує"}	1	2023-05-14 22:39:20.601+00	2023-05-15 12:46:43.137+00
29	Logo or screenshot for the domain	{"en": "Logo or screenshot for the domain", "ru": "Логотип или скриншот для домена", "uk": "Логотип або скріншот для домену"}	2	2023-04-03 17:45:03.866+00	2023-05-15 10:26:08.482+00
299	A backup will be created for: database, images and whois	{"en": "A backup will be created for: database, images and whois", "ru": "Резервная копия будет создана для: базы данных, изображений и whois", "uk": "Буде створено резервну копію для: бази даних, зображень і whois"}	2	2023-05-14 22:58:32.247+00	2023-05-14 22:59:18.466+00
303	Add a Section	{"en": "Add a Section", "ru": "Добавить раздел", "uk": "Додати розділ"}	2	2023-05-14 23:02:53.034+00	2023-05-14 23:03:24.909+00
323	Main Page	{"en": "Main Page", "ru": "Главная страница", "uk": "Головна сторінка"}	2	2023-05-15 09:50:42.081+00	2023-05-15 10:29:34.105+00
51	Added	{"en": "Added", "ru": "Добавлен", "uk": "Додано"}	2	2023-04-03 17:45:03.907+00	2023-05-14 23:04:34.069+00
281	After replacing the certificates, you must restart the server or container "proxy"	{"en": "After replacing the certificates, you must restart the server or container \\"proxy\\"", "ru": "После замены сертификатов необходимо перезапустить сервер или контейнер \\"proxy\\"", "uk": "Після заміни сертифікатів необхідно перезапустити сервер або контейнер \\"proxy\\""}	2	2023-05-14 22:39:16.23+00	2023-05-14 23:05:25.025+00
61	An invalid file type has been selected	{"en": "An invalid file type has been selected", "ru": "Выбран недопустимый тип файла", "uk": "Вибрано недійсний тип файлу"}	2	2023-04-03 17:45:03.927+00	2023-05-14 23:06:08.525+00
254	Background color - "body" tag	{"en": "Background color - \\"body\\" tag", "ru": "Цвет фона - тег \\"body\\"", "uk": "Колір фону - тег \\"body\\""}	2	2023-05-14 22:39:16.182+00	2023-05-14 23:15:40.284+00
305	Blocked	{"en": "Blocked", "ru": "Блокируется", "uk": "Блокується"}	2	2023-05-14 23:19:08.657+00	2023-05-14 23:19:30.559+00
282	Certificates will change for the mode in which the "production" / "development" server is running	{"en": "Certificates will change for the mode in which the \\"production\\" / \\"development\\" server is running", "ru": "Сертификаты изменятся для режима, в котором работает сервер  \\"production\\" / \\"development\\"", "uk": "Сертифікати змінюються для режиму, в якому запущений сервер \\"production\\" / \\"development\\""}	2	2023-05-14 22:39:16.232+00	2023-05-14 23:23:28.578+00
28	Change color	{"en": "Change color", "ru": "Изменить цвет", "uk": "Змінити колір"}	2	2023-04-03 17:45:03.865+00	2023-05-14 23:24:26.177+00
33	A logo can be created on the "Create a logo" tab	{"en": "A logo can be created on the \\"Create a logo\\" tab", "ru": "Логотип можно создать на вкладке \\"Создать логотип\\"", "uk": "Логотип можна створити на вкладці \\"Створити логотип\\""}	2	2023-04-03 17:45:03.874+00	2023-05-14 23:28:35.248+00
36	Check	{"en": "Check", "ru": "Проверить", "uk": "Перевірити"}	2	2023-04-03 17:45:03.881+00	2023-05-14 23:31:43.687+00
31	Check for availability	{"en": "Check for availability", "ru": "Проверить наличие", "uk": "Перевірити наявність"}	2	2023-04-03 17:45:03.87+00	2023-05-14 23:32:59.402+00
307	Clearing this field will generate a new key	{"en": "Clearing this field will generate a new key", "ru": "Очистка этого поля приведет к созданию нового ключа", "uk": "Якщо очистити це поле, буде створено новий ключ"}	2	2023-05-14 23:33:31.604+00	2023-05-14 23:34:19.115+00
309	Code: HTML/CSS/JavaScript/Text	{"en": "Code: HTML/CSS/JavaScript/Text", "ru": "Код: HTML/CSS/JavaScript/Текст", "uk": "Код: HTML/CSS/JavaScript/Текст"}	2	2023-05-14 23:36:45.3+00	2023-05-14 23:37:08.752+00
311	Color regular text - an example would be plain black text	{"en": "Color regular text - an example would be plain black text", "ru": "Цвет обычного текста — например, обычный черный текст", "uk": "Колір звичайного текста – наприклад, простий чорний текст"}	2	2023-05-14 23:39:02.023+00	2023-05-14 23:41:03.042+00
302	Add Label	{"en": "Add Label", "ru": "Добавить ярлык", "uk": "Додати ярлык"}	2	2023-05-14 23:01:38.549+00	2023-05-15 10:13:43.67+00
46	Priority	{"en": "Priority", "ru": "Приоритет", "uk": "Пріоритет"}	2	2023-04-03 17:45:03.899+00	2023-05-15 10:36:27.302+00
312	Create cache sections	{"en": "Create cache sections", "ru": "Создать кеш разделов", "uk": "Створити кеш розділів"}	2	2023-05-14 23:48:11.948+00	2023-05-14 23:50:02.62+00
208	Create cache settings	{"en": "Create cache settings", "ru": "Создать кеш настоек", "uk": "Створити кеш налаштувань"}	2	2023-05-14 22:39:16.077+00	2023-05-14 23:50:29.472+00
75	Rebuild all cache	{"en": "Rebuild all cache", "ru": "Перестроить весь кэш", "uk": "Перебудувати весь кеш"}	2	2023-04-03 17:45:03.949+00	2023-05-15 10:47:29.974+00
134	Date of first publication	{"en": "Date of first publication", "ru": "Дата первой публикации", "uk": "Дата першої публікації"}	2	2023-04-03 17:45:04.047+00	2023-05-14 23:53:35.981+00
76	Delete all cache	{"en": "Delete all cache", "ru": "Удалить весь кеш", "uk": "Видалити весь кеш"}	2	2023-04-03 17:45:03.95+00	2023-05-14 23:55:03.751+00
313	Directory path	{"en": "Directory path", "ru": "Путь к директории", "uk": "Шлях до каталогу"}	2	2023-05-14 23:59:36.133+00	2023-05-15 00:00:18.649+00
40	Domain images are tied to a subdomain	{"en": "Domain images are tied to a subdomain", "ru": "Образы домена привязаны к субдомену", "uk": "Зображення домену прив’язані до субдомену"}	2	2023-04-03 17:45:03.888+00	2023-05-15 00:02:16.847+00
207	During the execution of the operation, the API service will not process requests	{"en": "During the execution of the operation, the API service will not process requests", "ru": "Во время выполнения операции служба API не будет обрабатывать запросы", "uk": "Під час виконання операції API-сервіс не оброблятиме запити"}	2	2023-05-14 22:39:16.076+00	2023-05-15 00:03:02.31+00
157	E-mail updated	{"en": "E-mail updated", "ru": "E-mail обновлен", "uk": "E-mail оновлено"}	2	2023-04-03 17:45:04.086+00	2023-05-15 00:03:57.227+00
133	Error date	{"en": "Error date", "ru": "Дата ошибки", "uk": "Дата помилки"}	2	2023-04-03 17:45:04.046+00	2023-05-15 00:07:12.057+00
186	Server error	{"en": "Server error", "ru": "Ошибка сервера", "uk": "Помилка сервера"}	2	2023-05-14 22:39:16.004+00	2023-05-15 11:19:55.77+00
317	For "admin" and "api" you need to set the same parameters	{"en": "For \\"admin\\" and \\"api\\" you need to set the same parameters", "ru": "Для «admin» и «api» нужно задать одинаковые параметры", "uk": "Для «admin» і «api» потрібно встановити однакові параметри"}	2	2023-05-15 00:10:46.063+00	2023-05-15 00:11:28.024+00
21	For a subdomain, you can try to find the logo that is used for the domain	{"en": "For a subdomain, you can try to find the logo that is used for the domain", "ru": "Для субдомена вы можете попробовать найти логотип, который используется для домена", "uk": "Для субдомену ви можете спробувати знайти логотип, який використовується для домену"}	2	2023-04-03 17:45:03.852+00	2023-05-15 00:12:23.611+00
99	Edit Label	{"en": "Edit Label", "ru": "Изменить ярлык", "uk": "Редагувати ярлык"}	2	2023-04-03 17:45:03.987+00	2023-05-15 10:13:18.197+00
23	For subdomains, screenshots are not generated automatically, because the logos for the domain and subdomain can be the same	{"en": "For subdomains, screenshots are not generated automatically, because the logos for the domain and subdomain can be the same", "ru": "Для поддоменов скриншоты не создаются автоматически, т.к. логотипы для домена и субдомена могут совпадать", "uk": "Для субдоменів скріншоти не створюються автоматично, оскільки логотипи для домену та субдомену можуть бути однаковими"}	2	2023-04-03 17:45:03.855+00	2023-05-15 09:43:13.292+00
322	Go to Main Page	{"en": "Go to Main Page", "ru": "На главную страницу", "uk": "На головну сторінку"}	3	2023-05-15 09:49:40.128+00	2023-05-15 09:50:23.467+00
117	If the rating is hidden	{"en": "If the rating is hidden", "ru": "Якщо рейтинг прихований", "uk": "Если рейтинг скрыт"}	2	2023-04-03 17:45:04.018+00	2023-05-15 09:51:34.25+00
324	If the server "protector" is unavailable, you will not be able to access the admin panel	{"en": "If the server \\"protector\\" is unavailable, you will not be able to access the admin panel", "ru": "Если сервер \\"protector\\" недоступен, вы не сможете получить доступ к панели администратора", "uk": "Якщо сервер \\"protector\\" недоступний, ви не зможете отримати доступ до панелі адміністратора"}	2	2023-05-15 09:54:17.643+00	2023-05-15 09:55:21.188+00
118	If there is no content to post, or the content is hidden	{"en": "If there is no content to post, or the content is hidden", "ru": "Если нет контента для публикации или контент скрыт", "uk": "Якщо немає контенту для публікації або контент прихований"}	2	2023-04-03 17:45:04.019+00	2023-05-15 09:56:09.677+00
325	Image preloader	{"en": "Image preloader", "ru": "Изображение preloader", "uk": "Зображення preloader"}	2	2023-05-15 09:58:19.335+00	2023-05-15 09:59:37.539+00
320	For example rating name or label text will be displayed in the default language	{"en": "For example rating name or label text will be displayed in the default language", "ru": "Например, имя рейтинга или текст ярлыка будут отображаться на языке по умолчанию.", "uk": "Наприклад, назва рейтингу або текст ярлика відображатиметься мовою за замовчуванням"}	2	2023-05-15 09:40:50.621+00	2023-05-15 10:15:27.014+00
329	Languages	{"en": "Languages", "ru": "Языки", "uk": "Мови"}	2	2023-05-15 10:18:39.193+00	2023-05-15 10:20:07.063+00
32	Link images to a subdomain	{"en": "Link images to a subdomain", "ru": "Связать изображение с субдоменом", "uk": "Зв'язати зображення з субдоменом"}	2	2023-04-03 17:45:03.873+00	2023-05-15 10:22:27.694+00
16	Logo	{"en": "Logo", "ru": "Логотип", "uk": "Логотип"}	2	2023-04-03 17:45:03.843+00	2023-05-15 10:24:51.545+00
158	Password updated	{"en": "Password updated", "ru": "Пароль обновлен", "uk": "Пароль оновлено"}	2	2023-04-03 17:45:04.088+00	2023-05-15 10:34:11.219+00
209	Run backup	{"en": "Run backup", "ru": "Запустить резервное копирование", "uk": "Запустити резервне копіювання"}	2	2023-05-14 22:39:16.081+00	2023-05-15 10:57:08.209+00
330	Cache creation date	{"en": "Cache creation date", "ru": "Дата создания кеша", "uk": "Дата створення кеша"}	2	2023-05-15 10:40:28.637+00	2023-05-15 10:59:12.113+00
327	Changed	{"en": "Changed", "ru": "Изменено", "uk": "Змінено"}	2	2023-05-15 10:11:17.395+00	2023-05-15 10:59:39.663+00
331	Create backup	{"en": "Create backup", "ru": "Создать backup", "uk": "Створити backup"}	2	2023-05-15 10:58:37.931+00	2023-05-15 11:00:15.249+00
326	Created	{"en": "Created", "ru": "Создан", "uk": "Створено"}	2	2023-05-15 10:11:17.393+00	2023-05-15 11:00:55.89+00
332	SSH public key	{"en": "SSH public key", "ru": "Открытый SSH-ключ", "uk": "Відкритий ключ SSH"}	2	2023-05-15 11:02:03.6+00	2023-05-15 11:02:40.172+00
64	Screenshot uploaded	{"en": "Screenshot uploaded", "ru": "Скриншот загружен", "uk": "Скріншот завантажено"}	2	2023-04-03 17:45:03.932+00	2023-05-15 11:07:54.396+00
333	Screenshots are not created automatically for subdomains	{"en": "Screenshots are not created automatically for subdomains", "ru": "Для субдоменов скриншоты не создаются автоматически ", "uk": "Для субдоменів скриншоти не створюються автоматично"}	2	2023-05-15 11:09:28.216+00	2023-05-15 11:11:19.212+00
246	Server url that allows / forbids sending requests to the API server	{"en": "Server url that allows / forbids sending requests to the API server", "ru": "URL-адрес сервера, который разрешает/запрещает отправку запросов на сервер API", "uk": "URL-адреса сервера, який дозволяє/забороняє надсилати запити на сервер API"}	2	2023-05-14 22:39:16.17+00	2023-05-15 11:22:24.925+00
304	Settings	{"en": "Settings", "ru": "Настройки", "uk": "Налаштування"}	2	2023-05-14 23:11:03.297+00	2023-05-15 11:24:08.011+00
108	Sorting	{"en": "Sorting", "ru": "Сортировка", "uk": "Сортування"}	2	2023-04-03 17:45:04.004+00	2023-05-15 11:27:22.62+00
340	SSL private key	{"en": "SSL private key", "ru": "Приватный ключ SSL", "uk": "Приватний ключ SSL"}	2	2023-05-15 11:29:31.537+00	2023-05-15 11:31:05.399+00
339	SSL сertificate	{"en": "SSL сertificate", "ru": "SSL-сертификат", "uk": "SSL сертифікат"}	2	2023-05-15 11:29:31.536+00	2023-05-15 11:31:30.225+00
216	Started sending files to a remote server	{"en": "Started sending files to a remote server", "ru": "Началась отправка файлов на удаленный сервер", "uk": "Розпочато надсилання файлів на віддалений сервер"}	2	2023-05-14 22:39:16.093+00	2023-05-15 11:32:16.122+00
58	Take new screenshot	{"en": "Take new screenshot", "ru": "Сделать новый скриншот", "uk": "Зробити новий скріншот"}	2	2023-04-03 17:45:03.921+00	2023-05-15 11:33:43.391+00
24	The domain images will be linked to the subdomain	{"en": "The domain images will be linked to the subdomain", "ru": "Изображения домена будут привязаны к субдомену", "uk": "Зображення домену будуть прив’язані до субдомену"}	2	2023-04-03 17:45:03.857+00	2023-05-15 11:35:13.294+00
342	Favicon will change immediately after saving the settings	{"en": "Favicon will change immediately after saving the settings", "ru": "Favicon изменится сразу после сохранения настроек", "uk": "Favicon зміниться відразу після збереження налаштувань"}	2	2023-05-15 11:43:21.583+00	2023-05-15 11:44:26.337+00
344	The rating cannot be published if:	{"en": "The rating cannot be published if:", "ru": "Рейтинг не может быть опубликован, если:", "uk": "Рейтинг не може бути опублікований, якщо:"}	2	2023-05-15 11:46:52.659+00	2023-05-15 11:47:32.947+00
196	The router does not have a key that is used in the main menu	{"en": "The router does not have a key that is used in the main menu", "ru": "В роутере нет ключа, которий используется в главном меню", "uk": "У роутера немає ключа, який використовується в головному меню"}	2	2023-05-14 22:39:16.027+00	2023-05-15 11:52:42.843+00
38	There is already another image associated with the domain	{"en": "There is already another image associated with the domain", "ru": "С доменом уже связано другое изображение", "uk": "З доменом уже пов’язано інше зображення"}	2	2023-04-03 17:45:03.885+00	2023-05-15 12:04:07.229+00
211	There were errors while creating the cache	{"en": "При создании кеша возникли ошибки", "ru": "При создании кеша возникли ошибки", "uk": "Під час створення кешу виникли помилки"}	2	2023-05-14 22:39:16.086+00	2023-05-15 12:04:28.862+00
291	Not valid lang	{"en": "Not valid lang", "ru": "Недействительный язык", "uk": "Недійсна мова"}	1	2023-05-14 22:39:20.582+00	2023-05-15 12:47:26.036+00
266	This HTML will be added before the "footer" tag	{"en": "This HTML will be added before the \\"footer\\" tag", "ru": "Этот HTML будет добавлен перед тегом \\"footer\\"", "uk": "Цей HTML буде додано перед тегом \\"footer\\""}	2	2023-05-14 22:39:16.204+00	2023-05-15 12:09:05.897+00
347	This HTML will be added in the "footer" tag	{"en": "This HTML will be added in the \\"footer\\" tag", "ru": "Этот HTML будет добавлен в тег \\"footer\\"", "uk": "Цей HTML буде додано в тег \\"footer\\"."}	2	2023-05-15 12:06:41.761+00	2023-05-15 12:09:06.926+00
261	This JavaScript will be added to the "head" tag	{"en": "This JavaScript will be added to the \\"head\\" tag", "ru": "Этот JavaScript будет добавлен в тег \\"head\\"", "uk": "Цей JavaScript буде додано в тег \\"head\\"."}	2	2023-05-14 22:39:16.194+00	2023-05-15 12:10:49.631+00
25	This means that when you edit the logo/color, the changes will show up wherever this screenshot is used	{"en": "This means that when you edit the logo/color, the changes will show up wherever this screenshot is used", "ru": "Это означает, что когда вы редактируете логотип/цвет, изменения будут отображаться везде, где используется этот снимок экрана", "uk": "Це означає, що коли ви редагуєте логотип/колір, зміни відображатимуться всюди, де використовується цей знімок екрана"}	2	2023-04-03 17:45:03.859+00	2023-05-15 12:11:42.208+00
275	This setting can completely block access to the admin panel	{"en": "This setting can completely block access to the admin panel", "ru": "Эта настройка может полностью заблокировать доступ к панели администратора", "uk": "Цей параметр може повністю заблокувати доступ до панелі адміністратора"}	2	2023-05-14 22:39:16.22+00	2023-05-15 12:12:29.579+00
129	To create a cache, you need to save changes	{"en": "To create a cache, you need to save changes", "ru": "Для создания кеша нужно сохранить изменения", "uk": "Щоб створити кеш, потрібно зберегти зміни"}	2	2023-04-03 17:45:04.038+00	2023-05-15 12:14:21.127+00
348	To create a logo, go to the logo creation tab	{"en": "To create a logo, go to the logo creation tab", "ru": "Для создания логотипа перейдите на вкладку создание логотипа", "uk": "Щоб створити логотип, перейдіть на вкладку створення логотипу"}	2	2023-05-15 12:16:38.07+00	2023-05-15 12:17:10.895+00
224	To see the changes in the "admin", you need to refresh the page	{"en": "To see the changes in the \\"admin\\", you need to refresh the page", "ru": "Чтобы увидеть изменения в \\"админке\\", нужно обновить страницу", "uk": "Щоб побачити зміни в \\"адмінці\\", потрібно оновити сторінку"}	2	2023-05-14 22:39:16.132+00	2023-05-15 12:18:50.772+00
349	When you save the section will be removed from the cache	{"en": "When you save the section will be removed from the cache", "ru": "При сохранении раздел будет удален из кеша", "uk": "При збереженні розділ буде видалено з кешу"}	2	2023-05-15 12:32:25.387+00	2023-05-15 12:33:06.566+00
310	an example would be white letters on the primary background	{"en": "an example would be white letters on the primary background", "ru": "например белые буквы на основном фоне", "uk": "прикладом можуть бути білі літери на основному фоні"}	2	2023-05-14 23:39:02.021+00	2023-05-15 12:34:39.058+00
165	Color value must be in HEX format	{"en": "Color value must be in HEX format", "ru": "Значение цвета должно быть в формате HEX", "uk": "Значення кольору має бути у форматі HEX"}	1	2023-04-03 17:45:06.451+00	2023-05-15 12:38:50.387+00
179	Exceeded number of login attempts. Authorization temporarily blocked	{"en": "Exceeded number of login attempts. Authorization temporarily blocked", "ru": "Превышено количество попыток входа. Авторизация временно заблокирована", "uk": "Перевищено кількість спроб входу. Авторизація тимчасово заблокована"}	1	2023-04-03 17:45:06.477+00	2023-05-15 12:39:20.868+00
295	Field cannot be empty	{"en": "Field cannot be empty", "ru": "Поле не может быть пустым", "uk": "Поле не може бути порожнім"}	1	2023-05-14 22:39:20.596+00	2023-05-15 12:39:44.646+00
159	First you need to add the language to the general list	{"en": "First you need to add the language to the general list", "ru": "Сначала нужно добавить язык в общий список", "uk": "Спочатку потрібно додати мову в загальний список"}	1	2023-04-03 17:45:06.44+00	2023-05-15 12:40:19.722+00
292	Invalid SSL certificate	{"en": "Invalid SSL certificate", "ru": "Некорректный SSL-сертификат", "uk": "Некоректний SSL-сертифікат"}	1	2023-05-14 22:39:20.587+00	2023-05-15 12:42:09.586+00
294	Select a service name from the list	{"en": "Select a service name from the list", "ru": "Выберите имя сервиса из списка", "uk": "Виберіть ім'я сервісу зі списку"}	1	2023-05-14 22:39:20.591+00	2023-05-15 12:49:26.539+00
284	Sending files to a remote server	{"en": "Sending files to a remote server", "ru": "Отправка файлов на удаленный сервер", "uk": "Відправка файлів на віддалений сервер"}	1	2023-05-14 22:39:20.55+00	2023-05-15 12:49:57.473+00
166	The link must start with "http" or "https"	{"en": "The link must start with \\"http\\" or \\"https\\"", "ru": "Ссылка должна начинаться с «http» или «https».", "uk": "Посилання має починатися з \\"http\\" або \\"https\\""}	1	2023-04-03 17:45:06.453+00	2023-05-15 12:50:51.131+00
163	The number of characters in a string must be in the range:	{"en": "The number of characters in a string must be in the range:", "ru": "Количество символов в строке должно быть в диапазоне:", "uk": "Кількість символів у рядку має бути в діапазоні:"}	1	2023-04-03 17:45:06.447+00	2023-05-15 12:52:09.808+00
290	The server should send the specified key in response	{"en": "The server should send the specified key in response", "ru": "Сервер должен отправить указанный ключ в ответ", "uk": "Сервер повинен надіслати вказаний ключ у відповідь"}	1	2023-05-14 22:39:20.579+00	2023-05-15 12:53:45.065+00
297	The value must be "http" / "https" link	{"en": "The value must be \\"http\\" / \\"https\\" link", "ru": "Значение должно быть ссылкой \\"http\\" / \\"https\\"", "uk": "Значенням має бути посилання \\"http\\" / \\"https\\"."}	1	2023-05-14 22:39:20.606+00	2023-05-15 12:54:12.097+00
286	There are no items in the rating to publish, or it is hidden	{"en": "There are no items in the rating to publish, or it is hidden", "ru": "В рейтинге нет элементов для публикации, или он скрыт", "uk": "У рейтингу немає пунктів для публікації, або він прихований"}	1	2023-05-14 22:39:20.561+00	2023-05-15 12:54:41.759+00
177	This e-mail already exists	{"en": "This e-mail already exists", "ru": "Такой e-mail уже существует", "uk": "Такий e-mail вже існує"}	1	2023-04-03 17:45:06.473+00	2023-05-15 12:55:25.685+00
162	Wrong data format	{"en": "Wrong data format", "ru": "Неправильный формат данных", "uk": "Неправильний формат даних"}	1	2023-04-03 17:45:06.446+00	2023-05-15 12:57:47.533+00
174	You can not delete a section that has ratings	{"en": "You can not delete a section that has ratings", "ru": "Нельзя удалить раздел, имеющий рейтинги", "uk": "Не можна видалити розділ, який має рейтинги"}	1	2023-04-03 17:45:06.468+00	2023-05-15 12:58:30.548+00
355	Changes will be displayed on the "website" after the cache is published	{"en": "Changes will be displayed on the \\"website\\" after the cache is published", "ru": "Изменения отобразятся на \\"веб-сайте\\" после публикации кеша", "uk": "Зміни відображаються на \\"веб-сайті\\" після публікації кеша"}	2	2023-05-15 20:08:55.561+00	2023-05-15 20:11:32.148+00
371	This website is currently in the screenshot queue	{"en": "This website is currently in the screenshot queue", "ru": "Этот веб-сайт в настоящее время находится в очереди на создание скриншотов", "uk": "Цей веб-сайт зараз знаходиться в черзі на створення скриншотів"}	1	2023-05-15 20:24:58.729+00	2023-05-15 20:26:48.659+00
370	You can not remove a rating that has websites or labels	{"en": "You can not remove a rating that has websites or labels", "ru": "Вы не можете удалить рейтинг, в котором есть веб-сайты или ярлыки", "uk": "Ви не можете видалити оцінку, яка містить веб-сайти або ярлыки"}	1	2023-05-15 20:24:58.719+00	2023-05-15 20:27:37.006+00
363	Creating / deleting a cache implies that these changes will be published on the main website	{"en": "Creating / deleting a cache implies that these changes will be published on the main website", "ru": "Создание/удаление кеша подразумевает, что эти изменения будут опубликованы на основном веб-сайте", "uk": "Створення/видалення кеша означає, що ці зміни будуть опубліковані на головному веб-сайті"}	2	2023-05-15 20:22:35.346+00	2023-05-15 20:32:59.603+00
356	Edit website	{"en": "Edit website", "ru": "Редактировать веб-сайт", "uk": "Редактувати веб-сайт"}	2	2023-05-15 20:22:35.309+00	2023-05-15 20:33:54.857+00
369	For the "error page" of the website the local colors will be used	{"en": "For the \\"error page\\" of the website the local colors will be used", "ru": "Для «страницы ошибок» веб-сайта будут использованы локальные цвета", "uk": "Для «сторінки помилок» веб-сайту будуть використані локальні кольори"}	2	2023-05-15 20:22:35.4+00	2023-05-15 20:34:35.859+00
365	Remove from website	{"en": "Remove from website", "ru": "Удалить с веб-сайта", "uk": "Вилучити з веб-сайту"}	2	2023-05-15 20:22:35.365+00	2023-05-15 20:37:41.284+00
368	Texts for the main website, in the admin panel will be displayed in the default language for the main website	{"en": "Texts for the main website, in the admin panel will be displayed in the default language for the main website", "ru": "Тексты для основного веб-сайта, в панели администратора будут отображаться на языке по умолчанию для основного веб-сайта", "uk": "Тексти для основного веб-сайту в панелі адміністратора відображатимуться мовою за промовчанням для основного веб-сайту"}	2	2023-05-15 20:22:35.382+00	2023-05-15 20:39:10.475+00
362	The website has been added to the queue for taking a screenshot	{"en": "The website has been added to the queue for taking a screenshot", "ru": "Веб-сайт добавлен в очередь на создание скриншота", "uk": "Веб-сайт доданий у чергу на створення скріншоту"}	2	2023-05-15 20:22:35.341+00	2023-05-15 20:40:03.261+00
359	The website is in queue for taking a screenshot	{"en": "The website is in queue for taking a screenshot", "ru": "Веб-сайт находится в очереди на создание скриншота", "uk": "Веб-сайт знаходиться у черзі на створення скріншоту"}	2	2023-05-15 20:22:35.333+00	2023-05-15 20:40:36.476+00
360	There are no screenshots for this website	{"en": "There are no screenshots for this website", "ru": "Для этого веб-сайта нет скриншотов", "uk": "Для цього веб-сайту немає скріншотів"}	2	2023-05-15 20:22:35.337+00	2023-05-15 20:41:11.633+00
361	There is already a screenshot for this website. Create new?	{"en": "There is already a screenshot for this website. Create new?", "ru": "Для этого веб-сайта уже есть скриншот. Создать новый?", "uk": "Для цього веб-сайту вже є скріншот. Створити новий?"}	2	2023-05-15 20:22:35.34+00	2023-05-15 20:43:33.319+00
357	Website color	{"en": "Website color", "ru": "Цвет веб-сайта", "uk": "Колір веб-сайту"}	2	2023-05-15 20:22:35.326+00	2023-05-15 20:45:58.864+00
366	Websites	{"en": "Websites", "ru": "Веб-сайти", "uk": "Веб-сайти"}	2	2023-05-15 20:22:35.373+00	2023-05-15 20:47:02.848+00
372	Create cache "settings" for website?	{"en": "Create cache \\"settings\\" for website?", "ru": "Создать кеш \\"настройки\\" для веб-сайта?", "uk": "Створити кеш \\"налаштування\\" для веб-сайту?"}	2	2023-05-15 20:30:18.344+00	2023-05-15 20:31:28.232+00
352	Image default (If the image does not exist)	{"en": "Image default (If the image does not exist)", "ru": "Изображение по умолчанию (если изображение не существует)", "uk": "Зображення за умовчанням (якщо зображення не існує)"}	2	2023-05-15 19:12:43.575+00	2023-05-15 20:36:03.344+00
373	Website color updated	{"en": "Website color updated", "ru": "Цвет веб-сайта обновлен", "uk": "Колір веб-сайту оновлено"}	2	2023-05-15 20:44:08.539+00	2023-05-15 20:46:49.227+00
374	Website and admin panel will be displayed in the language you selected in the language switcher	{"en": "Website and admin panel will be displayed in the language you selected in the language switcher", "ru": "Веб-сайт и панель администратора будут отображаться на том языке, который вы выбрали в переключателе языков", "uk": "Веб-сайт і панель адміністратора відображатимуться мовою, яку ви вибрали в перемикачі мов"}	2	2023-05-15 20:48:48.525+00	2023-05-15 20:49:47.427+00
375	This setting is disabled in demo mode	{"en": "This setting is disabled in demo mode", "ru": " Этот параметр отключен в демо-режиме", "uk": "Цей параметр вимкнено в демо-режимі"}	1	2023-05-17 14:31:01.537+00	2023-05-17 14:33:57.124+00
377	Passwords do not match	{"en": "Passwords do not match", "ru": "Пароли не совпадают", "uk": "Паролі не співпадають"}	1	2023-05-17 22:35:44.45+00	2023-05-17 22:36:08.429+00
376	Repeat password	{"en": "Repeat password", "ru": "Повторите пароль", "uk": "Повторіть пароль"}	2	2023-05-17 22:34:12.629+00	2023-05-17 22:37:33.933+00
378	Private key and certificate do not match	{"en": "Private key and certificate do not match", "ru": "Приватный ключ и сертификат не совпадают", "uk": "Приватний ключ та сертифікат не співпадають"}	1	2023-05-18 21:54:12.343+00	2023-05-18 21:55:29.964+00
379	Hidden	{"en": "Hidden", "ru": "Скрыт", "uk": "Прихований"}	2	2023-05-20 20:05:05.566+00	2023-05-20 20:06:58.409+00
380	Go to ratings list	{"en": "Go to ratings list", "ru": "К списку рейтингов", "uk": "До списку рейтингів"}	2	2023-05-20 20:57:17.293+00	2023-05-20 20:58:51.877+00
381	Page	{"en": "Page", "ru": "Страница", "uk": "Сторінка"}	2	2023-05-20 21:04:08.899+00	2023-05-20 21:05:03.279+00
\.


--
-- Name: translations_translationId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."translations_translationId_seq"', 381, true);


--
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY ("translationId");


--
-- PostgreSQL database dump complete
--

