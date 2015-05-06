--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'Standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: m_base; Type: TABLE; Schema: public; Owner: malmaga_system; Tablespace: 
--

CREATE TABLE m_base (
    user_id integer NOT NULL,
    cmt_id integer,
    user_name character varying(64),
    user_adr character varying(256),
    user_date timestamp without time zone,
    user_pwd character varying(64),
    del_f boolean,
    crate_date timestamp without time zone
);


ALTER TABLE public.m_base OWNER TO malmaga_system;

--
-- Name: m_ctl; Type: TABLE; Schema: public; Owner: malmaga_system; Tablespace: 
--

CREATE TABLE m_ctl (
    cmt_id integer NOT NULL,
    cmt_name character varying(64),
    cmt_adr character varying(256),
    cmt_company character varying(64),
    cmt_affiliation character varying(64)
);


ALTER TABLE public.m_ctl OWNER TO malmaga_system;

--
-- Name: m_sendman; Type: TABLE; Schema: public; Owner: malmaga_system; Tablespace: 
--

CREATE TABLE m_sendman (
    send_id integer NOT NULL,
    user_id integer,
    status smallint,
    st_date timestamp without time zone,
    ed_date timestamp without time zone
);


ALTER TABLE public.m_sendman OWNER TO malmaga_system;

--
-- Name: t_senddata; Type: TABLE; Schema: public; Owner: malmaga_system; Tablespace: 
--

CREATE TABLE t_senddata (
    user_id integer,
    from_adr character varying(256),
    name character varying(256),
    subject character varying(256),
    filepdf1 character varying(256),
    filepdf2 character varying(256),
    filepdf3 character varying(256),
    filepdf4 character varying(256),
    filepdf5 character varying(256),
    "comment" text
);


ALTER TABLE public.t_senddata OWNER TO malmaga_system;

--
-- Name: t_sendinfo; Type: TABLE; Schema: public; Owner: malmaga_system; Tablespace: 
--

CREATE TABLE t_sendinfo (
    send_id integer,
    to_address character varying(256),
    status smallint,
    com_name character varying(256),
    sec_name1 character varying(256),
    sec_name2 character varying(256),
    per_name character varying(256),
    send_chk smallint,
    regist_date timestamp without time zone
);


ALTER TABLE public.t_sendinfo OWNER TO malmaga_system;

--
-- Data for Name: m_base; Type: TABLE DATA; Schema: public; Owner: malmaga_system
--

INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (553396, 999, '', 'tobari-takahiko@aktio.co.jp', '2014-07-05 00:00:00', 'b9D2db6v', true, '2014-07-05 10:40:04.462832');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (553397, 999, '', 'fukuzaki@mentor-ss.co.jp', '2014-07-06 00:00:00', 'b9D2db6v', false, '2014-07-06 10:40:04.462832');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (553398, 999, '', 'fukuzaki@mentor-ss.co.jp', '2014-07-07 00:00:00', 'b9D2db6v', false, '2014-07-07 10:40:04.462832');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (404751, 999, '', 'osaka-tetsuro@aktio.co.jp', '2014-07-07 00:00:00', 'ZKqn7hM7', true, '2014-07-07 20:36:07.56199');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (200234, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-14 00:00:00', '5pzSTfnu', false, '2015-04-14 09:11:41.290966');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (299902, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-14 00:00:00', 'hRZrV7vP', false, '2015-04-14 09:14:13.104957');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (741742, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-14 00:00:00', 'peZzDMPy', false, '2015-04-14 09:43:40.010707');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (647146, 999, '', 'ishikawa-akiko@aktio.co.jp', '2015-04-14 00:00:00', 'ZNkbdn0B', false, '2015-04-14 10:08:48.840184');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (729690, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-16 00:00:00', 'k0NMmW6X', false, '2015-04-16 09:11:59.791821');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (574053, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-17 00:00:00', 'xfFfYgR6', true, '2015-04-17 10:48:37.809751');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (693572, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-17 00:00:00', 'zDEBu4vQ', true, '2015-04-17 18:27:20.529426');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (44507, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-17 00:00:00', 'JnhbgY5Z', false, '2015-04-17 19:04:05.300177');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (355727, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-17 00:00:00', 'WnBWw2aX', false, '2015-04-17 23:21:13.395202');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (225596, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-18 00:00:00', 'wEbkkXmC', false, '2015-04-18 00:10:21.880281');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (44696, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-18 00:00:00', 'Fggm0rV1', false, '2015-04-18 22:45:30.76602');
INSERT INTO m_base (user_id, cmt_id, user_name, user_adr, user_date, user_pwd, del_f, crate_date) VALUES (53271, 999, '', 'osaka-tetsuro@aktio.co.jp', '2015-04-19 00:00:00', 'KuzZ0eAT', false, '2015-04-19 11:15:20.59497');


--
-- Data for Name: m_ctl; Type: TABLE DATA; Schema: public; Owner: malmaga_system
--



--
-- Data for Name: m_sendman; Type: TABLE DATA; Schema: public; Owner: malmaga_system
--



--
-- Data for Name: t_senddata; Type: TABLE DATA; Schema: public; Owner: malmaga_system
--

INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'めんとる　ふくざき', '一斉メール送信テスト', 'AKTIOEG_03_mizu_P025.pdf', '', '', '', '', 'ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
あああああああああ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'めんとる　ふくざき', '一斉メール送信テスト', 'AKTIOEG_03_mizu_P025.pdf', '', '', '', '', 'ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
ああああああああああああああああああああ<br />
あああああああああ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', '一斉メール送信テスト', '', '', '', '', '', 'てすと<br />
てすと');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', '一斉メール送信テスト', '', '', '', '', '', 'test<br />
<br />
test<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'まぐなすしすてむず　ふくざき', '一斉メール送信テスト', '', '', '', '', '', 'てすとてすと<br />
㈱てすと');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', 'てすと<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', 'てすと<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', 'あ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', 'あ<br />
あ<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', '<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', '', '', '', '', '', '<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'humi0417@gmail.com', '999 888 777 666', '@@@@@@@@@@@', 'r-demo03.pdf', '', '', '', '', '*************************<br />
test<br />
****************************<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', '一斉メール送信テスト　全角(4534)+半角制御文字466文字', 'AKTIOEG_03_mizu_P025.pdf', '', '', '', '', 'test<br />
test<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', '一斉メール送信テスト　全角(4534)+半角制御文字466文字', 'AKTIOEG_03_mizu_P025.pdf', '', '', '', '', 'test<br />
test<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'humi0417@gmail.com', '999 888 777 666', '@@@@@@@@@@@', 'r-demo03.pdf', '', '', '', '', '*************************<br />
test<br />
****************************<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (737135, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', '一斉メール送信テスト　全角(4534)+半角制御文字466文字', 'AKTIOEG_03_mizu_P025.pdf', '', '', '', '', 'test<br />
test<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'info-honbu@aktio.co.jp', '株式会社アクティオ　本部　情報システム部　大坂', 'レンサルティングフェアのお知らせ', 'r-demo03.pdf', '', '', '', '', '**********************************************<br />
<br />
レンサルティングフェアのお知らせ<br />
<br />
**********************************************<br />
<br />
この度、２０１４年６月２０日よりレンサルティングフェアを開催いたします。<br />
<br />
<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'info-honbu@aktio.co.jp', '株式会社アクティオ　本部　情報システム部　大坂', 'レンサルティングフェアのお知らせ', 'r-demo03.pdf', '', '', '', '', '**********************************************<br />
<br />
レンサルティングフェアのお知らせ<br />
<br />
**********************************************<br />
<br />
この度、２０１４年６月２０日よりレンサルティングフェアを開催いたします。');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'info-honbu@aktio.co.jp', '株式会社アクティオ　本部　情報システム部　大坂', 'レンサルティングフェアのお知らせ', 'r-demo03.pdf', '', '', '', '', '**********************************************<br />
<br />
レンサルティングフェアのお知らせ<br />
<br />
**********************************************<br />
<br />
この度、２０１４年６月２０日よりレンサルティングフェアを開催いたします。');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (767445, 'info-honbu@aktio.co.jp', '株式会社アクティオ　本部　情報システム部　大坂', 'レンサルティングフェアのお知らせ', 'r-demo03.pdf', '', '', '', '', '**********************************************<br />
<br />
レンサルティングフェアのお知らせ<br />
<br />
**********************************************<br />
<br />
この度、２０１４年６月２０日よりレンサルティングフェアを開催いたします。');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553396, 'kankyouten-2014@aktio.co.jp', '株式会社アクティオ　戸張', '２０１４年　環境展のお知らせ', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', '<br />
環境展のお知らせ<br />
<br />
AAAAAA<br />
<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
<br />
--------------------------------------------<br />
url: http://www.aktio.co.jp<br />
<br />
<br />
テスト文字<br />
--------------------------------------------<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553396, 'kankyouten-2014@aktio.co.jp', '株式会社アクティオ　戸張', '２０１４年　環境展のお知らせ', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', '<br />
環境展のお知らせ<br />
<br />
AAAAAA<br />
<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
AAAAAA<br />
<br />
--------------------------------------------<br />
url: http://www.aktio.co.jp<br />
<br />
<br />
テスト文字<br />
--------------------------------------------<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553398, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', 'test');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553398, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', 'test');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553398, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', 'test');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553398, 'fukuzaki@mentor-ss.co.jp', 'メントルシステム販売株式会社　テスト担当　福崎', 'テストタイトル', 'DEMO-a.pdf', 'DEMO-b.pdf', 'DEMO-c.pdf', 'DEMO-d.pdf', 'DEMO-e.pdf', 'test');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (553398, 'humi0417@gmail.com', '株式会社アクティオ　本部　情報システム部　田中', 'レンサルティングフェアのお知らせ', 'DEMO-a.pdf', '', '', '', '', '*-*-*-<br />
テスト<br />
*-*-*-<br />
<br />
');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (404751, 'osaka-tetsuro@aktio.co.jp', 'てすと', 'てすと', '添付.pdf', '', '', '', '', 'aaaa<br />
あああああ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (404751, 'osaka-tetsuro@aktio.co.jp', 'てすと', 'てすと', '添付.pdf', '差替【お見積】アクティオ様　Clovernet　AWS移設費用_20140624.pdf', 'MSE44310_HP御見積書_株式会社アクティオ様_.pdf', 'RIR030_20140616103348.pdf', '販売品の購入～請求・支払フロー.pdf', 'aaaa<br />
あああああ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (404751, 'osaka-tetsuro@aktio.co.jp', 'てすと', 'てすと', '添付.pdf', '', '', '', '', 'aaaa<br />
あああああ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (574053, 'n-expo2015@aktio.co.jp', '株式会社　アクティオ', '2015 NEW環境展 出展のご案内', '', '', '', '', '', '＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
　　　　　　　　　　　　　　5月26日～5月29日開催 <br />
　　　　　　　　　　　　2015ＮＥＷ環境展  出展のご案内 <br />
＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
<br />
<br />
拝啓  新緑の候、貴社ますますご繁栄のこととお喜び申し上げます。 <br />
平素は格別のご高配を賜り、厚くお礼申し上げます。 <br />
<br />
さて、株式会社アクティオは 2015 年 5 月 26 日（火）～5 月 29 日（金）開催の <br />
2015ＮＥＷ環境展に出展致しますのでご案内申し上げます。 　<br />
<br />
このメールは、昨年、弊社ブースにご来場下さった方々に送信させて頂いております。 <br />
<br />
昨年同様、是非、弊社ブースにお立ち寄り下さいますようお願い申し上げます。 <br />
<br />
                                                                      敬具 <br />
<br />
　　　　　　　　　　　　　記 <br />
<br />
★展示会名　：　2015ＮＥＷ環境展 <br />
★会　　　期　：  2014 年 5 月 26 日（火曜日）～5 月 29 日（金曜日）  4 日間 <br />
★開催時間　：  午前 10 時  ～  午後 5 時  ※最終日のみ午後 4 時迄 <br />
★会　　　場　：  東京ビッグサイト（東展示棟、屋外会場） <br />
★ブース№　： 東4ホール H4001 <br />
<br />
★出展品目　：ツーノズルハンドブラストマシン、負圧集塵機 100V  MDFU-7Z、 <br />
　　　　　　　　　　防護服等、塗膜除去装置ヒートレッド、プレミアムモジュールファン、 <br />
　　　　　　　　　　トンネル環境表示計、高揚程大水量ポンプ 14 吋 300kW、 <br />
　　　　　　　　　　遠隔散水装置、根こそぎ切るソー、ロジコン  食品用折りたたみ式コンテナ、 <br />
　　　　　　　　　　エミール水処理システム、超大風量　移動式冷風機 <br />
<br />
<br />
ご招待状をお配りしておりますので、まだお持ちでない方は下記までご用命下さい。 <br />
<br />
ご来場を心よりお待ちしております。 <br />
<br />
<br />
 ＜お問い合わせ先＞－－－－－－－－－－－－－ <br />
 株式会社アクティオ  技術部  企画計画課  <br />
 東京都中央区日本橋 3-12-2  朝日ビルヂング 6 階 <br />
 TEL03-6680-9254  <br />
 担当：菅原、戸張 <br />
 －－－－－－－－－－－－－－－－－－－－－－  ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (574053, 'n-expo2015@aktio.co.jp', '株式会社　アクティオ', '2015 NEW環境展 出展のご案内', '', '', '', '', '', '＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
　　　　　　　　　　　　　　5月26日～5月29日開催 <br />
　　　　　　　　　　　　2015ＮＥＷ環境展  出展のご案内 <br />
＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
<br />
<br />
拝啓  新緑の候、貴社ますますご繁栄のこととお喜び申し上げます。 <br />
平素は格別のご高配を賜り、厚くお礼申し上げます。 <br />
<br />
さて、株式会社アクティオは 2015 年 5 月 26 日（火）～5 月 29 日（金）開催の <br />
2015ＮＥＷ環境展に出展致しますのでご案内申し上げます。 　<br />
<br />
このメールは、昨年、弊社ブースにご来場下さった方々に送信させて頂いております。 <br />
<br />
昨年同様、是非、弊社ブースにお立ち寄り下さいますようお願い申し上げます。 <br />
<br />
                                                                      敬具 <br />
<br />
　　　　　　　　　　　　　記 <br />
<br />
★展示会名　：　2015ＮＥＷ環境展 <br />
★会　　　期　：  2014 年 5 月 26 日（火曜日）～5 月 29 日（金曜日）  4 日間 <br />
★開催時間　：  午前 10 時  ～  午後 5 時  ※最終日のみ午後 4 時迄 <br />
★会　　　場　：  東京ビッグサイト（東展示棟、屋外会場） <br />
★ブースＮＯ　： 東4ホール H4001 <br />
<br />
★出展品目　：ツーノズルハンドブラストマシン、負圧集塵機 100V  MDFU-7Z、 <br />
　　　　　　　　　　防護服等、塗膜除去装置ヒートレッド、プレミアムモジュールファン、 <br />
　　　　　　　　　　トンネル環境表示計、高揚程大水量ポンプ 14 吋 300kW、 <br />
　　　　　　　　　　遠隔散水装置、根こそぎ切るソー、ロジコン  食品用折りたたみ式コンテナ、 <br />
　　　　　　　　　　エミール水処理システム、超大風量　移動式冷風機 <br />
<br />
<br />
ご招待状をお配りしておりますので、まだお持ちでない方は下記までご用命下さい。 <br />
<br />
ご来場を心よりお待ちしております。 <br />
<br />
<br />
 ＜お問い合わせ先＞－－－－－－－－－－－－－ <br />
 株式会社アクティオ  技術部  企画計画課  <br />
 東京都中央区日本橋 3-12-2  朝日ビルヂング 6 階 <br />
 TEL03-6680-9254  <br />
 担当：菅原、戸張 <br />
 －－－－－－－－－－－－－－－－－－－－－－  ');
INSERT INTO t_senddata (user_id, from_adr, name, subject, filepdf1, filepdf2, filepdf3, filepdf4, filepdf5, "comment") VALUES (693572, 'n-expo2015@aktio.co.jp', '株式会社アクティオ', '2015ＮＥＷ環境展  出展のご案内', '', '', '', '', '', '＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
　　　　　　　　　　　　　　5月26日～5月29日開催 <br />
　　　　　　　　　　　　2015ＮＥＷ環境展  出展のご案内 <br />
＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊ <br />
<br />
<br />
拝啓  新緑の候、貴社ますますご繁栄のこととお喜び申し上げます。 <br />
平素は格別のご高配を賜り、厚くお礼申し上げます。 <br />
<br />
さて、株式会社アクティオは 2015 年 5 月 26 日（火）～5 月 29 日（金）開催の <br />
2015ＮＥＷ環境展に出展致しますのでご案内申し上げます。 　<br />
<br />
このメールは、昨年、弊社ブースにご来場下さった方々に送信させて頂いております。 <br />
<br />
昨年同様、是非、弊社ブースにお立ち寄り下さいますようお願い申し上げます。 <br />
<br />
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　敬　具 <br />
<br />
　　　　　　　　　　　　　記 <br />
<br />
★展示会名　：2015ＮＥＷ環境展 <br />
★　　　期　：2015 年 5 月 26 日（火曜日）～5 月 29 日（金曜日）  4 日間 <br />
★開催時間　：午前 10 時  ～  午後 5 時  ※最終日のみ午後 4 時迄 <br />
★会　　場　：東京ビッグサイト（東展示棟、屋外会場） <br />
★ブースＮＯ：東4ホール H4001 <br />
<br />
★出展品目　：ツーノズルハンドブラストマシン、負圧集塵機 100V  MDFU-7Z、 <br />
　　　　　　　　　　防護服等、塗膜除去装置ヒートレッド、プレミアムモジュールファン、 <br />
　　　　　　　　　　トンネル環境表示計、高揚程大水量ポンプ 14 吋 300kW、 <br />
　　　　　　　　　　遠隔散水装置、根こそぎ切るソー、ロジコン  食品用折りたたみ式コンテナ、 <br />
　　　　　　　　　　エミール水処理システム、超大風量　移動式冷風機 <br />
<br />
<br />
ご招待状をお配りしておりますので、まだお持ちでない方は下記までご用命下さい。 <br />
<br />
ご来場を心よりお待ちしております。 <br />
<br />
<br />
 ＜お問い合わせ先＞－－－－－－－－－－－－－ <br />
 株式会社アクティオ  技術部  企画計画課  <br />
 東京都中央区日本橋 3-12-2  朝日ビルヂング 6 階 <br />
 TEL03-6680-9254  <br />
 担当：菅原、戸張 <br />
 －－－－－－－－－－－－－－－－－－－－－－  ');


--
-- Data for Name: t_sendinfo; Type: TABLE DATA; Schema: public; Owner: malmaga_system
--

INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'osaka-tetsuro@aktio.co.jp', 3, '株式会社アクティオ', 'IT推進課', '', '大坂　哲郎GMAIL', 0, '2014-07-05 10:45:02.186934');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'floyd0107@gmail.com', 3, '大成建設株式会社', '土木本部', '機械部', '大坂　哲郎個人', 0, '2014-07-05 10:45:06.804433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'akt09072544352@docomo.ne.jp', 3, '', '清水建設㈱', '機材部', '大坂　哲郎docomo', 0, '2014-07-05 10:45:07.020339');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'floyd0107@hotmail.co.jp', 3, 'THAITEC-RENTAL.Ltd', '', 'sales', '大坂　哲郎OUTLOOK', 0, '2014-07-05 10:45:10.285843');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'osaka-tetsuro@akt-g.jp', 3, '', 'ああああ', '', '大坂　哲郎GMAIL2', 0, '2014-07-05 10:45:16.951438');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'y_fukuzaki@ymail.plala.or.jp', 3, '「会社名」', '「部署名１」', '「部署名2」', 'ぷららさん', 0, '2014-07-05 10:45:17.305599');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'urupapa@yahoo.co.jp', 3, '「会社名」', '「部署名１」', '「部署名2」', 'ヤフー', 0, '2014-07-05 10:45:18.011729');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'kawasaki@magnus-sys.co.jp', 3, 'マグナスシステムズ株式会社', '代表取締役', '', '川崎', 0, '2014-07-05 10:45:18.185358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'f-tanaka@magnus-sys.co.jp', 3, 'マグナスシステムズ株式会社', '', '', '田中', 0, '2014-07-05 10:45:18.302347');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553396, 'fukuzaki@mediaclip.co.jp', 3, 'メディアクリップ株式会社', '', '', '福崎', 0, '2014-07-05 10:45:18.635692');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553398, 'fukuzaki@magnus-sys.co.jp', 3, '「会社名」', '「部署名１」', '「部署名2」', '「ご担当者名」', 0, '2014-07-07 14:31:33.880775');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553398, 'f-tanaka@magnus-sys.co.jp', 3, '株式会社マグナスシステムズ', 'システム開発事業部', '', '田中様', 0, '2014-07-07 15:35:04.950404');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (553398, 'fukuzaki@magnus-sys.co.jp', 3, '株式会社マグナスシステムズ', 'システム開発事業部', '', '福崎様', 0, '2014-07-07 15:45:23.187529');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (404751, 'osaka-tetsuro@aktio.co.jp', 3, '株式会社アクティオ', 'IT推進課', '', '大坂　哲郎GMAIL', 0, '2014-07-07 20:37:58.808741');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (404751, 'floyd0107@gmail.com', 3, '大成建設株式会社', '土木本部', '機械部', '大坂　哲郎個人', 0, '2014-07-07 20:38:03.652023');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (404751, 'akt09072544352@docomo.ne.jp', 3, '', '清水建設㈱', '機材部', '大坂　哲郎docomo', 0, '2014-07-07 20:38:03.842646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (404751, 'floyd0107@hotmail.co.jp', 3, 'THAITEC-RENTAL.Ltd', '', 'sales', '大坂　哲郎OUTLOOK', 0, '2014-07-07 20:38:06.801228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (404751, 'osaka-tetsuro@akt-g.jp', 3, '', 'ああああ', '', '大坂　哲郎GMAIL2', 0, '2014-07-07 20:38:10.802759');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (574053, 'floyd0107@gmail.com', 3, '株式会社アクティオ', '情報システムブ', '大坂　哲郎', '', 0, '2015-04-17 17:41:33.568689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (574053, 'floyd0107@gmail.com', 3, '株式会社アクティオ', '情報システムブ', '大坂　哲郎', '', 0, '2015-04-17 17:41:35.043863');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (574053, 'floyd0107@hotmail.co.jp', 3, '株式会社アクティオ', '情報システムブ', '大坂　哲郎', '', 0, '2015-04-17 17:41:36.831031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (574053, 'floyd0107@hotmail.co.jp', 3, '株式会社アクティオ', '情報システムブ', '大坂　哲郎', '', 0, '2015-04-17 17:41:38.105918');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'osaka-tetsuro@aktio.co.jp', 3, 'アクティオ', '', '', '大坂', 0, '2015-04-17 18:38:59.322124');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'tobari-takahiko@aktio.co.jp', 3, 'アクティオ', '', '', '戸張', 0, '2015-04-17 18:39:04.256284');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'chiharu-oka@toenec.co.jp', 3, '株式会社トーエネック', '東京本部　総務部　安全環境グループ', '', '岡　千春', 0, '2015-04-17 18:39:04.713711');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'hideo_yoshida@toyobo.jp', 3, '東洋紡株式会社　総合研究所', '機能材開発研究所　ファイバー・不織布開発グループ', '', '吉田　英夫', 0, '2015-04-17 18:39:05.186405');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'shimabe-geomelt@kje.biglobe.ne.jp', 3, '株式会社アイエスブイ・ジャパン', '', '', '島邊　賢一郎', 0, '2015-04-17 18:39:10.593585');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'br-toiawase@br-create.com', 3, '株式会社ビー・アール・クリエイト', '', '', '秋葉　直樹', 0, '2015-04-17 18:39:11.861862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'hide.tomiyama@me.tomo-e.co.jp', 3, '巴工業株式会社　サガミ工場', '機械本部　生産管理部　生産技術部', '', '冨山　秀樹', 0, '2015-04-17 18:39:25.824931');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'takami@ibokin.co.jp', 3, '株式会社イボキン', '', '', '高見　武志', 0, '2015-04-17 18:40:35.576999');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'tshintani@zaohnet.co.jp', 3, '蔵王産業株式会社', '', '', '新谷　知章', 0, '2015-04-17 18:40:39.540747');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'floyd0107@gmail.com', 3, '株式会社アクティオ', '情報システムブ', '', '大坂　哲郎', 0, '2015-04-17 18:58:13.390503');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (693572, 'floyd0107@hotmail.co.jp', 3, '株式会社アクティオ', '情報システムブ', '', '大坂　哲郎', 0, '2015-04-17 18:58:16.580948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'chiharu-oka@toenec.co.jp', 0, '株式会社トーエネック', '東京本部　総務部　安全環境グループ', '', '岡　千春', 0, '2015-04-17 19:05:01.081309');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hideo_yoshida@toyobo.jp', 0, '東洋紡株式会社　総合研究所', '機能材開発研究所　ファイバー・不織布開発グループ', '', '吉田　英夫', 0, '2015-04-17 19:05:01.616074');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shimabe-geomelt@kje.biglobe.ne.jp', 0, '株式会社アイエスブイ・ジャパン', '', '', '島邊　賢一郎', 0, '2015-04-17 19:05:06.775678');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'br-toiawase@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '秋葉　直樹', 0, '2015-04-17 19:05:08.615106');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hide.tomiyama@me.tomo-e.co.jp', 0, '巴工業株式会社　サガミ工場', '機械本部　生産管理部　生産技術部', '', '冨山　秀樹', 0, '2015-04-17 19:05:20.7122');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takami@ibokin.co.jp', 0, '株式会社イボキン', '', '', '高見　武志', 0, '2015-04-17 19:06:27.822488');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tshintani@zaohnet.co.jp', 0, '蔵王産業株式会社', '', '', '新谷　知章', 0, '2015-04-17 19:06:32.054097');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-sakano@iwafuji.co.jp', 0, 'イワフジ工業株式会社', '営業部販売推進課', '', '坂野　勝', 0, '2015-04-17 19:09:27.941676');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.daniello@wam.it', 0, 'SPECO', '', '', 'Massimo D Aniello', 0, '2015-04-17 19:10:52.693603');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kenzo.nishitani@kubota.com', 0, 'クボタシーアイ株式会社', 'マーケティング推進部', '', '西谷　憲三', 0, '2015-04-17 19:10:59.20107');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a2105@n-koei.co.jp', 0, '日本工営株式会社', '電力事業本部　福島事業所', '', '岡田　等', 0, '2015-04-17 19:10:59.680246');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-nakano@i-mitac.com', 0, '株式会社東北マイタック', '営業部', '', '仲野　功也', 0, '2015-04-17 19:11:00.015854');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsuyoshi@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '松吉　満', 0, '2015-04-17 19:11:06.98866');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-higashi@nanyo.co.jp', 0, '株式会社南陽', '建機事業本部　長崎支店', '', '東　崇史', 0, '2015-04-17 19:11:07.347547');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'rishikaw@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '営業統括部　営業戦略室', '', '石川　隆一', 0, '2015-04-17 19:11:08.932255');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-kawai@sknet.senko.co.jp', 0, 'センコー株式会社', 'ケミカル物流営業本部', '', '河合　利広', 0, '2015-04-17 19:11:09.595888');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'g-nagata@sknet.senko.co.jp', 0, 'センコー株式会社', 'ケミカル物流営業本部', '', '長田　源久', 0, '2015-04-17 19:11:10.094824');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fj.m-kanazawa@tobuunyu.co.jp', 0, '東武運輸株式会社', '総務部', '', '金沢　稔', 0, '2015-04-17 19:11:37.45386');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-amakawa@tokyo-newmarket.jp', 0, '公益財団法人東京都中小企業振興公社', '', '', '天川　良正', 0, '2015-04-17 19:11:42.952768');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sekine@sanwakizai.co.jp', 0, '三和機材株式會社', '技術部　開発グループ', '', '関根　延明', 0, '2015-04-17 19:16:43.378089');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'abe@sanwakizai.co.jp', 0, '三和機材株式會社', '営業本部　営業部　東京本社', '', '阿部　賢一', 0, '2015-04-17 19:21:43.71967');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'seisou@mail.city.noda.chiba.jp', 0, '野田市役所', '環境部　清掃計画課', '', '長嶋　一浩', 0, '2015-04-17 19:21:44.353427');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-maru@lion.co.jp', 0, 'ライオンケミカル株式会社', 'ファインケミカル事業所　業務課', '', '丸本　太一', 0, '2015-04-17 19:21:47.408649');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yazaki@nichinetu.co.jp', 0, '日本電熱株式会社', '', '', '矢崎　陽一', 0, '2015-04-17 19:21:52.557734');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeishi.manabu@ad-hzm.co.jp', 0, '株式会社安藤・間', '技術本部　技術研究所　先端技術研究部', '', '武石　学', 0, '2015-04-17 19:21:59.604618');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'wumengru@tfen.cn', 0, 'TONGFANG ENVIRONMENT', '', '', 'Mengru Wu', 0, '2015-04-17 19:26:05.277277');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kskutani@ze-energy.net', 0, '株式会社ZEエナジー', '技術部', '', '角谷　哲哉', 0, '2015-04-17 19:26:12.156021');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'showa-jidosya@washio.co.jp', 0, '株式会社昇和自動車', '営業本部', '', '熊田　武彦', 0, '2015-04-17 19:26:12.418295');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fuji-sigen2@aw.wakwak.com', 0, '藤沢市資源回収協同組合', '', '', '金子　義之', 0, '2015-04-17 19:26:26.118276');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashi-kazunori@motec-co.jp', 0, 'エムオーエー工事株式会社', '', '', '高橋　和紀', 0, '2015-04-17 19:26:37.804288');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'maru@matec-inc.co.jp', 0, '株式会社マテック', '', '', '丸山　貢', 0, '2015-04-17 19:26:38.632522');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroaki-kuroda@nikkeikin.co.jp', 0, '日本軽金属株式会社', '蒲原製造所　土木課', '', '黒田　裕昭', 0, '2015-04-17 19:26:42.035341');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's.hayama@tyk.jp', 0, '株式会社TYK', 'ファインセラミックス部', '', '羽山　清寿', 0, '2015-04-17 19:26:48.623691');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazu-sato@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水エンジニアリング部　技術工事課', '', '佐藤　和宏', 0, '2015-04-17 19:26:53.76313');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'itot@mf.point.ne.jp', 0, '武蔵工業大学', '', '', '伊藤　泰郎', 0, '2015-04-17 19:26:58.781301');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsusima@utimi-u.jp', 0, '株式会社マツシマ', '', '', '内海　健一', 0, '2015-04-17 19:27:00.15052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sii7738@gmail.com', 0, '株式会社長門建設', '工事部', '', '椎塚　一晴', 0, '2015-04-17 19:27:07.075167');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yukihiro_yagishita@ihi.co.jp', 0, '株式会社IHI', '航空宇宙事業本部　瑞穂工場　生産技術部', '', '八木下　幸浩', 0, '2015-04-17 19:27:09.060094');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inada.tomohisa@tkkss.co.jp', 0, '株式会社東洋機工製作所', '業務部　管理課', '', '稲田　智久', 0, '2015-04-17 19:27:10.402706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takagi@miyaharadoboku.com', 0, '株式会社宮原土木建設', '工事部', '', '高木　洋', 0, '2015-04-17 19:27:11.284288');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'miyahara@miyaharadoboku.com', 0, '株式会社宮原土木建設', '', '', '宮原　清太', 0, '2015-04-17 19:27:11.620908');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tk-masuda@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部　営業技術課', '', '増田　匠', 0, '2015-04-17 19:27:12.966368');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ksakamoto@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　販売部長', '', '坂本　克美', 0, '2015-04-17 19:27:23.277625');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akiyama@t-kizai.co.jp', 0, '東京機材工業株式会社', '', '', '秋山　曻', 0, '2015-04-17 19:27:24.431957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Kondou.Mitsunori@ma.mee.co.jp', 0, '三菱電機エンジニアリング株式会社', '伊丹事務所　技術標準情報センター　技術管理課', '', '近藤　充儀', 0, '2015-04-17 19:27:26.224282');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akimoto@k-hokusei.co.jp', 0, '九州北清株式会社', '業務部　保全課', '', '秋本　雄樹', 0, '2015-04-17 19:27:26.459768');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'miyoshi1041@yonkei.co.jp', 0, '四国計測工業株式会社', '営業開発本部　開発部', '', '三好　仁志', 0, '2015-04-17 19:27:27.283902');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mseko@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '首都圏支社　営業1部', '', '世古　学', 0, '2015-04-17 19:27:32.607412');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takagi-s@waste-paper.jp', 0, '株式会社ECO兼子', '名古屋港営業所', '', '髙木　豪', 0, '2015-04-17 19:27:37.771055');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'minamikawa1968@yahoo.co.jp', 0, '株式会社環境支援', '', '', '南川　浩幸', 0, '2015-04-17 19:27:38.716484');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'soumu@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　総務部総務課', '', '山田　信幸', 0, '2015-04-17 19:27:41.344089');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshimura-ts@n-koei.jp', 0, '日本工営株式会社', 'コンサルタント海外事業本部　地圏防災室', '', '吉村　司', 0, '2015-04-17 19:27:41.852283');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'syk-noda@marui.or.jp', 0, 'マルイ食品株式会社', '鶏肉事業本部　鶏肉製造部', '', '大堂　泰裕', 0, '2015-04-17 19:27:43.07773');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yomatsuda@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　', '', '松田　芳隆', 0, '2015-04-17 19:27:49.937826');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsuda_n@hitachizosen.co.jp', 0, '日立造船株式会社', '佐野市みかもクリーンセンター　Hitz佐野運営事務所', '', '松田　則秋', 0, '2015-04-17 19:27:50.399925');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yasutaka@shimadzu.co.jp', 0, '株式会社島津製作所', '地球環境管理室', '', '太田　泰能', 0, '2015-04-17 19:28:26.432079');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mihanaza@maruo-cal.co.jp', 0, '丸尾カルシウム株式会社', '生産本部　生産管理部', '', '花崎　実', 0, '2015-04-17 19:28:31.405777');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'abe@taisei-kigyo.co.jp', 0, '大成企業株式会社', '', '', '阿部　哲弥', 0, '2015-04-17 19:28:32.557006');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'keiri@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　経理部', '', '福田　悦雄', 0, '2015-04-17 19:28:33.55028');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r-asahina@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部　技術課', '', '朝比奈　遼', 0, '2015-04-17 19:28:34.751521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sanpai@kanekosyouji.com', 0, '金子商事株式会社', '', '', '金子　昭雄', 0, '2015-04-17 19:28:34.989724');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsuura.yutaka-s@smtpfc.jp', 0, '三井住友トラスト・パナソニックファイナンス株式会社', '北海道支店　法人営業課', '', '松浦　裕', 0, '2015-04-17 19:28:48.692198');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hachioji@szk-shouji.co.jp', 0, '株式会社八王子鈴機', '', '', '玉那覇　明', 0, '2015-04-17 19:28:48.929415');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanabe@yamaichishoji.co.jp', 0, '株式会社山一商事', '営業本部　営業一部', '', '田辺　政彦', 0, '2015-04-17 19:28:58.350601');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'maeda-kenji@jfe-eng.co.jp', 0, 'JFEエンジニアリング株式会社', '公共サービス事業部　運営管理部　運営室', '', '前田　健次', 0, '2015-04-17 19:29:02.663518');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shiono-ope@corp.khi.co.jp', 0, 'KEE環境工事株式会社', '営業一部　東部営業グループ', '', '塩野　直樹', 0, '2015-04-17 19:29:04.053053');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sugimoto-ope@corp.khi.co.jp', 0, 'KEE環境工事株式会社', '東京工事部　第二グループ', '', '杉本　秀平', 0, '2015-04-17 19:29:04.789898');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-wakana@ac.daido.co.jp', 0, '大同特殊鋼株式会社', '知多工場　環境室', '', '若菜　努', 0, '2015-04-17 19:29:10.368477');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nagino@toyomf.co.jp', 0, '株式会社東洋製作所', '東京支店', '', '薙野　太', 0, '2015-04-17 19:29:11.487963');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hnitanda@soc.co.jp', 0, '住友大阪セメント株式会社', '環境事業部　企画開発グループ', '', '二反田　英人', 0, '2015-04-17 19:29:21.783209');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiromoto_momose@ryuseki.co.jp', 0, 'りゅうせき商事株式会社', '環境事業部　てぃーだ', '', '百瀬　裕元', 0, '2015-04-17 19:29:27.964245');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshimasa_suzuki@nishimatsu.co.jp', 0, '西松建設株式会社', '土木事業本部', '', '鈴木　嘉昌', 0, '2015-04-17 19:29:34.1293');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takazawa@okada-ind.co.jp', 0, 'オカダインダストリ株式会社', '関東営業所', '', '髙澤　直樹', 0, '2015-04-17 19:29:34.334367');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tatsuya.saito@ibjl.co.jp', 0, '興銀リース株式会社', '建機営業部', '', '齋藤　辰也', 0, '2015-04-17 19:29:42.3888');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-matsumoto@nissen.ichimiya.co.jp', 0, '日泉ポリテック株式会社', '営業本部　東京営業部　東京営業所', '', '松本　拓也', 0, '2015-04-17 19:29:44.535376');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akiyama.syuntarou@ichimiya.co.jp', 0, '日泉ポリテック株式会社', '営業部　東京営業所', '', '秋山　峻太郎', 0, '2015-04-17 19:29:45.497139');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'utsugi.koichi@kiso.co.jp', 0, '基礎地盤コンサルタンツ株式会社', '関東支社　環境技術センター', '', '打木　弘一', 0, '2015-04-17 19:29:49.859015');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuki-kubo@jfe-steel.co.jp', 0, 'JFEスチール株式会社', '大阪厚板・鋼管営業部　厚板室', '', '久保　幸徳', 0, '2015-04-17 19:29:50.581647');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-miyakoshi@furukawakk.co.jp', 0, '古河ロックドリル株式会社', '吉井工場　開発設計部', '', '宮越　征一', 0, '2015-04-17 19:30:02.132058');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryo_taguchi@orix.co.jp', 0, 'オリックス株式会社', '事業法人営業第一部　第四チーム', '', '田口　亮', 0, '2015-04-17 19:30:05.206139');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'goda@mmc.co.jp', 0, '三菱マテリアルテクノ株式会社', '資源・環境・エネルギー事業部', '', '合田　覚', 0, '2015-04-17 19:30:06.344383');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-sugata@sanee.co.jp', 0, 'サンエー工業株式会社', '技術・開発部門統轄　技術本部', '', '菅田　則行', 0, '2015-04-17 19:30:12.576798');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'jirou-kondou@ya.sumitomo-chem.co.jp', 0, '株式会社イージーエス', '環境技術部', '', '近藤　治郎', 0, '2015-04-17 19:30:28.459231');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-kubota@kaisuimaren.co.jp', 0, '株式会社カイスイマレン', '営業部', '', '久保田　隆', 0, '2015-04-17 19:30:33.6021');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashi@okadass.com', 0, '株式会社岡田製作所', '技術部　設計課', '', '高橋　俊介', 0, '2015-04-17 19:30:34.214378');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshino@marusan-s.com', 0, '丸三商事株式会社', '営業部　第四課', '', '芳野　勝', 0, '2015-04-17 19:30:34.504794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-uda@nangoku-group.com', 0, '南国殖産株式会社', '機械設備事業部　建設産業機械課', '', '宇田　洋', 0, '2015-04-17 19:30:35.341301');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tatsunosuke@kotobuki-c.net', 0, '寿建設株式会社', '', '', '森崎　達之助', 0, '2015-04-17 19:30:36.35709');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanaka-satohiko@mopera.net', 0, 'オフィス里', '', '', '田中　智彦', 0, '2015-04-17 19:30:38.332669');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'pj@p-and-j.jp', 0, 'P&J株式会社', '', '', '許　峻栄', 0, '2015-04-17 19:30:40.057247');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-yasuda@asahikawa-scale.co.jp', 0, '旭川計量機株式会社', '産業機器部門', '', '安田　圭吾', 0, '2015-04-17 19:30:40.536003');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-fujio@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '北関東営業部　北関東支店　第二チーム', '', '藤岡　祐大', 0, '2015-04-17 19:30:40.834068');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.yamamoto@g-sanyu.co.jp', 0, '早来工営株式会社', '', '', '山本　孝次', 0, '2015-04-17 19:30:47.519197');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-uraya@sanee.co.jp', 0, 'サンエー工業株式会社', '営業統括（シールド・営業エンジニアリング・東日本・西日本）', '', '浦矢　英雄', 0, '2015-04-17 19:30:48.17854');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakanihon@sanee.co.jp', 0, 'サンエー工業株式会社', '営業統括　営業エンジニアリング事業部', '', '岸　大輔', 0, '2015-04-17 19:30:50.095298');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kikuchi-hide@s-chikuro.co.jp', 0, '佐藤築炉工業株式会社', '', '', '菊池　秀男', 0, '2015-04-17 19:30:51.41547');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kawasima.sanzi@khaki.plala.or.jp', 0, '合同会社セイル', '', '', '川嶋　三次', 0, '2015-04-17 19:30:51.749676');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sagawa.h@sanwa-renotech.com', 0, 'サンワ・リノテック株式会社', '', '', '佐川　博敏', 0, '2015-04-17 19:30:54.173139');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-miyauchi@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '宮内　真利代', 0, '2015-04-17 19:30:54.838706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'daiki-yamamoto@marujun.jp', 0, '丸順重工株式会社', '業務部', '', '山本　大規', 0, '2015-04-17 19:30:55.861068');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.kusamoto@icm.co.jp', 0, '伊藤忠建機株式会社', '直轄営業事業部　環境土木部', '', '草本　昌志', 0, '2015-04-17 19:31:02.143284');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shota.inuzuka@nissei-jp.co.jp', 0, '日成共益株式会社', '開発部　開発チーム', '', '犬塚　翔太', 0, '2015-04-17 19:31:08.906085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-kimura@toyostb.co.jp', 0, '株式会社東洋スタビ', '宮城営業所', '', '木村　茂紀', 0, '2015-04-17 19:31:44.228173');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ishida.m@sangyo-leasing.co.jp', 0, '産業リーシング株式会社', '', '', '石田　将直', 0, '2015-04-17 19:31:44.800024');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kuro.teru1126@gmail.com', 0, '', '', '', '黒澤　照男', 0, '2015-04-17 19:32:01.984351');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tad.takamatsu@ted-corp.co.jp', 0, '熱技術開発株式会社', '', '', '高松　忠彦', 0, '2015-04-17 19:32:03.491158');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ka-sato@j-scube.com', 0, '株式会社ジェイエスキューブ', 'ソリューション事業部　広域営業本部', '', '佐藤　和彦', 0, '2015-04-17 19:32:32.482253');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-nakano@tokyo-newmarket.jp', 0, '公益財団法人東京都中小企業振興公社', '', '', '中野　竹夫', 0, '2015-04-17 19:32:41.253943');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'murakami_ta@nissuicon.co.jp', 0, '株式会社日水コン　', '事業統括本部', '', '村上　孝雄', 0, '2015-04-17 19:32:45.690806');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'isshiki.akimitsu@mitsumi.co.jp', 0, 'ミツミ電機株式会社', '品質・環境本部　環境推進部', '', '一色　朗満', 0, '2015-04-17 19:32:51.944124');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sakasita.m@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木部機械グループ', '', '坂下　誠', 0, '2015-04-17 19:32:58.120474');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takemura.k@sanwa-renotech.com', 0, 'サンワ・リノテック株式会社', '', '', '竹村　青史', 0, '2015-04-17 19:33:09.712357');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kosaka-1811@r-nishiken.co.jp', 0, '株式会社ニシケン', '東京支店', '', '小坂　龍夫', 0, '2015-04-17 19:33:16.133797');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sasaki.h@east-core.co.jp', 0, '株式会社イーストコア', '環境営業部', '', '笹木　寛彦', 0, '2015-04-17 19:33:16.861573');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.waida@icm.co.jp', 0, '伊藤忠建機株式会社', '直轄営業事業部', '', '和井田　将史', 0, '2015-04-17 19:33:20.912857');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kawano@tryan.co.jp', 0, 'トライアン株式会社', '環境プロジェクト室', '', '河野　英二', 0, '2015-04-17 19:39:01.392778');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-yamaki@jwglass.co.jp', 0, 'JWガラスリサイクル株式会社', '', '', '八巻　克', 0, '2015-04-17 19:39:02.058598');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-kasahara@serachem.co.jp', 0, 'セラケム株式会社', '営業本部東京営業部', '', '笠原　省吾', 0, '2015-04-17 19:39:03.540972');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'murakami@eiwa.net', 0, '永和鉄工株式会社', '', '', '村上　賢治', 0, '2015-04-17 19:39:08.290395');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanahashi@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社　北関東支店', '北関東支店　営業課', '', '棚橋　諒', 0, '2015-04-17 19:39:09.53521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'saga@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社', '', '', '佐賀　誠一', 0, '2015-04-17 19:39:17.343485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kenji.k@miike.co.jp', 0, '株式会社御池鐵工所', '設計部　二課', '', '河井　健治', 0, '2015-04-17 19:39:25.766622');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Yamashita.Hajime@ds.MitsubishiElectric.co.jp', 0, '三菱電機株式会社　関越支店', 'FAシステム部　機器第一課　謙　機械第二課', '', '山下　始', 0, '2015-04-17 19:39:27.052521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shinohara.k@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木部', '', '篠原　慶二', 0, '2015-04-17 19:39:28.947645');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kansa@po.mizota.co.jp', 0, '株式会社ミゾタ', '監査室', '', '直塚　英樹', 0, '2015-04-17 19:39:33.361909');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'katagi@sakura-p.net', 0, '株式会社桜川ポンプ製作所', '海外ブロック', '', '片木　正弘', 0, '2015-04-17 19:39:33.879402');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'e-yanaoka@furukawakk.co.jp', 0, '古河ロックドリル株式会社', '吉井工場　生産部　生産二課', '', '栁岡　栄市', 0, '2015-04-17 19:39:45.582533');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ohkubo@hyobun.co.jp', 0, '株式会社兵庫分析センター', '営業部　営業一課', '', '大久保　博幸', 0, '2015-04-17 19:39:47.09494');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kondo_home@yahoo.co.jp', 0, '調和工業株式会社', '海外部', '', '近藤　幸男', 0, '2015-04-17 19:39:49.428346');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masaru_kobayashi@toyobo.jp', 0, '東洋紡株式会社', 'コーポレート研究所　企画・探索グループ', '', '小林　真申', 0, '2015-04-17 19:39:56.885121');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-nishida@takatoshi.co.jp', 0, '高俊工業株式会社', '企画開発グループ　法務グループ', '', '西田　圭一郎', 0, '2015-04-17 19:39:57.309706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kouji-matsuzaki@kgflowtechno.co.jp', 0, '株式会社KGフローテクノ', '営業部　環境土木課', '', '松崎　浩二', 0, '2015-04-17 19:39:57.588545');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'design@po.mizota.co.jp', 0, '株式会社ミゾタ', '環境技術研究所', '', '山下　明美', 0, '2015-04-17 19:39:58.126593');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fukuta@hitachizosen.co.jp', 0, '日立造船株式会社', '環境・エネルギー・プラント本部　環境ソリューション第2技術部　2グループ', '', '福田　有哉', 0, '2015-04-17 19:40:00.245588');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Daiji.Yamada@morita119.com', 0, '株式会社モリタエコノス', '技術部　技術二課', '', '山田　大二', 0, '2015-04-17 19:40:20.436829');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ashida-k@unit-signs.co.jp', 0, 'ユニット株式会社', '商品部　購買課', '', '芦田　喜代美', 0, '2015-04-17 19:40:23.286335');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tamagumi@bb.wakwak.com', 0, '株式会社玉組', '', '', '鈴木　康裕', 0, '2015-04-17 19:40:35.726489');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'te.ueda@omltd.co.jp', 0, '株式会社オーエム製作所', '技術・開発部　宍道開発室', '', '植田　哲也', 0, '2015-04-17 19:40:36.180435');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'spraying@orchid.plala.or.jp', 0, '有限会社RLP', '', '', '廣瀬　岳', 0, '2015-04-17 19:40:36.512245');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-kawarada@takatoshi.co.jp', 0, '高俊工業株式会社', '再資源化推進部　再資源化推進グループ', '', '河原田　友輔', 0, '2015-04-17 19:40:57.111364');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h_fukui15@ybb.ne.jp', 0, '福井経営', '神奈川経営支援センター', '', '福井　浩', 0, '2015-04-17 19:40:57.840026');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hirose-n01@kandenko.co.jp', 0, '株式会社関電工', '神奈川支店　安全環境品質推進グループ', '', '松野　奈央子', 0, '2015-04-17 19:41:03.59132');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ki00-sakurai@city.yokohama.jp', 0, '横浜市資源循環局　鶴見工場', '', '', '櫻井　清', 0, '2015-04-17 19:41:04.051668');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'gijyutsu@miike.co.jp', 0, '株式会社御池鐵工所', '設計部　二課', '', '高橋　祐介', 0, '2015-04-17 19:41:12.341371');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'c-hashimoto@fukumiinc.co.jp', 0, '福味商事株式会社', '営業部　営業課', '', '橋本　忠二', 0, '2015-04-17 19:41:20.695851');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-saitou@fukumiinc.co.jp', 0, '福味商事株式会社', '営業部　営業課', '', '斎藤　直樹', 0, '2015-04-17 19:41:21.2035');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-kanai@adeka.co.jp', 0, 'ADEKA総合設備株式会社', 'プラント技術本部　技術一部　2グループ', '', '金井　俊祐', 0, '2015-04-17 19:41:23.320286');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuka_yoshida@ihi.co.jp', 0, '株式会社IHI', '技術開発本部　総合開発センター　化学システム開発部', '', '吉田　有香', 0, '2015-04-17 19:41:25.289724');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-masuda@jp.seika.com', 0, '西華産業株式會社', '営業統括本部', '', '増田　博久', 0, '2015-04-17 19:41:31.851708');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mizunos@jp.seika.com', 0, '西華産業株式會社', '経営企画本部　事業開発部', '', '水野　智', 0, '2015-04-17 19:41:53.428513');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-yasuyama@jp.seika.com', 0, '西華産業株式會社', '経営企画本部　事業開発部', '', '安山　博孝', 0, '2015-04-17 19:41:59.484479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.nanjou@washino-kiko.co.jp', 0, 'ワシノ機工株式會社', '', '', '南條　武司', 0, '2015-04-17 19:42:08.86716');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hisa.oomura@toshiba.co.jp', 0, '株式会社東芝　電力システム社', '電力・社会システム技術開発センター　化学システム・プロセス開発部　再処理・プロセス技術開発担当', '', '大村　恒雄', 0, '2015-04-17 19:42:10.137983');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-iwasa@tske.co.jp', 0, '月島環境エンジニアリング株式会社', 'プロポーザル本部　営業部', '', '岩佐　克彦', 0, '2015-04-17 19:42:16.505408');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'th1994213@tohatu.co.jp', 0, '東北発電工業株式会社', '東京営業所', '', '高野　博幸', 0, '2015-04-17 19:42:22.375815');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'dmiura@pacificgolf.co.jp', 0, 'パシフィックゴルフマネージメント株式会社', '運営部　購買グループ', '', '三浦　大機', 0, '2015-04-17 19:42:22.776119');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.suimon@icm.co.jp', 0, '伊藤忠建機株式会社', '', '', '水門　昌宏', 0, '2015-04-17 19:42:22.940787');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'jhel-hoshino@kve.biglobe.ne.jp', 0, '株式会社ジェル', '', '', '星野　忠厚', 0, '2015-04-17 19:42:43.976894');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ichiro-tanji@fukusei.co.jp', 0, '株式会社福島製作所', '', '', '丹治　一郎', 0, '2015-04-17 19:42:45.210094');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.goda@ebisu-eco.co.jp', 0, 'エビス紙料株式会社', '', '', '合田　浩治', 0, '2015-04-17 19:47:07.518692');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshinori_senoo@3bi.co.jp', 0, '株式会社三美産業', '情報管理部', '', '妹尾　芳訓', 0, '2015-04-17 19:47:10.743542');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeno_k@hitachizosen.co.jp', 0, '日立造船株式会社', '環境・エネルギー・プラント本部　環境営業統括部　環境東京営業部', '', '竹埜　晃平', 0, '2015-04-17 19:47:12.345277');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-tsukasaki@iizuka-denki.co.jp', 0, '飯塚電機工業株式会社', '佐賀営業所', '', '塚崎　初雄', 0, '2015-04-17 19:47:12.739311');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yasumasa-nihei@fukusei.co.jp', 0, '株式会社福島製作所', '陸機事業部　陸機営業部', '', '二瓶　泰昌', 0, '2015-04-17 19:47:16.269474');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'goto-akane@motec-co.jp', 0, '株式会社エムオーテック', '東京本社　技術部　製図業務課', '', '後藤　茜', 0, '2015-04-17 19:47:27.927707');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroshi-nishitani@chisui.co.jp', 0, '東邦地水株式会社', '東京支社　企画営業部', '', '西谷　洋', 0, '2015-04-17 19:47:35.640863');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nomura.m@jcity.maeda.co.jp', 0, '前田建設工業株式会社　東京土木支店', '土木部　機電グループ', '', '野村　政志', 0, '2015-04-17 19:47:36.191031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inada-kms@corp.khi.co.jp', 0, '川崎重工業株式会社', 'ガスターピン・機械カンパニー　ガスターピンビジネスセンター　産業ガスターピンシステム統括部　プロジェクト部　常用発電課', '', '稲田　篤彦', 0, '2015-04-17 19:48:55.964153');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ippei-taniguchi@chisui.co.jp', 0, '東邦地水株式会社', '事業本部', '', '谷口　一平', 0, '2015-04-17 19:49:08.45393');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahiro.orikasa@de-denkosha.co.jp', 0, '株式会社電巧社', '営業本部　ソリューション事業部', '', '折笠　貴廣', 0, '2015-04-17 19:49:08.764818');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kotaro.kazama@de-denkosha.co.jp', 0, '株式会社電巧社', '営業本部　役員待遇', '', '風間　広太郎', 0, '2015-04-17 19:49:08.99275');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tkawamo@ryoukou.co.jp', 0, '菱光産業株式会社', '機材部', '', '河本　徹夫', 0, '2015-04-17 19:49:11.641298');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yama@kimuradoken.jp', 0, '株式会社木村土建', '環境部', '', '山下　敦志', 0, '2015-04-17 19:49:12.126862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tumetani@ryoukou.co.jp', 0, '菱光産業株式会社', '機材部', '', '梅谷　健', 0, '2015-04-17 19:49:13.026607');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ys@yanagitasangyou.co.jp', 0, '株式会社柳田産業', '', '', '柳田　栄喜', 0, '2015-04-17 19:49:13.774568');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsuji-kazuo@motec-co.jp', 0, '株式会社エムオーテック', '東京本社　工事部', '', '辻　和男', 0, '2015-04-17 19:49:26.80712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fukumoto-m01@kandenko.co.jp', 0, '株式会社関電工', '戦略事業本部　環境エネルギー発電事業部', '', '福本　雅邦', 0, '2015-04-17 19:49:32.968456');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ya-fukuda@furukawakk.co.jp', 0, '古河ロックドリル株式会社', '九州支店　営業課', '', '福田　靖信', 0, '2015-04-17 19:49:53.163758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-kanase@nsr-toyama.co.jp', 0, '日本総合リサイクル株式会社', '非鉄部', '', '金瀬　和幸', 0, '2015-04-17 19:49:53.888633');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kiichiro_arai@scm.shi.co.jp', 0, '住友建機販売株式会社', '営業企画部', '', '荒木　希一郎', 0, '2015-04-17 19:49:58.187179');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'adachi@ryoki-japan.co.jp', 0, '株式会社リョーキ', '足立営業所', '', '松田　誠二', 0, '2015-04-17 19:50:03.878858');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h.yokoyama@ryoki-japan.co.jp', 0, '株式会社リョーキ', '足立営業所', '', '横山　尚', 0, '2015-04-17 19:50:09.013744');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koujirou.tomioka@nishio-rent.co.jp', 0, '西尾レントオール株式会社', '栃木営業部　宇都宮営業所', '', '富岡　浩二郎', 0, '2015-04-17 19:50:20.804142');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'refinery@po5.synapse.ne.jp', 0, '株式会社サニタリー', 'リファイナリーセンター', '', '新木　伸哉', 0, '2015-04-17 19:50:21.921902');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kaihatu@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　開発部開発一課', '', '藪田　優助', 0, '2015-04-17 19:50:22.476082');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kikawada.kazuya@ad-hzm.co.jp', 0, '株式会社安藤・間', '技術本部　技術研究所　先端技術研究部', '', '木川田　一弥', 0, '2015-04-17 19:50:29.639838');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@kawamoto-s.co.jp', 0, '河本産業株式会社', '営業部', '', '勝野　太斗', 0, '2015-04-17 19:50:58.277892');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-yamazoe@iac.ihi.co.jp', 0, '株式会社IHIエアロスペース', '品質保証部　品質保証技術グループ', '', '山添　智', 0, '2015-04-17 19:50:59.702559');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'maru3@gray.plala.or.jp', 0, '株式会社丸三興業', '営業部', '', '鈴木　智', 0, '2015-04-17 19:51:00.198236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-yoshikawa@furukawakk.co.jp', 0, '古河産機システムズ株式会社', '東北支店　営業課', '', '吉川　喜夫', 0, '2015-04-17 19:51:10.680351');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuji_sugawara@yoshimura-inc.co.jp', 0, '株式会社ヨシムラ', '統括管理部　品質・環境改善推進課', '', '菅原　優治', 0, '2015-04-17 19:51:11.446107');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fudo-junya@motec-co.jp', 0, '株式会社エムオーテック　東京本社', '営業第三部　営業第三課', '', '不動　準也', 0, '2015-04-17 19:51:23.312161');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yutaka.nakata@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部　開発営業部', '', '中田　裕', 0, '2015-04-17 20:01:09.281567');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yama21921@yahoo.co.jp', 0, 'Dr.KID', '専務執行役員', '', 'Takafumi Yamazaki', 0, '2015-04-17 20:01:13.830152');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakaokenichi@sysken.co.jp', 0, '西日本システム建設株式会社', '営業本部', '', '中尾　憲一', 0, '2015-04-17 20:01:14.590261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'jecs-3@maroon.plala.or.jp', 0, 'ジェックス', '', '', '関口　倫徳', 0, '2015-04-17 20:01:14.966575');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazumasa.ishida@marusei-eco.com', 0, '株式会社丸聖', '', '', '石田　一聖', 0, '2015-04-17 20:01:15.669068');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ina@kyudenko.co.jp', 0, '株式会社九電工', 'エコ事業創生本部　総合研究開発室　先端技術開発グループ', '', '稲富　康利', 0, '2015-04-17 20:01:18.224298');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takuya.hatta@nmm.jx-group.co.jp', 0, 'JX金属苫小牧ケミカル株式会社', 'ESR工場　製造課　環境安全室', '', '八田　拓哉', 0, '2015-04-17 20:01:19.642867');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-satou@toyostb.co.jp', 0, '株式会社東洋スタビ', '機械課', '', '佐藤　貴志', 0, '2015-04-17 20:01:19.853585');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-murata@chutoku-g.co.jp', 0, '株式会社藤井興業', 'エコ事業部', '', '村田　耕平', 0, '2015-04-17 20:01:20.050643');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'honbu@nihonsanpai.co.jp', 0, '日本産業廃棄物処理株式会社', '', '', 'リーダー', 0, '2015-04-17 20:01:21.590644');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'guchi@okadass.com', 0, '株式会社岡田製作所', '技術部　設計課', '', '関口　英昭', 0, '2015-04-17 20:01:21.810657');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'doginoue@amail.plala.or.jp', 0, '日栄商事株式会社', '', '', '井上　隆文', 0, '2015-04-17 20:01:26.393695');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Yoshiaki_Oomori@member.metro.tokyo.jp', 0, '東京都　下水道局', '施設管理部', '', '大森　由明', 0, '2015-04-17 20:01:33.196863');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sakiyama@melodian.co.jp', 0, 'メロディアン株式会社', '三重工場　生産管理課　資材係', '', '嵜山　信二', 0, '2015-04-17 20:01:33.841694');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Hisaki.Izuhara@morita119.com', 0, '株式会社モリタ環境テック', '技術部　設計課', '', '泉原　久輝', 0, '2015-04-17 20:01:40.311365');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'irie-s@kimica.jp', 0, '株式会社キミカ', '製造開発部', '', '入江　聡', 0, '2015-04-17 20:01:40.522825');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akira-yamaguchi@fukusuke-kogyo.co.jp', 0, '福助工業株式会社', '九州支店　営業課', '', '山口　章', 0, '2015-04-17 20:01:45.367131');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'megumi-teraoka@fukusuke-kogyo.co.jp', 0, '福助工業株式会社', '九州支店　業務課', '', '寺岡　惠', 0, '2015-04-17 20:01:46.127634');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'c.yachi@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '谷内　千代美', 0, '2015-04-17 20:01:52.964785');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'seed-shin@taguchi.co.jp', 0, '株式会社田口クリエイト', '販売事業部', '', '千村　信', 0, '2015-04-17 20:02:01.373962');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yumaruya@ku.kumagaigumi.co.jp', 0, '株式会社熊谷組　首都圏支店', '営業部', '', '高橋　裕子', 0, '2015-04-17 20:02:08.160376');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'amoriki@ku.kumagaigumi.co.jp', 0, '株式会社熊谷組　首都圏支店', '営業部', '', '森木　昭裕', 0, '2015-04-17 20:02:15.34089');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'terumoto.9364848@gmail.com', 0, '中山リサイクル産業株式会社', '', '', '照本　賢治', 0, '2015-04-17 20:02:21.135906');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujiki.9364848@gmail.com', 0, '中山リサイクル産業株式会社', '', '', '藤木　仁', 0, '2015-04-17 20:02:27.893838');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'jaewlee@jiuene.com', 0, 'JIU CORPORATION', '', '', 'Lee Jaewon', 0, '2015-04-17 20:02:29.292225');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, '35683u@ube-ind.co.jp', 0, '宇部興産機械株式会社', '産機事業部　産機営業部　産機営業グループ', '', '山川　瑛大', 0, '2015-04-17 20:02:30.213001');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-mako@daikyo-diesel.co.jp', 0, '大京ヂーゼル株式会社', '', '', '眞子　博一', 0, '2015-04-17 20:02:32.019124');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'cri-kai@cc9.ne.jp', 0, '株式会社Cri-Kai', '', '', '栗原　昭', 0, '2015-04-17 20:02:32.645697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sakuma.takashi@ebara.com', 0, '株式会社荏原製作所', '国内事業統括　原子力水処理事業統括部　原子力技術室　水処理設計グループ', '', '佐久間　貴志', 0, '2015-04-17 20:02:33.975509');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakano-kaz@city.kawasaki.jp', 0, '川崎市', '環境局　施設部　施設整備課', '', '中野　和弘', 0, '2015-04-17 20:02:51.201117');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashiyo@nisseicorp.co.jp', 0, '日星産業株式会社', '', '', '高橋　好道', 0, '2015-04-17 20:02:54.798678');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'iwabuchi@toyochemical.com', 0, '東洋ケミカル機工株式会社', 'エネルギー関連事業部', '', '岩渕　信夫', 0, '2015-04-17 20:03:05.228939');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'naka@sakura-p.net', 0, '株式会社桜川ポンプ製作所', '東京支店　営業第1グループ', '', '仲　政孝', 0, '2015-04-17 20:03:05.794926');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kchinda@mecx.co.jp', 0, '株式会社MECX', '工事部　工事第2グループ', '', '陳田　康一', 0, '2015-04-17 20:03:12.084861');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takayuki.nagasu@nmm.jx-group.co.jp', 0, 'JX金属苫小牧ケミカル株式会社', '', '', '長須　貴之', 0, '2015-04-17 20:03:13.06348');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hayashi@mmc.co.jp', 0, '三菱マテリアル株式会社', '経営戦略部門　事業戦略部', '', '林　年治', 0, '2015-04-17 20:05:24.305921');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shikichi.kazuaki@c4.kepco.co.jp', 0, '関西電力株式会社', '研究開発室　エネルギー利用技術研究所　都市・産業エネルギー分野', '', '式地　千明', 0, '2015-04-17 20:05:26.369216');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sugiyama@ce.taisei.co.jp', 0, '大成建設株式会社', '土木本部　プロジェクト部　第三プロジェクト室', '', '杉山　智一', 0, '2015-04-17 20:05:27.376667');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'eiji@nichiei.info', 0, '日栄建設株式会社', '', '', '篠崎　栄治', 0, '2015-04-17 20:05:27.605672');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masahiko.watanabe@kubota.com', 0, 'クボタ環境サービス株式会社', 'リサイクルエンジニアリング部', '', '渡辺　正彦', 0, '2015-04-17 20:07:08.999957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'satou.t@jcity.maeda.co.jp', 0, '前田建設工業株式会社　東京土木支店', '土木部　施工グループ　機電チーム', '', '佐藤　俊幸', 0, '2015-04-17 20:07:09.587881');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'okayama.kazuhiro@kobelco.com', 0, 'コベルコ建機株式会社', '生産本部　広島事業所　製造技術部', '', '岡山　和裕', 0, '2015-04-17 20:07:19.454852');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yimai@mail.kikkoman.co.jp', 0, 'キッコーマン株式会社', '', '', '今井　泰彦', 0, '2015-04-17 20:07:27.11426');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nobuyuki_ienaka@fgl.co.jp', 0, '芙蓉総合リース株式会社', '第二営業部　', '', '家中　信之', 0, '2015-04-17 20:07:55.250025');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ko_nakagawa@orix.co.jp', 0, 'オリックス株式会社', '建機・鉄鋼営業部　建機営業第一チーム', '', '中川　恒', 0, '2015-04-17 20:07:56.266348');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hata@aksys.co.jp', 0, '株式会社AKシステム', '', '', '秦　吉孝', 0, '2015-04-17 20:07:57.033034');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'haruna-t@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '春名　智子', 0, '2015-04-17 20:07:57.538712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kihara-k@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '木原　国弘', 0, '2015-04-17 20:07:57.737157');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-urata@aquaintec.co.jp', 0, 'アクアインテック株式会社', '', '', '浦田　健一', 0, '2015-04-17 20:07:59.418071');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y_itoh@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '', '', '伊藤　吉秀', 0, '2015-04-17 20:07:59.931862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kinoshita@powerbs.co.jp', 0, '株式会社パワーバンクシステム', '', '', '木下　雅章', 0, '2015-04-17 20:08:00.28972');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takashi-hatta@shakkou.co.jp', 0, '株式会社衛生センター', '', '', '八田　髙志', 0, '2015-04-17 20:08:04.192694');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-naruse@toyostb.co.jp', 0, '株式会社東洋スタビ', '営業課', '', '成瀬　慎司', 0, '2015-04-17 20:08:04.435143');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-orimoto@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水技術部　東京技術課', '', '折本　裕介', 0, '2015-04-17 20:08:05.183824');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a-komine@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水技術部　東京技術課', '', '小峯　章', 0, '2015-04-17 20:08:05.516436');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'red@kklp.co.jp', 0, '環境開発工業株式会社', '営業開発部　営業課', '', '安武　健一郎', 0, '2015-04-17 20:08:08.306575');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-tanaka@kansaifelt.com', 0, '関西フエルトファブリック株式会社', '環境資材事業部　東京', '', '田中　満也', 0, '2015-04-17 20:08:14.248871');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazuhiko.kawakami@n-rinsan.co.jp', 0, '日本燐酸株式会社', '未利用リン資材再資源化チーム', '', '川上　和彦', 0, '2015-04-17 20:08:19.560522');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koshi@ogawa-kogyo.jp', 0, '小川工業株式会社', '工事部　産業機械課', '', '越浪　孝幸', 0, '2015-04-17 20:08:20.728237');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nippon@veema.jp', 0, 'ヴィーマ株式会社', 'パイプクリーニング事業部　パイプ美人', '', '鈴木　和男', 0, '2015-04-17 20:08:21.533564');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sangyo-tyo@pref.nagano.lg.jp', 0, '長野県庁　東京事務所', '', '', '佐藤　賢太郎', 0, '2015-04-17 20:08:22.352989');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-kakinuma@flight-one.co.jp', 0, '株式会社フライトワン', '', '', '柿沼　理史', 0, '2015-04-17 20:08:23.094047');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nobuyuki.tamura@okumuragumi.jp', 0, '株式会社奥村組', '東日本支社', '', '田村　信幸', 0, '2015-04-17 20:08:24.035932');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yukio.matsui@okumuragumi.jp', 0, '横浜環状北線シールドトンネル　特定建設工事共同企業体', '首都高新横浜JV工事事務所', '', '松井　悠起夫', 0, '2015-04-17 20:08:25.114358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@kksagami.co.jp', 0, '株式会社相模商会', '営業部　営業技術課', '', '小滝　仁宏', 0, '2015-04-17 20:09:31.919468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nishigoori-a1596@oec-solution.co.jp', 0, 'オリジナル設計株式会社', '施設三課', '', '西郡　一公', 0, '2015-04-17 20:09:38.604587');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ono-a1598@oec-solution.co.jp', 0, 'オリジナル設計株式会社', '施設四課', '', '小野　真', 0, '2015-04-17 20:09:45.057859');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Yoshinobu.Ariyama@nmm.jx-group.co.jp', 0, 'JX日鉱日石金属株式会社', '環境安全部', '', '有山　佳延', 0, '2015-04-17 20:09:53.962112');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'osamu.mizukami@toda.co.jp', 0, '戸田建設株式会社', '建築環境・品質管理部 品質管理課', '', '水上　修', 0, '2015-04-17 20:10:14.332471');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshiyuki-kikuchi@atre.co.jp', 0, '株式会社アトレ', '総合企画部', '', '菊地　俊幸', 0, '2015-04-17 20:10:15.600483');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hashimoto-m@eco-eikosha.co.jp', 0, '株式会社栄光舎', '営業部　営業2課', '', '橋本　勝', 0, '2015-04-17 20:10:15.819793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nagai@jsa.or.jp', 0, '一般財団法人日本規格協会', '標準部　標準部長　兼務　標準部　規格開発ユニット', '', '永井　克尚', 0, '2015-04-17 20:11:28.775214');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Yasushi.Nabekawa@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '技術部　技術支援課', '', '鍋川　尉', 0, '2015-04-17 20:12:09.189747');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-akiyama@kyowakako.co.jp', 0, '協和化工株式会社', '営業本部　東京第二営業部', '', '秋山　哲緒', 0, '2015-04-17 20:12:09.37517');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tatsuhiko-maeda@mes.co.jp', 0, '三井造船株式会社', 'エンジニアリング事業本部　プロジェクト部　環境エネルギーグループ', '', '前田　達彦', 0, '2015-04-17 20:12:31.55628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hikoe.kato@okumuragumi.jp', 0, '株式会社奥村組', '土木本部　土木統括部', '', '加藤　彦枝', 0, '2015-04-17 20:12:35.866503');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ootakia@t-cec.co.jp', 0, '東邦化工建設株式会社', 'エンジニアリング事業部', '', '大滝　昭仁', 0, '2015-04-17 20:12:36.677421');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nomura@kaiseiken.or.jp', 0, '公益財団法人　海洋生物環境研究所', '事務局　研究企画グループ', '', '野村　浩貴', 0, '2015-04-17 20:12:37.002791');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@flight-one.co.jp', 0, '株式会社フライトワン', 'F2工場', '', '原嶌　健吾', 0, '2015-04-17 20:12:37.787118');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashi.hiroyu@jcity.maeda.co.jp', 0, '前田建設工業株式会社　東京土木支店', '土木部　機電グループ', '', '高橋　裕之', 0, '2015-04-17 20:12:38.279712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'agata-t@organo.co.jp', 0, 'オルガノプラントサービス株式会社', 'O&Mセンター', '', '縣　達夫', 0, '2015-04-17 20:12:42.501911');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kobayasi@emit.shimadzu.co.jp', 0, '島津エミット株式会社　大阪本社', '営業部　大阪本社', '', '小林　一彦', 0, '2015-04-17 20:13:13.59251');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't_aruga@taimei-chem.co.jp', 0, '大明化学工業株式会社', '営業本部　営業部', '', '有賀　知洋', 0, '2015-04-17 20:13:13.813709');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'saba.koichiro@obayashi.co.jp', 0, '株式会社大林組', 'エンジニアリング本部　環境技術第二部', '', '佐波　弘一郎', 0, '2015-04-17 20:13:20.088194');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@e-eizen.com', 0, '株式会社エイゼン', '', '', '永田　幹人', 0, '2015-04-17 20:13:20.652393');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yasuhiro_minato@nishimatsu.co.jp', 0, '西松建設株式会社', '技術研究所　地域環境グループ', '', '湊　康裕', 0, '2015-04-17 20:13:27.577429');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masayoshi_yamazaki@nishimatsu.co.jp', 0, '西松建設株式会社', '技術研究所　地域環境グループ', '', '山崎　将義', 0, '2015-04-17 20:13:36.851973');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'abetaka0722@icloud.com', 0, '東京薬科大学', '生命科学部', '', '阿部　貴裕', 0, '2015-04-17 20:13:45.492657');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-daimon@furukawakk.co.jp', 0, '古河産機システムズ株式会社', '企画管理室（小山駐在）', '', '大門　繁', 0, '2015-04-17 20:13:56.45428');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ishii-akinori@metawater.co.jp', 0, 'メタウォーター株式会社', 'サービスソリューション本部　資源環境センター　資源環境サービス部　第一グループ', '', '石井　清智', 0, '2015-04-17 20:14:04.222263');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'iizuka@a-tic.co.jp', 0, '株式会社エーティック', '', '', '飯塚　哲善', 0, '2015-04-17 20:14:05.556643');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h.taoka@ryuki.com', 0, '株式会社流機エンジニアリング', '産業営業部', '', '田岡　宏章', 0, '2015-04-17 20:14:05.778908');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n@neonite.jp', 0, '株式会社ネオナイト', '', '', '堀江　清一', 0, '2015-04-17 20:14:06.809528');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashi-kazutaka@metawater.co.jp', 0, 'メタウォーター株式会社', 'サービスソリューション本部　資源環境センター　資源環境部　第一グループ', '', '高橋　和孝', 0, '2015-04-17 20:14:11.78504');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'e-nomura@hnm.co.jp', 0, '株式会社ホンマ', '環境事業本部　東京事業所', '', '野村　英一郎', 0, '2015-04-17 20:14:12.496895');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'gen_yamaguchi@mufg.jp', 0, '株式会社三菱東京UFJ銀行', '大伝馬町中央支社　法人第一課', '', '山口　元', 0, '2015-04-17 20:14:13.487188');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tayamau@mmc.co.jp', 0, '三菱マテリアルテクノ株式会社', 'エンジニアリング事業部　品質保証部', '', '山内　隆司', 0, '2015-04-17 20:14:14.715461');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'morinao@kiku.taisei.co.jp', 0, '大成建設株式会社', '建築技術開発部　建築生産技術開発室　工法システムチーム', '', '森　直樹', 0, '2015-04-17 20:14:15.377817');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hhayashi@soc.co.jp', 0, '住友大阪セメント株式会社', '知的財産部　セメントグループ', '', '林　季穂', 0, '2015-04-17 20:14:25.704994');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'abe3204@dws.fkd.co.jp', 0, '株式会社福田組', '技術部　機電課', '', '阿部　裕太', 0, '2015-04-17 20:14:32.95959');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'clean-center-nishibori@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　クリーンセンター西堀', '', '永井　道明', 0, '2015-04-17 20:14:33.675965');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'eto.m9p.ichiro@jp.nssmc.com', 0, '新日鐵住金株式会社　大分製鐵所', '設備部　プロセス技術室', '', '江藤　一郎', 0, '2015-04-17 20:14:34.529481');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's1335005@stu.musashino-u.ac.jp', 0, '武蔵野大学', '環境学部環境学科環境学専攻　2学年', '', '服部　健一', 0, '2015-04-17 20:14:41.174699');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-yanagiya@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部　設計課', '', '栁谷　尚邦', 0, '2015-04-17 20:14:48.215597');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'enoken-k@cy.tnc.ne.jp', 0, '有限会社エノケン工業', '', '', '寺田　浩長', 0, '2015-04-17 20:14:49.347076');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryo_kanaoka@toyo-glass.co.jp', 0, '東洋ガラス株式会社', '生産技術部　設備グループ', '', '金岡　良', 0, '2015-04-17 20:14:51.431664');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'rcoffice-2@katsukan.com', 0, '勝田環境株式会社', 'RC業務部', '', '白土　俊彦', 0, '2015-04-17 20:14:55.425436');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'te-kimura@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '技術本部', '', '木村　哲雄', 0, '2015-04-17 20:14:55.809779');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakata@yutaka-denki.jp', 0, 'ユタカ電機株式会社', '営業技術部　設計課', '', '中田　宙', 0, '2015-04-17 20:14:57.160278');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'andounor388@nssb.nssmc.com', 0, '日鉄住友物産株式会社', '総務・広報部　環境管理担当', '', '安藤　憲男', 0, '2015-04-17 20:14:57.925344');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tt954m392@yahoo.co.jp', 0, '池森有限会社', '営業部', '', '池森　清', 0, '2015-04-17 20:14:58.980869');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuta-yamagami@kowa.co.jp', 0, 'タンクシステム株式会社', '営業部', '', '山上　雄太', 0, '2015-04-17 20:14:59.681622');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'noriyuki-ishii@kowa.co.jp', 0, 'タンクシステム株式会社', '営業課', '', '石井　紀之', 0, '2015-04-17 20:15:00.060347');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.nakayashiki@s-techno-service.co.jp', 0, '株式会社清掃テクノサービス', '営業部　営業課', '', '中屋敷　武央', 0, '2015-04-17 20:15:05.699662');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'miyazaki-ryuji@toyo-const.co.jp', 0, '東洋建設株式会社', '関東支店　営業二部', '', '宮崎　龍治', 0, '2015-04-17 20:15:16.777537');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hara-kouichi@toyo-const.co.jp', 0, '東洋建設株式会社', '関東支店', '', '原　宏一', 0, '2015-04-17 20:15:27.003876');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kageyama-wataru@toyo-const.co.jp', 0, '東洋建設株式会社', '関東支店　営業第二部', '', '蔭山　渉', 0, '2015-04-17 20:15:37.265515');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yusuke-sano@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ　空調資材', '', '佐野　裕介', 0, '2015-04-17 20:15:43.516594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n_higashi@murata.co.jp', 0, '村田製作所', '市場渉外部　市場交渉課', '', '東　典弘', 0, '2015-04-17 20:15:50.284438');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ebisawa@k-century.co.jp', 0, '株式会社センチュリー興業', '', '', '海老澤　徹', 0, '2015-04-17 20:15:53.567077');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hideaki_nagatomo@gg.nitto.co.jp', 0, '日東電工株式会社', '品質・環境・安全統括部門　グループ環境戦略統括部　環境戦略推進グループ', '', '長友　秀晃', 0, '2015-04-17 20:15:56.557539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'take-k@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '機材・購買部　機材センター　施工グループ', '', '竹　健司', 0, '2015-04-17 20:15:58.486399');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kc3000@kawasaki-corp.jp', 0, '株式会社カワサキ商会', '営業二課', '', '雨宮　武秀', 0, '2015-04-17 20:16:10.362529');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tomita.ryuji@kobelco.com', 0, '東日本コベルコ建機株式会社', '北関東支社', '', '冨田　隆司', 0, '2015-04-17 20:16:12.530386');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kc1000@kawasaki-corp.jp', 0, '株式会社カワサキ商会', '', '', '川﨑　秀樹', 0, '2015-04-17 20:16:17.672544');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'symyuk00@pub.taisei.co.jp', 0, '大成建設株式会社', '安全本部　環境部', '', '佐久間　裕子', 0, '2015-04-17 20:16:18.659236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hidenori-isoda@taiheiyo-m.co.jp', 0, '太平洋マテリアル株式会社', '開発研究所　基盤材料グループ', '', '礒田　英典', 0, '2015-04-17 20:16:19.42446');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-sakairi@furukawakk.co.jp', 0, '古河産機システムズ株式会社', '栃木工場　設計部　産業機械設計課　開発設計グループ', '', '坂入　義隆', 0, '2015-04-17 20:16:32.803096');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y.kaneya@furukawakk.co.jp', 0, '古河産機システムズ株式会社', '生産本部　小山栃木工場　設計部　産業機器設計課', '', '金谷　裕貴', 0, '2015-04-17 20:16:43.271582');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@gomi39.co.jp', 0, '株式会社三久', '', '', '岩脇　翼', 0, '2015-04-17 20:16:54.395815');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k_takahashi@nagamine-manu.co.jp', 0, '株式会社長峰製作所', '営業部　営業課　ハニカム開発営業', '', '髙橋　清文', 0, '2015-04-17 20:16:56.4083');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shimizu@winclean.jp', 0, '株式会社ウィンクリン', '総務部', '', '清水　博史', 0, '2015-04-17 20:17:17.397387');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'moritaka@takuma.co.jp', 0, '株式会社タクマ', 'エネルギー本部　プラント1部　1課　担当課長', '', '森田　貴男', 0, '2015-04-17 20:17:17.680881');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujita.y@kabuki.co.jp', 0, '株木建設株式会社', '技術本部', '', '藤田　芳樹', 0, '2015-04-17 20:17:17.966191');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'w-sigen@mb.aikis.or.jp', 0, '株式会社資源開発', '', '', '山田　桐土', 0, '2015-04-17 20:18:02.234433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's.rpf@ebisu-eco.co.jp', 0, 'エビス紙料株式会社', '', '', '曽根　一徳', 0, '2015-04-17 20:18:04.162406');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-hayashi@ohasi.jp', 0, '株式会社大橋商会', '資源リサイクル事業部', '', '林　正和', 0, '2015-04-17 20:18:39.301953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.Takasugi@furukawakk.co.jp', 0, '古河産機システムズ株式会社', '生産本部　小山栃木工場　設計部　産業機器設計課', '', '髙杉　孔介', 0, '2015-04-17 20:18:53.200278');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-sasaki@furukawakk.co.jp', 0, '古河ロックドリル株式会社', '営業本部　特機部', '', '佐々木　直喜', 0, '2015-04-17 20:19:25.295797');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakamoto.masa@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '技術研究所', '', '中本　雅也', 0, '2015-04-17 20:19:26.044833');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tokyo@kdk-net.co.jp', 0, '国際電測工業株式会社', '東京営業所', '', '児島　寿稔', 0, '2015-04-17 20:19:29.148697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamaguchi@yanokuchi.com', 0, '矢野口自工株式会社', '', '', '山口　慶一', 0, '2015-04-17 20:19:29.803362');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kuroki.yasutaka@obayashi.co.jp', 0, '株式会社大林組', 'エンジニアリング本部　環境技術第一部　環境技術第三課', '', '黒木　泰貴', 0, '2015-04-17 20:19:36.157603');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ikeda@diace.co.jp', 0, '株式会社ダイヤモンド建機', '', '', '池田　秀信', 0, '2015-04-17 20:19:37.019124');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'syoji-u@yd-g.co.jp', 0, '株式会社山田組', '営業部', '', '姥島　正二', 0, '2015-04-17 20:19:37.990398');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shizuku-k@kyowa-ei.co.jp', 0, '株式会社共和電機', '技術本部　車両重量機器開発プロジェクトチーム', '', '雫　健太', 0, '2015-04-17 20:19:44.861646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-noguchi@toyopump.co.jp', 0, '株式会社東洋電機工業所　東京支店', '営業課', '', '野口　貴久', 0, '2015-04-17 20:20:25.811574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'te.sakai@hino.co.jp', 0, '日野自動車株式会社', '特販部　広域レンタフリート室　第二グループ', '', '坂井　哲平', 0, '2015-04-17 20:20:26.597243');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ma.kamikawa@hino.co.jp', 0, '日野自動車株式会社', '特販部　広域レンタフリート室　第二グループ', '', '山川　真史', 0, '2015-04-17 20:20:27.152015');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshihiro_notani@maezawa.co.jp', 0, '前澤工業株式会社　事業統括本部', '環境ソリューション事業部　第一部', '', '野谷　佳洋', 0, '2015-04-17 20:20:27.48884');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsudaka_s@earthtechnica.co.jp', 0, '株式会社アーステクニカ', '営業部　破砕機営業課　リサイクルグループ', '', '津髙　誠一', 0, '2015-04-17 20:21:23.338488');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takahashi@t-kizai.co.jp', 0, '東京機材工業株式会社', '本社　営業　技術グループ', '', '高橋　隆司', 0, '2015-04-17 20:21:24.545978');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-kudou@t-kizai.co.jp', 0, '東京機材工業株式会社', '本社　営業部', '', '工藤　幸司', 0, '2015-04-17 20:21:24.970514');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshida-takashi@motec-co.jp', 0, '株式会社エムオーテック', '営業本部', '', '吉田　敬', 0, '2015-04-17 20:21:37.411701');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koji.yamamoto@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '山本　浩二', 0, '2015-04-17 20:21:37.905131');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-ookawa@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水エンジニアリング部　東京技術工事課', '', '大川　和美', 0, '2015-04-17 20:21:42.822213');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-tsuchiya@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水エンジニアリング部　東京技術工事課', '', '土屋　義樹', 0, '2015-04-17 20:21:43.204277');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-mitake@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水エンジニアリング部　東京技術工事課', '', '御獄　満', 0, '2015-04-17 20:21:43.581151');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'togou@np-t.co.jp', 0, '日本紙通商株式会社', '直需本部　開発営業部台グループ　', '', '都合　正和', 0, '2015-04-17 20:21:46.282559');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yosuke.mitsui@sumitomocorp.co.jp', 0, '住友商事株式会社', '建設機械第一部　建機中東事業部', '', '三井　陽介', 0, '2015-04-17 20:21:46.669476');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.hosokawa@ube-ind.co.jp', 0, '宇部興産株式会社', '建設資材カンパニー　資源リサイクル事業部　企画管理部　企画Gr.', '', '細川　朋久', 0, '2015-04-17 20:21:47.294304');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masanori.kataoka@sumitomocorp.co.jp', 0, '住友商事株式会社', '建設機械第一部', '', '片岡　正憲', 0, '2015-04-17 20:21:47.689412');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-miyata@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '上下水エンジニアリング部　東京技術工事課', '', '宮田　和', 0, '2015-04-17 20:21:51.376238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsui-yasuo@yks-net.co.jp', 0, '山川産業株式会社', '関東営業所', '', '松井　康雄', 0, '2015-04-17 20:21:51.914601');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kawahara-atsuhito@yks-net.co.jp', 0, '山川産業株式会社', 'ブラスト販売チーム', '', '河原　淳人', 0, '2015-04-17 20:21:52.254137');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsuzuki@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '首都圏支社　営業3部', '', '鈴木　健也', 0, '2015-04-17 20:21:53.010148');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ketahara@mmc.co.jp', 0, '三菱マテリアルテクノ株式会社', 'エンジニアリング事業部　エンジニアリング部　プロセスグループ', '', '田原　啓右', 0, '2015-04-17 20:21:54.214997');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inoue-shinichi@miraie-corp.com', 0, '株式会社ミライエ', '技術開発部', '', '井上　伸一', 0, '2015-04-17 20:22:01.9617');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't_suzuki38@yahoo.co.jp', 0, '環境資源開発株式会社', '', '', '鈴木　智広', 0, '2015-04-17 20:32:42.236938');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-ue@tigers.co.jp', 0, 'タイガースポリマー株式会社', '', '', '植　富男', 0, '2015-04-17 20:32:47.167645');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n.kenmochi@skm.sasakura.co.jp', 0, '株式会社ササクラ', '東京支社　カスタマーサービスセンター', '', '剱持　直志', 0, '2015-04-17 20:33:04.105407');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.hashimoto@kobelco-eco.co.jp', 0, '株式会社神鋼環境ソリューション', '総務部　', '', '橋本　敬行', 0, '2015-04-17 20:33:04.713465');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fjco5180@yahoo.co.jp', 0, '有限会社富士産業', '', '', '細谷　潤一', 0, '2015-04-17 20:33:05.31947');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'saito@daiwakagaku.com', 0, '大和科学工業株式会社', '営業部　営業推進Gr', '', '齋藤　真', 0, '2015-04-17 20:33:54.760904');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kaneda-a@tori-skr.jp', 0, '中小企業庁　鳥取県よろず支援拠点', '', '', '金田　昭', 0, '2015-04-17 20:33:55.773079');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tdnyus00@pub.taisei.co.jp', 0, '大成建設株式会社', '技術センター　土木技術研究所　水域・環境研究室　環境保全チーム', '', '忠野　祐介', 0, '2015-04-17 20:33:56.303052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-tashiro@tigers.co.jp', 0, 'タイガースポリマー株式会社', '販売四課', '', '田代　龍生', 0, '2015-04-17 20:33:56.772533');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanabe@t-kizai.co.jp', 0, '東京機材工業株式会社', '本社　営業部　リースグループ', '', '田辺　綾野', 0, '2015-04-17 20:33:57.720691');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@erc-co.jp', 0, '株式会社アース・コーポレーション', '環境事業本部　富山リサイクルセンター　製造第一班', '', '岩瀬　俊光', 0, '2015-04-17 20:33:58.467772');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mori@okadass.com', 0, '株式会社岡田製作所', '', '', '森　洋二郎', 0, '2015-04-17 20:33:58.743904');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ksuzuki@namitakiko.co.jp', 0, '並田機工株式会社', '営業部', '', '鈴木　清信', 0, '2015-04-17 20:34:04.892103');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'imagawa@namitakiko.co.jp', 0, '並田機工株式会社', '東京営業所', '', '今川　太一郎', 0, '2015-04-17 20:34:11.543421');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tominaga@jwwa.or.jp', 0, '公益社団法人　日本水道協会', '公務部技術課', '', '富永　陽', 0, '2015-04-17 20:34:21.974383');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroyuki_nagashima@member.metro.tokyo.jp', 0, '東京都下水道局', '施設管理部　施設管理課　調整係', '', '長島　博之', 0, '2015-04-17 20:34:24.022265');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Takuya_Fukuhara@member.metro.tokyo.jp', 0, '東京都下水道局', '施設管理部　施設管理課　調整係', '', '福原　拓弥', 0, '2015-04-17 20:34:24.734535');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kochi@tokyu-geox.co.jp', 0, '東急ジオックス株式会社', '総務部', '', '高地　不二男', 0, '2015-04-17 20:34:27.869782');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-inoue@skm.sasakura.co.jp', 0, '株式会社ササクラ', '東京支社　水処理営業室', '', '井上　智裕', 0, '2015-04-17 20:34:44.899181');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.hatayama@fa-tec.co.jp', 0, '株式会社ファテック', '開発営業部　土木グループ', '', '畑山　駿', 0, '2015-04-17 20:34:49.39933');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'cbmi101@yahoo.co.jp', 0, 'いいのまさたけ法務事務所', '', '', '飯野　眞?', 0, '2015-04-17 20:34:50.53656');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n.dairaku@kbjapan.co.jp', 0, '株式会社コバヤシ', 'コバゾール事業部　葛飾工場　製造課', '', '大楽　紀行', 0, '2015-04-17 20:34:51.860772');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shinya@si-japan.com', 0, 'SI Japan株式会社', '', '', '新矢　隆', 0, '2015-04-17 20:34:57.060236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'junichi.myojo@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部', '', '明星　淳一', 0, '2015-04-17 20:34:57.627542');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsumoto@uni-e.co.jp', 0, '株式会社ユニイー', '技術部　機器整備課', '', '松本　康彦', 0, '2015-04-17 20:35:02.748928');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koshida.takeshi@ad-hzm.co.jp', 0, '株式会社安藤・間', '機電部', '', '越田　健', 0, '2015-04-17 20:35:11.535909');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamashita-choshiro@tokyo-pt.co.jp', 0, '東京パワーテクノロジー株式会社', '工事グループ', '', '山下　肇士郎', 0, '2015-04-17 20:35:42.190083');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshiaki58@hotmail.com', 0, '  ', '', '', '三石　芳明', 0, '2015-04-17 20:35:45.183653');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masafumi_toda@cosmo-oil.co.jp', 0, 'コスモ石油株式会社', '供給ビジネスユニット　海外技術協力センター', '', '戸田　雅文', 0, '2015-04-17 20:35:48.481162');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yanai@mmc.co.jp', 0, '三菱マテリアル株式会社', '設備技術部', '', '箭内　実', 0, '2015-04-17 20:35:51.883894');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshi-s@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京営業第一部　第三チーム長', '', '佐藤　俊弘', 0, '2015-04-17 20:35:53.868691');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'uno-susumu@ike.ihi.co.jp', 0, '株式会社IHI環境エンジニアリング', '工事統括本部　工事支援部　工事支援グループ', '', '宇野　進', 0, '2015-04-17 20:35:55.603891');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-shigemura@reedtecnos.co.jp', 0, '株式会社リードテクノス', '', '', '繁村　義夫', 0, '2015-04-17 20:35:56.569723');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r-kurita@hinodesangyo.com', 0, '日之出産業株式会社', '', '', '栗田　良造', 0, '2015-04-17 20:35:57.059525');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'amane.samejima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部', '', '鮫島　周', 0, '2015-04-17 20:36:04.675333');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nmochizuki@tc.kyuei.co.jp', 0, '株式会社東京久栄', '', '', '望月　直樹', 0, '2015-04-17 20:36:08.634519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'suzuki.t@meltec-ltd.co.jp', 0, 'メルテック株式会社', '営業部', '', '鈴木　達也', 0, '2015-04-17 20:36:09.295539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'eigyou@okadass.com', 0, '株式会社岡田製作所', '製造部', '', '須藤　征哉', 0, '2015-04-17 20:36:09.533878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.negishi@chirika.co.jp', 0, '中央理化工業株式会社', '', '', '根岸　桂子', 0, '2015-04-17 20:36:09.805704');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakayama@919g.co.jp', 0, '株式会社クイック・ガーデニング', '', '', '中山　敬太', 0, '2015-04-17 20:37:12.520494');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inoue@919g.co.jp', 0, '株式会社クイック・ガーデニング', '事業開発部', '', '井上　大輔', 0, '2015-04-17 20:37:12.74146');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-kitayama@fjtex.co.jp', 0, '株式会社フジテックス', '営業サポート課', '', '北山　泰介', 0, '2015-04-17 20:37:19.084351');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shinsuke_kondou@ken4.pref.kochi.lg.jp', 0, '高知県林業振興・環境部', '環境共生課', '', '近藤　信介', 0, '2015-04-17 20:37:48.905605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ttc3@ttc-group.com', 0, 'TTC化学株式会社', '', '', '正山　堯', 0, '2015-04-17 20:37:55.569852');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'daisuke_suzuki@yokogawa-toa.co.jp', 0, '横河東亜工業株式会社', '営業本部　営業部', '', '鈴木　大輔', 0, '2015-04-17 20:37:56.165381');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.kawato@rasaco.co.jp', 0, 'ラサ商事株式会社', '', '', '川戸　俊克', 0, '2015-04-17 20:38:02.264661');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-kimura@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'O&M本部　技術グループ', '', '木村　裕一', 0, '2015-04-17 20:38:02.719046');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's.takakura@mitsuwadenki.co.jp', 0, 'ミツワ電機株式会社', '購買物流部', '', '高倉　秀一', 0, '2015-04-17 20:38:11.341767');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'suzuki.eiji@truck-meister.co.jp', 0, '株式会社トラックマイスター', '', '', '鈴木　英治', 0, '2015-04-17 20:38:13.340628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'noguchi.koji@obayashi.co.jp', 0, '株式会社大林組', '機械部', '', '野口　宏治', 0, '2015-04-17 20:38:46.287754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'lee.hua@waterdirect.jp', 0, '株式会社ウォーターダイレクト', '生産・開発本部　', '', '李　花', 0, '2015-04-17 20:39:53.627258');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-yoshikawa@diatex.co.jp', 0, 'ダイヤテックス株式会社', '機能品営業本部　基材販売グループ', '', '吉川　正幸', 0, '2015-04-17 20:39:54.082636');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yota@seepex.com', 0, 'seepex Japan 株式会社', '', '', '大田　悠介', 0, '2015-04-17 20:40:04.256373');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Tetsuichirou_Komatsu@s-l.co.jp', 0, '昭和リース株式会社', '専門営業部門　建設機械営業部　営業第一チーム', '', '小松　徹一郎', 0, '2015-04-17 20:41:25.469614');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamatogma@gmail.com', 0, '株式会社マック マシンツール', '', '', '大和　幸男', 0, '2015-04-17 20:41:31.637258');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hisanao.onozawa.@noe.jx-group.co.jp', 0, 'JX日鉱エネルギー株式会社　機能化学品カンパニー', '蓄熱材事業ユニット　蓄熱材事業グループ', '', '小野沢　久直', 0, '2015-04-17 20:41:32.588319');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'junya.koyama@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '小山　順也', 0, '2015-04-17 20:41:33.466201');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kameda.t@jcity.maeda.co.jp', 0, '前田建設工業株式会社　関東支店', '安全環境グループ', '', '亀田　貴之', 0, '2015-04-17 20:41:33.990102');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'leecsjp@yahoo.co.jp', 0, '株式会社ネフロンジャパン', '', '', '李　昌淳', 0, '2015-04-17 20:41:41.091048');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kanya_kuroda@yahoo.co.jp', 0, '東北大学　大学院', '環境科学研究所', '', '黒田　敢也', 0, '2015-04-17 20:41:41.799841');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Hironori.Iida@jp.sony.com', 0, 'ソニー株式会社', 'R＆D企画', '', '飯田　広範', 0, '2015-04-17 20:41:49.420639');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's18101401826@toyo.jp', 0, '東洋大学', '国際地域学部', '', '松本　英梨', 0, '2015-04-17 20:41:53.946704');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'smiletensi@gmail.com', 0, '東洋大学', '国際地域学部', '', '寺田　茉莉花', 0, '2015-04-17 20:42:00.668353');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'zuisen-h@nkc-j.co.jp', 0, '中西金属工業㈱', '', '', '瑞泉　等', 0, '2015-04-17 20:42:06.494097');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-17 20:42:12.103455');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-17 20:42:18.771644');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ynqyuki@mmc.co.jp', 0, '三菱マテリアル株式会社　電子材料事業カンパニー', '化成営業部　フッ素グループ', '', '名雪　靖志', 0, '2015-04-17 20:42:19.913796');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mi-koiwai@kakuto.co.jp', 0, '株式会社　角藤', '土木・基礎工事部　工事課', '', '小岩井　充', 0, '2015-04-17 20:42:44.201819');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'harada@ohkita-recycle.co.jp', 0, '株式会社大北リサイクル', '', '', '原田　佳角', 0, '2015-04-17 20:42:44.697545');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-17 20:42:50.002193');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hnamura@rle.ricoh.co.jp', 0, 'リコーリース株式会社　首都圏支社', '東京営業一課', '', '南村　仁司', 0, '2015-04-17 20:43:05.232918');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hidenori_yoshida@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京開発営業部　測定器営業第1チーム', '', '吉田　秀典', 0, '2015-04-17 20:43:06.688429');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-17 20:46:36.713291');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mori@tso-int.co.jp', 0, 'TSO International 株式会社', '', '', '森　育三', 0, '2015-04-17 20:46:37.108848');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-17 20:46:44.353844');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shirai16@khaki.plala.or.jp', 0, '', '', '', '白井　孝夫', 0, '2015-04-17 20:46:44.788558');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kubo-y@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '久保　好則', 0, '2015-04-17 20:46:46.087508');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'katsuyuki_yamamori@scm.shi.co.jp', 0, '住友建機販売株式会社', '中部統括部　東濃営業所', '', '山森　勝之', 0, '2015-04-17 20:47:03.895537');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujimura.hiroaki@daiwaroyal.jp', 0, 'ダイワロイヤル株式会社', '管理本部　人事総務部', '', '藤村　浩彰', 0, '2015-04-17 20:47:06.07487');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shimamoto_takashi@zenitaka.co.jp', 0, '銭高組', '土木事業本部　受注推進部　受注責任課', '', '島元　隆史', 0, '2015-04-17 20:47:17.457886');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'aihara-jiro@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '相原　次郎', 0, '2015-04-17 20:47:38.976084');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ikenaga-yuto@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第三課', '', '池永　優人', 0, '2015-04-17 20:47:50.737884');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ayano-koruri@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第一課', '', '綾野　こるり', 0, '2015-04-17 20:48:02.364758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'anzenseikatsu@city.chiyoda.lg.jp', 0, '千代田区環境安全部', '安全生活課　公害指導係', '', '関根　昇', 0, '2015-04-17 20:48:02.640932');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yokoi-hideki@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '横井　秀樹', 0, '2015-04-17 20:48:37.550274');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'khirai@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部', '', '平井　克政', 0, '2015-04-17 20:48:44.118171');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanaka.a53.yoshihiro@log.nssmc.com', 0, '日鉄住金物流株式会社', '国内営業本部　環境・原料部', '', '田中　義浩', 0, '2015-04-17 20:48:44.905855');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kimihiko_kubozuka@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ', '', '窪塚　公彦', 0, '2015-04-17 20:48:51.169087');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazuhiro.inaba@kubota.com', 0, '株式会社クボタ建機ジャパン', '広域営業部', '', '稲葉　和宏', 0, '2015-04-17 20:48:58.215844');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r34_take@yahoo.co.jp', 0, '有限会社保坂住建', '産廃事業部', '', '保坂　岳彦', 0, '2015-04-17 20:48:58.889974');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mogi@zushi-tec.com', 0, '伊豆電設株式会社', '', '', '茂木　隆', 0, '2015-04-17 20:49:02.094565');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kouji8@taiyoukiso.co.jp', 0, '太洋基礎工業株式会社　東京支店', '工事部', '', '加藤　康徳', 0, '2015-04-17 20:49:02.366512');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.aoki@morooka.co.jp', 0, '株式会社諸岡', '営業推進室', '', '青木　貴洋', 0, '2015-04-17 20:49:05.334827');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'esaitou@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '齋藤　英司', 0, '2015-04-17 20:49:06.670387');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'aohba@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '大庭　章生', 0, '2015-04-17 20:49:08.048814');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kkosasayama@mecx.co.jp', 0, '株式会社MECX', '営業部', '', '小笹山　要', 0, '2015-04-17 20:49:09.724216');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, '26642u@ube-ind.co.jp', 0, '宇部丸善ポリエチレン株式会社', '営業部', '', '竹下　博之', 0, '2015-04-17 20:49:10.422126');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tdoki@okumura-kikai.co.jp', 0, '奥村機械株式曾社', '営業企画グループ', '', '土岐　拓也', 0, '2015-04-17 20:49:15.876689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-17 20:49:21.47634');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-17 20:49:32.795327');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-17 20:49:39.103277');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-17 20:49:48.958');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-17 20:49:49.430797');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-17 20:49:54.838673');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryoko.hatori@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '羽鳥　涼子', 0, '2015-04-17 20:49:55.759943');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kousuke_kawai@yanmar.co.jp', 0, 'ヤンマー建機株式会社', '西部営業部　大阪支店　販売グループ', '', '河井　浩輔', 0, '2015-04-17 20:49:56.830901');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-17 20:50:03.217407');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-17 20:50:12.337808');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'suzuki-h@yonei.co.jp', 0, '株式会社ヨネイ', '建設機械ユニット', '', '鈴木　裕人', 0, '2015-04-17 20:50:12.676277');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.ono@me.tomo-e.co.jp', 0, '巴工業株式会社', '機械本部　産業機械営業部', '', '小野　隆扶美', 0, '2015-04-17 20:50:16.393395');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakanishi-ka@d-kjk.co.jp', 0, 'コマダ樹脂工業株式会社', '東京支店', '', '仲西　員実', 0, '2015-04-17 20:50:16.740659');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-17 20:50:29.696637');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-17 20:50:31.185158');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-17 20:50:32.526369');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-17 20:50:39.086932');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-kankyo@matsue-kg.co.jp', 0, '有限会社松江興業', '環境管理推進室', '', '榎本　伯一', 0, '2015-04-17 20:50:39.573311');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-17 20:50:44.063854');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-17 20:50:50.436204');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hitoshi.fujita@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　生産企画部', '', '藤田　仁', 0, '2015-04-17 20:50:51.447244');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Tuyoshi.Yamashita@mitsui-chem.co.jp', 0, '三井化学東セロ株式会社', '新規事業開発室', '', '山下　剛', 0, '2015-04-17 20:50:55.120718');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-17 20:51:01.045668');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-17 20:51:11.754948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-17 20:51:13.897464');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-17 20:51:14.257432');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-17 20:51:17.564903');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-17 20:51:18.022942');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-17 20:51:18.2654');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-17 20:51:18.474079');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tiijima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'プロジェクト推進部　応用技術グループ', '', '飯島　健', 0, '2015-04-17 20:51:33.939428');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-nakanishi@kitamuraindustry.co.jp', 0, '株式会社キタムラ産業　関東営業所', '', '', '中西　康裕', 0, '2015-04-17 20:51:35.941825');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yanme@toriton.or.jp', 0, '公益財団法人鳥取県産業振興機構', '企業支援部　販路開拓グループ', '', '安梅　功哲', 0, '2015-04-17 20:51:37.818338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nfukuda@harasho.co.jp', 0, '株式会社原商', '営業開発部', '', '福田　直明', 0, '2015-04-17 20:51:38.086279');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ikuo_endou@it.ihigrp.ihi.co.jp', 0, '株式会社IHIトレーディング', '第一営業部　機器グループ', '', '遠藤　育雄', 0, '2015-04-17 20:51:43.998843');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuuki-kougyou-tanaka@outlook.jp', 0, '株式会社結城興業', '', '', '田中　康一', 0, '2015-04-17 20:52:56.707519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kamioka@yamasaki-net.co.jp', 0, '株式会社山崎紙源センター', '', '', '上岡　康人', 0, '2015-04-17 20:57:01.738868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshihiko_hamamoto@scm.shi.co.jp', 0, '大阪住重機建機株式会社', '', '', '濵本　敏彦', 0, '2015-04-17 20:57:06.954881');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'okawa@j-facility.com', 0, '日本ファシリティ・ソリューション株式会社', '営業本部ソリューション営業部', '', '大川　太郎', 0, '2015-04-17 20:57:14.091256');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r-mogi@keiyokogyo.co.jp', 0, '株式会社京葉興業', '作業部', '', '茂木　龍二', 0, '2015-04-17 20:57:18.348873');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'higashi.shinya@toshiba-sol.co.jp', 0, '東芝ソリューション株式会社　府中エンジニアリングセンター', 'プラットフォームソリューション事業部　ハードウエア開発部', '', '東　請弥', 0, '2015-04-17 20:57:20.428324');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Tetsuya.Isogai@mail.penta-ocean.co.jp', 0, '五洋建設株式会社', '土木部門　土木本部　環境事業部', '', '磯貝　哲也', 0, '2015-04-17 20:57:25.353885');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tajka.hasegawa@hino.co.jp', 0, '日野自動車株式会社', 'シャシ生技部　第2海外生技室', '', '長谷川　貴之', 0, '2015-04-17 20:57:25.922913');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuuki_nishimura@scm.shi.co.jp', 0, '大阪住重建機株式会社　茨城営業所', '', '', '西村　裕樹', 0, '2015-04-17 20:57:32.100358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Hiroshi_Souma@morita119.com', 0, '株式会社モリタ環境テック　東日本営業部', 'サービス課', '', '相馬　寛', 0, '2015-04-17 20:57:41.112141');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mikegaya@smrc.co.jp', 0, '三井住建道路株式会社　関東支店', '営業部　営業開発課', '', '池ヶ谷　正博', 0, '2015-04-17 20:57:48.428521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y_inoue@tarpo-hiraoka.com', 0, '平岡織染株式会社', '技術本部　第二グループ', '', '井上　由治', 0, '2015-04-17 20:57:53.403717');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nobuo.matsuhashi@ibjl.co.jp', 0, '興銀リース株式会社', '建機営業部', '', '松橋　信雄', 0, '2015-04-17 20:58:00.850358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tana_advice@yahoo.co.jp', 0, '有限会社竹建設', '', '', '棚原　譲', 0, '2015-04-17 20:58:01.544624');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsuyoshi_yamabe@orix.co.jp', 0, 'オリックス株式会社', '建機・鉄鋼営業部　建機営業第一チーム', '', '山邉　剛', 0, '2015-04-17 20:58:02.075754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'terukazu.kinoshita@re.jx-group.co.jp', 0, 'JX日鉱日石不動産株式会社', 'ビル事業部　大手町営業所', '', '木下　晃一', 0, '2015-04-17 20:58:03.469491');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-sakai@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課', '', '酒井　保和', 0, '2015-04-17 20:58:06.969969');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-nakagawa@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課GL', '', '中川　健一', 0, '2015-04-17 20:58:10.484581');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'guilherme_uehara@itp.co.jp', 0, '株式会社石田大成社', 'グローバルコミュニケーションデザイン本部　クライアントサービス課', '', '上原　ギィリエルメ', 0, '2015-04-17 20:58:17.651106');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-nishida@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '西田　孝之', 0, '2015-04-17 20:58:18.518923');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k.ikezaki@i-mori.co.jp', 0, '株式会社イーモリ', '営業部', '', '池崎　清智', 0, '2015-04-17 20:58:18.918027');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hirosuke.akahosi@okumuragumi.jp', 0, '株式会社奥村組　東日本支社', '環境技術部、土木第3部', '', '赤星　公祐', 0, '2015-04-17 20:58:20.301149');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yasushi-sasaki@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課', '', '佐々木　靖', 0, '2015-04-17 20:58:39.029378');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'office@kyoei-kankyo.com', 0, '株式会社共栄環境', '', '', '下田　美智代', 0, '2015-04-17 20:58:42.195188');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshitaka_sumitomo@cooled.co.jp', 0, '株式会社SNPジャパン', '営業部', '', '住友　嘉隆', 0, '2015-04-17 20:58:42.469916');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kenichiro.yoshida@okumuragumi.jp', 0, '株式会社奥村組　東日本支社', '建築工務部技術課', '', '吉田　健一郎', 0, '2015-04-17 20:58:43.538031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeshi.onodera@tosho.co.jp', 0, '図書印刷株式会社', 'CSR本部　CSR推進部 CSR推進グループリーダー', '', '小野寺　健', 0, '2015-04-17 20:58:47.966743');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryo33555342@yahoo.co.jp', 0, '東京薬科大学', '生命科学部', '', '福本　凌平', 0, '2015-04-17 20:58:50.479987');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-haga@nissan-nics.co.jp', 0, '株式会社日産クリエイティブサービス', '環境・エンジニアリング事業本部　環境サービス部　営業グループ', '', '芳賀　紀明', 0, '2015-04-17 20:58:57.773979');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masahiro.kondo@tadano.com', 0, '株式会社タダノ　東北支店', '高所営業グループ　', '', '近藤　正浩', 0, '2015-04-17 20:59:04.044219');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fu.sakai@ydec.co.jp', 0, '株式会社ヨシカワ　石川技術センター', '', '', '酒井　富士男', 0, '2015-04-17 20:59:10.272069');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'genji@kis.janis.or.jp', 0, '有限会社源次商店', '', '', '田中　孝輔', 0, '2015-04-17 20:59:12.706585');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'giichirou_nakagawa@yanmar.co.jp', 0, 'ヤンマー株式会社', '中央研究所　テクニカルサポートセンター　技術支援グループ', '', '中川　儀一郎', 0, '2015-04-17 20:59:13.443552');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fukubak@snk.co.jp', 0, '新日本空調株式会社', '原子力事業部　技術企画部　開発課', '', '福場　一司', 0, '2015-04-17 20:59:13.656208');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamakawa@k-century.co.jp', 0, '株式会社センチュリー興業', '営業課', '', '山川　史記', 0, '2015-04-17 20:59:22.040482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'honda.yasuhiro@obayashi.co.jp', 0, '株式会社大林組', 'ぎじゅつ本部　技術研究所　環境技術研究部', '', '本田　泰大', 0, '2015-04-17 20:59:28.105575');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mayuko.masuda@inoac.co.jp', 0, '株式会社イノアックコーポレーション', '産業資材営業部　東京支店', '', '舛田　麻佑子', 0, '2015-04-17 20:59:29.652549');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroshi.nishiyama@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '', '', '西山　寛', 0, '2015-04-17 21:00:27.384697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ka-tanihashi@tokyoink.co.jp', 0, '東京インキ株式会社', '統制監査部', '', '谷橋　勝一', 0, '2015-04-17 21:00:28.035144');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'teraki@toyo.jp', 0, '東洋大学', '文学部教育学科理科教育専攻、大学院文学研究科教育学専攻', '', '寺木　秀一', 0, '2015-04-17 21:00:40.046319');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hsuzuki@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部', '', '鈴木　洋光', 0, '2015-04-17 21:00:42.663452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tat-katou@furukawakk.co.jp', 0, '古河ユニック株式会社', '国内営業部　販売促進課', '', '加藤　達雄', 0, '2015-04-17 21:00:53.700799');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kashibat@ku.kumagaigumi.co.jp', 0, '株式会社熊谷組', '経営管理本部　CSR推進部　品質管理マネジメントグループ', '', '柴田　和樹', 0, '2015-04-17 21:01:00.626747');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fac005@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課　工務第二係', '', '服部　直明', 0, '2015-04-17 21:01:04.637066');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-tosa@furukawakk.co.jp', 0, '古河ロックドリル株式会社', '営業本部　国内営業部　', '', '土佐　博茂', 0, '2015-04-17 21:01:15.244262');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kenji-naoi@etp21.co.jp', 0, 'エターナルプレザーブ株式会社', '', '', '直井　賢二', 0, '2015-04-17 21:01:16.487457');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ishimaru-takayuki@motec-co.jp', 0, '株式会社エムオーテック　東京本店', '横浜営業所', '', '石丸　貴之', 0, '2015-04-17 21:01:28.710893');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazumasakotani@totetsu.jp', 0, '東鉄工業株式会社', '線路本部　軌道工事部', '', '小谷　和正', 0, '2015-04-17 21:01:29.559689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-ando11009@seinokensetsu.co.jp', 0, '西濃建設株式会社', '土木工事部', '', '安藤　賢樹', 0, '2015-04-17 21:01:29.951885');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'miyahara-kazuhito@toyo-const.co.jp', 0, '東洋建設株式会社', '土木事業本部　土木技術部', '', '宮原　和仁', 0, '2015-04-17 21:01:40.312559');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masashi_uku@ken3.pref.kochi.lg.jp', 0, '高知県', '林業振興・環境部　環境共生課　カーボン・オフセット担当', '', '宇久　真司', 0, '2015-04-17 21:02:04.226636');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tohyama@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '遠山　隆', 0, '2015-04-17 21:05:46.91052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazuho@sei.ne.jp', 0, '株式会社セラフ榎本　東京支店', '総務部', '', '村上　和穂', 0, '2015-04-17 21:05:48.753516');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kimurah@sip.sanwa-ss.co.jp', 0, '三和ホールディングス株式会社', 'アジア事業企画部', '', '木村　秀雄', 0, '2015-04-17 21:05:50.788997');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'machitani-toshikazu@motec-co.jp', 0, '株式会社エムオーテック　東京本店', '営業第二部　営業第四課', '', '町谷　寿一', 0, '2015-04-17 21:06:06.97143');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ito-tsutomu@motec-co.jp', 0, '株式会社エムオーテック　東京本店', '工事部　工務課', '', '伊藤　勉', 0, '2015-04-17 21:06:18.581084');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'katsu@hitachizosen.co.jp', 0, '日立造船', '環境・プラント・エネルギー部', '', '勝　駿宇', 0, '2015-04-17 21:06:19.585026');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mitsuru-create@mx6.nns.ne.jp', 0, '株式会社クリエート', '', '', '望月　満', 0, '2015-04-17 21:06:22.838629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mfukui@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社  企画業務グループ', '', '福井　美月', 0, '2015-04-17 21:06:27.076487');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'denki@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　電気設計部', '', '芹川　一也', 0, '2015-04-17 21:06:27.796715');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeno_yuki@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '竹野　勇輝', 0, '2015-04-17 21:06:32.11094');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y.nakamura@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', 'リース事業部', '', '中村　康昭', 0, '2015-04-17 21:06:45.434821');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hokutaku@hi-net.ne.jp', 0, '有限会社　北拓ビル管理', '', '', '下館　光一郎', 0, '2015-04-17 21:06:58.436418');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nagaso@mmc.co.jp', 0, '三菱マテリアテクノ株式会社', '資源・環境・エネルギー事業部　環境計量部　環境技術センター', '', '永草　康彦', 0, '2015-04-17 21:07:03.779954');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'stanaka@bmbio.co.jp', 0, 'ビーエム機器株式会社', '　', '', '田中　知　', 0, '2015-04-17 21:07:38.633098');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'horry-potter@kve.biglobe.ne.jp', 0, 'カンセイ株式会社', '　', '', '堀端　久江', 0, '2015-04-17 21:07:43.76573');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fabe@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '分析センター', '', '阿部　大', 0, '2015-04-17 21:07:54.636261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-isomiti@nangoku-group.com', 0, '南国殖産株式会社', '建設産業機械課　霧島出張所', '', '礒道　達士', 0, '2015-04-17 21:07:55.524952');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mino.koki@ad-hzm.co.jp', 0, '株式会社安藤・間', '関東土木支店　土木部　大橋出張所　第３工事課', '', '美濃　光輝', 0, '2015-04-17 21:08:36.046969');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 're-takayama.shouten@dg7.so-net.ne.jp', 0, '有限会社高山商店', '', '', '高山　聡', 0, '2015-04-17 21:08:37.597182');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kobayasi@aokikankyo.com', 0, '青木環境事業株式会社', '営業部', '', '小林　洋一', 0, '2015-04-17 21:08:38.441335');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ohmae_yusuke@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '関東支社　千葉北支店　成田営業所', '', '大前　雄介', 0, '2015-04-17 21:08:42.933515');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'naoki.asakawa@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '浅川　直貴', 0, '2015-04-17 21:08:47.638199');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'noriyuki.kondo@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '近藤　紀行', 0, '2015-04-17 21:08:52.473427');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshida.k@rentac.jp', 0, '株式会社レンタック', '', '', '吉田　和広', 0, '2015-04-17 21:08:55.293936');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@maruyou.com', 0, '丸友開発株式会社', '', '', '谷田　康雄', 0, '2015-04-17 21:09:09.157512');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koshiba@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '技術本部　技術研究所', '', '小柴　朋広', 0, '2015-04-17 21:09:10.798832');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'katsunori.motohashi@scigineer.co.jp', 0, 'サイジニア株式会社', '営業部', '', '本橋　且規', 0, '2015-04-17 21:09:11.556834');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'suzuki_takayuki@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '販売事業部　営業管理部　商事課', '', '鈴木　敬之', 0, '2015-04-17 21:09:19.822049');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yseida@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '清田　侑紀', 0, '2015-04-17 21:09:20.436019');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'da.yamada@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '山田　大輔', 0, '2015-04-17 21:09:27.309953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h.yoshida@ydec.co.jp', 0, '株式会社ヨシカワ', '営業課', '', '吉田　玄', 0, '2015-04-17 21:09:33.726798');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tatsuya.ogura@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '小倉　辰也', 0, '2015-04-17 21:09:47.491653');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tf@tokyofood.jp', 0, '東京フード株式会社', '営業部', '', '小林　信夫', 0, '2015-04-17 21:09:47.765417');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yu.yamada@omltd.co.jp', 0, '株式会社オーエム製作所', '宍道開発室', '', '山田　裕治', 0, '2015-04-17 21:09:47.991976');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'c-takano@yagashiro-ls.co.jp', 0, '株式会社八ケ代造園', '', '', '高野　智良', 0, '2015-04-17 21:09:48.230171');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'uchida@cc.kogakuin.ac.jp', 0, '工学院大学', '工学部　環境エネルギー化学科', '', '内田　雅樹', 0, '2015-04-17 21:09:49.623188');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y.wakida@east.ntt.co.jp', 0, 'NTT東日本', 'ネットワークソリューション部　営業支援担当', '', '脇田　祐司', 0, '2015-04-17 21:09:50.360027');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kojimam@sc.sumitomo-chem.co.jp', 0, '住友化学株式会社', '大分工場　レスポンシブルケア部', '', '小島　美津代', 0, '2015-04-17 21:09:50.899019');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'osamu.amano@toda.co.jp', 0, '戸田建設株式会社', '建築設計統轄部　設備設計部', '', '天野　修', 0, '2015-04-17 21:10:01.588607');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kgontou@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '権頭　克則', 0, '2015-04-17 21:10:02.460397');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'smiyagawa@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '東関東支社　技術営業グループ', '', '宮川　進矢', 0, '2015-04-17 21:10:03.268254');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'miyazaki-chemical@hotmail.co.jp', 0, 'ミヤザキ株式会社', '第二営業部', '', '宮崎　義大', 0, '2015-04-17 21:10:06.851776');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Yoshikazu_Tsuchiya@member.metro.tokyo.jp', 0, '東京都', '下水道局　施設管理部　施設管理課　', '', '土屋　義和', 0, '2015-04-17 21:10:07.79412');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fukuoka.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '', '', '福岳　雄一郎', 0, '2015-04-17 21:10:08.029396');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujimori-a@okumuradbk.co.jp', 0, '奥村組土木興業株式会社', '環境開発本部　技術部', '', '藤森　章記', 0, '2015-04-17 21:10:08.592494');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kokojima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　土壌環境グループ', '', '小島　幸司', 0, '2015-04-17 21:10:11.908328');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tmuraguchi@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　', '', '村口　貴紀', 0, '2015-04-17 21:10:12.807939');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tkurasawa@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　技術営業部', '', '倉澤　卓也', 0, '2015-04-17 21:10:19.969371');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-naitou@co-jsp.co.jp', 0, '株式会社　JSP', '新事業開発室　新技術開発部', '', '内藤　直記', 0, '2015-04-17 21:10:26.479998');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kimihiro.morishita@keisei-const.co.jp', 0, '京成建設株式会社', '営業本部　第二営業部', '', '森下　公博', 0, '2015-04-17 21:10:26.871889');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-toshi@jrfreight.co.jp', 0, 'JR貨物', '関東支社　営業部　首都圏営業開発グループ', '', '宮下　俊彦', 0, '2015-04-17 21:10:27.204221');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kankyo-shisetsu@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　環境施設課', '', '酒巻　紳一郎', 0, '2015-04-17 21:10:34.419806');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a.jinbo@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', '中部支社', '', '神保　明彦', 0, '2015-04-17 21:10:34.639767');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm_horiike@sanwakensho.co.jp', 0, '三和建商株式会社', '', '', '堀池　通浩', 0, '2015-04-17 21:11:07.889878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-kimura@wesco.co.jp', 0, '株式会社ウエスコ', '環境設計部　環境設計課', '', '木村　浩和', 0, '2015-04-17 21:11:08.53209');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'howard@proten.com.tw', 0, '伯登有限公司', '', '', '黄　明章', 0, '2015-04-17 21:11:10.546098');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-okazaki@tohoku-kigyo.co.jp', 0, '東北企業株式会社', '第四営業部', '', '岡崎　啓一', 0, '2015-04-17 21:11:12.0804');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'oyabu.yamato@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '大薮　大和', 0, '2015-04-17 21:11:12.735594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inoue.takashi1@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '井上　崇', 0, '2015-04-17 21:11:13.095261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kiyoshi@kakutani.co.jp', 0, '角谷木材建設株式会社', '', '', '角谷　喜代志', 0, '2015-04-17 21:11:16.103284');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'susumu_kawaguchi@kurekan.co.jp', 0, '株式会社クレハ環境', '環境技術部　技術企画課', '', '河口　進', 0, '2015-04-17 21:11:24.166741');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sugie@ishizuka.co.jp', 0, '石塚硝子株式会社', '技術本部', '', '椙江　弘樹', 0, '2015-04-17 21:11:30.195914');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yanaura@omtecinc.co.jp', 0, '株式会社オムテック', '', '', '柳浦　公二郎', 0, '2015-04-17 21:11:46.014486');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tadahiko_miyoshi@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布製造所', '', '三好　正彦', 0, '2015-04-17 21:11:52.386998');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-takamura@aqua.plala.or.jp', 0, 'アクア創研有限会社', '', '', '高村　晋', 0, '2015-04-17 21:12:23.268758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kishimoto.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '営業部', '', '岸本　裕司', 0, '2015-04-17 21:12:25.605088');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'honma.yutaka@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '土木事業部　技術企画部', '', '本間　豊', 0, '2015-04-17 21:12:26.088244');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hirakawa@apower-now.net', 0, 'あじあ行政書士法人', '', '', '平川　雅夫', 0, '2015-04-17 21:12:26.788669');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yacokada@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　固化材グループ　', '', '岡田　八千代', 0, '2015-04-17 21:12:37.91624');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tanaka.makoto@ebara.com', 0, '株式会社荏原製作所', '社会システム計画・開発統括部　事業推進室', '', '田中　誠', 0, '2015-04-17 21:12:40.056934');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'uno@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '東京営業所', '', '宇野　敏志', 0, '2015-04-17 21:12:41.225032');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's.uchida@mys.co.jp', 0, '三好環境株式会社', '営業一部', '', '内田　成昭', 0, '2015-04-17 21:12:41.58131');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tadashi.tsunematsu@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術研究所　第一研究室', '', '常松　直志', 0, '2015-04-17 21:12:43.568564');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-miyagi@ohmiyakouki.com', 0, '有限会社大宮工機', '', '', '宮城　光秀', 0, '2015-04-17 21:12:48.644468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kidoy@jikco.co.jp', 0, '株式会社ジコー', '管理本部', '', '城戸　良重', 0, '2015-04-17 21:13:00.178446');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroshi-abe@obayashi-road.co.jp', 0, '大林道路株式会社', '本店　プラントシステム営業部', '', '阿部　浩', 0, '2015-04-17 21:13:36.608494');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@hakuei-kaitai.com', 0, '株式会社珀栄', '', '', '花房　伸', 0, '2015-04-17 21:13:37.83517');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tokyo@kamacho.co.jp', 0, '鎌長製衡株式会社', '営業本部　東京支店　営業1グループ', '', '山田　悠太郎', 0, '2015-04-17 21:13:48.776174');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'niwa@szken.co.jp', 0, '株式会社鈴鍵', '', '', '丹羽　庸介', 0, '2015-04-17 21:13:50.128321');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Toshiya.Nishimura@nsg.com', 0, '日本板硝子環境アメニティ株式会社', '東京事業部　エンジ部', '', '西村　俊哉', 0, '2015-04-17 21:13:56.178705');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'okumoto.kohei@kobelco.com', 0, 'コベルコ建機株式会社', '直轄営業部　営業グループ', '', '奥本　昂平', 0, '2015-04-17 21:14:32.153908');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mizuno.masamichi@kobelco.com', 0, '東日本コベルコ建機株式会社', '南関東支社　横浜営業所', '', '水野　真理', 0, '2015-04-17 21:14:32.801261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nobuaki_s@kyodohdoboku.co.jp', 0, '株式会社共同土木　千葉工場', '業務統括部　', '', '佐々木　伸明', 0, '2015-04-17 21:14:33.844421');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masahide_ohmiya@cosmo-sales.co.jp', 0, 'コスモリフォーム株式会社', '', '', '大宮　正秀', 0, '2015-04-17 21:14:35.972581');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'wakita@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '脇田　真治', 0, '2015-04-17 21:14:37.290754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'office@yamashita-shoten.com', 0, '有限会社山下商店', '', '', '山下　唱徳', 0, '2015-04-17 21:14:37.512278');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'minoru@kitajimashibori.co.jp', 0, '株式会社北嶋絞製作所', '', '', '北嶋　實', 0, '2015-04-17 21:14:37.965285');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'earth.toumi@gmail.com', 0, 'アース・グループ株式会社', '東京営業課', '', '田海　浩之', 0, '2015-04-17 21:14:44.819649');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takenaka-tetsuji@motec-co.jp', 0, '株式会社エムオーテック　大阪支店', '営業部', '', '竹中　哲治', 0, '2015-04-17 21:14:58.068265');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-hashizume@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '水処理営業部　技術第一課', '', '橋爪　祥世', 0, '2015-04-17 21:14:59.984123');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshiharu.nagashima@konicaminolta.com', 0, 'コニカミノルタ株式会社', '社会環境統括部　安全防災部　防災企画グループ', '', '永島　利晴', 0, '2015-04-17 21:15:05.406584');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shouichirou.higuchi@toda.co.jp', 0, '戸田建設株式会社', '価値創造推進部　開発センター', '', '樋口　正一郎', 0, '2015-04-17 21:15:32.332256');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kuboniwa-makoto@ise-egg.co.jp', 0, '有限会社つくばファーム', '', '', '久保庭　真', 0, '2015-04-17 21:19:53.191041');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h.nikaidou@garnet.dti.ne.jp', 0, '二階堂労働安全コンサルタント事務所', '', '', '二階堂　久', 0, '2015-04-17 21:19:53.518766');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazuma.enomoto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '榎本　一馬', 0, '2015-04-17 21:20:47.628708');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hayashi@nishikawa-rose.co.jp', 0, '西川ローズ株式会社', '', '', '林　三吉', 0, '2015-04-17 21:20:53.491304');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'wxmxy880@yahoo.co.jp', 0, 'エムストラスト株式会社', '', '', '鈴木　保弘', 0, '2015-04-17 21:20:54.315954');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'imai-hanako@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '今井　華子', 0, '2015-04-17 21:21:13.244847');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nishimura-takuma@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '西村　卓馬', 0, '2015-04-17 21:21:24.835061');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mi_yamazaki@smkc.co.jp', 0, '三井住商建材株式会社', '機能推進本部　特販部　環境チーム', '', '山﨑　巳之武', 0, '2015-04-17 21:21:28.836852');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'seijirou_yukawa@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '湯川　誠二郎', 0, '2015-04-17 21:25:50.197854');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'quality_section@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術　品質管理部', '', '本田　泰章', 0, '2015-04-17 21:26:14.648847');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ikedaT@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術・品質管理課', '', '池田　隆司', 0, '2015-04-17 21:26:17.861498');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kosuke.kitagishi@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '北岸　広祐', 0, '2015-04-17 21:27:01.443937');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-muta@tokushakogyo.co.jp', 0, '株式会社特車工業', '', '', '牟田　繁生', 0, '2015-04-17 21:27:02.123631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-ohata@skk.jp', 0, '三建設備工業株式会社', '営業本部　ソリューション部　', '', '大端　健治', 0, '2015-04-17 21:27:03.131031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kinusa.koide@mjk.mhi.co.jp', 0, '三菱重工環境・化学エンジニアリング株式会社', '営業統括部　海外営業部　海外プラント営業グループ', '', '小出　衣佐', 0, '2015-04-17 21:27:06.832884');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'oda.tomohiro@obayashi.co.jp', 0, '株式会社大林組', '技術本部　技術研究所　環境技術研究部', '', '小田　智弘', 0, '2015-04-17 21:27:15.816465');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hk@kikuchikasei.co.jp', 0, '株式会社菊池化成', '', '', '菊池　真悟', 0, '2015-04-17 21:27:22.609018');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tmnakagawa@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '中川　知子', 0, '2015-04-17 21:27:27.306533');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akitou@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '伊藤　顕人', 0, '2015-04-17 21:27:33.480123');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hgonoi@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '五ノ井　裕之', 0, '2015-04-17 21:27:37.217539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'osamu-ohashi@obayashi-road.co.jp', 0, '大林道路株式会社', '総合評価対策室', '', '大橋　紀', 0, '2015-04-17 21:27:43.802507');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takaoka.t@ohno-associates.jp', 0, 'オオノ開發株式会社', '開発室', '', '高岡　敏雄', 0, '2015-04-17 21:27:44.520712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'watanabe-yuko@city.anjo.lg.jp', 0, '安城市', '環境部環境首都推進課　', '', '渡辺　裕子', 0, '2015-04-17 21:27:45.354964');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nagaoka@ym.n-c-c.co.jp', 0, '株式会社日本コンピュータコンサルタント', '企画室　営業企画', '', '長岡　永典', 0, '2015-04-17 21:27:47.856072');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsujibayashi.masato@toshiba-tpsc.co.jp', 0, '東芝プラントシステム株式会社', '技術企画・開発部　', '', '辻林　正人', 0, '2015-04-17 21:27:49.48865');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shimada.masayoshi@canon-ecology.co.jp', 0, 'キヤノンエコロジーインダストリー株式会社', '生産統括センター　技術部　生産技術課', '', '島田　真由', 0, '2015-04-17 21:27:50.415832');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yo-ino@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門　営業統括部', '', '井野　嘉紀', 0, '2015-04-17 21:27:51.098427');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sano.koki@ebara.com', 0, '株式会社荏原製作所', '', '', '佐野　貴紀', 0, '2015-04-17 21:27:51.872042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a.momoi.zh@azbil.com', 0, 'アズビル株式会社', '東京営業所　2グループ', '', '百井　章文', 0, '2015-04-17 21:27:55.171217');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'inagakikz@sekisuijushi.co.jp', 0, '積水樹脂株式会社', '評価・環境管理部　安全・品質・環境グループ', '', '稲垣　和美', 0, '2015-04-17 21:27:55.620273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yonemoto-shinji@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　工事部', '', '米元　真治', 0, '2015-04-17 21:29:18.811066');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-17 21:29:24.449689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujikake1167@murata-s.co.jp', 0, 'ムラタ計測器サービス株式会社', '営業部', '', '藤掛　元', 0, '2015-04-17 21:29:24.651942');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-17 21:30:23.62963');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kimura-makoto@msc.mitsuba-gr.com', 0, '株式会社ミツバサンコーワ', 'KS事業推進室', '', '木村　実', 0, '2015-04-17 21:30:29.969147');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kameyama.teruhiko@yellow.plala.or.jp', 0, '株式会社亀山', '', '', '亀山　照彦', 0, '2015-04-17 21:30:30.441627');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm_ohsumi@chemico.co.jp', 0, '小野田ケミコ株式会社', '営業本部　地盤環境部', '', '大住　学', 0, '2015-04-17 21:30:37.996425');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-takamizawa@toriik.co.jp', 0, '鳥居化成株式会社', '技術部', '', '高見沢　栄幸', 0, '2015-04-17 21:30:38.330003');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-17 21:31:17.930264');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kaji@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '事業推進本部　製品事業部', '', '鍛冶　秀充', 0, '2015-04-17 21:31:19.13966');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nobuhito.okamoto@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術部', '', '岡本　信人', 0, '2015-04-17 21:31:19.873617');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ebityan1225@gmail.com', 0, '東京農業大学', '', '', '海老原　佑', 0, '2015-04-17 21:31:26.763372');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-ando@tanaka-iron-works.com', 0, '営業課', '', '', '安東　晃あき（あきは旧字）', 0, '2015-04-17 21:31:36.077727');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'katsume@lion.co.jp', 0, 'ファインケミカル事業所　生産技術課　技術チーム', '', '', '根本　勝幸', 0, '2015-04-17 21:31:40.798627');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yasuhiro.kawamura@nipponroad.co.jp', 0, '生産技術本部　機械部', '', '', '河村　泰博', 0, '2015-04-17 21:31:41.170064');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y.sashizawa@techcorporation.co.jp', 0, '企画部', '課長', '', '指澤　祐二', 0, '2015-04-17 21:31:41.721557');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@wwwb.jp', 0, '建設機械部', '部長', '', '松崎　徳一', 0, '2015-04-17 21:31:42.006115');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'iijima@keiai-grp.com', 0, '', '代表取締役', '', '飯島　圭士', 0, '2015-04-17 21:31:42.927344');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'noriotakahashi@totetsu.jp', 0, '土木本部　', '建設技術部建設土木担当　部長', '', '髙橋　紀男', 0, '2015-04-17 21:31:54.932984');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Makoto.Takeuchi@morita119.com', 0, '製造部　生産課', '課長代理', '', '竹内　誠', 0, '2015-04-17 21:31:59.939249');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'bugland2@yahoo.co.jp', 0, '', '常務取締役', '', '穂坂　勝彦', 0, '2015-04-17 21:32:00.815932');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'moriaki-yuhara@melplant.co.jp', 0, '都市システム部　産業冷熱課', '課長', '', '湯原　守昭', 0, '2015-04-17 21:32:01.553861');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-mino@asagiri-f.co.jp', 0, '', '代表取締役', '', '簑　威賴', 0, '2015-04-17 21:32:02.601782');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mitani@hrc.co.jp', 0, '東京支店　土木用止水材グループ', '次長　グループリーダー', '', '三谷　安司', 0, '2015-04-17 21:32:10.537225');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroyuki_1_nagata@kirin.co.jp', 0, '環境安全推進部', '副部長', '', '永田　弘之', 0, '2015-04-17 21:32:47.618707');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'koujin@mes.co.jp', 0, '九州支社', '課長補佐', '', '荒神　琢磨', 0, '2015-04-17 21:32:47.917018');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-ikeno@okawara-mfg.jp', 0, '環境エンジニアリング部営業技術課', '', '', '池野　奈津美', 0, '2015-04-17 21:32:48.346933');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y_uchida@origin.jp', 0, 'エコエコ推進室', '', '', '内田　裕二', 0, '2015-04-17 21:33:01.007021');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akira_mashiko@mhps.com', 0, '日立工場安全環境課', '主任', '', '益子　明', 0, '2015-04-17 21:34:29.112771');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-nagao@idex.co.jp', 0, '技術商品課', '課長補佐', '', '長尾　英昭', 0, '2015-04-17 21:34:33.77636');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'makino@logispac.co.jp', 0, '営業部　包装コンサルタント', '主任', '', '牧野　憲', 0, '2015-04-17 21:34:46.863318');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takasugi@logispac.co.jp', 0, '営業部', '', '', '高杉　和哉', 0, '2015-04-17 21:34:47.176739');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ooshiro@eutectic.co.jp', 0, '', '所長', '', '大城　永勝', 0, '2015-04-17 21:34:47.467921');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'info@eco-club.co.jp', 0, '', '代表取締役', '', '木下　高廣', 0, '2015-04-17 21:34:47.652235');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shinji_sasaki@cosmo-oil.co.jp', 0, '給油ビジネスユニット　千葉製油所　安全環境課', '担当課長', '', '佐々木　真司', 0, '2015-04-17 21:34:53.8896');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-kawaguchi@onishi-e.co.jp', 0, '営業統括部　第二営業課　東京営業所', '所長代理', '', '川口　高生', 0, '2015-04-17 21:34:54.203536');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsujiih@osk-k.co.jp', 0, '東京支社　第三営業部　東京営業2課', '主任', '', '辻井　久', 0, '2015-04-17 21:35:04.169345');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryoji.takeuchi@toshiba.co.jp', 0, '事業開発センター　総合エンジニアリング部', '参事', '', '竹内　亮二', 0, '2015-04-17 21:35:06.029796');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'horio_s@konishi-saiseki.co.jp', 0, '坂祝事業部', '取締役事業部長', '', '堀尾　伸介', 0, '2015-04-17 21:35:23.887832');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masashi_sanguu@tte-net.co.jp', 0, '技術企画部　参与', '購買企画室長', '', '三宮　正至', 0, '2015-04-17 21:35:31.291502');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mariizumi@nihondensi.co.jp', 0, '営業グループ', '', '', '有泉　光人', 0, '2015-04-17 21:35:34.229704');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kawasakiha@chiyodamelco.co.jp', 0, '', '取締役社長', '', '川崎　晴夫', 0, '2015-04-17 21:35:34.500436');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'center@ne.catv.ne.jp', 0, '', '代表取締役', '', '中条　大祐', 0, '2015-04-17 21:35:40.859448');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'fujioka0522@gmail.com', 0, '', '', '', '藤岡　まり', 0, '2015-04-17 21:35:44.93211');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tomohiro.seji@mcsekiyu.co.jp', 0, 'リテール開発部', '', '', '清地　智宏', 0, '2015-04-17 21:35:53.273081');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsumotsumo@mcsekiyu.co.jp', 0, 'リテール開発部', '', '', '津森　邦昭', 0, '2015-04-17 21:35:59.365032');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-sakuri@livretech.co.jp', 0, '製造本部　購買部　購買2課', '主任', '', '櫻井　和安', 0, '2015-04-17 21:36:00.285513');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-miura@konari.com', 0, '事務機販売課', '係長', '', '三浦　正芳', 0, '2015-04-17 21:36:00.996838');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-shima@tomitaph.co.jp', 0, '生産管理部　安全・環境管理課', '課長', '', '島　一夫', 0, '2015-04-17 21:36:02.15597');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y.ohtaki@paramount.co.jp', 0, '総務部　安全衛生環境課', '係長', '', '大瀧　良則', 0, '2015-04-17 21:36:30.45276');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yamauchi.yuuki@subaru-fhi.co.jp', 0, '産業機器カンパニーマーケティング部', '主査', '', '山内　雄樹', 0, '2015-04-17 21:36:36.153085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-syooza@takuma.co.jp', 0, '環境本部　調達部　東京調達課', '課長', '', '庄崎　敏考', 0, '2015-04-17 21:36:36.542102');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'edasaki.r@hn.cik.co.jp', 0, '環境管理室', '', '', '枝崎　隆一', 0, '2015-04-17 21:36:37.117048');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h.ooyagi@ccs-gr.co.jp', 0, '', '専務取締役', '', '大八木　博之', 0, '2015-04-17 21:36:38.406366');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'furukawashinkou-kouji@abox3.so-net.ne.jp', 0, '', '代表取締役', '', '古川　幸司', 0, '2015-04-17 21:36:39.647957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tetm-morita@nts.ricoh.co.jp', 0, '環境推進本部推進室', '', '', '森田　哲郎', 0, '2015-04-17 21:36:41.017726');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h-abe@takatoshi.co.jp', 0, '執行役員　法務事業本部副本部長　兼　再資源化推進部長', '', '', '阿部　秀行', 0, '2015-04-17 21:36:41.484878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'mztadmin@po.mizota.co.jp', 0, '管理本部　総務部システム開発課', '課長補佐', '', '緒方　元', 0, '2015-04-17 21:36:47.405665');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sugiyama-yoshimasa@meti.go.jp', 0, '関東経済産業局　資源エネルギー環境部　資源エネルギー環境課', '総合エネルギー広報係長', '', '杉山　佳正', 0, '2015-04-17 21:37:11.641962');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'funanami.kenta@ad-hzm.co.jp', 0, '建築事業本部　事業本部　積算センター　構造グループ', '建築積算士', '', '舩浪　健太', 0, '2015-04-17 21:37:17.691517');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Kazumi.Mogi@showa-shell.co.jp', 0, '石油事業部　首都圏支店　潤滑油販売課', '', '', '茂木　和美', 0, '2015-04-17 21:37:27.604681');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'e-mashiba@tyo.kubota-ksk.co.jp', 0, 'リサイクルエンジニアリング部　東京技術工事課', '係長', '', '間柴　栄輝', 0, '2015-04-17 21:37:32.00207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masanori_atarashi@tte-net.co.jp', 0, '営業本部', '部長', '', '新　真則', 0, '2015-04-17 21:38:04.130027');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-kitagawa@nissan-nics.co.jp', 0, 'NICS購買センター', '', '', '喜多川　計幸', 0, '2015-04-17 21:38:10.618279');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-saito@toshiba-teli.co.jp', 0, '営業部　第1営業担当', '課長代理', '', '斉藤　清', 0, '2015-04-17 21:38:11.983681');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeshi.hattori@jp.belfor.com', 0, '災害早期復旧部　技術課', '', '', '服部　武', 0, '2015-04-17 21:38:24.434569');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'n-wada@kondotec.co.jp', 0, '海外営業部', '主任', '', '和田　倫嘉', 0, '2015-04-17 21:38:24.956234');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, '5203302@shinryo-gr.com', 0, 'リサイクル・ファイン事業部門　資源環境部', '二島工場長', '', '有田　宏之', 0, '2015-04-17 21:38:25.482194');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a.sato@ryokikogyo.co.jp', 0, '工事課', '係長', '', '佐藤　明俊', 0, '2015-04-17 21:38:26.673457');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'smatsui@ce.taisei.co.jp', 0, '土木本部　土木技術部　インフラ・海洋技術室', '課長', '', '松井　俊二', 0, '2015-04-17 21:38:27.272511');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't-jin@takatoshi.co.jp', 0, '再資源化推進部', '再資源化グループ　グループ長', '', '神　司', 0, '2015-04-17 21:38:30.283845');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sasaki@nakashiki.com', 0, '', '代表取締役社長', '', '佐々木　健治', 0, '2015-04-17 21:38:31.589389');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kouji-iwase@city.edogawa.tokyo.jp', 0, '', '課長', '', '岩瀬　耕二', 0, '2015-04-17 21:38:32.048429');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 's-suzuki@pgf-japan.com', 0, '開発事業部', '主任', '', '鈴木　慎二', 0, '2015-04-17 21:39:04.543353');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'minemura@kanaflex.co.jp', 0, '営業部　工業用品課', '係長', '', '峰村　信哉', 0, '2015-04-17 21:39:17.8544');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'f-komatsu@hamanetsu.co.jp', 0, '東日本営業部　特販グループ', '主幹', '', '小松　文裕', 0, '2015-04-17 21:39:23.61115');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takashi-matsuura@mes.co.jp', 0, '環境ソリューション事業本部', '課長補佐', '', '松浦　高士', 0, '2015-04-17 21:39:24.169785');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tsubasa-sugawara@mes.co.jp', 0, '環境施設事業本部　第１整備部１課', '', '', '菅原　翼', 0, '2015-04-17 21:39:24.459581');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tetsuo-n@kubota.co.jp', 0, '電装機器営業部　大阪計量システム課', '担当課長', '', '西　哲朗', 0, '2015-04-17 21:42:33.609836');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tomoyasu.shimao@jfe-shoji.co.jp', 0, '東部鉄鋼本部　厚板部　厚板室', '副部長', '', '島尾　知保', 0, '2015-04-17 21:42:34.76783');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'saito@tandts.co.jp', 0, '', '顧問', '', '斎藤　恒成', 0, '2015-04-17 21:42:55.063969');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'j-yamashita@tanaka-iron-works.com', 0, '', 'セールスエンジニア', '', '山下　淳一', 0, '2015-04-17 21:42:58.566106');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takeshi.ueno@kubota.com', 0, 'パイプシステム事業部　パルプ技術部　技術第二グループ', '主任', '', '上野　岳志', 0, '2015-04-17 21:43:06.724058');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tomohisa_t@kyodohdoboku.co.jp', 0, '業務統括部　環境開発課', '主任', '', '高梨　智久', 0, '2015-04-17 21:43:07.413794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-kikuchi@flight-one.co.jp', 0, '営業部', 'マネージャー', '', '菊地　正人', 0, '2015-04-17 21:43:08.695595');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kiyoshi_s@yoshimura-inc.co.jp', 0, '統括管理部', 'アドバイザー　品質・環境ISO管理責任者', '', '鈴木　潔', 0, '2015-04-17 21:43:08.886979');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ariki@nextenergy.jp', 0, '', '取締役社長', '', '有木　正浩', 0, '2015-04-17 21:43:15.402907');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'd.suzuki@paper-recycle.jp', 0, '', '取締役社長', '', '鈴木　大二郎', 0, '2015-04-17 21:43:15.812922');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-nakazato@ac.daido.co.jp', 0, '渋川工場　環境室', '主任', '', '中里　康弘', 0, '2015-04-17 21:43:16.615576');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kazuto.anata@jp.com', 0, '総務部　安全環境防災課', '統括課長', '', '英　和人', 0, '2015-04-17 21:43:26.125473');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hidekuni.taoka@nipponroad.co.jp', 0, '生産技術本部機械部', '課長', '', '田岡秀邦', 0, '2015-04-17 21:43:26.846012');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shin.kenei@subaru-fhi.co.jp', 0, 'スバル製造本部　群馬製作所　生産技術研究部　SIグループ主査', '主査', '', '沈　建栄', 0, '2015-04-17 21:43:32.158177');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'akiba@cowell.co.jp', 0, 'ＬＥＤソリューション　第一営業部', '課長', '', '秋葉　義之', 0, '2015-04-17 21:43:35.568745');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'atsushikawamoto@kubota.com', 0, '本機製造部 本機製造第二課', '', '', '川本　篤志', 0, '2015-04-17 21:44:01.168283');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nanohanaminoh@gmail.com', 0, '', '副代表', '', '小林　武士', 0, '2015-04-17 21:44:06.173727');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masashi-okumura@cdg.co.jp', 0, '営業本部　東京営業2部　営業７課', '主任', '', '奥村　昌史', 0, '2015-04-17 21:44:13.39369');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakamura@kirintechno.co.jp', 0, '技術開発部　開発１課', '課長', '', '中村　裕宗', 0, '2015-04-17 21:44:21.937196');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'araki-h@toso.co.jp', 0, '管理室総務課', '公害防止管理者', '', '新木　浩之', 0, '2015-04-17 21:44:26.38503');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.takenouchi@niihama.co.jp', 0, '破砕機事業部　設計課', '', '', '竹之内　智行', 0, '2015-04-17 21:44:40.359628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'susuga@futami.net', 0, '製紙原料古紙直納問屋　産廃・一廃中間処理施設　営業部', '', '', '煤賀　正人', 0, '2015-04-17 21:45:01.343786');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hi-ishikawa@tyo.kubota-ksk.co.jp', 0, 'Ｏ＆Ｍ本部技術グループ', '', '', '石川　博将', 0, '2015-04-17 21:45:02.107885');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'k-nagai@tyo.kubota.co.jp', 0, 'Ｏ＆Ｍ本部技術グループ', '副部長', '', '長井　克幸', 0, '2015-04-17 21:45:04.558051');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kuroe.soichi@kagata.co.jp', 0, '', '土木部長', '', '黒江　宗一', 0, '2015-04-17 21:45:05.364479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'isao_kimura@kanaijuyo.co.jp', 0, '不織布事業部　不戦不営業部営業第一グループ', 'グループリーダー', '', '木村　功', 0, '2015-04-17 21:46:07.96769');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'keiichirou.kimura@okumuragumi.jp', 0, '環境技術部　リニューアル課　', '主任', '', '木村　哲一郎', 0, '2015-04-17 21:46:09.63857');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takagi@ksg-group.co.jp', 0, '運輸事業部', '主任', '', '高木　仁志', 0, '2015-04-17 21:46:10.450648');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'oono@trustlight.jp', 0, '営業本部　第一営業課　営業１係', '主任', '', '大野　翔平', 0, '2015-04-17 21:46:10.851881');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sekiguchi@garbage.co.jp', 0, '営業部', '', '', '関口　司忠', 0, '2015-04-17 21:47:00.045483');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakao.shunji@obayashi.co.jp', 0, '技術本部　環境ソリューション部　スマートシティ推進課', '担当課長', '', '中尾　俊二', 0, '2015-04-17 21:47:08.455001');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'chuji.minami@jp.toto.com', 0, '茅ヶ崎工場　安全環境グループ', '', '', '皆見　忠慈', 0, '2015-04-17 21:47:40.806051');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshikazu.sato@kubota.com', 0, '電装機器事業部NPW-PT', '副主査', '', '佐藤　嘉一', 0, '2015-04-17 21:47:45.891194');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'iida-satoru@motec-co.jp', 0, '営業第二部　営業第四課', '', '', '飯田　悟', 0, '2015-04-17 21:47:58.247574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'honda-seiji@motec-co.jp', 0, '営業本部　', '技術部センター部長代理', '', '本田　誠司', 0, '2015-04-17 21:48:09.956932');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Hirozumi.Yoshitake@nsg.com', 0, '東京事業部　エンジ部', '設計G　積算　課長', '', '吉武　裕純', 0, '2015-04-17 21:48:18.450681');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.nakasima@seisou-center.co.jp', 0, '', '本部長', '', '中嶋　満', 0, '2015-04-17 21:48:26.182622');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shinya.tanaka@exc.tokai-rika.co.jp', 0, '生産技術センター施設環境部環境管理室', '室長兼任環境グループ長', '', '田中　真也', 0, '2015-04-17 21:48:26.542689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shiono@yutaka-denki.jp', 0, '営業技術本部', '部長', '', '塩野　正春', 0, '2015-04-17 21:48:26.875278');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'shimura@yutaka-denki.jp', 0, '営業技術本部設計課', '係長', '', '志村　真', 0, '2015-04-17 21:48:27.052886');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tg-osada@tokyo-gas.co.jp', 0, '神奈川西支店　地域広報グループ　広聴広報担当', '主任', '', '長田　猛', 0, '2015-04-17 21:48:28.600847');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ta.kurisaki@hino.co.jp', 0, '車両実験部　総括室　', '指導員', '', '栗崎　忠', 0, '2015-04-17 21:48:29.152997');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'h_araki@muc.co.jp', 0, '計量器コンサルタント営業技術部', '部長', '', '荒木　宏長', 0, '2015-04-17 21:48:32.40536');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'masaaki.takeshita@toshiba.co.jp', 0, '浜川崎工場　生産技術部生産技術・環境担当', '主務', '', '竹下　政明', 0, '2015-04-17 21:48:34.823413');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tkohara@rubycon.co.jp', 0, '経営管理部', '環境保全課長', '', '小原　剛', 0, '2015-04-17 21:48:35.812058');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ka_igarashi@kyodoprinting.co.jp', 0, 'トータルソリューションオフィス　ビジネス開発グループ', '', '', '五十嵐　一弘', 0, '2015-04-17 21:48:40.191971');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ttaniguc@bbs.co.jp', 0, 'ソリューション１部', '', '', '谷口　努', 0, '2015-04-17 21:48:46.620901');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-nagashima@withwaste.jp', 0, '東関東リサイクルパーク　茨城事業所', '所長', '', '永島　誠', 0, '2015-04-17 21:48:47.218841');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Akira_Toyoda@covalent.co.jp', 0, 'セラミック事業部', '営業グループ営業支援担当', '', '豊田　明', 0, '2015-04-17 21:48:55.949564');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tomohiko.muto@bridgestone.com', 0, '工業資材販売企画本部　工業資材販売企画2G', '', '', '武藤　智彦', 0, '2015-04-17 21:49:38.770386');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kawakami@gomi39.co.jp', 0, '', '代表取締役社長', '', '川上　英男', 0, '2015-04-17 21:49:39.259464');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kenji.yamaguchi@sumitomocorp.co.jp', 0, '非鉄金属事業部　事業投資チーム　', 'サブリーダー', '', '山口　健二', 0, '2015-04-17 21:49:42.19774');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Kazumasa_Ohashi@suntory.co.jp', 0, 'R&Dサポートセンター　', '専任課長', '', '大橋　一雅', 0, '2015-04-17 21:49:42.44817');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'okamoto@tokushakogyo.co.jp', 0, '製造部', '課長', '', '岡本　朝道', 0, '2015-04-17 21:49:43.948402');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'eigyo-03@keihin-group.co.jp', 0, '', '営業課長', '', '亀谷　達哉', 0, '2015-04-17 21:49:44.605146');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tatsuhiro_fuse@taiseirotec.co.jp', 0, '技術研究所', '', '', '布施　達弘', 0, '2015-04-17 21:49:55.220744');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'sasakihi@tge.co.jp', 0, '東京ガスエンジニアリング株式会社', 'エンジニアリング本部', '', '佐々木　秀夫', 0, '2015-04-17 22:26:42.018929');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'Ja1pro@jc5.so-net.ne.jp', 0, 'ソニー(株)', 'ＴＶ事業部', '', '池上　博一', 0, '2015-04-17 22:26:43.298523');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm-yamanaka@kyowakako.co.jp', 0, '協和化工株式会社', '営業本部　営業推進課', '', '山中　将之', 0, '2015-04-17 22:28:56.569227');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'take4@o-ura.co.jp', 0, '大浦工業株式会社', '', '', '大浦　健', 0, '2015-04-17 22:29:16.817136');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tate.katsumasa@sks-seikosha.co.jp', 0, '株式会社　清光社', '管理本部　総務部　総務・人事グループ', '', '館　勝昌', 0, '2015-04-17 22:29:25.792923');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kutsumi-s@kimica.jp', 0, '株式会社キミカ', '製造部製造第4グループ', '', '久津見　知', 0, '2015-04-17 22:35:35.250671');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takaharu.matsuoka@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部プロセス技術部', '', '松岡　隆晴', 0, '2015-04-17 22:37:24.480135');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takaharu.matsuoka@daikin.co.jp', 0, '化学事業部プロセス技術部', '', '', '松岡　隆晴', 0, '2015-04-17 22:37:31.765025');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'taguchi@showa-kikai.co.jp', 0, '東京チェーングループ', '', '', '田口　太桂英', 0, '2015-04-17 22:37:40.637064');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nishi@studiocovo.com', 0, '', '監事', '', '西　正徳', 0, '2015-04-17 22:37:40.990598');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'taguchi@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '田口　太桂英', 0, '2015-04-17 22:37:46.066187');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hayakawa@showa-kikai.co.jp', 0, '東京チェーングループ', '副参事', '', '早川　昇', 0, '2015-04-17 22:37:47.755726');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tamami.fujioka@inoac.co.jp', 0, 'Ｇ営業本部産業資材営業本部東京支店', '', '', '藤岡　珠未', 0, '2015-04-17 22:37:52.113145');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hayakawa@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '早川　昇', 0, '2015-04-17 22:37:52.305532');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakahyo1@yokohama-marunaka.co.jp', 0, '', 'ＪＧＡＰ導入指導員　登録番号2527　副社長', '', '中堀　督勇', 0, '2015-04-17 22:37:54.806736');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takasaki-shuhei@motec-co.jp', 0, '東京本店　営業第二部　営業第四課', '', '', '高崎　脩平', 0, '2015-04-17 22:38:08.684052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'takasaki-shuhei@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第二部　営業第四課', '', '高崎　脩平', 0, '2015-04-17 22:38:09.259224');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tamagawa-tatsunori@motec-co.jp', 0, '東京本店　営業第一部', '部長代理', '', '玉川　辰典', 0, '2015-04-17 22:38:20.362167');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'tamagawa-tatsunori@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部', '', '玉川　辰典', 0, '2015-04-17 22:38:20.923292');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ysmatsumr@malco.co.jp', 0, '株式会社エムエーパッケージング', 'ＣＳＲ推進部', '', '松村　裕安', 0, '2015-04-17 22:38:21.793692');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yshimada@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '島田　雄二', 0, '2015-04-17 22:38:22.948697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yshimada@nihondensi.co.jp', 0, '営業グループ', '', '', '島田　雄二', 0, '2015-04-17 22:38:25.887317');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 're-frex@hit-5.net', 0, '株式会社リフレックス', '', '', '山崎　章弘', 0, '2015-04-17 22:38:32.716138');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.nogi.id@azbil.com', 0, 'アズビル株式会社', 'サービス本部　東京サービス部　東京サービス2グループ', '', '野木　毅', 0, '2015-04-17 22:38:33.727427');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ko-baba@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門海外事業部', '', '馬場　恒次', 0, '2015-04-17 22:38:34.410811');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yu-sugisaki@tokyoink.co.jp', 0, '東京インキ株式会社', '', '', '杉崎　幸利', 0, '2015-04-17 22:38:35.322231');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'motome@mail.seikitokyu.co.jp', 0, 'エス・ティ・サービス　株式会社', '', '', '求　輝芳', 0, '2015-04-17 22:38:37.494892');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'motome@mail.seikitokyu.co.jp', 0, '', '取締役　業務統括部長', '', '求　輝芳', 0, '2015-04-17 22:38:38.200775');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yuji_ichikawa@kurekan.co.jp', 0, '', 'かながわ処理部長', '', '市川　勇治', 0, '2015-04-17 22:38:41.38036');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'a_ishida@kyodoprinting.co.jp', 0, 'プロモーションメディア事業部　第一営業本部　営業第一部', '部長', '', '石田　淳', 0, '2015-04-17 22:38:44.398132');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'm.nagashima@nipponham.co.jp', 0, '工事部', '部長', '', '長島　光昭', 0, '2015-04-17 22:38:49.278605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-sakamoto@fuyo.co.jp', 0, '株式会社扶洋', 'プラントシステムグループ', '', '阪元　保彦', 0, '2015-04-17 22:40:25.547356');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsumoto@ebisukikou.co.jp', 0, '恵比寿機工株式会社', '', '', '松本　俊之', 0, '2015-04-17 22:40:29.715436');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ymamotoaki229@nssb.nssmc.com', 0, '日鉄住金物産株式会社', '総務・広報部　ＥＭＳ推進事務局', '', '永渕　晃子', 0, '2015-04-17 22:42:39.159482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'r-takatori@tanaka-iron-works.com', 0, '田中鉄工株式会社', 'セールスエンジニア', '', '高取　竜樹', 0, '2015-04-17 22:43:34.733684');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'okada@tachibana-m.co.jp', 0, '株式会社立花マテリアル', '東京支店　営業部　営業二課', '', '岡田　公彦', 0, '2015-04-17 22:46:09.016782');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'atsugi@kksat.jp', 0, '株式会社サトー', '', '', '渡辺　一城', 0, '2015-04-17 22:46:13.594973');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hayafuji.eiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '安全環境部　環境グループ', '', '早藤　英一', 0, '2015-04-17 22:47:08.259161');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ryota.mori@yoshimine.co.jp', 0, '株式会社よしみね', '総務部', '', '森　諒太', 0, '2015-04-17 22:54:26.267011');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kasuya.hideo@tokyu-cnst.co.jp', 0, '東急建設株式会社', '営業本部　鉄道営業統括部', '', '粕谷　英夫', 0, '2015-04-17 22:54:26.623794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'horikawa@ksg-group.co.jp', 0, '株式会社ジャパンリコロジー', '', '', '堀川　豊彦', 0, '2015-04-17 22:58:04.489777');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'chiba.k@daiwa-tk.co.jp', 0, '大和鉄原工産株式会社', '営業本部　第一営業部', '', '千葉　幸一郎', 0, '2015-04-17 22:58:25.1789');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'toshiaki-goto@jfe-kankyo.co.jp', 0, 'JFE環境株式会社', '営業本部　', '', '後藤　俊彰', 0, '2015-04-17 22:59:17.474398');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'moriyoshi-tsunekazu@jfe-eng.co.jp', 0, 'JFEエンジニアリング株式会社', '環境プラント事業部　技術部　', '', '守吉　庸和', 0, '2015-04-17 22:59:56.123331');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'ishii@sun-express.co.jp', 0, '株式会社サン・エキスプレス', '第一営業部　', '', '石井　尚紀', 0, '2015-04-17 23:01:24.483486');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kaji-ta@city.kawasaki.jp', 0, '川崎市', '環境局施設部施設整備課', '', '梶　泰介', 0, '2015-04-17 23:02:00.133036');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'matsuzawa@sun-express.co.jp', 0, '株式会社サン・エキスプレス', '第一営業部', '', '松澤　快之', 0, '2015-04-17 23:05:13.351262');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'yoshimura.ryoko@lab.ntt.co.jp', 0, '日本電信電話株式会社　NTTフォトニクス研究所', 'フォトニクスデバイス研究部', '', '吉村　了行', 0, '2015-04-17 23:03:58.993326');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'y-egawa@aitech.co.jp', 0, '株式会社アイテク', '設備事業部　営業部', '', '恵川　幸男', 0, '2015-04-17 23:06:48.729918');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'nakamura-s@sc-cement.co.jp', 0, '住商セメント株式会社', '', '', '中村　哲', 0, '2015-04-17 23:06:52.738157');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'watanabe.AW1929@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '渡邉　政和', 0, '2015-04-17 23:08:24.814686');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'kobayashi.keiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '小林　敬一', 0, '2015-04-17 23:14:17.035842');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hiroshi_nishioka@scm.shi.co.jp', 0, '大阪住重建機株式会社', '営業課', '', '西岡　浩史', 0, '2015-04-17 23:14:22.899944');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'taniguchi@ym-e.com', 0, 'ワイエム興業株式会社', '', '', '谷口　敏幸', 0, '2015-04-17 23:15:24.075831');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'H.Uji@mitsui-plastics.com', 0, '三井物産プラスチック株式会社', '工業材料本部　環境・製品部　住環境製品室', '', '氏　勇人', 0, '2015-04-17 23:24:12.690395');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sasakihi@tge.co.jp', 0, '東京ガスエンジニアリング株式会社', 'エンジニアリング本部', '', '佐々木　秀夫', 0, '2015-04-17 23:24:50.616953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Ja1pro@jc5.so-net.ne.jp', 0, 'ソニー(株)', 'ＴＶ事業部', '', '池上　博一', 0, '2015-04-17 23:24:51.391246');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-ando@tanaka-iron-works.com', 0, '田中鉄工株式会社', '営業課', '', '安東　晃あき（あきは旧字）', 0, '2015-04-17 23:24:55.831554');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'katsume@lion.co.jp', 0, 'LION', 'ファインケミカル事業所　生産技術課　技術チーム', '', '根本　勝幸', 0, '2015-04-17 23:25:00.384375');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yasuhiro.kawamura@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　機械部', '', '河村　泰博', 0, '2015-04-17 23:25:00.928237');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y.sashizawa@techcorporation.co.jp', 0, '株式会社テックコーポレーション', '企画部', '', '指澤　祐二', 0, '2015-04-17 23:25:01.541233');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'info@wwwb.jp', 0, 'WWB株式会社', '建設機械部', '', '松崎　徳一', 0, '2015-04-17 23:25:01.914862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'iijima@keiai-grp.com', 0, '株式会社ケイアイ', '', '', '飯島　圭士', 0, '2015-04-17 23:25:02.548302');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'noriotakahashi@totetsu.jp', 0, '東鉄工業株式会社', '土木本部　', '', '髙橋　紀男', 0, '2015-04-17 23:25:02.771273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Makoto.Takeuchi@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産課', '', '竹内　誠', 0, '2015-04-17 23:25:08.194211');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'bugland2@yahoo.co.jp', 0, '富士宮清掃有限会社', '', '', '穂坂　勝彦', 0, '2015-04-17 23:25:08.906642');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'moriaki-yuhara@melplant.co.jp', 0, '三菱電機冷熱プラント株式会社　東京支社', '都市システム部　産業冷熱課', '', '湯原　守昭', 0, '2015-04-17 23:25:09.497328');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-mino@asagiri-f.co.jp', 0, '有限会社朝霧牧場', '', '', '簑　威賴', 0, '2015-04-17 23:25:10.184229');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mitani@hrc.co.jp', 0, '早川ゴム株式会社', '東京支店　土木用止水材グループ', '', '三谷　安司', 0, '2015-04-17 23:25:10.604579');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hiroyuki_1_nagata@kirin.co.jp', 0, 'キリンエンジニアリング株式会社', '環境安全推進部', '', '永田　弘之', 0, '2015-04-17 23:25:46.96865');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'koujin@mes.co.jp', 0, '三井造船株式会社', '九州支社', '', '荒神　琢磨', 0, '2015-04-17 23:25:47.27629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'n-ikeno@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部営業技術課', '', '池野　奈津美', 0, '2015-04-17 23:25:47.753615');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y_uchida@origin.jp', 0, 'オリジン電気株式會社', 'エコエコ推進室', '', '内田　裕二', 0, '2015-04-17 23:25:53.622716');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h-nagao@idex.co.jp', 0, '株式会社新出光', '技術商品課', '', '長尾　英昭', 0, '2015-04-17 23:26:09.623125');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'makino@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部　包装コンサルタント', '', '牧野　憲', 0, '2015-04-17 23:26:09.833845');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takasugi@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部', '', '高杉　和哉', 0, '2015-04-17 23:26:10.021062');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ooshiro@eutectic.co.jp', 0, '日本ユテク株式会社', '', '', '大城　永勝', 0, '2015-04-17 23:26:10.236338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'info@eco-club.co.jp', 0, '株式会社北陸環境サービス', '', '', '木下　高廣', 0, '2015-04-17 23:26:10.420537');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shinji_sasaki@cosmo-oil.co.jp', 0, 'コスモ石油株式会社', '給油ビジネスユニット　千葉製油所　安全環境課', '', '佐々木　真司', 0, '2015-04-17 23:26:10.720743');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-kawaguchi@onishi-e.co.jp', 0, '大西電機工業株式会社', '営業統括部　第二営業課　東京営業所', '', '川口　高生', 0, '2015-04-17 23:26:10.885632');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tsujiih@osk-k.co.jp', 0, '大阪工機株式会社', '東京支社　第三営業部　東京営業2課', '', '辻井　久', 0, '2015-04-17 23:26:22.170033');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ryoji.takeuchi@toshiba.co.jp', 0, '株式会社東芝　コミュニティ・ソリューション社', '事業開発センター　総合エンジニアリング部', '', '竹内　亮二', 0, '2015-04-17 23:26:23.458303');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'horio_s@konishi-saiseki.co.jp', 0, '株式会社小西砕石工業所', '坂祝事業部', '', '堀尾　伸介', 0, '2015-04-17 23:26:23.905308');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'masashi_sanguu@tte-net.co.jp', 0, '高砂熱学工業株式会社　技術本部', '技術企画部　参与', '', '三宮　正至', 0, '2015-04-17 23:26:30.4758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mariizumi@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '有泉　光人', 0, '2015-04-17 23:26:31.012146');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kawasakiha@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社', '', '', '川崎　晴夫', 0, '2015-04-17 23:26:31.275712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'br-toiawase@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '福山　英昭', 0, '2015-04-17 23:26:31.615273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'center@ne.catv.ne.jp', 0, '有限会社センターライン', '', '', '中条　大祐', 0, '2015-04-17 23:26:32.865549');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'fujioka0522@gmail.com', 0, 'em factory', '', '', '藤岡　まり', 0, '2015-04-17 23:26:37.279638');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tomohiro.seji@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '清地　智宏', 0, '2015-04-17 23:26:44.029309');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tsumotsumo@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '津森　邦昭', 0, '2015-04-17 23:26:50.319263');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-sakuri@livretech.co.jp', 0, '株式会社リーブルテック', '製造本部　購買部　購買2課', '', '櫻井　和安', 0, '2015-04-17 23:26:51.081155');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm-miura@konari.com', 0, '株式会社小成', '事務機販売課', '', '三浦　正芳', 0, '2015-04-17 23:26:51.527619');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-shima@tomitaph.co.jp', 0, '富田製薬株式会社', '生産管理部　安全・環境管理課', '', '島　一夫', 0, '2015-04-17 23:26:52.124527');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y.ohtaki@paramount.co.jp', 0, 'パラマウントベッド株式会社', '総務部　安全衛生環境課', '', '大瀧　良則', 0, '2015-04-17 23:27:12.940861');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yamatogma@gmail.com', 0, '株式会社マックマシンツール', '廃棄物管理士', '', '大和　幸男', 0, '2015-04-17 23:27:19.504078');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yamauchi.yuuki@subaru-fhi.co.jp', 0, '富士重工業株式会社', '産業機器カンパニーマーケティング部', '', '山内　雄樹', 0, '2015-04-17 23:27:30.194507');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-syooza@takuma.co.jp', 0, '株式会社タクマ', '環境本部　調達部　東京調達課', '', '庄崎　敏考', 0, '2015-04-17 23:27:30.435631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'edasaki.r@hn.cik.co.jp', 0, 'シーアイ化成株式会社', '環境管理室', '', '枝崎　隆一', 0, '2015-04-17 23:27:30.994031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h.ooyagi@ccs-gr.co.jp', 0, '株式会社クリーンコントロールサービス', '', '', '大八木　博之', 0, '2015-04-17 23:27:31.452463');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'furukawashinkou-kouji@abox3.so-net.ne.jp', 0, '有限会社古川新興', '', '', '古川　幸司', 0, '2015-04-17 23:27:32.328712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tetm-morita@nts.ricoh.co.jp', 0, '株式会社リコー', '環境推進本部推進室', '', '森田　哲郎', 0, '2015-04-17 23:27:33.719452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h-abe@takatoshi.co.jp', 0, '高俊興業株式会社', '執行役員　法務事業本部副本部長　兼　再資源化推進部長', '', '阿部　秀行', 0, '2015-04-17 23:27:34.076695');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mztadmin@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　総務部システム開発課', '', '緒方　元', 0, '2015-04-17 23:27:34.746158');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sugiyama-yoshimasa@meti.go.jp', 0, '経済産業省', '関東経済産業局　資源エネルギー環境部　資源エネルギー環境課', '', '杉山　佳正', 0, '2015-04-17 23:27:35.544967');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'funanami.kenta@ad-hzm.co.jp', 0, '株式会社安藤・間', '建築事業本部　事業本部　積算センター　構造グループ', '', '舩浪　健太', 0, '2015-04-17 23:27:41.793956');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Kazumi.Mogi@showa-shell.co.jp', 0, '昭和シェル石油株式会社', '石油事業部　首都圏支店　潤滑油販売課', '', '茂木　和美', 0, '2015-04-17 23:27:48.573948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'e-mashiba@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'リサイクルエンジニアリング部　東京技術工事課', '', '間柴　栄輝', 0, '2015-04-17 23:27:52.609793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'masanori_atarashi@tte-net.co.jp', 0, '高砂熱学工業株式会社', '営業本部', '', '新　真則', 0, '2015-04-17 23:27:58.958408');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-kitagawa@nissan-nics.co.jp', 0, '株式会社日産クリエイティブサービス', 'NICS購買センター', '', '喜多川　計幸', 0, '2015-04-17 23:28:05.570614');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-saito@toshiba-teli.co.jp', 0, '東芝テリー株式会社', '営業部　第1営業担当', '', '斉藤　清', 0, '2015-04-17 23:28:06.870485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takeshi.hattori@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '服部　武', 0, '2015-04-17 23:28:18.970672');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'n-wada@kondotec.co.jp', 0, 'コンドーテック株式会社', '海外営業部', '', '和田　倫嘉', 0, '2015-04-17 23:28:19.505605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, '5203302@shinryo-gr.com', 0, '株式会社新菱', 'リサイクル・ファイン事業部門　資源環境部', '', '有田　宏之', 0, '2015-04-17 23:28:19.812646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'a.sato@ryokikogyo.co.jp', 0, '菱機工業株式会社', '工事課', '', '佐藤　明俊', 0, '2015-04-17 23:28:20.193919');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tf@tokyofood.jp', 0, '東京フード株式会社', '営業部', '', '小林　信夫', 0, '2015-04-17 23:28:20.417042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'smatsui@ce.taisei.co.jp', 0, '大成建設株式会社', '土木本部　土木技術部　インフラ・海洋技術室', '', '松井　俊二', 0, '2015-04-17 23:28:21.166093');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-jin@takatoshi.co.jp', 0, '高俊興業株式会社', '再資源化推進部', '', '神　司', 0, '2015-04-17 23:28:21.493611');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sasaki@nakashiki.com', 0, '株式会社オーレックス', '', '', '佐々木　健治', 0, '2015-04-17 23:28:21.850814');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kouji-iwase@city.edogawa.tokyo.jp', 0, '江戸川区環境推進課', '', '', '岩瀬　耕二', 0, '2015-04-17 23:28:22.261001');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-suzuki@pgf-japan.com', 0, 'ピーコックエレメント製造株式会社', '開発事業部', '', '鈴木　慎二', 0, '2015-04-17 23:28:30.569475');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'minemura@kanaflex.co.jp', 0, 'カナフレックスコーポレーション株式会社', '営業部　工業用品課', '', '峰村　信哉', 0, '2015-04-17 23:28:30.775504');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'f-komatsu@hamanetsu.co.jp', 0, '株式会社ハマネツ　東京オフィス', '東日本営業部　特販グループ', '', '小松　文裕', 0, '2015-04-17 23:28:36.831823');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'horikawa@ksg-group.co.jp', 0, '株式会社ジャパンリコロジー', '', '', '堀川　豊彦', 0, '2015-04-17 23:28:37.018076');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takashi-matsuura@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境ソリューション事業本部', '', '松浦　高士', 0, '2015-04-17 23:28:37.330215');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tsubasa-sugawara@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境施設事業本部　第１整備部１課', '', '菅原　翼', 0, '2015-04-17 23:28:37.5864');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tetsuo-n@kubota.co.jp', 0, '株式会社クボタ', '電装機器営業部　大阪計量システム課', '', '西　哲朗', 0, '2015-04-17 23:31:45.978868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tomoyasu.shimao@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '島尾　知保', 0, '2015-04-17 23:31:47.552023');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'saito@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '斎藤　恒成', 0, '2015-04-17 23:31:47.968851');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'denki@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　電気設計部', '', '福田　一之', 0, '2015-04-17 23:31:51.873496');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takeshi.ueno@kubota.com', 0, '株式会社クボタ', 'パイプシステム事業部　パルプ技術部　技術第二グループ', '', '上野　岳志', 0, '2015-04-17 23:31:58.63417');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tomohisa_t@kyodohdoboku.co.jp', 0, '株式会社共同土木東京工場', '業務統括部　環境開発課', '', '高梨　智久', 0, '2015-04-17 23:31:59.215947');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'chiba.k@daiwa-tk.co.jp', 0, '大和鉄原工産株式会社', '営業本部　第一営業部', '', '千葉　幸一郎', 0, '2015-04-17 23:31:59.443157');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm-kikuchi@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '菊地　正人', 0, '2015-04-17 23:32:00.102452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kiyoshi_s@yoshimura-inc.co.jp', 0, '株式会社ヨシムラ', '統括管理部', '', '鈴木　潔', 0, '2015-04-17 23:32:00.337868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ariki@nextenergy.jp', 0, 'ネクストエナジー・アンド・リソース株式会社', '', '', '有木　正浩', 0, '2015-04-17 23:32:06.386862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'd.suzuki@paper-recycle.jp', 0, 'エコフィスジャパン株式会社', '', '', '鈴木　大二郎', 0, '2015-04-17 23:32:06.7983');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y-nakazato@ac.daido.co.jp', 0, '大同特殊鋼株式会社', '渋川工場　環境室', '', '中里　康弘', 0, '2015-04-17 23:32:07.170603');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kazuto.anata@jp.com', 0, 'ソニーストレージメディア・アンド・デバイス株式会社', '総務部　安全環境防災課', '', '英　和人', 0, '2015-04-17 23:32:11.469582');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hidekuni.taoka@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部機械部', '', '田岡秀邦', 0, '2015-04-17 23:32:11.88312');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shin.kenei@subaru-fhi.co.jp', 0, '富士重工業株式会社', 'スバル製造本部　群馬製作所　生産技術研究部　SIグループ主査', '', '沈　建栄', 0, '2015-04-17 23:32:17.327967');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'akiba@cowell.co.jp', 0, '株式会社コーウェル', 'ＬＥＤソリューション　第一営業部', '', '秋葉　義之', 0, '2015-04-17 23:32:17.737901');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kaji-ta@city.kawasaki.jp', 0, '川崎市', '環境局施設部施設整備課', '', '梶　泰介', 0, '2015-04-17 23:32:33.36961');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'atsushikawamoto@kubota.com', 0, '株式会社クボタ', '本機製造部 本機製造第二課', '', '川本　篤志', 0, '2015-04-17 23:32:39.234018');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nanohanaminoh@gmail.com', 0, '菜の花プロジェクトみのお', '', '', '小林　武士', 0, '2015-04-17 23:32:43.28875');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'masashi-okumura@cdg.co.jp', 0, '株式会社ＣＤＧ東京本社', '営業本部　東京営業2部　営業７課', '', '奥村　昌史', 0, '2015-04-17 23:32:48.706954');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakamura@kirintechno.co.jp', 0, 'キリンテクノシステム株式会社', '技術開発部　開発１課', '', '中村　裕宗', 0, '2015-04-17 23:32:55.087481');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'araki-h@toso.co.jp', 0, 'トーソー株式会社', '管理室総務課', '', '新木　浩之', 0, '2015-04-17 23:32:55.330659');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kutsumi-s@kimica.jp', 0, '株式会社キミカ', '製造部製造第4グループ', '', '久津見　知', 0, '2015-04-17 23:32:55.479123');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't.takenouchi@niihama.co.jp', 0, '株式会社新居鉄工所（鉄は旧字体）', '破砕機事業部　設計課', '', '竹之内　智行', 0, '2015-04-17 23:32:55.907476');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'susuga@futami.net', 0, '株式会社二見', '製紙原料古紙直納問屋　産廃・一廃中間処理施設　営業部', '', '煤賀　正人', 0, '2015-04-17 23:33:16.46738');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hi-ishikawa@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '石川　博将', 0, '2015-04-17 23:33:16.821673');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-nagai@tyo.kubota.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '長井　克幸', 0, '2015-04-17 23:33:19.246322');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kuroe.soichi@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '', '', '黒江　宗一', 0, '2015-04-17 23:33:19.761955');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'isao_kimura@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不戦不営業部営業第一グループ', '', '木村　功', 0, '2015-04-17 23:33:26.274998');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'keiichirou.kimura@okumuragumi.jp', 0, '株式会社奥村組', '環境技術部　リニューアル課　', '', '木村　哲一郎', 0, '2015-04-17 23:33:28.064007');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'oono@trustlight.jp', 0, 'エコ・トラスト・ジャパン株式会社', '営業本部　第一営業課　営業１係', '', '大野　翔平', 0, '2015-04-17 23:33:28.582285');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sekiguchi@garbage.co.jp', 0, '新潟ガービッヂ株式会社', '営業部', '', '関口　司忠', 0, '2015-04-17 23:33:28.766257');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakao.shunji@obayashi.co.jp', 0, '株式会社大林組', '技術本部　環境ソリューション部　スマートシティ推進課', '', '中尾　俊二', 0, '2015-04-17 23:33:34.731619');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'chuji.minami@jp.toto.com', 0, 'TOTO株式会社　', '茅ヶ崎工場　安全環境グループ', '', '皆見　忠慈', 0, '2015-04-17 23:33:41.801269');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshikazu.sato@kubota.com', 0, '株式会社クボタ', '電装機器事業部NPW-PT', '', '佐藤　嘉一', 0, '2015-04-17 23:33:47.362996');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'iida-satoru@motec-co.jp', 0, '株式会社エムオーテック', '営業第二部　営業第四課', '', '飯田　悟', 0, '2015-04-17 23:33:58.984697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'honda-seiji@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　', '', '本田　誠司', 0, '2015-04-17 23:34:10.552219');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Hirozumi.Yoshitake@nsg.com', 0, '日本板硝子環境アメニティ株式会社', '東京事業部　エンジ部', '', '吉武　裕純', 0, '2015-04-17 23:34:16.663502');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm.nakasima@seisou-center.co.jp', 0, '株式会社清掃センター', '', '', '中嶋　満', 0, '2015-04-17 23:34:20.135252');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shinya.tanaka@exc.tokai-rika.co.jp', 0, '株式会社東海理化', '生産技術センター施設環境部環境管理室', '', '田中　真也', 0, '2015-04-17 23:34:20.54539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shiono@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部', '', '塩野　正春', 0, '2015-04-17 23:34:20.724222');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shimura@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部設計課', '', '志村　真', 0, '2015-04-17 23:34:20.885904');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'enoken-k@cy.tnc.ne.jp', 0, '有限会社エノケン工業', '', '', '榎田　英明', 0, '2015-04-17 23:34:21.569759');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tg-osada@tokyo-gas.co.jp', 0, '東京ガス株式会社', '神奈川西支店　地域広報グループ　広聴広報担当', '', '長田　猛', 0, '2015-04-17 23:34:21.863765');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ta.kurisaki@hino.co.jp', 0, '日野自動車株式会社', '車両実験部　総括室　', '', '栗崎　忠', 0, '2015-04-17 23:34:22.411165');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h_araki@muc.co.jp', 0, '株式会社　東京ミュー精器', '計量器コンサルタント営業技術部', '', '荒木　宏長', 0, '2015-04-17 23:34:25.641376');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'masaaki.takeshita@toshiba.co.jp', 0, '株式会社東芝　社会インフラシステム社', '浜川崎工場　生産技術部生産技術・環境担当', '', '竹下　政明', 0, '2015-04-17 23:34:26.895511');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tkohara@rubycon.co.jp', 0, 'ルビコン株式会社', '経営管理部', '', '小原　剛', 0, '2015-04-17 23:34:27.472011');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ka_igarashi@kyodoprinting.co.jp', 0, '共同印刷株式会社', 'トータルソリューションオフィス　ビジネス開発グループ', '', '五十嵐　一弘', 0, '2015-04-17 23:34:34.653626');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ttaniguc@bbs.co.jp', 0, '株式会社ビジネスブレイン太田昭和', 'ソリューション１部', '', '谷口　努', 0, '2015-04-17 23:34:40.860816');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm-nagashima@withwaste.jp', 0, '株式会社ウィズ　ウェイト　ジャパン', '東関東リサイクルパーク　茨城事業所', '', '永島　誠', 0, '2015-04-17 23:34:41.330325');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Akira_Toyoda@covalent.co.jp', 0, 'コバレントマテリアル株式会社', 'セラミック事業部', '', '豊田　明', 0, '2015-04-17 23:34:48.024235');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tomohiko.muto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '武藤　智彦', 0, '2015-04-17 23:35:18.90398');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kawakami@gomi39.co.jp', 0, '株式会社　三久', '', '', '川上　英男', 0, '2015-04-17 23:35:19.423431');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kenji.yamaguchi@sumitomocorp.co.jp', 0, '住友商事株式会社', '非鉄金属事業部　事業投資チーム　', '', '山口　健二', 0, '2015-04-17 23:35:22.235559');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Kazumasa_Ohashi@suntory.co.jp', 0, 'サントリービジネスエキスパート株式会社', 'R&Dサポートセンター　', '', '大橋　一雅', 0, '2015-04-17 23:35:22.588041');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tokyo@kdk-net.co.jp', 0, '國際電測興業株式会社', '東京営業所', '', '中島　博幸', 0, '2015-04-17 23:35:25.510734');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'okamoto@tokushakogyo.co.jp', 0, '株式会社特車工業', '製造部', '', '岡本　朝道', 0, '2015-04-17 23:35:26.799704');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'eigyo-03@keihin-group.co.jp', 0, '日栄産業株式会社', '', '', '亀谷　達哉', 0, '2015-04-17 23:35:27.459957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 'hanada1317@sacos.co.jp', 0, 'サコス株式会社', '営業推進部', '', '花田　行和', 0, '2015-04-17 23:32:22.649126');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44507, 't.nishimoto@kk-kanae.co.jp', 0, '株式会社カナエ', '業務部　資材二グループ', '', '西本　隆志', 0, '2015-04-17 23:32:38.681528');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tatsuhiro_fuse@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '布施　達弘', 0, '2015-04-17 23:35:30.167836');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takaharu.matsuoka@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部プロセス技術部', '', '松岡　隆晴', 0, '2015-04-17 23:54:40.083492');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'taguchi@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '田口　太桂英', 0, '2015-04-17 23:54:52.003345');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nishi@studiocovo.com', 0, '特定非営利活動法人グリーンネットワーク', '', '', '西　正徳', 0, '2015-04-17 23:54:52.317257');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hayakawa@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '早川　昇', 0, '2015-04-17 23:55:00.86721');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'maru3@gray.plala.or.jp', 0, '株式会社丸三興業', '営業部', '', '亀田　英男', 0, '2015-04-17 23:55:03.788845');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tamami.fujioka@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'Ｇ営業本部産業資材営業本部東京支店', '', '藤岡　珠未', 0, '2015-04-17 23:55:06.934108');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakahyo1@yokohama-marunaka.co.jp', 0, '横浜市場センター株式会社', '', '', '中堀　督勇', 0, '2015-04-17 23:55:08.356198');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takasaki-shuhei@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第二部　営業第四課', '', '高崎　脩平', 0, '2015-04-17 23:55:20.101564');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tamagawa-tatsunori@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部', '', '玉川　辰典', 0, '2015-04-17 23:55:31.679345');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ysmatsumr@malco.co.jp', 0, '株式会社エムエーパッケージング', 'ＣＳＲ推進部', '', '松村　裕安', 0, '2015-04-17 23:55:35.343816');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yshimada@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '島田　雄二', 0, '2015-04-17 23:55:35.931184');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 're-frex@hit-5.net', 0, '株式会社リフレックス', '', '', '山崎　章弘', 0, '2015-04-17 23:55:36.705115');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't.nogi.id@azbil.com', 0, 'アズビル株式会社', 'サービス本部　東京サービス部　東京サービス2グループ', '', '野木　毅', 0, '2015-04-17 23:55:37.081545');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ko-baba@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門海外事業部', '', '馬場　恒次', 0, '2015-04-17 23:55:37.848506');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yu-sugisaki@tokyoink.co.jp', 0, '東京インキ株式会社', '', '', '杉崎　幸利', 0, '2015-04-17 23:55:38.384679');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'motome@mail.seikitokyu.co.jp', 0, 'エス・ティ・サービス　株式会社', '', '', '求　輝芳', 0, '2015-04-17 23:55:39.642094');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm.nagashima@nipponham.co.jp', 0, '日本ハム設計　株式会社', '工事部', '', '長島　光昭', 0, '2015-04-17 23:56:00.480638');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ebityan1225@gmail.com', 0, '東京農業大学', '', '', '海老原　佑', 0, '2015-04-17 23:56:07.972181');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mitsuru-create@mx6.nns.ne.jp', 0, '株式会社クリエート', '', '', '望月　満', 0, '2015-04-17 23:56:08.556822');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'r-takatori@tanaka-iron-works.com', 0, '田中鉄工株式会社', 'セールスエンジニア', '', '高取　竜樹', 0, '2015-04-17 23:56:12.970818');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mfukui@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社  企画業務グループ', '', '福井　美月', 0, '2015-04-17 23:56:13.947598');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takeno_yuki@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '竹野　勇輝', 0, '2015-04-17 23:56:18.248295');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y.nakamura@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', 'リース事業部', '', '中村　康昭', 0, '2015-04-17 23:56:18.482074');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hokutaku@hi-net.ne.jp', 0, '有限会社　北拓ビル管理', '', '', '下館　光一郎', 0, '2015-04-17 23:56:19.21941');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nagaso@mmc.co.jp', 0, '三菱マテリアテクノ株式会社', '資源・環境・エネルギー事業部　環境計量部　環境技術センター', '', '永草　康彦', 0, '2015-04-17 23:56:19.855354');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'stanaka@bmbio.co.jp', 0, 'ビーエム機器株式会社', '　', '', '田中　知　', 0, '2015-04-17 23:56:23.341974');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'horry-potter@kve.biglobe.ne.jp', 0, 'カンセイ株式会社', '　', '', '堀端　久江', 0, '2015-04-17 23:56:28.529715');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'fabe@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '分析センター', '', '阿部　大', 0, '2015-04-17 23:56:30.13226');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-isomiti@nangoku-group.com', 0, '南国殖産株式会社', '建設産業機械課　霧島出張所', '', '礒道　達士', 0, '2015-04-17 23:56:31.049531');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mino.koki@ad-hzm.co.jp', 0, '株式会社安藤・間', '関東土木支店　土木部　大橋出張所　第３工事課', '', '美濃　光輝', 0, '2015-04-17 23:57:11.352221');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kimihiko_kubozuka@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ', '', '窪塚　公彦', 0, '2015-04-17 23:57:18.490703');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 're-takayama.shouten@dg7.so-net.ne.jp', 0, '有限会社高山商店', '', '', '高山　聡', 0, '2015-04-17 23:57:19.22758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kobayasi@aokikankyo.com', 0, '青木環境事業株式会社', '営業部', '', '小林　洋一', 0, '2015-04-17 23:57:20.103818');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ohmae_yusuke@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '関東支社　千葉北支店　成田営業所', '', '大前　雄介', 0, '2015-04-17 23:57:25.121585');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'naoki.asakawa@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '浅川　直貴', 0, '2015-04-17 23:57:29.966243');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'noriyuki.kondo@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '近藤　紀行', 0, '2015-04-17 23:57:34.545848');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'matsumoto@ebisukikou.co.jp', 0, '恵比寿機工株式会社', '', '', '松本　俊之', 0, '2015-04-17 23:57:36.232543');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshida.k@rentac.jp', 0, '株式会社レンタック', '', '', '吉田　和広', 0, '2015-04-17 23:57:36.938381');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'info@maruyou.com', 0, '丸友開発株式会社', '', '', '谷田　康雄', 0, '2015-04-17 23:57:39.578508');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'koshiba@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '技術本部　技術研究所', '', '小柴　朋広', 0, '2015-04-17 23:57:41.353525');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'katsunori.motohashi@scigineer.co.jp', 0, 'サイジニア株式会社', '営業部', '', '本橋　且規', 0, '2015-04-17 23:57:42.12146');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'suzuki_takayuki@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '販売事業部　営業管理部　商事課', '', '鈴木　敬之', 0, '2015-04-17 23:57:51.048456');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yseida@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '清田　侑紀', 0, '2015-04-17 23:57:51.657229');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'da.yamada@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '山田　大輔', 0, '2015-04-17 23:57:58.057165');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h.yoshida@ydec.co.jp', 0, '株式会社ヨシカワ', '営業課', '', '吉田　玄', 0, '2015-04-17 23:58:04.2593');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tatsuya.ogura@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '小倉　辰也', 0, '2015-04-17 23:58:17.416125');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yu.yamada@omltd.co.jp', 0, '株式会社オーエム製作所', '宍道開発室', '', '山田　裕治', 0, '2015-04-17 23:58:18.659085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'c-takano@yagashiro-ls.co.jp', 0, '株式会社八ケ代造園', '', '', '高野　智良', 0, '2015-04-17 23:58:18.906921');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'uchida@cc.kogakuin.ac.jp', 0, '工学院大学', '工学部　環境エネルギー化学科', '', '内田　雅樹', 0, '2015-04-17 23:58:20.28482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y.wakida@east.ntt.co.jp', 0, 'NTT東日本', 'ネットワークソリューション部　営業支援担当', '', '脇田　祐司', 0, '2015-04-17 23:58:21.044195');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kojimam@sc.sumitomo-chem.co.jp', 0, '住友化学株式会社', '大分工場　レスポンシブルケア部', '', '小島　美津代', 0, '2015-04-17 23:58:21.517724');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'matsuzawa@sun-express.co.jp', 0, '株式会社サン・エキスプレス', '第一営業部', '', '松澤　快之', 0, '2015-04-17 23:58:21.71276');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'osamu.amano@toda.co.jp', 0, '戸田建設株式会社', '建築設計統轄部　設備設計部', '', '天野　修', 0, '2015-04-17 23:58:34.304643');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kgontou@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '権頭　克則', 0, '2015-04-17 23:58:35.058262');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'smiyagawa@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '東関東支社　技術営業グループ', '', '宮川　進矢', 0, '2015-04-17 23:58:35.805142');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'miyazaki-chemical@hotmail.co.jp', 0, 'ミヤザキ株式会社', '第二営業部', '', '宮崎　義大', 0, '2015-04-17 23:58:38.69899');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Yoshikazu_Tsuchiya@member.metro.tokyo.jp', 0, '東京都', '下水道局　施設管理部　施設管理課　', '', '土屋　義和', 0, '2015-04-17 23:58:39.646531');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'fukuoka.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '', '', '福岳　雄一郎', 0, '2015-04-17 23:58:39.97135');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kokojima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　土壌環境グループ', '', '小島　幸司', 0, '2015-04-17 23:58:44.070266');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tmuraguchi@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　', '', '村口　貴紀', 0, '2015-04-17 23:58:44.707662');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tkurasawa@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　技術営業部', '', '倉澤　卓也', 0, '2015-04-17 23:58:51.864182');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'n-naitou@co-jsp.co.jp', 0, '株式会社　JSP', '新事業開発室　新技術開発部', '', '内藤　直記', 0, '2015-04-17 23:58:58.002445');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kimihiro.morishita@keisei-const.co.jp', 0, '京成建設株式会社', '営業本部　第二営業部', '', '森下　公博', 0, '2015-04-17 23:58:58.440492');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm-toshi@jrfreight.co.jp', 0, 'JR貨物', '関東支社　営業部　首都圏営業開発グループ', '', '宮下　俊彦', 0, '2015-04-17 23:58:58.838473');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kankyo-shisetsu@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　環境施設課', '', '酒巻　紳一郎', 0, '2015-04-17 23:59:05.943045');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'a.jinbo@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', '中部支社', '', '神保　明彦', 0, '2015-04-17 23:59:06.165357');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm_horiike@sanwakensho.co.jp', 0, '三和建商株式会社', '', '', '堀池　通浩', 0, '2015-04-17 23:59:29.578462');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h-kimura@wesco.co.jp', 0, '株式会社ウエスコ', '環境設計部　環境設計課', '', '木村　浩和', 0, '2015-04-17 23:59:30.313107');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'howard@proten.com.tw', 0, '伯登有限公司', '', '', '黄　明章', 0, '2015-04-17 23:59:31.861244');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-okazaki@tohoku-kigyo.co.jp', 0, '東北企業株式会社', '第四営業部', '', '岡崎　啓一', 0, '2015-04-17 23:59:33.119846');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'oyabu.yamato@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '大薮　大和', 0, '2015-04-17 23:59:33.807023');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'inoue.takashi1@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '井上　崇', 0, '2015-04-17 23:59:34.207948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kiyoshi@kakutani.co.jp', 0, '角谷木材建設株式会社', '', '', '角谷　喜代志', 0, '2015-04-17 23:59:37.499023');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sugie@ishizuka.co.jp', 0, '石塚硝子株式会社', '技術本部', '', '椙江　弘樹', 0, '2015-04-17 23:59:50.283448');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yanaura@omtecinc.co.jp', 0, '株式会社オムテック', '', '', '柳浦　公二郎', 0, '2015-04-18 00:00:05.962021');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tadahiko_miyoshi@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布製造所', '', '三好　正彦', 0, '2015-04-18 00:00:12.538304');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-takamura@aqua.plala.or.jp', 0, 'アクア創研有限会社', '', '', '高村　晋', 0, '2015-04-18 00:00:48.920172');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kishimoto.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '営業部', '', '岸本　裕司', 0, '2015-04-18 00:00:51.617867');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'honma.yutaka@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '土木事業部　技術企画部', '', '本間　豊', 0, '2015-04-18 00:00:52.046139');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tatsuhiko-maeda@mes.co.jp', 0, '三井造船株式会社', 'エンジニアリング事業本部　プロジェクト部　環境エネルギーグループ', '', '前田　達彦', 0, '2015-04-18 00:00:52.329447');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hayafuji.eiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '安全環境部　環境グループ', '', '早藤　英一', 0, '2015-04-18 00:00:52.589658');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hirakawa@apower-now.net', 0, 'あじあ行政書士法人', '', '', '平川　雅夫', 0, '2015-04-18 00:00:53.028634');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yacokada@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　固化材グループ　', '', '岡田　八千代', 0, '2015-04-18 00:01:04.442256');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tanaka.makoto@ebara.com', 0, '株式会社荏原製作所', '社会システム計画・開発統括部　事業推進室', '', '田中　誠', 0, '2015-04-18 00:01:06.734537');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'uno@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '東京営業所', '', '宇野　敏志', 0, '2015-04-18 00:01:07.980391');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's.uchida@mys.co.jp', 0, '三好環境株式会社', '営業一部', '', '内田　成昭', 0, '2015-04-18 00:01:08.333731');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tadashi.tsunematsu@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術研究所　第一研究室', '', '常松　直志', 0, '2015-04-18 00:01:22.097299');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm-miyagi@ohmiyakouki.com', 0, '有限会社大宮工機', '', '', '宮城　光秀', 0, '2015-04-18 00:01:28.775345');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kidoy@jikco.co.jp', 0, '株式会社ジコー', '管理本部', '', '城戸　良重', 0, '2015-04-18 00:01:40.054441');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hiroshi-abe@obayashi-road.co.jp', 0, '大林道路株式会社', '本店　プラントシステム営業部', '', '阿部　浩', 0, '2015-04-18 00:02:16.149482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'info@hakuei-kaitai.com', 0, '株式会社珀栄', '', '', '花房　伸', 0, '2015-04-18 00:02:16.929388');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tokyo@kamacho.co.jp', 0, '鎌長製衡株式会社', '営業本部　東京支店　営業1グループ', '', '山田　悠太郎', 0, '2015-04-18 00:02:28.575895');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'niwa@szken.co.jp', 0, '株式会社鈴鍵', '', '', '丹羽　庸介', 0, '2015-04-18 00:02:29.884418');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Toshiya.Nishimura@nsg.com', 0, '日本板硝子環境アメニティ株式会社', '東京事業部　エンジ部', '', '西村　俊哉', 0, '2015-04-18 00:02:35.810245');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'okumoto.kohei@kobelco.com', 0, 'コベルコ建機株式会社', '直轄営業部　営業グループ', '', '奥本　昂平', 0, '2015-04-18 00:03:12.038266');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mizuno.masamichi@kobelco.com', 0, '東日本コベルコ建機株式会社', '南関東支社　横浜営業所', '', '水野　真理', 0, '2015-04-18 00:03:12.51866');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nobuaki_s@kyodohdoboku.co.jp', 0, '株式会社共同土木　千葉工場', '業務統括部　', '', '佐々木　伸明', 0, '2015-04-18 00:03:13.390495');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'wakita@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '脇田　真治', 0, '2015-04-18 00:03:16.291143');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'office@yamashita-shoten.com', 0, '有限会社山下商店', '', '', '山下　唱徳', 0, '2015-04-18 00:03:16.592925');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'minoru@kitajimashibori.co.jp', 0, '株式会社北嶋絞製作所', '', '', '北嶋　實', 0, '2015-04-18 00:03:17.02331');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'earth.toumi@gmail.com', 0, 'アース・グループ株式会社', '東京営業課', '', '田海　浩之', 0, '2015-04-18 00:03:23.994267');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kasuya.hideo@tokyu-cnst.co.jp', 0, '東急建設株式会社', '営業本部　鉄道営業統括部', '', '粕谷　英夫', 0, '2015-04-18 00:03:25.546832');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takenaka-tetsuji@motec-co.jp', 0, '株式会社エムオーテック　大阪支店', '営業部', '', '竹中　哲治', 0, '2015-04-18 00:03:37.111179');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-hashizume@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '水処理営業部　技術第一課', '', '橋爪　祥世', 0, '2015-04-18 00:03:38.415689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shouichirou.higuchi@toda.co.jp', 0, '戸田建設株式会社', '価値創造推進部　開発センター', '', '樋口　正一郎', 0, '2015-04-18 00:03:58.344109');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'susumu_kawaguchi@kurekan.co.jp', 0, '株式会社クレハ環境', '環境技術部　技術企画課', '', '河口　進', 0, '2015-04-18 00:04:18.061091');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'masahide_ohmiya@cosmo-sales.co.jp', 0, 'コスモリフォーム株式会社', '', '', '大宮　正秀', 0, '2015-04-18 00:06:46.714356');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ryota.mori@yoshimine.co.jp', 0, '株式会社よしみね', '総務部', '', '森　諒太', 0, '2015-04-18 00:07:00.779075');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kuboniwa-makoto@ise-egg.co.jp', 0, '有限会社つくばファーム', '', '', '久保庭　真', 0, '2015-04-18 00:08:19.144953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'h.nikaidou@garnet.dti.ne.jp', 0, '二階堂労働安全コンサルタント事務所', '', '', '二階堂　久', 0, '2015-04-18 00:08:19.557539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kazuma.enomoto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '榎本　一馬', 0, '2015-04-18 00:09:14.65085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hayashi@nishikawa-rose.co.jp', 0, '西川ローズ株式会社', '', '', '林　三吉', 0, '2015-04-18 00:09:20.578936');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'wxmxy880@yahoo.co.jp', 0, 'エムストラスト株式会社', '', '', '鈴木　保弘', 0, '2015-04-18 00:09:21.618076');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'toshiaki-goto@jfe-kankyo.co.jp', 0, 'JFE環境株式会社', '営業本部　', '', '後藤　俊彰', 0, '2015-04-18 00:09:29.403588');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'imai-hanako@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '今井　華子', 0, '2015-04-18 00:09:40.984943');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ikenaga-yuto@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '池永　優人', 0, '2015-04-18 00:09:52.6202');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nishimura-takuma@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '西村　卓馬', 0, '2015-04-18 00:10:04.263746');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sasakihi@tge.co.jp', 0, '東京ガスエンジニアリング株式会社', 'エンジニアリング本部', '', '佐々木　秀夫', 0, '2015-04-18 00:11:13.419159');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Ja1pro@jc5.so-net.ne.jp', 0, 'ソニー(株)', 'ＴＶ事業部', '', '池上　博一', 0, '2015-04-18 00:11:14.184813');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-ando@tanaka-iron-works.com', 0, '田中鉄工株式会社', '営業課', '', '安東　晃あき（あきは旧字）', 0, '2015-04-18 00:11:18.923055');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'katsume@lion.co.jp', 0, 'LION', 'ファインケミカル事業所　生産技術課　技術チーム', '', '根本　勝幸', 0, '2015-04-18 00:11:22.725369');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yasuhiro.kawamura@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　機械部', '', '河村　泰博', 0, '2015-04-18 00:11:23.177949');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y.sashizawa@techcorporation.co.jp', 0, '株式会社テックコーポレーション', '企画部', '', '指澤　祐二', 0, '2015-04-18 00:11:23.689238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'info@wwwb.jp', 0, 'WWB株式会社', '建設機械部', '', '松崎　徳一', 0, '2015-04-18 00:11:23.961617');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'iijima@keiai-grp.com', 0, '株式会社ケイアイ', '', '', '飯島　圭士', 0, '2015-04-18 00:11:24.748263');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'noriotakahashi@totetsu.jp', 0, '東鉄工業株式会社', '土木本部　', '', '髙橋　紀男', 0, '2015-04-18 00:11:25.339221');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mi_yamazaki@smkc.co.jp', 0, '三井住商建材株式会社', '機能推進本部　特販部　環境チーム', '', '山﨑　巳之武', 0, '2015-04-18 00:11:31.583668');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Makoto.Takeuchi@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産課', '', '竹内　誠', 0, '2015-04-18 00:11:32.352541');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'bugland2@yahoo.co.jp', 0, '富士宮清掃有限会社', '', '', '穂坂　勝彦', 0, '2015-04-18 00:11:43.519748');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'moriaki-yuhara@melplant.co.jp', 0, '三菱電機冷熱プラント株式会社　東京支社', '都市システム部　産業冷熱課', '', '湯原　守昭', 0, '2015-04-18 00:11:44.635568');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-mino@asagiri-f.co.jp', 0, '有限会社朝霧牧場', '', '', '簑　威賴', 0, '2015-04-18 00:11:45.301269');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mitani@hrc.co.jp', 0, '早川ゴム株式会社', '東京支店　土木用止水材グループ', '', '三谷　安司', 0, '2015-04-18 00:11:45.745086');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hiroyuki_1_nagata@kirin.co.jp', 0, 'キリンエンジニアリング株式会社', '環境安全推進部', '', '永田　弘之', 0, '2015-04-18 00:12:21.423645');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'koujin@mes.co.jp', 0, '三井造船株式会社', '九州支社', '', '荒神　琢磨', 0, '2015-04-18 00:12:21.822391');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'n-ikeno@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部営業技術課', '', '池野　奈津美', 0, '2015-04-18 00:12:22.266183');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y_uchida@origin.jp', 0, 'オリジン電気株式會社', 'エコエコ推進室', '', '内田　裕二', 0, '2015-04-18 00:12:39.449585');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h-nagao@idex.co.jp', 0, '株式会社新出光', '技術商品課', '', '長尾　英昭', 0, '2015-04-18 00:12:46.110414');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'makino@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部　包装コンサルタント', '', '牧野　憲', 0, '2015-04-18 00:12:46.317536');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takasugi@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部', '', '高杉　和哉', 0, '2015-04-18 00:12:46.50702');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ooshiro@eutectic.co.jp', 0, '日本ユテク株式会社', '', '', '大城　永勝', 0, '2015-04-18 00:12:46.694076');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'info@eco-club.co.jp', 0, '株式会社北陸環境サービス', '', '', '木下　高廣', 0, '2015-04-18 00:12:46.881478');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shinji_sasaki@cosmo-oil.co.jp', 0, 'コスモ石油株式会社', '給油ビジネスユニット　千葉製油所　安全環境課', '', '佐々木　真司', 0, '2015-04-18 00:12:47.36403');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-kawaguchi@onishi-e.co.jp', 0, '大西電機工業株式会社', '営業統括部　第二営業課　東京営業所', '', '川口　高生', 0, '2015-04-18 00:12:47.593477');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tsujiih@osk-k.co.jp', 0, '大阪工機株式会社', '東京支社　第三営業部　東京営業2課', '', '辻井　久', 0, '2015-04-18 00:12:51.280048');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ryoji.takeuchi@toshiba.co.jp', 0, '株式会社東芝　コミュニティ・ソリューション社', '事業開発センター　総合エンジニアリング部', '', '竹内　亮二', 0, '2015-04-18 00:12:52.710802');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'horio_s@konishi-saiseki.co.jp', 0, '株式会社小西砕石工業所', '坂祝事業部', '', '堀尾　伸介', 0, '2015-04-18 00:12:53.082154');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'masashi_sanguu@tte-net.co.jp', 0, '高砂熱学工業株式会社　技術本部', '技術企画部　参与', '', '三宮　正至', 0, '2015-04-18 00:12:59.693499');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mariizumi@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '有泉　光人', 0, '2015-04-18 00:13:00.225959');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kawasakiha@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社', '', '', '川崎　晴夫', 0, '2015-04-18 00:13:00.485187');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'br-toiawase@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '福山　英昭', 0, '2015-04-18 00:13:00.659551');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'center@ne.catv.ne.jp', 0, '有限会社センターライン', '', '', '中条　大祐', 0, '2015-04-18 00:13:01.924143');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fujioka0522@gmail.com', 0, 'em factory', '', '', '藤岡　まり', 0, '2015-04-18 00:13:12.215921');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tomohiro.seji@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '清地　智宏', 0, '2015-04-18 00:13:20.494957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tsumotsumo@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '津森　邦昭', 0, '2015-04-18 00:13:26.735133');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-sakuri@livretech.co.jp', 0, '株式会社リーブルテック', '製造本部　購買部　購買2課', '', '櫻井　和安', 0, '2015-04-18 00:13:27.529779');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm-miura@konari.com', 0, '株式会社小成', '事務機販売課', '', '三浦　正芳', 0, '2015-04-18 00:13:27.991706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-shima@tomitaph.co.jp', 0, '富田製薬株式会社', '生産管理部　安全・環境管理課', '', '島　一夫', 0, '2015-04-18 00:13:28.614501');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y.ohtaki@paramount.co.jp', 0, 'パラマウントベッド株式会社', '総務部　安全衛生環境課', '', '大瀧　良則', 0, '2015-04-18 00:13:49.329081');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamatogma@gmail.com', 0, '株式会社マックマシンツール', '廃棄物管理士', '', '大和　幸男', 0, '2015-04-18 00:13:55.563941');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamauchi.yuuki@subaru-fhi.co.jp', 0, '富士重工業株式会社', '産業機器カンパニーマーケティング部', '', '山内　雄樹', 0, '2015-04-18 00:14:01.048828');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-syooza@takuma.co.jp', 0, '株式会社タクマ', '環境本部　調達部　東京調達課', '', '庄崎　敏考', 0, '2015-04-18 00:14:01.284777');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'edasaki.r@hn.cik.co.jp', 0, 'シーアイ化成株式会社', '環境管理室', '', '枝崎　隆一', 0, '2015-04-18 00:14:01.835338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h.ooyagi@ccs-gr.co.jp', 0, '株式会社クリーンコントロールサービス', '', '', '大八木　博之', 0, '2015-04-18 00:14:02.206975');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'furukawashinkou-kouji@abox3.so-net.ne.jp', 0, '有限会社古川新興', '', '', '古川　幸司', 0, '2015-04-18 00:14:02.953893');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tetm-morita@nts.ricoh.co.jp', 0, '株式会社リコー', '環境推進本部推進室', '', '森田　哲郎', 0, '2015-04-18 00:14:04.298381');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h-abe@takatoshi.co.jp', 0, '高俊興業株式会社', '執行役員　法務事業本部副本部長　兼　再資源化推進部長', '', '阿部　秀行', 0, '2015-04-18 00:14:04.692544');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mztadmin@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　総務部システム開発課', '', '緒方　元', 0, '2015-04-18 00:14:05.223791');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sugiyama-yoshimasa@meti.go.jp', 0, '経済産業省', '関東経済産業局　資源エネルギー環境部　資源エネルギー環境課', '', '杉山　佳正', 0, '2015-04-18 00:14:06.189339');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'funanami.kenta@ad-hzm.co.jp', 0, '株式会社安藤・間', '建築事業本部　事業本部　積算センター　構造グループ', '', '舩浪　健太', 0, '2015-04-18 00:14:12.558552');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Kazumi.Mogi@showa-shell.co.jp', 0, '昭和シェル石油株式会社', '石油事業部　首都圏支店　潤滑油販売課', '', '茂木　和美', 0, '2015-04-18 00:14:18.922432');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'e-mashiba@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'リサイクルエンジニアリング部　東京技術工事課', '', '間柴　栄輝', 0, '2015-04-18 00:14:19.2798');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'masanori_atarashi@tte-net.co.jp', 0, '高砂熱学工業株式会社', '営業本部', '', '新　真則', 0, '2015-04-18 00:14:27.309238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-kitagawa@nissan-nics.co.jp', 0, '株式会社日産クリエイティブサービス', 'NICS購買センター', '', '喜多川　計幸', 0, '2015-04-18 00:14:33.414772');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-saito@toshiba-teli.co.jp', 0, '東芝テリー株式会社', '営業部　第1営業担当', '', '斉藤　清', 0, '2015-04-18 00:14:34.68145');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takeshi.hattori@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '服部　武', 0, '2015-04-18 00:14:46.878993');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'n-wada@kondotec.co.jp', 0, 'コンドーテック株式会社', '海外営業部', '', '和田　倫嘉', 0, '2015-04-18 00:14:47.367748');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, '5203302@shinryo-gr.com', 0, '株式会社新菱', 'リサイクル・ファイン事業部門　資源環境部', '', '有田　宏之', 0, '2015-04-18 00:14:47.655454');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'a.sato@ryokikogyo.co.jp', 0, '菱機工業株式会社', '工事課', '', '佐藤　明俊', 0, '2015-04-18 00:14:48.053409');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tf@tokyofood.jp', 0, '東京フード株式会社', '営業部', '', '小林　信夫', 0, '2015-04-18 00:14:48.27625');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'smatsui@ce.taisei.co.jp', 0, '大成建設株式会社', '土木本部　土木技術部　インフラ・海洋技術室', '', '松井　俊二', 0, '2015-04-18 00:14:48.768545');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-jin@takatoshi.co.jp', 0, '高俊興業株式会社', '再資源化推進部', '', '神　司', 0, '2015-04-18 00:14:49.156214');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sasaki@nakashiki.com', 0, '株式会社オーレックス', '', '', '佐々木　健治', 0, '2015-04-18 00:14:49.536401');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kouji-iwase@city.edogawa.tokyo.jp', 0, '江戸川区環境推進課', '', '', '岩瀬　耕二', 0, '2015-04-18 00:14:49.945729');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-suzuki@pgf-japan.com', 0, 'ピーコックエレメント製造株式会社', '開発事業部', '', '鈴木　慎二', 0, '2015-04-18 00:14:58.236324');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'minemura@kanaflex.co.jp', 0, 'カナフレックスコーポレーション株式会社', '営業部　工業用品課', '', '峰村　信哉', 0, '2015-04-18 00:14:58.408164');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'f-komatsu@hamanetsu.co.jp', 0, '株式会社ハマネツ　東京オフィス', '東日本営業部　特販グループ', '', '小松　文裕', 0, '2015-04-18 00:15:04.740946');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takashi-matsuura@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境ソリューション事業本部', '', '松浦　高士', 0, '2015-04-18 00:15:05.147996');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tsubasa-sugawara@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境施設事業本部　第１整備部１課', '', '菅原　翼', 0, '2015-04-18 00:15:05.462495');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tetsuo-n@kubota.co.jp', 0, '株式会社クボタ', '電装機器営業部　大阪計量システム課', '', '西　哲朗', 0, '2015-04-18 00:15:07.932473');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'seijirou_yukawa@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '湯川　誠二郎', 0, '2015-04-18 00:14:34.240296');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'quality_section@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術　品質管理部', '', '本田　泰章', 0, '2015-04-18 00:14:58.145767');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ikedaT@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術・品質管理課', '', '池田　隆司', 0, '2015-04-18 00:15:01.062608');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshimura.ryoko@lab.ntt.co.jp', 0, '日本電信電話株式会社　NTTフォトニクス研究所', 'フォトニクスデバイス研究部', '', '吉村　了行', 0, '2015-04-18 00:15:01.370536');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kosuke.kitagishi@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '北岸　広祐', 0, '2015-04-18 00:15:04.59884');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-muta@tokushakogyo.co.jp', 0, '株式会社特車工業', '', '', '牟田　繁生', 0, '2015-04-18 00:15:05.257003');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-ohata@skk.jp', 0, '三建設備工業株式会社', '営業本部　ソリューション部　', '', '大端　健治', 0, '2015-04-18 00:15:06.86135');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kinusa.koide@mjk.mhi.co.jp', 0, '三菱重工環境・化学エンジニアリング株式会社', '営業統括部　海外営業部　海外プラント営業グループ', '', '小出　衣佐', 0, '2015-04-18 00:15:14.339887');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'oda.tomohiro@obayashi.co.jp', 0, '株式会社大林組', '技術本部　技術研究所　環境技術研究部', '', '小田　智弘', 0, '2015-04-18 00:15:20.696468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hk@kikuchikasei.co.jp', 0, '株式会社菊池化成', '', '', '菊池　真悟', 0, '2015-04-18 00:15:28.355133');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tmnakagawa@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '中川　知子', 0, '2015-04-18 00:15:39.127415');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'akitou@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '伊藤　顕人', 0, '2015-04-18 00:15:46.307273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hgonoi@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '五ノ井　裕之', 0, '2015-04-18 00:15:50.439348');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'osamu-ohashi@obayashi-road.co.jp', 0, '大林道路株式会社', '総合評価対策室', '', '大橋　紀', 0, '2015-04-18 00:15:56.636528');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'takaoka.t@ohno-associates.jp', 0, 'オオノ開發株式会社', '開発室', '', '高岡　敏雄', 0, '2015-04-18 00:15:57.476086');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'watanabe-yuko@city.anjo.lg.jp', 0, '安城市', '環境部環境首都推進課　', '', '渡辺　裕子', 0, '2015-04-18 00:15:58.029331');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nagaoka@ym.n-c-c.co.jp', 0, '株式会社日本コンピュータコンサルタント', '企画室　営業企画', '', '長岡　永典', 0, '2015-04-18 00:15:58.476009');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tsujibayashi.masato@toshiba-tpsc.co.jp', 0, '東芝プラントシステム株式会社', '技術企画・開発部　', '', '辻林　正人', 0, '2015-04-18 00:16:00.001658');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shimada.masayoshi@canon-ecology.co.jp', 0, 'キヤノンエコロジーインダストリー株式会社', '生産統括センター　技術部　生産技術課', '', '島田　真由', 0, '2015-04-18 00:16:00.999754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yo-ino@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門　営業統括部', '', '井野　嘉紀', 0, '2015-04-18 00:16:01.601665');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'sano.koki@ebara.com', 0, '株式会社荏原製作所', '', '', '佐野　貴紀', 0, '2015-04-18 00:16:02.35062');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'a.momoi.zh@azbil.com', 0, 'アズビル株式会社', '東京営業所　2グループ', '', '百井　章文', 0, '2015-04-18 00:16:02.646441');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'inagakikz@sekisuijushi.co.jp', 0, '積水樹脂株式会社', '評価・環境管理部　安全・品質・環境グループ', '', '稲垣　和美', 0, '2015-04-18 00:16:03.015155');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yonemoto-shinji@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　工事部', '', '米元　真治', 0, '2015-04-18 00:17:22.3331');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-18 00:17:27.788809');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-18 00:18:35.104581');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-18 00:19:19.935843');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-18 00:19:25.519334');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-18 00:19:32.596263');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ynqyuki@mmc.co.jp', 0, '三菱マテリアル株式会社　電子材料事業カンパニー', '化成営業部　フッ素グループ', '', '名雪　靖志', 0, '2015-04-18 00:19:33.910285');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mi-koiwai@kakuto.co.jp', 0, '株式会社　角藤', '土木・基礎工事部　工事課', '', '小岩井　充', 0, '2015-04-18 00:19:58.36256');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'harada@ohkita-recycle.co.jp', 0, '株式会社大北リサイクル', '', '', '原田　佳角', 0, '2015-04-18 00:19:58.78763');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-18 00:20:06.433195');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hnamura@rle.ricoh.co.jp', 0, 'リコーリース株式会社　首都圏支社', '東京営業一課', '', '南村　仁司', 0, '2015-04-18 00:20:22.49374');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hidenori_yoshida@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京開発営業部　測定器営業第1チーム', '', '吉田　秀典', 0, '2015-04-18 00:20:23.194797');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y-egawa@aitech.co.jp', 0, '株式会社アイテク', '設備事業部　営業部', '', '恵川　幸男', 0, '2015-04-18 00:20:24.323718');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-18 00:21:44.707971');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mori@tso-int.co.jp', 0, 'TSO International 株式会社', '', '', '森　育三', 0, '2015-04-18 00:21:45.149243');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakamura-s@sc-cement.co.jp', 0, '住商セメント株式会社', '', '', '中村　哲', 0, '2015-04-18 00:21:49.015879');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-18 00:21:50.257135');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shirai16@khaki.plala.or.jp', 0, '', '', '', '白井　孝夫', 0, '2015-04-18 00:21:50.652433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kubo-y@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '久保　好則', 0, '2015-04-18 00:21:51.719432');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'katsuyuki_yamamori@scm.shi.co.jp', 0, '住友建機販売株式会社', '中部統括部　東濃営業所', '', '山森　勝之', 0, '2015-04-18 00:22:12.765944');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'fujimura.hiroaki@daiwaroyal.jp', 0, 'ダイワロイヤル株式会社', '管理本部　人事総務部', '', '藤村　浩彰', 0, '2015-04-18 00:22:14.693875');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shimamoto_takashi@zenitaka.co.jp', 0, '銭高組', '土木事業本部　受注推進部　受注責任課', '', '島元　隆史', 0, '2015-04-18 00:22:21.203887');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'aihara-jiro@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '相原　次郎', 0, '2015-04-18 00:22:42.220068');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tomoyasu.shimao@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '島尾　知保', 0, '2015-04-18 00:15:08.589466');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'saito@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '斎藤　恒成', 0, '2015-04-18 00:15:09.141769');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'denki@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　電気設計部', '', '福田　一之', 0, '2015-04-18 00:15:09.706141');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takeshi.ueno@kubota.com', 0, '株式会社クボタ', 'パイプシステム事業部　パルプ技術部　技術第二グループ', '', '上野　岳志', 0, '2015-04-18 00:15:25.744481');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tomohisa_t@kyodohdoboku.co.jp', 0, '株式会社共同土木東京工場', '業務統括部　環境開発課', '', '高梨　智久', 0, '2015-04-18 00:15:26.404812');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm-kikuchi@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '菊地　正人', 0, '2015-04-18 00:15:27.314523');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kiyoshi_s@yoshimura-inc.co.jp', 0, '株式会社ヨシムラ', '統括管理部', '', '鈴木　潔', 0, '2015-04-18 00:15:27.622562');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ariki@nextenergy.jp', 0, 'ネクストエナジー・アンド・リソース株式会社', '', '', '有木　正浩', 0, '2015-04-18 00:15:35.38755');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'd.suzuki@paper-recycle.jp', 0, 'エコフィスジャパン株式会社', '', '', '鈴木　大二郎', 0, '2015-04-18 00:15:35.81658');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y-nakazato@ac.daido.co.jp', 0, '大同特殊鋼株式会社', '渋川工場　環境室', '', '中里　康弘', 0, '2015-04-18 00:15:36.148446');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kazuto.anata@jp.com', 0, 'ソニーストレージメディア・アンド・デバイス株式会社', '総務部　安全環境防災課', '', '英　和人', 0, '2015-04-18 00:15:40.655169');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hidekuni.taoka@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部機械部', '', '田岡秀邦', 0, '2015-04-18 00:15:41.012824');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shin.kenei@subaru-fhi.co.jp', 0, '富士重工業株式会社', 'スバル製造本部　群馬製作所　生産技術研究部　SIグループ主査', '', '沈　建栄', 0, '2015-04-18 00:15:51.508238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'akiba@cowell.co.jp', 0, '株式会社コーウェル', 'ＬＥＤソリューション　第一営業部', '', '秋葉　義之', 0, '2015-04-18 00:15:51.953424');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'atsushikawamoto@kubota.com', 0, '株式会社クボタ', '本機製造部 本機製造第二課', '', '川本　篤志', 0, '2015-04-18 00:16:11.708135');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nanohanaminoh@gmail.com', 0, '菜の花プロジェクトみのお', '', '', '小林　武士', 0, '2015-04-18 00:16:16.43223');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'masashi-okumura@cdg.co.jp', 0, '株式会社ＣＤＧ東京本社', '営業本部　東京営業2部　営業７課', '', '奥村　昌史', 0, '2015-04-18 00:16:21.844769');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakamura@kirintechno.co.jp', 0, 'キリンテクノシステム株式会社', '技術開発部　開発１課', '', '中村　裕宗', 0, '2015-04-18 00:16:28.594235');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'araki-h@toso.co.jp', 0, 'トーソー株式会社', '管理室総務課', '', '新木　浩之', 0, '2015-04-18 00:16:28.811455');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't.takenouchi@niihama.co.jp', 0, '株式会社新居鉄工所（鉄は旧字体）', '破砕機事業部　設計課', '', '竹之内　智行', 0, '2015-04-18 00:16:29.380772');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'susuga@futami.net', 0, '株式会社二見', '製紙原料古紙直納問屋　産廃・一廃中間処理施設　営業部', '', '煤賀　正人', 0, '2015-04-18 00:16:49.894878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hi-ishikawa@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '石川　博将', 0, '2015-04-18 00:16:50.25001');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-nagai@tyo.kubota.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '長井　克幸', 0, '2015-04-18 00:16:52.783472');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kuroe.soichi@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '', '', '黒江　宗一', 0, '2015-04-18 00:16:53.29684');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'isao_kimura@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不戦不営業部営業第一グループ', '', '木村　功', 0, '2015-04-18 00:16:59.579519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'keiichirou.kimura@okumuragumi.jp', 0, '株式会社奥村組', '環境技術部　リニューアル課　', '', '木村　哲一郎', 0, '2015-04-18 00:17:00.541228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'oono@trustlight.jp', 0, 'エコ・トラスト・ジャパン株式会社', '営業本部　第一営業課　営業１係', '', '大野　翔平', 0, '2015-04-18 00:17:00.923081');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sekiguchi@garbage.co.jp', 0, '新潟ガービッヂ株式会社', '営業部', '', '関口　司忠', 0, '2015-04-18 00:17:01.118193');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakao.shunji@obayashi.co.jp', 0, '株式会社大林組', '技術本部　環境ソリューション部　スマートシティ推進課', '', '中尾　俊二', 0, '2015-04-18 00:17:07.135319');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'chuji.minami@jp.toto.com', 0, 'TOTO株式会社　', '茅ヶ崎工場　安全環境グループ', '', '皆見　忠慈', 0, '2015-04-18 00:17:14.508503');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshikazu.sato@kubota.com', 0, '株式会社クボタ', '電装機器事業部NPW-PT', '', '佐藤　嘉一', 0, '2015-04-18 00:17:20.609395');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'iida-satoru@motec-co.jp', 0, '株式会社エムオーテック', '営業第二部　営業第四課', '', '飯田　悟', 0, '2015-04-18 00:17:32.198045');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'honda-seiji@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　', '', '本田　誠司', 0, '2015-04-18 00:17:43.790214');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Hirozumi.Yoshitake@nsg.com', 0, '日本板硝子環境アメニティ株式会社', '東京事業部　エンジ部', '', '吉武　裕純', 0, '2015-04-18 00:17:49.654407');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm.nakasima@seisou-center.co.jp', 0, '株式会社清掃センター', '', '', '中嶋　満', 0, '2015-04-18 00:17:50.372916');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shinya.tanaka@exc.tokai-rika.co.jp', 0, '株式会社東海理化', '生産技術センター施設環境部環境管理室', '', '田中　真也', 0, '2015-04-18 00:17:50.712594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shiono@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部', '', '塩野　正春', 0, '2015-04-18 00:17:50.887285');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shimura@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部設計課', '', '志村　真', 0, '2015-04-18 00:17:51.051255');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'enoken-k@cy.tnc.ne.jp', 0, '有限会社エノケン工業', '', '', '榎田　英明', 0, '2015-04-18 00:17:51.777679');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tg-osada@tokyo-gas.co.jp', 0, '東京ガス株式会社', '神奈川西支店　地域広報グループ　広聴広報担当', '', '長田　猛', 0, '2015-04-18 00:17:52.236621');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ta.kurisaki@hino.co.jp', 0, '日野自動車株式会社', '車両実験部　総括室　', '', '栗崎　忠', 0, '2015-04-18 00:17:52.813442');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h_araki@muc.co.jp', 0, '株式会社　東京ミュー精器', '計量器コンサルタント営業技術部', '', '荒木　宏長', 0, '2015-04-18 00:17:53.049938');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'masaaki.takeshita@toshiba.co.jp', 0, '株式会社東芝　社会インフラシステム社', '浜川崎工場　生産技術部生産技術・環境担当', '', '竹下　政明', 0, '2015-04-18 00:17:54.290835');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tkohara@rubycon.co.jp', 0, 'ルビコン株式会社', '経営管理部', '', '小原　剛', 0, '2015-04-18 00:17:54.900251');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ttaniguc@bbs.co.jp', 0, '株式会社ビジネスブレイン太田昭和', 'ソリューション１部', '', '谷口　努', 0, '2015-04-18 00:18:01.723602');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-18 00:17:29.719127');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-18 00:18:25.059928');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kimura-makoto@msc.mitsuba-gr.com', 0, '株式会社ミツバサンコーワ', 'KS事業推進室', '', '木村　実', 0, '2015-04-18 00:18:31.715046');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kameyama.teruhiko@yellow.plala.or.jp', 0, '株式会社亀山', '', '', '亀山　照彦', 0, '2015-04-18 00:18:32.186997');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'm_ohsumi@chemico.co.jp', 0, '小野田ケミコ株式会社', '営業本部　地盤環境部', '', '大住　学', 0, '2015-04-18 00:18:47.140012');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-takamizawa@toriik.co.jp', 0, '鳥居化成株式会社', '技術部', '', '高見沢　栄幸', 0, '2015-04-18 00:18:47.482503');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-18 00:19:14.885922');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kaji@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '事業推進本部　製品事業部', '', '鍛冶　秀充', 0, '2015-04-18 00:19:16.175284');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nobuhito.okamoto@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術部', '', '岡本　信人', 0, '2015-04-18 00:19:16.980011');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'katsu@hitachizosen.co.jp', 0, '日立造船', '環境・プラント・エネルギー部', '', '勝　駿宇', 0, '2015-04-18 00:19:17.869028');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-18 00:19:24.503155');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-18 00:19:41.332219');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-18 00:20:10.675029');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-18 00:21:50.130837');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-18 00:21:51.155054');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm-nagashima@withwaste.jp', 0, '株式会社ウィズ　ウェイト　ジャパン', '東関東リサイクルパーク　茨城事業所', '', '永島　誠', 0, '2015-04-18 00:18:02.101065');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Akira_Toyoda@covalent.co.jp', 0, 'コバレントマテリアル株式会社', 'セラミック事業部', '', '豊田　明', 0, '2015-04-18 00:18:08.180327');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tomohiko.muto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '武藤　智彦', 0, '2015-04-18 00:18:56.192183');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kawakami@gomi39.co.jp', 0, '株式会社　三久', '', '', '川上　英男', 0, '2015-04-18 00:18:56.799913');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kenji.yamaguchi@sumitomocorp.co.jp', 0, '住友商事株式会社', '非鉄金属事業部　事業投資チーム　', '', '山口　健二', 0, '2015-04-18 00:18:57.005723');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Kazumasa_Ohashi@suntory.co.jp', 0, 'サントリービジネスエキスパート株式会社', 'R&Dサポートセンター　', '', '大橋　一雅', 0, '2015-04-18 00:18:57.284335');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tokyo@kdk-net.co.jp', 0, '國際電測興業株式会社', '東京営業所', '', '中島　博幸', 0, '2015-04-18 00:18:59.823676');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'okamoto@tokushakogyo.co.jp', 0, '株式会社特車工業', '製造部', '', '岡本　朝道', 0, '2015-04-18 00:19:00.41705');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'eigyo-03@keihin-group.co.jp', 0, '日栄産業株式会社', '', '', '亀谷　達哉', 0, '2015-04-18 00:19:01.075897');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tatsuhiro_fuse@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '布施　達弘', 0, '2015-04-18 00:19:01.658795');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takaharu.matsuoka@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部プロセス技術部', '', '松岡　隆晴', 0, '2015-04-18 00:19:02.161266');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'taguchi@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '田口　太桂英', 0, '2015-04-18 00:19:08.898896');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nishi@studiocovo.com', 0, '特定非営利活動法人グリーンネットワーク', '', '', '西　正徳', 0, '2015-04-18 00:19:09.18724');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hayakawa@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '早川　昇', 0, '2015-04-18 00:19:15.70258');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'maru3@gray.plala.or.jp', 0, '株式会社丸三興業', '営業部', '', '亀田　英男', 0, '2015-04-18 00:19:15.958818');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tamami.fujioka@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'Ｇ営業本部産業資材営業本部東京支店', '', '藤岡　珠未', 0, '2015-04-18 00:19:17.123863');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakahyo1@yokohama-marunaka.co.jp', 0, '横浜市場センター株式会社', '', '', '中堀　督勇', 0, '2015-04-18 00:19:18.046982');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takasaki-shuhei@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第二部　営業第四課', '', '高崎　脩平', 0, '2015-04-18 00:19:29.691145');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tamagawa-tatsunori@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部', '', '玉川　辰典', 0, '2015-04-18 00:19:41.371323');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ysmatsumr@malco.co.jp', 0, '株式会社エムエーパッケージング', 'ＣＳＲ推進部', '', '松村　裕安', 0, '2015-04-18 00:19:42.12338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yshimada@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '島田　雄二', 0, '2015-04-18 00:19:42.680054');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 're-frex@hit-5.net', 0, '株式会社リフレックス', '', '', '山崎　章弘', 0, '2015-04-18 00:19:51.743521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't.nogi.id@azbil.com', 0, 'アズビル株式会社', 'サービス本部　東京サービス部　東京サービス2グループ', '', '野木　毅', 0, '2015-04-18 00:19:52.025119');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ko-baba@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門海外事業部', '', '馬場　恒次', 0, '2015-04-18 00:19:52.583787');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yu-sugisaki@tokyoink.co.jp', 0, '東京インキ株式会社', '', '', '杉崎　幸利', 0, '2015-04-18 00:19:53.169207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'motome@mail.seikitokyu.co.jp', 0, 'エス・ティ・サービス　株式会社', '', '', '求　輝芳', 0, '2015-04-18 00:19:54.359521');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm.nagashima@nipponham.co.jp', 0, '日本ハム設計　株式会社', '工事部', '', '長島　光昭', 0, '2015-04-18 00:19:55.13162');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ebityan1225@gmail.com', 0, '東京農業大学', '', '', '海老原　佑', 0, '2015-04-18 00:20:01.812594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mitsuru-create@mx6.nns.ne.jp', 0, '株式会社クリエート', '', '', '望月　満', 0, '2015-04-18 00:20:02.615623');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mfukui@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社  企画業務グループ', '', '福井　美月', 0, '2015-04-18 00:20:07.345645');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takeno_yuki@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '竹野　勇輝', 0, '2015-04-18 00:20:12.233364');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y.nakamura@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', 'リース事業部', '', '中村　康昭', 0, '2015-04-18 00:20:12.487264');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hokutaku@hi-net.ne.jp', 0, '有限会社　北拓ビル管理', '', '', '下館　光一郎', 0, '2015-04-18 00:20:13.222393');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nagaso@mmc.co.jp', 0, '三菱マテリアテクノ株式会社', '資源・環境・エネルギー事業部　環境計量部　環境技術センター', '', '永草　康彦', 0, '2015-04-18 00:20:13.862479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'stanaka@bmbio.co.jp', 0, 'ビーエム機器株式会社', '　', '', '田中　知　', 0, '2015-04-18 00:20:17.061095');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'horry-potter@kve.biglobe.ne.jp', 0, 'カンセイ株式会社', '　', '', '堀端　久江', 0, '2015-04-18 00:20:22.318219');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fabe@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '分析センター', '', '阿部　大', 0, '2015-04-18 00:20:23.094899');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't-isomiti@nangoku-group.com', 0, '南国殖産株式会社', '建設産業機械課　霧島出張所', '', '礒道　達士', 0, '2015-04-18 00:20:24.003625');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mino.koki@ad-hzm.co.jp', 0, '株式会社安藤・間', '関東土木支店　土木部　大橋出張所　第３工事課', '', '美濃　光輝', 0, '2015-04-18 00:20:30.551547');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kimihiko_kubozuka@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ', '', '窪塚　公彦', 0, '2015-04-18 00:20:36.760473');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 're-takayama.shouten@dg7.so-net.ne.jp', 0, '有限会社高山商店', '', '', '高山　聡', 0, '2015-04-18 00:20:37.489433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kobayasi@aokikankyo.com', 0, '青木環境事業株式会社', '営業部', '', '小林　洋一', 0, '2015-04-18 00:20:38.406586');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ohmae_yusuke@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '関東支社　千葉北支店　成田営業所', '', '大前　雄介', 0, '2015-04-18 00:20:45.200024');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'naoki.asakawa@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '浅川　直貴', 0, '2015-04-18 00:20:49.788446');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'noriyuki.kondo@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '近藤　紀行', 0, '2015-04-18 00:20:54.252291');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'matsumoto@ebisukikou.co.jp', 0, '恵比寿機工株式会社', '', '', '松本　俊之', 0, '2015-04-18 00:20:55.443262');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshida.k@rentac.jp', 0, '株式会社レンタック', '', '', '吉田　和広', 0, '2015-04-18 00:20:55.72357');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'info@maruyou.com', 0, '丸友開発株式会社', '', '', '谷田　康雄', 0, '2015-04-18 00:20:56.22414');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'koshiba@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '技術本部　技術研究所', '', '小柴　朋広', 0, '2015-04-18 00:20:57.570689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'katsunori.motohashi@scigineer.co.jp', 0, 'サイジニア株式会社', '営業部', '', '本橋　且規', 0, '2015-04-18 00:20:57.91485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'suzuki_takayuki@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '販売事業部　営業管理部　商事課', '', '鈴木　敬之', 0, '2015-04-18 00:21:02.022615');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yseida@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '清田　侑紀', 0, '2015-04-18 00:21:02.88212');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'da.yamada@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '山田　大輔', 0, '2015-04-18 00:21:09.202489');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h.yoshida@ydec.co.jp', 0, '株式会社ヨシカワ', '営業課', '', '吉田　玄', 0, '2015-04-18 00:21:15.483685');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tatsuya.ogura@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '小倉　辰也', 0, '2015-04-18 00:21:27.579821');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yu.yamada@omltd.co.jp', 0, '株式会社オーエム製作所', '宍道開発室', '', '山田　裕治', 0, '2015-04-18 00:21:27.915574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'c-takano@yagashiro-ls.co.jp', 0, '株式会社八ケ代造園', '', '', '高野　智良', 0, '2015-04-18 00:21:28.147648');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'uchida@cc.kogakuin.ac.jp', 0, '工学院大学', '工学部　環境エネルギー化学科', '', '内田　雅樹', 0, '2015-04-18 00:21:29.82844');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y.wakida@east.ntt.co.jp', 0, 'NTT東日本', 'ネットワークソリューション部　営業支援担当', '', '脇田　祐司', 0, '2015-04-18 00:21:30.535484');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kojimam@sc.sumitomo-chem.co.jp', 0, '住友化学株式会社', '大分工場　レスポンシブルケア部', '', '小島　美津代', 0, '2015-04-18 00:21:31.056763');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'osamu.amano@toda.co.jp', 0, '戸田建設株式会社', '建築設計統轄部　設備設計部', '', '天野　修', 0, '2015-04-18 00:21:47.826265');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kgontou@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '権頭　克則', 0, '2015-04-18 00:21:48.46556');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'smiyagawa@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '東関東支社　技術営業グループ', '', '宮川　進矢', 0, '2015-04-18 00:21:49.256002');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'miyazaki-chemical@hotmail.co.jp', 0, 'ミヤザキ株式会社', '第二営業部', '', '宮崎　義大', 0, '2015-04-18 00:21:52.322548');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Yoshikazu_Tsuchiya@member.metro.tokyo.jp', 0, '東京都', '下水道局　施設管理部　施設管理課　', '', '土屋　義和', 0, '2015-04-18 00:21:53.264473');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fukuoka.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '', '', '福岳　雄一郎', 0, '2015-04-18 00:21:53.507321');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kokojima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　土壌環境グループ', '', '小島　幸司', 0, '2015-04-18 00:21:54.22338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tmuraguchi@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　', '', '村口　貴紀', 0, '2015-04-18 00:21:54.960358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tkurasawa@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　技術営業部', '', '倉澤　卓也', 0, '2015-04-18 00:22:01.336179');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'n-naitou@co-jsp.co.jp', 0, '株式会社　JSP', '新事業開発室　新技術開発部', '', '内藤　直記', 0, '2015-04-18 00:22:07.506715');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kimihiro.morishita@keisei-const.co.jp', 0, '京成建設株式会社', '営業本部　第二営業部', '', '森下　公博', 0, '2015-04-18 00:22:07.857262');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm-toshi@jrfreight.co.jp', 0, 'JR貨物', '関東支社　営業部　首都圏営業開発グループ', '', '宮下　俊彦', 0, '2015-04-18 00:22:08.179211');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kankyo-shisetsu@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　環境施設課', '', '酒巻　紳一郎', 0, '2015-04-18 00:22:09.088247');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'a.jinbo@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', '中部支社', '', '神保　明彦', 0, '2015-04-18 00:22:09.280901');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm_horiike@sanwakensho.co.jp', 0, '三和建商株式会社', '', '', '堀池　通浩', 0, '2015-04-18 00:22:27.275036');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h-kimura@wesco.co.jp', 0, '株式会社ウエスコ', '環境設計部　環境設計課', '', '木村　浩和', 0, '2015-04-18 00:22:27.984594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'howard@proten.com.tw', 0, '伯登有限公司', '', '', '黄　明章', 0, '2015-04-18 00:22:30.029583');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-okazaki@tohoku-kigyo.co.jp', 0, '東北企業株式会社', '第四営業部', '', '岡崎　啓一', 0, '2015-04-18 00:22:31.39419');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'oyabu.yamato@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '大薮　大和', 0, '2015-04-18 00:22:31.908621');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'inoue.takashi1@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '井上　崇', 0, '2015-04-18 00:22:32.392144');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kiyoshi@kakutani.co.jp', 0, '角谷木材建設株式会社', '', '', '角谷　喜代志', 0, '2015-04-18 00:22:36.104308');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'susumu_kawaguchi@kurekan.co.jp', 0, '株式会社クレハ環境', '環境技術部　技術企画課', '', '河口　進', 0, '2015-04-18 00:22:40.70063');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'atsugi@kksat.jp', 0, '株式会社サトー', '', '', '渡辺　一城', 0, '2015-04-18 00:22:44.07016');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sugie@ishizuka.co.jp', 0, '石塚硝子株式会社', '技術本部', '', '椙江　弘樹', 0, '2015-04-18 00:22:45.228374');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yanaura@omtecinc.co.jp', 0, '株式会社オムテック', '', '', '柳浦　公二郎', 0, '2015-04-18 00:23:01.348856');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tadahiko_miyoshi@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布製造所', '', '三好　正彦', 0, '2015-04-18 00:23:07.677628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-takamura@aqua.plala.or.jp', 0, 'アクア創研有限会社', '', '', '高村　晋', 0, '2015-04-18 00:23:43.9454');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kishimoto.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '営業部', '', '岸本　裕司', 0, '2015-04-18 00:23:46.273674');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'honma.yutaka@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '土木事業部　技術企画部', '', '本間　豊', 0, '2015-04-18 00:23:46.732259');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tatsuhiko-maeda@mes.co.jp', 0, '三井造船株式会社', 'エンジニアリング事業本部　プロジェクト部　環境エネルギーグループ', '', '前田　達彦', 0, '2015-04-18 00:23:47.000365');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hayafuji.eiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '安全環境部　環境グループ', '', '早藤　英一', 0, '2015-04-18 00:23:47.304605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hirakawa@apower-now.net', 0, 'あじあ行政書士法人', '', '', '平川　雅夫', 0, '2015-04-18 00:23:47.719127');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yacokada@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　固化材グループ　', '', '岡田　八千代', 0, '2015-04-18 00:23:58.849517');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tanaka.makoto@ebara.com', 0, '株式会社荏原製作所', '社会システム計画・開発統括部　事業推進室', '', '田中　誠', 0, '2015-04-18 00:24:24.423899');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'uno@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '東京営業所', '', '宇野　敏志', 0, '2015-04-18 00:24:25.288084');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's.uchida@mys.co.jp', 0, '三好環境株式会社', '営業一部', '', '内田　成昭', 0, '2015-04-18 00:24:25.612702');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ayano-koruri@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第一課', '', '綾野　こるり', 0, '2015-04-18 00:22:54.139386');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'anzenseikatsu@city.chiyoda.lg.jp', 0, '千代田区環境安全部', '安全生活課　公害指導係', '', '関根　昇', 0, '2015-04-18 00:22:54.603927');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yokoi-hideki@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '横井　秀樹', 0, '2015-04-18 00:23:29.202095');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'khirai@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部', '', '平井　克政', 0, '2015-04-18 00:23:37.414048');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tanaka.a53.yoshihiro@log.nssmc.com', 0, '日鉄住金物流株式会社', '国内営業本部　環境・原料部', '', '田中　義浩', 0, '2015-04-18 00:23:38.548071');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kazuhiro.inaba@kubota.com', 0, '株式会社クボタ建機ジャパン', '広域営業部', '', '稲葉　和宏', 0, '2015-04-18 00:23:45.047514');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'r34_take@yahoo.co.jp', 0, '有限会社保坂住建', '産廃事業部', '', '保坂　岳彦', 0, '2015-04-18 00:23:55.286042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mogi@zushi-tec.com', 0, '伊豆電設株式会社', '', '', '茂木　隆', 0, '2015-04-18 00:23:55.505699');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kouji8@taiyoukiso.co.jp', 0, '太洋基礎工業株式会社　東京支店', '工事部', '', '加藤　康徳', 0, '2015-04-18 00:23:55.72321');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't.aoki@morooka.co.jp', 0, '株式会社諸岡', '営業推進室', '', '青木　貴洋', 0, '2015-04-18 00:23:58.536041');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'esaitou@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '齋藤　英司', 0, '2015-04-18 00:23:59.935866');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'aohba@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '大庭　章生', 0, '2015-04-18 00:24:01.354174');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kkosasayama@mecx.co.jp', 0, '株式会社MECX', '営業部', '', '小笹山　要', 0, '2015-04-18 00:24:03.064468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, '26642u@ube-ind.co.jp', 0, '宇部丸善ポリエチレン株式会社', '営業部', '', '竹下　博之', 0, '2015-04-18 00:24:03.788');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tdoki@okumura-kikai.co.jp', 0, '奥村機械株式曾社', '営業企画グループ', '', '土岐　拓也', 0, '2015-04-18 00:24:09.047279');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-18 00:24:15.112751');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-18 00:24:27.179141');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-18 00:24:33.666207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-18 00:24:39.9587');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-18 00:24:40.427824');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-18 00:24:43.402062');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ryoko.hatori@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '羽鳥　涼子', 0, '2015-04-18 00:24:44.386544');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kousuke_kawai@yanmar.co.jp', 0, 'ヤンマー建機株式会社', '西部営業部　大阪支店　販売グループ', '', '河井　浩輔', 0, '2015-04-18 00:24:45.42714');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-18 00:24:52.138296');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-18 00:25:06.350137');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'suzuki-h@yonei.co.jp', 0, '株式会社ヨネイ', '建設機械ユニット', '', '鈴木　裕人', 0, '2015-04-18 00:25:06.572015');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't.ono@me.tomo-e.co.jp', 0, '巴工業株式会社', '機械本部　産業機械営業部', '', '小野　隆扶美', 0, '2015-04-18 00:25:12.868531');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakanishi-ka@d-kjk.co.jp', 0, 'コマダ樹脂工業株式会社', '東京支店', '', '仲西　員実', 0, '2015-04-18 00:25:13.239635');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-18 00:25:27.022544');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-18 00:25:29.029551');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-18 00:25:29.92432');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-18 00:25:36.815044');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's-kankyo@matsue-kg.co.jp', 0, '有限会社松江興業', '環境管理推進室', '', '榎本　伯一', 0, '2015-04-18 00:25:37.217229');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-18 00:25:41.829418');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-18 00:25:48.315542');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'watanabe.AW1929@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '渡邉　政和', 0, '2015-04-18 00:25:49.014897');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hitoshi.fujita@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　生産企画部', '', '藤田　仁', 0, '2015-04-18 00:25:49.35586');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Tuyoshi.Yamashita@mitsui-chem.co.jp', 0, '三井化学東セロ株式会社', '新規事業開発室', '', '山下　剛', 0, '2015-04-18 00:25:53.371769');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-18 00:26:00.126318');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-18 00:26:12.893613');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-18 00:26:15.247168');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-18 00:26:15.525715');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-18 00:26:18.787642');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-18 00:26:19.005646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-18 00:26:19.261302');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-18 00:26:20.14994');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tiijima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'プロジェクト推進部　応用技術グループ', '', '飯島　健', 0, '2015-04-18 00:26:23.661041');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tadashi.tsunematsu@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術研究所　第一研究室', '', '常松　直志', 0, '2015-04-18 00:24:27.531479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm-miyagi@ohmiyakouki.com', 0, '有限会社大宮工機', '', '', '宮城　光秀', 0, '2015-04-18 00:24:33.063645');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kidoy@jikco.co.jp', 0, '株式会社ジコー', '管理本部', '', '城戸　良重', 0, '2015-04-18 00:24:44.608443');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hiroshi-abe@obayashi-road.co.jp', 0, '大林道路株式会社', '本店　プラントシステム営業部', '', '阿部　浩', 0, '2015-04-18 00:25:21.0884');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'info@hakuei-kaitai.com', 0, '株式会社珀栄', '', '', '花房　伸', 0, '2015-04-18 00:25:21.936827');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tokyo@kamacho.co.jp', 0, '鎌長製衡株式会社', '営業本部　東京支店　営業1グループ', '', '山田　悠太郎', 0, '2015-04-18 00:25:32.198111');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y.ohshima@chiba-gas.co.jp', 0, '千葉ガス株式会社', 'エネルギー営業部　エネルギー営業グループ', '', '大島　裕亮', 0, '2015-04-18 00:25:33.422431');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'niwa@szken.co.jp', 0, '株式会社鈴鍵', '', '', '丹羽　庸介', 0, '2015-04-18 00:25:34.00426');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Toshiya.Nishimura@nsg.com', 0, '日本板硝子環境アメニティ株式会社', '東京事業部　エンジ部', '', '西村　俊哉', 0, '2015-04-18 00:25:39.220508');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'okumoto.kohei@kobelco.com', 0, 'コベルコ建機株式会社', '直轄営業部　営業グループ', '', '奥本　昂平', 0, '2015-04-18 00:26:15.298446');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mizuno.masamichi@kobelco.com', 0, '東日本コベルコ建機株式会社', '南関東支社　横浜営業所', '', '水野　真理', 0, '2015-04-18 00:26:15.778675');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nobuaki_s@kyodohdoboku.co.jp', 0, '株式会社共同土木　千葉工場', '業務統括部　', '', '佐々木　伸明', 0, '2015-04-18 00:26:16.693101');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'masahide_ohmiya@cosmo-sales.co.jp', 0, 'コスモリフォーム株式会社', '', '', '大宮　正秀', 0, '2015-04-18 00:26:18.735239');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'wakita@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '脇田　真治', 0, '2015-04-18 00:26:19.842784');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'office@yamashita-shoten.com', 0, '有限会社山下商店', '', '', '山下　唱徳', 0, '2015-04-18 00:26:20.086504');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'minoru@kitajimashibori.co.jp', 0, '株式会社北嶋絞製作所', '', '', '北嶋　實', 0, '2015-04-18 00:26:20.520745');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'earth.toumi@gmail.com', 0, 'アース・グループ株式会社', '東京営業課', '', '田海　浩之', 0, '2015-04-18 00:26:26.833898');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kasuya.hideo@tokyu-cnst.co.jp', 0, '東急建設株式会社', '営業本部　鉄道営業統括部', '', '粕谷　英夫', 0, '2015-04-18 00:26:28.545848');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takenaka-tetsuji@motec-co.jp', 0, '株式会社エムオーテック　大阪支店', '営業部', '', '竹中　哲治', 0, '2015-04-18 00:26:40.14111');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-hashizume@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '水処理営業部　技術第一課', '', '橋爪　祥世', 0, '2015-04-18 00:26:42.292768');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'toshiharu.nagashima@konicaminolta.com', 0, 'コニカミノルタ株式会社', '社会環境統括部　安全防災部　防災企画グループ', '', '永島　利晴', 0, '2015-04-18 00:26:47.669063');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shouichirou.higuchi@toda.co.jp', 0, '戸田建設株式会社', '価値創造推進部　開発センター', '', '樋口　正一郎', 0, '2015-04-18 00:26:59.280681');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kuboniwa-makoto@ise-egg.co.jp', 0, '有限会社つくばファーム', '', '', '久保庭　真', 0, '2015-04-18 00:31:20.071986');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h.nikaidou@garnet.dti.ne.jp', 0, '二階堂労働安全コンサルタント事務所', '', '', '二階堂　久', 0, '2015-04-18 00:31:20.384078');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kazuma.enomoto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '榎本　一馬', 0, '2015-04-18 00:32:15.111526');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hayashi@nishikawa-rose.co.jp', 0, '西川ローズ株式会社', '', '', '林　三吉', 0, '2015-04-18 00:32:23.928851');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'wxmxy880@yahoo.co.jp', 0, 'エムストラスト株式会社', '', '', '鈴木　保弘', 0, '2015-04-18 00:32:24.745073');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'imai-hanako@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '今井　華子', 0, '2015-04-18 00:32:38.685252');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ikenaga-yuto@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '池永　優人', 0, '2015-04-18 00:32:50.280923');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nishimura-takuma@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '西村　卓馬', 0, '2015-04-18 00:33:01.849911');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mi_yamazaki@smkc.co.jp', 0, '三井住商建材株式会社', '機能推進本部　特販部　環境チーム', '', '山﨑　巳之武', 0, '2015-04-18 00:33:08.975192');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'seijirou_yukawa@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '湯川　誠二郎', 0, '2015-04-18 00:37:29.954805');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'quality_section@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術　品質管理部', '', '本田　泰章', 0, '2015-04-18 00:37:55.121138');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ikedaT@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術・品質管理課', '', '池田　隆司', 0, '2015-04-18 00:37:58.060181');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshimura.ryoko@lab.ntt.co.jp', 0, '日本電信電話株式会社　NTTフォトニクス研究所', 'フォトニクスデバイス研究部', '', '吉村　了行', 0, '2015-04-18 00:37:58.340944');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kosuke.kitagishi@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '北岸　広祐', 0, '2015-04-18 00:38:01.728663');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-muta@tokushakogyo.co.jp', 0, '株式会社特車工業', '', '', '牟田　繁生', 0, '2015-04-18 00:38:02.369593');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k-ohata@skk.jp', 0, '三建設備工業株式会社', '営業本部　ソリューション部　', '', '大端　健治', 0, '2015-04-18 00:38:03.224793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kinusa.koide@mjk.mhi.co.jp', 0, '三菱重工環境・化学エンジニアリング株式会社', '営業統括部　海外営業部　海外プラント営業グループ', '', '小出　衣佐', 0, '2015-04-18 00:38:07.602462');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'oda.tomohiro@obayashi.co.jp', 0, '株式会社大林組', '技術本部　技術研究所　環境技術研究部', '', '小田　智弘', 0, '2015-04-18 00:38:15.056818');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hk@kikuchikasei.co.jp', 0, '株式会社菊池化成', '', '', '菊池　真悟', 0, '2015-04-18 00:38:21.689539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tmnakagawa@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '中川　知子', 0, '2015-04-18 00:38:26.846384');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'akitou@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '伊藤　顕人', 0, '2015-04-18 00:38:32.915316');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hgonoi@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '五ノ井　裕之', 0, '2015-04-18 00:38:37.447631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'osamu-ohashi@obayashi-road.co.jp', 0, '大林道路株式会社', '総合評価対策室', '', '大橋　紀', 0, '2015-04-18 00:38:43.737474');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'takaoka.t@ohno-associates.jp', 0, 'オオノ開發株式会社', '開発室', '', '高岡　敏雄', 0, '2015-04-18 00:38:44.401873');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'watanabe-yuko@city.anjo.lg.jp', 0, '安城市', '環境部環境首都推進課　', '', '渡辺　裕子', 0, '2015-04-18 00:38:45.12261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y-nakanishi@kitamuraindustry.co.jp', 0, '株式会社キタムラ産業　関東営業所', '', '', '中西　康裕', 0, '2015-04-18 00:26:25.363433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yanme@toriton.or.jp', 0, '公益財団法人鳥取県産業振興機構', '企業支援部　販路開拓グループ', '', '安梅　功哲', 0, '2015-04-18 00:26:27.154257');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nfukuda@harasho.co.jp', 0, '株式会社原商', '営業開発部', '', '福田　直明', 0, '2015-04-18 00:26:27.483717');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'ikuo_endou@it.ihigrp.ihi.co.jp', 0, '株式会社IHIトレーディング', '第一営業部　機器グループ', '', '遠藤　育雄', 0, '2015-04-18 00:26:31.591689');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yuuki-kougyou-tanaka@outlook.jp', 0, '株式会社結城興業', '', '', '田中　康一', 0, '2015-04-18 00:27:44.659837');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kutsumi-s@kimica.jp', 0, '株式会社キミカ', '製造部製造第4グループ', '', '久津見　知', 0, '2015-04-18 00:29:46.494494');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ka_igarashi@kyodoprinting.co.jp', 0, '共同印刷株式会社', 'トータルソリューションオフィス　ビジネス開発グループ', '', '五十嵐　一弘', 0, '2015-04-18 00:29:46.857616');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'r-takatori@tanaka-iron-works.com', 0, '田中鉄工株式会社', 'セールスエンジニア', '', '高取　竜樹', 0, '2015-04-18 00:29:51.005974');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'matsuzawa@sun-express.co.jp', 0, '株式会社サン・エキスプレス', '第一営業部', '', '松澤　快之', 0, '2015-04-18 00:29:51.235119');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'okada@tachibana-m.co.jp', 0, '株式会社立花マテリアル', '東京支店　営業部　営業二課', '', '岡田　公彦', 0, '2015-04-18 00:30:12.419877');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kamioka@yamasaki-net.co.jp', 0, '株式会社山崎紙源センター', '', '', '上岡　康人', 0, '2015-04-18 00:31:49.638132');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'toshihiko_hamamoto@scm.shi.co.jp', 0, '大阪住重機建機株式会社', '', '', '濵本　敏彦', 0, '2015-04-18 00:31:53.467751');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'okawa@j-facility.com', 0, '日本ファシリティ・ソリューション株式会社', '営業本部ソリューション営業部', '', '大川　太郎', 0, '2015-04-18 00:31:57.738307');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'r-mogi@keiyokogyo.co.jp', 0, '株式会社京葉興業', '作業部', '', '茂木　龍二', 0, '2015-04-18 00:32:02.118398');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'kobayashi.keiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '小林　敬一', 0, '2015-04-18 00:32:02.848396');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'higashi.shinya@toshiba-sol.co.jp', 0, '東芝ソリューション株式会社　府中エンジニアリングセンター', 'プラットフォームソリューション事業部　ハードウエア開発部', '', '東　請弥', 0, '2015-04-18 00:32:04.080617');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Tetsuya.Isogai@mail.penta-ocean.co.jp', 0, '五洋建設株式会社', '土木部門　土木本部　環境事業部', '', '磯貝　哲也', 0, '2015-04-18 00:32:13.147861');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tajka.hasegawa@hino.co.jp', 0, '日野自動車株式会社', 'シャシ生技部　第2海外生技室', '', '長谷川　貴之', 0, '2015-04-18 00:32:13.729306');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yuuki_nishimura@scm.shi.co.jp', 0, '大阪住重建機株式会社　茨城営業所', '', '', '西村　裕樹', 0, '2015-04-18 00:32:22.633228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hiroshi_nishioka@scm.shi.co.jp', 0, '大阪住重建機株式会社', '営業課', '', '西岡　浩史', 0, '2015-04-18 00:32:26.526034');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ryota.mori@yoshimine.co.jp', 0, '株式会社よしみね', '総務部', '', '森　諒太', 0, '2015-04-18 00:32:34.852894');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'Hiroshi_Souma@morita119.com', 0, '株式会社モリタ環境テック　東日本営業部', 'サービス課', '', '相馬　寛', 0, '2015-04-18 00:32:42.710233');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'mikegaya@smrc.co.jp', 0, '三井住建道路株式会社　関東支店', '営業部　営業開発課', '', '池ヶ谷　正博', 0, '2015-04-18 00:32:50.031057');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y_inoue@tarpo-hiraoka.com', 0, '平岡織染株式会社', '技術本部　第二グループ', '', '井上　由治', 0, '2015-04-18 00:32:54.635157');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'nobuo.matsuhashi@ibjl.co.jp', 0, '興銀リース株式会社', '建機営業部', '', '松橋　信雄', 0, '2015-04-18 00:33:22.630759');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tana_advice@yahoo.co.jp', 0, '有限会社竹建設', '', '', '棚原　譲', 0, '2015-04-18 00:33:23.579359');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'tsuyoshi_yamabe@orix.co.jp', 0, 'オリックス株式会社', '建機・鉄鋼営業部　建機営業第一チーム', '', '山邉　剛', 0, '2015-04-18 00:33:24.044509');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'terukazu.kinoshita@re.jx-group.co.jp', 0, 'JX日鉱日石不動産株式会社', 'ビル事業部　大手町営業所', '', '木下　晃一', 0, '2015-04-18 00:33:25.587778');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'y-sakai@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課', '', '酒井　保和', 0, '2015-04-18 00:33:29.398878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k-nakagawa@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課GL', '', '中川　健一', 0, '2015-04-18 00:33:33.056772');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'guilherme_uehara@itp.co.jp', 0, '株式会社石田大成社', 'グローバルコミュニケーションデザイン本部　クライアントサービス課', '', '上原　ギィリエルメ', 0, '2015-04-18 00:33:39.415654');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 't-nishida@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '西田　孝之', 0, '2015-04-18 00:33:40.080803');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'k.ikezaki@i-mori.co.jp', 0, '株式会社イーモリ', '営業部', '', '池崎　清智', 0, '2015-04-18 00:33:40.460826');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'info@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '齋藤　雅明', 0, '2015-04-18 00:33:41.314412');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'hirosuke.akahosi@okumuragumi.jp', 0, '株式会社奥村組　東日本支社', '環境技術部、土木第3部', '', '赤星　公祐', 0, '2015-04-18 00:33:42.508918');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yasushi-sasaki@rncc.co.jp', 0, 'りんかい日産建設株式会社　東京土木支店', '総合評価積算部　総合評価積算課', '', '佐々木　靖', 0, '2015-04-18 00:34:06.587535');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'office@kyoei-kankyo.com', 0, '株式会社共栄環境', '', '', '下田　美智代', 0, '2015-04-18 00:34:09.943581');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (355727, 'yoshitaka_sumitomo@cooled.co.jp', 0, '株式会社SNPジャパン', '営業部', '', '住友　嘉隆', 0, '2015-04-18 00:34:10.241242');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'h-saito@noisecontrol.co.jp', 0, '日本ノイズコントロール株式会社', '', '', '齋藤　博', 0, '2015-04-18 00:43:17.740803');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-18 00:45:43.038747');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tdoki@okumura-kikai.co.jp', 0, '奥村機械株式曾社', '営業企画グループ', '', '土岐　拓也', 0, '2015-04-18 00:46:40.085765');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-18 00:46:44.664878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-18 00:46:56.66576');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-18 00:47:02.750633');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-18 00:47:09.33791');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nagaoka@ym.n-c-c.co.jp', 0, '株式会社日本コンピュータコンサルタント', '企画室　営業企画', '', '長岡　永典', 0, '2015-04-18 00:38:45.641661');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tsujibayashi.masato@toshiba-tpsc.co.jp', 0, '東芝プラントシステム株式会社', '技術企画・開発部　', '', '辻林　正人', 0, '2015-04-18 00:38:47.192764');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shimada.masayoshi@canon-ecology.co.jp', 0, 'キヤノンエコロジーインダストリー株式会社', '生産統括センター　技術部　生産技術課', '', '島田　真由', 0, '2015-04-18 00:38:48.973071');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yo-ino@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門　営業統括部', '', '井野　嘉紀', 0, '2015-04-18 00:38:49.622962');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamashin-b@hb.tp1.jp', 0, '有限会社ヤマシン貿易', '', '', '玉川　博康', 0, '2015-04-18 00:38:49.997151');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'sano.koki@ebara.com', 0, '株式会社荏原製作所', '', '', '佐野　貴紀', 0, '2015-04-18 00:38:50.390684');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'a.momoi.zh@azbil.com', 0, 'アズビル株式会社', '東京営業所　2グループ', '', '百井　章文', 0, '2015-04-18 00:38:50.715383');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'inagakikz@sekisuijushi.co.jp', 0, '積水樹脂株式会社', '評価・環境管理部　安全・品質・環境グループ', '', '稲垣　和美', 0, '2015-04-18 00:38:51.114997');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yonemoto-shinji@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　工事部', '', '米元　真治', 0, '2015-04-18 00:40:10.230805');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-18 00:40:15.691424');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-18 00:41:26.005346');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kimura-makoto@msc.mitsuba-gr.com', 0, '株式会社ミツバサンコーワ', 'KS事業推進室', '', '木村　実', 0, '2015-04-18 00:41:32.580434');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kameyama.teruhiko@yellow.plala.or.jp', 0, '株式会社亀山', '', '', '亀山　照彦', 0, '2015-04-18 00:41:33.044177');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'm_ohsumi@chemico.co.jp', 0, '小野田ケミコ株式会社', '営業本部　地盤環境部', '', '大住　学', 0, '2015-04-18 00:41:40.113947');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-takamizawa@toriik.co.jp', 0, '鳥居化成株式会社', '技術部', '', '高見沢　栄幸', 0, '2015-04-18 00:41:40.474322');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-18 00:41:56.959166');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kaji@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '事業推進本部　製品事業部', '', '鍛冶　秀充', 0, '2015-04-18 00:41:58.267227');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nobuhito.okamoto@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術部', '', '岡本　信人', 0, '2015-04-18 00:41:58.981605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'katsu@hitachizosen.co.jp', 0, '日立造船', '環境・プラント・エネルギー部', '', '勝　駿宇', 0, '2015-04-18 00:42:00.098598');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-18 00:42:06.243485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-18 00:42:12.733836');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ynqyuki@mmc.co.jp', 0, '三菱マテリアル株式会社　電子材料事業カンパニー', '化成営業部　フッ素グループ', '', '名雪　靖志', 0, '2015-04-18 00:42:13.865596');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mi-koiwai@kakuto.co.jp', 0, '株式会社　角藤', '土木・基礎工事部　工事課', '', '小岩井　充', 0, '2015-04-18 00:42:38.11555');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'harada@ohkita-recycle.co.jp', 0, '株式会社大北リサイクル', '', '', '原田　佳角', 0, '2015-04-18 00:42:38.502239');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-18 00:42:47.762028');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hnamura@rle.ricoh.co.jp', 0, 'リコーリース株式会社　首都圏支社', '東京営業一課', '', '南村　仁司', 0, '2015-04-18 00:43:06.696199');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hidenori_yoshida@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京開発営業部　測定器営業第1チーム', '', '吉田　秀典', 0, '2015-04-18 00:43:07.299207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y-egawa@aitech.co.jp', 0, '株式会社アイテク', '設備事業部　営業部', '', '恵川　幸男', 0, '2015-04-18 00:43:08.206457');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-18 00:44:28.870213');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mori@tso-int.co.jp', 0, 'TSO International 株式会社', '', '', '森　育三', 0, '2015-04-18 00:44:29.276767');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakamura-s@sc-cement.co.jp', 0, '住商セメント株式会社', '', '', '中村　哲', 0, '2015-04-18 00:44:32.991756');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-18 00:44:34.10819');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shirai16@khaki.plala.or.jp', 0, '', '', '', '白井　孝夫', 0, '2015-04-18 00:44:34.523561');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kubo-y@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '久保　好則', 0, '2015-04-18 00:44:35.566038');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'katsuyuki_yamamori@scm.shi.co.jp', 0, '住友建機販売株式会社', '中部統括部　東濃営業所', '', '山森　勝之', 0, '2015-04-18 00:44:51.37194');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fujimura.hiroaki@daiwaroyal.jp', 0, 'ダイワロイヤル株式会社', '管理本部　人事総務部', '', '藤村　浩彰', 0, '2015-04-18 00:44:56.149833');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shimamoto_takashi@zenitaka.co.jp', 0, '銭高組', '土木事業本部　受注推進部　受注責任課', '', '島元　隆史', 0, '2015-04-18 00:45:00.80375');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'aihara-jiro@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '相原　次郎', 0, '2015-04-18 00:45:25.886796');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ayano-koruri@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第一課', '', '綾野　こるり', 0, '2015-04-18 00:45:37.61628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'anzenseikatsu@city.chiyoda.lg.jp', 0, '千代田区環境安全部', '安全生活課　公害指導係', '', '関根　昇', 0, '2015-04-18 00:45:37.85824');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yokoi-hideki@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '横井　秀樹', 0, '2015-04-18 00:46:12.334247');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'khirai@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部', '', '平井　克政', 0, '2015-04-18 00:46:19.55805');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tanaka.a53.yoshihiro@log.nssmc.com', 0, '日鉄住金物流株式会社', '国内営業本部　環境・原料部', '', '田中　義浩', 0, '2015-04-18 00:46:20.335105');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kazuhiro.inaba@kubota.com', 0, '株式会社クボタ建機ジャパン', '広域営業部', '', '稲葉　和宏', 0, '2015-04-18 00:46:26.091794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'r34_take@yahoo.co.jp', 0, '有限会社保坂住建', '産廃事業部', '', '保坂　岳彦', 0, '2015-04-18 00:46:26.700251');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'mogi@zushi-tec.com', 0, '伊豆電設株式会社', '', '', '茂木　隆', 0, '2015-04-18 00:46:26.905509');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kouji8@taiyoukiso.co.jp', 0, '太洋基礎工業株式会社　東京支店', '工事部', '', '加藤　康徳', 0, '2015-04-18 00:46:27.122901');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't.aoki@morooka.co.jp', 0, '株式会社諸岡', '営業推進室', '', '青木　貴洋', 0, '2015-04-18 00:46:30.13162');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'esaitou@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '齋藤　英司', 0, '2015-04-18 00:46:31.521943');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'aohba@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '大庭　章生', 0, '2015-04-18 00:46:32.87898');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kkosasayama@mecx.co.jp', 0, '株式会社MECX', '営業部', '', '小笹山　要', 0, '2015-04-18 00:46:34.575815');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, '26642u@ube-ind.co.jp', 0, '宇部丸善ポリエチレン株式会社', '営業部', '', '竹下　博之', 0, '2015-04-18 00:46:35.213232');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tdoki@okumura-kikai.co.jp', 0, '奥村機械株式曾社', '営業企画グループ', '', '土岐　拓也', 0, '2015-04-18 00:46:39.91497');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-18 00:46:44.845876');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-18 00:46:56.342628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-18 00:47:02.853304');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-18 00:47:09.573763');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-18 00:47:10.019704');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-18 00:47:14.848631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-18 00:47:21.337157');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-18 00:47:38.408261');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-18 00:47:47.127441');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-18 00:47:50.747305');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-18 00:47:51.41095');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-18 00:47:56.165086');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's-kankyo@matsue-kg.co.jp', 0, '有限会社松江興業', '環境管理推進室', '', '榎本　伯一', 0, '2015-04-18 00:47:56.666236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-18 00:48:01.190476');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-18 00:48:07.560582');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'watanabe.AW1929@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '渡邉　政和', 0, '2015-04-18 00:48:08.269738');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'hitoshi.fujita@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　生産企画部', '', '藤田　仁', 0, '2015-04-18 00:48:08.601923');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'Tuyoshi.Yamashita@mitsui-chem.co.jp', 0, '三井化学東セロ株式会社', '新規事業開発室', '', '山下　剛', 0, '2015-04-18 00:48:11.993893');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-18 00:48:18.726479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-18 00:48:31.484505');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-18 00:48:34.282236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-18 00:48:34.552452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-18 00:48:37.721948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-18 00:48:37.935895');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-18 00:48:38.113009');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-18 00:48:38.31897');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tiijima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'プロジェクト推進部　応用技術グループ', '', '飯島　健', 0, '2015-04-18 00:48:41.926085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'y-nakanishi@kitamuraindustry.co.jp', 0, '株式会社キタムラ産業　関東営業所', '', '', '中西　康裕', 0, '2015-04-18 00:48:43.38834');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yanme@toriton.or.jp', 0, '公益財団法人鳥取県産業振興機構', '企業支援部　販路開拓グループ', '', '安梅　功哲', 0, '2015-04-18 00:48:44.776871');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nfukuda@harasho.co.jp', 0, '株式会社原商', '営業開発部', '', '福田　直明', 0, '2015-04-18 00:48:45.044062');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ikuo_endou@it.ihigrp.ihi.co.jp', 0, '株式会社IHIトレーディング', '第一営業部　機器グループ', '', '遠藤　育雄', 0, '2015-04-18 00:48:48.728977');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yuuki-kougyou-tanaka@outlook.jp', 0, '株式会社結城興業', '', '', '田中　康一', 0, '2015-04-18 00:50:01.279985');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kamioka@yamasaki-net.co.jp', 0, '株式会社山崎紙源センター', '', '', '上岡　康人', 0, '2015-04-18 00:54:06.719669');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'toshihiko_hamamoto@scm.shi.co.jp', 0, '大阪住重機建機株式会社', '', '', '濵本　敏彦', 0, '2015-04-18 00:54:10.541138');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'okawa@j-facility.com', 0, '日本ファシリティ・ソリューション株式会社', '営業本部ソリューション営業部', '', '大川　太郎', 0, '2015-04-18 00:54:11.478377');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-18 00:47:09.908953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-18 00:47:12.872644');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ryoko.hatori@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '羽鳥　涼子', 0, '2015-04-18 00:47:13.78354');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kousuke_kawai@yanmar.co.jp', 0, 'ヤンマー建機株式会社', '西部営業部　大阪支店　販売グループ', '', '河井　浩輔', 0, '2015-04-18 00:47:14.777306');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-18 00:47:22.502501');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-18 00:47:32.674697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'suzuki-h@yonei.co.jp', 0, '株式会社ヨネイ', '建設機械ユニット', '', '鈴木　裕人', 0, '2015-04-18 00:47:32.914898');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 't.ono@me.tomo-e.co.jp', 0, '巴工業株式会社', '機械本部　産業機械営業部', '', '小野　隆扶美', 0, '2015-04-18 00:47:36.885248');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakanishi-ka@d-kjk.co.jp', 0, 'コマダ樹脂工業株式会社', '東京支店', '', '仲西　員実', 0, '2015-04-18 00:47:37.209071');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-18 00:47:46.698437');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-18 00:47:50.525913');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-18 00:47:51.329855');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-18 00:47:57.315394');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-18 00:48:02.61182');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-18 00:48:08.445774');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-18 00:48:18.043955');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-18 00:48:31.841542');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-18 00:48:34.287615');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-18 00:48:34.559989');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-18 00:48:37.752926');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-18 00:48:37.9994');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-18 00:48:38.174565');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-18 00:48:38.413718');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'okawa@j-facility.com', 0, '日本ファシリティ・ソリューション株式会社', '営業本部ソリューション営業部', '', '大川　太郎', 0, '2015-04-18 00:54:11.55622');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'r-mogi@keiyokogyo.co.jp', 0, '株式会社京葉興業', '作業部', '', '茂木　龍二', 0, '2015-04-18 00:54:14.581994');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'kobayashi.keiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '小林　敬一', 0, '2015-04-18 00:54:15.33471');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'higashi.shinya@toshiba-sol.co.jp', 0, '東芝ソリューション株式会社　府中エンジニアリングセンター', 'プラットフォームソリューション事業部　ハードウエア開発部', '', '東　請弥', 0, '2015-04-18 00:54:16.60271');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (225596, 'tajka.hasegawa@hino.co.jp', 0, '日野自動車株式会社', 'シャシ生技部　第2海外生技室', '', '長谷川　貴之', 0, '2015-04-18 00:54:21.215787');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sasakihi@tge.co.jp', 0, '東京ガスエンジニアリング株式会社', 'エンジニアリング本部', '', '佐々木　秀夫', 0, '2015-04-18 22:47:17.395869');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Ja1pro@jc5.so-net.ne.jp', 0, 'ソニー(株)', 'ＴＶ事業部', '', '池上　博一', 0, '2015-04-18 22:47:18.167117');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-ando@tanaka-iron-works.com', 0, '田中鉄工株式会社', '営業課', '', '安東　晃あき（あきは旧字）', 0, '2015-04-18 22:47:23.340793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'katsume@lion.co.jp', 0, 'LION', 'ファインケミカル事業所　生産技術課　技術チーム', '', '根本　勝幸', 0, '2015-04-18 22:47:27.72296');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yasuhiro.kawamura@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　機械部', '', '河村　泰博', 0, '2015-04-18 22:47:28.143847');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y.sashizawa@techcorporation.co.jp', 0, '株式会社テックコーポレーション', '企画部', '', '指澤　祐二', 0, '2015-04-18 22:47:28.745632');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'info@wwwb.jp', 0, 'WWB株式会社', '建設機械部', '', '松崎　徳一', 0, '2015-04-18 22:47:29.03323');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'iijima@keiai-grp.com', 0, '株式会社ケイアイ', '', '', '飯島　圭士', 0, '2015-04-18 22:47:29.705137');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'noriotakahashi@totetsu.jp', 0, '東鉄工業株式会社', '土木本部　', '', '髙橋　紀男', 0, '2015-04-18 22:47:29.949259');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Makoto.Takeuchi@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産課', '', '竹内　誠', 0, '2015-04-18 22:47:37.150235');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'bugland2@yahoo.co.jp', 0, '富士宮清掃有限会社', '', '', '穂坂　勝彦', 0, '2015-04-18 22:47:38.069888');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'moriaki-yuhara@melplant.co.jp', 0, '三菱電機冷熱プラント株式会社　東京支社', '都市システム部　産業冷熱課', '', '湯原　守昭', 0, '2015-04-18 22:47:38.694667');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-mino@asagiri-f.co.jp', 0, '有限会社朝霧牧場', '', '', '簑　威賴', 0, '2015-04-18 22:47:39.427148');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hiroyuki_1_nagata@kirin.co.jp', 0, 'キリンエンジニアリング株式会社', '環境安全推進部', '', '永田　弘之', 0, '2015-04-18 22:48:15.623354');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'koujin@mes.co.jp', 0, '三井造船株式会社', '九州支社', '', '荒神　琢磨', 0, '2015-04-18 22:48:15.927764');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'n-ikeno@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部営業技術課', '', '池野　奈津美', 0, '2015-04-18 22:48:16.3706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y_uchida@origin.jp', 0, 'オリジン電気株式會社', 'エコエコ推進室', '', '内田　裕二', 0, '2015-04-18 22:48:23.913898');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h-nagao@idex.co.jp', 0, '株式会社新出光', '技術商品課', '', '長尾　英昭', 0, '2015-04-18 22:48:29.095582');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'makino@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部　包装コンサルタント', '', '牧野　憲', 0, '2015-04-18 22:48:29.310394');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takasugi@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部', '', '高杉　和哉', 0, '2015-04-18 22:48:29.498267');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ooshiro@eutectic.co.jp', 0, '日本ユテク株式会社', '', '', '大城　永勝', 0, '2015-04-18 22:48:29.683835');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'info@eco-club.co.jp', 0, '株式会社北陸環境サービス', '', '', '木下　高廣', 0, '2015-04-18 22:48:29.878821');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shinji_sasaki@cosmo-oil.co.jp', 0, 'コスモ石油株式会社', '給油ビジネスユニット　千葉製油所　安全環境課', '', '佐々木　真司', 0, '2015-04-18 22:48:30.389451');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-kawaguchi@onishi-e.co.jp', 0, '大西電機工業株式会社', '営業統括部　第二営業課　東京営業所', '', '川口　高生', 0, '2015-04-18 22:48:30.604178');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tsujiih@osk-k.co.jp', 0, '大阪工機株式会社', '東京支社　第三営業部　東京営業2課', '', '辻井　久', 0, '2015-04-18 22:48:35.557332');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ryoji.takeuchi@toshiba.co.jp', 0, '株式会社東芝　コミュニティ・ソリューション社', '事業開発センター　総合エンジニアリング部', '', '竹内　亮二', 0, '2015-04-18 22:48:36.832176');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'horio_s@konishi-saiseki.co.jp', 0, '株式会社小西砕石工業所', '坂祝事業部', '', '堀尾　伸介', 0, '2015-04-18 22:48:37.270337');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'masashi_sanguu@tte-net.co.jp', 0, '高砂熱学工業株式会社　技術本部', '技術企画部　参与', '', '三宮　正至', 0, '2015-04-18 22:48:46.741875');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mariizumi@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '有泉　光人', 0, '2015-04-18 22:48:47.350763');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kawasakiha@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社', '', '', '川崎　晴夫', 0, '2015-04-18 22:48:47.634975');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'br-toiawase@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '福山　英昭', 0, '2015-04-18 22:48:47.824984');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'center@ne.catv.ne.jp', 0, '有限会社センターライン', '', '', '中条　大祐', 0, '2015-04-18 22:48:49.167119');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'fujioka0522@gmail.com', 0, 'em factory', '', '', '藤岡　まり', 0, '2015-04-18 22:48:54.524207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tomohiro.seji@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '清地　智宏', 0, '2015-04-18 22:49:01.222984');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tsumotsumo@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '津森　邦昭', 0, '2015-04-18 22:49:07.592887');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-sakuri@livretech.co.jp', 0, '株式会社リーブルテック', '製造本部　購買部　購買2課', '', '櫻井　和安', 0, '2015-04-18 22:49:08.457102');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm-miura@konari.com', 0, '株式会社小成', '事務機販売課', '', '三浦　正芳', 0, '2015-04-18 22:49:09.023268');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-shima@tomitaph.co.jp', 0, '富田製薬株式会社', '生産管理部　安全・環境管理課', '', '島　一夫', 0, '2015-04-18 22:49:09.785168');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y.ohtaki@paramount.co.jp', 0, 'パラマウントベッド株式会社', '総務部　安全衛生環境課', '', '大瀧　良則', 0, '2015-04-18 22:49:30.554393');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yamatogma@gmail.com', 0, '株式会社マックマシンツール', '廃棄物管理士', '', '大和　幸男', 0, '2015-04-18 22:49:37.795789');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yamauchi.yuuki@subaru-fhi.co.jp', 0, '富士重工業株式会社', '産業機器カンパニーマーケティング部', '', '山内　雄樹', 0, '2015-04-18 22:49:48.337095');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-syooza@takuma.co.jp', 0, '株式会社タクマ', '環境本部　調達部　東京調達課', '', '庄崎　敏考', 0, '2015-04-18 22:49:48.572118');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'edasaki.r@hn.cik.co.jp', 0, 'シーアイ化成株式会社', '環境管理室', '', '枝崎　隆一', 0, '2015-04-18 22:49:49.177254');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h.ooyagi@ccs-gr.co.jp', 0, '株式会社クリーンコントロールサービス', '', '', '大八木　博之', 0, '2015-04-18 22:49:49.620933');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'furukawashinkou-kouji@abox3.so-net.ne.jp', 0, '有限会社古川新興', '', '', '古川　幸司', 0, '2015-04-18 22:49:50.647902');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tetm-morita@nts.ricoh.co.jp', 0, '株式会社リコー', '環境推進本部推進室', '', '森田　哲郎', 0, '2015-04-18 22:49:52.157052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h-abe@takatoshi.co.jp', 0, '高俊興業株式会社', '執行役員　法務事業本部副本部長　兼　再資源化推進部長', '', '阿部　秀行', 0, '2015-04-18 22:49:52.563992');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mztadmin@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　総務部システム開発課', '', '緒方　元', 0, '2015-04-18 22:49:53.228042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sugiyama-yoshimasa@meti.go.jp', 0, '経済産業省', '関東経済産業局　資源エネルギー環境部　資源エネルギー環境課', '', '杉山　佳正', 0, '2015-04-18 22:49:54.511427');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'funanami.kenta@ad-hzm.co.jp', 0, '株式会社安藤・間', '建築事業本部　事業本部　積算センター　構造グループ', '', '舩浪　健太', 0, '2015-04-18 22:50:00.995515');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Kazumi.Mogi@showa-shell.co.jp', 0, '昭和シェル石油株式会社', '石油事業部　首都圏支店　潤滑油販売課', '', '茂木　和美', 0, '2015-04-18 22:50:08.44924');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'e-mashiba@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'リサイクルエンジニアリング部　東京技術工事課', '', '間柴　栄輝', 0, '2015-04-18 22:50:08.868614');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'masanori_atarashi@tte-net.co.jp', 0, '高砂熱学工業株式会社', '営業本部', '', '新　真則', 0, '2015-04-18 22:50:15.193887');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-kitagawa@nissan-nics.co.jp', 0, '株式会社日産クリエイティブサービス', 'NICS購買センター', '', '喜多川　計幸', 0, '2015-04-18 22:50:21.364034');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-saito@toshiba-teli.co.jp', 0, '東芝テリー株式会社', '営業部　第1営業担当', '', '斉藤　清', 0, '2015-04-18 22:50:22.73538');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takeshi.hattori@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '服部　武', 0, '2015-04-18 22:50:35.55113');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'n-wada@kondotec.co.jp', 0, 'コンドーテック株式会社', '海外営業部', '', '和田　倫嘉', 0, '2015-04-18 22:50:36.071325');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, '5203302@shinryo-gr.com', 0, '株式会社新菱', 'リサイクル・ファイン事業部門　資源環境部', '', '有田　宏之', 0, '2015-04-18 22:50:36.35036');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'a.sato@ryokikogyo.co.jp', 0, '菱機工業株式会社', '工事課', '', '佐藤　明俊', 0, '2015-04-18 22:50:36.790445');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tf@tokyofood.jp', 0, '東京フード株式会社', '営業部', '', '小林　信夫', 0, '2015-04-18 22:50:37.016279');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'smatsui@ce.taisei.co.jp', 0, '大成建設株式会社', '土木本部　土木技術部　インフラ・海洋技術室', '', '松井　俊二', 0, '2015-04-18 22:50:37.84538');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-jin@takatoshi.co.jp', 0, '高俊興業株式会社', '再資源化推進部', '', '神　司', 0, '2015-04-18 22:50:38.1606');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sasaki@nakashiki.com', 0, '株式会社オーレックス', '', '', '佐々木　健治', 0, '2015-04-18 22:50:38.57519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kouji-iwase@city.edogawa.tokyo.jp', 0, '江戸川区環境推進課', '', '', '岩瀬　耕二', 0, '2015-04-18 22:50:39.003255');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-suzuki@pgf-japan.com', 0, 'ピーコックエレメント製造株式会社', '開発事業部', '', '鈴木　慎二', 0, '2015-04-18 22:50:47.538367');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'f-komatsu@hamanetsu.co.jp', 0, '株式会社ハマネツ　東京オフィス', '東日本営業部　特販グループ', '', '小松　文裕', 0, '2015-04-18 22:50:52.713168');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'horikawa@ksg-group.co.jp', 0, '株式会社ジャパンリコロジー', '', '', '堀川　豊彦', 0, '2015-04-18 22:50:52.908177');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takashi-matsuura@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境ソリューション事業本部', '', '松浦　高士', 0, '2015-04-18 22:50:53.174203');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tsubasa-sugawara@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境施設事業本部　第１整備部１課', '', '菅原　翼', 0, '2015-04-18 22:50:53.457692');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tetsuo-n@kubota.co.jp', 0, '株式会社クボタ', '電装機器営業部　大阪計量システム課', '', '西　哲朗', 0, '2015-04-18 22:50:56.005082');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tomoyasu.shimao@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '島尾　知保', 0, '2015-04-18 22:50:56.777948');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'saito@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '斎藤　恒成', 0, '2015-04-18 22:50:57.321057');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'denki@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　電気設計部', '', '福田　一之', 0, '2015-04-18 22:50:57.950067');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takeshi.ueno@kubota.com', 0, '株式会社クボタ', 'パイプシステム事業部　パルプ技術部　技術第二グループ', '', '上野　岳志', 0, '2015-04-18 22:51:04.481573');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tomohisa_t@kyodohdoboku.co.jp', 0, '株式会社共同土木東京工場', '業務統括部　環境開発課', '', '高梨　智久', 0, '2015-04-18 22:51:05.11163');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm-kikuchi@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '菊地　正人', 0, '2015-04-18 22:51:06.03939');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kiyoshi_s@yoshimura-inc.co.jp', 0, '株式会社ヨシムラ', '統括管理部', '', '鈴木　潔', 0, '2015-04-18 22:51:06.260957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ariki@nextenergy.jp', 0, 'ネクストエナジー・アンド・リソース株式会社', '', '', '有木　正浩', 0, '2015-04-18 22:51:12.300953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'd.suzuki@paper-recycle.jp', 0, 'エコフィスジャパン株式会社', '', '', '鈴木　大二郎', 0, '2015-04-18 22:51:12.863087');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y-nakazato@ac.daido.co.jp', 0, '大同特殊鋼株式会社', '渋川工場　環境室', '', '中里　康弘', 0, '2015-04-18 22:51:13.261255');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kazuto.anata@jp.com', 0, 'ソニーストレージメディア・アンド・デバイス株式会社', '総務部　安全環境防災課', '', '英　和人', 0, '2015-04-18 22:51:17.790028');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hidekuni.taoka@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部機械部', '', '田岡秀邦', 0, '2015-04-18 22:51:18.13551');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shin.kenei@subaru-fhi.co.jp', 0, '富士重工業株式会社', 'スバル製造本部　群馬製作所　生産技術研究部　SIグループ主査', '', '沈　建栄', 0, '2015-04-18 22:51:23.47046');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'akiba@cowell.co.jp', 0, '株式会社コーウェル', 'ＬＥＤソリューション　第一営業部', '', '秋葉　義之', 0, '2015-04-18 22:51:23.890366');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'atsushikawamoto@kubota.com', 0, '株式会社クボタ', '本機製造部 本機製造第二課', '', '川本　篤志', 0, '2015-04-18 22:51:44.514368');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nanohanaminoh@gmail.com', 0, '菜の花プロジェクトみのお', '', '', '小林　武士', 0, '2015-04-18 22:51:49.573495');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'masashi-okumura@cdg.co.jp', 0, '株式会社ＣＤＧ東京本社', '営業本部　東京営業2部　営業７課', '', '奥村　昌史', 0, '2015-04-18 22:51:55.367794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakamura@kirintechno.co.jp', 0, 'キリンテクノシステム株式会社', '技術開発部　開発１課', '', '中村　裕宗', 0, '2015-04-18 22:52:01.920048');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'araki-h@toso.co.jp', 0, 'トーソー株式会社', '管理室総務課', '', '新木　浩之', 0, '2015-04-18 22:52:02.155486');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't.takenouchi@niihama.co.jp', 0, '株式会社新居鉄工所（鉄は旧字体）', '破砕機事業部　設計課', '', '竹之内　智行', 0, '2015-04-18 22:52:02.767273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'susuga@futami.net', 0, '株式会社二見', '製紙原料古紙直納問屋　産廃・一廃中間処理施設　営業部', '', '煤賀　正人', 0, '2015-04-18 22:52:23.327314');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hi-ishikawa@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '石川　博将', 0, '2015-04-18 22:52:23.673784');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-nagai@tyo.kubota.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '長井　克幸', 0, '2015-04-18 22:52:26.102942');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kuroe.soichi@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '', '', '黒江　宗一', 0, '2015-04-18 22:52:26.639736');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'isao_kimura@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不戦不営業部営業第一グループ', '', '木村　功', 0, '2015-04-18 22:52:33.107641');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'keiichirou.kimura@okumuragumi.jp', 0, '株式会社奥村組', '環境技術部　リニューアル課　', '', '木村　哲一郎', 0, '2015-04-18 22:52:34.29245');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'oono@trustlight.jp', 0, 'エコ・トラスト・ジャパン株式会社', '営業本部　第一営業課　営業１係', '', '大野　翔平', 0, '2015-04-18 22:52:34.695979');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sekiguchi@garbage.co.jp', 0, '新潟ガービッヂ株式会社', '営業部', '', '関口　司忠', 0, '2015-04-18 22:52:34.890998');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakao.shunji@obayashi.co.jp', 0, '株式会社大林組', '技術本部　環境ソリューション部　スマートシティ推進課', '', '中尾　俊二', 0, '2015-04-18 22:52:41.091937');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'chuji.minami@jp.toto.com', 0, 'TOTO株式会社　', '茅ヶ崎工場　安全環境グループ', '', '皆見　忠慈', 0, '2015-04-18 22:52:48.313752');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yoshikazu.sato@kubota.com', 0, '株式会社クボタ', '電装機器事業部NPW-PT', '', '佐藤　嘉一', 0, '2015-04-18 22:52:53.989402');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'iida-satoru@motec-co.jp', 0, '株式会社エムオーテック', '営業第二部　営業第四課', '', '飯田　悟', 0, '2015-04-18 22:53:05.922325');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'honda-seiji@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　', '', '本田　誠司', 0, '2015-04-18 22:53:17.483874');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm.nakasima@seisou-center.co.jp', 0, '株式会社清掃センター', '', '', '中嶋　満', 0, '2015-04-18 22:53:24.280339');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shinya.tanaka@exc.tokai-rika.co.jp', 0, '株式会社東海理化', '生産技術センター施設環境部環境管理室', '', '田中　真也', 0, '2015-04-18 22:53:24.637022');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shiono@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部', '', '塩野　正春', 0, '2015-04-18 22:53:24.817696');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shimura@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部設計課', '', '志村　真', 0, '2015-04-18 22:53:24.984005');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'enoken-k@cy.tnc.ne.jp', 0, '有限会社エノケン工業', '', '', '榎田　英明', 0, '2015-04-18 22:53:25.794775');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tg-osada@tokyo-gas.co.jp', 0, '東京ガス株式会社', '神奈川西支店　地域広報グループ　広聴広報担当', '', '長田　猛', 0, '2015-04-18 22:53:26.101184');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ta.kurisaki@hino.co.jp', 0, '日野自動車株式会社', '車両実験部　総括室　', '', '栗崎　忠', 0, '2015-04-18 22:53:26.666082');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h_araki@muc.co.jp', 0, '株式会社　東京ミュー精器', '計量器コンサルタント営業技術部', '', '荒木　宏長', 0, '2015-04-18 22:53:29.867491');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'masaaki.takeshita@toshiba.co.jp', 0, '株式会社東芝　社会インフラシステム社', '浜川崎工場　生産技術部生産技術・環境担当', '', '竹下　政明', 0, '2015-04-18 22:53:31.129974');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tkohara@rubycon.co.jp', 0, 'ルビコン株式会社', '経営管理部', '', '小原　剛', 0, '2015-04-18 22:53:31.754563');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ttaniguc@bbs.co.jp', 0, '株式会社ビジネスブレイン太田昭和', 'ソリューション１部', '', '谷口　努', 0, '2015-04-18 22:53:38.420125');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm-nagashima@withwaste.jp', 0, '株式会社ウィズ　ウェイト　ジャパン', '東関東リサイクルパーク　茨城事業所', '', '永島　誠', 0, '2015-04-18 22:53:38.722434');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Akira_Toyoda@covalent.co.jp', 0, 'コバレントマテリアル株式会社', 'セラミック事業部', '', '豊田　明', 0, '2015-04-18 22:53:45.081311');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tomohiko.muto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '武藤　智彦', 0, '2015-04-18 22:54:23.803449');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kawakami@gomi39.co.jp', 0, '株式会社　三久', '', '', '川上　英男', 0, '2015-04-18 22:54:24.228154');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kenji.yamaguchi@sumitomocorp.co.jp', 0, '住友商事株式会社', '非鉄金属事業部　事業投資チーム　', '', '山口　健二', 0, '2015-04-18 22:54:24.468108');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Kazumasa_Ohashi@suntory.co.jp', 0, 'サントリービジネスエキスパート株式会社', 'R&Dサポートセンター　', '', '大橋　一雅', 0, '2015-04-18 22:54:24.685694');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tokyo@kdk-net.co.jp', 0, '國際電測興業株式会社', '東京営業所', '', '中島　博幸', 0, '2015-04-18 22:54:27.862888');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'okamoto@tokushakogyo.co.jp', 0, '株式会社特車工業', '製造部', '', '岡本　朝道', 0, '2015-04-18 22:54:28.56232');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'eigyo-03@keihin-group.co.jp', 0, '日栄産業株式会社', '', '', '亀谷　達哉', 0, '2015-04-18 22:54:29.307908');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tatsuhiro_fuse@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '布施　達弘', 0, '2015-04-18 22:54:30.106152');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takaharu.matsuoka@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部プロセス技術部', '', '松岡　隆晴', 0, '2015-04-18 22:54:30.73543');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'taguchi@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '田口　太桂英', 0, '2015-04-18 22:54:42.751721');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nishi@studiocovo.com', 0, '特定非営利活動法人グリーンネットワーク', '', '', '西　正徳', 0, '2015-04-18 22:54:43.24793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hayakawa@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '早川　昇', 0, '2015-04-18 22:54:49.22874');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'maru3@gray.plala.or.jp', 0, '株式会社丸三興業', '営業部', '', '亀田　英男', 0, '2015-04-18 22:54:49.751254');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tamami.fujioka@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'Ｇ営業本部産業資材営業本部東京支店', '', '藤岡　珠未', 0, '2015-04-18 22:54:50.936228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakahyo1@yokohama-marunaka.co.jp', 0, '横浜市場センター株式会社', '', '', '中堀　督勇', 0, '2015-04-18 22:54:51.881085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takasaki-shuhei@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第二部　営業第四課', '', '高崎　脩平', 0, '2015-04-18 22:55:03.456519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tamagawa-tatsunori@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部', '', '玉川　辰典', 0, '2015-04-18 22:55:15.031666');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yshimada@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '島田　雄二', 0, '2015-04-18 22:55:16.912431');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't.nogi.id@azbil.com', 0, 'アズビル株式会社', 'サービス本部　東京サービス部　東京サービス2グループ', '', '野木　毅', 0, '2015-04-18 22:55:26.475269');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ko-baba@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門海外事業部', '', '馬場　恒次', 0, '2015-04-18 22:55:27.196837');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yu-sugisaki@tokyoink.co.jp', 0, '東京インキ株式会社', '', '', '杉崎　幸利', 0, '2015-04-18 22:55:27.812106');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'motome@mail.seikitokyu.co.jp', 0, 'エス・ティ・サービス　株式会社', '', '', '求　輝芳', 0, '2015-04-18 22:55:29.214205');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm.nagashima@nipponham.co.jp', 0, '日本ハム設計　株式会社', '工事部', '', '長島　光昭', 0, '2015-04-18 22:59:00.247013');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ebityan1225@gmail.com', 0, '東京農業大学', '', '', '海老原　佑', 0, '2015-04-18 22:59:07.066967');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mitsuru-create@mx6.nns.ne.jp', 0, '株式会社クリエート', '', '', '望月　満', 0, '2015-04-18 22:59:07.60089');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'r-takatori@tanaka-iron-works.com', 0, '田中鉄工株式会社', 'セールスエンジニア', '', '高取　竜樹', 0, '2015-04-18 22:59:11.305337');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mfukui@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社  企画業務グループ', '', '福井　美月', 0, '2015-04-18 22:59:17.161085');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takeno_yuki@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '竹野　勇輝', 0, '2015-04-18 22:59:21.690926');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y.nakamura@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', 'リース事業部', '', '中村　康昭', 0, '2015-04-18 22:59:21.983694');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hokutaku@hi-net.ne.jp', 0, '有限会社　北拓ビル管理', '', '', '下館　光一郎', 0, '2015-04-18 22:59:22.744069');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nagaso@mmc.co.jp', 0, '三菱マテリアテクノ株式会社', '資源・環境・エネルギー事業部　環境計量部　環境技術センター', '', '永草　康彦', 0, '2015-04-18 22:59:23.413935');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'stanaka@bmbio.co.jp', 0, 'ビーエム機器株式会社', '　', '', '田中　知　', 0, '2015-04-18 22:59:30.835541');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'horry-potter@kve.biglobe.ne.jp', 0, 'カンセイ株式会社', '　', '', '堀端　久江', 0, '2015-04-18 22:59:36.017788');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'fabe@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '分析センター', '', '阿部　大', 0, '2015-04-18 22:59:36.810468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't-isomiti@nangoku-group.com', 0, '南国殖産株式会社', '建設産業機械課　霧島出張所', '', '礒道　達士', 0, '2015-04-18 22:59:37.661276');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mino.koki@ad-hzm.co.jp', 0, '株式会社安藤・間', '関東土木支店　土木部　大橋出張所　第３工事課', '', '美濃　光輝', 0, '2015-04-18 22:59:43.751453');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kimihiko_kubozuka@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ', '', '窪塚　公彦', 0, '2015-04-18 22:59:50.081207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 're-takayama.shouten@dg7.so-net.ne.jp', 0, '有限会社高山商店', '', '', '高山　聡', 0, '2015-04-18 22:59:50.94191');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kobayasi@aokikankyo.com', 0, '青木環境事業株式会社', '営業部', '', '小林　洋一', 0, '2015-04-18 22:59:51.767523');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ohmae_yusuke@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '関東支社　千葉北支店　成田営業所', '', '大前　雄介', 0, '2015-04-18 22:59:56.831657');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'naoki.asakawa@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '浅川　直貴', 0, '2015-04-18 23:00:03.101092');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'noriyuki.kondo@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '近藤　紀行', 0, '2015-04-18 23:00:08.321986');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'matsumoto@ebisukikou.co.jp', 0, '恵比寿機工株式会社', '', '', '松本　俊之', 0, '2015-04-18 23:00:09.82554');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yoshida.k@rentac.jp', 0, '株式会社レンタック', '', '', '吉田　和広', 0, '2015-04-18 23:00:10.348233');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'info@maruyou.com', 0, '丸友開発株式会社', '', '', '谷田　康雄', 0, '2015-04-18 23:00:10.690827');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'koshiba@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '技術本部　技術研究所', '', '小柴　朋広', 0, '2015-04-18 23:00:13.169957');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'katsunori.motohashi@scigineer.co.jp', 0, 'サイジニア株式会社', '営業部', '', '本橋　且規', 0, '2015-04-18 23:00:13.385184');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'suzuki_takayuki@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '販売事業部　営業管理部　商事課', '', '鈴木　敬之', 0, '2015-04-18 23:00:17.922042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yseida@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '清田　侑紀', 0, '2015-04-18 23:00:18.858868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'da.yamada@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '山田　大輔', 0, '2015-04-18 23:00:25.273549');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h.yoshida@ydec.co.jp', 0, '株式会社ヨシカワ', '営業課', '', '吉田　玄', 0, '2015-04-18 23:00:31.522975');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tatsuya.ogura@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '小倉　辰也', 0, '2015-04-18 23:00:43.555675');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yu.yamada@omltd.co.jp', 0, '株式会社オーエム製作所', '宍道開発室', '', '山田　裕治', 0, '2015-04-18 23:00:44.116834');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'c-takano@yagashiro-ls.co.jp', 0, '株式会社八ケ代造園', '', '', '高野　智良', 0, '2015-04-18 23:00:44.423117');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'uchida@cc.kogakuin.ac.jp', 0, '工学院大学', '工学部　環境エネルギー化学科', '', '内田　雅樹', 0, '2015-04-18 23:00:45.824479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y.wakida@east.ntt.co.jp', 0, 'NTT東日本', 'ネットワークソリューション部　営業支援担当', '', '脇田　祐司', 0, '2015-04-18 23:00:46.428506');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kojimam@sc.sumitomo-chem.co.jp', 0, '住友化学株式会社', '大分工場　レスポンシブルケア部', '', '小島　美津代', 0, '2015-04-18 23:00:46.989433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'osamu.amano@toda.co.jp', 0, '戸田建設株式会社', '建築設計統轄部　設備設計部', '', '天野　修', 0, '2015-04-18 23:00:58.238979');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kgontou@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '権頭　克則', 0, '2015-04-18 23:00:59.009174');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'smiyagawa@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '東関東支社　技術営業グループ', '', '宮川　進矢', 0, '2015-04-18 23:01:00.16608');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'miyazaki-chemical@hotmail.co.jp', 0, 'ミヤザキ株式会社', '第二営業部', '', '宮崎　義大', 0, '2015-04-18 23:01:03.160761');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Yoshikazu_Tsuchiya@member.metro.tokyo.jp', 0, '東京都', '下水道局　施設管理部　施設管理課　', '', '土屋　義和', 0, '2015-04-18 23:01:04.138574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'fukuoka.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '', '', '福岳　雄一郎', 0, '2015-04-18 23:01:04.427418');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kokojima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　土壌環境グループ', '', '小島　幸司', 0, '2015-04-18 23:01:05.032222');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tmuraguchi@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　', '', '村口　貴紀', 0, '2015-04-18 23:01:05.849611');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tkurasawa@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　技術営業部', '', '倉澤　卓也', 0, '2015-04-18 23:01:12.595344');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'n-naitou@co-jsp.co.jp', 0, '株式会社　JSP', '新事業開発室　新技術開発部', '', '内藤　直記', 0, '2015-04-18 23:01:18.980949');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kimihiro.morishita@keisei-const.co.jp', 0, '京成建設株式会社', '営業本部　第二営業部', '', '森下　公博', 0, '2015-04-18 23:01:19.365326');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm-toshi@jrfreight.co.jp', 0, 'JR貨物', '関東支社　営業部　首都圏営業開発グループ', '', '宮下　俊彦', 0, '2015-04-18 23:01:19.722518');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kankyo-shisetsu@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　環境施設課', '', '酒巻　紳一郎', 0, '2015-04-18 23:01:20.459064');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'a.jinbo@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', '中部支社', '', '神保　明彦', 0, '2015-04-18 23:01:20.659338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm_horiike@sanwakensho.co.jp', 0, '三和建商株式会社', '', '', '堀池　通浩', 0, '2015-04-18 23:01:38.560334');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h-kimura@wesco.co.jp', 0, '株式会社ウエスコ', '環境設計部　環境設計課', '', '木村　浩和', 0, '2015-04-18 23:01:39.652496');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'howard@proten.com.tw', 0, '伯登有限公司', '', '', '黄　明章', 0, '2015-04-18 23:01:41.615254');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-okazaki@tohoku-kigyo.co.jp', 0, '東北企業株式会社', '第四営業部', '', '岡崎　啓一', 0, '2015-04-18 23:01:43.134987');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'oyabu.yamato@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '大薮　大和', 0, '2015-04-18 23:01:43.5635');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'inoue.takashi1@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '井上　崇', 0, '2015-04-18 23:01:44.0228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kiyoshi@kakutani.co.jp', 0, '角谷木材建設株式会社', '', '', '角谷　喜代志', 0, '2015-04-18 23:01:47.394081');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sugie@ishizuka.co.jp', 0, '石塚硝子株式会社', '技術本部', '', '椙江　弘樹', 0, '2015-04-18 23:01:57.599907');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yanaura@omtecinc.co.jp', 0, '株式会社オムテック', '', '', '柳浦　公二郎', 0, '2015-04-18 23:02:13.338916');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tadahiko_miyoshi@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布製造所', '', '三好　正彦', 0, '2015-04-18 23:02:19.974982');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-takamura@aqua.plala.or.jp', 0, 'アクア創研有限会社', '', '', '高村　晋', 0, '2015-04-18 23:02:55.850193');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kishimoto.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '営業部', '', '岸本　裕司', 0, '2015-04-18 23:02:58.292318');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'honma.yutaka@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '土木事業部　技術企画部', '', '本間　豊', 0, '2015-04-18 23:02:58.743404');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tatsuhiko-maeda@mes.co.jp', 0, '三井造船株式会社', 'エンジニアリング事業本部　プロジェクト部　環境エネルギーグループ', '', '前田　達彦', 0, '2015-04-18 23:02:59.075234');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hayafuji.eiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '安全環境部　環境グループ', '', '早藤　英一', 0, '2015-04-18 23:02:59.427269');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hirakawa@apower-now.net', 0, 'あじあ行政書士法人', '', '', '平川　雅夫', 0, '2015-04-18 23:02:59.911029');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yacokada@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　固化材グループ　', '', '岡田　八千代', 0, '2015-04-18 23:03:10.914605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tanaka.makoto@ebara.com', 0, '株式会社荏原製作所', '社会システム計画・開発統括部　事業推進室', '', '田中　誠', 0, '2015-04-18 23:03:13.118267');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'uno@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '東京営業所', '', '宇野　敏志', 0, '2015-04-18 23:03:14.025358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's.uchida@mys.co.jp', 0, '三好環境株式会社', '営業一部', '', '内田　成昭', 0, '2015-04-18 23:03:14.3508');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tadashi.tsunematsu@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術研究所　第一研究室', '', '常松　直志', 0, '2015-04-18 23:03:28.376671');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm-miyagi@ohmiyakouki.com', 0, '有限会社大宮工機', '', '', '宮城　光秀', 0, '2015-04-18 23:03:33.407671');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kidoy@jikco.co.jp', 0, '株式会社ジコー', '管理本部', '', '城戸　良重', 0, '2015-04-18 23:03:47.627937');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hiroshi-abe@obayashi-road.co.jp', 0, '大林道路株式会社', '本店　プラントシステム営業部', '', '阿部　浩', 0, '2015-04-18 23:04:23.708349');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'info@hakuei-kaitai.com', 0, '株式会社珀栄', '', '', '花房　伸', 0, '2015-04-18 23:04:24.522939');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tokyo@kamacho.co.jp', 0, '鎌長製衡株式会社', '営業本部　東京支店　営業1グループ', '', '山田　悠太郎', 0, '2015-04-18 23:04:34.859807');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'niwa@szken.co.jp', 0, '株式会社鈴鍵', '', '', '丹羽　庸介', 0, '2015-04-18 23:04:36.214923');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'okumoto.kohei@kobelco.com', 0, 'コベルコ建機株式会社', '直轄営業部　営業グループ', '', '奥本　昂平', 0, '2015-04-18 23:05:27.546482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mizuno.masamichi@kobelco.com', 0, '東日本コベルコ建機株式会社', '南関東支社　横浜営業所', '', '水野　真理', 0, '2015-04-18 23:05:27.97136');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nobuaki_s@kyodohdoboku.co.jp', 0, '株式会社共同土木　千葉工場', '業務統括部　', '', '佐々木　伸明', 0, '2015-04-18 23:05:28.780732');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'masahide_ohmiya@cosmo-sales.co.jp', 0, 'コスモリフォーム株式会社', '', '', '大宮　正秀', 0, '2015-04-18 23:05:31.342945');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'wakita@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '脇田　真治', 0, '2015-04-18 23:05:32.413791');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'office@yamashita-shoten.com', 0, '有限会社山下商店', '', '', '山下　唱徳', 0, '2015-04-18 23:05:32.647986');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'minoru@kitajimashibori.co.jp', 0, '株式会社北嶋絞製作所', '', '', '北嶋　實', 0, '2015-04-18 23:05:33.087209');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'earth.toumi@gmail.com', 0, 'アース・グループ株式会社', '東京営業課', '', '田海　浩之', 0, '2015-04-18 23:05:40.039518');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ryota.mori@yoshimine.co.jp', 0, '株式会社よしみね', '総務部', '', '森　諒太', 0, '2015-04-18 23:05:41.480646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kasuya.hideo@tokyu-cnst.co.jp', 0, '東急建設株式会社', '営業本部　鉄道営業統括部', '', '粕谷　英夫', 0, '2015-04-18 23:05:41.800785');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takenaka-tetsuji@motec-co.jp', 0, '株式会社エムオーテック　大阪支店', '営業部', '', '竹中　哲治', 0, '2015-04-18 23:05:53.333169');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-hashizume@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '水処理営業部　技術第一課', '', '橋爪　祥世', 0, '2015-04-18 23:05:56.227496');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shouichirou.higuchi@toda.co.jp', 0, '戸田建設株式会社', '価値創造推進部　開発センター', '', '樋口　正一郎', 0, '2015-04-18 23:06:12.539604');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kuboniwa-makoto@ise-egg.co.jp', 0, '有限会社つくばファーム', '', '', '久保庭　真', 0, '2015-04-18 23:10:33.357026');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'h.nikaidou@garnet.dti.ne.jp', 0, '二階堂労働安全コンサルタント事務所', '', '', '二階堂　久', 0, '2015-04-18 23:10:33.727318');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kazuma.enomoto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '榎本　一馬', 0, '2015-04-18 23:11:33.355509');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hayashi@nishikawa-rose.co.jp', 0, '西川ローズ株式会社', '', '', '林　三吉', 0, '2015-04-18 23:11:39.220492');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'wxmxy880@yahoo.co.jp', 0, 'エムストラスト株式会社', '', '', '鈴木　保弘', 0, '2015-04-18 23:11:40.281509');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'imai-hanako@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '今井　華子', 0, '2015-04-18 23:11:56.063177');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ikenaga-yuto@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '池永　優人', 0, '2015-04-18 23:12:07.782647');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nishimura-takuma@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '西村　卓馬', 0, '2015-04-18 23:12:19.360613');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'seijirou_yukawa@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '湯川　誠二郎', 0, '2015-04-18 23:16:44.350273');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'quality_section@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術　品質管理部', '', '本田　泰章', 0, '2015-04-18 23:17:08.607791');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ikedaT@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術・品質管理課', '', '池田　隆司', 0, '2015-04-18 23:17:12.041035');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yoshimura.ryoko@lab.ntt.co.jp', 0, '日本電信電話株式会社　NTTフォトニクス研究所', 'フォトニクスデバイス研究部', '', '吉村　了行', 0, '2015-04-18 23:17:12.49554');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kosuke.kitagishi@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '北岸　広祐', 0, '2015-04-18 23:17:15.68661');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-muta@tokushakogyo.co.jp', 0, '株式会社特車工業', '', '', '牟田　繁生', 0, '2015-04-18 23:17:16.267986');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k-ohata@skk.jp', 0, '三建設備工業株式会社', '営業本部　ソリューション部　', '', '大端　健治', 0, '2015-04-18 23:17:18.428408');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'oda.tomohiro@obayashi.co.jp', 0, '株式会社大林組', '技術本部　技術研究所　環境技術研究部', '', '小田　智弘', 0, '2015-04-18 23:17:29.437629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hk@kikuchikasei.co.jp', 0, '株式会社菊池化成', '', '', '菊池　真悟', 0, '2015-04-18 23:17:35.7428');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tmnakagawa@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '中川　知子', 0, '2015-04-18 23:17:40.582362');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'akitou@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '伊藤　顕人', 0, '2015-04-18 23:17:46.437485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hgonoi@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '五ノ井　裕之', 0, '2015-04-18 23:17:50.813227');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'osamu-ohashi@obayashi-road.co.jp', 0, '大林道路株式会社', '総合評価対策室', '', '大橋　紀', 0, '2015-04-18 23:17:57.233303');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'takaoka.t@ohno-associates.jp', 0, 'オオノ開發株式会社', '開発室', '', '高岡　敏雄', 0, '2015-04-18 23:17:57.993374');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'watanabe-yuko@city.anjo.lg.jp', 0, '安城市', '環境部環境首都推進課　', '', '渡辺　裕子', 0, '2015-04-18 23:17:58.793792');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nagaoka@ym.n-c-c.co.jp', 0, '株式会社日本コンピュータコンサルタント', '企画室　営業企画', '', '長岡　永典', 0, '2015-04-18 23:17:59.326385');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tsujibayashi.masato@toshiba-tpsc.co.jp', 0, '東芝プラントシステム株式会社', '技術企画・開発部　', '', '辻林　正人', 0, '2015-04-18 23:18:00.91938');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shimada.masayoshi@canon-ecology.co.jp', 0, 'キヤノンエコロジーインダストリー株式会社', '生産統括センター　技術部　生産技術課', '', '島田　真由', 0, '2015-04-18 23:18:02.030862');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yo-ino@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門　営業統括部', '', '井野　嘉紀', 0, '2015-04-18 23:18:02.629084');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'sano.koki@ebara.com', 0, '株式会社荏原製作所', '', '', '佐野　貴紀', 0, '2015-04-18 23:18:03.37442');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'a.momoi.zh@azbil.com', 0, 'アズビル株式会社', '東京営業所　2グループ', '', '百井　章文', 0, '2015-04-18 23:18:03.658354');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'inagakikz@sekisuijushi.co.jp', 0, '積水樹脂株式会社', '評価・環境管理部　安全・品質・環境グループ', '', '稲垣　和美', 0, '2015-04-18 23:18:04.099927');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yonemoto-shinji@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　工事部', '', '米元　真治', 0, '2015-04-18 23:19:35.568242');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-18 23:19:41.17764');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-18 23:20:39.917762');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kimura-makoto@msc.mitsuba-gr.com', 0, '株式会社ミツバサンコーワ', 'KS事業推進室', '', '木村　実', 0, '2015-04-18 23:20:46.192006');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kameyama.teruhiko@yellow.plala.or.jp', 0, '株式会社亀山', '', '', '亀山　照彦', 0, '2015-04-18 23:20:46.679349');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'm_ohsumi@chemico.co.jp', 0, '小野田ケミコ株式会社', '営業本部　地盤環境部', '', '大住　学', 0, '2015-04-18 23:21:08.621392');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-takamizawa@toriik.co.jp', 0, '鳥居化成株式会社', '技術部', '', '高見沢　栄幸', 0, '2015-04-18 23:21:08.961395');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-18 23:21:23.673313');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kaji@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '事業推進本部　製品事業部', '', '鍛冶　秀充', 0, '2015-04-18 23:21:24.92732');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nobuhito.okamoto@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術部', '', '岡本　信人', 0, '2015-04-18 23:21:25.691443');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'katsu@hitachizosen.co.jp', 0, '日立造船', '環境・プラント・エネルギー部', '', '勝　駿宇', 0, '2015-04-18 23:21:26.701393');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-18 23:21:32.916917');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-18 23:21:40.201863');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ynqyuki@mmc.co.jp', 0, '三菱マテリアル株式会社　電子材料事業カンパニー', '化成営業部　フッ素グループ', '', '名雪　靖志', 0, '2015-04-18 23:21:41.461819');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mi-koiwai@kakuto.co.jp', 0, '株式会社　角藤', '土木・基礎工事部　工事課', '', '小岩井　充', 0, '2015-04-18 23:22:10.671336');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'harada@ohkita-recycle.co.jp', 0, '株式会社大北リサイクル', '', '', '原田　佳角', 0, '2015-04-18 23:22:11.48959');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-18 23:22:16.968512');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hnamura@rle.ricoh.co.jp', 0, 'リコーリース株式会社　首都圏支社', '東京営業一課', '', '南村　仁司', 0, '2015-04-18 23:22:32.728046');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hidenori_yoshida@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京開発営業部　測定器営業第1チーム', '', '吉田　秀典', 0, '2015-04-18 23:22:33.695275');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y-egawa@aitech.co.jp', 0, '株式会社アイテク', '設備事業部　営業部', '', '恵川　幸男', 0, '2015-04-18 23:22:35.036209');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-18 23:23:55.388299');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mori@tso-int.co.jp', 0, 'TSO International 株式会社', '', '', '森　育三', 0, '2015-04-18 23:23:55.803868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakamura-s@sc-cement.co.jp', 0, '住商セメント株式会社', '', '', '中村　哲', 0, '2015-04-18 23:23:59.750846');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-18 23:24:00.911466');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shirai16@khaki.plala.or.jp', 0, '', '', '', '白井　孝夫', 0, '2015-04-18 23:24:01.330917');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kubo-y@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '久保　好則', 0, '2015-04-18 23:24:02.654729');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'katsuyuki_yamamori@scm.shi.co.jp', 0, '住友建機販売株式会社', '中部統括部　東濃営業所', '', '山森　勝之', 0, '2015-04-18 23:24:20.18711');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'fujimura.hiroaki@daiwaroyal.jp', 0, 'ダイワロイヤル株式会社', '管理本部　人事総務部', '', '藤村　浩彰', 0, '2015-04-18 23:24:21.081601');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shimamoto_takashi@zenitaka.co.jp', 0, '銭高組', '土木事業本部　受注推進部　受注責任課', '', '島元　隆史', 0, '2015-04-18 23:24:25.795926');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'aihara-jiro@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '相原　次郎', 0, '2015-04-18 23:24:45.264609');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ayano-koruri@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第一課', '', '綾野　こるり', 0, '2015-04-18 23:24:57.000848');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'anzenseikatsu@city.chiyoda.lg.jp', 0, '千代田区環境安全部', '安全生活課　公害指導係', '', '関根　昇', 0, '2015-04-18 23:24:57.322289');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yokoi-hideki@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '横井　秀樹', 0, '2015-04-18 23:25:31.900002');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'khirai@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部', '', '平井　克政', 0, '2015-04-18 23:25:38.999625');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tanaka.a53.yoshihiro@log.nssmc.com', 0, '日鉄住金物流株式会社', '国内営業本部　環境・原料部', '', '田中　義浩', 0, '2015-04-18 23:25:40.024215');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kazuhiro.inaba@kubota.com', 0, '株式会社クボタ建機ジャパン', '広域営業部', '', '稲葉　和宏', 0, '2015-04-18 23:25:45.743764');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'r34_take@yahoo.co.jp', 0, '有限会社保坂住建', '産廃事業部', '', '保坂　岳彦', 0, '2015-04-18 23:25:46.339439');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'mogi@zushi-tec.com', 0, '伊豆電設株式会社', '', '', '茂木　隆', 0, '2015-04-18 23:25:49.572479');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kouji8@taiyoukiso.co.jp', 0, '太洋基礎工業株式会社　東京支店', '工事部', '', '加藤　康徳', 0, '2015-04-18 23:25:49.825694');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't.aoki@morooka.co.jp', 0, '株式会社諸岡', '営業推進室', '', '青木　貴洋', 0, '2015-04-18 23:25:52.759849');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'esaitou@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '齋藤　英司', 0, '2015-04-18 23:25:54.139943');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'aohba@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '大庭　章生', 0, '2015-04-18 23:25:55.483002');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kkosasayama@mecx.co.jp', 0, '株式会社MECX', '営業部', '', '小笹山　要', 0, '2015-04-18 23:25:57.145156');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, '26642u@ube-ind.co.jp', 0, '宇部丸善ポリエチレン株式会社', '営業部', '', '竹下　博之', 0, '2015-04-18 23:25:59.218471');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tdoki@okumura-kikai.co.jp', 0, '奥村機械株式曾社', '営業企画グループ', '', '土岐　拓也', 0, '2015-04-18 23:26:04.402291');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-18 23:26:09.509918');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-18 23:26:21.14803');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-18 23:26:27.443094');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-18 23:26:33.312311');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-18 23:26:33.794783');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-18 23:26:39.626578');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ryoko.hatori@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '羽鳥　涼子', 0, '2015-04-18 23:26:42.557222');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kousuke_kawai@yanmar.co.jp', 0, 'ヤンマー建機株式会社', '西部営業部　大阪支店　販売グループ', '', '河井　浩輔', 0, '2015-04-18 23:26:43.603774');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-18 23:26:50.716945');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-18 23:27:00.521597');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'suzuki-h@yonei.co.jp', 0, '株式会社ヨネイ', '建設機械ユニット', '', '鈴木　裕人', 0, '2015-04-18 23:27:00.765799');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 't.ono@me.tomo-e.co.jp', 0, '巴工業株式会社', '機械本部　産業機械営業部', '', '小野　隆扶美', 0, '2015-04-18 23:27:11.839914');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakanishi-ka@d-kjk.co.jp', 0, 'コマダ樹脂工業株式会社', '東京支店', '', '仲西　員実', 0, '2015-04-18 23:27:12.292594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-18 23:27:20.21537');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-18 23:27:22.416872');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-18 23:27:23.357951');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-18 23:27:28.894743');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's-kankyo@matsue-kg.co.jp', 0, '有限会社松江興業', '環境管理推進室', '', '榎本　伯一', 0, '2015-04-18 23:27:29.341629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-18 23:27:33.462052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-18 23:27:42.211372');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'watanabe.AW1929@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '渡邉　政和', 0, '2015-04-18 23:27:42.932606');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'hitoshi.fujita@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　生産企画部', '', '藤田　仁', 0, '2015-04-18 23:27:43.254634');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-18 23:27:53.562361');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-18 23:28:04.880207');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-18 23:28:07.022306');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-18 23:28:07.292443');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-18 23:28:10.68204');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-18 23:28:11.011511');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-18 23:28:11.23025');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-18 23:28:11.539669');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'tiijima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'プロジェクト推進部　応用技術グループ', '', '飯島　健', 0, '2015-04-18 23:28:14.713751');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'y-nakanishi@kitamuraindustry.co.jp', 0, '株式会社キタムラ産業　関東営業所', '', '', '中西　康裕', 0, '2015-04-18 23:28:21.308036');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'yanme@toriton.or.jp', 0, '公益財団法人鳥取県産業振興機構', '企業支援部　販路開拓グループ', '', '安梅　功哲', 0, '2015-04-18 23:28:23.700314');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (44696, 'nfukuda@harasho.co.jp', 0, '株式会社原商', '営業開発部', '', '福田　直明', 0, '2015-04-18 23:28:23.967419');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sasakihi@tge.co.jp', 0, '東京ガスエンジニアリング株式会社', 'エンジニアリング本部', '', '佐々木　秀夫', 0, '2015-04-19 11:16:32.580505');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Ja1pro@jc5.so-net.ne.jp', 0, 'ソニー(株)', 'ＴＶ事業部', '', '池上　博一', 0, '2015-04-19 11:16:33.447784');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-ando@tanaka-iron-works.com', 0, '田中鉄工株式会社', '営業課', '', '安東　晃あき（あきは旧字）', 0, '2015-04-19 11:16:38.134646');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'katsume@lion.co.jp', 0, 'LION', 'ファインケミカル事業所　生産技術課　技術チーム', '', '根本　勝幸', 0, '2015-04-19 11:16:42.469979');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yasuhiro.kawamura@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　機械部', '', '河村　泰博', 0, '2015-04-19 11:16:42.872052');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y.sashizawa@techcorporation.co.jp', 0, '株式会社テックコーポレーション', '企画部', '', '指澤　祐二', 0, '2015-04-19 11:16:43.36706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'info@wwwb.jp', 0, 'WWB株式会社', '建設機械部', '', '松崎　徳一', 0, '2015-04-19 11:16:43.714769');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'iijima@keiai-grp.com', 0, '株式会社ケイアイ', '', '', '飯島　圭士', 0, '2015-04-19 11:16:44.518477');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'noriotakahashi@totetsu.jp', 0, '東鉄工業株式会社', '土木本部　', '', '髙橋　紀男', 0, '2015-04-19 11:16:45.617398');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Makoto.Takeuchi@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産課', '', '竹内　誠', 0, '2015-04-19 11:16:53.709425');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'bugland2@yahoo.co.jp', 0, '富士宮清掃有限会社', '', '', '穂坂　勝彦', 0, '2015-04-19 11:16:54.507132');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'moriaki-yuhara@melplant.co.jp', 0, '三菱電機冷熱プラント株式会社　東京支社', '都市システム部　産業冷熱課', '', '湯原　守昭', 0, '2015-04-19 11:16:55.076238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-mino@asagiri-f.co.jp', 0, '有限会社朝霧牧場', '', '', '簑　威賴', 0, '2015-04-19 11:16:55.882244');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mitani@hrc.co.jp', 0, '早川ゴム株式会社', '東京支店　土木用止水材グループ', '', '三谷　安司', 0, '2015-04-19 11:16:56.848392');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hiroyuki_1_nagata@kirin.co.jp', 0, 'キリンエンジニアリング株式会社', '環境安全推進部', '', '永田　弘之', 0, '2015-04-19 11:17:32.584651');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'koujin@mes.co.jp', 0, '三井造船株式会社', '九州支社', '', '荒神　琢磨', 0, '2015-04-19 11:17:32.916848');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'n-ikeno@okawara-mfg.jp', 0, '株式会社大川原製作所', '環境エンジニアリング部営業技術課', '', '池野　奈津美', 0, '2015-04-19 11:17:33.345497');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y_uchida@origin.jp', 0, 'オリジン電気株式會社', 'エコエコ推進室', '', '内田　裕二', 0, '2015-04-19 11:17:40.601314');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h-nagao@idex.co.jp', 0, '株式会社新出光', '技術商品課', '', '長尾　英昭', 0, '2015-04-19 11:17:45.232171');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'makino@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部　包装コンサルタント', '', '牧野　憲', 0, '2015-04-19 11:17:45.475381');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takasugi@logispac.co.jp', 0, 'ロジスパック株式会社', '営業部', '', '高杉　和哉', 0, '2015-04-19 11:17:45.65629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ooshiro@eutectic.co.jp', 0, '日本ユテク株式会社', '', '', '大城　永勝', 0, '2015-04-19 11:17:45.860697');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'info@eco-club.co.jp', 0, '株式会社北陸環境サービス', '', '', '木下　高廣', 0, '2015-04-19 11:17:46.047268');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shinji_sasaki@cosmo-oil.co.jp', 0, 'コスモ石油株式会社', '給油ビジネスユニット　千葉製油所　安全環境課', '', '佐々木　真司', 0, '2015-04-19 11:17:46.520306');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-kawaguchi@onishi-e.co.jp', 0, '大西電機工業株式会社', '営業統括部　第二営業課　東京営業所', '', '川口　高生', 0, '2015-04-19 11:17:46.706511');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tsujiih@osk-k.co.jp', 0, '大阪工機株式会社', '東京支社　第三営業部　東京営業2課', '', '辻井　久', 0, '2015-04-19 11:17:51.468376');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ryoji.takeuchi@toshiba.co.jp', 0, '株式会社東芝　コミュニティ・ソリューション社', '事業開発センター　総合エンジニアリング部', '', '竹内　亮二', 0, '2015-04-19 11:17:52.761902');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'horio_s@konishi-saiseki.co.jp', 0, '株式会社小西砕石工業所', '坂祝事業部', '', '堀尾　伸介', 0, '2015-04-19 11:17:53.262433');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'masashi_sanguu@tte-net.co.jp', 0, '高砂熱学工業株式会社　技術本部', '技術企画部　参与', '', '三宮　正至', 0, '2015-04-19 11:17:59.699351');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mariizumi@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '有泉　光人', 0, '2015-04-19 11:18:00.278831');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kawasakiha@chiyodamelco.co.jp', 0, '千代田三菱電機機器販売株式会社', '', '', '川崎　晴夫', 0, '2015-04-19 11:18:00.546283');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'br-toiawase@br-create.com', 0, '株式会社ビー・アール・クリエイト', '', '', '福山　英昭', 0, '2015-04-19 11:18:00.737072');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'center@ne.catv.ne.jp', 0, '有限会社センターライン', '', '', '中条　大祐', 0, '2015-04-19 11:18:02.522707');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'fujioka0522@gmail.com', 0, 'em factory', '', '', '藤岡　まり', 0, '2015-04-19 11:18:08.886166');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tomohiro.seji@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '清地　智宏', 0, '2015-04-19 11:18:15.844065');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tsumotsumo@mcsekiyu.co.jp', 0, '三菱商事石油株式会社', 'リテール開発部', '', '津森　邦昭', 0, '2015-04-19 11:18:23.624908');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-sakuri@livretech.co.jp', 0, '株式会社リーブルテック', '製造本部　購買部　購買2課', '', '櫻井　和安', 0, '2015-04-19 11:18:24.396679');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm-miura@konari.com', 0, '株式会社小成', '事務機販売課', '', '三浦　正芳', 0, '2015-04-19 11:18:24.840179');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-shima@tomitaph.co.jp', 0, '富田製薬株式会社', '生産管理部　安全・環境管理課', '', '島　一夫', 0, '2015-04-19 11:18:25.56071');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y.ohtaki@paramount.co.jp', 0, 'パラマウントベッド株式会社', '総務部　安全衛生環境課', '', '大瀧　良則', 0, '2015-04-19 11:18:46.430482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yamatogma@gmail.com', 0, '株式会社マックマシンツール', '廃棄物管理士', '', '大和　幸男', 0, '2015-04-19 11:18:54.057447');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yamauchi.yuuki@subaru-fhi.co.jp', 0, '富士重工業株式会社', '産業機器カンパニーマーケティング部', '', '山内　雄樹', 0, '2015-04-19 11:19:05.027709');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-syooza@takuma.co.jp', 0, '株式会社タクマ', '環境本部　調達部　東京調達課', '', '庄崎　敏考', 0, '2015-04-19 11:19:05.260389');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'edasaki.r@hn.cik.co.jp', 0, 'シーアイ化成株式会社', '環境管理室', '', '枝崎　隆一', 0, '2015-04-19 11:19:05.81529');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h.ooyagi@ccs-gr.co.jp', 0, '株式会社クリーンコントロールサービス', '', '', '大八木　博之', 0, '2015-04-19 11:19:06.170853');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'furukawashinkou-kouji@abox3.so-net.ne.jp', 0, '有限会社古川新興', '', '', '古川　幸司', 0, '2015-04-19 11:19:06.901453');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tetm-morita@nts.ricoh.co.jp', 0, '株式会社リコー', '環境推進本部推進室', '', '森田　哲郎', 0, '2015-04-19 11:19:08.613717');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h-abe@takatoshi.co.jp', 0, '高俊興業株式会社', '執行役員　法務事業本部副本部長　兼　再資源化推進部長', '', '阿部　秀行', 0, '2015-04-19 11:19:08.995668');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mztadmin@po.mizota.co.jp', 0, '株式会社ミゾタ', '管理本部　総務部システム開発課', '', '緒方　元', 0, '2015-04-19 11:19:09.71056');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sugiyama-yoshimasa@meti.go.jp', 0, '経済産業省', '関東経済産業局　資源エネルギー環境部　資源エネルギー環境課', '', '杉山　佳正', 0, '2015-04-19 11:19:12.188629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'funanami.kenta@ad-hzm.co.jp', 0, '株式会社安藤・間', '建築事業本部　事業本部　積算センター　構造グループ', '', '舩浪　健太', 0, '2015-04-19 11:19:18.549246');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Kazumi.Mogi@showa-shell.co.jp', 0, '昭和シェル石油株式会社', '石油事業部　首都圏支店　潤滑油販売課', '', '茂木　和美', 0, '2015-04-19 11:19:25.180664');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'e-mashiba@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'リサイクルエンジニアリング部　東京技術工事課', '', '間柴　栄輝', 0, '2015-04-19 11:19:25.546665');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'masanori_atarashi@tte-net.co.jp', 0, '高砂熱学工業株式会社', '営業本部', '', '新　真則', 0, '2015-04-19 11:19:31.971257');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-kitagawa@nissan-nics.co.jp', 0, '株式会社日産クリエイティブサービス', 'NICS購買センター', '', '喜多川　計幸', 0, '2015-04-19 11:19:38.07341');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-saito@toshiba-teli.co.jp', 0, '東芝テリー株式会社', '営業部　第1営業担当', '', '斉藤　清', 0, '2015-04-19 11:19:39.320129');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takeshi.hattori@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '服部　武', 0, '2015-04-19 11:19:52.450086');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'n-wada@kondotec.co.jp', 0, 'コンドーテック株式会社', '海外営業部', '', '和田　倫嘉', 0, '2015-04-19 11:19:52.95605');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, '5203302@shinryo-gr.com', 0, '株式会社新菱', 'リサイクル・ファイン事業部門　資源環境部', '', '有田　宏之', 0, '2015-04-19 11:19:53.388236');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'a.sato@ryokikogyo.co.jp', 0, '菱機工業株式会社', '工事課', '', '佐藤　明俊', 0, '2015-04-19 11:19:53.864407');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tf@tokyofood.jp', 0, '東京フード株式会社', '営業部', '', '小林　信夫', 0, '2015-04-19 11:19:54.064548');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'smatsui@ce.taisei.co.jp', 0, '大成建設株式会社', '土木本部　土木技術部　インフラ・海洋技術室', '', '松井　俊二', 0, '2015-04-19 11:19:54.906775');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-jin@takatoshi.co.jp', 0, '高俊興業株式会社', '再資源化推進部', '', '神　司', 0, '2015-04-19 11:19:55.193442');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sasaki@nakashiki.com', 0, '株式会社オーレックス', '', '', '佐々木　健治', 0, '2015-04-19 11:19:55.588482');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kouji-iwase@city.edogawa.tokyo.jp', 0, '江戸川区環境推進課', '', '', '岩瀬　耕二', 0, '2015-04-19 11:19:56.017837');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-suzuki@pgf-japan.com', 0, 'ピーコックエレメント製造株式会社', '開発事業部', '', '鈴木　慎二', 0, '2015-04-19 11:20:04.545821');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'minemura@kanaflex.co.jp', 0, 'カナフレックスコーポレーション株式会社', '営業部　工業用品課', '', '峰村　信哉', 0, '2015-04-19 11:20:04.994805');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'f-komatsu@hamanetsu.co.jp', 0, '株式会社ハマネツ　東京オフィス', '東日本営業部　特販グループ', '', '小松　文裕', 0, '2015-04-19 11:20:09.627519');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'horikawa@ksg-group.co.jp', 0, '株式会社ジャパンリコロジー', '', '', '堀川　豊彦', 0, '2015-04-19 11:20:09.846322');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takashi-matsuura@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境ソリューション事業本部', '', '松浦　高士', 0, '2015-04-19 11:20:10.319187');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tsubasa-sugawara@mes.co.jp', 0, '三井造船環境エンジニアリング株式会社', '環境施設事業本部　第１整備部１課', '', '菅原　翼', 0, '2015-04-19 11:20:11.751093');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tetsuo-n@kubota.co.jp', 0, '株式会社クボタ', '電装機器営業部　大阪計量システム課', '', '西　哲朗', 0, '2015-04-19 11:20:14.309454');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tomoyasu.shimao@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '島尾　知保', 0, '2015-04-19 11:20:15.010991');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'saito@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '斎藤　恒成', 0, '2015-04-19 11:20:15.64593');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'denki@po.mizota.co.jp', 0, '株式会社ミゾタ', '技術本部　電気設計部', '', '福田　一之', 0, '2015-04-19 11:20:16.221167');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takeshi.ueno@kubota.com', 0, '株式会社クボタ', 'パイプシステム事業部　パルプ技術部　技術第二グループ', '', '上野　岳志', 0, '2015-04-19 11:20:22.647111');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tomohisa_t@kyodohdoboku.co.jp', 0, '株式会社共同土木東京工場', '業務統括部　環境開発課', '', '高梨　智久', 0, '2015-04-19 11:20:23.260797');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'chiba.k@daiwa-tk.co.jp', 0, '大和鉄原工産株式会社', '営業本部　第一営業部', '', '千葉　幸一郎', 0, '2015-04-19 11:20:23.477758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm-kikuchi@flight-one.co.jp', 0, '株式会社フライトワン', '営業部', '', '菊地　正人', 0, '2015-04-19 11:20:24.20241');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kiyoshi_s@yoshimura-inc.co.jp', 0, '株式会社ヨシムラ', '統括管理部', '', '鈴木　潔', 0, '2015-04-19 11:20:24.440907');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ariki@nextenergy.jp', 0, 'ネクストエナジー・アンド・リソース株式会社', '', '', '有木　正浩', 0, '2015-04-19 11:20:30.900285');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'd.suzuki@paper-recycle.jp', 0, 'エコフィスジャパン株式会社', '', '', '鈴木　大二郎', 0, '2015-04-19 11:20:31.501953');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y-nakazato@ac.daido.co.jp', 0, '大同特殊鋼株式会社', '渋川工場　環境室', '', '中里　康弘', 0, '2015-04-19 11:20:31.962971');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kazuto.anata@jp.com', 0, 'ソニーストレージメディア・アンド・デバイス株式会社', '総務部　安全環境防災課', '', '英　和人', 0, '2015-04-19 11:20:39.061017');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hidekuni.taoka@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部機械部', '', '田岡秀邦', 0, '2015-04-19 11:20:39.411988');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shin.kenei@subaru-fhi.co.jp', 0, '富士重工業株式会社', 'スバル製造本部　群馬製作所　生産技術研究部　SIグループ主査', '', '沈　建栄', 0, '2015-04-19 11:20:44.725993');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'akiba@cowell.co.jp', 0, '株式会社コーウェル', 'ＬＥＤソリューション　第一営業部', '', '秋葉　義之', 0, '2015-04-19 11:20:45.125264');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'atsushikawamoto@kubota.com', 0, '株式会社クボタ', '本機製造部 本機製造第二課', '', '川本　篤志', 0, '2015-04-19 11:21:06.255557');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nanohanaminoh@gmail.com', 0, '菜の花プロジェクトみのお', '', '', '小林　武士', 0, '2015-04-19 11:21:11.777083');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'masashi-okumura@cdg.co.jp', 0, '株式会社ＣＤＧ東京本社', '営業本部　東京営業2部　営業７課', '', '奥村　昌史', 0, '2015-04-19 11:21:18.448942');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakamura@kirintechno.co.jp', 0, 'キリンテクノシステム株式会社', '技術開発部　開発１課', '', '中村　裕宗', 0, '2015-04-19 11:21:24.87739');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'araki-h@toso.co.jp', 0, 'トーソー株式会社', '管理室総務課', '', '新木　浩之', 0, '2015-04-19 11:21:25.101386');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't.takenouchi@niihama.co.jp', 0, '株式会社新居鉄工所（鉄は旧字体）', '破砕機事業部　設計課', '', '竹之内　智行', 0, '2015-04-19 11:21:25.72338');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'susuga@futami.net', 0, '株式会社二見', '製紙原料古紙直納問屋　産廃・一廃中間処理施設　営業部', '', '煤賀　正人', 0, '2015-04-19 11:21:46.357628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hi-ishikawa@tyo.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '石川　博将', 0, '2015-04-19 11:21:46.717485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-nagai@tyo.kubota.co.jp', 0, 'クボタ環境サービス株式会社', 'Ｏ＆Ｍ本部技術グループ', '', '長井　克幸', 0, '2015-04-19 11:21:49.200959');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kuroe.soichi@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '', '', '黒江　宗一', 0, '2015-04-19 11:21:49.703232');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'isao_kimura@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不戦不営業部営業第一グループ', '', '木村　功', 0, '2015-04-19 11:21:56.171576');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'keiichirou.kimura@okumuragumi.jp', 0, '株式会社奥村組', '環境技術部　リニューアル課　', '', '木村　哲一郎', 0, '2015-04-19 11:21:57.15906');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'oono@trustlight.jp', 0, 'エコ・トラスト・ジャパン株式会社', '営業本部　第一営業課　営業１係', '', '大野　翔平', 0, '2015-04-19 11:21:57.545016');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sekiguchi@garbage.co.jp', 0, '新潟ガービッヂ株式会社', '営業部', '', '関口　司忠', 0, '2015-04-19 11:21:57.734323');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakao.shunji@obayashi.co.jp', 0, '株式会社大林組', '技術本部　環境ソリューション部　スマートシティ推進課', '', '中尾　俊二', 0, '2015-04-19 11:22:03.950855');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'chuji.minami@jp.toto.com', 0, 'TOTO株式会社　', '茅ヶ崎工場　安全環境グループ', '', '皆見　忠慈', 0, '2015-04-19 11:22:11.073567');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yoshikazu.sato@kubota.com', 0, '株式会社クボタ', '電装機器事業部NPW-PT', '', '佐藤　嘉一', 0, '2015-04-19 11:22:16.521294');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'iida-satoru@motec-co.jp', 0, '株式会社エムオーテック', '営業第二部　営業第四課', '', '飯田　悟', 0, '2015-04-19 11:22:28.473831');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'honda-seiji@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　', '', '本田　誠司', 0, '2015-04-19 11:22:40.03661');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm.nakasima@seisou-center.co.jp', 0, '株式会社清掃センター', '', '', '中嶋　満', 0, '2015-04-19 11:22:47.047799');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shinya.tanaka@exc.tokai-rika.co.jp', 0, '株式会社東海理化', '生産技術センター施設環境部環境管理室', '', '田中　真也', 0, '2015-04-19 11:22:47.425016');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shiono@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部', '', '塩野　正春', 0, '2015-04-19 11:22:47.605206');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shimura@yutaka-denki.jp', 0, 'ユタカ電気株式会社', '営業技術本部設計課', '', '志村　真', 0, '2015-04-19 11:22:47.769798');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'enoken-k@cy.tnc.ne.jp', 0, '有限会社エノケン工業', '', '', '榎田　英明', 0, '2015-04-19 11:22:48.416786');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tg-osada@tokyo-gas.co.jp', 0, '東京ガス株式会社', '神奈川西支店　地域広報グループ　広聴広報担当', '', '長田　猛', 0, '2015-04-19 11:22:48.677194');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ta.kurisaki@hino.co.jp', 0, '日野自動車株式会社', '車両実験部　総括室　', '', '栗崎　忠', 0, '2015-04-19 11:22:49.208652');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h_araki@muc.co.jp', 0, '株式会社　東京ミュー精器', '計量器コンサルタント営業技術部', '', '荒木　宏長', 0, '2015-04-19 11:22:52.445701');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'masaaki.takeshita@toshiba.co.jp', 0, '株式会社東芝　社会インフラシステム社', '浜川崎工場　生産技術部生産技術・環境担当', '', '竹下　政明', 0, '2015-04-19 11:22:53.735137');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tkohara@rubycon.co.jp', 0, 'ルビコン株式会社', '経営管理部', '', '小原　剛', 0, '2015-04-19 11:22:54.401358');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ttaniguc@bbs.co.jp', 0, '株式会社ビジネスブレイン太田昭和', 'ソリューション１部', '', '谷口　努', 0, '2015-04-19 11:23:01.809132');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm-nagashima@withwaste.jp', 0, '株式会社ウィズ　ウェイト　ジャパン', '東関東リサイクルパーク　茨城事業所', '', '永島　誠', 0, '2015-04-19 11:33:02.135191');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Akira_Toyoda@covalent.co.jp', 0, 'コバレントマテリアル株式会社', 'セラミック事業部', '', '豊田　明', 0, '2015-04-19 11:33:13.618812');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tomohiko.muto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '武藤　智彦', 0, '2015-04-19 11:34:07.352455');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kawakami@gomi39.co.jp', 0, '株式会社　三久', '', '', '川上　英男', 0, '2015-04-19 11:34:07.814806');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kenji.yamaguchi@sumitomocorp.co.jp', 0, '住友商事株式会社', '非鉄金属事業部　事業投資チーム　', '', '山口　健二', 0, '2015-04-19 11:34:08.017087');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Kazumasa_Ohashi@suntory.co.jp', 0, 'サントリービジネスエキスパート株式会社', 'R&Dサポートセンター　', '', '大橋　一雅', 0, '2015-04-19 11:34:08.259452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tokyo@kdk-net.co.jp', 0, '國際電測興業株式会社', '東京営業所', '', '中島　博幸', 0, '2015-04-19 11:34:10.995754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'okamoto@tokushakogyo.co.jp', 0, '株式会社特車工業', '製造部', '', '岡本　朝道', 0, '2015-04-19 11:34:11.764654');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'eigyo-03@keihin-group.co.jp', 0, '日栄産業株式会社', '', '', '亀谷　達哉', 0, '2015-04-19 11:34:12.600269');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tatsuhiro_fuse@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '布施　達弘', 0, '2015-04-19 11:34:13.53904');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takaharu.matsuoka@daikin.co.jp', 0, 'ダイキン工業株式会社', '化学事業部プロセス技術部', '', '松岡　隆晴', 0, '2015-04-19 11:34:14.142735');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'taguchi@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '田口　太桂英', 0, '2015-04-19 11:34:21.234582');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nishi@studiocovo.com', 0, '特定非営利活動法人グリーンネットワーク', '', '', '西　正徳', 0, '2015-04-19 11:34:21.527816');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hayakawa@showa-kikai.co.jp', 0, '昭和機械商事株式曾社', '東京チェーングループ', '', '早川　昇', 0, '2015-04-19 11:34:27.97148');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'maru3@gray.plala.or.jp', 0, '株式会社丸三興業', '営業部', '', '亀田　英男', 0, '2015-04-19 11:34:28.320717');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tamami.fujioka@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'Ｇ営業本部産業資材営業本部東京支店', '', '藤岡　珠未', 0, '2015-04-19 11:34:29.435255');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakahyo1@yokohama-marunaka.co.jp', 0, '横浜市場センター株式会社', '', '', '中堀　督勇', 0, '2015-04-19 11:34:32.481639');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takasaki-shuhei@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第二部　営業第四課', '', '高崎　脩平', 0, '2015-04-19 11:34:44.06968');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tamagawa-tatsunori@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部', '', '玉川　辰典', 0, '2015-04-19 11:34:55.629858');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yshimada@nihondensi.co.jp', 0, '日本電子工学株式会社', '営業グループ', '', '島田　雄二', 0, '2015-04-19 11:34:57.165209');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 're-frex@hit-5.net', 0, '株式会社リフレックス', '', '', '山崎　章弘', 0, '2015-04-19 11:35:06.296077');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't.nogi.id@azbil.com', 0, 'アズビル株式会社', 'サービス本部　東京サービス部　東京サービス2グループ', '', '野木　毅', 0, '2015-04-19 11:35:06.78915');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ko-baba@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門海外事業部', '', '馬場　恒次', 0, '2015-04-19 11:35:07.439222');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yu-sugisaki@tokyoink.co.jp', 0, '東京インキ株式会社', '', '', '杉崎　幸利', 0, '2015-04-19 11:35:08.086496');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'motome@mail.seikitokyu.co.jp', 0, 'エス・ティ・サービス　株式会社', '', '', '求　輝芳', 0, '2015-04-19 11:35:10.243079');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm.nagashima@nipponham.co.jp', 0, '日本ハム設計　株式会社', '工事部', '', '長島　光昭', 0, '2015-04-19 11:38:40.969754');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ebityan1225@gmail.com', 0, '東京農業大学', '', '', '海老原　佑', 0, '2015-04-19 11:38:47.554794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mitsuru-create@mx6.nns.ne.jp', 0, '株式会社クリエート', '', '', '望月　満', 0, '2015-04-19 11:38:48.034196');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mfukui@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社  企画業務グループ', '', '福井　美月', 0, '2015-04-19 11:38:53.075805');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takeno_yuki@geibunsha.co.jp', 0, '株式会社芸文社', 'カミオン', '', '竹野　勇輝', 0, '2015-04-19 11:38:57.752292');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y.nakamura@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', 'リース事業部', '', '中村　康昭', 0, '2015-04-19 11:38:58.015315');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hokutaku@hi-net.ne.jp', 0, '有限会社　北拓ビル管理', '', '', '下館　光一郎', 0, '2015-04-19 11:38:58.790639');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nagaso@mmc.co.jp', 0, '三菱マテリアテクノ株式会社', '資源・環境・エネルギー事業部　環境計量部　環境技術センター', '', '永草　康彦', 0, '2015-04-19 11:38:59.6524');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'stanaka@bmbio.co.jp', 0, 'ビーエム機器株式会社', '　', '', '田中　知　', 0, '2015-04-19 11:39:05.895478');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'horry-potter@kve.biglobe.ne.jp', 0, 'カンセイ株式会社', '　', '', '堀端　久江', 0, '2015-04-19 11:39:11.178899');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'fabe@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '分析センター', '', '阿部　大', 0, '2015-04-19 11:39:11.968012');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't-isomiti@nangoku-group.com', 0, '南国殖産株式会社', '建設産業機械課　霧島出張所', '', '礒道　達士', 0, '2015-04-19 11:39:12.816652');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mino.koki@ad-hzm.co.jp', 0, '株式会社安藤・間', '関東土木支店　土木部　大橋出張所　第３工事課', '', '美濃　光輝', 0, '2015-04-19 11:39:18.945442');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kimihiko_kubozuka@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布営業部　営業第二グループ', '', '窪塚　公彦', 0, '2015-04-19 11:39:25.497');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 're-takayama.shouten@dg7.so-net.ne.jp', 0, '有限会社高山商店', '', '', '高山　聡', 0, '2015-04-19 11:39:26.227731');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kobayasi@aokikankyo.com', 0, '青木環境事業株式会社', '営業部', '', '小林　洋一', 0, '2015-04-19 11:39:27.246575');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ohmae_yusuke@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '関東支社　千葉北支店　成田営業所', '', '大前　雄介', 0, '2015-04-19 11:39:32.382624');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'naoki.asakawa@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '浅川　直貴', 0, '2015-04-19 11:39:37.814203');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'noriyuki.kondo@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '近藤　紀行', 0, '2015-04-19 11:39:42.626794');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'matsumoto@ebisukikou.co.jp', 0, '恵比寿機工株式会社', '', '', '松本　俊之', 0, '2015-04-19 11:39:44.529724');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yoshida.k@rentac.jp', 0, '株式会社レンタック', '', '', '吉田　和広', 0, '2015-04-19 11:39:44.917635');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'info@maruyou.com', 0, '丸友開発株式会社', '', '', '谷田　康雄', 0, '2015-04-19 11:39:45.244752');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'koshiba@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '技術本部　技術研究所', '', '小柴　朋広', 0, '2015-04-19 11:39:46.496321');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'katsunori.motohashi@scigineer.co.jp', 0, 'サイジニア株式会社', '営業部', '', '本橋　且規', 0, '2015-04-19 11:39:46.748868');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'suzuki_takayuki@jpncat.com', 0, 'キャタピラーイーストジャパン株式会社', '販売事業部　営業管理部　商事課', '', '鈴木　敬之', 0, '2015-04-19 11:39:51.823042');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yseida@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '清田　侑紀', 0, '2015-04-19 11:39:52.821023');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'da.yamada@ydec.co.jp', 0, '株式会社ヨシカワ', '', '', '山田　大輔', 0, '2015-04-19 11:39:59.35246');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h.yoshida@ydec.co.jp', 0, '株式会社ヨシカワ', '営業課', '', '吉田　玄', 0, '2015-04-19 11:40:11.594878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tatsuya.ogura@jp.belfor.com', 0, 'ベルフォアジャパン株式会社', '災害早期復旧部　技術課', '', '小倉　辰也', 0, '2015-04-19 11:40:23.603539');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yu.yamada@omltd.co.jp', 0, '株式会社オーエム製作所', '宍道開発室', '', '山田　裕治', 0, '2015-04-19 11:40:24.119549');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'c-takano@yagashiro-ls.co.jp', 0, '株式会社八ケ代造園', '', '', '高野　智良', 0, '2015-04-19 11:40:24.489205');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'uchida@cc.kogakuin.ac.jp', 0, '工学院大学', '工学部　環境エネルギー化学科', '', '内田　雅樹', 0, '2015-04-19 11:40:25.867499');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y.wakida@east.ntt.co.jp', 0, 'NTT東日本', 'ネットワークソリューション部　営業支援担当', '', '脇田　祐司', 0, '2015-04-19 11:40:26.729806');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kojimam@sc.sumitomo-chem.co.jp', 0, '住友化学株式会社', '大分工場　レスポンシブルケア部', '', '小島　美津代', 0, '2015-04-19 11:40:27.201431');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'osamu.amano@toda.co.jp', 0, '戸田建設株式会社', '建築設計統轄部　設備設計部', '', '天野　修', 0, '2015-04-19 11:40:37.922592');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kgontou@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '北関東支社　調査グループ', '', '権頭　克則', 0, '2015-04-19 11:40:38.822631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'smiyagawa@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', '東関東支社　技術営業グループ', '', '宮川　進矢', 0, '2015-04-19 11:40:39.878');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'miyazaki-chemical@hotmail.co.jp', 0, 'ミヤザキ株式会社', '第二営業部', '', '宮崎　義大', 0, '2015-04-19 11:40:42.768069');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Yoshikazu_Tsuchiya@member.metro.tokyo.jp', 0, '東京都', '下水道局　施設管理部　施設管理課　', '', '土屋　義和', 0, '2015-04-19 11:40:43.802303');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'fukuoka.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '', '', '福岳　雄一郎', 0, '2015-04-19 11:40:44.05793');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kokojima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　土壌環境グループ', '', '小島　幸司', 0, '2015-04-19 11:40:44.825686');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tmuraguchi@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'エンジニアリング部　', '', '村口　貴紀', 0, '2015-04-19 11:40:45.400593');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tkurasawa@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部　技術営業部', '', '倉澤　卓也', 0, '2015-04-19 11:40:52.040322');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'n-naitou@co-jsp.co.jp', 0, '株式会社　JSP', '新事業開発室　新技術開発部', '', '内藤　直記', 0, '2015-04-19 11:40:58.269608');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kimihiro.morishita@keisei-const.co.jp', 0, '京成建設株式会社', '営業本部　第二営業部', '', '森下　公博', 0, '2015-04-19 11:40:58.664663');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm-toshi@jrfreight.co.jp', 0, 'JR貨物', '関東支社　営業部　首都圏営業開発グループ', '', '宮下　俊彦', 0, '2015-04-19 11:40:59.009228');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kankyo-shisetsu@city.saitama.lg.jp', 0, 'さいたま市', '環境局　施設部　環境施設課', '', '酒巻　紳一郎', 0, '2015-04-19 11:40:59.736591');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'a.jinbo@ndls.co.jp', 0, 'エヌディーリース・システム株式会社', '中部支社', '', '神保　明彦', 0, '2015-04-19 11:40:59.923193');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm_horiike@sanwakensho.co.jp', 0, '三和建商株式会社', '', '', '堀池　通浩', 0, '2015-04-19 11:41:18.026909');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h-kimura@wesco.co.jp', 0, '株式会社ウエスコ', '環境設計部　環境設計課', '', '木村　浩和', 0, '2015-04-19 11:41:19.093858');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'howard@proten.com.tw', 0, '伯登有限公司', '', '', '黄　明章', 0, '2015-04-19 11:41:21.199535');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-okazaki@tohoku-kigyo.co.jp', 0, '東北企業株式会社', '第四営業部', '', '岡崎　啓一', 0, '2015-04-19 11:41:22.694031');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'oyabu.yamato@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '大薮　大和', 0, '2015-04-19 11:41:23.213669');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'inoue.takashi1@kobelco.com', 0, '中村リース株式会社', '東海営業所', '', '井上　崇', 0, '2015-04-19 11:41:23.704929');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'okada@tachibana-m.co.jp', 0, '株式会社立花マテリアル', '東京支店　営業部　営業二課', '', '岡田　公彦', 0, '2015-04-19 11:41:25.751551');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kiyoshi@kakutani.co.jp', 0, '角谷木材建設株式会社', '', '', '角谷　喜代志', 0, '2015-04-19 11:41:26.609877');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'susumu_kawaguchi@kurekan.co.jp', 0, '株式会社クレハ環境', '環境技術部　技術企画課', '', '河口　進', 0, '2015-04-19 11:41:31.871112');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sugie@ishizuka.co.jp', 0, '石塚硝子株式会社', '技術本部', '', '椙江　弘樹', 0, '2015-04-19 11:41:36.983839');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yanaura@omtecinc.co.jp', 0, '株式会社オムテック', '', '', '柳浦　公二郎', 0, '2015-04-19 11:41:53.086458');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tadahiko_miyoshi@kanaijuyo.co.jp', 0, '金井重要工業株式会社', '不織布事業部　不織布製造所', '', '三好　正彦', 0, '2015-04-19 11:42:02.362758');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-takamura@aqua.plala.or.jp', 0, 'アクア創研有限会社', '', '', '高村　晋', 0, '2015-04-19 11:42:46.971366');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kishimoto.y@tokiwakogyo.co.jp', 0, '常盤工業株式会社', '営業部', '', '岸本　裕司', 0, '2015-04-19 11:42:49.504601');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'honma.yutaka@kagata.co.jp', 0, '株式会社加賀田組　東京支店', '土木事業部　技術企画部', '', '本間　豊', 0, '2015-04-19 11:42:49.940946');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tatsuhiko-maeda@mes.co.jp', 0, '三井造船株式会社', 'エンジニアリング事業本部　プロジェクト部　環境エネルギーグループ', '', '前田　達彦', 0, '2015-04-19 11:42:50.206563');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hayafuji.eiichi@tokyu-cnst.co.jp', 0, '東急建設株式会社', '安全環境部　環境グループ', '', '早藤　英一', 0, '2015-04-19 11:42:50.664778');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hirakawa@apower-now.net', 0, 'あじあ行政書士法人', '', '', '平川　雅夫', 0, '2015-04-19 11:42:51.111684');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yacokada@soc.co.jp', 0, '住友大阪セメント株式会社', '東京支店　固化材グループ　', '', '岡田　八千代', 0, '2015-04-19 11:43:01.980925');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tanaka.makoto@ebara.com', 0, '株式会社荏原製作所', '社会システム計画・開発統括部　事業推進室', '', '田中　誠', 0, '2015-04-19 11:43:04.380182');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'uno@yoshino-rubber.co.jp', 0, '吉野ゴム工業株式会社', '東京営業所', '', '宇野　敏志', 0, '2015-04-19 11:43:05.372845');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's.uchida@mys.co.jp', 0, '三好環境株式会社', '営業一部', '', '内田　成昭', 0, '2015-04-19 11:43:05.739602');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tadashi.tsunematsu@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術研究所　第一研究室', '', '常松　直志', 0, '2015-04-19 11:43:07.578148');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'm-miyagi@ohmiyakouki.com', 0, '有限会社大宮工機', '', '', '宮城　光秀', 0, '2015-04-19 11:43:12.122776');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kidoy@jikco.co.jp', 0, '株式会社ジコー', '管理本部', '', '城戸　良重', 0, '2015-04-19 11:43:26.014142');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hiroshi-abe@obayashi-road.co.jp', 0, '大林道路株式会社', '本店　プラントシステム営業部', '', '阿部　浩', 0, '2015-04-19 11:44:02.485711');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'info@hakuei-kaitai.com', 0, '株式会社珀栄', '', '', '花房　伸', 0, '2015-04-19 11:44:03.08642');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tokyo@kamacho.co.jp', 0, '鎌長製衡株式会社', '営業本部　東京支店　営業1グループ', '', '山田　悠太郎', 0, '2015-04-19 11:44:13.906828');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y.ohshima@chiba-gas.co.jp', 0, '千葉ガス株式会社', 'エネルギー営業部　エネルギー営業グループ', '', '大島　裕亮', 0, '2015-04-19 11:44:14.791455');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'niwa@szken.co.jp', 0, '株式会社鈴鍵', '', '', '丹羽　庸介', 0, '2015-04-19 11:44:15.282231');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'okumoto.kohei@kobelco.com', 0, 'コベルコ建機株式会社', '直轄営業部　営業グループ', '', '奥本　昂平', 0, '2015-04-19 11:45:01.609026');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mizuno.masamichi@kobelco.com', 0, '東日本コベルコ建機株式会社', '南関東支社　横浜営業所', '', '水野　真理', 0, '2015-04-19 11:45:02.121712');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nobuaki_s@kyodohdoboku.co.jp', 0, '株式会社共同土木　千葉工場', '業務統括部　', '', '佐々木　伸明', 0, '2015-04-19 11:45:03.010584');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'masahide_ohmiya@cosmo-sales.co.jp', 0, 'コスモリフォーム株式会社', '', '', '大宮　正秀', 0, '2015-04-19 11:45:05.190779');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'wakita@tandts.co.jp', 0, '株式会社ティ・アンド・ティ・エス', '', '', '脇田　真治', 0, '2015-04-19 11:45:06.019287');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'office@yamashita-shoten.com', 0, '有限会社山下商店', '', '', '山下　唱徳', 0, '2015-04-19 11:45:06.272525');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'minoru@kitajimashibori.co.jp', 0, '株式会社北嶋絞製作所', '', '', '北嶋　實', 0, '2015-04-19 11:45:06.789312');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'earth.toumi@gmail.com', 0, 'アース・グループ株式会社', '東京営業課', '', '田海　浩之', 0, '2015-04-19 11:45:15.624736');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ryota.mori@yoshimine.co.jp', 0, '株式会社よしみね', '総務部', '', '森　諒太', 0, '2015-04-19 11:45:16.854885');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kasuya.hideo@tokyu-cnst.co.jp', 0, '東急建設株式会社', '営業本部　鉄道営業統括部', '', '粕谷　英夫', 0, '2015-04-19 11:45:17.14035');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takenaka-tetsuji@motec-co.jp', 0, '株式会社エムオーテック　大阪支店', '営業部', '', '竹中　哲治', 0, '2015-04-19 11:45:28.764956');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-hashizume@osa.kubota-ksk.co.jp', 0, 'クボタ環境サービス株式会社', '水処理営業部　技術第一課', '', '橋爪　祥世', 0, '2015-04-19 11:45:30.40237');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shouichirou.higuchi@toda.co.jp', 0, '戸田建設株式会社', '価値創造推進部　開発センター', '', '樋口　正一郎', 0, '2015-04-19 11:45:47.855259');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kuboniwa-makoto@ise-egg.co.jp', 0, '有限会社つくばファーム', '', '', '久保庭　真', 0, '2015-04-19 11:50:08.652611');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'h.nikaidou@garnet.dti.ne.jp', 0, '二階堂労働安全コンサルタント事務所', '', '', '二階堂　久', 0, '2015-04-19 11:50:09.017266');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kazuma.enomoto@bridgestone.com', 0, 'ブリヂストン化工品東日本株式会社', '工業資材販売企画本部　工業資材販売企画2G', '', '榎本　一馬', 0, '2015-04-19 12:10:55.449574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hayashi@nishikawa-rose.co.jp', 0, '西川ローズ株式会社', '', '', '林　三吉', 0, '2015-04-19 12:11:01.426251');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'wxmxy880@yahoo.co.jp', 0, 'エムストラスト株式会社', '総務部', '', '鈴木　和美', 0, '2015-04-19 12:11:04.135913');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'toshiaki-goto@jfe-kankyo.co.jp', 0, 'JFE環境株式会社', '営業本部　', '', '後藤　俊彰', 0, '2015-04-19 12:11:11.523232');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'imai-hanako@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '今井　華子', 0, '2015-04-19 12:11:23.215394');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ikenaga-yuto@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '池永　優人', 0, '2015-04-19 12:11:34.828438');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nishimura-takuma@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　営業第一部　営業第三課', '', '西村　卓馬', 0, '2015-04-19 12:11:46.440922');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mi_yamazaki@smkc.co.jp', 0, '三井住商建材株式会社', '機能推進本部　特販部　環境チーム', '', '山﨑　巳之武', 0, '2015-04-19 12:11:50.67938');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'seijirou_yukawa@taiseirotec.co.jp', 0, '大成ロテック株式会社', '技術研究所', '', '湯川　誠二郎', 0, '2015-04-19 12:16:11.75373');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'quality_section@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術　品質管理部', '', '本田　泰章', 0, '2015-04-19 12:16:35.524381');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ikedaT@npk.co.jp', 0, '日本ニューマチック工業株式会社', '世界生産技術・品質管理課', '', '池田　隆司', 0, '2015-04-19 12:16:38.008933');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yoshimura.ryoko@lab.ntt.co.jp', 0, '日本電信電話株式会社　NTTフォトニクス研究所', 'フォトニクスデバイス研究部', '', '吉村　了行', 0, '2015-04-19 12:16:38.402702');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kosuke.kitagishi@suga-kikai.co.jp', 0, '菅機械工業株式会社　東京支店', '営業2部', '', '北岸　広祐', 0, '2015-04-19 12:16:41.589384');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-muta@tokushakogyo.co.jp', 0, '株式会社特車工業', '', '', '牟田　繁生', 0, '2015-04-19 12:16:42.186556');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k-ohata@skk.jp', 0, '三建設備工業株式会社', '営業本部　ソリューション部　', '', '大端　健治', 0, '2015-04-19 12:16:43.223617');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kinusa.koide@mjk.mhi.co.jp', 0, '三菱重工環境・化学エンジニアリング株式会社', '営業統括部　海外営業部　海外プラント営業グループ', '', '小出　衣佐', 0, '2015-04-19 12:16:47.415557');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'oda.tomohiro@obayashi.co.jp', 0, '株式会社大林組', '技術本部　技術研究所　環境技術研究部', '', '小田　智弘', 0, '2015-04-19 12:16:53.75229');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hk@kikuchikasei.co.jp', 0, '株式会社菊池化成', '', '', '菊池　真悟', 0, '2015-04-19 12:16:59.317468');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tmnakagawa@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '中川　知子', 0, '2015-04-19 12:17:03.562452');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'akitou@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '伊藤　顕人', 0, '2015-04-19 12:17:10.254722');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hgonoi@gaeart.com', 0, '株式会社ガイアートT・K', '総合評価対策室', '', '五ノ井　裕之', 0, '2015-04-19 12:17:14.416428');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'osamu-ohashi@obayashi-road.co.jp', 0, '大林道路株式会社', '総合評価対策室', '', '大橋　紀', 0, '2015-04-19 12:17:22.910971');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'takaoka.t@ohno-associates.jp', 0, 'オオノ開發株式会社', '開発室', '', '高岡　敏雄', 0, '2015-04-19 12:17:23.701956');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'watanabe-yuko@city.anjo.lg.jp', 0, '安城市', '環境部環境首都推進課　', '', '渡辺　裕子', 0, '2015-04-19 12:17:24.584284');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nagaoka@ym.n-c-c.co.jp', 0, '株式会社日本コンピュータコンサルタント', '企画室　営業企画', '', '長岡　永典', 0, '2015-04-19 12:17:25.142871');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tsujibayashi.masato@toshiba-tpsc.co.jp', 0, '東芝プラントシステム株式会社', '技術企画・開発部　', '', '辻林　正人', 0, '2015-04-19 12:17:26.747422');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shimada.masayoshi@canon-ecology.co.jp', 0, 'キヤノンエコロジーインダストリー株式会社', '生産統括センター　技術部　生産技術課', '', '島田　真由', 0, '2015-04-19 12:17:28.059783');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yo-ino@tokyoink.co.jp', 0, '東京インキ株式会社', '営業部門　営業統括部', '', '井野　嘉紀', 0, '2015-04-19 12:17:28.692298');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yamashin-b@hb.tp1.jp', 0, '有限会社ヤマシン貿易', '', '', '玉川　博康', 0, '2015-04-19 12:17:29.060264');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'sano.koki@ebara.com', 0, '株式会社荏原製作所', '', '', '佐野　貴紀', 0, '2015-04-19 12:17:29.543559');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'a.momoi.zh@azbil.com', 0, 'アズビル株式会社', '東京営業所　2グループ', '', '百井　章文', 0, '2015-04-19 12:17:29.80267');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'inagakikz@sekisuijushi.co.jp', 0, '積水樹脂株式会社', '評価・環境管理部　安全・品質・環境グループ', '', '稲垣　和美', 0, '2015-04-19 12:17:30.190086');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yonemoto-shinji@motec-co.jp', 0, '株式会社エムオーテック', '東京本店　工事部', '', '米元　真治', 0, '2015-04-19 12:19:02.732406');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shigeki.zaima@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械二部　営業一課', '', '財満　栄樹', 0, '2015-04-19 12:19:07.827315');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Toru.Taniguchi@ndc-group.co.jp', 0, '日本ドライケミカル株式会社', '設備・メンテナンス営業統括本部　開発営業部', '', '谷口　徹', 0, '2015-04-19 12:20:03.994951');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kimura-makoto@msc.mitsuba-gr.com', 0, '株式会社ミツバサンコーワ', 'KS事業推進室', '', '木村　実', 0, '2015-04-19 12:20:10.905914');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kameyama.teruhiko@yellow.plala.or.jp', 0, '株式会社亀山', '', '', '亀山　照彦', 0, '2015-04-19 12:20:15.568993');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-takamizawa@toriik.co.jp', 0, '鳥居化成株式会社', '技術部', '', '高見沢　栄幸', 0, '2015-04-19 12:20:38.458706');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'aso@m-profix.co.jp', 0, '株式会社明報プロフィックスアソシエイツ', 'トータルマーケティング部', '', '麻生　茉利', 0, '2015-04-19 12:20:55.811191');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kaji@seikitokyu.co.jp', 0, '世紀東急工業株式会社', '事業推進本部　製品事業部', '', '鍛冶　秀充', 0, '2015-04-19 12:20:57.567377');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nobuhito.okamoto@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　技術部', '', '岡本　信人', 0, '2015-04-19 12:20:58.33107');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'katsu@hitachizosen.co.jp', 0, '日立造船', '環境・プラント・エネルギー部', '', '勝　駿宇', 0, '2015-04-19 12:20:59.283594');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'r.souya@yasujima.co.jp', 0, '株式会社ヤスジマ', '営業部', '', '層谷　亮介', 0, '2015-04-19 12:21:06.291153');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'murata@nissin-ind.co.jp', 0, '日新工業株式会社', '第一非鉄金属部　営業課', '', '村田　敦志', 0, '2015-04-19 12:21:15.234007');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ynqyuki@mmc.co.jp', 0, '三菱マテリアル株式会社　電子材料事業カンパニー', '化成営業部　フッ素グループ', '', '名雪　靖志', 0, '2015-04-19 12:21:16.368972');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mi-koiwai@kakuto.co.jp', 0, '株式会社　角藤', '土木・基礎工事部　工事課', '', '小岩井　充', 0, '2015-04-19 12:21:40.976238');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'harada@ohkita-recycle.co.jp', 0, '株式会社大北リサイクル', '', '', '原田　佳角', 0, '2015-04-19 12:21:41.365429');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'Minoru.Ogawa@morita119.com', 0, '株式会社モリタエコノス', '製造部　生産技術課', '', '小川　実', 0, '2015-04-19 12:21:48.569562');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hnamura@rle.ricoh.co.jp', 0, 'リコーリース株式会社　首都圏支社', '東京営業一課', '', '南村　仁司', 0, '2015-04-19 12:22:16.489574');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hidenori_yoshida@rentec.orix.co.jp', 0, 'オリックス・レンテック株式会社', '東京開発営業部　測定器営業第1チーム', '', '吉田　秀典', 0, '2015-04-19 12:22:17.384006');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y-egawa@aitech.co.jp', 0, '株式会社アイテク', '設備事業部　営業部', '', '恵川　幸男', 0, '2015-04-19 12:22:18.618303');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k.katoono@jobankaihatsu.co.jp', 0, '常磐開発株式会社', '環境本部', '', '上遠野　謙二', 0, '2015-04-19 12:23:39.372239');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mori@tso-int.co.jp', 0, 'TSO International 株式会社', '', '', '森　育三', 0, '2015-04-19 12:23:39.773126');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakamura-s@sc-cement.co.jp', 0, '住商セメント株式会社', '', '', '中村　哲', 0, '2015-04-19 12:23:43.589376');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mitsuhiro.washino@inoac.co.jp', 0, '株式会社イノアック住環境', '技術開発部', '', '鷲野　光弘', 0, '2015-04-19 12:23:44.654298');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shirai16@khaki.plala.or.jp', 0, '', '', '', '白井　孝夫', 0, '2015-04-19 12:23:45.063323');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kubo-y@tge.co.jp', 0, '東京ガス・エンジニアリング株式会社', 'エンジニアリング本部　土壌環境部', '', '久保　好則', 0, '2015-04-19 12:23:46.483761');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'fujimura.hiroaki@daiwaroyal.jp', 0, 'ダイワロイヤル株式会社', '管理本部　人事総務部', '', '藤村　浩彰', 0, '2015-04-19 12:24:06.156821');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shimamoto_takashi@zenitaka.co.jp', 0, '銭高組', '土木事業本部　受注推進部　受注責任課', '', '島元　隆史', 0, '2015-04-19 12:24:12.990388');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'aihara-jiro@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '相原　次郎', 0, '2015-04-19 12:24:32.40664');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ayano-koruri@motec-co.jp', 0, '株式会社エムオーテック', '営業第一部　営業第一課', '', '綾野　こるり', 0, '2015-04-19 12:24:44.163788');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'anzenseikatsu@city.chiyoda.lg.jp', 0, '千代田区環境安全部', '安全生活課　公害指導係', '', '関根　昇', 0, '2015-04-19 12:24:44.440017');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yokoi-hideki@motec-co.jp', 0, '株式会社エムオーテック', '営業本部　技術センター', '', '横井　秀樹', 0, '2015-04-19 12:25:18.989456');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'khirai@smrc.co.jp', 0, '三井住建道路株式会社', '営業本部', '', '平井　克政', 0, '2015-04-19 12:25:25.483117');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tanaka.a53.yoshihiro@log.nssmc.com', 0, '日鉄住金物流株式会社', '国内営業本部　環境・原料部', '', '田中　義浩', 0, '2015-04-19 12:25:26.364685');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kazuhiro.inaba@kubota.com', 0, '株式会社クボタ建機ジャパン', '広域営業部', '', '稲葉　和宏', 0, '2015-04-19 12:25:34.298333');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'r34_take@yahoo.co.jp', 0, '有限会社保坂住建', '産廃事業部', '', '保坂　岳彦', 0, '2015-04-19 12:25:34.965465');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'mogi@zushi-tec.com', 0, '伊豆電設株式会社', '', '', '茂木　隆', 0, '2015-04-19 12:25:38.283977');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kouji8@taiyoukiso.co.jp', 0, '太洋基礎工業株式会社　東京支店', '工事部', '', '加藤　康徳', 0, '2015-04-19 12:25:38.5534');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't.aoki@morooka.co.jp', 0, '株式会社諸岡', '営業推進室', '', '青木　貴洋', 0, '2015-04-19 12:25:41.499384');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'esaitou@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '齋藤　英司', 0, '2015-04-19 12:25:43.121347');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'aohba@rle.ricoh.co.jp', 0, 'リコーリース株式会社', '首都圏支社　東京営業二課', '', '大庭　章生', 0, '2015-04-19 12:25:44.781912');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kkosasayama@mecx.co.jp', 0, '株式会社MECX', '営業部', '', '小笹山　要', 0, '2015-04-19 12:25:46.417693');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, '26642u@ube-ind.co.jp', 0, '宇部丸善ポリエチレン株式会社', '営業部', '', '竹下　博之', 0, '2015-04-19 12:25:48.477834');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nagatani_tetsuya@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社　関東支社', '千葉南支店', '', '永谷　哲也', 0, '2015-04-19 12:25:58.306414');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yoshimura@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '吉村　悠', 0, '2015-04-19 12:26:09.507455');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'isomoto@okasanlivic.co.jp', 0, '岡三リビック株式会社', '補強土事業部　ジオテクノ室　', '', '磯本　勇樹', 0, '2015-04-19 12:26:15.849664');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'daido@okasanlivic.co.jp', 0, '岡三リビック株式会社', '関東支社　営業五課', '', '大道　直樹　', 0, '2015-04-19 12:26:21.785611');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yamamoto.kazuhisa@imagiire.co.jp', 0, '株式会社イマギイレ', '環境リサイクル営業部　製鉄・鉱山担当', '', '山本　和久', 0, '2015-04-19 12:26:22.273208');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'toshinobu.uchiyama@inoac.co.jp', 0, '株式会社イノアックコーポレーション', 'グローバル営業本部　産業資材営業部　東京支店', '', '内山　利信', 0, '2015-04-19 12:26:25.927894');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ryoko.hatori@jfe-shoji.co.jp', 0, 'JFE商事株式会社', '東部鉄鋼本部　厚板部　厚板室', '', '羽鳥　涼子', 0, '2015-04-19 12:26:26.754265');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kousuke_kawai@yanmar.co.jp', 0, 'ヤンマー建機株式会社', '西部営業部　大阪支店　販売グループ', '', '河井　浩輔', 0, '2015-04-19 12:26:27.872306');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'kanou.s.komei@gmail.com', 0, '公明党', '墨田区議会', '', '加納　進', 0, '2015-04-19 12:26:33.510897');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yoshiaki.miyazako@rasaco.co.jp', 0, 'ラサ商事株式会社', '産業機械三部　営業一課', '', '宮廻　嘉晃', 0, '2015-04-19 12:26:45.335995');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'suzuki-h@yonei.co.jp', 0, '株式会社ヨネイ', '建設機械ユニット', '', '鈴木　裕人', 0, '2015-04-19 12:26:45.612631');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 't.ono@me.tomo-e.co.jp', 0, '巴工業株式会社', '機械本部　産業機械営業部', '', '小野　隆扶美', 0, '2015-04-19 12:26:49.248199');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakanishi-ka@d-kjk.co.jp', 0, 'コマダ樹脂工業株式会社', '東京支店', '', '仲西　員実', 0, '2015-04-19 12:26:49.626737');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'onokensetu@kph.biglobe.ne.jp', 0, '尾野建設工業株式会社', '', '', '尾野　稔', 0, '2015-04-19 12:26:58.498221');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ochi@hirosecld.co.jp', 0, '株式会社ヒロセ', '', '', '越智　正志', 0, '2015-04-19 12:27:00.301663');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'iwata.ma@jcity.maeda.co.jp', 0, '前田建設工業株式会社', '土木事業本部　土木技術部', '', '岩田　将英', 0, '2015-04-19 12:27:01.497846');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nakayama_ichiro@jpncat.com', 0, 'キャピタラーイーストジャパン株式会社', 'セールスプロモーション部　プロモーション課', '', '中山　一郎', 0, '2015-04-19 12:27:06.213939');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's-kankyo@matsue-kg.co.jp', 0, '有限会社松江興業', '環境管理推進室', '', '榎本　伯一', 0, '2015-04-19 12:27:06.695129');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yamaguchi@yamaguchidoken.com', 0, '有限会社山口土建', '', '', '山口　智久', 0, '2015-04-19 12:27:10.958237');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'torii.haruki@ad-hzm.co.jp', 0, '株式会社安藤・間', '土木事業本部', '', '鳥居　春樹', 0, '2015-04-19 12:27:17.365569');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'watanabe.AW1929@tokyu-cnst.co.jp', 0, '東急建設株式会社', '官庁営業統括部　土木技術提案部', '', '渡邉　政和', 0, '2015-04-19 12:27:18.141497');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'hitoshi.fujita@nipponroad.co.jp', 0, '日本道路株式会社', '生産技術本部　生産企画部', '', '藤田　仁', 0, '2015-04-19 12:27:18.49139');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'matsuoka-y@yamazaki.co.jp', 0, '山崎建設株式会社', '技術部', '', '松岡　芳朗', 0, '2015-04-19 12:27:29.771967');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'oshima@ypat.gr.jp', 0, '山口特許事務所', '', '', '大島　信之', 0, '2015-04-19 12:27:41.212989');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'shiono@oohasi.co.jp', 0, '株式会社オオハシ', '', '', '塩野　武男', 0, '2015-04-19 12:27:43.585501');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 's_fukumori@putiputi.co.jp', 0, '川上産業株式会社　東京営業所', '開発営業部　お客様係', '', '福盛　晋也', 0, '2015-04-19 12:27:43.855485');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'fac002@ndmc.ac.jp', 0, '防衛医科大学校', '事務局　経理部　施設課', '', '高橋　辰生', 0, '2015-04-19 12:27:47.081629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'suda@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業部　営業課', '', '須田　健介', 0, '2015-04-19 12:27:47.328649');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'satou@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '佐藤　隆浩', 0, '2015-04-19 12:27:47.523629');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'k.koike@nikko-scale.com', 0, '株式会社日本製衡所　大宮営業所', '営業本部　営業課', '', '小池　広大', 0, '2015-04-19 12:27:47.71532');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'tiijima@kankyo-kanri.co.jp', 0, '株式会社環境管理センター', 'プロジェクト推進部　応用技術グループ', '', '飯島　健', 0, '2015-04-19 12:27:51.057286');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'y-nakanishi@kitamuraindustry.co.jp', 0, '株式会社キタムラ産業　関東営業所', '', '', '中西　康裕', 0, '2015-04-19 12:27:54.97628');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'yanme@toriton.or.jp', 0, '公益財団法人鳥取県産業振興機構', '企業支援部　販路開拓グループ', '', '安梅　功哲', 0, '2015-04-19 12:27:56.955256');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'nfukuda@harasho.co.jp', 0, '株式会社原商', '営業開発部', '', '福田　直明', 0, '2015-04-19 12:27:57.236178');
INSERT INTO t_sendinfo (send_id, to_address, status, com_name, sec_name1, sec_name2, per_name, send_chk, regist_date) VALUES (53271, 'ikuo_endou@it.ihigrp.ihi.co.jp', 0, '株式会社IHIトレーディング', '第一営業部　機器グループ', '', '遠藤　育雄', 0, '2015-04-19 12:28:01.548493');


--
-- Name: m_base_pkey; Type: CONSTRAINT; Schema: public; Owner: malmaga_system; Tablespace: 
--

ALTER TABLE ONLY m_base
    ADD CONSTRAINT m_base_pkey PRIMARY KEY (user_id);


--
-- Name: m_ctl_pkey; Type: CONSTRAINT; Schema: public; Owner: malmaga_system; Tablespace: 
--

ALTER TABLE ONLY m_ctl
    ADD CONSTRAINT m_ctl_pkey PRIMARY KEY (cmt_id);


--
-- Name: m_sendman_pkey; Type: CONSTRAINT; Schema: public; Owner: malmaga_system; Tablespace: 
--

ALTER TABLE ONLY m_sendman
    ADD CONSTRAINT m_sendman_pkey PRIMARY KEY (send_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

