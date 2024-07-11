--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text,
    form character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_info (
    planet_info_id integer NOT NULL,
    type_of_planet character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    has_moon boolean NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.planet_info OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_info_planet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_info_planet_info_id_seq OWNER TO freecodecamp;

--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_info_planet_info_id_seq OWNED BY public.planet_info.planet_info_id;


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
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text,
    type_of_star character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_info planet_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info ALTER COLUMN planet_info_id SET DEFAULT nextval('public.planet_info_planet_info_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andrómeda', 10000, 'La galaxia Andrómeda es una galaxia de tipo espiral, situada a 2.5 de la tierra. Es la galaxia más cercana a la Vía Láctea', 'Espiral');
INSERT INTO public.galaxy VALUES (2, 'Vía Láctea', 13000, 'La Vía Láctea es donde nos encontramos, contiene nuestro sistema solar. Es de tipo espiral barrada y tiene un diámetro aproximado de 100,000 años luz', 'Espiral barrada');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 9000, 'Ssituada a 3 millone de años luz  de la tierra', 'Espiral');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 7000, 'Situada en la constelación de Virgo a una distancia de la tierra de 23,9 millones de años luz', 'Espiral no barrada');
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 10000, 'La galaxia Rueda de Carro es una galaxia lenticular y de anillo situada a 500 millones de años luz de la Tierra, en la constelación de Escultor', 'Lenticular');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 8000, 'Galaxia espiral clásica, interactuando con una galaxia enana, NGC 5195. Se encuentra a 23 millones de años luz de la tierra', 'Espiral interactuante');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 1, 4500, 'Cubierta de hielo.', 2);
INSERT INTO public.moon VALUES (2, 'Titan', 2, 4500, 'Lagos de metano.', 3);
INSERT INTO public.moon VALUES (3, 'Enceladus', 1, 4500, 'Geiseres de agua.', 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1, 4700, 'Luna más grandre.', 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 1, 2800, ' Superficie helada', 2);
INSERT INTO public.moon VALUES (6, 'IO', 1, 3500, 'Volcanes activos', 2);
INSERT INTO public.moon VALUES (7, 'Triton', 2, 4300, 'Luna de Neptuno.', 7);
INSERT INTO public.moon VALUES (8, 'Charon', 5, 6700, 'Luna de Plutón.', 11);
INSERT INTO public.moon VALUES (9, 'Dione', 2, 5250, 'Superficie helada.', 4);
INSERT INTO public.moon VALUES (10, 'Rhea', 1, 2300, 'Metade escura', 3);
INSERT INTO public.moon VALUES (11, 'Iapetus', 2, 8700, 'Metade escura', 3);
INSERT INTO public.moon VALUES (12, 'Mimas', 1, 3460, 'Crater Herschel', 5);
INSERT INTO public.moon VALUES (13, 'Phobos', 1, 3000, 'Luna Marciana.', 3);
INSERT INTO public.moon VALUES (14, 'Deimos', 1, 750, 'Luna pequeña', 3);
INSERT INTO public.moon VALUES (15, 'Oberon', 2, 5100, 'Luna uraniana', 9);
INSERT INTO public.moon VALUES (16, 'Titania', 2, 6100, 'Mayor luna uraniana', 9);
INSERT INTO public.moon VALUES (17, 'Umbriel', 1, 3400, 'Oscura y helada', 12);
INSERT INTO public.moon VALUES (18, 'Ariel', 1, 2300, 'Microluna', 12);
INSERT INTO public.moon VALUES (19, 'Miranda', 1, 3200, 'Terreno variano', 10);
INSERT INTO public.moon VALUES (20, 'Nered', 1, 3200, 'Orbita excentrica', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aldebaran', 5, 500, 'Exoplaneta en la zona habitable de Proxima Centauri', 2);
INSERT INTO public.planet VALUES (2, 'Kepler-452b', 2, 6000, 'Exoplaneta similar a la tierra en la zona habitable.', 1);
INSERT INTO public.planet VALUES (3, 'Kepler-22b', 32, 4000, 'Exoplaneta en la zona habitable de su estrella.', 1);
INSERT INTO public.planet VALUES (4, 'HD 209458', 12, 5000, 'Jupiter caliente con atmósfera hinchada', 2);
INSERT INTO public.planet VALUES (5, 'HD 189733 b', 13, 3000, 'Exoplaneta gaseoso con vientos de 7000km/h.', 2);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 4, 7000, 'Exoplaneta potencialmente habitable en una zona tranquila.', 2);
INSERT INTO public.planet VALUES (8, '55 Cancri e', 9, 4000, 'Planeta con superficie cubierta de lava.', 2);
INSERT INTO public.planet VALUES (9, 'Trappist-1s', 1, 8000, 'Exoplaneta rocoso', 2);
INSERT INTO public.planet VALUES (10, 'Kepler-1649c', 1, 7000, 'Similar a la Tierra.', 1);
INSERT INTO public.planet VALUES (11, 'LHS 1140 b', 6, 6000, 'Tipo subneptuno, exoplaneta.', 1);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 1, 5000, 'Rocoso, zona habitable, exoplaneta.', 2);
INSERT INTO public.planet VALUES (13, 'GJ 1214 b', 9, 6000, 'Exoplaneta gaseoso', 2);


--
-- Data for Name: planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_info VALUES (1, 'Terrestre', true, true, 'Tierra');
INSERT INTO public.planet_info VALUES (2, 'Gaseoso', false, true, 'Júpiter');
INSERT INTO public.planet_info VALUES (3, 'Helado', false, true, 'Neptuno');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 240, 'La estrella más brillante en el cielo nocturno.', 'Enana blanca', 2);
INSERT INTO public.star VALUES (2, 'Próxima Centauri', 0, 6000, 'La estrella más cercana a nuestro sistema solar.', 'Enana roja', 1);
INSERT INTO public.star VALUES (3, 'Betelguese', 1000, 86000, 'Una supergigante roja en la constelación de Orión.', 'Supergigante roja', 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 1, 6000, 'Una estrella binaria en el sistema Alpha Centauri.', 'Estrella binaria', 1);
INSERT INTO public.star VALUES (5, 'Antares', 680, 1200, 'Perteneciente a la constelación de Escorpión', 'Supergigante Roja', 3);
INSERT INTO public.star VALUES (6, 'Polaris', 45, 46, 'Se utiliza para la navegación en el hemisferio norte', 'Estrella Ceféida', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_info_planet_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_info_planet_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_info planet_info_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_name_unique UNIQUE (name);


--
-- Name: planet_info planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_info
    ADD CONSTRAINT planet_info_pkey PRIMARY KEY (planet_info_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

