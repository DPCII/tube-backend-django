--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dpcii;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dpcii;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dpcii;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dpcii;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dpcii;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dpcii;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dpcii;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dpcii;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dpcii;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dpcii;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dpcii;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dpcii;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dpcii;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dpcii;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dpcii;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dpcii;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dpcii;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dpcii;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dpcii;

--
-- Name: videos_formal_science; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_formal_science (
    id integer NOT NULL,
    formal_science character varying(100) NOT NULL
);


ALTER TABLE public.videos_formal_science OWNER TO dpcii;

--
-- Name: videos_formal_science_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_formal_science_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_formal_science_id_seq OWNER TO dpcii;

--
-- Name: videos_formal_science_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_formal_science_id_seq OWNED BY public.videos_formal_science.id;


--
-- Name: videos_natural_science; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_natural_science (
    id integer NOT NULL,
    natural_science character varying(100) NOT NULL
);


ALTER TABLE public.videos_natural_science OWNER TO dpcii;

--
-- Name: videos_natural_science_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_natural_science_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_natural_science_id_seq OWNER TO dpcii;

--
-- Name: videos_natural_science_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_natural_science_id_seq OWNED BY public.videos_natural_science.id;


--
-- Name: videos_natural_science_video; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_natural_science_video (
    id integer NOT NULL,
    vid_url character varying(200) NOT NULL,
    "resId" character varying(255) NOT NULL,
    vid_player character varying(40) NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    tags character varying(255) NOT NULL,
    natural_science_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.videos_natural_science_video OWNER TO dpcii;

--
-- Name: videos_natural_science_video_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_natural_science_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_natural_science_video_id_seq OWNER TO dpcii;

--
-- Name: videos_natural_science_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_natural_science_video_id_seq OWNED BY public.videos_natural_science_video.id;


--
-- Name: videos_region; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_region (
    id integer NOT NULL,
    region character varying(55) NOT NULL
);


ALTER TABLE public.videos_region OWNER TO dpcii;

--
-- Name: videos_region_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_region_id_seq OWNER TO dpcii;

--
-- Name: videos_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_region_id_seq OWNED BY public.videos_region.id;


--
-- Name: videos_subject; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_subject (
    id integer NOT NULL,
    topic character varying(50) NOT NULL
);


ALTER TABLE public.videos_subject OWNER TO dpcii;

--
-- Name: videos_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_subject_id_seq OWNER TO dpcii;

--
-- Name: videos_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_subject_id_seq OWNED BY public.videos_subject.id;


--
-- Name: videos_time_period; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_time_period (
    id integer NOT NULL,
    era character varying(100) NOT NULL
);


ALTER TABLE public.videos_time_period OWNER TO dpcii;

--
-- Name: videos_time_period_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_time_period_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_time_period_id_seq OWNER TO dpcii;

--
-- Name: videos_time_period_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_time_period_id_seq OWNED BY public.videos_time_period.id;


--
-- Name: videos_video_entry; Type: TABLE; Schema: public; Owner: dpcii
--

CREATE TABLE public.videos_video_entry (
    id integer NOT NULL,
    vid_url character varying(200) NOT NULL,
    description text NOT NULL,
    tags character varying(225) NOT NULL,
    title character varying(150) NOT NULL,
    era_id integer NOT NULL,
    region_id integer NOT NULL,
    subject_id integer NOT NULL,
    "resId" character varying(255),
    vid_player character varying(40) NOT NULL
);


ALTER TABLE public.videos_video_entry OWNER TO dpcii;

--
-- Name: videos_video_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: dpcii
--

CREATE SEQUENCE public.videos_video_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_video_entry_id_seq OWNER TO dpcii;

--
-- Name: videos_video_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dpcii
--

ALTER SEQUENCE public.videos_video_entry_id_seq OWNED BY public.videos_video_entry.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: videos_formal_science id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_formal_science ALTER COLUMN id SET DEFAULT nextval('public.videos_formal_science_id_seq'::regclass);


--
-- Name: videos_natural_science id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science ALTER COLUMN id SET DEFAULT nextval('public.videos_natural_science_id_seq'::regclass);


--
-- Name: videos_natural_science_video id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science_video ALTER COLUMN id SET DEFAULT nextval('public.videos_natural_science_video_id_seq'::regclass);


--
-- Name: videos_region id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_region ALTER COLUMN id SET DEFAULT nextval('public.videos_region_id_seq'::regclass);


--
-- Name: videos_subject id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_subject ALTER COLUMN id SET DEFAULT nextval('public.videos_subject_id_seq'::regclass);


--
-- Name: videos_time_period id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_time_period ALTER COLUMN id SET DEFAULT nextval('public.videos_time_period_id_seq'::regclass);


--
-- Name: videos_video_entry id; Type: DEFAULT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_video_entry ALTER COLUMN id SET DEFAULT nextval('public.videos_video_entry_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add region	7	add_region
26	Can change region	7	change_region
27	Can delete region	7	delete_region
28	Can view region	7	view_region
29	Can add subject	8	add_subject
30	Can change subject	8	change_subject
31	Can delete subject	8	delete_subject
32	Can view subject	8	view_subject
33	Can add time_ period	9	add_time_period
34	Can change time_ period	9	change_time_period
35	Can delete time_ period	9	delete_time_period
36	Can view time_ period	9	view_time_period
37	Can add video_ entry	10	add_video_entry
38	Can change video_ entry	10	change_video_entry
39	Can delete video_ entry	10	delete_video_entry
40	Can view video_ entry	10	view_video_entry
41	Can add formal_ science	11	add_formal_science
42	Can change formal_ science	11	change_formal_science
43	Can delete formal_ science	11	delete_formal_science
44	Can view formal_ science	11	view_formal_science
45	Can add natural_ science_ video	12	add_natural_science_video
46	Can change natural_ science_ video	12	change_natural_science_video
47	Can delete natural_ science_ video	12	delete_natural_science_video
48	Can view natural_ science_ video	12	view_natural_science_video
49	Can add natural_ science	13	add_natural_science
50	Can change natural_ science	13	change_natural_science
51	Can delete natural_ science	13	delete_natural_science
52	Can view natural_ science	13	view_natural_science
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$dGhY80QZxulg$r1KVKjImFVxvYrDA25gphoFyReF7EDdAAw6pFe3auNs=	2019-10-25 08:26:21.584817-04	t	dpc-admin				t	t	2019-10-19 12:34:43.482765-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-10-19 12:35:11.893638-04	1	Early Modern	1	[{"added": {}}]	9	1
2	2019-10-19 12:35:17.213027-04	1	History	1	[{"added": {}}]	8	1
3	2019-10-19 12:35:22.650926-04	1	Europe	1	[{"added": {}}]	7	1
4	2019-10-19 12:39:15.486635-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	1	[{"added": {}}]	10	1
5	2019-10-19 12:40:11.48236-04	2	Napoleon (Part 2) - The Conquest of Europe (1805 - 1812)	1	[{"added": {}}]	10	1
6	2019-10-19 12:44:16.740794-04	2	Modern	1	[{"added": {}}]	9	1
7	2019-10-19 12:44:35.796979-04	3	Good Luck Everyone - Blackadder - BBC	1	[{"added": {}}]	10	1
8	2019-10-19 12:49:27.434583-04	2	North America	1	[{"added": {}}]	7	1
9	2019-10-19 12:49:38.595889-04	4	Don't Be a Sucker	1	[{"added": {}}]	10	1
10	2019-10-20 17:25:20.193347-04	5	Cherry Blossoms Falling	1	[{"added": {}}]	10	1
11	2019-10-20 20:07:40.970512-04	5	Cherry Blossoms Falling	2	[{"changed": {"fields": ["resId"]}}]	10	1
12	2019-10-20 20:11:31.914981-04	5	Cherry Blossoms Falling	2	[{"changed": {"fields": ["vid_player"]}}]	10	1
13	2019-10-20 20:12:06.817271-04	4	Don't Be a Sucker	2	[{"changed": {"fields": ["resId"]}}]	10	1
14	2019-10-20 20:12:21.437407-04	3	Good Luck Everyone - Blackadder - BBC	2	[{"changed": {"fields": ["resId"]}}]	10	1
15	2019-10-20 20:12:37.15735-04	2	Napoleon (Part 2) - The Conquest of Europe (1805 - 1812)	2	[{"changed": {"fields": ["resId"]}}]	10	1
16	2019-10-20 20:12:46.257991-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	2	[{"changed": {"fields": ["resId"]}}]	10	1
17	2019-10-20 21:13:50.219002-04	6	The True Glory, 1945 (restored)	1	[{"added": {}}]	10	1
18	2019-10-20 21:19:55.613659-04	7	Walt Disney's Education for Death	1	[{"added": {}}]	10	1
19	2019-10-21 11:33:44.059749-04	8	Valley of the Tennessee, 1944	1	[{"added": {}}]	10	1
20	2019-10-21 13:36:02.321861-04	9	Everybody Joins the War Effort (1942)	1	[{"added": {}}]	10	1
21	2019-10-21 14:06:24.643571-04	3	Asia	1	[{"added": {}}]	7	1
22	2019-10-21 14:08:05.537347-04	10	WHY WE'RE HERE	1	[{"added": {}}]	10	1
23	2019-10-21 14:31:38.810387-04	10	WHY WE'RE HERE	2	[{"changed": {"fields": ["vid_player"]}}]	10	1
24	2019-10-21 14:42:51.721526-04	10	WHY WE'RE HERE	2	[{"changed": {"fields": ["resId"]}}]	10	1
25	2019-10-21 17:31:06.026833-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	2	[{"changed": {"fields": ["vid_url"]}}]	10	1
26	2019-10-21 17:32:20.165506-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	2	[{"changed": {"fields": ["vid_url", "resId"]}}]	10	1
27	2019-10-21 17:33:31.29419-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	2	[{"changed": {"fields": ["resId"]}}]	10	1
28	2019-10-21 19:03:51.674564-04	9	Everybody Joins the War Effort (1942)	2	[{"changed": {"fields": ["vid_url", "resId", "vid_player"]}}]	10	1
29	2019-10-21 19:14:08.506322-04	9	Everybody Joins the War Effort (1942)	2	[{"changed": {"fields": ["vid_url", "resId"]}}]	10	1
30	2019-10-21 19:14:15.401486-04	9	Everybody Joins the War Effort (1942)	2	[{"changed": {"fields": ["vid_player"]}}]	10	1
31	2019-10-21 19:36:43.682801-04	10	Why We're Here (Part 1)	2	[{"changed": {"fields": ["title"]}}]	10	1
32	2019-10-21 19:37:50.002573-04	11	Why We're Here (Part 2)	1	[{"added": {}}]	10	1
33	2019-10-21 19:38:21.288188-04	11	Why We're Here (Part 2)	2	[{"changed": {"fields": ["description", "tags"]}}]	10	1
34	2019-10-21 19:38:29.04018-04	10	Why We're Here (Part 1)	2	[{"changed": {"fields": ["description"]}}]	10	1
35	2019-10-21 19:40:38.667779-04	12	Why We're Here (Part 3)	1	[{"added": {}}]	10	1
36	2019-10-21 19:41:22.220913-04	13	Why We're Here (Part 4)	1	[{"added": {}}]	10	1
37	2019-10-21 19:41:44.417395-04	12	Why We're Here (Part 3)	2	[{"changed": {"fields": ["description"]}}]	10	1
38	2019-10-21 19:41:57.494244-04	13	Why We're Here (Part 4)	2	[{"changed": {"fields": ["description"]}}]	10	1
39	2019-10-21 21:57:46.311906-04	2	Science	1	[{"added": {}}]	8	1
40	2019-10-21 22:16:13.815551-04	1	chemistry	1	[{"added": {}}]	13	1
41	2019-10-21 22:22:54.290834-04	1	Attempting to make a ferrofluid	1	[{"added": {}}]	12	1
42	2019-10-25 08:31:41.475422-04	2	The Magic of Chemistry - with Andrew Szydlo	1	[{"added": {}}]	12	1
43	2019-10-25 09:35:56.383089-04	1	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	2	[{"changed": {"fields": ["description"]}}]	10	1
44	2019-10-25 09:36:28.039689-04	2	Napoleon (Part 2) - The Conquest of Europe (1805 - 1812)	2	[{"changed": {"fields": ["description"]}}]	10	1
45	2019-10-25 09:54:18.22154-04	3	Good Luck Everyone - Blackadder - BBC	2	[{"changed": {"fields": ["description", "tags"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	videos	region
8	videos	subject
9	videos	time_period
10	videos	video_entry
11	videos	formal_science
12	videos	natural_science_video
13	videos	natural_science
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-10-19 12:32:17.558527-04
2	auth	0001_initial	2019-10-19 12:32:17.595261-04
3	admin	0001_initial	2019-10-19 12:32:17.634926-04
4	admin	0002_logentry_remove_auto_add	2019-10-19 12:32:17.650556-04
5	admin	0003_logentry_add_action_flag_choices	2019-10-19 12:32:17.659532-04
6	contenttypes	0002_remove_content_type_name	2019-10-19 12:32:17.679634-04
7	auth	0002_alter_permission_name_max_length	2019-10-19 12:32:17.684796-04
8	auth	0003_alter_user_email_max_length	2019-10-19 12:32:17.693017-04
9	auth	0004_alter_user_username_opts	2019-10-19 12:32:17.701729-04
10	auth	0005_alter_user_last_login_null	2019-10-19 12:32:17.710863-04
11	auth	0006_require_contenttypes_0002	2019-10-19 12:32:17.71272-04
12	auth	0007_alter_validators_add_error_messages	2019-10-19 12:32:17.720352-04
13	auth	0008_alter_user_username_max_length	2019-10-19 12:32:17.732795-04
14	auth	0009_alter_user_last_name_max_length	2019-10-19 12:32:17.741296-04
15	auth	0010_alter_group_name_max_length	2019-10-19 12:32:17.752213-04
16	auth	0011_update_proxy_permissions	2019-10-19 12:32:17.762709-04
17	sessions	0001_initial	2019-10-19 12:32:17.768611-04
18	videos	0001_initial	2019-10-19 12:32:17.791893-04
19	videos	0002_video_entry_resid	2019-10-20 20:06:59.803742-04
20	videos	0003_video_entry_vid_player	2019-10-20 20:11:04.508164-04
21	videos	0004_auto_20191021_1831	2019-10-21 14:31:15.902262-04
22	videos	0005_formal_science_natural_science_natural_science_video	2019-10-21 21:57:09.02505-04
23	videos	0006_auto_20191022_0206	2019-10-21 22:06:34.389113-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bxw97grcla6j9a9x252yu7r1cd0bp9bj	NzA5ZjA1YjQ5MDg2MzAxOWUwYjgwYjk2ZDU5NTBjZDI4OGEzOWUzNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTc0NjM5ZmIyZGU0YjZiZDFiNGNjMDRlZWJjNGMzNzk3YWU1OTFkIn0=	2019-11-02 12:34:49.381171-04
xuleo3f7hp6kb4cn8ki8chxidrnsqz73	NzA5ZjA1YjQ5MDg2MzAxOWUwYjgwYjk2ZDU5NTBjZDI4OGEzOWUzNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTc0NjM5ZmIyZGU0YjZiZDFiNGNjMDRlZWJjNGMzNzk3YWU1OTFkIn0=	2019-11-08 07:26:21.587304-05
\.


--
-- Data for Name: videos_formal_science; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_formal_science (id, formal_science) FROM stdin;
\.


--
-- Data for Name: videos_natural_science; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_natural_science (id, natural_science) FROM stdin;
1	chemistry
\.


--
-- Data for Name: videos_natural_science_video; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_natural_science_video (id, vid_url, "resId", vid_player, title, description, tags, natural_science_id, subject_id) FROM stdin;
1	https://www.youtube.com/watch?v=uLAeHVRxhAU	uLAeHVRxhAU	youtube	Attempting to make a ferrofluid	From the Description: \r\n\r\nIn this video, I'll be attempting to make ferrofluid from the ferric chloride and ferrous sulfate that I made in a previous video. At first, I thought that this project would be really straightforward, but it turned out to be much more difficult than I thought.\r\n\r\nI am going to be working more on this project, and I hope that soon I'll have an easy method to make it from relatively easy to get chemicals and supplies.	nile red	1	2
2	https://www.youtube.com/watch?v=0g8lANs6zpQ	0g8lANs6zpQ	youtube	The Magic of Chemistry - with Andrew Szydlo	A teacher passionate about Chemistry explains the topic in an entertaining and informative way, using visual demonstrations to engage you in the process of grasping a complicated topic.	experiments, fire, chemical reactions	1	2
\.


--
-- Data for Name: videos_region; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_region (id, region) FROM stdin;
1	Europe
2	North America
3	Asia
\.


--
-- Data for Name: videos_subject; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_subject (id, topic) FROM stdin;
1	History
2	Science
\.


--
-- Data for Name: videos_time_period; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_time_period (id, era) FROM stdin;
1	Early Modern
2	Modern
\.


--
-- Data for Name: videos_video_entry; Type: TABLE DATA; Schema: public; Owner: dpcii
--

COPY public.videos_video_entry (id, vid_url, description, tags, title, era_id, region_id, subject_id, "resId", vid_player) FROM stdin;
7	https://www.youtube.com/watch?v=6vLrTNKk89Q	Disney produced a number of war films in their animated style for Western audiences. This famous piece depicts the life of a young man, born into Nazi Germany, and follows his "education" into adulthood. It's a humorous satire of a serious subject matter: what happens to the young when your culture becomes obsessed with anger?	animated, ww2, social history, nazism	Walt Disney's Education for Death	2	1	1	6vLrTNKk89Q	youtube
5	https://vimeo.com/343750517	Sample video from vimeo.	cherry blossom, peaceful, spring	Cherry Blossoms Falling	2	2	1	343750517	vimeo
4	https://www.youtube.com/watch?v=vGAqYNFQdZ4&list=PLcGnCNlKX8HlHVOh-BNWKAgoHT3ZOiGNI&index=22&t=0s	National Archives Identifier: 24376\r\nLocal Identifier: 111-EF-6\r\nhttps://catalog.archives.gov/id/24376\r\n\r\nCreator(s): Department of Defense. Department of the Army. Office of the Chief Signal Officer. (9/18/1947 - 3/1/1964)  (Most Recent)\r\n\r\nFrom: Series: Educational Films, 1942 - 1947\r\n\r\nRecord Group 111: Records of the Office of the Chief Signal Officer, 1860 - 1985\r\n\r\nThis item was produced or created: 1945\r\n\r\nOther Title(s):Educational Film, no. 6\r\n\r\nScope & Content: Dramatizes the destructive effects of racial and religious prejudice. Reel 1 shows a fake wrestling match and "crooked" gambling games. An agitator addresses a street crowd; he almost convinces one man in the audience until the man begins to talk to a Hungarian refugee from Germany. A Nazi speaker harangues a crowd in Germany denouncing Jews, Catholics, and Freemasons. Reel 2, a German unemployed worker joins Hitler's Storm Troops. SS men attack Jewish and Catholic headquarters in Germany, and beat up a Jewish storekeeper. A German teacher explains Nazi racial theories; the teacher is dragged away by German soldiers.\r\n\r\nContact(s):\r\nNational Archives at College Park - Motion Pictures (RDSM)\r\nNational Archives at College Park\r\n8601 Adelphi Road\r\nCollege Park, MD 20740-6001\r\nPhone: 301-837-3540\r\nEmail: mopix@nara.gov\r\nCategory\r\nEducation	archives, wartime psa	Don't Be a Sucker	2	2	1	vGAqYNFQdZ4	youtube
3	https://www.youtube.com/watch?v=vH3-Gt7mgyM&list=PLcGnCNlKX8HnVoeSRP6i-Kzpp_wjCgK2G&index=14&t=0s	Blackadder was a popular British television series taking a humorous look at history, and its final season explored one the world's worst events. The First World War involved new, terrible destructive technologies. This resulted in battlefields of carnage, where little was accomplished by either side, other than tragic sacrifice. Strong social values of duty and discipline kept soldiers obedient, even in the most ridiculous of circumstances, like running across a field toward a machine gun, which happened all too often. History would later characterize the war as a display of madness led by inept generals. The show parodied how little difference there was between the comedic incompetence of its characters and the actual circumstances. However, the final episode closed by lifting the characters out of their role in the final moments. The entire show they had tried to avoid the suicidal circumstances of going "over the top," but the moment had finally come. The scene pays tribute to what so many men sacrificed  from 1914 - 1918.	poignant zeitgeist, historical drama, ww1, World War 1, World War I,	Good Luck Everyone - Blackadder - BBC	2	1	1	vH3-Gt7mgyM	youtube
9	https://www.youtube.com/watch?v=HCjIux2N52o	When America entered the Second World War, wealthy and famous people joined the military out of a sense of duty to the country. These volunteers were assigned to actual combat missions, not just entertaining the troops or sitting behind a desk. Some of the movie stars from classic movies like It's A Wonderful Life and Gone With The Wind volunteered to fight despite resistance from the movie studios, which made a lot of money from their films. Is this attitude toward civic duty still shared in our culture today? If it has changed, how has it changed?	ww2, short form, hollywood	Everybody Joins the War Effort (1942)	2	2	1	HCjIux2N52o	youtube
6	https://www.youtube.com/watch?v=9ifDqlRZh70&list=PLugwVCjzrJsWIM3pm2EAxypQnwI9g51Gt	One hour film by the US and UK governments to describe the victory in Europe to the citizens of the free world. In 1945, there were no televisions in the home. Presenting stories in video form was only possible by distributing films to the local theater.	ww2, long form	The True Glory, 1945 (restored)	2	1	1	9ifDqlRZh70	youtube
8	https://www.youtube.com/watch?v=SfJt-W7fwTY&list=PLugwVCjzrJsWIM3pm2EAxypQnwI9g51Gt	This is an archive film describing life in the Tennessee River Valley in the middle of the 20th century. It describes the unique way in which technology and culture failed to reach these areas and how it impacted the region. The nature of life in hard, mountain terrain made the people of the Appalachians more similar to the people of places like Afghanistan or Nepal than people just a few hundred miles away. How does geography do that? What are the conditions that forge people and culture?	appalachia, poor rural america	Valley of the Tennessee, 1944	2	2	1	SfJt-W7fwTY	youtube
2	https://www.youtube.com/watch?v=Jq-0qkVTR04	From the description: This is part two of our video series on the history of Napoleon. In this video, we cover the period from the Napoleonic wars until the invasion of Russia. (Part 2)\r\n\r\nCategory\r\nEducation	animated map, map overlay, narrated	Napoleon (Part 2) - The Conquest of Europe (1805 - 1812)	1	1	1	Jq-0qkVTR04	youtube
11	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r2.mp4	This degraded war film explains to reluctant US Citizens why we were fighting in the far away jungles of Burma. It explains the geopolitical realities of war with Japan, and our alliance with China. (Part 2)	ww2, short form,	Why We're Here (Part 2)	2	3	1	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r2.mp4	national archives
10	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r1.mp4	This degraded war film explains to reluctant US Citizens why we were fighting in the far away jungles of Burma. It explains the geopolitical realities of war with Japan, and our alliance with China. (Part 1)	ww2, short form,	Why We're Here (Part 1)	2	3	1	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r1.mp4	national archives
12	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r3.mp4	This degraded war film explains to reluctant US Citizens why we were fighting in the far away jungles of Burma. It explains the geopolitical realities of war with Japan, and our alliance with China. (Part 3)	ww2, short form,	Why We're Here (Part 3)	2	3	1	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r3.mp4	national archives
1	https://www.youtube.com/watch?v=2eY4gmndO3g	From the description: This video is part one of a three-part series on the history of Napoleon. Here, we cover the period from his birth until his nomination as the first Emperor of the french. (Part 1)\r\n\r\nCategory\r\nEducation	animated map, map overlay, narrated	Napoleon (Part 1) - Birth of an Emperor (1768 - 1804)	1	1	1	2eY4gmndO3g	youtube
13	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r4.mp4	This degraded war film explains to reluctant US Citizens why we were fighting in the far away jungles of Burma. It explains the geopolitical realities of war with Japan, and our alliance with China. (Part 4)	ww2, short form	Why We're Here (Part 4)	2	3	1	https://s3.amazonaws.com/NARAprodstorage/lz/mopix/111/of/111-of-25-r4.mp4	national archives
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 45, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: videos_formal_science_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_formal_science_id_seq', 1, false);


--
-- Name: videos_natural_science_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_natural_science_id_seq', 1, true);


--
-- Name: videos_natural_science_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_natural_science_video_id_seq', 2, true);


--
-- Name: videos_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_region_id_seq', 3, true);


--
-- Name: videos_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_subject_id_seq', 2, true);


--
-- Name: videos_time_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_time_period_id_seq', 2, true);


--
-- Name: videos_video_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dpcii
--

SELECT pg_catalog.setval('public.videos_video_entry_id_seq', 13, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: videos_formal_science videos_formal_science_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_formal_science
    ADD CONSTRAINT videos_formal_science_pkey PRIMARY KEY (id);


--
-- Name: videos_natural_science videos_natural_science_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science
    ADD CONSTRAINT videos_natural_science_pkey PRIMARY KEY (id);


--
-- Name: videos_natural_science_video videos_natural_science_video_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science_video
    ADD CONSTRAINT videos_natural_science_video_pkey PRIMARY KEY (id);


--
-- Name: videos_region videos_region_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_region
    ADD CONSTRAINT videos_region_pkey PRIMARY KEY (id);


--
-- Name: videos_subject videos_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_subject
    ADD CONSTRAINT videos_subject_pkey PRIMARY KEY (id);


--
-- Name: videos_time_period videos_time_period_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_time_period
    ADD CONSTRAINT videos_time_period_pkey PRIMARY KEY (id);


--
-- Name: videos_video_entry videos_video_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_video_entry
    ADD CONSTRAINT videos_video_entry_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: videos_natural_science_video_natural_science_id_2de7a708; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX videos_natural_science_video_natural_science_id_2de7a708 ON public.videos_natural_science_video USING btree (natural_science_id);


--
-- Name: videos_natural_science_video_subject_id_5cd6ea2a; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX videos_natural_science_video_subject_id_5cd6ea2a ON public.videos_natural_science_video USING btree (subject_id);


--
-- Name: videos_video_entry_era_id_76af21e9; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX videos_video_entry_era_id_76af21e9 ON public.videos_video_entry USING btree (era_id);


--
-- Name: videos_video_entry_region_id_4db1cab0; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX videos_video_entry_region_id_4db1cab0 ON public.videos_video_entry USING btree (region_id);


--
-- Name: videos_video_entry_subject_id_3703af8e; Type: INDEX; Schema: public; Owner: dpcii
--

CREATE INDEX videos_video_entry_subject_id_3703af8e ON public.videos_video_entry USING btree (subject_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_natural_science_video videos_natural_scien_natural_science_id_2de7a708_fk_videos_na; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science_video
    ADD CONSTRAINT videos_natural_scien_natural_science_id_2de7a708_fk_videos_na FOREIGN KEY (natural_science_id) REFERENCES public.videos_natural_science(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_natural_science_video videos_natural_scien_subject_id_5cd6ea2a_fk_videos_su; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_natural_science_video
    ADD CONSTRAINT videos_natural_scien_subject_id_5cd6ea2a_fk_videos_su FOREIGN KEY (subject_id) REFERENCES public.videos_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_video_entry videos_video_entry_era_id_76af21e9_fk_videos_time_period_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_video_entry
    ADD CONSTRAINT videos_video_entry_era_id_76af21e9_fk_videos_time_period_id FOREIGN KEY (era_id) REFERENCES public.videos_time_period(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_video_entry videos_video_entry_region_id_4db1cab0_fk_videos_region_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_video_entry
    ADD CONSTRAINT videos_video_entry_region_id_4db1cab0_fk_videos_region_id FOREIGN KEY (region_id) REFERENCES public.videos_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videos_video_entry videos_video_entry_subject_id_3703af8e_fk_videos_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: dpcii
--

ALTER TABLE ONLY public.videos_video_entry
    ADD CONSTRAINT videos_video_entry_subject_id_3703af8e_fk_videos_subject_id FOREIGN KEY (subject_id) REFERENCES public.videos_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

