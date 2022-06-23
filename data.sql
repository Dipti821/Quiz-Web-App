--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _admin; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin (
    admin_id smallint,
    email character varying(25) DEFAULT NULL::character varying,
    password character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._admin OWNER TO rebasedata;

--
-- Name: _answer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._answer (
    qid character varying(13) DEFAULT NULL::character varying,
    ansid character varying(13) DEFAULT NULL::character varying
);


ALTER TABLE public._answer OWNER TO rebasedata;

--
-- Name: _history; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._history (
    email character varying(30) DEFAULT NULL::character varying,
    eid character varying(13) DEFAULT NULL::character varying,
    score smallint,
    level smallint,
    sahi smallint,
    wrong smallint,
    date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._history OWNER TO rebasedata;

--
-- Name: _options; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._options (
    qid character varying(13) DEFAULT NULL::character varying,
    option character varying(50) DEFAULT NULL::character varying,
    optionid character varying(13) DEFAULT NULL::character varying
);


ALTER TABLE public._options OWNER TO rebasedata;

--
-- Name: _questions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._questions (
    eid character varying(13) DEFAULT NULL::character varying,
    qid character varying(13) DEFAULT NULL::character varying,
    qns character varying(189) DEFAULT NULL::character varying,
    choice smallint,
    sn smallint
);


ALTER TABLE public._questions OWNER TO rebasedata;

--
-- Name: _quiz; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._quiz (
    eid character varying(13) DEFAULT NULL::character varying,
    title character varying(13) DEFAULT NULL::character varying,
    sahi smallint,
    wrong smallint,
    total smallint,
    date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._quiz OWNER TO rebasedata;

--
-- Name: _rank; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._rank (
    email character varying(18) DEFAULT NULL::character varying,
    score smallint,
    "time" character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._rank OWNER TO rebasedata;

--
-- Name: _user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user (
    name character varying(17) DEFAULT NULL::character varying,
    college character varying(55) DEFAULT NULL::character varying,
    email character varying(18) DEFAULT NULL::character varying,
    password character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._user OWNER TO rebasedata;

--
-- Data for Name: _admin; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin (admin_id, email, password) FROM stdin;
1	diptiagarwal821@gmail.com	Dipti821
\.


--
-- Data for Name: _answer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._answer (qid, ansid) FROM stdin;
5b13ed3a6e006	5b13ed3a9436a
5b13ed72489d8	5b13ed7263d70
5b141d712647f	5b141d71485b9
5b141d718f873	5b141d71978be
5b141d71ddb46	5b141d71e5f43
5b141d721a738	5b141d7222884
5b141d7260b7d	5b141d7268b9a
5b141d72a6fa1	5b141d72aefcb
5b141d72d7a1c	5b141d72dfa7b
5b141d731429b	5b141d731c234
5b141d7345176	5b141d734cd1b
5b141d737ddfc	5b141d73858df
5b1422651fdde	5b1422654ab51
5b14226574ed5	5b1422657d064
5b142265b5d08	5b142265c09f5
5b1422661d93f	5b14226635e0d
5b14226663cf4	5b1422666bf2b
5b1422669481b	5b1422669c8ea
5b142266c525c	5b142266cd369
5b14226711d91	5b14226719fb1
5b1422674286d	5b1422674a9ee
5b1422677371f	5b1422677b3fc
\.


--
-- Data for Name: _history; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._history (email, eid, score, level, sahi, wrong, date) FROM stdin;
suryaprasadtripathy8@gmail.com	5b141b8009cf0	22	10	8	2	2018-06-03 18:56:00
pinky@gmail.com	5b141b8009cf0	30	10	10	0	2018-06-03 18:57:45
priyanka@gmail.com	5b141b8009cf0	22	10	8	2	2018-06-03 18:59:06
suryaprasadtripathy8@gmail.com	5b141f1e8399e	26	10	9	1	2018-06-03 19:17:26
\.


--
-- Data for Name: _options; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._options (qid, option, optionid) FROM stdin;
5b13ed3a6e006	sdb	5b13ed3a9436a
5b13ed3a6e006	jsdb	5b13ed3a94374
5b13ed3a6e006	dsbv	5b13ed3a94377
5b13ed3a6e006	jbdv	5b13ed3a94379
5b13ed72489d8	vsdv	5b13ed7263d70
5b13ed72489d8	vsdv	5b13ed7263d7a
5b13ed72489d8	vsdv	5b13ed7263d7d
5b13ed72489d8	vsdv	5b13ed7263d80
5b141d712647f	Personal Home Page	5b141d71485b9
5b141d712647f	Private Home Page	5b141d71485dc
5b141d712647f	Pretext Hypertext Processor	5b141d71485e0
5b141d712647f	Preprocessor Home Page	5b141d71485e4
5b141d718f873	Rasmus Lerdorf	5b141d71978be
5b141d718f873	Willam Makepiece	5b141d71978cc
5b141d718f873	Drek Kolkevi	5b141d71978d1
5b141d718f873	List Barely	5b141d71978d4
5b141d71ddb46	.html	5b141d71e5f2b
5b141d71ddb46	.ph	5b141d71e5f3c
5b141d71ddb46	.php	5b141d71e5f43
5b141d71ddb46	.xml	5b141d71e5f48
5b141d721a738	for loop	5b141d7222820
5b141d721a738	do-while loop	5b141d722282f
5b141d721a738	foreach loop	5b141d7222880
5b141d721a738	All of the above	5b141d7222884
5b141d7260b7d	echo (â€œHello Worldâ€);	5b141d7268b8a
5b141d7260b7d	print (â€œHello Worldâ€);	5b141d7268b95
5b141d7260b7d	printf (â€œHello Worldâ€);	5b141d7268b98
5b141d7260b7d	All of the above	5b141d7268b9a
5b141d72a6fa1	file()	5b141d72aefcb
5b141d72a6fa1	arr_file()	5b141d72aefd8
5b141d72a6fa1	arrfile()	5b141d72aefdc
5b141d72a6fa1	file_arr()	5b141d72aefe0
5b141d72d7a1c	Magic Function	5b141d72dfa7b
5b141d72d7a1c	Inbuilt Function	5b141d72dfa85
5b141d72d7a1c	Default Function	5b141d72dfa88
5b141d72d7a1c	User Defined Function	5b141d72dfa8b
5b141d731429b	CREATE TABLE table_name (column_name column_type);	5b141d731c234
5b141d731429b	CREATE table_name (column_type column_name);	5b141d731c242
5b141d731429b	CREATE table_name (column_name column_type);	5b141d731c248
5b141d731429b	CREATE TABLE table_name (column_type column_name);	5b141d731c24b
5b141d7345176	get_array() and get_row()	5b141d734cd10
5b141d7345176	fetch_array() and fetch_row()	5b141d734cd1b
5b141d7345176	get_array() and get_column()	5b141d734cd1d
5b141d7345176	fetch_array() and fetch_column()	5b141d734cd20
5b141d737ddfc	explode()	5b141d73858d0
5b141d737ddfc	implode()	5b141d73858df
5b141d737ddfc	concat()	5b141d73858e3
5b141d737ddfc	concatenate()	5b141d73858e8
5b1422651fdde	32 bits	5b1422654ab3a
5b1422651fdde	128 bytes	5b1422654ab48
5b1422651fdde	64 bits	5b1422654ab4d
5b1422651fdde	16 bytes	5b1422654ab51
5b14226574ed5	IP	5b1422657d052
5b14226574ed5	TCP	5b1422657d05f
5b14226574ed5	UDP	5b1422657d064
5b14226574ed5	ARP	5b1422657d069
5b142265b5d08	Session layer	5b142265c09e3
5b142265b5d08	Physical layer	5b142265c09f5
5b142265b5d08	Data Link layer	5b142265c09fa
5b142265b5d08	Application layer	5b142265c09ff
5b1422661d93f	12.0.0.1	5b14226635df5
5b1422661d93f	168.172.19.39	5b14226635e04
5b1422661d93f	172.15.14.36	5b14226635e09
5b1422661d93f	192.168.24.43	5b14226635e0d
5b14226663cf4	Application	5b1422666bf2b
5b14226663cf4	Presentation	5b1422666bf39
5b14226663cf4	Session	5b1422666bf3e
5b14226663cf4	Transport	5b1422666bf42
5b1422669481b	VTP	5b1422669c8dc
5b1422669481b	STP	5b1422669c8ea
5b1422669481b	RIP	5b1422669c8ef
5b1422669481b	CDP	5b1422669c8f3
5b142266c525c	14	5b142266cd353
5b142266c525c	15	5b142266cd361
5b142266c525c	16	5b142266cd365
5b142266c525c	30	5b142266cd369
5b14226711d91	255.255.255.192	5b14226719fa0
5b14226711d91	255.255.255.224	5b14226719fb1
5b14226711d91	255.255.255.240	5b14226719fb7
5b14226711d91	255.255.255.248	5b14226719fbb
5b1422674286d	6	5b1422674a9ee
5b1422674286d	8	5b1422674aa01
5b1422674286d	30	5b1422674aa06
5b1422674286d	32	5b1422674aa0b
5b1422677371f	127.0.0.0	5b1422677b3e9
5b1422677371f	1.0.0.127	5b1422677b3f7
5b1422677371f	127.0.0.1	5b1422677b3fc
5b1422677371f	127.0.0.255	5b1422677b400
\.


--
-- Data for Name: _questions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._questions (eid, qid, qns, choice, sn) FROM stdin;
5b13ed30cd71f	5b13ed3a6e006	dbjb	4	1
5b13ed6bb8bcd	5b13ed72489d8	dvsd	4	1
5b141b8009cf0	5b141d712647f	What does PHP stand for?	4	1
5b141b8009cf0	5b141d718f873	Who is the father of PHP?	4	2
5b141b8009cf0	5b141d71ddb46	PHP files have a default file extension of.	4	3
5b141b8009cf0	5b141d721a738	Which of the looping statements is/are supported by PHP?	4	4
5b141b8009cf0	5b141d7260b7d	Which of the following PHP statements will output Hello World on the screen?	4	5
5b141b8009cf0	5b141d72a6fa1	Which one of the following function is capable of reading a file into an array?	4	6
5b141b8009cf0	5b141d72d7a1c	A function in PHP which starts with __ (double underscore) is know as..	4	7
5b141b8009cf0	5b141d731429b	Which one of the following statements is used to create a table?	4	8
5b141b8009cf0	5b141d7345176	Which of the methods are used to manage result sets using both associative and indexed arrays?	4	9
5b141b8009cf0	5b141d737ddfc	Which one of the following functions can be used to concatenate array elements to form a single delimited string?	4	10
5b141f1e8399e	5b1422651fdde	How long is an IPv6 address?	4	1
5b141f1e8399e	5b14226574ed5	Which protocol does DHCP use at the Transport layer?	4	2
5b141f1e8399e	5b142265b5d08	Where is a hub specified in the OSI model?	4	3
5b141f1e8399e	5b1422661d93f	Which of the following is private IP address?	4	4
5b141f1e8399e	5b14226663cf4	If you use either Telnet or FTP, which is the highest layer you are using to transmit data?	4	5
5b141f1e8399e	5b1422669481b	Which of the following is a layer 2 protocol used to maintain a loop-free network?	4	6
5b141f1e8399e	5b142266c525c	What is the maximum number of IP addresses that can be assigned to hosts on a local subnet that uses the 255.255.255.224 subnet mask?	4	7
5b141f1e8399e	5b14226711d91	You need to subnet a network that has 5 subnets, each with at least 16 hosts. Which classful subnet mask would you use?	4	8
5b141f1e8399e	5b1422674286d	You have an interface on a router with the IP address of 192.168.192.10/29. Including the router interface, how many hosts can have IP addresses on the LAN attached to the router interface?	4	9
5b141f1e8399e	5b1422677371f	To test the IP stack on your local host, which IP address would you ping?\r\n\r\n	4	10
\.


--
-- Data for Name: _quiz; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._quiz (eid, title, sahi, wrong, total, date) FROM stdin;
5b141b8009cf0	Php & Mysqli	3	1	10	2018-06-03 18:46:56
5b141f1e8399e	Ip Networking	3	1	10	2018-06-03 19:02:22
\.


--
-- Data for Name: _rank; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._rank (email, score, "time") FROM stdin;
pinky@gmail.com	30	2018-06-03 18:57:45
priyanka@gmail.com	22	2018-06-03 18:59:06
\.


--
-- Data for Name: _user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user (name, college, email, password) FROM stdin;
Swagatika Padhi	National Institute of Science and Technology, Berhampur	pinky@gmail.com	pinky
Priyanka Pattnaik	National Institute of Science and Technology, Berhampur	priyanka@gmail.com	pinka
\.


--
-- PostgreSQL database dump complete
--

