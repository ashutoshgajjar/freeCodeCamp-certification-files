--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: ashutoshg
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(12,2),
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO ashutoshg;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: ashutoshg
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO ashutoshg;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ashutoshg
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: ashutoshg
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    typical_size integer NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO ashutoshg;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ashutoshg
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO ashutoshg;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ashutoshg
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: ashutoshg
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    diameter integer NOT NULL,
    is_spherical boolean NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO ashutoshg;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: ashutoshg
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO ashutoshg;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ashutoshg
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: ashutoshg
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL,
    planet_type text NOT NULL
);


ALTER TABLE public.planet OWNER TO ashutoshg;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: ashutoshg
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO ashutoshg;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ashutoshg
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: ashutoshg
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    temperature integer,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.star OWNER TO ashutoshg;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: ashutoshg
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO ashutoshg;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ashutoshg
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: ashutoshg
--

COPY public.galaxy (galaxy_id, name, description, age_in_millions_of_years, distance_from_earth, has_life) FROM stdin;
1	Milky Way	Home galaxy	13600	0.00	f
2	Andromeda	Nearest spiral galaxy	10000	2537000.00	f
3	Triangulum	Spiral galaxy	12000	3000000.00	f
4	Whirlpool	Interacting galaxy	11000	23000000.00	f
5	Sombrero	Bright galaxy	13000	29000000.00	f
6	Cartwheel	Ring galaxy	500	500000000.00	f
\.


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: ashutoshg
--

COPY public.galaxy_type (galaxy_type_id, name, description, typical_size) FROM stdin;
1	Spiral	Disk shaped galaxy	100000
2	Elliptical	Oval galaxy	200000
3	Irregular	No fixed shape	50000
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: ashutoshg
--

COPY public.moon (moon_id, name, planet_id, diameter, is_spherical, description) FROM stdin;
1	Moon	3	3474	t	Earth moon
2	Phobos	4	22	f	Mars moon
3	Deimos	4	12	f	Mars moon
4	Io	5	3643	t	Jupiter moon
5	Europa	5	3122	t	Jupiter moon
6	Ganymede	5	5268	t	Largest moon
7	Callisto	5	4821	t	Outer moon
8	Amalthea	5	167	f	Small moon
9	Himalia	5	170	t	Jupiter moon
10	Elara	5	86	f	Jupiter moon
11	Titan	6	5150	t	Saturn moon
12	Enceladus	6	504	t	Saturn moon
13	Mimas	6	396	t	Saturn moon
14	Rhea	6	1528	t	Saturn moon
15	Iapetus	6	1469	t	Saturn moon
16	Miranda	7	471	t	Uranus moon
17	Ariel	7	1158	t	Uranus moon
18	Umbriel	7	1169	t	Uranus moon
19	Triton	8	2707	t	Neptune moon
20	Nereid	8	340	t	Neptune moon
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: ashutoshg
--

COPY public.planet (planet_id, name, star_id, age_in_millions_of_years, has_life, planet_type) FROM stdin;
1	Mercury	1	4500	f	Terrestrial
2	Venus	1	4500	f	Terrestrial
3	Earth	1	4500	t	Terrestrial
4	Mars	1	4500	f	Terrestrial
5	Jupiter	1	4500	f	Gas Giant
6	Saturn	1	4500	f	Gas Giant
7	Uranus	1	4500	f	Ice Giant
8	Neptune	1	4500	f	Ice Giant
9	Proxima b	2	4800	f	Exoplanet
10	Sirius b1	3	300	f	Rocky
11	Andromeda Prime	4	500	f	Gas Giant
12	Triangulum One	5	1200	f	Super Earth
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: ashutoshg
--

COPY public.star (star_id, name, galaxy_id, age_in_millions_of_years, temperature, is_spherical) FROM stdin;
1	Sun	1	4600	5778	t
2	Proxima Centauri	1	4500	3042	t
3	Sirius	1	242	9940	t
4	Alpha Andromedae	2	60	13800	t
5	Delta Trianguli	3	1500	6400	t
6	Whirlpool Star	4	900	7500	t
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ashutoshg
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ashutoshg
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ashutoshg
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ashutoshg
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ashutoshg
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ashutoshg
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

