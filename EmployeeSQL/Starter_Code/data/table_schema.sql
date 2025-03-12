--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-11 18:27:28

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 17040)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(10) NOT NULL,
    dept_name character varying(20)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17045)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no character varying,
    dept_no character varying
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17052)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying,
    emp_no character varying NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17059)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    emp_title character varying,
    birth_date date,
    first_name character varying,
    last_name character varying,
    sex "char",
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17066)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary numeric
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17073)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 4715 (class 2606 OID 17044)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 4717 (class 2606 OID 17086)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 4719 (class 2606 OID 17065)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 4721 (class 2606 OID 17072)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 4723 (class 2606 OID 17079)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


-- Completed on 2025-03-11 18:27:28

--
-- PostgreSQL database dump complete
--

