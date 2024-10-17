--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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
-- Name: comercialize; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA comercialize;


ALTER SCHEMA comercialize OWNER TO postgres;

--
-- Name: cliente_idCliente_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."cliente_idCliente_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."cliente_idCliente_seq" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.cliente (
    "idCliente" integer DEFAULT nextval('comercialize."cliente_idCliente_seq"'::regclass) NOT NULL,
    nome character varying(60) NOT NULL,
    cpf character varying(15) NOT NULL,
    email character varying(100) NOT NULL,
    telefone character varying(20) NOT NULL,
    sexo character(1) NOT NULL,
    "idEndereco" integer NOT NULL
);


ALTER TABLE comercialize.cliente OWNER TO postgres;

--
-- Name: endereco_idEndereco_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."endereco_idEndereco_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."endereco_idEndereco_seq" OWNER TO postgres;

--
-- Name: endereco; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.endereco (
    "idEndereco" integer DEFAULT nextval('comercialize."endereco_idEndereco_seq"'::regclass) NOT NULL,
    pais character varying(60) NOT NULL,
    estado character varying(60) NOT NULL,
    cidade character varying(60) NOT NULL,
    cep character varying(10) NOT NULL,
    bairro character varying(60) NOT NULL,
    rua character varying(60) NOT NULL,
    numero bigint NOT NULL,
    complemento character varying(60)
);


ALTER TABLE comercialize.endereco OWNER TO postgres;

--
-- Name: estoque_idEstoque_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."estoque_idEstoque_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."estoque_idEstoque_seq" OWNER TO postgres;

--
-- Name: estoque; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.estoque (
    "idEstoque" integer DEFAULT nextval('comercialize."estoque_idEstoque_seq"'::regclass) NOT NULL,
    nome character varying(60) NOT NULL,
    capacidade bigint NOT NULL
);


ALTER TABLE comercialize.estoque OWNER TO postgres;

--
-- Name: estoque_produto_idEstoque_Produto_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."estoque_produto_idEstoque_Produto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."estoque_produto_idEstoque_Produto_seq" OWNER TO postgres;

--
-- Name: estoque_produto; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.estoque_produto (
    "idEstoque_Produto" integer DEFAULT nextval('comercialize."estoque_produto_idEstoque_Produto_seq"'::regclass) NOT NULL,
    "idProduto" integer NOT NULL,
    "idEstoque" integer NOT NULL,
    quantidade bigint NOT NULL,
    data_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE comercialize.estoque_produto OWNER TO postgres;

--
-- Name: itensVendidos_idItensVendidos_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."itensVendidos_idItensVendidos_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."itensVendidos_idItensVendidos_seq" OWNER TO postgres;

--
-- Name: itensVendidos; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize."itensVendidos" (
    "idItensVendidos" integer DEFAULT nextval('comercialize."itensVendidos_idItensVendidos_seq"'::regclass) NOT NULL,
    "idVenda" integer NOT NULL,
    "idProduto" integer NOT NULL,
    "qtdVendida" bigint NOT NULL
);


ALTER TABLE comercialize."itensVendidos" OWNER TO postgres;

--
-- Name: produto_idProduto_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."produto_idProduto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."produto_idProduto_seq" OWNER TO postgres;

--
-- Name: produto; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.produto (
    "idProduto" integer DEFAULT nextval('comercialize."produto_idProduto_seq"'::regclass) NOT NULL,
    nome character varying(60) NOT NULL,
    descricao character varying(150),
    valor numeric(10,2) NOT NULL
);


ALTER TABLE comercialize.produto OWNER TO postgres;

--
-- Name: usuario_idUsuario_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."usuario_idUsuario_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."usuario_idUsuario_seq" OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.usuario (
    "idUsuario" integer DEFAULT nextval('comercialize."usuario_idUsuario_seq"'::regclass) NOT NULL,
    "nomeUsuario" character varying(60) NOT NULL,
    senha character varying(100) NOT NULL,
    "ehAdm" smallint NOT NULL,
    login character varying(60) NOT NULL
);


ALTER TABLE comercialize.usuario OWNER TO postgres;

--
-- Name: venda_idVenda_seq; Type: SEQUENCE; Schema: comercialize; Owner: postgres
--

CREATE SEQUENCE comercialize."venda_idVenda_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE comercialize."venda_idVenda_seq" OWNER TO postgres;

--
-- Name: venda; Type: TABLE; Schema: comercialize; Owner: postgres
--

CREATE TABLE comercialize.venda (
    "idVenda" integer DEFAULT nextval('comercialize."venda_idVenda_seq"'::regclass) NOT NULL,
    "idCliente" integer NOT NULL,
    "idUsuario" integer NOT NULL,
    data_venda timestamp without time zone NOT NULL,
    valor numeric(10,2) NOT NULL,
    forma_pagamento character varying(20) NOT NULL
);


ALTER TABLE comercialize.venda OWNER TO postgres;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.cliente ("idCliente", nome, cpf, email, telefone, sexo, "idEndereco") FROM stdin;
1	Lelo	123.123.123-12	lelo@gmail.com	1324556-123	1	4
3	Lipe	45361283	1231@gmail.com	231243	1	3
4	Maria	743647243	maria@gmail.com	439285923	F	6
5	Lucas	4903984203	fhjdsjfk@gmail.com	126753761	M	2
6	Gaspar	23456789	dmakslm@gmail.com	9432840	M	2
7	Arthur	2324342	dhsfoi@gmail.com	456789865	M	2
\.


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.endereco ("idEndereco", pais, estado, cidade, cep, bairro, rua, numero, complemento) FROM stdin;
1	Brazil	SP	São Paulo	01000-000	Centro	Rua Exemplo	123	Apto 45
2	Brasil	Rio de Janeiro	Rio de Janeiro	22040-002	Copacabana	Rua Barata Ribeiro	233	Apartamento 45
3	Brasil	Minas Gerais	Belo Horizonte	30140-000	Funcionários	Avenida do Contorno	1234	Loja 1
4	Brasil	Bahia	Salvador	40010-000	Pelourinho	Rua Gregório de Matos	55	Andar 3
5	Brasil	Paraná	Curitiba	80010-000	Centro	Rua XV de Novembro	210	Escritório 1
6	Brasil	Santa Catarina	Brusque	34567-222	Santa Rita	Rua Sete de Setembro	2	Barateiro
7	Brasil	Santa Catarina	Brusque	34567-234	Centro	Rua Germano Schaeffer	7	Archer
\.


--
-- Data for Name: estoque; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.estoque ("idEstoque", nome, capacidade) FROM stdin;
2	Estoque B	50
1	Estoque E	20
3	Estoque Z	10
\.


--
-- Data for Name: estoque_produto; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.estoque_produto ("idEstoque_Produto", "idProduto", "idEstoque", quantidade, data_atualizacao) FROM stdin;
4	2	2	90	2024-10-17 18:21:09.544347
5	5	3	56	2024-10-17 21:21:29.45
2	2	2	10	2024-10-17 18:38:34.067911
3	2	1	20	2024-10-17 18:39:07.254561
7	4	2	10	2024-10-17 18:48:58.602899
\.


--
-- Data for Name: itensVendidos; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize."itensVendidos" ("idItensVendidos", "idVenda", "idProduto", "qtdVendida") FROM stdin;
\.


--
-- Data for Name: produto; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.produto ("idProduto", nome, descricao, valor) FROM stdin;
2	Nintendo Switch	Console Bom	2000.23
4	PC gamer	PC gamer mais ou menos	5000.96
5	Pastel de Camarão	Homenagem ao gaspar	30.32
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.usuario ("idUsuario", "nomeUsuario", senha, "ehAdm", login) FROM stdin;
1	Leonardo	$2a$11$cVWPZengUGUg4YPgABVHpOHiBOAwI9cNw0aCP94/J3XPUkgsR54oK	0	oel
\.


--
-- Data for Name: venda; Type: TABLE DATA; Schema: comercialize; Owner: postgres
--

COPY comercialize.venda ("idVenda", "idCliente", "idUsuario", data_venda, valor, forma_pagamento) FROM stdin;
\.


--
-- Name: cliente_idCliente_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."cliente_idCliente_seq"', 7, true);


--
-- Name: endereco_idEndereco_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."endereco_idEndereco_seq"', 3, true);


--
-- Name: estoque_idEstoque_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."estoque_idEstoque_seq"', 3, true);


--
-- Name: estoque_produto_idEstoque_Produto_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."estoque_produto_idEstoque_Produto_seq"', 7, true);


--
-- Name: itensVendidos_idItensVendidos_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."itensVendidos_idItensVendidos_seq"', 1, false);


--
-- Name: produto_idProduto_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."produto_idProduto_seq"', 5, true);


--
-- Name: usuario_idUsuario_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."usuario_idUsuario_seq"', 1, true);


--
-- Name: venda_idVenda_seq; Type: SEQUENCE SET; Schema: comercialize; Owner: postgres
--

SELECT pg_catalog.setval('comercialize."venda_idVenda_seq"', 1, false);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY ("idCliente");


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY ("idEndereco");


--
-- Name: estoque estoque_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY ("idEstoque");


--
-- Name: estoque_produto estoque_produto_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT estoque_produto_pkey PRIMARY KEY ("idEstoque_Produto");


--
-- Name: itensVendidos itensVendidos_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "itensVendidos_pkey" PRIMARY KEY ("idItensVendidos");


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY ("idProduto");


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY ("idUsuario");


--
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY ("idVenda");


--
-- Name: venda FK_Cliente; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT "FK_Cliente" FOREIGN KEY ("idCliente") REFERENCES comercialize.cliente("idCliente");


--
-- Name: cliente FK_ENDERECO; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.cliente
    ADD CONSTRAINT "FK_ENDERECO" FOREIGN KEY ("idEndereco") REFERENCES comercialize.endereco("idEndereco");


--
-- Name: estoque_produto FK_ESTOQUE; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT "FK_ESTOQUE" FOREIGN KEY ("idEstoque") REFERENCES comercialize.estoque("idEstoque");


--
-- Name: estoque_produto FK_PRODUTO; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT "FK_PRODUTO" FOREIGN KEY ("idProduto") REFERENCES comercialize.produto("idProduto");


--
-- Name: itensVendidos FK_PRODUTOS; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "FK_PRODUTOS" FOREIGN KEY ("idProduto") REFERENCES comercialize.produto("idProduto");


--
-- Name: venda FK_USUARIO; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT "FK_USUARIO" FOREIGN KEY ("idUsuario") REFERENCES comercialize.usuario("idUsuario");


--
-- Name: itensVendidos FK_VENDAS; Type: FK CONSTRAINT; Schema: comercialize; Owner: postgres
--

ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "FK_VENDAS" FOREIGN KEY ("idVenda") REFERENCES comercialize.venda("idVenda");


--
-- PostgreSQL database dump complete
--

