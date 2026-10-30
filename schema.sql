--
-- PostgreSQL database dump
--

\restrict d4UaqHfS6i1QGoxySXHD8YfvrUuX9e0QDl15bBBnXVvkuTwP07gDANRMcEXqqdR

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg12+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg12+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.auth_message OWNER TO postgres;

--
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_message_id_seq OWNER TO postgres;

--
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_message_id_seq OWNED BY public.auth_message.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_blogcategory (
    slug character varying(2000),
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.blog_blogcategory OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_blogcategory_id_seq OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogcategory_id_seq OWNED BY public.blog_blogcategory.id;


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_blogpost (
    status integer DEFAULT 1 NOT NULL,
    description text NOT NULL,
    title character varying(500) NOT NULL,
    short_url character varying(200),
    id integer NOT NULL,
    content text NOT NULL,
    expiry_date timestamp with time zone,
    publish_date timestamp with time zone,
    user_id integer NOT NULL,
    slug character varying(2000),
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    rating_average double precision NOT NULL,
    rating_count integer NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    gen_description boolean NOT NULL,
    _meta_title character varying(500),
    in_sitemap boolean NOT NULL,
    rating_sum integer NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.blog_blogpost OWNER TO postgres;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_categories OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_blogpost_categories_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogpost_categories_id_seq OWNED BY public.blog_blogpost_categories.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_blogpost_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogpost_id_seq OWNED BY public.blog_blogpost.id;


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_related_posts OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_blogpost_related_posts_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_blogpost_related_posts_id_seq OWNED BY public.blog_blogpost_related_posts.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conf_setting (
    id integer NOT NULL,
    value character varying(2000) NOT NULL,
    name character varying(50) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.conf_setting OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.conf_setting_id_seq OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conf_setting_id_seq OWNED BY public.conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.core_sitepermission_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_sitepermission_id_seq OWNED BY public.core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission_sites OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.core_sitepermission_sites_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_sitepermission_sites_id_seq OWNED BY public.core_sitepermission_sites.id;


--
-- Name: digipal_allograph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_allograph (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    character_id integer NOT NULL,
    "default" boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    hidden boolean NOT NULL,
    illustration character varying(100)
);


ALTER TABLE public.digipal_allograph OWNER TO postgres;

--
-- Name: digipal_allograph_aspects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_allograph_aspects (
    id integer NOT NULL,
    allograph_id integer NOT NULL,
    aspect_id integer NOT NULL
);


ALTER TABLE public.digipal_allograph_aspects OWNER TO postgres;

--
-- Name: digipal_allograph_aspects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_allograph_aspects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_allograph_aspects_id_seq OWNER TO postgres;

--
-- Name: digipal_allograph_aspects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_allograph_aspects_id_seq OWNED BY public.digipal_allograph_aspects.id;


--
-- Name: digipal_allograph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_allograph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_allograph_id_seq OWNER TO postgres;

--
-- Name: digipal_allograph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_allograph_id_seq OWNED BY public.digipal_allograph.id;


--
-- Name: digipal_allographcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_allographcomponent (
    id integer NOT NULL,
    allograph_id integer NOT NULL,
    component_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_allographcomponent OWNER TO postgres;

--
-- Name: digipal_allographcomponent_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_allographcomponent_features (
    id integer NOT NULL,
    allographcomponent_id integer CONSTRAINT digipal_allographcomponent_featu_allographcomponent_id_not_null NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.digipal_allographcomponent_features OWNER TO postgres;

--
-- Name: digipal_allographcomponent_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_allographcomponent_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_allographcomponent_features_id_seq OWNER TO postgres;

--
-- Name: digipal_allographcomponent_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_allographcomponent_features_id_seq OWNED BY public.digipal_allographcomponent_features.id;


--
-- Name: digipal_allographcomponent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_allographcomponent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_allographcomponent_id_seq OWNER TO postgres;

--
-- Name: digipal_allographcomponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_allographcomponent_id_seq OWNED BY public.digipal_allographcomponent.id;


--
-- Name: digipal_alphabet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_alphabet (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_alphabet OWNER TO postgres;

--
-- Name: digipal_alphabet_hands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_alphabet_hands (
    id integer NOT NULL,
    alphabet_id integer NOT NULL,
    hand_id integer NOT NULL
);


ALTER TABLE public.digipal_alphabet_hands OWNER TO postgres;

--
-- Name: digipal_alphabet_hands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_alphabet_hands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_alphabet_hands_id_seq OWNER TO postgres;

--
-- Name: digipal_alphabet_hands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_alphabet_hands_id_seq OWNED BY public.digipal_alphabet_hands.id;


--
-- Name: digipal_alphabet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_alphabet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_alphabet_id_seq OWNER TO postgres;

--
-- Name: digipal_alphabet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_alphabet_id_seq OWNED BY public.digipal_alphabet.id;


--
-- Name: digipal_alphabet_ontographs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_alphabet_ontographs (
    id integer NOT NULL,
    alphabet_id integer NOT NULL,
    ontograph_id integer NOT NULL
);


ALTER TABLE public.digipal_alphabet_ontographs OWNER TO postgres;

--
-- Name: digipal_alphabet_ontographs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_alphabet_ontographs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_alphabet_ontographs_id_seq OWNER TO postgres;

--
-- Name: digipal_alphabet_ontographs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_alphabet_ontographs_id_seq OWNED BY public.digipal_alphabet_ontographs.id;


--
-- Name: digipal_annotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_annotation (
    id integer NOT NULL,
    image_id integer NOT NULL,
    cutout character varying(256),
    status_id integer,
    before_id integer,
    graph_id integer,
    after_id integer,
    vector_id text NOT NULL,
    geo_json text NOT NULL,
    display_note text,
    internal_note text,
    author_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    rotation double precision NOT NULL,
    holes character varying(1000),
    clientid character varying(24),
    type character varying(15),
    illustration_ductus character varying(100)
);


ALTER TABLE public.digipal_annotation OWNER TO postgres;

--
-- Name: digipal_annotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_annotation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_annotation_id_seq OWNER TO postgres;

--
-- Name: digipal_annotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_annotation_id_seq OWNED BY public.digipal_annotation.id;


--
-- Name: digipal_apitransform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_apitransform (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    slug character varying(30) NOT NULL,
    template text,
    description text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    mimetype character varying(30) NOT NULL,
    sample_request character varying(200),
    webpage boolean NOT NULL
);


ALTER TABLE public.digipal_apitransform OWNER TO postgres;

--
-- Name: digipal_apitransform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_apitransform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_apitransform_id_seq OWNER TO postgres;

--
-- Name: digipal_apitransform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_apitransform_id_seq OWNED BY public.digipal_apitransform.id;


--
-- Name: digipal_appearance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_appearance (
    id integer NOT NULL,
    legacy_id integer,
    text character varying(128) NOT NULL,
    sort_order integer NOT NULL,
    description character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_appearance OWNER TO postgres;

--
-- Name: digipal_appearance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_appearance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_appearance_id_seq OWNER TO postgres;

--
-- Name: digipal_appearance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_appearance_id_seq OWNED BY public.digipal_appearance.id;


--
-- Name: digipal_archive; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_archive (
    id integer NOT NULL,
    legacy_id integer,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    historical_item_id integer NOT NULL,
    dubitable boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    CONSTRAINT digipal_archive_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.digipal_archive OWNER TO postgres;

--
-- Name: digipal_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_archive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_archive_id_seq OWNER TO postgres;

--
-- Name: digipal_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_archive_id_seq OWNED BY public.digipal_archive.id;


--
-- Name: digipal_aspect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_aspect (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_aspect OWNER TO postgres;

--
-- Name: digipal_aspect_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_aspect_features (
    id integer NOT NULL,
    aspect_id integer NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.digipal_aspect_features OWNER TO postgres;

--
-- Name: digipal_aspect_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_aspect_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_aspect_features_id_seq OWNER TO postgres;

--
-- Name: digipal_aspect_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_aspect_features_id_seq OWNED BY public.digipal_aspect_features.id;


--
-- Name: digipal_aspect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_aspect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_aspect_id_seq OWNER TO postgres;

--
-- Name: digipal_aspect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_aspect_id_seq OWNED BY public.digipal_aspect.id;


--
-- Name: digipal_authenticitycategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_authenticitycategory (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_authenticitycategory OWNER TO postgres;

--
-- Name: digipal_authenticitycategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_authenticitycategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_authenticitycategory_id_seq OWNER TO postgres;

--
-- Name: digipal_authenticitycategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_authenticitycategory_id_seq OWNED BY public.digipal_authenticitycategory.id;


--
-- Name: digipal_carouselitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_carouselitem (
    id integer NOT NULL,
    link character varying(200),
    image character varying(200),
    image_alt character varying(300),
    image_title character varying(300),
    sort_order integer NOT NULL,
    title character varying(300) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    image_file character varying(100)
);


ALTER TABLE public.digipal_carouselitem OWNER TO postgres;

--
-- Name: digipal_carouselitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_carouselitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_carouselitem_id_seq OWNER TO postgres;

--
-- Name: digipal_carouselitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_carouselitem_id_seq OWNED BY public.digipal_carouselitem.id;


--
-- Name: digipal_cataloguenumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_cataloguenumber (
    id integer NOT NULL,
    historical_item_id integer,
    source_id integer NOT NULL,
    number character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    text_id integer,
    url character varying(200),
    number_slug character varying(100)
);


ALTER TABLE public.digipal_cataloguenumber OWNER TO postgres;

--
-- Name: digipal_cataloguenumber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_cataloguenumber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_cataloguenumber_id_seq OWNER TO postgres;

--
-- Name: digipal_cataloguenumber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_cataloguenumber_id_seq OWNED BY public.digipal_cataloguenumber.id;


--
-- Name: digipal_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_category (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    sort_order integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    CONSTRAINT digipal_category_sort_order_check CHECK ((sort_order >= 0))
);


ALTER TABLE public.digipal_category OWNER TO postgres;

--
-- Name: digipal_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_category_id_seq OWNER TO postgres;

--
-- Name: digipal_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_category_id_seq OWNED BY public.digipal_category.id;


--
-- Name: digipal_character; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_character (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    unicode_point character varying(32),
    ontograph_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    form_id integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.digipal_character OWNER TO postgres;

--
-- Name: digipal_character_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_character_components (
    id integer NOT NULL,
    character_id integer NOT NULL,
    component_id integer NOT NULL
);


ALTER TABLE public.digipal_character_components OWNER TO postgres;

--
-- Name: digipal_character_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_character_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_character_components_id_seq OWNER TO postgres;

--
-- Name: digipal_character_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_character_components_id_seq OWNED BY public.digipal_character_components.id;


--
-- Name: digipal_character_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_character_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_character_id_seq OWNER TO postgres;

--
-- Name: digipal_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_character_id_seq OWNED BY public.digipal_character.id;


--
-- Name: digipal_characterform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_characterform (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.digipal_characterform OWNER TO postgres;

--
-- Name: digipal_characterform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_characterform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_characterform_id_seq OWNER TO postgres;

--
-- Name: digipal_characterform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_characterform_id_seq OWNED BY public.digipal_characterform.id;


--
-- Name: digipal_collation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_collation (
    id integer NOT NULL,
    historical_item_id integer NOT NULL,
    fragment boolean,
    leaves integer,
    front_flyleaves integer,
    back_flyleaves integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_collation OWNER TO postgres;

--
-- Name: digipal_collation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_collation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_collation_id_seq OWNER TO postgres;

--
-- Name: digipal_collation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_collation_id_seq OWNED BY public.digipal_collation.id;


--
-- Name: digipal_component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_component (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_component OWNER TO postgres;

--
-- Name: digipal_component_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_component_features (
    id integer NOT NULL,
    component_id integer NOT NULL,
    feature_id integer NOT NULL,
    set_by_default boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_component_features OWNER TO postgres;

--
-- Name: digipal_component_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_component_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_component_features_id_seq OWNER TO postgres;

--
-- Name: digipal_component_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_component_features_id_seq OWNED BY public.digipal_component_features.id;


--
-- Name: digipal_component_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_component_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_component_id_seq OWNER TO postgres;

--
-- Name: digipal_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_component_id_seq OWNED BY public.digipal_component.id;


--
-- Name: digipal_contentattribution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_contentattribution (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    message text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    short_message text
);


ALTER TABLE public.digipal_contentattribution OWNER TO postgres;

--
-- Name: digipal_contentattribution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_contentattribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_contentattribution_id_seq OWNER TO postgres;

--
-- Name: digipal_contentattribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_contentattribution_id_seq OWNED BY public.digipal_contentattribution.id;


--
-- Name: digipal_county; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_county (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_county OWNER TO postgres;

--
-- Name: digipal_county_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_county_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_county_id_seq OWNER TO postgres;

--
-- Name: digipal_county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_county_id_seq OWNED BY public.digipal_county.id;


--
-- Name: digipal_currentitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_currentitem (
    id integer NOT NULL,
    legacy_id integer,
    repository_id integer NOT NULL,
    shelfmark character varying(128) NOT NULL,
    description text,
    display_label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_currentitem OWNER TO postgres;

--
-- Name: digipal_currentitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_currentitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_currentitem_id_seq OWNER TO postgres;

--
-- Name: digipal_currentitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_currentitem_id_seq OWNED BY public.digipal_currentitem.id;


--
-- Name: digipal_currentitem_owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_currentitem_owners (
    id integer NOT NULL,
    currentitem_id integer NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.digipal_currentitem_owners OWNER TO postgres;

--
-- Name: digipal_currentitem_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_currentitem_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_currentitem_owners_id_seq OWNER TO postgres;

--
-- Name: digipal_currentitem_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_currentitem_owners_id_seq OWNED BY public.digipal_currentitem_owners.id;


--
-- Name: digipal_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_date (
    id integer NOT NULL,
    legacy_id integer,
    date character varying(128) NOT NULL,
    sort_order integer,
    weight double precision NOT NULL,
    band integer,
    additional_band integer,
    post_conquest boolean,
    s_xi boolean,
    min_weight double precision,
    max_weight double precision,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    legacy_reference character varying(128),
    evidence character varying(255)
);


ALTER TABLE public.digipal_date OWNER TO postgres;

--
-- Name: digipal_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_date_id_seq OWNER TO postgres;

--
-- Name: digipal_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_date_id_seq OWNED BY public.digipal_date.id;


--
-- Name: digipal_dateevidence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_dateevidence (
    id integer NOT NULL,
    legacy_id integer,
    hand_id integer,
    date_id integer,
    date_description character varying(128),
    reference_id integer,
    evidence text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    historical_item_id integer,
    is_firm_date boolean NOT NULL
);


ALTER TABLE public.digipal_dateevidence OWNER TO postgres;

--
-- Name: digipal_dateevidence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_dateevidence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_dateevidence_id_seq OWNER TO postgres;

--
-- Name: digipal_dateevidence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_dateevidence_id_seq OWNED BY public.digipal_dateevidence.id;


--
-- Name: digipal_decoration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_decoration (
    id integer NOT NULL,
    historical_item_id integer NOT NULL,
    illustrated boolean,
    decorated boolean,
    illuminated boolean,
    num_colours integer,
    colours character varying(256),
    num_inks integer,
    inks character varying(256),
    style character varying(256),
    description text,
    catalogue_references character varying(256),
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_decoration OWNER TO postgres;

--
-- Name: digipal_decoration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_decoration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_decoration_id_seq OWNER TO postgres;

--
-- Name: digipal_decoration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_decoration_id_seq OWNED BY public.digipal_decoration.id;


--
-- Name: digipal_description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_description (
    id integer NOT NULL,
    historical_item_id integer,
    source_id integer NOT NULL,
    description text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    text_id integer,
    comments text,
    summary character varying(256)
);


ALTER TABLE public.digipal_description OWNER TO postgres;

--
-- Name: digipal_description_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_description_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_description_id_seq OWNER TO postgres;

--
-- Name: digipal_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_description_id_seq OWNED BY public.digipal_description.id;


--
-- Name: digipal_feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_feature (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_feature OWNER TO postgres;

--
-- Name: digipal_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_feature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_feature_id_seq OWNER TO postgres;

--
-- Name: digipal_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_feature_id_seq OWNED BY public.digipal_feature.id;


--
-- Name: digipal_format; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_format (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_format OWNER TO postgres;

--
-- Name: digipal_format_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_format_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_format_id_seq OWNER TO postgres;

--
-- Name: digipal_format_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_format_id_seq OWNED BY public.digipal_format.id;


--
-- Name: digipal_graph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_graph (
    id integer NOT NULL,
    idiograph_id integer NOT NULL,
    hand_id integer NOT NULL,
    display_label character varying(256) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    group_id integer
);


ALTER TABLE public.digipal_graph OWNER TO postgres;

--
-- Name: digipal_graph_aspects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_graph_aspects (
    id integer NOT NULL,
    graph_id integer NOT NULL,
    aspect_id integer NOT NULL
);


ALTER TABLE public.digipal_graph_aspects OWNER TO postgres;

--
-- Name: digipal_graph_aspects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_graph_aspects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_graph_aspects_id_seq OWNER TO postgres;

--
-- Name: digipal_graph_aspects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_graph_aspects_id_seq OWNED BY public.digipal_graph_aspects.id;


--
-- Name: digipal_graph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_graph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_graph_id_seq OWNER TO postgres;

--
-- Name: digipal_graph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_graph_id_seq OWNED BY public.digipal_graph.id;


--
-- Name: digipal_graphcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_graphcomponent (
    id integer NOT NULL,
    graph_id integer NOT NULL,
    component_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_graphcomponent OWNER TO postgres;

--
-- Name: digipal_graphcomponent_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_graphcomponent_features (
    id integer NOT NULL,
    graphcomponent_id integer NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.digipal_graphcomponent_features OWNER TO postgres;

--
-- Name: digipal_graphcomponent_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_graphcomponent_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_graphcomponent_features_id_seq OWNER TO postgres;

--
-- Name: digipal_graphcomponent_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_graphcomponent_features_id_seq OWNED BY public.digipal_graphcomponent_features.id;


--
-- Name: digipal_graphcomponent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_graphcomponent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_graphcomponent_id_seq OWNER TO postgres;

--
-- Name: digipal_graphcomponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_graphcomponent_id_seq OWNED BY public.digipal_graphcomponent.id;


--
-- Name: digipal_hair; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_hair (
    id integer NOT NULL,
    legacy_id integer,
    label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_hair OWNER TO postgres;

--
-- Name: digipal_hair_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_hair_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_hair_id_seq OWNER TO postgres;

--
-- Name: digipal_hair_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_hair_id_seq OWNED BY public.digipal_hair.id;


--
-- Name: digipal_hand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_hand (
    id integer NOT NULL,
    legacy_id integer,
    num integer NOT NULL,
    item_part_id integer NOT NULL,
    script_id integer,
    scribe_id integer,
    assigned_date_id integer,
    assigned_place_id integer,
    scragg character varying(6),
    em_title character varying(256),
    label text,
    display_note text,
    internal_note text,
    appearance_id integer,
    relevant boolean,
    latin_only boolean,
    gloss_only boolean,
    membra_disjecta boolean,
    num_glosses integer,
    num_glossing_hands integer,
    glossed_text_id integer,
    scribble_only boolean,
    imitative boolean,
    latin_style_id integer,
    comments text,
    display_label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    locus character varying(300),
    surrogates character varying(50),
    selected_locus character varying(100),
    stewart_record_id integer,
    ker character varying(10)
);


ALTER TABLE public.digipal_hand OWNER TO postgres;

--
-- Name: digipal_hand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_hand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_hand_id_seq OWNER TO postgres;

--
-- Name: digipal_hand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_hand_id_seq OWNED BY public.digipal_hand.id;


--
-- Name: digipal_hand_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_hand_images (
    id integer NOT NULL,
    hand_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE public.digipal_hand_images OWNER TO postgres;

--
-- Name: digipal_hand_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_hand_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_hand_images_id_seq OWNER TO postgres;

--
-- Name: digipal_hand_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_hand_images_id_seq OWNED BY public.digipal_hand_images.id;


--
-- Name: digipal_handdescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_handdescription (
    id integer NOT NULL,
    hand_id integer,
    source_id integer,
    description text NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    label character varying(64)
);


ALTER TABLE public.digipal_handdescription OWNER TO postgres;

--
-- Name: digipal_handdescription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_handdescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_handdescription_id_seq OWNER TO postgres;

--
-- Name: digipal_handdescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_handdescription_id_seq OWNED BY public.digipal_handdescription.id;


--
-- Name: digipal_historicalitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_historicalitem (
    id integer NOT NULL,
    legacy_id integer,
    historical_item_type_id integer NOT NULL,
    historical_item_format_id integer,
    date character varying(128),
    name character varying(256),
    hair_id integer,
    language_id integer,
    url character varying(200),
    vernacular boolean,
    neumed boolean,
    catalogue_number character varying(128) NOT NULL,
    display_label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    legacy_reference character varying(128),
    date_sort character varying(128)
);


ALTER TABLE public.digipal_historicalitem OWNER TO postgres;

--
-- Name: digipal_historicalitem_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_historicalitem_categories (
    id integer NOT NULL,
    historicalitem_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.digipal_historicalitem_categories OWNER TO postgres;

--
-- Name: digipal_historicalitem_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_historicalitem_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_historicalitem_categories_id_seq OWNER TO postgres;

--
-- Name: digipal_historicalitem_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_historicalitem_categories_id_seq OWNED BY public.digipal_historicalitem_categories.id;


--
-- Name: digipal_historicalitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_historicalitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_historicalitem_id_seq OWNER TO postgres;

--
-- Name: digipal_historicalitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_historicalitem_id_seq OWNED BY public.digipal_historicalitem.id;


--
-- Name: digipal_historicalitem_owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_historicalitem_owners (
    id integer NOT NULL,
    historicalitem_id integer NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.digipal_historicalitem_owners OWNER TO postgres;

--
-- Name: digipal_historicalitem_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_historicalitem_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_historicalitem_owners_id_seq OWNER TO postgres;

--
-- Name: digipal_historicalitem_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_historicalitem_owners_id_seq OWNED BY public.digipal_historicalitem_owners.id;


--
-- Name: digipal_historicalitemdate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_historicalitemdate (
    id integer NOT NULL,
    legacy_id integer,
    historical_item_id integer NOT NULL,
    date_id integer NOT NULL,
    evidence text NOT NULL,
    vernacular boolean,
    addition boolean,
    dubitable boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_historicalitemdate OWNER TO postgres;

--
-- Name: digipal_historicalitemdate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_historicalitemdate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_historicalitemdate_id_seq OWNER TO postgres;

--
-- Name: digipal_historicalitemdate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_historicalitemdate_id_seq OWNED BY public.digipal_historicalitemdate.id;


--
-- Name: digipal_historicalitemtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_historicalitemtype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_historicalitemtype OWNER TO postgres;

--
-- Name: digipal_historicalitemtype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_historicalitemtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_historicalitemtype_id_seq OWNER TO postgres;

--
-- Name: digipal_historicalitemtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_historicalitemtype_id_seq OWNED BY public.digipal_historicalitemtype.id;


--
-- Name: digipal_idiograph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_idiograph (
    id integer NOT NULL,
    allograph_id integer NOT NULL,
    scribe_id integer,
    display_label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_idiograph OWNER TO postgres;

--
-- Name: digipal_idiograph_aspects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_idiograph_aspects (
    id integer NOT NULL,
    idiograph_id integer NOT NULL,
    aspect_id integer NOT NULL
);


ALTER TABLE public.digipal_idiograph_aspects OWNER TO postgres;

--
-- Name: digipal_idiograph_aspects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_idiograph_aspects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_idiograph_aspects_id_seq OWNER TO postgres;

--
-- Name: digipal_idiograph_aspects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_idiograph_aspects_id_seq OWNED BY public.digipal_idiograph_aspects.id;


--
-- Name: digipal_idiograph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_idiograph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_idiograph_id_seq OWNER TO postgres;

--
-- Name: digipal_idiograph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_idiograph_id_seq OWNED BY public.digipal_idiograph.id;


--
-- Name: digipal_idiographcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_idiographcomponent (
    id integer NOT NULL,
    idiograph_id integer NOT NULL,
    component_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_idiographcomponent OWNER TO postgres;

--
-- Name: digipal_idiographcomponent_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_idiographcomponent_features (
    id integer NOT NULL,
    idiographcomponent_id integer CONSTRAINT digipal_idiographcomponent_featu_idiographcomponent_id_not_null NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.digipal_idiographcomponent_features OWNER TO postgres;

--
-- Name: digipal_idiographcomponent_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_idiographcomponent_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_idiographcomponent_features_id_seq OWNER TO postgres;

--
-- Name: digipal_idiographcomponent_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_idiographcomponent_features_id_seq OWNED BY public.digipal_idiographcomponent_features.id;


--
-- Name: digipal_idiographcomponent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_idiographcomponent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_idiographcomponent_id_seq OWNER TO postgres;

--
-- Name: digipal_idiographcomponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_idiographcomponent_id_seq OWNED BY public.digipal_idiographcomponent.id;


--
-- Name: digipal_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_image (
    id integer NOT NULL,
    item_part_id integer,
    locus character varying(64) NOT NULL,
    caption character varying(256),
    image character varying(100),
    display_label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    folio_side character varying(4),
    folio_number character varying(8),
    iipimage character varying(200),
    media_permission_id integer,
    transcription text,
    internal_notes text,
    custom_label character varying(128),
    annotation_status_id integer,
    width integer NOT NULL,
    height integer NOT NULL,
    size integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    quire character varying(10),
    page_boundaries character varying(100)
);


ALTER TABLE public.digipal_image OWNER TO postgres;

--
-- Name: digipal_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_image_id_seq OWNER TO postgres;

--
-- Name: digipal_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_image_id_seq OWNED BY public.digipal_image.id;


--
-- Name: digipal_imageannotationstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_imageannotationstatus (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_imageannotationstatus OWNER TO postgres;

--
-- Name: digipal_imageannotationstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_imageannotationstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_imageannotationstatus_id_seq OWNER TO postgres;

--
-- Name: digipal_imageannotationstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_imageannotationstatus_id_seq OWNED BY public.digipal_imageannotationstatus.id;


--
-- Name: digipal_institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_institution (
    id integer NOT NULL,
    legacy_id integer,
    institution_type_id integer NOT NULL,
    name character varying(256) NOT NULL,
    founder_id integer,
    reformer_id integer,
    patron_id integer,
    place_id integer NOT NULL,
    foundation character varying(128),
    refoundation character varying(128),
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_institution OWNER TO postgres;

--
-- Name: digipal_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_institution_id_seq OWNER TO postgres;

--
-- Name: digipal_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_institution_id_seq OWNED BY public.digipal_institution.id;


--
-- Name: digipal_institutiontype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_institutiontype (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_institutiontype OWNER TO postgres;

--
-- Name: digipal_institutiontype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_institutiontype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_institutiontype_id_seq OWNER TO postgres;

--
-- Name: digipal_institutiontype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_institutiontype_id_seq OWNED BY public.digipal_institutiontype.id;


--
-- Name: digipal_itemorigin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itemorigin (
    id integer NOT NULL,
    legacy_id integer,
    historical_item_id integer NOT NULL,
    evidence text,
    dubitable boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    place_id integer,
    institution_id integer
);


ALTER TABLE public.digipal_itemorigin OWNER TO postgres;

--
-- Name: digipal_itemorigin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itemorigin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itemorigin_id_seq OWNER TO postgres;

--
-- Name: digipal_itemorigin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itemorigin_id_seq OWNED BY public.digipal_itemorigin.id;


--
-- Name: digipal_itempart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itempart (
    id integer NOT NULL,
    current_item_id integer,
    locus character varying(64),
    display_label character varying(300) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    pagination boolean NOT NULL,
    group_id integer,
    type_id integer,
    group_locus character varying(64),
    notes text,
    keywords_string character varying(500) NOT NULL,
    custom_label character varying(300)
);


ALTER TABLE public.digipal_itempart OWNER TO postgres;

--
-- Name: digipal_itempart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itempart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itempart_id_seq OWNER TO postgres;

--
-- Name: digipal_itempart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itempart_id_seq OWNED BY public.digipal_itempart.id;


--
-- Name: digipal_itempart_owners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itempart_owners (
    id integer NOT NULL,
    itempart_id integer NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.digipal_itempart_owners OWNER TO postgres;

--
-- Name: digipal_itempart_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itempart_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itempart_owners_id_seq OWNER TO postgres;

--
-- Name: digipal_itempart_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itempart_owners_id_seq OWNED BY public.digipal_itempart_owners.id;


--
-- Name: digipal_itempartauthenticity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itempartauthenticity (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    item_part_id integer NOT NULL,
    category_id integer NOT NULL,
    source_id integer,
    note text
);


ALTER TABLE public.digipal_itempartauthenticity OWNER TO postgres;

--
-- Name: digipal_itempartauthenticity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itempartauthenticity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itempartauthenticity_id_seq OWNER TO postgres;

--
-- Name: digipal_itempartauthenticity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itempartauthenticity_id_seq OWNED BY public.digipal_itempartauthenticity.id;


--
-- Name: digipal_itempartitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itempartitem (
    id integer NOT NULL,
    historical_item_id integer NOT NULL,
    item_part_id integer NOT NULL,
    locus character varying(64) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_itempartitem OWNER TO postgres;

--
-- Name: digipal_itempartitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itempartitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itempartitem_id_seq OWNER TO postgres;

--
-- Name: digipal_itempartitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itempartitem_id_seq OWNED BY public.digipal_itempartitem.id;


--
-- Name: digipal_itemparttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_itemparttype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_itemparttype OWNER TO postgres;

--
-- Name: digipal_itemparttype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_itemparttype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_itemparttype_id_seq OWNER TO postgres;

--
-- Name: digipal_itemparttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_itemparttype_id_seq OWNED BY public.digipal_itemparttype.id;


--
-- Name: digipal_keyval; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_keyval (
    id integer NOT NULL,
    key character varying(300) NOT NULL,
    val text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_keyval OWNER TO postgres;

--
-- Name: digipal_keyval_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_keyval_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_keyval_id_seq OWNER TO postgres;

--
-- Name: digipal_keyval_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_keyval_id_seq OWNED BY public.digipal_keyval.id;


--
-- Name: digipal_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_language (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_language OWNER TO postgres;

--
-- Name: digipal_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_language_id_seq OWNER TO postgres;

--
-- Name: digipal_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_language_id_seq OWNED BY public.digipal_language.id;


--
-- Name: digipal_latinstyle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_latinstyle (
    id integer NOT NULL,
    legacy_id integer,
    style character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_latinstyle OWNER TO postgres;

--
-- Name: digipal_latinstyle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_latinstyle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_latinstyle_id_seq OWNER TO postgres;

--
-- Name: digipal_latinstyle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_latinstyle_id_seq OWNED BY public.digipal_latinstyle.id;


--
-- Name: digipal_layout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_layout (
    id integer NOT NULL,
    historical_item_id integer,
    page_height integer,
    page_width integer,
    frame_height integer,
    frame_width integer,
    tramline_width integer,
    lines integer,
    columns integer,
    on_top_line boolean,
    multiple_sheet_rulling boolean,
    bilinear_ruling boolean,
    comments text,
    hair_arrangement_id integer,
    insular_pricking boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    item_part_id integer
);


ALTER TABLE public.digipal_layout OWNER TO postgres;

--
-- Name: digipal_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_layout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_layout_id_seq OWNER TO postgres;

--
-- Name: digipal_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_layout_id_seq OWNED BY public.digipal_layout.id;


--
-- Name: digipal_measurement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_measurement (
    id integer NOT NULL,
    legacy_id integer,
    label character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_measurement OWNER TO postgres;

--
-- Name: digipal_measurement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_measurement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_measurement_id_seq OWNER TO postgres;

--
-- Name: digipal_measurement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_measurement_id_seq OWNED BY public.digipal_measurement.id;


--
-- Name: digipal_mediapermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_mediapermission (
    id integer NOT NULL,
    label character varying(64) NOT NULL,
    display_message text NOT NULL,
    permission integer NOT NULL
);


ALTER TABLE public.digipal_mediapermission OWNER TO postgres;

--
-- Name: digipal_mediapermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_mediapermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_mediapermission_id_seq OWNER TO postgres;

--
-- Name: digipal_mediapermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_mediapermission_id_seq OWNED BY public.digipal_mediapermission.id;


--
-- Name: digipal_ontograph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_ontograph (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    ontograph_type_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    nesting_level integer NOT NULL,
    sort_order integer NOT NULL
);


ALTER TABLE public.digipal_ontograph OWNER TO postgres;

--
-- Name: digipal_ontograph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_ontograph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_ontograph_id_seq OWNER TO postgres;

--
-- Name: digipal_ontograph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_ontograph_id_seq OWNED BY public.digipal_ontograph.id;


--
-- Name: digipal_ontographtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_ontographtype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_ontographtype OWNER TO postgres;

--
-- Name: digipal_ontographtype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_ontographtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_ontographtype_id_seq OWNER TO postgres;

--
-- Name: digipal_ontographtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_ontographtype_id_seq OWNED BY public.digipal_ontographtype.id;


--
-- Name: digipal_owner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_owner (
    id integer NOT NULL,
    legacy_id integer,
    date character varying(128) NOT NULL,
    evidence text NOT NULL,
    rebound boolean,
    annotated boolean,
    dubitable boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    person_id integer,
    institution_id integer,
    repository_id integer,
    display_label character varying(250) NOT NULL
);


ALTER TABLE public.digipal_owner OWNER TO postgres;

--
-- Name: digipal_owner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_owner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_owner_id_seq OWNER TO postgres;

--
-- Name: digipal_owner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_owner_id_seq OWNED BY public.digipal_owner.id;


--
-- Name: digipal_ownertype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_ownertype (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_ownertype OWNER TO postgres;

--
-- Name: digipal_ownertype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_ownertype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_ownertype_id_seq OWNER TO postgres;

--
-- Name: digipal_ownertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_ownertype_id_seq OWNED BY public.digipal_ownertype.id;


--
-- Name: digipal_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_person (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(256) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_person OWNER TO postgres;

--
-- Name: digipal_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_person_id_seq OWNER TO postgres;

--
-- Name: digipal_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_person_id_seq OWNED BY public.digipal_person.id;


--
-- Name: digipal_place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_place (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(256) NOT NULL,
    eastings double precision,
    northings double precision,
    region_id integer,
    current_county_id integer,
    historical_county_id integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    type_id integer,
    other_names character varying(256)
);


ALTER TABLE public.digipal_place OWNER TO postgres;

--
-- Name: digipal_place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_place_id_seq OWNER TO postgres;

--
-- Name: digipal_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_place_id_seq OWNED BY public.digipal_place.id;


--
-- Name: digipal_placeevidence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_placeevidence (
    id integer NOT NULL,
    legacy_id integer,
    hand_id integer,
    place_id integer NOT NULL,
    place_description character varying(128),
    reference_id integer NOT NULL,
    evidence text NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    historical_item_id integer,
    written_as character varying(128)
);


ALTER TABLE public.digipal_placeevidence OWNER TO postgres;

--
-- Name: digipal_placeevidence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_placeevidence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_placeevidence_id_seq OWNER TO postgres;

--
-- Name: digipal_placeevidence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_placeevidence_id_seq OWNED BY public.digipal_placeevidence.id;


--
-- Name: digipal_placetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_placetype (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_placetype OWNER TO postgres;

--
-- Name: digipal_placetype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_placetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_placetype_id_seq OWNER TO postgres;

--
-- Name: digipal_placetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_placetype_id_seq OWNED BY public.digipal_placetype.id;


--
-- Name: digipal_proportion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_proportion (
    id integer NOT NULL,
    legacy_id integer,
    hand_id integer NOT NULL,
    measurement_id integer NOT NULL,
    description text,
    cue_height double precision NOT NULL,
    value double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_proportion OWNER TO postgres;

--
-- Name: digipal_proportion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_proportion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_proportion_id_seq OWNER TO postgres;

--
-- Name: digipal_proportion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_proportion_id_seq OWNED BY public.digipal_proportion.id;


--
-- Name: digipal_reference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_reference (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    name_index character varying(1),
    legacy_reference character varying(128),
    full_reference text NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_reference OWNER TO postgres;

--
-- Name: digipal_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_reference_id_seq OWNER TO postgres;

--
-- Name: digipal_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_reference_id_seq OWNED BY public.digipal_reference.id;


--
-- Name: digipal_region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_region (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_region OWNER TO postgres;

--
-- Name: digipal_region_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_region_id_seq OWNER TO postgres;

--
-- Name: digipal_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_region_id_seq OWNED BY public.digipal_region.id;


--
-- Name: digipal_repository; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_repository (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(256) NOT NULL,
    short_name character varying(64),
    place_id integer NOT NULL,
    url character varying(200),
    comma boolean,
    british_isles boolean,
    digital_project boolean,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    copyright_notice text,
    media_permission_id integer,
    type_id integer,
    part_of_id integer
);


ALTER TABLE public.digipal_repository OWNER TO postgres;

--
-- Name: digipal_repository_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_repository_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_repository_id_seq OWNER TO postgres;

--
-- Name: digipal_repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_repository_id_seq OWNED BY public.digipal_repository.id;


--
-- Name: digipal_requestlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_requestlog (
    id integer NOT NULL,
    request character varying(300),
    created timestamp with time zone NOT NULL,
    result_count integer NOT NULL
);


ALTER TABLE public.digipal_requestlog OWNER TO postgres;

--
-- Name: digipal_requestlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_requestlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_requestlog_id_seq OWNER TO postgres;

--
-- Name: digipal_requestlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_requestlog_id_seq OWNED BY public.digipal_requestlog.id;


--
-- Name: digipal_scribe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_scribe (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    date character varying(128),
    scriptorium_id integer,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    legacy_reference character varying(128)
);


ALTER TABLE public.digipal_scribe OWNER TO postgres;

--
-- Name: digipal_scribe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_scribe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_scribe_id_seq OWNER TO postgres;

--
-- Name: digipal_scribe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_scribe_id_seq OWNED BY public.digipal_scribe.id;


--
-- Name: digipal_scribe_reference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_scribe_reference (
    id integer NOT NULL,
    scribe_id integer NOT NULL,
    reference_id integer NOT NULL
);


ALTER TABLE public.digipal_scribe_reference OWNER TO postgres;

--
-- Name: digipal_scribe_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_scribe_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_scribe_reference_id_seq OWNER TO postgres;

--
-- Name: digipal_scribe_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_scribe_reference_id_seq OWNED BY public.digipal_scribe_reference.id;


--
-- Name: digipal_script; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_script (
    id integer NOT NULL,
    legacy_id integer,
    name character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_script OWNER TO postgres;

--
-- Name: digipal_script_allographs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_script_allographs (
    id integer NOT NULL,
    script_id integer NOT NULL,
    allograph_id integer NOT NULL
);


ALTER TABLE public.digipal_script_allographs OWNER TO postgres;

--
-- Name: digipal_script_allographs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_script_allographs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_script_allographs_id_seq OWNER TO postgres;

--
-- Name: digipal_script_allographs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_script_allographs_id_seq OWNED BY public.digipal_script_allographs.id;


--
-- Name: digipal_script_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_script_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_script_id_seq OWNER TO postgres;

--
-- Name: digipal_script_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_script_id_seq OWNED BY public.digipal_script.id;


--
-- Name: digipal_scriptcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_scriptcomponent (
    id integer NOT NULL,
    script_id integer NOT NULL,
    component_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_scriptcomponent OWNER TO postgres;

--
-- Name: digipal_scriptcomponent_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_scriptcomponent_features (
    id integer NOT NULL,
    scriptcomponent_id integer NOT NULL,
    feature_id integer NOT NULL
);


ALTER TABLE public.digipal_scriptcomponent_features OWNER TO postgres;

--
-- Name: digipal_scriptcomponent_features_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_scriptcomponent_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_scriptcomponent_features_id_seq OWNER TO postgres;

--
-- Name: digipal_scriptcomponent_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_scriptcomponent_features_id_seq OWNED BY public.digipal_scriptcomponent_features.id;


--
-- Name: digipal_scriptcomponent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_scriptcomponent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_scriptcomponent_id_seq OWNER TO postgres;

--
-- Name: digipal_scriptcomponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_scriptcomponent_id_seq OWNED BY public.digipal_scriptcomponent.id;


--
-- Name: digipal_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_source (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    label character varying(30),
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    priority integer NOT NULL,
    label_styled character varying(30),
    label_slug character varying(30)
);


ALTER TABLE public.digipal_source OWNER TO postgres;

--
-- Name: digipal_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_source_id_seq OWNER TO postgres;

--
-- Name: digipal_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_source_id_seq OWNED BY public.digipal_source.id;


--
-- Name: digipal_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_status (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    "default" boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_status OWNER TO postgres;

--
-- Name: digipal_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_status_id_seq OWNER TO postgres;

--
-- Name: digipal_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_status_id_seq OWNED BY public.digipal_status.id;


--
-- Name: digipal_stewartrecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_stewartrecord (
    id integer NOT NULL,
    scragg character varying(300),
    repository character varying(300),
    shelf_mark character varying(300),
    fols character varying(300),
    gneuss character varying(300),
    sp character varying(300),
    ker character varying(300),
    locus character varying(300),
    selected character varying(300),
    adate character varying(300),
    location character varying(300),
    surrogates character varying(300),
    contents character varying(500),
    notes character varying(600),
    em character varying(800),
    glosses character varying(300),
    minor character varying(300),
    charter character varying(300),
    cartulary character varying(300),
    eel character varying(1000),
    stokes_db character varying(300),
    ker_hand character varying(300),
    import_messages text,
    matched_hands character varying(1000)
);


ALTER TABLE public.digipal_stewartrecord OWNER TO postgres;

--
-- Name: digipal_stewartrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_stewartrecord_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_stewartrecord_id_seq OWNER TO postgres;

--
-- Name: digipal_stewartrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_stewartrecord_id_seq OWNED BY public.digipal_stewartrecord.id;


--
-- Name: digipal_text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    legacy_id integer,
    date character varying(128),
    url character varying(200),
    date_sort character varying(128)
);


ALTER TABLE public.digipal_text OWNER TO postgres;

--
-- Name: digipal_text_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_categories (
    id integer NOT NULL,
    text_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.digipal_text_categories OWNER TO postgres;

--
-- Name: digipal_text_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_categories_id_seq OWNER TO postgres;

--
-- Name: digipal_text_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_categories_id_seq OWNED BY public.digipal_text_categories.id;


--
-- Name: digipal_text_entryhand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_entryhand (
    id integer NOT NULL,
    item_part_id integer NOT NULL,
    entry_number character varying(20) NOT NULL,
    hand_label character varying(20) NOT NULL,
    "order" integer NOT NULL,
    correction boolean NOT NULL,
    certainty double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_text_entryhand OWNER TO postgres;

--
-- Name: digipal_text_entryhand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_entryhand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_entryhand_id_seq OWNER TO postgres;

--
-- Name: digipal_text_entryhand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_entryhand_id_seq OWNED BY public.digipal_text_entryhand.id;


--
-- Name: digipal_text_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_id_seq OWNER TO postgres;

--
-- Name: digipal_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_id_seq OWNED BY public.digipal_text.id;


--
-- Name: digipal_text_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_languages (
    id integer NOT NULL,
    text_id integer NOT NULL,
    language_id integer NOT NULL
);


ALTER TABLE public.digipal_text_languages OWNER TO postgres;

--
-- Name: digipal_text_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_languages_id_seq OWNER TO postgres;

--
-- Name: digipal_text_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_languages_id_seq OWNED BY public.digipal_text_languages.id;


--
-- Name: digipal_text_textannotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textannotation (
    id integer NOT NULL,
    annotation_id integer NOT NULL,
    elementid character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_text_textannotation OWNER TO postgres;

--
-- Name: digipal_text_textannotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textannotation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textannotation_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textannotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textannotation_id_seq OWNED BY public.digipal_text_textannotation.id;


--
-- Name: digipal_text_textcontent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontent (
    id integer NOT NULL,
    type_id integer NOT NULL,
    item_part_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    text_id integer,
    attribution_id integer
);


ALTER TABLE public.digipal_text_textcontent OWNER TO postgres;

--
-- Name: digipal_text_textcontent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontent_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontent_id_seq OWNED BY public.digipal_text_textcontent.id;


--
-- Name: digipal_text_textcontent_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontent_languages (
    id integer NOT NULL,
    textcontent_id integer NOT NULL,
    language_id integer NOT NULL
);


ALTER TABLE public.digipal_text_textcontent_languages OWNER TO postgres;

--
-- Name: digipal_text_textcontent_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontent_languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontent_languages_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontent_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontent_languages_id_seq OWNED BY public.digipal_text_textcontent_languages.id;


--
-- Name: digipal_text_textcontenttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontenttype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.digipal_text_textcontenttype OWNER TO postgres;

--
-- Name: digipal_text_textcontenttype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontenttype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontenttype_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontenttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontenttype_id_seq OWNED BY public.digipal_text_textcontenttype.id;


--
-- Name: digipal_text_textcontentxml; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontentxml (
    id integer NOT NULL,
    status_id integer NOT NULL,
    text_content_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    content text,
    last_image_id integer
);


ALTER TABLE public.digipal_text_textcontentxml OWNER TO postgres;

--
-- Name: digipal_text_textcontentxml_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontentxml_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontentxml_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontentxml_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontentxml_id_seq OWNED BY public.digipal_text_textcontentxml.id;


--
-- Name: digipal_text_textcontentxmlcopy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontentxmlcopy (
    id integer NOT NULL,
    source_id integer,
    content bytea,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ahash character varying(100)
);


ALTER TABLE public.digipal_text_textcontentxmlcopy OWNER TO postgres;

--
-- Name: digipal_text_textcontentxmlcopy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontentxmlcopy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontentxmlcopy_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontentxmlcopy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontentxmlcopy_id_seq OWNED BY public.digipal_text_textcontentxmlcopy.id;


--
-- Name: digipal_text_textcontentxmlstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textcontentxmlstatus (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    slug character varying(100) NOT NULL,
    sort_order integer NOT NULL
);


ALTER TABLE public.digipal_text_textcontentxmlstatus OWNER TO postgres;

--
-- Name: digipal_text_textcontentxmlstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textcontentxmlstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textcontentxmlstatus_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textcontentxmlstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textcontentxmlstatus_id_seq OWNED BY public.digipal_text_textcontentxmlstatus.id;


--
-- Name: digipal_text_textpattern; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_text_textpattern (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    key character varying(100) NOT NULL,
    pattern character varying(1000),
    "order" integer NOT NULL,
    description text,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.digipal_text_textpattern OWNER TO postgres;

--
-- Name: digipal_text_textpattern_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_text_textpattern_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_text_textpattern_id_seq OWNER TO postgres;

--
-- Name: digipal_text_textpattern_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_text_textpattern_id_seq OWNED BY public.digipal_text_textpattern.id;


--
-- Name: digipal_textitempart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.digipal_textitempart (
    id integer NOT NULL,
    locus character varying(20),
    item_part_id integer NOT NULL,
    text_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    date character varying(128),
    name character varying(200)
);


ALTER TABLE public.digipal_textitempart OWNER TO postgres;

--
-- Name: digipal_textitempart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.digipal_textitempart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.digipal_textitempart_id_seq OWNER TO postgres;

--
-- Name: digipal_textitempart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.digipal_textitempart_id_seq OWNED BY public.digipal_textitempart.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_comment_flags OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_comment_flags_id_seq OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_comment_flags_id_seq OWNED BY public.django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


ALTER TABLE public.django_comments OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_comments_id_seq OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_comments_id_seq OWNED BY public.django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_redirect_id_seq OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_redirect_id_seq OWNED BY public.django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_field (
    _order integer,
    form_id integer NOT NULL,
    "default" character varying(2000) NOT NULL,
    required boolean DEFAULT true NOT NULL,
    label character varying(200) NOT NULL,
    visible boolean DEFAULT true NOT NULL,
    help_text character varying(100) NOT NULL,
    choices character varying(1000) NOT NULL,
    id integer NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    field_type integer NOT NULL
);


ALTER TABLE public.forms_field OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_field_id_seq OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_field_id_seq OWNED BY public.forms_field.id;


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_fieldentry (
    entry_id integer NOT NULL,
    field_id integer NOT NULL,
    id integer NOT NULL,
    value character varying(2000)
);


ALTER TABLE public.forms_fieldentry OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_fieldentry_id_seq OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_fieldentry_id_seq OWNED BY public.forms_fieldentry.id;


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_form (
    email_message text NOT NULL,
    page_ptr_id integer NOT NULL,
    email_copies character varying(200) NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    content text NOT NULL,
    send_email boolean DEFAULT true NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_from character varying(254) NOT NULL
);


ALTER TABLE public.forms_form OWNER TO postgres;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms_formentry (
    entry_time timestamp with time zone NOT NULL,
    id integer NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE public.forms_formentry OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_formentry_id_seq OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_formentry_id_seq OWNED BY public.forms_formentry.id;


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE public.galleries_gallery OWNER TO postgres;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    gallery_id integer NOT NULL,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL
);


ALTER TABLE public.galleries_galleryimage OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galleries_galleryimage_id_seq OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galleries_galleryimage_id_seq OWNED BY public.galleries_galleryimage.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generic_assignedkeyword (
    content_type_id integer NOT NULL,
    id integer NOT NULL,
    keyword_id integer NOT NULL,
    object_pk integer,
    _order integer
);


ALTER TABLE public.generic_assignedkeyword OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.generic_assignedkeyword_id_seq OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.generic_assignedkeyword_id_seq OWNED BY public.generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generic_keyword (
    slug character varying(2000),
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.generic_keyword OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.generic_keyword_id_seq OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.generic_keyword_id_seq OWNED BY public.generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generic_rating (
    content_type_id integer NOT NULL,
    id integer NOT NULL,
    value integer NOT NULL,
    object_pk integer,
    rating_date timestamp with time zone,
    user_id integer
);


ALTER TABLE public.generic_rating OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.generic_rating_id_seq OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.generic_rating_id_seq OWNED BY public.generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.generic_threadedcomment (
    by_author boolean DEFAULT false NOT NULL,
    comment_ptr_id integer NOT NULL,
    replied_to_id integer,
    rating_count integer NOT NULL,
    rating_average double precision NOT NULL,
    rating_sum integer NOT NULL
);


ALTER TABLE public.generic_threadedcomment OWNER TO postgres;

--
-- Name: grappelli_safe_bookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_bookmark (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.grappelli_safe_bookmark OWNER TO postgres;

--
-- Name: grappelli_safe_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_bookmark_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_bookmark_id_seq OWNED BY public.grappelli_safe_bookmark.id;


--
-- Name: grappelli_safe_bookmarkitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_bookmarkitem (
    id integer NOT NULL,
    bookmark_id integer NOT NULL,
    title character varying(80) NOT NULL,
    link character varying(200) NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT grappelli_safe_bookmarkitem_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.grappelli_safe_bookmarkitem OWNER TO postgres;

--
-- Name: grappelli_safe_bookmarkitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_bookmarkitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_bookmarkitem_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_bookmarkitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_bookmarkitem_id_seq OWNED BY public.grappelli_safe_bookmarkitem.id;


--
-- Name: grappelli_safe_help; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_help (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT grappelli_safe_help_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.grappelli_safe_help OWNER TO postgres;

--
-- Name: grappelli_safe_help_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_help_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_help_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_help_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_help_id_seq OWNED BY public.grappelli_safe_help.id;


--
-- Name: grappelli_safe_helpitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_helpitem (
    id integer NOT NULL,
    help_id integer NOT NULL,
    title character varying(200) NOT NULL,
    link character varying(200) NOT NULL,
    body text NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT grappelli_safe_helpitem_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.grappelli_safe_helpitem OWNER TO postgres;

--
-- Name: grappelli_safe_helpitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_helpitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_helpitem_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_helpitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_helpitem_id_seq OWNED BY public.grappelli_safe_helpitem.id;


--
-- Name: grappelli_safe_navigation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_navigation (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT grappelli_safe_navigation_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.grappelli_safe_navigation OWNER TO postgres;

--
-- Name: grappelli_safe_navigation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_navigation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_navigation_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_navigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_navigation_id_seq OWNED BY public.grappelli_safe_navigation.id;


--
-- Name: grappelli_safe_navigationitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_navigationitem (
    id integer NOT NULL,
    navigation_id integer NOT NULL,
    title character varying(30) NOT NULL,
    link character varying(200) NOT NULL,
    category character varying(1) NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT grappelli_safe_navigationitem_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.grappelli_safe_navigationitem OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_navigationitem_groups (
    id integer NOT NULL,
    navigationitem_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.grappelli_safe_navigationitem_groups OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_navigationitem_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_navigationitem_groups_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_navigationitem_groups_id_seq OWNED BY public.grappelli_safe_navigationitem_groups.id;


--
-- Name: grappelli_safe_navigationitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_navigationitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_navigationitem_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_navigationitem_id_seq OWNED BY public.grappelli_safe_navigationitem.id;


--
-- Name: grappelli_safe_navigationitem_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grappelli_safe_navigationitem_users (
    id integer NOT NULL,
    navigationitem_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.grappelli_safe_navigationitem_users OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grappelli_safe_navigationitem_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grappelli_safe_navigationitem_users_id_seq OWNER TO postgres;

--
-- Name: grappelli_safe_navigationitem_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grappelli_safe_navigationitem_users_id_seq OWNED BY public.grappelli_safe_navigationitem_users.id;


--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_link OWNER TO postgres;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_page (
    status integer DEFAULT 1 NOT NULL,
    _order integer,
    parent_id integer,
    description text NOT NULL,
    title character varying(500) NOT NULL,
    short_url character varying(200),
    login_required boolean DEFAULT false NOT NULL,
    id integer NOT NULL,
    expiry_date timestamp with time zone,
    publish_date timestamp with time zone,
    titles character varying(1000),
    content_model character varying(50),
    slug character varying(2000),
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    gen_description boolean NOT NULL,
    in_menus character varying(100),
    _meta_title character varying(500),
    in_sitemap boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.pages_page OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_page_id_seq OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_page_id_seq OWNED BY public.pages_page.id;


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_richtextpage (
    content text NOT NULL,
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_richtextpage OWNER TO postgres;

--
-- Name: reversion_revision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reversion_revision (
    id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    user_id integer,
    comment text NOT NULL,
    manager_slug character varying(191) NOT NULL
);


ALTER TABLE public.reversion_revision OWNER TO postgres;

--
-- Name: reversion_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reversion_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reversion_revision_id_seq OWNER TO postgres;

--
-- Name: reversion_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reversion_revision_id_seq OWNED BY public.reversion_revision.id;


--
-- Name: reversion_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reversion_version (
    id integer NOT NULL,
    revision_id integer NOT NULL,
    object_id text NOT NULL,
    content_type_id integer NOT NULL,
    format character varying(255) NOT NULL,
    serialized_data text NOT NULL,
    object_repr text NOT NULL,
    object_id_int integer
);


ALTER TABLE public.reversion_version OWNER TO postgres;

--
-- Name: reversion_version_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reversion_version_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reversion_version_id_seq OWNER TO postgres;

--
-- Name: reversion_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reversion_version_id_seq OWNED BY public.reversion_version.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.south_migrationhistory_id_seq OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.south_migrationhistory_id_seq OWNED BY public.south_migrationhistory.id;


--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.twitter_query (
    interested boolean DEFAULT true NOT NULL,
    type character varying(10) NOT NULL,
    id integer NOT NULL,
    value character varying(140) NOT NULL
);


ALTER TABLE public.twitter_query OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.twitter_query_id_seq OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.twitter_query_id_seq OWNED BY public.twitter_query.id;


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.twitter_tweet (
    retweeter_profile_image_url character varying(200),
    text text,
    created_at timestamp with time zone,
    remote_id character varying(50) NOT NULL,
    retweeter_user_name character varying(100),
    profile_image_url character varying(200),
    full_name character varying(100),
    query_id integer NOT NULL,
    user_name character varying(100),
    id integer NOT NULL,
    retweeter_full_name character varying(100)
);


ALTER TABLE public.twitter_tweet OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.twitter_tweet_id_seq OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.twitter_tweet_id_seq OWNED BY public.twitter_tweet.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_message ALTER COLUMN id SET DEFAULT nextval('public.auth_message_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_blogcategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('public.blog_blogcategory_id_seq'::regclass);


--
-- Name: blog_blogpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_id_seq'::regclass);


--
-- Name: blog_blogpost_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_categories_id_seq'::regclass);


--
-- Name: blog_blogpost_related_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: conf_setting id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conf_setting ALTER COLUMN id SET DEFAULT nextval('public.conf_setting_id_seq'::regclass);


--
-- Name: core_sitepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission ALTER COLUMN id SET DEFAULT nextval('public.core_sitepermission_id_seq'::regclass);


--
-- Name: core_sitepermission_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.core_sitepermission_sites_id_seq'::regclass);


--
-- Name: digipal_allograph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph ALTER COLUMN id SET DEFAULT nextval('public.digipal_allograph_id_seq'::regclass);


--
-- Name: digipal_allograph_aspects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph_aspects ALTER COLUMN id SET DEFAULT nextval('public.digipal_allograph_aspects_id_seq'::regclass);


--
-- Name: digipal_allographcomponent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent ALTER COLUMN id SET DEFAULT nextval('public.digipal_allographcomponent_id_seq'::regclass);


--
-- Name: digipal_allographcomponent_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_allographcomponent_features_id_seq'::regclass);


--
-- Name: digipal_alphabet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet ALTER COLUMN id SET DEFAULT nextval('public.digipal_alphabet_id_seq'::regclass);


--
-- Name: digipal_alphabet_hands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_hands ALTER COLUMN id SET DEFAULT nextval('public.digipal_alphabet_hands_id_seq'::regclass);


--
-- Name: digipal_alphabet_ontographs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_ontographs ALTER COLUMN id SET DEFAULT nextval('public.digipal_alphabet_ontographs_id_seq'::regclass);


--
-- Name: digipal_annotation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation ALTER COLUMN id SET DEFAULT nextval('public.digipal_annotation_id_seq'::regclass);


--
-- Name: digipal_apitransform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_apitransform ALTER COLUMN id SET DEFAULT nextval('public.digipal_apitransform_id_seq'::regclass);


--
-- Name: digipal_appearance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_appearance ALTER COLUMN id SET DEFAULT nextval('public.digipal_appearance_id_seq'::regclass);


--
-- Name: digipal_archive id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_archive ALTER COLUMN id SET DEFAULT nextval('public.digipal_archive_id_seq'::regclass);


--
-- Name: digipal_aspect id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect ALTER COLUMN id SET DEFAULT nextval('public.digipal_aspect_id_seq'::regclass);


--
-- Name: digipal_aspect_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_aspect_features_id_seq'::regclass);


--
-- Name: digipal_authenticitycategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_authenticitycategory ALTER COLUMN id SET DEFAULT nextval('public.digipal_authenticitycategory_id_seq'::regclass);


--
-- Name: digipal_carouselitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_carouselitem ALTER COLUMN id SET DEFAULT nextval('public.digipal_carouselitem_id_seq'::regclass);


--
-- Name: digipal_cataloguenumber id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber ALTER COLUMN id SET DEFAULT nextval('public.digipal_cataloguenumber_id_seq'::regclass);


--
-- Name: digipal_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_category ALTER COLUMN id SET DEFAULT nextval('public.digipal_category_id_seq'::regclass);


--
-- Name: digipal_character id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character ALTER COLUMN id SET DEFAULT nextval('public.digipal_character_id_seq'::regclass);


--
-- Name: digipal_character_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character_components ALTER COLUMN id SET DEFAULT nextval('public.digipal_character_components_id_seq'::regclass);


--
-- Name: digipal_characterform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_characterform ALTER COLUMN id SET DEFAULT nextval('public.digipal_characterform_id_seq'::regclass);


--
-- Name: digipal_collation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_collation ALTER COLUMN id SET DEFAULT nextval('public.digipal_collation_id_seq'::regclass);


--
-- Name: digipal_component id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component ALTER COLUMN id SET DEFAULT nextval('public.digipal_component_id_seq'::regclass);


--
-- Name: digipal_component_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_component_features_id_seq'::regclass);


--
-- Name: digipal_contentattribution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_contentattribution ALTER COLUMN id SET DEFAULT nextval('public.digipal_contentattribution_id_seq'::regclass);


--
-- Name: digipal_county id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_county ALTER COLUMN id SET DEFAULT nextval('public.digipal_county_id_seq'::regclass);


--
-- Name: digipal_currentitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem ALTER COLUMN id SET DEFAULT nextval('public.digipal_currentitem_id_seq'::regclass);


--
-- Name: digipal_currentitem_owners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem_owners ALTER COLUMN id SET DEFAULT nextval('public.digipal_currentitem_owners_id_seq'::regclass);


--
-- Name: digipal_date id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_date ALTER COLUMN id SET DEFAULT nextval('public.digipal_date_id_seq'::regclass);


--
-- Name: digipal_dateevidence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence ALTER COLUMN id SET DEFAULT nextval('public.digipal_dateevidence_id_seq'::regclass);


--
-- Name: digipal_decoration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_decoration ALTER COLUMN id SET DEFAULT nextval('public.digipal_decoration_id_seq'::regclass);


--
-- Name: digipal_description id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description ALTER COLUMN id SET DEFAULT nextval('public.digipal_description_id_seq'::regclass);


--
-- Name: digipal_feature id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_feature ALTER COLUMN id SET DEFAULT nextval('public.digipal_feature_id_seq'::regclass);


--
-- Name: digipal_format id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_format ALTER COLUMN id SET DEFAULT nextval('public.digipal_format_id_seq'::regclass);


--
-- Name: digipal_graph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph ALTER COLUMN id SET DEFAULT nextval('public.digipal_graph_id_seq'::regclass);


--
-- Name: digipal_graph_aspects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph_aspects ALTER COLUMN id SET DEFAULT nextval('public.digipal_graph_aspects_id_seq'::regclass);


--
-- Name: digipal_graphcomponent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent ALTER COLUMN id SET DEFAULT nextval('public.digipal_graphcomponent_id_seq'::regclass);


--
-- Name: digipal_graphcomponent_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_graphcomponent_features_id_seq'::regclass);


--
-- Name: digipal_hair id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hair ALTER COLUMN id SET DEFAULT nextval('public.digipal_hair_id_seq'::regclass);


--
-- Name: digipal_hand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand ALTER COLUMN id SET DEFAULT nextval('public.digipal_hand_id_seq'::regclass);


--
-- Name: digipal_hand_images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand_images ALTER COLUMN id SET DEFAULT nextval('public.digipal_hand_images_id_seq'::regclass);


--
-- Name: digipal_handdescription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_handdescription ALTER COLUMN id SET DEFAULT nextval('public.digipal_handdescription_id_seq'::regclass);


--
-- Name: digipal_historicalitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem ALTER COLUMN id SET DEFAULT nextval('public.digipal_historicalitem_id_seq'::regclass);


--
-- Name: digipal_historicalitem_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_categories ALTER COLUMN id SET DEFAULT nextval('public.digipal_historicalitem_categories_id_seq'::regclass);


--
-- Name: digipal_historicalitem_owners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_owners ALTER COLUMN id SET DEFAULT nextval('public.digipal_historicalitem_owners_id_seq'::regclass);


--
-- Name: digipal_historicalitemdate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemdate ALTER COLUMN id SET DEFAULT nextval('public.digipal_historicalitemdate_id_seq'::regclass);


--
-- Name: digipal_historicalitemtype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemtype ALTER COLUMN id SET DEFAULT nextval('public.digipal_historicalitemtype_id_seq'::regclass);


--
-- Name: digipal_idiograph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph ALTER COLUMN id SET DEFAULT nextval('public.digipal_idiograph_id_seq'::regclass);


--
-- Name: digipal_idiograph_aspects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph_aspects ALTER COLUMN id SET DEFAULT nextval('public.digipal_idiograph_aspects_id_seq'::regclass);


--
-- Name: digipal_idiographcomponent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent ALTER COLUMN id SET DEFAULT nextval('public.digipal_idiographcomponent_id_seq'::regclass);


--
-- Name: digipal_idiographcomponent_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_idiographcomponent_features_id_seq'::regclass);


--
-- Name: digipal_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_image ALTER COLUMN id SET DEFAULT nextval('public.digipal_image_id_seq'::regclass);


--
-- Name: digipal_imageannotationstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_imageannotationstatus ALTER COLUMN id SET DEFAULT nextval('public.digipal_imageannotationstatus_id_seq'::regclass);


--
-- Name: digipal_institution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution ALTER COLUMN id SET DEFAULT nextval('public.digipal_institution_id_seq'::regclass);


--
-- Name: digipal_institutiontype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institutiontype ALTER COLUMN id SET DEFAULT nextval('public.digipal_institutiontype_id_seq'::regclass);


--
-- Name: digipal_itemorigin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemorigin ALTER COLUMN id SET DEFAULT nextval('public.digipal_itemorigin_id_seq'::regclass);


--
-- Name: digipal_itempart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart ALTER COLUMN id SET DEFAULT nextval('public.digipal_itempart_id_seq'::regclass);


--
-- Name: digipal_itempart_owners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart_owners ALTER COLUMN id SET DEFAULT nextval('public.digipal_itempart_owners_id_seq'::regclass);


--
-- Name: digipal_itempartauthenticity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity ALTER COLUMN id SET DEFAULT nextval('public.digipal_itempartauthenticity_id_seq'::regclass);


--
-- Name: digipal_itempartitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartitem ALTER COLUMN id SET DEFAULT nextval('public.digipal_itempartitem_id_seq'::regclass);


--
-- Name: digipal_itemparttype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemparttype ALTER COLUMN id SET DEFAULT nextval('public.digipal_itemparttype_id_seq'::regclass);


--
-- Name: digipal_keyval id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_keyval ALTER COLUMN id SET DEFAULT nextval('public.digipal_keyval_id_seq'::regclass);


--
-- Name: digipal_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_language ALTER COLUMN id SET DEFAULT nextval('public.digipal_language_id_seq'::regclass);


--
-- Name: digipal_latinstyle id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_latinstyle ALTER COLUMN id SET DEFAULT nextval('public.digipal_latinstyle_id_seq'::regclass);


--
-- Name: digipal_layout id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_layout ALTER COLUMN id SET DEFAULT nextval('public.digipal_layout_id_seq'::regclass);


--
-- Name: digipal_measurement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_measurement ALTER COLUMN id SET DEFAULT nextval('public.digipal_measurement_id_seq'::regclass);


--
-- Name: digipal_mediapermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_mediapermission ALTER COLUMN id SET DEFAULT nextval('public.digipal_mediapermission_id_seq'::regclass);


--
-- Name: digipal_ontograph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontograph ALTER COLUMN id SET DEFAULT nextval('public.digipal_ontograph_id_seq'::regclass);


--
-- Name: digipal_ontographtype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontographtype ALTER COLUMN id SET DEFAULT nextval('public.digipal_ontographtype_id_seq'::regclass);


--
-- Name: digipal_owner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_owner ALTER COLUMN id SET DEFAULT nextval('public.digipal_owner_id_seq'::regclass);


--
-- Name: digipal_ownertype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ownertype ALTER COLUMN id SET DEFAULT nextval('public.digipal_ownertype_id_seq'::regclass);


--
-- Name: digipal_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_person ALTER COLUMN id SET DEFAULT nextval('public.digipal_person_id_seq'::regclass);


--
-- Name: digipal_place id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place ALTER COLUMN id SET DEFAULT nextval('public.digipal_place_id_seq'::regclass);


--
-- Name: digipal_placeevidence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence ALTER COLUMN id SET DEFAULT nextval('public.digipal_placeevidence_id_seq'::regclass);


--
-- Name: digipal_placetype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placetype ALTER COLUMN id SET DEFAULT nextval('public.digipal_placetype_id_seq'::regclass);


--
-- Name: digipal_proportion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_proportion ALTER COLUMN id SET DEFAULT nextval('public.digipal_proportion_id_seq'::regclass);


--
-- Name: digipal_reference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_reference ALTER COLUMN id SET DEFAULT nextval('public.digipal_reference_id_seq'::regclass);


--
-- Name: digipal_region id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_region ALTER COLUMN id SET DEFAULT nextval('public.digipal_region_id_seq'::regclass);


--
-- Name: digipal_repository id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository ALTER COLUMN id SET DEFAULT nextval('public.digipal_repository_id_seq'::regclass);


--
-- Name: digipal_requestlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_requestlog ALTER COLUMN id SET DEFAULT nextval('public.digipal_requestlog_id_seq'::regclass);


--
-- Name: digipal_scribe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe ALTER COLUMN id SET DEFAULT nextval('public.digipal_scribe_id_seq'::regclass);


--
-- Name: digipal_scribe_reference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe_reference ALTER COLUMN id SET DEFAULT nextval('public.digipal_scribe_reference_id_seq'::regclass);


--
-- Name: digipal_script id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script ALTER COLUMN id SET DEFAULT nextval('public.digipal_script_id_seq'::regclass);


--
-- Name: digipal_script_allographs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script_allographs ALTER COLUMN id SET DEFAULT nextval('public.digipal_script_allographs_id_seq'::regclass);


--
-- Name: digipal_scriptcomponent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent ALTER COLUMN id SET DEFAULT nextval('public.digipal_scriptcomponent_id_seq'::regclass);


--
-- Name: digipal_scriptcomponent_features id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent_features ALTER COLUMN id SET DEFAULT nextval('public.digipal_scriptcomponent_features_id_seq'::regclass);


--
-- Name: digipal_source id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_source ALTER COLUMN id SET DEFAULT nextval('public.digipal_source_id_seq'::regclass);


--
-- Name: digipal_status id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_status ALTER COLUMN id SET DEFAULT nextval('public.digipal_status_id_seq'::regclass);


--
-- Name: digipal_stewartrecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_stewartrecord ALTER COLUMN id SET DEFAULT nextval('public.digipal_stewartrecord_id_seq'::regclass);


--
-- Name: digipal_text id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_id_seq'::regclass);


--
-- Name: digipal_text_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_categories ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_categories_id_seq'::regclass);


--
-- Name: digipal_text_entryhand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_entryhand ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_entryhand_id_seq'::regclass);


--
-- Name: digipal_text_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_languages ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_languages_id_seq'::regclass);


--
-- Name: digipal_text_textannotation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textannotation ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textannotation_id_seq'::regclass);


--
-- Name: digipal_text_textcontent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontent_id_seq'::regclass);


--
-- Name: digipal_text_textcontent_languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent_languages ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontent_languages_id_seq'::regclass);


--
-- Name: digipal_text_textcontenttype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontenttype ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontenttype_id_seq'::regclass);


--
-- Name: digipal_text_textcontentxml id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontentxml_id_seq'::regclass);


--
-- Name: digipal_text_textcontentxmlcopy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlcopy ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontentxmlcopy_id_seq'::regclass);


--
-- Name: digipal_text_textcontentxmlstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlstatus ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textcontentxmlstatus_id_seq'::regclass);


--
-- Name: digipal_text_textpattern id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textpattern ALTER COLUMN id SET DEFAULT nextval('public.digipal_text_textpattern_id_seq'::regclass);


--
-- Name: digipal_textitempart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_textitempart ALTER COLUMN id SET DEFAULT nextval('public.digipal_textitempart_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_comment_flags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comment_flags ALTER COLUMN id SET DEFAULT nextval('public.django_comment_flags_id_seq'::regclass);


--
-- Name: django_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comments ALTER COLUMN id SET DEFAULT nextval('public.django_comments_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_redirect id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_redirect ALTER COLUMN id SET DEFAULT nextval('public.django_redirect_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: forms_field id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_field ALTER COLUMN id SET DEFAULT nextval('public.forms_field_id_seq'::regclass);


--
-- Name: forms_fieldentry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('public.forms_fieldentry_id_seq'::regclass);


--
-- Name: forms_formentry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_formentry ALTER COLUMN id SET DEFAULT nextval('public.forms_formentry_id_seq'::regclass);


--
-- Name: galleries_galleryimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('public.galleries_galleryimage_id_seq'::regclass);


--
-- Name: generic_assignedkeyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('public.generic_assignedkeyword_id_seq'::regclass);


--
-- Name: generic_keyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_keyword ALTER COLUMN id SET DEFAULT nextval('public.generic_keyword_id_seq'::regclass);


--
-- Name: generic_rating id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_rating ALTER COLUMN id SET DEFAULT nextval('public.generic_rating_id_seq'::regclass);


--
-- Name: grappelli_safe_bookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmark ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_bookmark_id_seq'::regclass);


--
-- Name: grappelli_safe_bookmarkitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmarkitem ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_bookmarkitem_id_seq'::regclass);


--
-- Name: grappelli_safe_help id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_help ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_help_id_seq'::regclass);


--
-- Name: grappelli_safe_helpitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_helpitem ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_helpitem_id_seq'::regclass);


--
-- Name: grappelli_safe_navigation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigation ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_navigation_id_seq'::regclass);


--
-- Name: grappelli_safe_navigationitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_navigationitem_id_seq'::regclass);


--
-- Name: grappelli_safe_navigationitem_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_groups ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_navigationitem_groups_id_seq'::regclass);


--
-- Name: grappelli_safe_navigationitem_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_users ALTER COLUMN id SET DEFAULT nextval('public.grappelli_safe_navigationitem_users_id_seq'::regclass);


--
-- Name: pages_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_page ALTER COLUMN id SET DEFAULT nextval('public.pages_page_id_seq'::regclass);


--
-- Name: reversion_revision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_revision ALTER COLUMN id SET DEFAULT nextval('public.reversion_revision_id_seq'::regclass);


--
-- Name: reversion_version id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_version ALTER COLUMN id SET DEFAULT nextval('public.reversion_version_id_seq'::regclass);


--
-- Name: south_migrationhistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('public.south_migrationhistory_id_seq'::regclass);


--
-- Name: twitter_query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twitter_query ALTER COLUMN id SET DEFAULT nextval('public.twitter_query_id_seq'::regclass);


--
-- Name: twitter_tweet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twitter_tweet ALTER COLUMN id SET DEFAULT nextval('public.twitter_tweet_id_seq'::regclass);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_message auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories blog_blogpost_categories_blogpost_id_79f2a5569187bd14_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_79f2a5569187bd14_uniq UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_posts blog_blogpost_related_po_from_blogpost_id_3007eb9b6b16df8b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_po_from_blogpost_id_3007eb9b6b16df8b_uniq UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites core_sitepermission_sit_sitepermission_id_31fc3b7b7e3badd5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sit_sitepermission_id_31fc3b7b7e3badd5_uniq UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_sites core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: digipal_allograph_aspects digipal_allograph_aspects_allograph_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph_aspects
    ADD CONSTRAINT digipal_allograph_aspects_allograph_id_key UNIQUE (allograph_id, aspect_id);


--
-- Name: digipal_allograph_aspects digipal_allograph_aspects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph_aspects
    ADD CONSTRAINT digipal_allograph_aspects_pkey PRIMARY KEY (id);


--
-- Name: digipal_allograph digipal_allograph_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph
    ADD CONSTRAINT digipal_allograph_name_key UNIQUE (name, character_id);


--
-- Name: digipal_allograph digipal_allograph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph
    ADD CONSTRAINT digipal_allograph_pkey PRIMARY KEY (id);


--
-- Name: digipal_allographcomponent_features digipal_allographcomponent_features_allographcomponent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent_features
    ADD CONSTRAINT digipal_allographcomponent_features_allographcomponent_id_key UNIQUE (allographcomponent_id, feature_id);


--
-- Name: digipal_allographcomponent_features digipal_allographcomponent_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent_features
    ADD CONSTRAINT digipal_allographcomponent_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_allographcomponent digipal_allographcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent
    ADD CONSTRAINT digipal_allographcomponent_pkey PRIMARY KEY (id);


--
-- Name: digipal_alphabet_hands digipal_alphabet_hands_alphabet_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_hands
    ADD CONSTRAINT digipal_alphabet_hands_alphabet_id_key UNIQUE (alphabet_id, hand_id);


--
-- Name: digipal_alphabet_hands digipal_alphabet_hands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_hands
    ADD CONSTRAINT digipal_alphabet_hands_pkey PRIMARY KEY (id);


--
-- Name: digipal_alphabet digipal_alphabet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet
    ADD CONSTRAINT digipal_alphabet_name_key UNIQUE (name);


--
-- Name: digipal_alphabet_ontographs digipal_alphabet_ontographs_alphabet_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_ontographs
    ADD CONSTRAINT digipal_alphabet_ontographs_alphabet_id_key UNIQUE (alphabet_id, ontograph_id);


--
-- Name: digipal_alphabet_ontographs digipal_alphabet_ontographs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_ontographs
    ADD CONSTRAINT digipal_alphabet_ontographs_pkey PRIMARY KEY (id);


--
-- Name: digipal_alphabet digipal_alphabet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet
    ADD CONSTRAINT digipal_alphabet_pkey PRIMARY KEY (id);


--
-- Name: digipal_annotation digipal_annotation_graph_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_graph_id_key UNIQUE (graph_id);


--
-- Name: digipal_annotation digipal_annotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_pkey PRIMARY KEY (id);


--
-- Name: digipal_apitransform digipal_apitransform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_apitransform
    ADD CONSTRAINT digipal_apitransform_pkey PRIMARY KEY (id);


--
-- Name: digipal_apitransform digipal_apitransform_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_apitransform
    ADD CONSTRAINT digipal_apitransform_slug_key UNIQUE (slug);


--
-- Name: digipal_apitransform digipal_apitransform_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_apitransform
    ADD CONSTRAINT digipal_apitransform_title_key UNIQUE (title);


--
-- Name: digipal_appearance digipal_appearance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_appearance
    ADD CONSTRAINT digipal_appearance_pkey PRIMARY KEY (id);


--
-- Name: digipal_archive digipal_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_archive
    ADD CONSTRAINT digipal_archive_pkey PRIMARY KEY (id);


--
-- Name: digipal_aspect_features digipal_aspect_features_aspect_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect_features
    ADD CONSTRAINT digipal_aspect_features_aspect_id_key UNIQUE (aspect_id, feature_id);


--
-- Name: digipal_aspect_features digipal_aspect_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect_features
    ADD CONSTRAINT digipal_aspect_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_aspect digipal_aspect_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect
    ADD CONSTRAINT digipal_aspect_name_key UNIQUE (name);


--
-- Name: digipal_aspect digipal_aspect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect
    ADD CONSTRAINT digipal_aspect_pkey PRIMARY KEY (id);


--
-- Name: digipal_authenticitycategory digipal_authenticitycategory_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_authenticitycategory
    ADD CONSTRAINT digipal_authenticitycategory_name_key UNIQUE (name);


--
-- Name: digipal_authenticitycategory digipal_authenticitycategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_authenticitycategory
    ADD CONSTRAINT digipal_authenticitycategory_pkey PRIMARY KEY (id);


--
-- Name: digipal_carouselitem digipal_carouselitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_carouselitem
    ADD CONSTRAINT digipal_carouselitem_pkey PRIMARY KEY (id);


--
-- Name: digipal_cataloguenumber digipal_cataloguenumber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber
    ADD CONSTRAINT digipal_cataloguenumber_pkey PRIMARY KEY (id);


--
-- Name: digipal_cataloguenumber digipal_cataloguenumber_source_id_5930e00c9cc7bb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber
    ADD CONSTRAINT digipal_cataloguenumber_source_id_5930e00c9cc7bb_uniq UNIQUE (source_id, text_id, number, historical_item_id);


--
-- Name: digipal_category digipal_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_category
    ADD CONSTRAINT digipal_category_name_key UNIQUE (name);


--
-- Name: digipal_category digipal_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_category
    ADD CONSTRAINT digipal_category_pkey PRIMARY KEY (id);


--
-- Name: digipal_character_components digipal_character_components_character_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character_components
    ADD CONSTRAINT digipal_character_components_character_id_key UNIQUE (character_id, component_id);


--
-- Name: digipal_character_components digipal_character_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character_components
    ADD CONSTRAINT digipal_character_components_pkey PRIMARY KEY (id);


--
-- Name: digipal_character digipal_character_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character
    ADD CONSTRAINT digipal_character_name_key UNIQUE (name);


--
-- Name: digipal_character digipal_character_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character
    ADD CONSTRAINT digipal_character_pkey PRIMARY KEY (id);


--
-- Name: digipal_characterform digipal_characterform_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_characterform
    ADD CONSTRAINT digipal_characterform_name_key UNIQUE (name);


--
-- Name: digipal_characterform digipal_characterform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_characterform
    ADD CONSTRAINT digipal_characterform_pkey PRIMARY KEY (id);


--
-- Name: digipal_collation digipal_collation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_collation
    ADD CONSTRAINT digipal_collation_pkey PRIMARY KEY (id);


--
-- Name: digipal_component_features digipal_component_features_component_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component_features
    ADD CONSTRAINT digipal_component_features_component_id_key UNIQUE (component_id, feature_id);


--
-- Name: digipal_component_features digipal_component_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component_features
    ADD CONSTRAINT digipal_component_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_component digipal_component_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component
    ADD CONSTRAINT digipal_component_name_key UNIQUE (name);


--
-- Name: digipal_component digipal_component_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component
    ADD CONSTRAINT digipal_component_pkey PRIMARY KEY (id);


--
-- Name: digipal_contentattribution digipal_contentattribution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_contentattribution
    ADD CONSTRAINT digipal_contentattribution_pkey PRIMARY KEY (id);


--
-- Name: digipal_contentattribution digipal_contentattribution_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_contentattribution
    ADD CONSTRAINT digipal_contentattribution_title_key UNIQUE (title);


--
-- Name: digipal_county digipal_county_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_county
    ADD CONSTRAINT digipal_county_name_key UNIQUE (name);


--
-- Name: digipal_county digipal_county_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_county
    ADD CONSTRAINT digipal_county_pkey PRIMARY KEY (id);


--
-- Name: digipal_currentitem_owners digipal_currentitem_owners_currentitem_id_1caca3c5ef1809d3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem_owners
    ADD CONSTRAINT digipal_currentitem_owners_currentitem_id_1caca3c5ef1809d3_uniq UNIQUE (currentitem_id, owner_id);


--
-- Name: digipal_currentitem_owners digipal_currentitem_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem_owners
    ADD CONSTRAINT digipal_currentitem_owners_pkey PRIMARY KEY (id);


--
-- Name: digipal_currentitem digipal_currentitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem
    ADD CONSTRAINT digipal_currentitem_pkey PRIMARY KEY (id);


--
-- Name: digipal_currentitem digipal_currentitem_repository_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem
    ADD CONSTRAINT digipal_currentitem_repository_id_key UNIQUE (repository_id, shelfmark);


--
-- Name: digipal_date digipal_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_date
    ADD CONSTRAINT digipal_date_pkey PRIMARY KEY (id);


--
-- Name: digipal_dateevidence digipal_dateevidence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence
    ADD CONSTRAINT digipal_dateevidence_pkey PRIMARY KEY (id);


--
-- Name: digipal_decoration digipal_decoration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_decoration
    ADD CONSTRAINT digipal_decoration_pkey PRIMARY KEY (id);


--
-- Name: digipal_description digipal_description_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description
    ADD CONSTRAINT digipal_description_pkey PRIMARY KEY (id);


--
-- Name: digipal_description digipal_description_source_id_52aa5e9c55e6ac65_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description
    ADD CONSTRAINT digipal_description_source_id_52aa5e9c55e6ac65_uniq UNIQUE (source_id, text_id, historical_item_id);


--
-- Name: digipal_feature digipal_feature_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_feature
    ADD CONSTRAINT digipal_feature_name_key UNIQUE (name);


--
-- Name: digipal_feature digipal_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_feature
    ADD CONSTRAINT digipal_feature_pkey PRIMARY KEY (id);


--
-- Name: digipal_format digipal_format_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_format
    ADD CONSTRAINT digipal_format_name_key UNIQUE (name);


--
-- Name: digipal_format digipal_format_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_format
    ADD CONSTRAINT digipal_format_pkey PRIMARY KEY (id);


--
-- Name: digipal_graph_aspects digipal_graph_aspects_graph_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph_aspects
    ADD CONSTRAINT digipal_graph_aspects_graph_id_key UNIQUE (graph_id, aspect_id);


--
-- Name: digipal_graph_aspects digipal_graph_aspects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph_aspects
    ADD CONSTRAINT digipal_graph_aspects_pkey PRIMARY KEY (id);


--
-- Name: digipal_graph digipal_graph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph
    ADD CONSTRAINT digipal_graph_pkey PRIMARY KEY (id);


--
-- Name: digipal_graphcomponent_features digipal_graphcomponent_features_graphcomponent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent_features
    ADD CONSTRAINT digipal_graphcomponent_features_graphcomponent_id_key UNIQUE (graphcomponent_id, feature_id);


--
-- Name: digipal_graphcomponent_features digipal_graphcomponent_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent_features
    ADD CONSTRAINT digipal_graphcomponent_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_graphcomponent digipal_graphcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent
    ADD CONSTRAINT digipal_graphcomponent_pkey PRIMARY KEY (id);


--
-- Name: digipal_hair digipal_hair_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hair
    ADD CONSTRAINT digipal_hair_label_key UNIQUE (label);


--
-- Name: digipal_hair digipal_hair_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hair
    ADD CONSTRAINT digipal_hair_pkey PRIMARY KEY (id);


--
-- Name: digipal_hand_images digipal_hand_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand_images
    ADD CONSTRAINT digipal_hand_images_pkey PRIMARY KEY (id);


--
-- Name: digipal_hand_images digipal_hand_pages_hand_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand_images
    ADD CONSTRAINT digipal_hand_pages_hand_id_key UNIQUE (hand_id, image_id);


--
-- Name: digipal_hand digipal_hand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_pkey PRIMARY KEY (id);


--
-- Name: digipal_handdescription digipal_handdescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_handdescription
    ADD CONSTRAINT digipal_handdescription_pkey PRIMARY KEY (id);


--
-- Name: digipal_historicalitem_categories digipal_historicalitem_categories_historicalitem_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_categories
    ADD CONSTRAINT digipal_historicalitem_categories_historicalitem_id_key UNIQUE (historicalitem_id, category_id);


--
-- Name: digipal_historicalitem_categories digipal_historicalitem_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_categories
    ADD CONSTRAINT digipal_historicalitem_categories_pkey PRIMARY KEY (id);


--
-- Name: digipal_historicalitem_owners digipal_historicalitem_owners_historicalitem_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_owners
    ADD CONSTRAINT digipal_historicalitem_owners_historicalitem_id_key UNIQUE (historicalitem_id, owner_id);


--
-- Name: digipal_historicalitem_owners digipal_historicalitem_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_owners
    ADD CONSTRAINT digipal_historicalitem_owners_pkey PRIMARY KEY (id);


--
-- Name: digipal_historicalitem digipal_historicalitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem
    ADD CONSTRAINT digipal_historicalitem_pkey PRIMARY KEY (id);


--
-- Name: digipal_historicalitemdate digipal_historicalitemdate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemdate
    ADD CONSTRAINT digipal_historicalitemdate_pkey PRIMARY KEY (id);


--
-- Name: digipal_historicalitemtype digipal_historicalitemtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemtype
    ADD CONSTRAINT digipal_historicalitemtype_pkey PRIMARY KEY (id);


--
-- Name: digipal_idiograph_aspects digipal_idiograph_aspects_idiograph_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph_aspects
    ADD CONSTRAINT digipal_idiograph_aspects_idiograph_id_key UNIQUE (idiograph_id, aspect_id);


--
-- Name: digipal_idiograph_aspects digipal_idiograph_aspects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph_aspects
    ADD CONSTRAINT digipal_idiograph_aspects_pkey PRIMARY KEY (id);


--
-- Name: digipal_idiograph digipal_idiograph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph
    ADD CONSTRAINT digipal_idiograph_pkey PRIMARY KEY (id);


--
-- Name: digipal_idiographcomponent_features digipal_idiographcomponent_features_idiographcomponent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent_features
    ADD CONSTRAINT digipal_idiographcomponent_features_idiographcomponent_id_key UNIQUE (idiographcomponent_id, feature_id);


--
-- Name: digipal_idiographcomponent_features digipal_idiographcomponent_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent_features
    ADD CONSTRAINT digipal_idiographcomponent_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_idiographcomponent digipal_idiographcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent
    ADD CONSTRAINT digipal_idiographcomponent_pkey PRIMARY KEY (id);


--
-- Name: digipal_image digipal_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_image
    ADD CONSTRAINT digipal_image_pkey PRIMARY KEY (id);


--
-- Name: digipal_imageannotationstatus digipal_imageannotationstatus_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_imageannotationstatus
    ADD CONSTRAINT digipal_imageannotationstatus_name_key UNIQUE (name);


--
-- Name: digipal_imageannotationstatus digipal_imageannotationstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_imageannotationstatus
    ADD CONSTRAINT digipal_imageannotationstatus_pkey PRIMARY KEY (id);


--
-- Name: digipal_institution digipal_institution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_pkey PRIMARY KEY (id);


--
-- Name: digipal_institutiontype digipal_institutiontype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institutiontype
    ADD CONSTRAINT digipal_institutiontype_pkey PRIMARY KEY (id);


--
-- Name: digipal_itemorigin digipal_itemorigin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemorigin
    ADD CONSTRAINT digipal_itemorigin_pkey PRIMARY KEY (id);


--
-- Name: digipal_itempart_owners digipal_itempart_owners_itempart_id_5528c2aa9c73c8f5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart_owners
    ADD CONSTRAINT digipal_itempart_owners_itempart_id_5528c2aa9c73c8f5_uniq UNIQUE (itempart_id, owner_id);


--
-- Name: digipal_itempart_owners digipal_itempart_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart_owners
    ADD CONSTRAINT digipal_itempart_owners_pkey PRIMARY KEY (id);


--
-- Name: digipal_itempart digipal_itempart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart
    ADD CONSTRAINT digipal_itempart_pkey PRIMARY KEY (id);


--
-- Name: digipal_itempartauthenticity digipal_itempartauthenticity_item_part_id_47f6a7c669f3f627_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity
    ADD CONSTRAINT digipal_itempartauthenticity_item_part_id_47f6a7c669f3f627_uniq UNIQUE (item_part_id, category_id, source_id);


--
-- Name: digipal_itempartauthenticity digipal_itempartauthenticity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity
    ADD CONSTRAINT digipal_itempartauthenticity_pkey PRIMARY KEY (id);


--
-- Name: digipal_itempartitem digipal_itempartitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartitem
    ADD CONSTRAINT digipal_itempartitem_pkey PRIMARY KEY (id);


--
-- Name: digipal_itemparttype digipal_itemparttype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemparttype
    ADD CONSTRAINT digipal_itemparttype_name_key UNIQUE (name);


--
-- Name: digipal_itemparttype digipal_itemparttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemparttype
    ADD CONSTRAINT digipal_itemparttype_pkey PRIMARY KEY (id);


--
-- Name: digipal_keyval digipal_keyval_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_keyval
    ADD CONSTRAINT digipal_keyval_key_key UNIQUE (key);


--
-- Name: digipal_keyval digipal_keyval_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_keyval
    ADD CONSTRAINT digipal_keyval_pkey PRIMARY KEY (id);


--
-- Name: digipal_language digipal_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_language
    ADD CONSTRAINT digipal_language_name_key UNIQUE (name);


--
-- Name: digipal_language digipal_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_language
    ADD CONSTRAINT digipal_language_pkey PRIMARY KEY (id);


--
-- Name: digipal_latinstyle digipal_latinstyle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_latinstyle
    ADD CONSTRAINT digipal_latinstyle_pkey PRIMARY KEY (id);


--
-- Name: digipal_layout digipal_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_layout
    ADD CONSTRAINT digipal_layout_pkey PRIMARY KEY (id);


--
-- Name: digipal_measurement digipal_measurement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_measurement
    ADD CONSTRAINT digipal_measurement_pkey PRIMARY KEY (id);


--
-- Name: digipal_mediapermission digipal_mediapermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_mediapermission
    ADD CONSTRAINT digipal_mediapermission_pkey PRIMARY KEY (id);


--
-- Name: digipal_ontograph digipal_ontograph_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontograph
    ADD CONSTRAINT digipal_ontograph_name_key UNIQUE (name, ontograph_type_id);


--
-- Name: digipal_ontograph digipal_ontograph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontograph
    ADD CONSTRAINT digipal_ontograph_pkey PRIMARY KEY (id);


--
-- Name: digipal_ontographtype digipal_ontographtype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontographtype
    ADD CONSTRAINT digipal_ontographtype_name_key UNIQUE (name);


--
-- Name: digipal_ontographtype digipal_ontographtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontographtype
    ADD CONSTRAINT digipal_ontographtype_pkey PRIMARY KEY (id);


--
-- Name: digipal_owner digipal_owner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_owner
    ADD CONSTRAINT digipal_owner_pkey PRIMARY KEY (id);


--
-- Name: digipal_ownertype digipal_ownertype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ownertype
    ADD CONSTRAINT digipal_ownertype_pkey PRIMARY KEY (id);


--
-- Name: digipal_person digipal_person_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_person
    ADD CONSTRAINT digipal_person_name_key UNIQUE (name);


--
-- Name: digipal_person digipal_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_person
    ADD CONSTRAINT digipal_person_pkey PRIMARY KEY (id);


--
-- Name: digipal_place digipal_place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place
    ADD CONSTRAINT digipal_place_pkey PRIMARY KEY (id);


--
-- Name: digipal_placeevidence digipal_placeevidence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence
    ADD CONSTRAINT digipal_placeevidence_pkey PRIMARY KEY (id);


--
-- Name: digipal_placetype digipal_placetype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placetype
    ADD CONSTRAINT digipal_placetype_pkey PRIMARY KEY (id);


--
-- Name: digipal_proportion digipal_proportion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_proportion
    ADD CONSTRAINT digipal_proportion_pkey PRIMARY KEY (id);


--
-- Name: digipal_reference digipal_reference_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_reference
    ADD CONSTRAINT digipal_reference_name_key UNIQUE (name, name_index);


--
-- Name: digipal_reference digipal_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_reference
    ADD CONSTRAINT digipal_reference_pkey PRIMARY KEY (id);


--
-- Name: digipal_region digipal_region_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_region
    ADD CONSTRAINT digipal_region_name_key UNIQUE (name);


--
-- Name: digipal_region digipal_region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_region
    ADD CONSTRAINT digipal_region_pkey PRIMARY KEY (id);


--
-- Name: digipal_repository digipal_repository_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository
    ADD CONSTRAINT digipal_repository_pkey PRIMARY KEY (id);


--
-- Name: digipal_requestlog digipal_requestlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_requestlog
    ADD CONSTRAINT digipal_requestlog_pkey PRIMARY KEY (id);


--
-- Name: digipal_scribe digipal_scribe_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe
    ADD CONSTRAINT digipal_scribe_name_key UNIQUE (name);


--
-- Name: digipal_scribe digipal_scribe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe
    ADD CONSTRAINT digipal_scribe_pkey PRIMARY KEY (id);


--
-- Name: digipal_scribe_reference digipal_scribe_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe_reference
    ADD CONSTRAINT digipal_scribe_reference_pkey PRIMARY KEY (id);


--
-- Name: digipal_scribe_reference digipal_scribe_reference_scribe_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe_reference
    ADD CONSTRAINT digipal_scribe_reference_scribe_id_key UNIQUE (scribe_id, reference_id);


--
-- Name: digipal_script_allographs digipal_script_allographs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script_allographs
    ADD CONSTRAINT digipal_script_allographs_pkey PRIMARY KEY (id);


--
-- Name: digipal_script_allographs digipal_script_allographs_script_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script_allographs
    ADD CONSTRAINT digipal_script_allographs_script_id_key UNIQUE (script_id, allograph_id);


--
-- Name: digipal_script digipal_script_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script
    ADD CONSTRAINT digipal_script_pkey PRIMARY KEY (id);


--
-- Name: digipal_scriptcomponent_features digipal_scriptcomponent_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent_features
    ADD CONSTRAINT digipal_scriptcomponent_features_pkey PRIMARY KEY (id);


--
-- Name: digipal_scriptcomponent_features digipal_scriptcomponent_features_scriptcomponent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent_features
    ADD CONSTRAINT digipal_scriptcomponent_features_scriptcomponent_id_key UNIQUE (scriptcomponent_id, feature_id);


--
-- Name: digipal_scriptcomponent digipal_scriptcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent
    ADD CONSTRAINT digipal_scriptcomponent_pkey PRIMARY KEY (id);


--
-- Name: digipal_source digipal_source_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_source
    ADD CONSTRAINT digipal_source_label_key UNIQUE (label);


--
-- Name: digipal_source digipal_source_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_source
    ADD CONSTRAINT digipal_source_name_key UNIQUE (name);


--
-- Name: digipal_source digipal_source_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_source
    ADD CONSTRAINT digipal_source_pkey PRIMARY KEY (id);


--
-- Name: digipal_status digipal_status_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_status
    ADD CONSTRAINT digipal_status_name_key UNIQUE (name);


--
-- Name: digipal_status digipal_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_status
    ADD CONSTRAINT digipal_status_pkey PRIMARY KEY (id);


--
-- Name: digipal_stewartrecord digipal_stewartrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_stewartrecord
    ADD CONSTRAINT digipal_stewartrecord_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_categories digipal_text_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_categories
    ADD CONSTRAINT digipal_text_categories_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_categories digipal_text_categories_text_id_2f28f4b1877a5d69_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_categories
    ADD CONSTRAINT digipal_text_categories_text_id_2f28f4b1877a5d69_uniq UNIQUE (text_id, category_id);


--
-- Name: digipal_text_entryhand digipal_text_entryhand_item_part_id_7315d68a2369bb35_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_entryhand
    ADD CONSTRAINT digipal_text_entryhand_item_part_id_7315d68a2369bb35_uniq UNIQUE (item_part_id, entry_number, hand_label, "order", correction);


--
-- Name: digipal_text_entryhand digipal_text_entryhand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_entryhand
    ADD CONSTRAINT digipal_text_entryhand_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_languages digipal_text_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_languages
    ADD CONSTRAINT digipal_text_languages_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_languages digipal_text_languages_text_id_226c2b5c0566249f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_languages
    ADD CONSTRAINT digipal_text_languages_text_id_226c2b5c0566249f_uniq UNIQUE (text_id, language_id);


--
-- Name: digipal_text digipal_text_name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text
    ADD CONSTRAINT digipal_text_name_uniq UNIQUE (name);


--
-- Name: digipal_text digipal_text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text
    ADD CONSTRAINT digipal_text_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textannotation digipal_text_textannotation_annotation_id_ace38c747c2b414_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textannotation
    ADD CONSTRAINT digipal_text_textannotation_annotation_id_ace38c747c2b414_uniq UNIQUE (annotation_id, elementid);


--
-- Name: digipal_text_textannotation digipal_text_textannotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textannotation
    ADD CONSTRAINT digipal_text_textannotation_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontent digipal_text_textcontent_item_part_id_13494d9cc4c7cecd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT digipal_text_textcontent_item_part_id_13494d9cc4c7cecd_uniq UNIQUE (item_part_id, type_id);


--
-- Name: digipal_text_textcontent_languages digipal_text_textcontent_l_textcontent_id_7f15c6885917f53e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent_languages
    ADD CONSTRAINT digipal_text_textcontent_l_textcontent_id_7f15c6885917f53e_uniq UNIQUE (textcontent_id, language_id);


--
-- Name: digipal_text_textcontent_languages digipal_text_textcontent_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent_languages
    ADD CONSTRAINT digipal_text_textcontent_languages_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontent digipal_text_textcontent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT digipal_text_textcontent_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontenttype digipal_text_textcontenttype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontenttype
    ADD CONSTRAINT digipal_text_textcontenttype_name_key UNIQUE (name);


--
-- Name: digipal_text_textcontenttype digipal_text_textcontenttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontenttype
    ADD CONSTRAINT digipal_text_textcontenttype_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontentxml digipal_text_textcontentxml_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml
    ADD CONSTRAINT digipal_text_textcontentxml_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontentxml digipal_text_textcontentxml_text_content_id_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml
    ADD CONSTRAINT digipal_text_textcontentxml_text_content_id_uniq UNIQUE (text_content_id);


--
-- Name: digipal_text_textcontentxmlcopy digipal_text_textcontentxmlcopy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlcopy
    ADD CONSTRAINT digipal_text_textcontentxmlcopy_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textcontentxmlcopy digipal_text_textcontentxmlcopy_source_id_112d7bdb8b83fa28_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlcopy
    ADD CONSTRAINT digipal_text_textcontentxmlcopy_source_id_112d7bdb8b83fa28_uniq UNIQUE (source_id, ahash);


--
-- Name: digipal_text_textcontentxmlstatus digipal_text_textcontentxmlstatus_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlstatus
    ADD CONSTRAINT digipal_text_textcontentxmlstatus_name_key UNIQUE (name);


--
-- Name: digipal_text_textcontentxmlstatus digipal_text_textcontentxmlstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlstatus
    ADD CONSTRAINT digipal_text_textcontentxmlstatus_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textpattern digipal_text_textpattern_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textpattern
    ADD CONSTRAINT digipal_text_textpattern_key_key UNIQUE (key);


--
-- Name: digipal_text_textpattern digipal_text_textpattern_key_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textpattern
    ADD CONSTRAINT digipal_text_textpattern_key_uniq UNIQUE (key);


--
-- Name: digipal_text_textpattern digipal_text_textpattern_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textpattern
    ADD CONSTRAINT digipal_text_textpattern_pkey PRIMARY KEY (id);


--
-- Name: digipal_text_textpattern digipal_text_textpattern_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textpattern
    ADD CONSTRAINT digipal_text_textpattern_title_key UNIQUE (title);


--
-- Name: digipal_textitempart digipal_textitempart_item_part_id_54a67d5d6a0c9393_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_textitempart
    ADD CONSTRAINT digipal_textitempart_item_part_id_54a67d5d6a0c9393_uniq UNIQUE (item_part_id, text_id);


--
-- Name: digipal_textitempart digipal_textitempart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_textitempart
    ADD CONSTRAINT digipal_textitempart_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags django_comment_flags_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_site_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_key UNIQUE (site_id, old_path);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: forms_field forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: grappelli_safe_bookmark grappelli_safe_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmark
    ADD CONSTRAINT grappelli_safe_bookmark_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_bookmarkitem grappelli_safe_bookmarkitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmarkitem
    ADD CONSTRAINT grappelli_safe_bookmarkitem_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_help grappelli_safe_help_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_help
    ADD CONSTRAINT grappelli_safe_help_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_helpitem grappelli_safe_helpitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_helpitem
    ADD CONSTRAINT grappelli_safe_helpitem_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_navigation grappelli_safe_navigation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigation
    ADD CONSTRAINT grappelli_safe_navigation_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_navigationitem_groups grappelli_safe_navigationitem_groups_navigationitem_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_groups
    ADD CONSTRAINT grappelli_safe_navigationitem_groups_navigationitem_id_key UNIQUE (navigationitem_id, group_id);


--
-- Name: grappelli_safe_navigationitem_groups grappelli_safe_navigationitem_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_groups
    ADD CONSTRAINT grappelli_safe_navigationitem_groups_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_navigationitem grappelli_safe_navigationitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem
    ADD CONSTRAINT grappelli_safe_navigationitem_pkey PRIMARY KEY (id);


--
-- Name: grappelli_safe_navigationitem_users grappelli_safe_navigationitem_users_navigationitem_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_users
    ADD CONSTRAINT grappelli_safe_navigationitem_users_navigationitem_id_key UNIQUE (navigationitem_id, user_id);


--
-- Name: grappelli_safe_navigationitem_users grappelli_safe_navigationitem_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_users
    ADD CONSTRAINT grappelli_safe_navigationitem_users_pkey PRIMARY KEY (id);


--
-- Name: pages_link pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: pages_richtextpage pages_richtextpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: reversion_revision reversion_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT reversion_revision_pkey PRIMARY KEY (id);


--
-- Name: reversion_version reversion_version_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT reversion_version_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: twitter_query twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_message_user_id ON public.auth_message USING btree (user_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: blog_blogcategory_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogcategory_site_id ON public.blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_categories_blogcategory_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_categories_blogcategory_id ON public.blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_categories_blogpost_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_categories_blogpost_id ON public.blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_publish_date_1015da2554a8e97f_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_publish_date_1015da2554a8e97f_uniq ON public.blog_blogpost USING btree (publish_date);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_related_posts_from_blogpost_id ON public.blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_to_blogpost_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_related_posts_to_blogpost_id ON public.blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: blog_blogpost_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_site_id ON public.blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_user_id ON public.blog_blogpost USING btree (user_id);


--
-- Name: conf_setting_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conf_setting_site_id ON public.conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_sitepermission_sites_site_id ON public.core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_sitepermission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_sitepermission_sites_sitepermission_id ON public.core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: digipal_allograph_aspects_allograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allograph_aspects_allograph_id ON public.digipal_allograph_aspects USING btree (allograph_id);


--
-- Name: digipal_allograph_aspects_aspect_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allograph_aspects_aspect_id ON public.digipal_allograph_aspects USING btree (aspect_id);


--
-- Name: digipal_allograph_character_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allograph_character_id ON public.digipal_allograph USING btree (character_id);


--
-- Name: digipal_allographcomponent_allograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allographcomponent_allograph_id ON public.digipal_allographcomponent USING btree (allograph_id);


--
-- Name: digipal_allographcomponent_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allographcomponent_component_id ON public.digipal_allographcomponent USING btree (component_id);


--
-- Name: digipal_allographcomponent_features_allographcomponent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allographcomponent_features_allographcomponent_id ON public.digipal_allographcomponent_features USING btree (allographcomponent_id);


--
-- Name: digipal_allographcomponent_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_allographcomponent_features_feature_id ON public.digipal_allographcomponent_features USING btree (feature_id);


--
-- Name: digipal_alphabet_hands_alphabet_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_alphabet_hands_alphabet_id ON public.digipal_alphabet_hands USING btree (alphabet_id);


--
-- Name: digipal_alphabet_hands_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_alphabet_hands_hand_id ON public.digipal_alphabet_hands USING btree (hand_id);


--
-- Name: digipal_alphabet_ontographs_alphabet_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_alphabet_ontographs_alphabet_id ON public.digipal_alphabet_ontographs USING btree (alphabet_id);


--
-- Name: digipal_alphabet_ontographs_ontograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_alphabet_ontographs_ontograph_id ON public.digipal_alphabet_ontographs USING btree (ontograph_id);


--
-- Name: digipal_annotation_after_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_after_id ON public.digipal_annotation USING btree (after_id);


--
-- Name: digipal_annotation_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_author_id ON public.digipal_annotation USING btree (author_id);


--
-- Name: digipal_annotation_before_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_before_id ON public.digipal_annotation USING btree (before_id);


--
-- Name: digipal_annotation_clientid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_clientid ON public.digipal_annotation USING btree (clientid);


--
-- Name: digipal_annotation_clientid_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_clientid_like ON public.digipal_annotation USING btree (clientid varchar_pattern_ops);


--
-- Name: digipal_annotation_page_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_page_id ON public.digipal_annotation USING btree (image_id);


--
-- Name: digipal_annotation_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_status_id ON public.digipal_annotation USING btree (status_id);


--
-- Name: digipal_annotation_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_type ON public.digipal_annotation USING btree (type);


--
-- Name: digipal_annotation_type_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_annotation_type_like ON public.digipal_annotation USING btree (type varchar_pattern_ops);


--
-- Name: digipal_apitransform_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_apitransform_slug_like ON public.digipal_apitransform USING btree (slug varchar_pattern_ops);


--
-- Name: digipal_apitransform_title_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_apitransform_title_like ON public.digipal_apitransform USING btree (title varchar_pattern_ops);


--
-- Name: digipal_archive_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_archive_content_type_id ON public.digipal_archive USING btree (content_type_id);


--
-- Name: digipal_archive_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_archive_historical_item_id ON public.digipal_archive USING btree (historical_item_id);


--
-- Name: digipal_aspect_features_aspect_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_aspect_features_aspect_id ON public.digipal_aspect_features USING btree (aspect_id);


--
-- Name: digipal_aspect_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_aspect_features_feature_id ON public.digipal_aspect_features USING btree (feature_id);


--
-- Name: digipal_authenticitycategory_name_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_authenticitycategory_name_like ON public.digipal_authenticitycategory USING btree (name varchar_pattern_ops);


--
-- Name: digipal_authenticitycategory_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_authenticitycategory_slug ON public.digipal_authenticitycategory USING btree (slug);


--
-- Name: digipal_authenticitycategory_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_authenticitycategory_slug_like ON public.digipal_authenticitycategory USING btree (slug varchar_pattern_ops);


--
-- Name: digipal_cataloguenumber_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_cataloguenumber_historical_item_id ON public.digipal_cataloguenumber USING btree (historical_item_id);


--
-- Name: digipal_cataloguenumber_number_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_cataloguenumber_number_slug ON public.digipal_cataloguenumber USING btree (number_slug);


--
-- Name: digipal_cataloguenumber_number_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_cataloguenumber_number_slug_like ON public.digipal_cataloguenumber USING btree (number_slug varchar_pattern_ops);


--
-- Name: digipal_cataloguenumber_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_cataloguenumber_source_id ON public.digipal_cataloguenumber USING btree (source_id);


--
-- Name: digipal_cataloguenumber_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_cataloguenumber_text_id ON public.digipal_cataloguenumber USING btree (text_id);


--
-- Name: digipal_character_components_character_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_character_components_character_id ON public.digipal_character_components USING btree (character_id);


--
-- Name: digipal_character_components_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_character_components_component_id ON public.digipal_character_components USING btree (component_id);


--
-- Name: digipal_character_form_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_character_form_id ON public.digipal_character USING btree (form_id);


--
-- Name: digipal_character_ontograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_character_ontograph_id ON public.digipal_character USING btree (ontograph_id);


--
-- Name: digipal_collation_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_collation_historical_item_id ON public.digipal_collation USING btree (historical_item_id);


--
-- Name: digipal_component_features_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_component_features_component_id ON public.digipal_component_features USING btree (component_id);


--
-- Name: digipal_component_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_component_features_feature_id ON public.digipal_component_features USING btree (feature_id);


--
-- Name: digipal_contentattribution_title_1f9a4efd5c96b075_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_contentattribution_title_1f9a4efd5c96b075_like ON public.digipal_contentattribution USING btree (title varchar_pattern_ops);


--
-- Name: digipal_currentitem_owners_currentitem_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_currentitem_owners_currentitem_id ON public.digipal_currentitem_owners USING btree (currentitem_id);


--
-- Name: digipal_currentitem_owners_owner_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_currentitem_owners_owner_id ON public.digipal_currentitem_owners USING btree (owner_id);


--
-- Name: digipal_currentitem_repository_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_currentitem_repository_id ON public.digipal_currentitem USING btree (repository_id);


--
-- Name: digipal_dateevidence_date_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_dateevidence_date_id ON public.digipal_dateevidence USING btree (date_id);


--
-- Name: digipal_dateevidence_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_dateevidence_hand_id ON public.digipal_dateevidence USING btree (hand_id);


--
-- Name: digipal_dateevidence_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_dateevidence_historical_item_id ON public.digipal_dateevidence USING btree (historical_item_id);


--
-- Name: digipal_dateevidence_reference_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_dateevidence_reference_id ON public.digipal_dateevidence USING btree (reference_id);


--
-- Name: digipal_decoration_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_decoration_historical_item_id ON public.digipal_decoration USING btree (historical_item_id);


--
-- Name: digipal_description_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_description_historical_item_id ON public.digipal_description USING btree (historical_item_id);


--
-- Name: digipal_description_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_description_source_id ON public.digipal_description USING btree (source_id);


--
-- Name: digipal_description_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_description_text_id ON public.digipal_description USING btree (text_id);


--
-- Name: digipal_graph_aspects_aspect_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graph_aspects_aspect_id ON public.digipal_graph_aspects USING btree (aspect_id);


--
-- Name: digipal_graph_aspects_graph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graph_aspects_graph_id ON public.digipal_graph_aspects USING btree (graph_id);


--
-- Name: digipal_graph_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graph_group_id ON public.digipal_graph USING btree (group_id);


--
-- Name: digipal_graph_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graph_hand_id ON public.digipal_graph USING btree (hand_id);


--
-- Name: digipal_graph_idiograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graph_idiograph_id ON public.digipal_graph USING btree (idiograph_id);


--
-- Name: digipal_graphcomponent_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graphcomponent_component_id ON public.digipal_graphcomponent USING btree (component_id);


--
-- Name: digipal_graphcomponent_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graphcomponent_features_feature_id ON public.digipal_graphcomponent_features USING btree (feature_id);


--
-- Name: digipal_graphcomponent_features_graphcomponent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graphcomponent_features_graphcomponent_id ON public.digipal_graphcomponent_features USING btree (graphcomponent_id);


--
-- Name: digipal_graphcomponent_graph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_graphcomponent_graph_id ON public.digipal_graphcomponent USING btree (graph_id);


--
-- Name: digipal_hand_appearance_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_appearance_id ON public.digipal_hand USING btree (appearance_id);


--
-- Name: digipal_hand_assigned_date_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_assigned_date_id ON public.digipal_hand USING btree (assigned_date_id);


--
-- Name: digipal_hand_assigned_place_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_assigned_place_id ON public.digipal_hand USING btree (assigned_place_id);


--
-- Name: digipal_hand_glossed_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_glossed_text_id ON public.digipal_hand USING btree (glossed_text_id);


--
-- Name: digipal_hand_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_item_part_id ON public.digipal_hand USING btree (item_part_id);


--
-- Name: digipal_hand_latin_style_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_latin_style_id ON public.digipal_hand USING btree (latin_style_id);


--
-- Name: digipal_hand_pages_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_pages_hand_id ON public.digipal_hand_images USING btree (hand_id);


--
-- Name: digipal_hand_pages_page_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_pages_page_id ON public.digipal_hand_images USING btree (image_id);


--
-- Name: digipal_hand_scribe_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_scribe_id ON public.digipal_hand USING btree (scribe_id);


--
-- Name: digipal_hand_script_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_script_id ON public.digipal_hand USING btree (script_id);


--
-- Name: digipal_hand_stewart_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_hand_stewart_record_id ON public.digipal_hand USING btree (stewart_record_id);


--
-- Name: digipal_handdescription_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_handdescription_hand_id ON public.digipal_handdescription USING btree (hand_id);


--
-- Name: digipal_handdescription_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_handdescription_source_id ON public.digipal_handdescription USING btree (source_id);


--
-- Name: digipal_historicalitem_categories_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_categories_category_id ON public.digipal_historicalitem_categories USING btree (category_id);


--
-- Name: digipal_historicalitem_categories_historicalitem_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_categories_historicalitem_id ON public.digipal_historicalitem_categories USING btree (historicalitem_id);


--
-- Name: digipal_historicalitem_hair_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_hair_id ON public.digipal_historicalitem USING btree (hair_id);


--
-- Name: digipal_historicalitem_historical_item_format_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_historical_item_format_id ON public.digipal_historicalitem USING btree (historical_item_format_id);


--
-- Name: digipal_historicalitem_historical_item_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_historical_item_type_id ON public.digipal_historicalitem USING btree (historical_item_type_id);


--
-- Name: digipal_historicalitem_language_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_language_id ON public.digipal_historicalitem USING btree (language_id);


--
-- Name: digipal_historicalitem_owners_historicalitem_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_owners_historicalitem_id ON public.digipal_historicalitem_owners USING btree (historicalitem_id);


--
-- Name: digipal_historicalitem_owners_owner_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitem_owners_owner_id ON public.digipal_historicalitem_owners USING btree (owner_id);


--
-- Name: digipal_historicalitemdate_date_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitemdate_date_id ON public.digipal_historicalitemdate USING btree (date_id);


--
-- Name: digipal_historicalitemdate_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_historicalitemdate_historical_item_id ON public.digipal_historicalitemdate USING btree (historical_item_id);


--
-- Name: digipal_idiograph_allograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiograph_allograph_id ON public.digipal_idiograph USING btree (allograph_id);


--
-- Name: digipal_idiograph_aspects_aspect_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiograph_aspects_aspect_id ON public.digipal_idiograph_aspects USING btree (aspect_id);


--
-- Name: digipal_idiograph_aspects_idiograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiograph_aspects_idiograph_id ON public.digipal_idiograph_aspects USING btree (idiograph_id);


--
-- Name: digipal_idiograph_scribe_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiograph_scribe_id ON public.digipal_idiograph USING btree (scribe_id);


--
-- Name: digipal_idiographcomponent_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiographcomponent_component_id ON public.digipal_idiographcomponent USING btree (component_id);


--
-- Name: digipal_idiographcomponent_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiographcomponent_features_feature_id ON public.digipal_idiographcomponent_features USING btree (feature_id);


--
-- Name: digipal_idiographcomponent_features_idiographcomponent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiographcomponent_features_idiographcomponent_id ON public.digipal_idiographcomponent_features USING btree (idiographcomponent_id);


--
-- Name: digipal_idiographcomponent_idiograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_idiographcomponent_idiograph_id ON public.digipal_idiographcomponent USING btree (idiograph_id);


--
-- Name: digipal_image_annotation_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_image_annotation_status_id ON public.digipal_image USING btree (annotation_status_id);


--
-- Name: digipal_institution_founder_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_institution_founder_id ON public.digipal_institution USING btree (founder_id);


--
-- Name: digipal_institution_institution_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_institution_institution_type_id ON public.digipal_institution USING btree (institution_type_id);


--
-- Name: digipal_institution_patron_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_institution_patron_id ON public.digipal_institution USING btree (patron_id);


--
-- Name: digipal_institution_place_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_institution_place_id ON public.digipal_institution USING btree (place_id);


--
-- Name: digipal_institution_reformer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_institution_reformer_id ON public.digipal_institution USING btree (reformer_id);


--
-- Name: digipal_itemorigin_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itemorigin_historical_item_id ON public.digipal_itemorigin USING btree (historical_item_id);


--
-- Name: digipal_itemorigin_institution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itemorigin_institution_id ON public.digipal_itemorigin USING btree (institution_id);


--
-- Name: digipal_itemorigin_place_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itemorigin_place_id ON public.digipal_itemorigin USING btree (place_id);


--
-- Name: digipal_itempart_current_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempart_current_item_id ON public.digipal_itempart USING btree (current_item_id);


--
-- Name: digipal_itempart_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempart_group_id ON public.digipal_itempart USING btree (group_id);


--
-- Name: digipal_itempart_owners_itempart_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempart_owners_itempart_id ON public.digipal_itempart_owners USING btree (itempart_id);


--
-- Name: digipal_itempart_owners_owner_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempart_owners_owner_id ON public.digipal_itempart_owners USING btree (owner_id);


--
-- Name: digipal_itempart_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempart_type_id ON public.digipal_itempart USING btree (type_id);


--
-- Name: digipal_itempartauthenticity_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempartauthenticity_category_id ON public.digipal_itempartauthenticity USING btree (category_id);


--
-- Name: digipal_itempartauthenticity_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempartauthenticity_item_part_id ON public.digipal_itempartauthenticity USING btree (item_part_id);


--
-- Name: digipal_itempartauthenticity_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempartauthenticity_source_id ON public.digipal_itempartauthenticity USING btree (source_id);


--
-- Name: digipal_itempartitem_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempartitem_historical_item_id ON public.digipal_itempartitem USING btree (historical_item_id);


--
-- Name: digipal_itempartitem_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_itempartitem_item_part_id ON public.digipal_itempartitem USING btree (item_part_id);


--
-- Name: digipal_keyval_key_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_keyval_key_like ON public.digipal_keyval USING btree (key varchar_pattern_ops);


--
-- Name: digipal_layout_hair_arrangement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_layout_hair_arrangement_id ON public.digipal_layout USING btree (hair_arrangement_id);


--
-- Name: digipal_layout_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_layout_historical_item_id ON public.digipal_layout USING btree (historical_item_id);


--
-- Name: digipal_layout_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_layout_item_part_id ON public.digipal_layout USING btree (item_part_id);


--
-- Name: digipal_ontograph_ontograph_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_ontograph_ontograph_type_id ON public.digipal_ontograph USING btree (ontograph_type_id);


--
-- Name: digipal_owner_institution_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_owner_institution_id ON public.digipal_owner USING btree (institution_id);


--
-- Name: digipal_owner_person_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_owner_person_id ON public.digipal_owner USING btree (person_id);


--
-- Name: digipal_owner_repository_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_owner_repository_id ON public.digipal_owner USING btree (repository_id);


--
-- Name: digipal_page_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_page_item_part_id ON public.digipal_image USING btree (item_part_id);


--
-- Name: digipal_page_media_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_page_media_permission_id ON public.digipal_image USING btree (media_permission_id);


--
-- Name: digipal_place_current_county_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_place_current_county_id ON public.digipal_place USING btree (current_county_id);


--
-- Name: digipal_place_historical_county_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_place_historical_county_id ON public.digipal_place USING btree (historical_county_id);


--
-- Name: digipal_place_region_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_place_region_id ON public.digipal_place USING btree (region_id);


--
-- Name: digipal_place_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_place_type_id ON public.digipal_place USING btree (type_id);


--
-- Name: digipal_placeevidence_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_placeevidence_hand_id ON public.digipal_placeevidence USING btree (hand_id);


--
-- Name: digipal_placeevidence_historical_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_placeevidence_historical_item_id ON public.digipal_placeevidence USING btree (historical_item_id);


--
-- Name: digipal_placeevidence_place_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_placeevidence_place_id ON public.digipal_placeevidence USING btree (place_id);


--
-- Name: digipal_placeevidence_reference_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_placeevidence_reference_id ON public.digipal_placeevidence USING btree (reference_id);


--
-- Name: digipal_proportion_hand_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_proportion_hand_id ON public.digipal_proportion USING btree (hand_id);


--
-- Name: digipal_proportion_measurement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_proportion_measurement_id ON public.digipal_proportion USING btree (measurement_id);


--
-- Name: digipal_repository_media_permission_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_repository_media_permission_id ON public.digipal_repository USING btree (media_permission_id);


--
-- Name: digipal_repository_part_of_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_repository_part_of_id ON public.digipal_repository USING btree (part_of_id);


--
-- Name: digipal_repository_place_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_repository_place_id ON public.digipal_repository USING btree (place_id);


--
-- Name: digipal_repository_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_repository_type_id ON public.digipal_repository USING btree (type_id);


--
-- Name: digipal_scribe_reference_reference_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scribe_reference_reference_id ON public.digipal_scribe_reference USING btree (reference_id);


--
-- Name: digipal_scribe_reference_scribe_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scribe_reference_scribe_id ON public.digipal_scribe_reference USING btree (scribe_id);


--
-- Name: digipal_scribe_scriptorium_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scribe_scriptorium_id ON public.digipal_scribe USING btree (scriptorium_id);


--
-- Name: digipal_script_allographs_allograph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_script_allographs_allograph_id ON public.digipal_script_allographs USING btree (allograph_id);


--
-- Name: digipal_script_allographs_script_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_script_allographs_script_id ON public.digipal_script_allographs USING btree (script_id);


--
-- Name: digipal_scriptcomponent_component_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scriptcomponent_component_id ON public.digipal_scriptcomponent USING btree (component_id);


--
-- Name: digipal_scriptcomponent_features_feature_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scriptcomponent_features_feature_id ON public.digipal_scriptcomponent_features USING btree (feature_id);


--
-- Name: digipal_scriptcomponent_features_scriptcomponent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scriptcomponent_features_scriptcomponent_id ON public.digipal_scriptcomponent_features USING btree (scriptcomponent_id);


--
-- Name: digipal_scriptcomponent_script_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_scriptcomponent_script_id ON public.digipal_scriptcomponent USING btree (script_id);


--
-- Name: digipal_source_label_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_source_label_slug ON public.digipal_source USING btree (label_slug);


--
-- Name: digipal_source_label_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_source_label_slug_like ON public.digipal_source USING btree (label_slug varchar_pattern_ops);


--
-- Name: digipal_text_categories_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_categories_category_id ON public.digipal_text_categories USING btree (category_id);


--
-- Name: digipal_text_categories_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_categories_text_id ON public.digipal_text_categories USING btree (text_id);


--
-- Name: digipal_text_entryhand_correction; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_correction ON public.digipal_text_entryhand USING btree (correction);


--
-- Name: digipal_text_entryhand_entry_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_entry_number ON public.digipal_text_entryhand USING btree (entry_number);


--
-- Name: digipal_text_entryhand_entry_number_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_entry_number_like ON public.digipal_text_entryhand USING btree (entry_number varchar_pattern_ops);


--
-- Name: digipal_text_entryhand_hand_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_hand_label ON public.digipal_text_entryhand USING btree (hand_label);


--
-- Name: digipal_text_entryhand_hand_label_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_hand_label_like ON public.digipal_text_entryhand USING btree (hand_label varchar_pattern_ops);


--
-- Name: digipal_text_entryhand_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_item_part_id ON public.digipal_text_entryhand USING btree (item_part_id);


--
-- Name: digipal_text_entryhand_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_entryhand_order ON public.digipal_text_entryhand USING btree ("order");


--
-- Name: digipal_text_languages_language_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_languages_language_id ON public.digipal_text_languages USING btree (language_id);


--
-- Name: digipal_text_languages_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_languages_text_id ON public.digipal_text_languages USING btree (text_id);


--
-- Name: digipal_text_textannotation_annotation_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textannotation_annotation_id ON public.digipal_text_textannotation USING btree (annotation_id);


--
-- Name: digipal_text_textcontent_95690556; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_95690556 ON public.digipal_text_textcontent USING btree (attribution_id);


--
-- Name: digipal_text_textcontent_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_item_part_id ON public.digipal_text_textcontent USING btree (item_part_id);


--
-- Name: digipal_text_textcontent_languages_language_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_languages_language_id ON public.digipal_text_textcontent_languages USING btree (language_id);


--
-- Name: digipal_text_textcontent_languages_textcontent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_languages_textcontent_id ON public.digipal_text_textcontent_languages USING btree (textcontent_id);


--
-- Name: digipal_text_textcontent_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_text_id ON public.digipal_text_textcontent USING btree (text_id);


--
-- Name: digipal_text_textcontent_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontent_type_id ON public.digipal_text_textcontent USING btree (type_id);


--
-- Name: digipal_text_textcontenttype_name_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontenttype_name_like ON public.digipal_text_textcontenttype USING btree (name varchar_pattern_ops);


--
-- Name: digipal_text_textcontenttype_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontenttype_slug ON public.digipal_text_textcontenttype USING btree (slug);


--
-- Name: digipal_text_textcontenttype_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontenttype_slug_like ON public.digipal_text_textcontenttype USING btree (slug varchar_pattern_ops);


--
-- Name: digipal_text_textcontentxml_last_image_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxml_last_image_id ON public.digipal_text_textcontentxml USING btree (last_image_id);


--
-- Name: digipal_text_textcontentxml_status_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxml_status_id ON public.digipal_text_textcontentxml USING btree (status_id);


--
-- Name: digipal_text_textcontentxml_text_content_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxml_text_content_id ON public.digipal_text_textcontentxml USING btree (text_content_id);


--
-- Name: digipal_text_textcontentxmlcopy_source_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxmlcopy_source_id ON public.digipal_text_textcontentxmlcopy USING btree (source_id);


--
-- Name: digipal_text_textcontentxmlstatus_name_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxmlstatus_name_like ON public.digipal_text_textcontentxmlstatus USING btree (name varchar_pattern_ops);


--
-- Name: digipal_text_textcontentxmlstatus_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxmlstatus_slug ON public.digipal_text_textcontentxmlstatus USING btree (slug);


--
-- Name: digipal_text_textcontentxmlstatus_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textcontentxmlstatus_slug_like ON public.digipal_text_textcontentxmlstatus USING btree (slug varchar_pattern_ops);


--
-- Name: digipal_text_textpattern_key_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textpattern_key_like ON public.digipal_text_textpattern USING btree (key varchar_pattern_ops);


--
-- Name: digipal_text_textpattern_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textpattern_order ON public.digipal_text_textpattern USING btree ("order");


--
-- Name: digipal_text_textpattern_title_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_text_textpattern_title_like ON public.digipal_text_textpattern USING btree (title varchar_pattern_ops);


--
-- Name: digipal_textitempart_item_part_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_textitempart_item_part_id ON public.digipal_textitempart USING btree (item_part_id);


--
-- Name: digipal_textitempart_text_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX digipal_textitempart_text_id ON public.digipal_textitempart USING btree (text_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id ON public.django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_comment_id ON public.django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_flag ON public.django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_flag_like ON public.django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_user_id ON public.django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_content_type_id ON public.django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_site_id ON public.django_comments USING btree (site_id);


--
-- Name: django_comments_submit_date_12b4e916a37b5c82_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_submit_date_12b4e916a37b5c82_uniq ON public.django_comments USING btree (submit_date);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_user_id ON public.django_comments USING btree (user_id);


--
-- Name: django_redirect_old_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_old_path ON public.django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_old_path_like ON public.django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_site_id ON public.django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date ON public.django_session USING btree (expire_date);


--
-- Name: forms_field_form_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_field_form_id ON public.forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_entry_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_fieldentry_entry_id ON public.forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_form_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_formentry_form_id ON public.forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_gallery_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX galleries_galleryimage_gallery_id ON public.galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_assignedkeyword_content_type_id ON public.generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_keyword_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_assignedkeyword_keyword_id ON public.generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_keyword_site_id ON public.generic_keyword USING btree (site_id);


--
-- Name: generic_rating_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_rating_content_type_id ON public.generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_rating_user_id ON public.generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_replied_to_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_threadedcomment_replied_to_id ON public.generic_threadedcomment USING btree (replied_to_id);


--
-- Name: grappelli_safe_bookmark_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_bookmark_user_id ON public.grappelli_safe_bookmark USING btree (user_id);


--
-- Name: grappelli_safe_bookmarkitem_bookmark_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_bookmarkitem_bookmark_id ON public.grappelli_safe_bookmarkitem USING btree (bookmark_id);


--
-- Name: grappelli_safe_helpitem_help_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_helpitem_help_id ON public.grappelli_safe_helpitem USING btree (help_id);


--
-- Name: grappelli_safe_navigationitem_groups_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_navigationitem_groups_group_id ON public.grappelli_safe_navigationitem_groups USING btree (group_id);


--
-- Name: grappelli_safe_navigationitem_groups_navigationitem_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_navigationitem_groups_navigationitem_id ON public.grappelli_safe_navigationitem_groups USING btree (navigationitem_id);


--
-- Name: grappelli_safe_navigationitem_navigation_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_navigationitem_navigation_id ON public.grappelli_safe_navigationitem USING btree (navigation_id);


--
-- Name: grappelli_safe_navigationitem_users_navigationitem_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_navigationitem_users_navigationitem_id ON public.grappelli_safe_navigationitem_users USING btree (navigationitem_id);


--
-- Name: grappelli_safe_navigationitem_users_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX grappelli_safe_navigationitem_users_user_id ON public.grappelli_safe_navigationitem_users USING btree (user_id);


--
-- Name: pages_page_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_parent_id ON public.pages_page USING btree (parent_id);


--
-- Name: pages_page_publish_date_4b581dded15f4cdf_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_publish_date_4b581dded15f4cdf_uniq ON public.pages_page USING btree (publish_date);


--
-- Name: pages_page_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_site_id ON public.pages_page USING btree (site_id);


--
-- Name: reversion_revision_manager_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_revision_manager_slug ON public.reversion_revision USING btree (manager_slug);


--
-- Name: reversion_revision_manager_slug_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_revision_manager_slug_like ON public.reversion_revision USING btree (manager_slug varchar_pattern_ops);


--
-- Name: reversion_revision_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_revision_user_id ON public.reversion_revision USING btree (user_id);


--
-- Name: reversion_version_content_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_version_content_type_id ON public.reversion_version USING btree (content_type_id);


--
-- Name: reversion_version_object_id_int; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_version_object_id_int ON public.reversion_version USING btree (object_id_int);


--
-- Name: reversion_version_revision_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reversion_version_revision_id ON public.reversion_version USING btree (revision_id);


--
-- Name: twitter_tweet_query_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twitter_tweet_query_id ON public.twitter_tweet USING btree (query_id);


--
-- Name: digipal_text_textcontent D28878417b6b52f07ccd8a0f04537874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT "D28878417b6b52f07ccd8a0f04537874" FOREIGN KEY (attribution_id) REFERENCES public.digipal_contentattribution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allographcomponent_features D8272c0c845536cc87a3d483d63b21f6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent_features
    ADD CONSTRAINT "D8272c0c845536cc87a3d483d63b21f6" FOREIGN KEY (allographcomponent_id) REFERENCES public.digipal_allographcomponent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textannotation annotation_id_refs_id_3e2f18b6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textannotation
    ADD CONSTRAINT annotation_id_refs_id_3e2f18b6 FOREIGN KEY (annotation_id) REFERENCES public.digipal_annotation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_image annotation_status_id_refs_id_5d39b05086a313d2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_image
    ADD CONSTRAINT annotation_status_id_refs_id_5d39b05086a313d2 FOREIGN KEY (annotation_status_id) REFERENCES public.digipal_imageannotationstatus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_aspect_features aspect_id_refs_id_b36708ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect_features
    ADD CONSTRAINT aspect_id_refs_id_b36708ac FOREIGN KEY (aspect_id) REFERENCES public.digipal_aspect(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_message auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_categories blogcategory_id_refs_id_7bfe66d1e7402db1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blogcategory_id_refs_id_7bfe66d1e7402db1 FOREIGN KEY (blogcategory_id) REFERENCES public.blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_categories blogpost_id_refs_id_229d4bced4f4848f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blogpost_id_refs_id_229d4bced4f4848f FOREIGN KEY (blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempartauthenticity category_id_refs_id_47dac8d7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity
    ADD CONSTRAINT category_id_refs_id_47dac8d7 FOREIGN KEY (category_id) REFERENCES public.digipal_authenticitycategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_threadedcomment comment_ptr_id_refs_id_3714e2dc16f39c27; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT comment_ptr_id_refs_id_3714e2dc16f39c27 FOREIGN KEY (comment_ptr_id) REFERENCES public.django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_component_features component_id_refs_id_daba4424; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component_features
    ADD CONSTRAINT component_id_refs_id_daba4424 FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_version content_type_id_refs_id_238ce22813bc8849; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT content_type_id_refs_id_238ce22813bc8849 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating content_type_id_refs_id_6431aa255b2266af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT content_type_id_refs_id_6431aa255b2266af FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword content_type_id_refs_id_de4a5f0abf056c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT content_type_id_refs_id_de4a5f0abf056c FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempart current_item_id_refs_id_1ad0f3d32081f7de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart
    ADD CONSTRAINT current_item_id_refs_id_1ad0f3d32081f7de FOREIGN KEY (current_item_id) REFERENCES public.digipal_currentitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_currentitem_owners digip_currentitem_id_3666c8ecafb6bb97_fk_digipal_currentitem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem_owners
    ADD CONSTRAINT digip_currentitem_id_3666c8ecafb6bb97_fk_digipal_currentitem_id FOREIGN KEY (currentitem_id) REFERENCES public.digipal_currentitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allograph_aspects digipal_a_allograph_id_542fa868475bf703_fk_digipal_allograph_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph_aspects
    ADD CONSTRAINT digipal_a_allograph_id_542fa868475bf703_fk_digipal_allograph_id FOREIGN KEY (allograph_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_alphabet_ontographs digipal_a_ontograph_id_1d0cd4ace8644f2e_fk_digipal_ontograph_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_ontographs
    ADD CONSTRAINT digipal_a_ontograph_id_1d0cd4ace8644f2e_fk_digipal_ontograph_id FOREIGN KEY (ontograph_id) REFERENCES public.digipal_ontograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allographcomponent_features digipal_allog_feature_id_230c2364d0c73288_fk_digipal_feature_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent_features
    ADD CONSTRAINT digipal_allog_feature_id_230c2364d0c73288_fk_digipal_feature_id FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allograph_aspects digipal_allogra_aspect_id_5f1bd1c41c2c6dca_fk_digipal_aspect_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph_aspects
    ADD CONSTRAINT digipal_allogra_aspect_id_5f1bd1c41c2c6dca_fk_digipal_aspect_id FOREIGN KEY (aspect_id) REFERENCES public.digipal_aspect(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allograph digipal_allograph_character_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allograph
    ADD CONSTRAINT digipal_allograph_character_id_fkey FOREIGN KEY (character_id) REFERENCES public.digipal_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allographcomponent digipal_allographcomponent_allograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent
    ADD CONSTRAINT digipal_allographcomponent_allograph_id_fkey FOREIGN KEY (allograph_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_allographcomponent digipal_allographcomponent_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_allographcomponent
    ADD CONSTRAINT digipal_allographcomponent_component_id_fkey FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_alphabet_ontographs digipal_alp_alphabet_id_5556a119f9c15c6e_fk_digipal_alphabet_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_ontographs
    ADD CONSTRAINT digipal_alp_alphabet_id_5556a119f9c15c6e_fk_digipal_alphabet_id FOREIGN KEY (alphabet_id) REFERENCES public.digipal_alphabet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_alphabet_hands digipal_alp_alphabet_id_588d04dc3a11a174_fk_digipal_alphabet_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_hands
    ADD CONSTRAINT digipal_alp_alphabet_id_588d04dc3a11a174_fk_digipal_alphabet_id FOREIGN KEY (alphabet_id) REFERENCES public.digipal_alphabet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_alphabet_hands digipal_alphabet_ha_hand_id_3f5df15f509bddda_fk_digipal_hand_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_alphabet_hands
    ADD CONSTRAINT digipal_alphabet_ha_hand_id_3f5df15f509bddda_fk_digipal_hand_id FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_after_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_after_id_fkey FOREIGN KEY (after_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_before_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_before_id_fkey FOREIGN KEY (before_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_graph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_graph_id_fkey FOREIGN KEY (graph_id) REFERENCES public.digipal_graph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_page_id_fkey FOREIGN KEY (image_id) REFERENCES public.digipal_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_annotation digipal_annotation_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_annotation
    ADD CONSTRAINT digipal_annotation_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.digipal_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_archive digipal_archive_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_archive
    ADD CONSTRAINT digipal_archive_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_archive digipal_archive_historical_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_archive
    ADD CONSTRAINT digipal_archive_historical_item_id_fkey FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_aspect_features digipal_aspect_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_aspect_features
    ADD CONSTRAINT digipal_aspect_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_character_components digipal_c_character_id_421a3a206316eea3_fk_digipal_character_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character_components
    ADD CONSTRAINT digipal_c_character_id_421a3a206316eea3_fk_digipal_character_id FOREIGN KEY (character_id) REFERENCES public.digipal_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_character_components digipal_c_component_id_5c2b93e63528063d_fk_digipal_component_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character_components
    ADD CONSTRAINT digipal_c_component_id_5c2b93e63528063d_fk_digipal_component_id FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_cataloguenumber digipal_cataloguenumber_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber
    ADD CONSTRAINT digipal_cataloguenumber_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.digipal_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_character digipal_character_ontograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character
    ADD CONSTRAINT digipal_character_ontograph_id_fkey FOREIGN KEY (ontograph_id) REFERENCES public.digipal_ontograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_collation digipal_collation_historical_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_collation
    ADD CONSTRAINT digipal_collation_historical_item_id_fkey FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_component_features digipal_component_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_component_features
    ADD CONSTRAINT digipal_component_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_currentitem_owners digipal_currentit_owner_id_18d9e4f9dfde684e_fk_digipal_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem_owners
    ADD CONSTRAINT digipal_currentit_owner_id_18d9e4f9dfde684e_fk_digipal_owner_id FOREIGN KEY (owner_id) REFERENCES public.digipal_owner(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_currentitem digipal_currentitem_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_currentitem
    ADD CONSTRAINT digipal_currentitem_repository_id_fkey FOREIGN KEY (repository_id) REFERENCES public.digipal_repository(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_dateevidence digipal_dateevidence_date_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence
    ADD CONSTRAINT digipal_dateevidence_date_id_fkey FOREIGN KEY (date_id) REFERENCES public.digipal_date(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_dateevidence digipal_dateevidence_reference_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence
    ADD CONSTRAINT digipal_dateevidence_reference_id_fkey FOREIGN KEY (reference_id) REFERENCES public.digipal_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_decoration digipal_decoration_historical_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_decoration
    ADD CONSTRAINT digipal_decoration_historical_item_id_fkey FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_description digipal_description_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description
    ADD CONSTRAINT digipal_description_source_id_fkey FOREIGN KEY (source_id) REFERENCES public.digipal_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graph_aspects digipal_graph_as_aspect_id_d565c199db5dbfa_fk_digipal_aspect_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph_aspects
    ADD CONSTRAINT digipal_graph_as_aspect_id_d565c199db5dbfa_fk_digipal_aspect_id FOREIGN KEY (aspect_id) REFERENCES public.digipal_aspect(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graph_aspects digipal_graph_asp_graph_id_3cd5a48f03f7908b_fk_digipal_graph_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph_aspects
    ADD CONSTRAINT digipal_graph_asp_graph_id_3cd5a48f03f7908b_fk_digipal_graph_id FOREIGN KEY (graph_id) REFERENCES public.digipal_graph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graph digipal_graph_hand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph
    ADD CONSTRAINT digipal_graph_hand_id_fkey FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graph digipal_graph_idiograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph
    ADD CONSTRAINT digipal_graph_idiograph_id_fkey FOREIGN KEY (idiograph_id) REFERENCES public.digipal_idiograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graphcomponent digipal_graphcomponent_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent
    ADD CONSTRAINT digipal_graphcomponent_component_id_fkey FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graphcomponent_features digipal_graphcomponent_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent_features
    ADD CONSTRAINT digipal_graphcomponent_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graphcomponent digipal_graphcomponent_graph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent
    ADD CONSTRAINT digipal_graphcomponent_graph_id_fkey FOREIGN KEY (graph_id) REFERENCES public.digipal_graph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_appearance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_appearance_id_fkey FOREIGN KEY (appearance_id) REFERENCES public.digipal_appearance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_assigned_date_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_assigned_date_id_fkey FOREIGN KEY (assigned_date_id) REFERENCES public.digipal_date(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_assigned_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_assigned_place_id_fkey FOREIGN KEY (assigned_place_id) REFERENCES public.digipal_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_glossed_text_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_glossed_text_id_fkey FOREIGN KEY (glossed_text_id) REFERENCES public.digipal_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand_images digipal_hand_imag_image_id_6c1445fe889c9bf6_fk_digipal_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand_images
    ADD CONSTRAINT digipal_hand_imag_image_id_6c1445fe889c9bf6_fk_digipal_image_id FOREIGN KEY (image_id) REFERENCES public.digipal_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand_images digipal_hand_images_hand_id_671b7cfd266947f5_fk_digipal_hand_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand_images
    ADD CONSTRAINT digipal_hand_images_hand_id_671b7cfd266947f5_fk_digipal_hand_id FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_item_part_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_item_part_id_fkey FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_latin_style_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_latin_style_id_fkey FOREIGN KEY (latin_style_id) REFERENCES public.digipal_latinstyle(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_scribe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_scribe_id_fkey FOREIGN KEY (scribe_id) REFERENCES public.digipal_scribe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand digipal_hand_script_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT digipal_hand_script_id_fkey FOREIGN KEY (script_id) REFERENCES public.digipal_script(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem_categories digipal_hist_category_id_4194d8a4ba44eaa_fk_digipal_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_categories
    ADD CONSTRAINT digipal_hist_category_id_4194d8a4ba44eaa_fk_digipal_category_id FOREIGN KEY (category_id) REFERENCES public.digipal_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem_owners digipal_historica_owner_id_23ce7f02f1badad6_fk_digipal_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_owners
    ADD CONSTRAINT digipal_historica_owner_id_23ce7f02f1badad6_fk_digipal_owner_id FOREIGN KEY (owner_id) REFERENCES public.digipal_owner(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem digipal_historicalitem_hair_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem
    ADD CONSTRAINT digipal_historicalitem_hair_id_fkey FOREIGN KEY (hair_id) REFERENCES public.digipal_hair(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem digipal_historicalitem_historical_item_format_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem
    ADD CONSTRAINT digipal_historicalitem_historical_item_format_id_fkey FOREIGN KEY (historical_item_format_id) REFERENCES public.digipal_format(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem digipal_historicalitem_historical_item_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem
    ADD CONSTRAINT digipal_historicalitem_historical_item_type_id_fkey FOREIGN KEY (historical_item_type_id) REFERENCES public.digipal_historicalitemtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem digipal_historicalitem_language_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem
    ADD CONSTRAINT digipal_historicalitem_language_id_fkey FOREIGN KEY (language_id) REFERENCES public.digipal_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitemdate digipal_historicalitemdate_date_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemdate
    ADD CONSTRAINT digipal_historicalitemdate_date_id_fkey FOREIGN KEY (date_id) REFERENCES public.digipal_date(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitemdate digipal_historicalitemdate_historical_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitemdate
    ADD CONSTRAINT digipal_historicalitemdate_historical_item_id_fkey FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiograph_aspects digipal_i_idiograph_id_2c3215c58c22fe03_fk_digipal_idiograph_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph_aspects
    ADD CONSTRAINT digipal_i_idiograph_id_2c3215c58c22fe03_fk_digipal_idiograph_id FOREIGN KEY (idiograph_id) REFERENCES public.digipal_idiograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiograph_aspects digipal_idiogra_aspect_id_45390694190c31a7_fk_digipal_aspect_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph_aspects
    ADD CONSTRAINT digipal_idiogra_aspect_id_45390694190c31a7_fk_digipal_aspect_id FOREIGN KEY (aspect_id) REFERENCES public.digipal_aspect(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiograph digipal_idiograph_allograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph
    ADD CONSTRAINT digipal_idiograph_allograph_id_fkey FOREIGN KEY (allograph_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiograph digipal_idiograph_scribe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiograph
    ADD CONSTRAINT digipal_idiograph_scribe_id_fkey FOREIGN KEY (scribe_id) REFERENCES public.digipal_scribe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiographcomponent digipal_idiographcomponent_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent
    ADD CONSTRAINT digipal_idiographcomponent_component_id_fkey FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiographcomponent_features digipal_idiographcomponent_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent_features
    ADD CONSTRAINT digipal_idiographcomponent_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiographcomponent digipal_idiographcomponent_idiograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent
    ADD CONSTRAINT digipal_idiographcomponent_idiograph_id_fkey FOREIGN KEY (idiograph_id) REFERENCES public.digipal_idiograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_institution digipal_institution_founder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_founder_id_fkey FOREIGN KEY (founder_id) REFERENCES public.digipal_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_institution digipal_institution_institution_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_institution_type_id_fkey FOREIGN KEY (institution_type_id) REFERENCES public.digipal_institutiontype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_institution digipal_institution_patron_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_patron_id_fkey FOREIGN KEY (patron_id) REFERENCES public.digipal_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_institution digipal_institution_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.digipal_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_institution digipal_institution_reformer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_institution
    ADD CONSTRAINT digipal_institution_reformer_id_fkey FOREIGN KEY (reformer_id) REFERENCES public.digipal_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempart_owners digipal_ite_itempart_id_33e6e8354509f8dd_fk_digipal_itempart_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart_owners
    ADD CONSTRAINT digipal_ite_itempart_id_33e6e8354509f8dd_fk_digipal_itempart_id FOREIGN KEY (itempart_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itemorigin digipal_itemorigin_historical_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemorigin
    ADD CONSTRAINT digipal_itemorigin_historical_item_id_fkey FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempart_owners digipal_itempart_ow_owner_id_74969a49036dab_fk_digipal_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart_owners
    ADD CONSTRAINT digipal_itempart_ow_owner_id_74969a49036dab_fk_digipal_owner_id FOREIGN KEY (owner_id) REFERENCES public.digipal_owner(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_layout digipal_layout_hair_arrangement_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_layout
    ADD CONSTRAINT digipal_layout_hair_arrangement_id_fkey FOREIGN KEY (hair_arrangement_id) REFERENCES public.digipal_hair(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_ontograph digipal_ontograph_ontograph_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_ontograph
    ADD CONSTRAINT digipal_ontograph_ontograph_type_id_fkey FOREIGN KEY (ontograph_type_id) REFERENCES public.digipal_ontographtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_place digipal_place_current_county_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place
    ADD CONSTRAINT digipal_place_current_county_id_fkey FOREIGN KEY (current_county_id) REFERENCES public.digipal_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_place digipal_place_historical_county_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place
    ADD CONSTRAINT digipal_place_historical_county_id_fkey FOREIGN KEY (historical_county_id) REFERENCES public.digipal_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_place digipal_place_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place
    ADD CONSTRAINT digipal_place_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.digipal_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_placeevidence digipal_placeevidence_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence
    ADD CONSTRAINT digipal_placeevidence_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.digipal_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_placeevidence digipal_placeevidence_reference_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence
    ADD CONSTRAINT digipal_placeevidence_reference_id_fkey FOREIGN KEY (reference_id) REFERENCES public.digipal_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_proportion digipal_proportion_hand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_proportion
    ADD CONSTRAINT digipal_proportion_hand_id_fkey FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_proportion digipal_proportion_measurement_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_proportion
    ADD CONSTRAINT digipal_proportion_measurement_id_fkey FOREIGN KEY (measurement_id) REFERENCES public.digipal_measurement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_repository digipal_repository_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository
    ADD CONSTRAINT digipal_repository_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.digipal_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scribe_reference digipal_s_reference_id_514ba25d1687703d_fk_digipal_reference_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe_reference
    ADD CONSTRAINT digipal_s_reference_id_514ba25d1687703d_fk_digipal_reference_id FOREIGN KEY (reference_id) REFERENCES public.digipal_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scribe_reference digipal_scribe__scribe_id_57dd0c849aa6521f_fk_digipal_scribe_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe_reference
    ADD CONSTRAINT digipal_scribe__scribe_id_57dd0c849aa6521f_fk_digipal_scribe_id FOREIGN KEY (scribe_id) REFERENCES public.digipal_scribe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scribe digipal_scribe_scriptorium_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scribe
    ADD CONSTRAINT digipal_scribe_scriptorium_id_fkey FOREIGN KEY (scriptorium_id) REFERENCES public.digipal_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_script_allographs digipal_script_allographs_allograph_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script_allographs
    ADD CONSTRAINT digipal_script_allographs_allograph_id_fkey FOREIGN KEY (allograph_id) REFERENCES public.digipal_allograph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scriptcomponent digipal_scriptcomponent_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent
    ADD CONSTRAINT digipal_scriptcomponent_component_id_fkey FOREIGN KEY (component_id) REFERENCES public.digipal_component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scriptcomponent_features digipal_scriptcomponent_features_feature_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent_features
    ADD CONSTRAINT digipal_scriptcomponent_features_feature_id_fkey FOREIGN KEY (feature_id) REFERENCES public.digipal_feature(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scriptcomponent digipal_scriptcomponent_script_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent
    ADD CONSTRAINT digipal_scriptcomponent_script_id_fkey FOREIGN KEY (script_id) REFERENCES public.digipal_script(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_categories digipal_tex_category_id_52b32d954c6b0918_fk_digipal_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_categories
    ADD CONSTRAINT digipal_tex_category_id_52b32d954c6b0918_fk_digipal_category_id FOREIGN KEY (category_id) REFERENCES public.digipal_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontent_languages digipal_tex_language_id_70323cef070fdcb3_fk_digipal_language_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent_languages
    ADD CONSTRAINT digipal_tex_language_id_70323cef070fdcb3_fk_digipal_language_id FOREIGN KEY (language_id) REFERENCES public.digipal_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_languages digipal_tex_language_id_73d4dcda2df2edc0_fk_digipal_language_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_languages
    ADD CONSTRAINT digipal_tex_language_id_73d4dcda2df2edc0_fk_digipal_language_id FOREIGN KEY (language_id) REFERENCES public.digipal_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_categories digipal_text_catego_text_id_39cdb86ac033ae6d_fk_digipal_text_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_categories
    ADD CONSTRAINT digipal_text_catego_text_id_39cdb86ac033ae6d_fk_digipal_text_id FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_languages digipal_text_langua_text_id_53f058584d7ac0ef_fk_digipal_text_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_languages
    ADD CONSTRAINT digipal_text_langua_text_id_53f058584d7ac0ef_fk_digipal_text_id FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_fieldentry entry_id_refs_id_6665e0dfa8c98a4c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_fieldentry
    ADD CONSTRAINT entry_id_refs_id_6665e0dfa8c98a4c FOREIGN KEY (entry_id) REFERENCES public.forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_character form_id_refs_id_532b88f9fcb9f0f9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_character
    ADD CONSTRAINT form_id_refs_id_532b88f9fcb9f0f9 FOREIGN KEY (form_id) REFERENCES public.digipal_characterform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_formentry form_id_refs_page_ptr_id_47406b7c97eb7e22; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_formentry
    ADD CONSTRAINT form_id_refs_page_ptr_id_47406b7c97eb7e22 FOREIGN KEY (form_id) REFERENCES public.forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_field form_id_refs_page_ptr_id_5ec162ae1926fc04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_field
    ADD CONSTRAINT form_id_refs_page_ptr_id_5ec162ae1926fc04 FOREIGN KEY (form_id) REFERENCES public.forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_related_posts from_blogpost_id_refs_id_34504a65413362e3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT from_blogpost_id_refs_id_34504a65413362e3 FOREIGN KEY (from_blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_galleryimage gallery_id_refs_page_ptr_id_201e25ab0cdf4e25; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries_galleryimage
    ADD CONSTRAINT gallery_id_refs_page_ptr_id_201e25ab0cdf4e25 FOREIGN KEY (gallery_id) REFERENCES public.galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graphcomponent_features graphcomponent_id_refs_id_fa5e2704; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graphcomponent_features
    ADD CONSTRAINT graphcomponent_id_refs_id_fa5e2704 FOREIGN KEY (graphcomponent_id) REFERENCES public.digipal_graphcomponent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_bookmark grappelli_safe_bookmark_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmark
    ADD CONSTRAINT grappelli_safe_bookmark_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_bookmarkitem grappelli_safe_bookmarkitem_bookmark_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_bookmarkitem
    ADD CONSTRAINT grappelli_safe_bookmarkitem_bookmark_id_fkey FOREIGN KEY (bookmark_id) REFERENCES public.grappelli_safe_bookmark(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_helpitem grappelli_safe_helpitem_help_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_helpitem
    ADD CONSTRAINT grappelli_safe_helpitem_help_id_fkey FOREIGN KEY (help_id) REFERENCES public.grappelli_safe_help(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_navigationitem_groups grappelli_safe_navigationitem_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_groups
    ADD CONSTRAINT grappelli_safe_navigationitem_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_navigationitem grappelli_safe_navigationitem_navigation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem
    ADD CONSTRAINT grappelli_safe_navigationitem_navigation_id_fkey FOREIGN KEY (navigation_id) REFERENCES public.grappelli_safe_navigation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_navigationitem_users grappelli_safe_navigationitem_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_users
    ADD CONSTRAINT grappelli_safe_navigationitem_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_graph group_id_refs_id_372728db74fd02d5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_graph
    ADD CONSTRAINT group_id_refs_id_372728db74fd02d5 FOREIGN KEY (group_id) REFERENCES public.digipal_graph(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempart group_id_refs_id_7a0213976e50c383; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart
    ADD CONSTRAINT group_id_refs_id_7a0213976e50c383 FOREIGN KEY (group_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_handdescription hand_id_refs_id_14ed87399322b8c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_handdescription
    ADD CONSTRAINT hand_id_refs_id_14ed87399322b8c2 FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_placeevidence hand_id_refs_id_2b787667; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence
    ADD CONSTRAINT hand_id_refs_id_2b787667 FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_dateevidence hand_id_refs_id_74ab93ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence
    ADD CONSTRAINT hand_id_refs_id_74ab93ac FOREIGN KEY (hand_id) REFERENCES public.digipal_hand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_layout historical_item_id_refs_id_14339b21784fb418; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_layout
    ADD CONSTRAINT historical_item_id_refs_id_14339b21784fb418 FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempartitem historical_item_id_refs_id_3f0d318f6e7db751; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartitem
    ADD CONSTRAINT historical_item_id_refs_id_3f0d318f6e7db751 FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_cataloguenumber historical_item_id_refs_id_4930e871e982185d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber
    ADD CONSTRAINT historical_item_id_refs_id_4930e871e982185d FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_description historical_item_id_refs_id_5e408afa3cc82fed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description
    ADD CONSTRAINT historical_item_id_refs_id_5e408afa3cc82fed FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_placeevidence historical_item_id_refs_id_78501f52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_placeevidence
    ADD CONSTRAINT historical_item_id_refs_id_78501f52 FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_dateevidence historical_item_id_refs_id_ec058d19; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_dateevidence
    ADD CONSTRAINT historical_item_id_refs_id_ec058d19 FOREIGN KEY (historical_item_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem_categories historicalitem_id_2b89ff0d2714727_fk_digipal_historicalitem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_categories
    ADD CONSTRAINT historicalitem_id_2b89ff0d2714727_fk_digipal_historicalitem_id FOREIGN KEY (historicalitem_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_historicalitem_owners historicalitem_id_727ffcaab0ea8a5_fk_digipal_historicalitem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_historicalitem_owners
    ADD CONSTRAINT historicalitem_id_727ffcaab0ea8a5_fk_digipal_historicalitem_id FOREIGN KEY (historicalitem_id) REFERENCES public.digipal_historicalitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_idiographcomponent_features idiographcomponent_id_refs_id_2989c614; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_idiographcomponent_features
    ADD CONSTRAINT idiographcomponent_id_refs_id_2989c614 FOREIGN KEY (idiographcomponent_id) REFERENCES public.digipal_idiographcomponent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itemorigin institution_id_refs_id_11d30948; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemorigin
    ADD CONSTRAINT institution_id_refs_id_11d30948 FOREIGN KEY (institution_id) REFERENCES public.digipal_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_owner institution_id_refs_id_6ec855769d61371e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_owner
    ADD CONSTRAINT institution_id_refs_id_6ec855769d61371e FOREIGN KEY (institution_id) REFERENCES public.digipal_institution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_entryhand item_part_id_refs_id_069b1ab1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_entryhand
    ADD CONSTRAINT item_part_id_refs_id_069b1ab1 FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_layout item_part_id_refs_id_5756a8c982caacaf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_layout
    ADD CONSTRAINT item_part_id_refs_id_5756a8c982caacaf FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempartitem item_part_id_refs_id_5eba4ed8ea3018; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartitem
    ADD CONSTRAINT item_part_id_refs_id_5eba4ed8ea3018 FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_image item_part_id_refs_id_70116b2fb86ffe02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_image
    ADD CONSTRAINT item_part_id_refs_id_70116b2fb86ffe02 FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_textitempart item_part_id_refs_id_7f18151e4769374c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_textitempart
    ADD CONSTRAINT item_part_id_refs_id_7f18151e4769374c FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempartauthenticity item_part_id_refs_id_a78e0a58; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity
    ADD CONSTRAINT item_part_id_refs_id_a78e0a58 FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontent item_part_id_refs_id_f7500fa8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT item_part_id_refs_id_f7500fa8 FOREIGN KEY (item_part_id) REFERENCES public.digipal_itempart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword keyword_id_refs_id_2f33c3953a2a6ccd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT keyword_id_refs_id_2f33c3953a2a6ccd FOREIGN KEY (keyword_id) REFERENCES public.generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontentxml last_image_id_refs_id_b97ce151; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml
    ADD CONSTRAINT last_image_id_refs_id_b97ce151 FOREIGN KEY (last_image_id) REFERENCES public.digipal_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_image media_permission_id_refs_id_52e778f461ba2018; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_image
    ADD CONSTRAINT media_permission_id_refs_id_52e778f461ba2018 FOREIGN KEY (media_permission_id) REFERENCES public.digipal_mediapermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_repository media_permission_id_refs_id_7adb86af9ff0cdd1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository
    ADD CONSTRAINT media_permission_id_refs_id_7adb86af9ff0cdd1 FOREIGN KEY (media_permission_id) REFERENCES public.digipal_mediapermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_navigationitem_groups navigationitem_id_refs_id_affe7fb3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_groups
    ADD CONSTRAINT navigationitem_id_refs_id_affe7fb3 FOREIGN KEY (navigationitem_id) REFERENCES public.grappelli_safe_navigationitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: grappelli_safe_navigationitem_users navigationitem_id_refs_id_c32e7ce2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grappelli_safe_navigationitem_users
    ADD CONSTRAINT navigationitem_id_refs_id_c32e7ce2 FOREIGN KEY (navigationitem_id) REFERENCES public.grappelli_safe_navigationitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_form page_ptr_id_refs_id_1abae4291d5610fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms_form
    ADD CONSTRAINT page_ptr_id_refs_id_1abae4291d5610fd FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_gallery page_ptr_id_refs_id_2316e772d7ed4911; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries_gallery
    ADD CONSTRAINT page_ptr_id_refs_id_2316e772d7ed4911 FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_richtextpage page_ptr_id_refs_id_2f29d68cb68ba587; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_richtextpage
    ADD CONSTRAINT page_ptr_id_refs_id_2f29d68cb68ba587 FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_link page_ptr_id_refs_id_34e0535a4cf4c646; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_link
    ADD CONSTRAINT page_ptr_id_refs_id_34e0535a4cf4c646 FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page parent_id_refs_id_3eab4d20353c0eed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT parent_id_refs_id_3eab4d20353c0eed FOREIGN KEY (parent_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_repository part_of_id_refs_id_b3e8a0fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository
    ADD CONSTRAINT part_of_id_refs_id_b3e8a0fd FOREIGN KEY (part_of_id) REFERENCES public.digipal_repository(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_owner person_id_refs_id_2a9a495f878523b4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_owner
    ADD CONSTRAINT person_id_refs_id_2a9a495f878523b4 FOREIGN KEY (person_id) REFERENCES public.digipal_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itemorigin place_id_refs_id_b2af8090; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itemorigin
    ADD CONSTRAINT place_id_refs_id_b2af8090 FOREIGN KEY (place_id) REFERENCES public.digipal_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: twitter_tweet query_id_refs_id_4821ad78adacd71e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.twitter_tweet
    ADD CONSTRAINT query_id_refs_id_4821ad78adacd71e FOREIGN KEY (query_id) REFERENCES public.twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_threadedcomment replied_to_id_refs_comment_ptr_id_749b227eb5c2dffb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT replied_to_id_refs_comment_ptr_id_749b227eb5c2dffb FOREIGN KEY (replied_to_id) REFERENCES public.generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_owner repository_id_refs_id_f008e82f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_owner
    ADD CONSTRAINT repository_id_refs_id_f008e82f FOREIGN KEY (repository_id) REFERENCES public.digipal_repository(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_version revision_id_refs_id_636f2b7f6b631d85; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_version
    ADD CONSTRAINT revision_id_refs_id_636f2b7f6b631d85 FOREIGN KEY (revision_id) REFERENCES public.reversion_revision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_script_allographs script_id_refs_id_8fe94fdc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_script_allographs
    ADD CONSTRAINT script_id_refs_id_8fe94fdc FOREIGN KEY (script_id) REFERENCES public.digipal_script(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_scriptcomponent_features scriptcomponent_id_refs_id_63b10668; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_scriptcomponent_features
    ADD CONSTRAINT scriptcomponent_id_refs_id_63b10668 FOREIGN KEY (scriptcomponent_id) REFERENCES public.digipal_scriptcomponent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcategory site_id_refs_id_187e35db8f583; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogcategory
    ADD CONSTRAINT site_id_refs_id_187e35db8f583 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page site_id_refs_id_2f167f1d961711c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT site_id_refs_id_2f167f1d961711c7 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites site_id_refs_id_2f9d87cf573d8999; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT site_id_refs_id_2f9d87cf573d8999 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting site_id_refs_id_3fb571b6358fae2a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conf_setting
    ADD CONSTRAINT site_id_refs_id_3fb571b6358fae2a FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect site_id_refs_id_4aa27aa6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT site_id_refs_id_4aa27aa6 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost site_id_refs_id_66792abe72f12b99; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT site_id_refs_id_66792abe72f12b99 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword site_id_refs_id_6f9f7deb61ab9647; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_keyword
    ADD CONSTRAINT site_id_refs_id_6f9f7deb61ab9647 FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites sitepermission_id_refs_id_4c8bf84f980f2d26; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT sitepermission_id_refs_id_4c8bf84f980f2d26 FOREIGN KEY (sitepermission_id) REFERENCES public.core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempartauthenticity source_id_refs_id_0116674a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempartauthenticity
    ADD CONSTRAINT source_id_refs_id_0116674a FOREIGN KEY (source_id) REFERENCES public.digipal_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_handdescription source_id_refs_id_3915c3abca67d044; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_handdescription
    ADD CONSTRAINT source_id_refs_id_3915c3abca67d044 FOREIGN KEY (source_id) REFERENCES public.digipal_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontentxmlcopy source_id_refs_id_9b9df92b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxmlcopy
    ADD CONSTRAINT source_id_refs_id_9b9df92b FOREIGN KEY (source_id) REFERENCES public.digipal_text_textcontentxml(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontentxml status_id_refs_id_bf6b5564; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml
    ADD CONSTRAINT status_id_refs_id_bf6b5564 FOREIGN KEY (status_id) REFERENCES public.digipal_text_textcontentxmlstatus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_hand stewart_record_id_refs_id_57bf8d9643644aee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_hand
    ADD CONSTRAINT stewart_record_id_refs_id_57bf8d9643644aee FOREIGN KEY (stewart_record_id) REFERENCES public.digipal_stewartrecord(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontentxml text_content_id_refs_id_0a2712f3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontentxml
    ADD CONSTRAINT text_content_id_refs_id_0a2712f3 FOREIGN KEY (text_content_id) REFERENCES public.digipal_text_textcontent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_textitempart text_id_refs_id_1ec558e5f73a304f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_textitempart
    ADD CONSTRAINT text_id_refs_id_1ec558e5f73a304f FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_description text_id_refs_id_426829b15b07ce5f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_description
    ADD CONSTRAINT text_id_refs_id_426829b15b07ce5f FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_cataloguenumber text_id_refs_id_a4f1332c9d8a449; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_cataloguenumber
    ADD CONSTRAINT text_id_refs_id_a4f1332c9d8a449 FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontent text_id_refs_id_fbcfc7e4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT text_id_refs_id_fbcfc7e4 FOREIGN KEY (text_id) REFERENCES public.digipal_text(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontent_languages textcontent_id_1918d79e96327ff8_fk_digipal_text_textcontent_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent_languages
    ADD CONSTRAINT textcontent_id_1918d79e96327ff8_fk_digipal_text_textcontent_id FOREIGN KEY (textcontent_id) REFERENCES public.digipal_text_textcontent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_related_posts to_blogpost_id_refs_id_34504a65413362e3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT to_blogpost_id_refs_id_34504a65413362e3 FOREIGN KEY (to_blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_itempart type_id_refs_id_422bae56269105f7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_itempart
    ADD CONSTRAINT type_id_refs_id_422bae56269105f7 FOREIGN KEY (type_id) REFERENCES public.digipal_itemparttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_place type_id_refs_id_7589ab0a4d41af27; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_place
    ADD CONSTRAINT type_id_refs_id_7589ab0a4d41af27 FOREIGN KEY (type_id) REFERENCES public.digipal_placetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_text_textcontent type_id_refs_id_a5bf2f2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_text_textcontent
    ADD CONSTRAINT type_id_refs_id_a5bf2f2b FOREIGN KEY (type_id) REFERENCES public.digipal_text_textcontenttype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: digipal_repository type_id_refs_id_ff4831cd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.digipal_repository
    ADD CONSTRAINT type_id_refs_id_ff4831cd FOREIGN KEY (type_id) REFERENCES public.digipal_ownertype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reversion_revision user_id_refs_id_167696070c59e12b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reversion_revision
    ADD CONSTRAINT user_id_refs_id_167696070c59e12b FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost user_id_refs_id_5fb4ce426020e4f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT user_id_refs_id_5fb4ce426020e4f0 FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating user_id_refs_id_9436ba96; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT user_id_refs_id_9436ba96 FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict d4UaqHfS6i1QGoxySXHD8YfvrUuX9e0QDl15bBBnXVvkuTwP07gDANRMcEXqqdR

