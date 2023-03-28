--
-- PostgreSQL database cluster dump
--

-- Started on 2023-03-28 14:14:21 HKT

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE lawfuhin;
ALTER ROLE lawfuhin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-28 14:14:21 HKT

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

-- Completed on 2023-03-28 14:14:21 HKT

--
-- PostgreSQL database dump complete
--

--
-- Database "lawfuhin" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-28 14:14:21 HKT

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

--
-- TOC entry 3603 (class 1262 OID 16385)
-- Name: lawfuhin; Type: DATABASE; Schema: -; Owner: lawfuhin
--

CREATE DATABASE lawfuhin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';


ALTER DATABASE lawfuhin OWNER TO lawfuhin;

\connect lawfuhin

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

-- Completed on 2023-03-28 14:14:21 HKT

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-28 14:14:21 HKT

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
-- TOC entry 221 (class 1259 OID 16497)
-- Name: items; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.items (
    id integer NOT NULL,
    seller character varying(255),
    "sellerID" integer,
    buyer character varying(255),
    "buyerID" character varying(255),
    "itemName" character varying(255),
    "itemPrice" numeric(8,2),
    description text,
    category character varying(255),
    "postTime" timestamp with time zone,
    "editTime" timestamp with time zone,
    "visitCount" integer,
    "searchCount" integer,
    "photo1Name" character varying(255),
    "photo2Name" character varying(255),
    "photo3Name" character varying(255),
    status character varying(255)
);


ALTER TABLE public.items OWNER TO lawfuhin;

--
-- TOC entry 220 (class 1259 OID 16496)
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO lawfuhin;

--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 220
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- TOC entry 215 (class 1259 OID 16387)
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO lawfuhin;

--
-- TOC entry 214 (class 1259 OID 16386)
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_id_seq OWNER TO lawfuhin;

--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 214
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- TOC entry 217 (class 1259 OID 16394)
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO lawfuhin;

--
-- TOC entry 216 (class 1259 OID 16393)
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_lock_index_seq OWNER TO lawfuhin;

--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 216
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- TOC entry 225 (class 1259 OID 16520)
-- Name: messages; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    sender character varying(255),
    receiver character varying(255),
    message text,
    room character varying(255),
    "postTime" timestamp with time zone
);


ALTER TABLE public.messages OWNER TO lawfuhin;

--
-- TOC entry 224 (class 1259 OID 16519)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO lawfuhin;

--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 224
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- TOC entry 223 (class 1259 OID 16506)
-- Name: search; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.search (
    id integer NOT NULL,
    "searchTerm" text,
    "searchTime" timestamp with time zone,
    "userId" integer NOT NULL
);


ALTER TABLE public.search OWNER TO lawfuhin;

--
-- TOC entry 222 (class 1259 OID 16505)
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.search_id_seq OWNER TO lawfuhin;

--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 222
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.search_id_seq OWNED BY public.search.id;


--
-- TOC entry 219 (class 1259 OID 16488)
-- Name: users; Type: TABLE; Schema: public; Owner: lawfuhin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255)
);


ALTER TABLE public.users OWNER TO lawfuhin;

--
-- TOC entry 218 (class 1259 OID 16487)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: lawfuhin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO lawfuhin;

--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lawfuhin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3489 (class 2604 OID 16500)
-- Name: items id; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 16390)
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- TOC entry 3487 (class 2604 OID 16397)
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- TOC entry 3491 (class 2604 OID 16523)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- TOC entry 3490 (class 2604 OID 16509)
-- Name: search id; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.search ALTER COLUMN id SET DEFAULT nextval('public.search_id_seq'::regclass);


--
-- TOC entry 3488 (class 2604 OID 16491)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3654 (class 0 OID 16497)
-- Dependencies: 221
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.items (id, seller, "sellerID", buyer, "buyerID", "itemName", "itemPrice", description, category, "postTime", "editTime", "visitCount", "searchCount", "photo1Name", "photo2Name", "photo3Name", status) FROM stdin;
1	Willy	1	\N	\N	sony digital camera 10x zoom	3999.00	"Sony digital camera features advanced technology with high-quality image and video capabilities. Includes features such as fast autofocus, low-light performance, and built-in Wi-Fi for easy sharing. Offers a variety of lens options and shooting modes for versatile photography. Durable and compact design perfect for on-the-go photography. Experience stunning image quality and capturing memories with Sony digital cameras."	category1	2023-02-24 11:22:47.337252+08	2023-02-24 11:22:47.337252+08	2	0	1677208967342itemid1photo1.jpg	undefined	undefined	available
2	lawfuhin	2	\N	\N	epson 100% work receipt printer	599.00	Epson receipt printers are high-quality, reliable and fast printers designed specifically for printing receipts. They offer versatile connectivity options and advanced features such as automatic paper cutting, high-speed printing, and low noise operation. These printers are ideal for use in retail, hospitality, and other similar businesses. With their compact design, they can be easily integrated into any workspace, saving valuable counter space.	category1	2023-02-24 11:25:43.087015+08	2023-02-24 11:25:43.087015+08	0	0	1677209143091itemid2photo1.jpg	undefined	undefined	available
6	rubyred	13	\N	\N	iphone 11 pro max silver (8+256)	3999.00	The iPhone 11 Pro Max in silver with 8GB of RAM and 256GB of storage is a premium smartphone from Apple, offering cutting-edge features such as a powerful A13 Bionic chip, three rear cameras, a large OLED display, and long battery life.	category1	2023-02-24 11:36:15.623922+08	2023-02-24 12:10:24.289189+08	15	0	1677211824292itemid6photo1.jpg	empty	empty	available
3	Melody520	10	\N	\N	13900k 4090 RGB DIY PC	12999.00	A DIY gaming PC is a computer built by the user, rather than purchasing a pre-made machine. This allows for customization and control over the components, ensuring optimal performance for gaming. Building a gaming PC requires proper research and understanding of components, but can result in a unique and powerful system with a lower cost compared to pre-built options. The process allows for endless customization possibilities, from the choice of graphics card to the type of case.	category1	2023-02-24 11:30:44.228566+08	2023-02-24 11:30:44.228566+08	2	0	1677209444230itemid3photo1.jpg	undefined	undefined	available
4	SpeedX	11	\N	\N	swatch plastic watch SM-5507B	399.00	Swatch watches are known for their innovative designs, bold colors, and affordability. Made with high-quality materials, the Swiss brand offers a wide range of styles for casual and more formal occasions. Swatch watches are a popular choice for those who value style and functionality at a reasonable price. With a focus on simplicity and affordability, Swatch watches are perfect for those looking to add a pop of color to their everyday look.	category1	2023-02-24 11:32:45.451472+08	2023-02-24 11:32:45.451472+08	0	0	1677209565454itemid4photo1.jpg	undefined	undefined	available
9	seller	16	\N	\N	100% diamond ring	89999.00	The 100% diamond ring is a stunning piece of jewelry featuring a single, large diamond set in a precious metal band. The diamond is of the highest quality, with exceptional clarity, color, and cut, making it an ideal choice for a special occasion or as a symbol of love and commitment. This ring is guaranteed to be authentic, with a certificate of authenticity provided by a reputable gemologist.	category2	2023-02-24 11:43:10.029327+08	2023-02-24 11:43:10.029327+08	80	0	1677210190036itemid9photo1.jpg	undefined	undefined	available
8	developer	15	\N	\N	ps5 CD ROM 1TB	4999.00	The PS5 CD ROM 1TB is a high-end gaming console designed by Sony. It features a 1TB hard drive for ample storage space, a built-in CD ROM for playing physical media, and cutting-edge hardware for high-speed gaming and immersive graphics. With support for 4K resolution and a wide range of exclusive and cross-platform games, the PS5 CD ROM 1TB is a must-have for serious gamers.	category2	2023-02-24 11:40:43.997409+08	2023-02-24 11:40:43.997409+08	2	0	1677210043999itemid8photo1.jpg	undefined	undefined	available
7	hollywood11314	14	\N	\N	leslie cheung Top Selling CD ROM	99.00	Leslie Cheung was a legendary Hong Kong singer and actor who was known for his versatile talent and charming personality. He was a prominent figure in the Cantopop music industry and won numerous awards for his musical and cinematic achievements. He remains an iconic figure in the Asian entertainment industry and is remembered fondly by his fans.	category2	2023-02-24 11:39:23.327842+08	2023-02-24 11:39:23.327842+08	18	0	1677209963333itemid7photo1.jpg	undefined	undefined	available
10	Test111	17	\N	\N	macbook pro M2 Pro 1TB 	89999.00	The MacBook Pro M2 Pro 1TB is a high-performance laptop designed for professionals and power users. It features a fast M2 processor, 1TB of storage, and a high-resolution Retina display. The MacBook Pro M2 Pro 1TB also has a sleek and durable design, making it both stylish and practical. With its powerful specs and versatile features, this laptop is ideal for graphic designers, video editors, and other demanding creative tasks.	category2	2023-02-24 11:48:03.145791+08	2023-02-24 11:48:03.145791+08	6	0	1677210483149itemid10photo1.jpg	undefined	undefined	available
11	test222	18	\N	\N	tannoy M2 hifi speaker	900.00	Tannoy M2 HiFi Speaker is a high-quality audio system designed for audiophiles and music enthusiasts. It delivers clear and balanced sound with its advanced technology and premium components. The M2 HiFi Speaker has a sleek and compact design, making it easy to integrate into any space. This speaker is perfect for those looking for a high-end audio experience in their home or office.	category2	2023-02-24 11:51:07.012425+08	2023-02-24 11:51:07.012425+08	4	0	1677210667030itemid11photo1.jpg	undefined	undefined	available
12	demo001	19	\N	\N	lego lamborghini 	999.00	Lego Lamborghini is a building set designed for creative and car enthusiasts. It features the iconic Lamborghini design and allows you to build a replica of the luxury sports car. The set includes high-quality Lego bricks and instructions making it easy to assemble. The Lego Lamborghini is a great gift for kids and adults who love to build and create. It's a fun and educational activity that fosters creativity and imagination.	category2	2023-02-24 11:57:15.78861+08	2023-02-24 11:57:15.78861+08	34	0	1677211035793itemid12photo1.jpeg	undefined	undefined	available
5	kimo123456	12	\N	\N	old charted bank $10 hkd	20.00	The Old Chartered Bank $10 HKD is a vintage banknote from Hong Kong, issued by the Old Chartered Bank. It features a unique design with historical significance, and is highly sought after by collectors and enthusiasts.	category1	2023-02-24 11:35:01.20757+08	2023-02-24 11:35:01.20757+08	2	0	1677209701210itemid5photo1.jpg	undefined	undefined	available
13	demo002	20	\N	\N	Nikon Camera	2000.00	The Z 7II’s FX-format sensor featuring 45.7 megapixels is designed to perform at its maximum potential when combined with NIKKOR Z lenses.\r\n	category2	2023-02-24 12:16:57.764377+08	2023-02-24 12:16:57.764377+08	16	0	1677212217781itemid13photo1.png	undefined	undefined	available
14	demo002	20	\N	\N	123123	123.00	123	category2	2023-02-24 14:01:29.529029+08	2023-02-24 14:01:49.783542+08	4	0	1677218509791itemid14photo1.jpg	empty	empty	available
\.


--
-- TOC entry 3648 (class 0 OID 16387)
-- Dependencies: 215
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
9	20230218061127_users.js	1	2023-02-24 11:14:04.562+08
10	20230218160146_items.js	1	2023-02-24 11:14:04.57+08
11	20230218180759_search.js	1	2023-02-24 11:14:04.575+08
12	20230221152327_messages.js	1	2023-02-24 11:14:04.577+08
\.


--
-- TOC entry 3650 (class 0 OID 16394)
-- Dependencies: 217
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- TOC entry 3658 (class 0 OID 16520)
-- Dependencies: 225
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.messages (id, sender, receiver, message, room, "postTime") FROM stdin;
1	demo002	demo001	Hi Demo002, i want to buy your lego, can we trade tmr?	\N	2023-02-24 12:17:30.023191+08
2	demo002	demo001	forgot to mention that , my phone number is 123456	\N	2023-02-24 12:17:58.378781+08
3	demo002	seller	hi seller i want to buy diamond ring	\N	2023-02-24 12:20:51.127478+08
4	abc	demo002	hello, i want to buy your camera	\N	2023-02-24 12:25:07.623835+08
5	demo001		sure, contact me at 987654321	\N	2023-02-24 12:32:06.997838+08
6	demo002	demo001	testing message	\N	2023-02-24 13:23:32.890997+08
7	demo002	demo001	hello	\N	2023-02-24 14:02:11.673028+08
8	demo001		hello	\N	2023-02-24 14:02:26.994599+08
\.


--
-- TOC entry 3656 (class 0 OID 16506)
-- Dependencies: 223
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.search (id, "searchTerm", "searchTime", "userId") FROM stdin;
\.


--
-- TOC entry 3652 (class 0 OID 16488)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: lawfuhin
--

COPY public.users (id, username, password) FROM stdin;
1	Willy	$2b$10$.Ofv8Wdf9JXGL8RXj24.xOCyibRZSYIzqT7Ga2v2mrek2LLg3mpjG
2	lawfuhin	$2b$10$adZCa6WGHFCf7LiTD4w6WesxCmwZkNVGoVHbPDk2zZ4ptqqeIQq3K
3	123	$2b$10$jMiYUytc3yl6G9UbRM.JfuZqYvrPHXWHsS0E3wexhKkH.wbIOBQY.
4	adventure123	$2b$10$Ou6cF85GzUoB8DwrulTeXODRGpTv.L8ELWr9bVnwNZYrzNJ8ZEAqS
5	bookworm456	$2b$10$bIf2j3W5WaA1D1QqX9A7Tus5cyn3A4t0No1rqO19FMwyuIAJFwH2G
6	foodie567	$2b$10$.Ri1HOvRD6/Nyw5ggLbD9ukX7ThhxSvPXybMt0RWaB4Bg4ZbvmUBy
7	icecreamlover707	$2b$10$0AjkfOBYn54iOYgUraHlCOFe5Os0.IwUFSgdYzUKn2mGU/mu4b55e
8	eagle_eye_08	$2b$10$S44cPF/556tO0SP8Bt3W3uCcehrMd6DUstPcDfjkqfWFWCbxOSSJa
9	8=======D	$2b$10$olJxznpPektHd.xD.LGt/.j5wyzc/aPoD93YRw8jbECkK2MWB6amy
10	Melody520	$2b$10$TkB/9jtDF24YTt.T5FHQseTs6oNtZqwjs6NZ4OBPeKta.6Pu71kg.
11	SpeedX	$2b$10$lAmks7xnbNb09CG3C1L9AuhtzVYugZoT/IADbruB9MbHxFY526qiy
12	kimo123456	$2b$10$ABDRjvKD8BNkrC0xxkdSw.4CkcFM2v48BeP3NrD..KFB3e/Rp6e7e
13	rubyred	$2b$10$196nMNKw1XfCJoAS6Lc3.uDDqJjjqQxUMpEG1r9YPx0Vz1w09YfXS
14	hollywood11314	$2b$10$1TPJI5ToN4tFIRFN9QALku8aVHWXH6Y.Wl74bq3rMAociLfC9Dfgm
15	developer	$2b$10$iA1eXcd9p2BmvFvp8zp.ieSnr7VDYYBEUhCHUtGUDcGSDxJQkQBpi
16	seller	$2b$10$QLmX8UK7qn0CIITQecBXaeD7sGLk8LwyiAQDibW8A3sTELAksXiI.
17	Test111	$2b$10$jzFAduYxx4qYNHoAQztjEu60rqesxJKgpPYj1E77MWkXyfIHqJqJW
18	test222	$2b$10$.sLPr6FYvfa6RtMRBCrBfuipFTOUbdjkxpGY478UGwT7J1YG.NIGi
19	demo001	$2b$10$JHlCuoSV72CjcyfulAa1F.y1Y3VWoRq8W0Bo.Ejy9KLD6ptY0QOzW
20	demo002	$2b$10$x3c2VpQbS7DZvcl3sLqUR.kw0A6wI6tfLJ1rsfENFq/ZFH0.i0gLm
21	abc	$2b$10$rK0S7vMQ7WIMPDo0bHBa1OQ0FTBRtRP5dOuAtz6BAX9rHUZ6DYwZ.
22	999	$2b$10$pHHihgONZ3nhGK1De.nuFOQj/wK2vGFH4sK01yL5sPpxvdqhWt50O
\.


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 220
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.items_id_seq', 14, true);


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 214
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 12, true);


--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 216
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 224
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.messages_id_seq', 8, true);


--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 222
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.search_id_seq', 1, false);


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lawfuhin
--

SELECT pg_catalog.setval('public.users_id_seq', 22, true);


--
-- TOC entry 3499 (class 2606 OID 16504)
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- TOC entry 3495 (class 2606 OID 16399)
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- TOC entry 3493 (class 2606 OID 16392)
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3503 (class 2606 OID 16527)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- TOC entry 3501 (class 2606 OID 16513)
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (id);


--
-- TOC entry 3497 (class 2606 OID 16495)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3504 (class 2606 OID 16514)
-- Name: search search_userid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: lawfuhin
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_userid_foreign FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2023-03-28 14:14:21 HKT

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-03-28 14:14:21 HKT

--
-- PostgreSQL database cluster dump complete
--

