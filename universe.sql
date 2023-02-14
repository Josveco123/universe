--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    nro_galaxy integer NOT NULL,
    tipo_galaxy character varying(60),
    edad numeric(6,2),
    descripcion_g text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxi_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxi_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_star (
    galaxy_id integer,
    name character varying(30),
    edad numeric(6,2),
    alumbra boolean,
    descripcion text,
    galaxy_star_id integer NOT NULL,
    codigo integer,
    codigo1 integer NOT NULL
);


ALTER TABLE public.galaxy_star OWNER TO freecodecamp;

--
-- Name: galaxy_star_codigo1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_codigo1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_codigo1_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_codigo1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_codigo1_seq OWNED BY public.galaxy_star.codigo1;


--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_galaxy_star_id_seq OWNED BY public.galaxy_star.galaxy_star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    nro_obs integer,
    name character varying(30),
    planet_id integer NOT NULL,
    forma text,
    size numeric(8,0)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    descripcion text,
    nro_satelite integer,
    galaxy_id integer NOT NULL,
    tiene_agua boolean,
    size numeric(10,0)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    descripcion text,
    distancia integer,
    galaxy_id integer NOT NULL,
    alumbra boolean,
    se_vee boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxi_id_seq'::regclass);


--
-- Name: galaxy_star galaxy_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star ALTER COLUMN galaxy_star_id SET DEFAULT nextval('public.galaxy_star_galaxy_star_id_seq'::regclass);


--
-- Name: galaxy_star codigo1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star ALTER COLUMN codigo1 SET DEFAULT nextval('public.galaxy_star_codigo1_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 12, 'Espiral', 13.50, 'Conglomerado de Polvo Y gas');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 'Espiral Barrada', 13.70, 'Gigantesca agrupacion de estrellas, Planetas y gas');
INSERT INTO public.galaxy VALUES (3, 'Can Mayor', 7, 'Eliptica', 25.00, 'Conglomerado de Polvo Y gas');
INSERT INTO public.galaxy VALUES (4, 'Osa menor', 8, 'Elicoidal', 18.26, 'Una de la galaxias que se ve desde nuestro planeta');
INSERT INTO public.galaxy VALUES (5, 'Tauro', 22, 'Eliptica', 24.26, 'Galacia Azul y estrellada');
INSERT INTO public.galaxy VALUES (6, 'Quimera', 21, 'Eliptica', 2.26, 'Galacia Azul y oscura');
INSERT INTO public.galaxy VALUES (7, 'Roloy', 271, 'Eliptica', 2.26, 'Galacia Azul y oscura');


--
-- Data for Name: galaxy_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_star VALUES (1, 'Via Lactea', 13.50, true, 'Una de las estrella mas luminosa de la via Lactea', 1, NULL, 1);
INSERT INTO public.galaxy_star VALUES (2, 'Andromeda', 13.70, true, 'Principal estrella de Andromeda', 2, NULL, 2);
INSERT INTO public.galaxy_star VALUES (3, 'Can Mayor', 25.00, true, 'LLmada Alumdra, Supergigante Azul B5', 3, NULL, 3);
INSERT INTO public.galaxy_star VALUES (4, 'Osa menor', 18.26, true, 'Llamada enana azul', 4, NULL, 4);
INSERT INTO public.galaxy_star VALUES (4, 'Osa menor', 18.26, true, 'Llamada Brillo azul', 5, NULL, 5);
INSERT INTO public.galaxy_star VALUES (5, 'Tauro', 24.26, false, 'Ejemplo blanco y azul', 6, NULL, 6);
INSERT INTO public.galaxy_star VALUES (5, 'Tauro', 24.26, false, 'Ejemplo blanco y azul', 7, NULL, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 1, 'redonda', 100);
INSERT INTO public.moon VALUES (2, 3, 'lazo', 3, 'eliptica', 55);
INSERT INTO public.moon VALUES (7, 2, 'sookd', 3, 'redonda', 300);
INSERT INTO public.moon VALUES (8, 4, 'lacoo', 12, 'cuadrada', 12);
INSERT INTO public.moon VALUES (9, 12, 'rrkd', 3, 'redonda', 330);
INSERT INTO public.moon VALUES (10, 13, 'lama', 12, 'cuadrada', 12);
INSERT INTO public.moon VALUES (11, 14, 'riki', 3, 'triangular', 60);
INSERT INTO public.moon VALUES (12, 15, 'luca', 3, 'cuadrada', 123);
INSERT INTO public.moon VALUES (13, 17, 'lui', 63, 'lineal', 30);
INSERT INTO public.moon VALUES (14, 19, 'lulia', 3, 'redondo', 124);
INSERT INTO public.moon VALUES (16, 21, 'sucu', 3, 'cuadrada', 256);
INSERT INTO public.moon VALUES (17, 22, 'susu', 4, 'cuadrada', 216);
INSERT INTO public.moon VALUES (18, 24, 'kari', 1, 'elipse', 19);
INSERT INTO public.moon VALUES (19, 26, 'guaca', 3, 'elipse', 23);
INSERT INTO public.moon VALUES (20, 27, 'lisa', 3, 'elipse', 263);
INSERT INTO public.moon VALUES (21, 29, 'juaco', 2, 'redonda', 233);
INSERT INTO public.moon VALUES (22, 30, 'lisa uaco', 2, 'redonda', 233);
INSERT INTO public.moon VALUES (23, 33, 'plisa aco', 7, 'redonda', 2323);
INSERT INTO public.moon VALUES (24, 39, 'allly', 9, 'bola', 23);
INSERT INTO public.moon VALUES (25, 40, 'lly', 8, 'linea', 223);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercurio', 'Primer planeta', 0, 1, false, 10333);
INSERT INTO public.planet VALUES (6, 'Mates', 'Segundo planeta de S S.', 23, 1, false, 12365);
INSERT INTO public.planet VALUES (7, 'Tierra', 'Tercer planeta del SS', 1, 1, true, 20655);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Planeta mas grande del SS', 3, 1, true, 128356);
INSERT INTO public.planet VALUES (9, 'saturno', 'planeta del SS', 13, 1, true, 25655);
INSERT INTO public.planet VALUES (10, 'pluton', 'Planeta mas lejano del SS', 7, 1, true, 128356);
INSERT INTO public.planet VALUES (12, 'Eriksson', 'planeta andromeda', 21, 2, false, 32555);
INSERT INTO public.planet VALUES (13, 'Faroang', 'Planeta mas lejano Andromeda', 11, 2, true, 32555);
INSERT INTO public.planet VALUES (14, 'Joba', 'planeta andromeda Nro 4', 15, 2, true, 36555);
INSERT INTO public.planet VALUES (15, 'Nalesh', 'Planeta  Andromeda', 24, 2, true, 42555);
INSERT INTO public.planet VALUES (16, 'Can 56DC', 'planeta cercano a la Galaxia Can', 65, 3, false, 96555);
INSERT INTO public.planet VALUES (17, 'Uri B234', 'Galacia Cam Mayor', 38, 3, false, 52555);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Batelgeuse', 'Una de las estrella mas luminosa de la via Lactea', 530, 1, true, true);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'Principal estrella de Andromeda', 970, 2, true, false);
INSERT INTO public.star VALUES (3, 'Cenis Maior', 'LLmada Alumdra, Supergigante Azul B5', 18700, 3, true, false);
INSERT INTO public.star VALUES (4, 'Sinoni', 'Llamada enana azul', 1256, 4, true, false);
INSERT INTO public.star VALUES (5, 'Yoyoi', 'Llamada Brillo azul', 3326, 4, true, false);
INSERT INTO public.star VALUES (6, 'Sinati', 'Ejemplo blanco y azul', 3826, 5, false, false);
INSERT INTO public.star VALUES (8, 'Sisin', 'Ejemplo blanco y azul', 326, 5, false, false);


--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxi_id_seq', 7, true);


--
-- Name: galaxy_star_codigo1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_codigo1_seq', 7, true);


--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_galaxy_star_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_nro_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nro_galaxy_key UNIQUE (nro_galaxy);


--
-- Name: galaxy galaxy_nro_galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nro_galaxy_unique UNIQUE (nro_galaxy);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_star galaxy_star_codigo1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_codigo1_key UNIQUE (codigo1);


--
-- Name: galaxy_star galaxy_star_codigo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_codigo_key UNIQUE (codigo);


--
-- Name: galaxy_star galaxy_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_pkey PRIMARY KEY (galaxy_star_id);


--
-- Name: moon moon_nro_obs_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nro_obs_key UNIQUE (nro_obs);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nro_satelite_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nro_satelite_key UNIQUE (nro_satelite);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distancia_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distancia_key UNIQUE (distancia);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

