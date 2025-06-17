--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

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
-- Name: todo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.todo (
    user_id integer NOT NULL,
    id character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    description text DEFAULT ''::text,
    status boolean DEFAULT false,
    deadline bigint NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.todo (user_id, id, title, description, status, deadline) FROM stdin;
1	841/21	Complete Tailwing	Make a basic project with Tailwing	t	1748390400000
1	321/11	Complete React.js	Complete fundamentals of React and make a basic project	t	1747958400000
1	345/12	Complete MongoDB	Basics of MongoDB and DBMS in depth study	t	1748217600000
1	234/41	Upgrade the React TODO application	Add an edit TODO feature	t	1748131200000
1	231/12	Use State Management in TODO project	Use Jotai for efficient state management	t	1748390400000
2	234/21	Tailwing tutorial	Make a basic Tailwing tutorial for 0-100 cohort	f	1748649600000
2	234/64	Postgress and Prisma video	Make offline doubt videos for Postgress and Prisma	f	1749686400000
2	221/123	AWS tutorial	Make an AWS tutorial and a mid-level project for 0-100 cohort	t	1748563200000
1	234/52	Go to Gym	Go to Gym from 6-9	t	1751241600000
1	231/43	Analysis dashboard	Add an analysis dashboard for filtering todos based on some metrics	t	1749513600000
10	34324	saf	fdasfdsf	t	39832819200000
1	342/11	Learn Docker	Learn basics of docker and deploy a containerized app.	f	1750377600000
3	67f71e55-41e7-44f9-ac91-0c5e98358da3	Review unit tests	Review unit tests using TS.	f	1779104434440
1	231/32	Complete the Paytm project	Complete the paytm project with react and tailwing for resume	f	1750896000000
1	231/41	Complete AWS tutorial	Launch an EC2 instance, setup node on AWS machine and run the process. Learn about nginx.	t	1749686400000
3	af3c334a-652b-425e-be20-c0651cc8abd1	Plan API	Plan API with comments.	t	1777025318210
3	f6ae07e7-7c9e-4b0c-9792-d1d356860458	Write email template	Write email template and document.	t	1776990123474
3	07269840-7823-4723-bcb8-e382884588e4	Review email template	Review email template with comments.	f	1756790545668
3	50370ade-9dd7-4aba-941a-6b77d39e6566	Plan blog post	Plan blog post for project X.	t	1765124638874
3	57c52fd1-0f26-472c-98bf-c3475d8ee8ba	Deploy UI mockup	Deploy UI mockup before EOD.	f	1780803020263
3	a54b6857-a720-41fe-a214-ea2ef0867301	Review database schema	Review database schema and document.	t	1753845157615
3	75384cce-bdfe-4683-bf6d-30b9bcbb0377	Write login flow	Write login flow using TS.	f	1750471168494
3	96684460-6572-4c23-9b6b-51d20224e8ec	Write database schema	Write database schema in draft.	f	1776042843363
3	3a06369a-3b04-4569-9a3f-5abccdd8627b	Complete login flow	Complete login flow using TS.	f	1762487756437
3	b7cc2849-82e3-4518-8ce7-f8b7c9b12c12	Complete email template	Complete email template in draft.	t	1776903697567
3	6161a14c-0a7c-4eb0-b5fe-51dad43a9d16	Test Dockerfile	Test Dockerfile before EOD.	f	1750746562440
3	969d8b8c-4dea-430f-9db2-58f51ef01729	Deploy UI mockup	Deploy UI mockup using TS.	f	1779536353368
3	5b3f821d-9732-45c3-a656-21e8859b3311	Complete database schema	Complete database schema before EOD.	t	1752376872594
3	8ae48902-991c-4766-bd34-27459b07a838	Write email template	Write email template for project X.	t	1760180027262
3	beca9371-7f2d-4732-82cc-ff99be94de4e	Fix login flow	Fix login flow before EOD.	t	1773936010320
3	4ce33c50-8672-47b6-8ef5-135aeca72169	Plan unit tests	Plan unit tests before EOD.	t	1756810797592
3	58fab885-dc27-4f7b-8a8a-334f43ec4c65	Complete UI mockup	Complete UI mockup with team.	f	1771190732683
3	8e379dec-7c98-429f-9f7d-4193d2b94a41	Fix email template	Fix email template and document.	f	1763855626791
3	c9fb6ddd-e375-46ed-b636-f42cdaa25a47	Deploy UI mockup	Deploy UI mockup and document.	t	1775591592870
3	e9ffd77c-a680-4b24-9d0d-e0e3b863f7a0	Complete email template	Complete email template with team.	f	1751437364379
3	15be17bb-9e46-4730-beba-79ae0d210282	Test API	Test API in draft.	t	1762630036512
3	0e323ce2-400e-46d8-a047-87f272c8d15c	Fix UI mockup	Fix UI mockup for project X.	t	1756923673587
3	0bfc4151-30f0-4d99-afaa-75ccff052c07	Design database schema	Design database schema with team.	f	1752482166055
3	4fd50339-0f1e-41cc-afd6-e8c636ff02f3	Design API	Design API using TS.	f	1763654999364
3	75494368-b4c0-4b24-8730-b6216e73c5c9	Deploy database schema	Deploy database schema with comments.	f	1752980035050
3	22998fd7-f11c-40e8-9b23-b7d50030b7bb	Complete login flow	Complete login flow with team.	f	1773022026994
3	1279605f-b8ea-4033-ba72-1b5823885741	Write email template	Write email template before EOD.	f	1774941618753
3	37b06961-3910-472b-9233-a464c56c9c1c	Write email template	Write email template in draft.	t	1781632006163
3	c3ae014a-f6ce-48e9-bb26-fb2d24ee44f2	Test blog post	Test blog post for project X.	t	1771432446147
3	053c2e3a-3661-4ffc-a0c9-1f55e52dd15f	Test Dockerfile	Test Dockerfile with comments.	f	1765417174372
3	57519515-9f78-4af2-be86-d68c61b44ce5	Write UI mockup	Write UI mockup with comments.	t	1771751116115
3	53a4d05b-1465-4622-a464-55c5118249a6	Write Dockerfile	Write Dockerfile with team.	t	1763667370337
3	ed474064-6db2-4abe-9671-352ca3aa1a31	Design unit tests	Design unit tests using TS.	t	1769860940515
3	e5abc9f0-0d93-4bdd-905c-3d3111a972a0	Review API	Review API using TS.	t	1757408928518
3	93580583-9e56-42f3-8712-8a996c377bbb	Test API	Test API in draft.	f	1761236244509
3	6621f40b-e3a3-4085-a407-61bb6a1db4a7	Deploy email template	Deploy email template before EOD.	f	1771275453792
3	db059410-de07-4ae5-af50-7fc6bd645b3a	Test API	Test API with team.	f	1767627311903
3	afbb3c6e-7738-4eb8-8d23-e56062de096d	Review unit tests	Review unit tests and document.	t	1767886146613
3	50b8470e-4265-449b-9142-482e3c3f9ac3	Fix unit tests	Fix unit tests using TS.	f	1773637477904
3	803396e1-c04e-4ae3-9946-eab7fac44df3	Write Dockerfile	Write Dockerfile for project X.	t	1756937963625
3	3d295cd1-b9e6-4bf2-a89b-b797bc61a634	Design blog post	Design blog post for project X.	t	1761000891319
3	d590e00b-f240-4a1e-a448-4bac5145d936	Deploy API	Deploy API and document.	f	1769314624669
3	b56625a9-2aad-43e5-b42c-791ab5bc22bf	Complete UI mockup	Complete UI mockup with team.	f	1751079563037
3	d7d616e8-fb3c-4686-90c1-780fb3e7a867	Plan login flow	Plan login flow before EOD.	t	1767007259767
3	653b0acb-f7be-4387-8b32-be8aaa471f7f	Complete database schema	Complete database schema before EOD.	f	1774050048618
3	7944f0c8-5bc5-434b-8f70-7bfb993dbf05	Plan unit tests	Plan unit tests for project X.	t	1752488370826
3	942f06ce-a4d3-47ee-9294-2a928a23029f	Write database schema	Write database schema with comments.	f	1753878411046
3	4a1ad21a-d7a9-40fa-8687-18af4e8b569c	Deploy database schema	Deploy database schema before EOD.	f	1774616892082
3	055dd42c-3fa4-4474-ac3d-74db9aa9ae10	Plan Dockerfile	Plan Dockerfile in draft.	f	1767967884121
3	35d3ab13-51bd-4e72-ab6c-3f7914bdfde3	Test login flow	Test login flow using TS.	f	1760911341889
3	2411f4b1-ce98-4175-9b88-e836052d2d14	Design unit tests	Design unit tests for project X.	t	1756535002399
3	d3f32977-6284-4c7e-9b90-d0b4900c10ae	Test database schema	Test database schema before EOD.	t	1778949033091
3	7c88c839-478a-40e3-9ec0-6213da71cef2	Plan database schema	Plan database schema using TS.	t	1780898280065
3	c61e0e81-cd33-4e3d-8fec-fce76c78870d	Review API	Review API with comments.	t	1774367068992
3	b3eb3643-14ba-401a-8ef6-cba76823fa3c	Design database schema	Design database schema before EOD.	f	1754373466234
3	0108dd33-8dac-43f7-bb29-2d944015f3af	Review UI mockup	Review UI mockup with comments.	f	1776968269987
3	74168c44-3e17-4483-830f-2e790d51a8da	Deploy blog post	Deploy blog post for project X.	t	1769948387914
3	678844d5-6915-4a6b-8f13-d462b52da1fb	Review email template	Review email template using TS.	t	1767915223913
3	173d4a80-921d-4f74-9289-83599b6139ed	Deploy database schema	Deploy database schema with team.	t	1773763211253
3	b49e3b9c-6c1e-480e-80f1-0235aeb67318	Fix database schema	Fix database schema and document.	t	1751663229592
3	a66c48eb-f318-457e-9a03-454936ebf7d2	Test email template	Test email template with team.	f	1759548954824
3	5ee35dc4-f5c5-4646-b44f-70198e57b882	Test UI mockup	Test UI mockup in draft.	t	1775418655946
3	ca99d537-59c1-4a38-b143-2290913195c7	Test unit tests	Test unit tests with team.	f	1754450136914
3	68e8036b-647f-443d-b152-3d870a9d4855	Deploy unit tests	Deploy unit tests with team.	t	1775382255163
3	8f6c82a3-a52b-4035-b1b0-d7faf1e83279	Review Dockerfile	Review Dockerfile with comments.	t	1762264675387
3	3af8737f-58b8-4f5d-a84f-c31d2dd869b7	Test API	Test API with comments.	t	1759507093841
3	f65360fa-7e9e-4da8-9b54-5005c1482e58	Fix API	Fix API using TS.	f	1773836150766
3	8918d7a5-62d8-4d34-9272-2d885ef29a14	Plan API	Plan API and document.	t	1771297411261
3	7f40bb5a-83b8-46d3-bf32-85a984a407bb	Review API	Review API with comments.	f	1778139888523
3	f9873ee7-6555-4e95-b11c-d93745233064	Complete UI mockup	Complete UI mockup in draft.	t	1778529549292
3	b626e980-455d-42b3-9443-b46a224c6b68	Design database schema	Design database schema using TS.	t	1777361184228
3	1ffe35fc-f40e-4790-9a5b-0e37a5902de4	Review API	Review API before EOD.	f	1751406194303
3	ee4a2ac6-2e10-4e78-8e1e-1d2bb93a6e41	Review Dockerfile	Review Dockerfile and document.	f	1762837496708
3	3034b08f-9d97-436b-b267-d2bc25b6a24b	Design blog post	Design blog post for project X.	t	1754867353558
3	8f733ab6-c69b-4013-9303-6b2c8e3611e1	Design UI mockup	Design UI mockup for project X.	t	1765424971176
3	6c46e8f2-cae8-493d-b4af-45104e33df9e	Fix unit tests	Fix unit tests using TS.	f	1763734486635
3	1ef09c91-f2a2-4183-a682-507b900d1abb	Deploy blog post	Deploy blog post for project X.	f	1759818497409
3	a870d11d-511d-4c4a-a3e5-0f05ac4644e3	Deploy API	Deploy API using TS.	t	1768760594151
3	297aa5e2-04d3-49a1-a49d-f80d6821b52e	Review UI mockup	Review UI mockup using TS.	t	1763491870993
3	f105faad-e02b-47d4-8432-7ab93c72554d	Write unit tests	Write unit tests with comments.	t	1762896874562
3	a315e93f-9164-4949-8e03-d25ded8b3563	Design Dockerfile	Design Dockerfile with team.	f	1764916790592
3	07367c4f-6034-4f9e-8973-ad84d4d8b75d	Test blog post	Test blog post in draft.	f	1767586718205
3	ad68e2f9-dca5-463c-bb37-ab1756b0bf13	Review unit tests	Review unit tests and document.	f	1759584370698
3	a84b1135-c16a-42be-b244-182b8981f2d7	Write unit tests	Write unit tests in draft.	t	1768328636492
3	cca032a6-5673-4c84-a9ea-ddb80508705e	Write database schema	Write database schema with comments.	t	1778361848235
3	152a35b8-949f-400b-8020-99fcfd3b36e2	Plan Dockerfile	Plan Dockerfile and document.	t	1771275247254
3	2051db63-fcd5-4278-a99c-210780aec69a	Fix login flow	Fix login flow for project X.	t	1753352933376
3	4164388d-a01a-42d6-b2e1-cc9b9c81b70e	Plan database schema	Plan database schema using TS.	f	1779638393046
3	3ed22140-16bf-46c1-adeb-ff555ad7dcf8	Write login flow	Write login flow with team.	f	1757870359058
3	e9342108-7ad9-4cd8-934f-a2eaed371887	Fix email template	Fix email template for project X.	f	1778292673969
3	dca72e3b-4c4f-4188-b2fe-6d09060aa20b	Design UI mockup	Design UI mockup using TS.	f	1769695065117
3	fef1e07b-5298-483c-8f7c-8548cb34d0a2	Design email template	Design email template with comments.	f	1764656072262
3	5adef708-6c1d-4642-a7e0-0299d68d4ef9	Test UI mockup	Test UI mockup with team.	f	1755814364894
3	2ac97813-d89a-4f04-a9c3-b4bf539ed232	Review API	Review API in draft.	f	1752111682656
3	5378b11b-f33d-4809-bf23-39b34e565cd1	Deploy unit tests	Deploy unit tests before EOD.	f	1780592839759
3	e446670a-766f-4d4b-865a-7b8b2d4ff936	Deploy Dockerfile	Deploy Dockerfile and document.	f	1774233609875
3	cca9267b-a1f3-448f-b283-076cf1d0a338	Design UI mockup	Design UI mockup using TS.	f	1762589694804
3	25933cf4-bbcc-40a4-a69f-16ae15bdc9a7	Review database schema	Review database schema using TS.	t	1763042165484
3	77512d07-29cb-4a01-82ab-d3e5e6e22550	Plan email template	Plan email template with team.	f	1753300947470
3	7c1e578e-5611-40df-8cdc-f598e96d05cc	Deploy API	Deploy API using TS.	t	1765315955211
3	2f74377c-6aa4-4eca-8775-d5dc84f436fa	Complete blog post	Complete blog post with team.	f	1758276637266
3	f647f052-9edc-4b4e-873d-1e97f3ea7907	Write unit tests	Write unit tests for project X.	t	1775457852004
3	68216617-0db4-460b-baa7-7b7e66baae80	Write UI mockup	Write UI mockup with comments.	t	1753188057052
3	b79625d2-3055-443e-b91e-33021c30862f	Test unit tests	Test unit tests with team.	t	1778407495795
3	60a53cf6-b159-4386-80f5-0915e9d6c7f8	Design email template	Design email template in draft.	t	1751336490822
3	43842526-059e-4843-9eaa-3e35e24126de	Review email template	Review email template for project X.	t	1775011141626
3	ddaa16b4-9c7f-4eb3-b6f8-d0bd17021744	Design Dockerfile	Design Dockerfile and document.	f	1759723663204
3	08d66ff7-5830-4562-8f86-0701b2f84e34	Design login flow	Design login flow with team.	f	1765787378271
3	273a56a2-2710-4a54-b2bb-947daa60581e	Review database schema	Review database schema for project X.	f	1757422368679
3	aa847f6b-69ce-484b-a968-d50dadaf7498	Complete API	Complete API for project X.	t	1752896706522
3	c3913e2a-226f-4fcd-a7d5-f9cfa4de34f9	Write login flow	Write login flow using TS.	t	1762833890859
3	d32ed479-77e6-4fa2-a20a-e14199b6df25	Review API	Review API and document.	f	1757686773464
3	46e845ff-1a5e-4cb3-a105-c90a7aaff90a	Test UI mockup	Test UI mockup in draft.	t	1774933837062
3	3dc09644-7674-4bc2-a2f6-d96b1573f03c	Test Dockerfile	Test Dockerfile with team.	f	1763484307244
3	5427ca92-9155-432a-8424-edce521caf8f	Fix email template	Fix email template and document.	t	1762798236042
3	82a1038a-8040-4784-872c-e196f0003d21	Review database schema	Review database schema and document.	f	1771744992912
3	326775f0-f23b-430c-bef0-a605e0eb6758	Design Dockerfile	Design Dockerfile before EOD.	f	1780477583970
3	2ded6591-3525-4600-9738-1a1dafa653c6	Deploy blog post	Deploy blog post before EOD.	t	1774013455914
3	1f7eea17-27b5-4519-8dc7-532189ec14dc	Design unit tests	Design unit tests for project X.	t	1772427744671
3	417e617a-039e-436a-9177-f4300b9fef4f	Complete email template	Complete email template for project X.	f	1772403249868
3	94b087d7-b1f9-4c5f-868a-97769460a353	Plan email template	Plan email template using TS.	f	1778692625263
3	e82f5ac9-171a-4e69-a03b-bb126c506afb	Plan email template	Plan email template and document.	t	1778458968436
3	3547ce29-69e5-484a-9cba-4f4733e0e357	Complete API	Complete API with comments.	f	1752743458507
3	d288beeb-e64e-49e0-9c57-60207a25278d	Write blog post	Write blog post using TS.	t	1757327297563
3	136cc0ed-fb31-40f7-859b-647b54794406	Plan API	Plan API and document.	t	1759254337268
3	2c7e6053-c1c4-4730-bba5-3426cb03ef33	Plan database schema	Plan database schema with team.	t	1781257117820
3	7c51d93e-b376-4f16-8a7e-c3b7d379ec3d	Design UI mockup	Design UI mockup with comments.	t	1764576312065
3	ca7cc78d-55ab-4833-a635-41643e765325	Write login flow	Write login flow and document.	f	1758975149455
3	e8c57520-3c5e-40f5-bd18-098579d7b310	Test API	Test API and document.	f	1773315335995
3	f52f8d7f-ace6-46f1-94b9-ba34cd2b0510	Plan email template	Plan email template with team.	f	1755431364515
3	3623c932-6dbc-4920-90f9-db4cd0227b57	Test API	Test API with comments.	f	1763051794448
3	b1804185-26f7-4dcd-a3e5-ee6eb6f96130	Fix API	Fix API for project X.	t	1763665219634
3	85e77c36-7755-40dc-9646-63fd1910f13e	Write login flow	Write login flow with comments.	f	1768757265037
3	3b7ea683-a122-47d4-bcfa-b94a2c2fd284	Plan login flow	Plan login flow using TS.	f	1771086519794
3	7256d192-a799-4019-be17-933b02f41638	Review email template	Review email template with comments.	t	1753818477420
3	0794494a-13d9-4c14-8044-fdf96b13a942	Review email template	Review email template for project X.	f	1755237065251
3	507c7646-babf-4add-bd8e-2f0c4e3af49a	Complete blog post	Complete blog post for project X.	f	1761289416491
3	21a9b1da-38db-462c-8f58-883da6b7d1df	Write UI mockup	Write UI mockup in draft.	t	1768665466812
3	4f69ae05-2915-49c2-9018-080533bad8be	Deploy blog post	Deploy blog post with team.	t	1758144840696
3	c85e6b77-5d2c-426d-92bc-70b7ebd45416	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1764920996794
3	08d261f1-ed4c-4913-8c30-5ef5e1422913	Deploy email template	Deploy email template and document.	f	1752530186862
3	8900e0fd-2a32-41ef-ad3e-11f24f6ebd76	Fix API	Fix API and document.	t	1758063859130
3	a24165b3-9774-4432-be00-7b5b63c5fec0	Review unit tests	Review unit tests and document.	t	1772050402260
3	222aa179-2410-4aa6-bbca-fb2d98e4901d	Review email template	Review email template and document.	t	1757430731642
3	9b2772a3-4200-4559-98df-1f6e10154a8c	Complete Dockerfile	Complete Dockerfile with comments.	t	1773303071859
3	23f26d4d-57aa-4c80-928a-ffab652f2730	Plan UI mockup	Plan UI mockup using TS.	f	1775505011689
3	8217a745-8903-4d54-ad6b-e7db774cae7e	Deploy blog post	Deploy blog post before EOD.	t	1763551211308
3	f317e4bc-a9ac-40f5-b0dc-d829a83291ac	Review API	Review API in draft.	f	1776284096256
3	f87e07d1-19d6-4545-8ec1-8fd7166587ca	Complete email template	Complete email template with comments.	f	1771389344785
3	0ca8cdee-4fcb-4875-9336-0e5c1958d9b9	Test database schema	Test database schema with comments.	f	1755621249738
3	dd2d2834-0832-424e-b39f-f35a6217146a	Complete login flow	Complete login flow and document.	t	1775496787247
3	46fc0615-f3d7-4c8a-b063-267ca98677c9	Design blog post	Design blog post in draft.	f	1771327874213
3	0ac6dee9-47be-4ea3-988a-bdfd4f94fb61	Test Dockerfile	Test Dockerfile and document.	t	1754474745871
3	30451673-baf5-4820-b2a5-5e74eacd955d	Review Dockerfile	Review Dockerfile before EOD.	f	1752782306973
3	c0e8d190-750c-4ee9-8b16-5b7f209e8310	Test login flow	Test login flow for project X.	t	1766070747566
3	8ee76496-21fd-40d7-ad41-4652aa2a83e3	Design API	Design API with comments.	t	1762283449344
3	4560e537-16fe-4cd2-a157-c29954908737	Deploy unit tests	Deploy unit tests using TS.	t	1764446927624
3	75d191f1-455d-43f2-b340-be2d3b3efbb5	Deploy email template	Deploy email template with comments.	f	1752438622059
3	9dae1af4-e66f-42bc-a4e4-b0c1b0e013ee	Deploy UI mockup	Deploy UI mockup in draft.	t	1780381584178
3	2e2545ad-5e15-424c-b0d0-36460c791c90	Fix database schema	Fix database schema in draft.	t	1760436719502
3	40c8c42e-b097-4f88-b233-6cbf883f1cac	Plan blog post	Plan blog post before EOD.	f	1760217364041
3	700e90cb-8b25-47e8-acf4-ee3f0a83c49f	Fix email template	Fix email template and document.	f	1758293851822
3	fe3e4720-18e9-49d4-8ee4-893a833a0562	Plan database schema	Plan database schema with comments.	f	1771372966213
3	9a295811-6b46-4f84-b81d-fc3d5006f497	Complete UI mockup	Complete UI mockup and document.	t	1772742701208
3	5459342d-5a25-4268-9c1f-75ceb9849362	Test UI mockup	Test UI mockup in draft.	f	1759370135110
3	4ec8782c-9b9b-4aa8-abf1-a3dc699c9ee4	Design UI mockup	Design UI mockup with team.	t	1761354856428
3	722f82e4-adc9-4e4d-8c4b-cec0c115dc45	Plan database schema	Plan database schema before EOD.	t	1765589882725
3	505669f2-4c47-4112-ad79-63598cd83522	Test unit tests	Test unit tests for project X.	f	1755553690597
3	114d3e6b-913a-40f3-a454-a90efce2a1b5	Design Dockerfile	Design Dockerfile for project X.	f	1758921135053
3	96b3723c-bc06-494b-85e4-5b1f6e8dd47c	Write email template	Write email template using TS.	t	1774905564298
3	0e1d42ba-4cf8-4e23-89ba-406de6e35fc4	Plan API	Plan API with comments.	t	1781158677687
3	f5979e98-b728-475e-b2c7-36cc37bcc592	Complete API	Complete API for project X.	t	1778076700126
3	9f579a0f-3119-4fd2-865c-024221e2be15	Test email template	Test email template before EOD.	f	1771825568460
3	1068ab86-0162-43d5-bb08-2efba1e41451	Fix unit tests	Fix unit tests with team.	f	1775803174936
3	b73b6fc4-5627-4d6c-9b7d-ffb20b58b8cb	Deploy API	Deploy API with team.	t	1752015711385
3	37275340-4763-47ac-9f4a-f7b61482d91e	Deploy database schema	Deploy database schema with team.	t	1777012934499
3	2121c522-8b51-491c-8d60-b19478b0c533	Test unit tests	Test unit tests before EOD.	f	1775346758593
3	cc919c26-c93b-4137-993e-8afb8d996940	Write blog post	Write blog post before EOD.	t	1779935403685
3	108fbc94-b843-44cd-af47-5ef19352c16c	Plan blog post	Plan blog post and document.	f	1763183051572
3	35deace9-8611-4cf4-9f19-7cf0c9e3e698	Write login flow	Write login flow for project X.	t	1777791991973
3	f198dec8-98d0-4018-8f7b-34456c60f745	Write unit tests	Write unit tests in draft.	f	1751130309409
3	4c54883f-3826-4dd0-8f3e-225425899354	Design API	Design API in draft.	t	1772716440625
3	6c605af5-bdbb-4a7c-a935-0ebe81099efb	Fix blog post	Fix blog post for project X.	t	1764107323019
3	837eac93-1a69-465a-9c8a-55eda14e5d98	Review API	Review API with comments.	t	1768797974424
3	ec11461f-c53d-4c47-a54a-44a48baa90db	Plan UI mockup	Plan UI mockup with comments.	t	1779482764631
3	c6f949c4-e92c-42c1-994f-5e7e332db35e	Review email template	Review email template before EOD.	f	1760008030871
3	f63d6771-4d13-4790-9c4d-fc82b56f81de	Review email template	Review email template using TS.	t	1771753600549
3	08c3d8f6-8288-4700-8b62-d88c19c2be92	Complete blog post	Complete blog post with comments.	f	1757036141426
3	57bbee3c-ed40-41c3-a848-4573760161b7	Design unit tests	Design unit tests and document.	t	1758631712377
3	11c03244-0295-4cfd-a506-2a512bebe59b	Design blog post	Design blog post with team.	t	1772471740761
3	191e8a01-ba2c-4811-935a-0af64fe30ce8	Review Dockerfile	Review Dockerfile in draft.	f	1774832900222
3	5d29d580-f3fc-4d7c-8e1d-700905767579	Test database schema	Test database schema with team.	t	1762384244325
3	dc09a14e-c380-43ab-aa05-4b1b4261a9c1	Plan Dockerfile	Plan Dockerfile using TS.	t	1752573689435
3	44e2b45d-4808-4164-8440-52f8903d7b8d	Test unit tests	Test unit tests using TS.	t	1780227448280
3	6573a4e3-af11-4cfe-90ae-859ecf1e4a40	Fix database schema	Fix database schema with team.	t	1757004077158
3	4e580390-3b5f-4cd1-a9b3-2de14519fb58	Test unit tests	Test unit tests and document.	f	1762116549653
3	2a55cd00-ae8d-4f41-bf43-a868432d36e1	Write Dockerfile	Write Dockerfile before EOD.	t	1771102329452
3	7dc0f399-0643-4bfd-b1fa-65f4d8087ecb	Design API	Design API before EOD.	t	1763264712762
3	40af6127-0817-428e-879b-0bd51697d337	Complete email template	Complete email template before EOD.	t	1764610909192
3	13bd04ec-f986-470a-abf4-8366c2fb38bc	Test unit tests	Test unit tests in draft.	t	1779630395757
3	43501fbe-3faa-4a88-8226-7f66d27127ee	Test email template	Test email template with comments.	t	1754048296130
3	b9c2b892-2586-485e-bda4-2c41dd360da4	Design Dockerfile	Design Dockerfile in draft.	f	1777151909899
3	f2ecb07b-37a2-4b8a-a9ee-a09b83e95c26	Plan API	Plan API and document.	f	1751526394365
3	6555c899-a884-4b80-b741-22bf1ce6a38a	Plan blog post	Plan blog post in draft.	t	1755423850450
3	c7c25d65-027d-4695-b0f8-91a3643532d4	Deploy email template	Deploy email template in draft.	f	1756418460089
3	a257b2d1-5d4d-4a95-8e78-69107f2158ac	Review email template	Review email template before EOD.	t	1779304407031
3	72c25283-c001-442b-9b2f-4848cb850dad	Test login flow	Test login flow in draft.	t	1775925001507
3	e0ff7aa7-55a1-46a0-bd48-d47a26316897	Deploy login flow	Deploy login flow for project X.	t	1770075563482
3	17dbdf41-69e9-4c78-9613-49c75a738156	Design unit tests	Design unit tests before EOD.	f	1768524569801
3	ac4f3649-76d1-409a-a7d4-62849a5c265c	Fix blog post	Fix blog post for project X.	t	1775135455822
3	c8140c63-bf66-435f-8e79-a260fdd47890	Design blog post	Design blog post with team.	t	1772158982041
3	5a89eb92-be71-4b88-91db-a93cb27dd195	Test database schema	Test database schema using TS.	t	1760604028216
3	e4becea8-302c-4215-8dbc-b42245cea69f	Complete unit tests	Complete unit tests in draft.	t	1751133136156
3	d139bd35-22ba-45bd-b254-a6f611e2f84a	Design Dockerfile	Design Dockerfile with comments.	t	1778249491696
3	0a7f6548-ab20-4939-a18b-34413538d78b	Test blog post	Test blog post and document.	f	1756896678301
3	354b97a5-5a00-49b7-b79d-9e0c7ddf2829	Complete database schema	Complete database schema and document.	t	1779882915761
3	6f2c1689-c82b-437b-84f4-9fe947feda93	Review API	Review API before EOD.	t	1766758956838
3	fb76e956-5aa4-4293-a202-f2d74995a407	Write unit tests	Write unit tests with team.	t	1762829395758
3	ec60c33b-3ac0-42f5-8a53-004f738d8e82	Review blog post	Review blog post before EOD.	f	1762263438017
3	88ccab75-d7fa-405e-b74e-c1e46a2c92b2	Design Dockerfile	Design Dockerfile using TS.	f	1771326130664
3	ad82a559-c350-4b12-b976-88035fc3d432	Write API	Write API before EOD.	t	1776706750695
3	dbbd206a-cf10-4768-8bf3-318ab80e9638	Test unit tests	Test unit tests with comments.	t	1764630796274
3	089fc18c-a491-4058-8070-d46b56685aec	Design database schema	Design database schema with comments.	t	1750614179259
3	d44bf20d-dd82-48e9-b8be-25375d5d57bb	Design email template	Design email template and document.	f	1758930829453
3	98230f4c-01e5-445f-a755-7e9c3c7592a2	Design login flow	Design login flow with team.	t	1760206043252
3	8743e537-8482-48f5-8f94-ceea75c704f9	Design Dockerfile	Design Dockerfile in draft.	f	1769734517889
3	c30a0922-14ac-4802-81b3-a78a9dba62a2	Write unit tests	Write unit tests and document.	f	1766843682126
3	6fe426ca-08ad-40e7-80e6-b9d88e2e7fc8	Fix UI mockup	Fix UI mockup with team.	f	1755243618968
3	c7a3d1f1-48ee-4670-93ea-d8b046623cbd	Fix API	Fix API with team.	f	1778477885858
3	9e38a4f5-3c4d-4081-a857-7e3c262118fd	Plan unit tests	Plan unit tests in draft.	f	1755282241383
3	eceb9a16-a99e-44ec-908d-1cd1b7f7778d	Test Dockerfile	Test Dockerfile for project X.	f	1766939348578
3	7ee91f28-6f7d-494b-9690-fde22a480f98	Deploy Dockerfile	Deploy Dockerfile for project X.	t	1767834890901
3	db0d61a1-5727-4004-a15f-815b463c778c	Write email template	Write email template using TS.	f	1774603909177
3	b2b66790-0957-43d3-9515-07abdc31d5e8	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1774415432398
3	bacdf62a-b6ce-4264-8a1c-c86d7839b6f1	Review blog post	Review blog post for project X.	t	1768906128979
3	eb533144-9da1-4827-9640-4a1e08400fe9	Fix email template	Fix email template in draft.	f	1753471228071
3	e9217e27-b30c-4c37-8e6c-b8f77da531d2	Deploy Dockerfile	Deploy Dockerfile in draft.	f	1771817358972
3	f6d20450-eb8d-4ac8-8fea-17b43a49d517	Fix Dockerfile	Fix Dockerfile and document.	f	1774917907779
3	474a0137-110f-4553-bb3e-314862972664	Review UI mockup	Review UI mockup before EOD.	f	1762608632385
3	3a933ee2-67b8-45a6-bf16-cfc383a16335	Test UI mockup	Test UI mockup with team.	t	1751600117534
3	400c1423-d052-4611-8456-44318a3ae479	Fix blog post	Fix blog post with comments.	t	1779589853596
3	f20240ae-8072-4395-a839-5d57ee4e0528	Plan login flow	Plan login flow with team.	f	1753898114372
3	5507b1e3-78c3-499b-8468-a7300fe22937	Deploy login flow	Deploy login flow with team.	t	1763554766926
3	8769b296-48f3-4724-a3b4-430597d47194	Write blog post	Write blog post before EOD.	f	1774133229877
3	b4919e03-33bc-4137-8c84-0b389b4b1e53	Fix Dockerfile	Fix Dockerfile with comments.	f	1761329746344
3	41120358-8565-4a8c-baeb-f61f739b24c1	Design database schema	Design database schema with comments.	t	1761340050401
3	7e7766fb-ddac-4dd5-a0e6-845b27f6f2f2	Test email template	Test email template before EOD.	f	1775815209521
3	6df0ab3a-228b-431f-9945-2fb5646936c4	Review blog post	Review blog post in draft.	t	1765847615644
3	0a5a6600-2cf2-4ca0-b434-66a2bce4e823	Fix blog post	Fix blog post for project X.	f	1773786388270
3	740694a7-4cd0-4733-9228-b5eefe529bca	Design unit tests	Design unit tests and document.	t	1762188681305
3	df7fb11b-cfae-4f6e-8584-55ca20f006a5	Plan login flow	Plan login flow with comments.	f	1770765234297
3	f4bc9f56-5781-478b-b623-351275bc7c9f	Write Dockerfile	Write Dockerfile in draft.	f	1765397640456
3	9a1a2021-6790-411d-afa6-5c1392712135	Review blog post	Review blog post and document.	f	1772141975196
3	b876abda-9f4e-4136-8c1d-19bb58099a9c	Design email template	Design email template using TS.	t	1769816137482
3	6d6b9499-285b-4384-b14a-a417bac15dab	Write database schema	Write database schema and document.	f	1771678846722
3	55fc164f-1541-4d64-b7a4-5741609117d1	Plan Dockerfile	Plan Dockerfile and document.	t	1762482343964
3	ceece9e5-1d84-46b6-98fc-a11050ce2ede	Complete database schema	Complete database schema in draft.	f	1766843569333
3	db4d2d17-2ec2-4833-955b-260e5e5470d3	Test login flow	Test login flow before EOD.	f	1770943236545
3	1788ba9b-f979-45d4-835d-3d16d53d8ad1	Deploy unit tests	Deploy unit tests using TS.	t	1755325294940
3	11804de5-58a9-4fe8-af0a-309bb6a4c03a	Review API	Review API with team.	f	1752605307157
3	c508b607-5cd3-4c4a-9df3-9eb45dfb1f4b	Review database schema	Review database schema with team.	t	1759288691748
3	084da3de-b856-4d2c-8fdb-5a95d21d8841	Test API	Test API in draft.	f	1751173422201
3	0b00ef3a-344e-4bb9-a667-172d021d99e3	Deploy login flow	Deploy login flow in draft.	t	1767617048746
3	e6252246-ff26-4409-912b-c0e7c1e44787	Plan UI mockup	Plan UI mockup and document.	f	1777763845603
3	29825114-7cb4-48af-895b-5671b32660a2	Plan email template	Plan email template before EOD.	t	1763702209080
3	c78c4542-00e9-4072-970f-41a6c40fd14e	Deploy unit tests	Deploy unit tests for project X.	f	1763522644123
3	4d4046ce-93f4-47c4-b634-bb37bd315b0a	Write unit tests	Write unit tests using TS.	t	1759756460986
3	74404ca9-bd28-43d6-a1a9-a709cc1a37ba	Deploy database schema	Deploy database schema with comments.	t	1753754122288
3	3d5f38d8-93bf-4776-a190-c67064835ee0	Write email template	Write email template with comments.	t	1764716647439
3	07e01d0c-2047-4e97-aa1b-f8f6cf440ec4	Review API	Review API with team.	t	1775865805655
3	6717a079-1c47-4a08-bd49-86cec4949dce	Write API	Write API using TS.	f	1771803762609
3	02d8105b-90ed-4c16-8d8f-ab8b80e46ae7	Deploy email template	Deploy email template before EOD.	f	1778606230007
3	417914b8-afda-4976-90cf-350efb586af1	Test unit tests	Test unit tests with comments.	t	1754434939359
3	106ca18a-3df5-4238-8fcd-b3e0a58a067b	Write UI mockup	Write UI mockup with comments.	f	1766843582155
3	72c892c6-671c-4e83-afbc-fb7a82ca41ad	Review login flow	Review login flow using TS.	f	1756496126672
3	15bfc3fd-2fdc-4604-aa43-07cb545e4124	Plan Dockerfile	Plan Dockerfile in draft.	t	1761131048585
3	31b3c563-3c39-4dc8-99f9-66fba929c90d	Fix login flow	Fix login flow using TS.	t	1765812337753
3	1ae553b9-b73d-4d51-9a80-b9d3c57efd6a	Write email template	Write email template before EOD.	f	1775655488288
3	b7031d5a-ba78-44cd-9c2c-9a893bd2eccd	Write database schema	Write database schema in draft.	t	1750842493722
3	cfe1a256-61bf-46f9-b004-6688099aabfd	Fix UI mockup	Fix UI mockup with comments.	f	1780871507281
3	594ed338-b568-405c-a712-0bdb954c61e3	Fix API	Fix API with team.	t	1773100478745
3	e0913cb8-fb24-4a75-877c-af3a39f7992d	Deploy Dockerfile	Deploy Dockerfile with team.	t	1776262441289
3	f32832db-0fb9-4e29-a7f8-55b98f1c46e1	Complete Dockerfile	Complete Dockerfile for project X.	t	1757991719338
3	f9b277ee-8dcf-4abc-948f-285c6cab8416	Plan UI mockup	Plan UI mockup with comments.	t	1754657390559
3	6a4dfb04-bc71-4912-af26-8538c9d82921	Design database schema	Design database schema before EOD.	t	1777108967851
3	4624b189-565e-4118-a0db-f8eb52962048	Fix email template	Fix email template with team.	t	1770063464429
3	582e48a2-8f67-4393-9b6f-b92bdd335bdd	Plan blog post	Plan blog post using TS.	t	1763373016115
3	a74c2109-8ff6-4801-926f-d44351449fa2	Fix unit tests	Fix unit tests using TS.	f	1766683098914
3	06de4b9a-8151-4387-b264-7447036a47e1	Complete UI mockup	Complete UI mockup for project X.	t	1763202727462
3	a18a4af8-3845-4b33-bcc5-61ba9500879e	Plan blog post	Plan blog post before EOD.	f	1763848662631
3	5cfe16bb-c1ba-4a18-b7f5-6e78f84463d4	Deploy login flow	Deploy login flow and document.	f	1777299765229
3	de6009d6-79c7-4fc0-a36d-3dc395fdff4e	Test Dockerfile	Test Dockerfile and document.	t	1767707087046
3	3b905122-a5d6-484b-aa12-eaff03a8f0d3	Test UI mockup	Test UI mockup with team.	t	1759099909902
3	c2ed6c03-0728-4064-a282-98d0db3eaff6	Review email template	Review email template before EOD.	f	1767038592895
3	3daaa533-b9ac-48a7-aa6b-1415b1d2e702	Write Dockerfile	Write Dockerfile with comments.	t	1759078675509
3	15440980-6e10-4ae4-bd67-d4286aab08f5	Design API	Design API with team.	t	1781047496286
3	3ef2026e-4ba4-4470-9cff-97627c4205f5	Plan email template	Plan email template using TS.	t	1763720705240
3	9257bc20-eca4-4521-98af-833e9c705e53	Write unit tests	Write unit tests in draft.	f	1772356602674
3	4caa0040-d048-4a69-87f3-529a431a0a1a	Review blog post	Review blog post in draft.	t	1781519753179
3	12e2214a-12ab-41b6-886d-5dcda7e41738	Deploy Dockerfile	Deploy Dockerfile in draft.	f	1755993232782
3	5e9b5ae6-c22b-40c4-b39c-d822f6af911e	Fix login flow	Fix login flow using TS.	t	1759242701906
3	cc42ece0-8ce3-4b07-bdcf-ab96239396c8	Test blog post	Test blog post before EOD.	f	1761595855033
3	537af4a7-aa3f-4ab7-9b9b-b53239a6cc9c	Complete blog post	Complete blog post and document.	t	1774822399309
3	968c7b75-ae65-44ae-8ee9-ba5a43a21702	Review UI mockup	Review UI mockup before EOD.	t	1767538318950
3	34ee797f-cce2-42a7-bff6-27a52e9eb6ab	Complete blog post	Complete blog post for project X.	f	1765415919336
3	b4e4bcc4-e389-4838-9c74-ba4b9550849e	Fix database schema	Fix database schema before EOD.	t	1762102098875
3	99962525-ad3b-42b9-beb7-dc73164b81a9	Design API	Design API and document.	t	1758449658081
3	e9572a53-6921-44a7-b86a-965254a91663	Test UI mockup	Test UI mockup with comments.	t	1751723912410
3	4549bfe3-087e-4046-9ed9-55becc0a799b	Deploy UI mockup	Deploy UI mockup in draft.	t	1755909103353
3	fd059d55-f131-4d76-9f95-6dfe05617a2a	Deploy API	Deploy API before EOD.	t	1771593067258
3	f6517db1-c293-4eec-8859-c631e6c72769	Fix UI mockup	Fix UI mockup with comments.	f	1767197148401
3	e3835af9-2870-493d-92a2-a82cb3ece922	Complete login flow	Complete login flow in draft.	t	1770133992781
3	846ea61b-7133-4162-9488-db8b73f1db1a	Write database schema	Write database schema in draft.	t	1754624113581
3	5481074d-7e80-4db1-8c5d-c077327d9724	Design blog post	Design blog post in draft.	f	1762327106494
3	5a207923-ec19-494d-89a0-83160f416db0	Complete unit tests	Complete unit tests with comments.	t	1773293797994
3	b82d698e-7c37-4445-9e76-13b505319a95	Test email template	Test email template and document.	t	1759567783052
3	11c51961-5b87-4659-93ca-3c4ce9e8f4f0	Deploy API	Deploy API using TS.	f	1761811089627
3	13fcff15-c8f8-4113-8e17-2be8a4c5926c	Complete API	Complete API before EOD.	f	1778705287585
3	980b23cb-a366-4bb9-94f1-af38b6d57560	Review login flow	Review login flow and document.	f	1751360863697
3	7a65c8d9-ebe7-49b7-aa3a-c22ea2c1cc40	Fix email template	Fix email template in draft.	t	1750611941331
3	71fa5e5f-e514-4869-8f46-2f9144f422af	Test Dockerfile	Test Dockerfile using TS.	f	1771199733191
3	439cf8b0-7767-4cd9-80b1-62c2bf8d7224	Test email template	Test email template and document.	t	1774677071780
3	228bb4a8-712e-4179-9c67-ec5d582e57df	Review blog post	Review blog post with team.	t	1751639900680
3	45912fef-118a-4bb1-b136-9463cdf9a788	Write login flow	Write login flow before EOD.	t	1777568237423
3	b083128c-b61a-45d2-ad39-4f33e2ff16a5	Review UI mockup	Review UI mockup before EOD.	t	1777789835851
3	278c7dfa-0bc6-41c5-833d-dc68de7b0347	Write API	Write API with team.	t	1762947033052
3	e69faf63-e29d-4a76-bae4-b51248ac8815	Plan UI mockup	Plan UI mockup before EOD.	t	1767849088234
3	28cc8fc1-d8c1-4430-b754-c201f755da6c	Test email template	Test email template for project X.	f	1762551130289
3	01284d4b-acdd-4d5e-854b-abc27772e1a1	Write unit tests	Write unit tests in draft.	f	1751044200659
3	f42690d4-e945-4028-9a42-9ac1ab4f9e12	Write unit tests	Write unit tests with team.	t	1759018424687
3	e211c893-8753-44b8-a8d7-0fc6475266ea	Test Dockerfile	Test Dockerfile in draft.	t	1750859304790
3	f785e0ba-7329-4905-918c-44d9dab0a759	Fix unit tests	Fix unit tests for project X.	f	1767022080292
3	4c936c90-5e29-4357-88f3-6b9fbbdd531e	Deploy blog post	Deploy blog post and document.	t	1773922609018
3	ea0363e0-a81e-4680-9bc0-0111912b388e	Design email template	Design email template in draft.	f	1763562332288
3	4592a620-d458-42e4-98e9-e6442e568915	Write Dockerfile	Write Dockerfile with team.	t	1774286132896
3	61ed7c2c-cb93-42eb-8559-e00b5d671879	Design database schema	Design database schema with team.	f	1756824616015
3	e7d5c60e-4188-48a6-bc33-6fedcc5128b3	Design email template	Design email template using TS.	t	1750476405306
3	5946a098-3f3a-44e9-894a-4cb886cc3b5e	Plan email template	Plan email template with team.	t	1753744889357
3	b36789a8-e2f8-470d-b872-2b81a5a342bd	Write API	Write API using TS.	f	1763116696778
3	9decf3a6-7350-4ca8-ba30-d9da28093b1e	Deploy database schema	Deploy database schema in draft.	t	1754748648564
3	c9e8a955-ad13-4097-bf83-a636d5b5dbeb	Review blog post	Review blog post for project X.	t	1760652757200
3	2f794d3e-50ca-4db0-afc8-e9bd4cf3e696	Plan unit tests	Plan unit tests with comments.	f	1762362057486
3	1e8d780f-56fc-4585-ae12-97bb0dca28f4	Complete email template	Complete email template in draft.	t	1750764155010
3	0048184c-41cd-47da-9342-6382833fc6a0	Write login flow	Write login flow and document.	t	1763049313787
3	02ba6a4b-d809-4e64-919a-266f8be91fe4	Test UI mockup	Test UI mockup before EOD.	f	1762896767182
3	725d3adf-43c4-4266-a85b-a4fac95fe9bc	Write blog post	Write blog post in draft.	t	1759803352457
3	1e6ea3fa-e899-4223-b0fe-12f8a7db5ed1	Complete API	Complete API with team.	t	1779021568175
3	c673f306-7bdb-4028-b2e2-0f7ac1adc6e0	Test login flow	Test login flow with team.	f	1770261234670
3	c47802e8-78cb-4e2e-aeb8-41ed133844ef	Test API	Test API in draft.	t	1754129171445
3	cc716c94-86ee-4074-926d-d9e0c55712e9	Review API	Review API before EOD.	f	1769057087039
3	8892e41c-457d-4354-9b79-f695bf47044f	Design UI mockup	Design UI mockup for project X.	f	1767039896512
3	527842e1-f878-4e16-ac64-f97977e709fe	Design Dockerfile	Design Dockerfile using TS.	f	1762326295821
3	608cf0eb-2ffb-48da-94c0-2ed15c9f1c69	Plan API	Plan API with comments.	t	1758576371843
3	79149e1d-387c-432a-822c-746ae8b2487a	Design email template	Design email template using TS.	t	1768361801556
3	ce16323e-b3ba-4720-9729-6726ca2ed8a2	Plan blog post	Plan blog post and document.	f	1774872846404
3	7a18ed4b-eeab-40c0-9c7e-e04c5bba9972	Design API	Design API using TS.	f	1775576899360
3	5151dfc8-e730-432e-95a8-570c28b65e04	Test blog post	Test blog post with team.	f	1774413660566
3	db275ccd-f49f-4b0c-89c0-0d2125422714	Test UI mockup	Test UI mockup with team.	t	1751696238091
3	778f026f-0e8d-46c8-9238-9194e140fe90	Test API	Test API before EOD.	t	1760782659127
3	7b1f2e7c-eacc-4307-b1a5-41027d116d36	Complete UI mockup	Complete UI mockup before EOD.	f	1754296804422
3	5b5dda8a-5f5b-4160-9860-e61031e8f254	Complete API	Complete API before EOD.	t	1772187451450
3	0593cf72-3243-48cf-acb0-7b019648517e	Complete unit tests	Complete unit tests before EOD.	f	1760831721944
3	a48b20c5-966a-4b58-bc43-1e0dfabfa58a	Review unit tests	Review unit tests with team.	t	1764163063426
3	c7e68c96-1f7c-41af-92d0-36dfe4e9128b	Write login flow	Write login flow and document.	t	1776906342132
3	fc419728-4979-48d9-83b4-2c27202131ed	Plan UI mockup	Plan UI mockup using TS.	f	1761440905860
3	c6a32f82-b9e0-4b6e-aec1-b132a9ada235	Review unit tests	Review unit tests using TS.	t	1753019731985
3	24478dfb-76f4-4e7f-9680-7e5bf2c4bf25	Review API	Review API with team.	f	1779299819019
3	f659d46b-4b70-4698-95ec-f37d9096dbef	Complete API	Complete API with team.	t	1759491719502
3	c6656c4b-b8f5-47b1-bbe9-ca8a811fb1f6	Review API	Review API before EOD.	t	1754545269360
3	888b6aca-5a2b-4e5a-ae0e-fc672f7180a7	Test unit tests	Test unit tests and document.	t	1771307623334
3	54e22e90-7629-43c6-ab39-3bfcf4b70417	Plan login flow	Plan login flow in draft.	t	1772297165667
3	e7e659b4-fa45-4eb2-9f8f-a258bcd0a29e	Review login flow	Review login flow and document.	t	1755287218382
3	e649135c-d936-4609-ab1b-1db2db6dc739	Test blog post	Test blog post in draft.	t	1776912942449
3	e79455a6-85f7-4218-851e-ef562007293d	Deploy blog post	Deploy blog post for project X.	t	1763024827133
3	7676bcac-14c8-49b9-8f08-31ef494f201d	Test login flow	Test login flow before EOD.	f	1754277756501
3	53e3aebf-f00d-47d4-a5e4-a3cfca7d7062	Review UI mockup	Review UI mockup with team.	t	1756569689315
3	292e5b8e-2949-4954-8873-28f24bf4a090	Plan API	Plan API for project X.	f	1767600577178
3	9711c902-41ec-41e4-89d8-8a9c6389f61f	Review API	Review API and document.	f	1769749059857
3	c43d8925-730b-45f1-b34f-c43ac896d103	Plan API	Plan API for project X.	t	1781408793029
3	0195030c-a8a9-42f8-a9cb-a17819d25c27	Test Dockerfile	Test Dockerfile in draft.	t	1754671892314
3	03ddc71e-26b5-4275-9641-a80456d7aaa8	Fix database schema	Fix database schema before EOD.	t	1766832845822
3	d71e7b87-eb9e-4807-a01e-a97853249a16	Design database schema	Design database schema and document.	t	1755188512732
3	9f017722-ef32-490c-b5fd-4feee9f1074f	Test database schema	Test database schema using TS.	f	1777248477868
3	d0d88809-0aa9-4cc4-b287-f8fe07746c30	Fix database schema	Fix database schema using TS.	f	1774295387297
3	dfccfeb6-ebe5-4983-b794-5c8e6c1a25ce	Complete database schema	Complete database schema before EOD.	f	1777466903762
3	ed19d242-bfc5-49ce-a3dc-cd2ce37160e6	Review database schema	Review database schema before EOD.	t	1772081223949
3	2904c949-6f97-44fa-9a97-ac351bf36383	Plan blog post	Plan blog post and document.	t	1780438737980
3	44fe9dee-b0a8-457b-aa16-a0e52edc188f	Deploy database schema	Deploy database schema for project X.	f	1758330144321
3	fe1354a8-cc6a-41c4-9e42-d51c93b5584f	Design Dockerfile	Design Dockerfile with comments.	t	1755004797636
3	034bfd14-c134-4a98-9225-a323f68ce9b0	Test email template	Test email template before EOD.	f	1771966355776
3	ddd8d395-ea8c-4a98-8645-48e4014608f0	Design login flow	Design login flow with team.	f	1772679451343
3	ad61d387-179b-4ba0-93e5-b6a5d3bdb92d	Fix login flow	Fix login flow with comments.	f	1777068260638
3	ddd593b6-bc60-4144-86a9-c43a7993594c	Deploy Dockerfile	Deploy Dockerfile and document.	t	1775704882794
3	0f7c1abd-b7e7-4c90-b4b6-4e91275c29b0	Fix unit tests	Fix unit tests for project X.	f	1760707714290
3	b47bb836-6c51-4c57-bd6d-5af15c0c16fb	Review unit tests	Review unit tests using TS.	f	1776774909476
3	8766a04d-6886-4f8b-82d0-fa3ad072dced	Deploy database schema	Deploy database schema with team.	t	1753826401532
3	49abb0ac-385d-4bac-bfce-f6b8ab5be84b	Plan database schema	Plan database schema with team.	t	1776426000858
3	26adc1d8-00ca-4133-a7a3-84dacbcf5457	Design database schema	Design database schema with comments.	f	1779401189989
3	ee07bd5c-8c3b-4b9c-bea4-efa26869a7c6	Write API	Write API with team.	f	1781144954579
3	8d6182d3-a7df-4372-8e67-21338bb5ce1e	Fix Dockerfile	Fix Dockerfile and document.	t	1756464749182
3	49607165-c071-46b3-95df-def47a2bb26e	Test Dockerfile	Test Dockerfile using TS.	f	1774949602878
3	efd04834-9425-4d49-9ccf-36f536d9ed97	Design unit tests	Design unit tests with team.	t	1774791667318
3	0f1593e2-5b4c-4144-b45b-77e9f8da6012	Complete UI mockup	Complete UI mockup in draft.	t	1779926473146
3	ea22f40f-2339-4723-bc40-1fda285bbe36	Write blog post	Write blog post in draft.	f	1764042320439
3	17c9f09c-e7b3-406a-9af7-5c20072fe31d	Plan email template	Plan email template before EOD.	t	1758309402466
3	e10d37a1-bc1d-416f-9ab6-ad9cf2595f0c	Test blog post	Test blog post in draft.	f	1778936994405
3	a38505f5-c47a-4637-9655-ffc934e3f307	Design database schema	Design database schema with team.	t	1775192027501
3	b4e6dd07-c584-4476-8b82-949aa0d854d4	Complete login flow	Complete login flow with team.	f	1779378847341
3	408b5fcc-1134-4463-9728-e94eeb892575	Plan email template	Plan email template for project X.	t	1780451537539
3	629ef02f-54dc-4d59-b47b-4645a2cbfa0b	Plan unit tests	Plan unit tests in draft.	t	1770448260752
3	e7131c25-faee-46ff-ba82-918538570f37	Fix API	Fix API with team.	t	1779127292592
3	30a4d017-926d-4e17-bf05-2c49dca78693	Plan API	Plan API and document.	t	1768004957462
3	d2836bbd-faaf-4268-a670-aec1deefd53b	Deploy UI mockup	Deploy UI mockup for project X.	t	1772501988114
3	67102203-b5e2-419a-a427-355f0200625b	Design API	Design API with comments.	f	1762123180800
3	9a3b9433-26d1-4504-8050-839113a8f2f9	Fix Dockerfile	Fix Dockerfile before EOD.	t	1750610352687
3	e5dc2daa-1a7b-4f06-956c-a9b3f9c9c8ca	Complete API	Complete API and document.	f	1771182753768
3	abf0344e-1832-475e-8967-18ef2292c223	Complete Dockerfile	Complete Dockerfile before EOD.	t	1753108087678
3	b1fee62c-b81d-4a2e-a835-602093d8e89a	Fix Dockerfile	Fix Dockerfile using TS.	t	1754971876134
3	5354827b-160f-4fa7-83ca-bbbef15800e1	Test API	Test API in draft.	f	1771887150841
3	2aab81f0-96bb-46e8-9631-a1c44948abb7	Design Dockerfile	Design Dockerfile with comments.	t	1772976170836
3	6083c51f-9c68-4f93-b6a5-ae27fa590dfb	Fix email template	Fix email template in draft.	t	1754306704937
3	31edd04e-835b-4dc6-9422-8c1683701bf4	Write login flow	Write login flow with comments.	f	1772309807697
3	0169517b-5f61-4818-83c1-51d193bc1ffa	Review API	Review API with comments.	f	1764315777631
3	caefcd56-190b-4857-9867-27b620e5ce1b	Complete blog post	Complete blog post in draft.	f	1766222845355
3	33ae0a31-a65b-441b-8ccd-5556e66dd8c6	Complete unit tests	Complete unit tests and document.	f	1779036444329
3	deee2f11-7637-4a41-9bf3-401434366cc8	Review Dockerfile	Review Dockerfile using TS.	t	1774653152975
3	c5819b1e-37cd-4159-abb1-eb239bad97d3	Design database schema	Design database schema using TS.	t	1764494904608
3	45db4d76-8792-472d-81c0-cadc49a0a674	Deploy blog post	Deploy blog post for project X.	f	1755330881570
3	d5c028a7-ffd6-48e2-a8c6-2f73c8818106	Plan database schema	Plan database schema and document.	t	1769387077453
3	61e5b828-a08e-429e-b9cc-77b2312c870f	Write API	Write API with comments.	t	1751127705368
3	dbc3e578-d2e4-4248-8f0d-c1dcb6595deb	Test login flow	Test login flow before EOD.	t	1767174882969
3	8b81c4e2-7388-45a2-a098-1f7f9cac3677	Design API	Design API for project X.	t	1764777286951
3	3e99140e-94f6-4799-94e0-064853c79acf	Test API	Test API with comments.	t	1775947829623
3	0a787363-d413-48f9-8aad-9f1a01b66b09	Design Dockerfile	Design Dockerfile for project X.	f	1753878780412
3	16e371a9-7c6d-413a-8122-91f0245ccf81	Test UI mockup	Test UI mockup in draft.	f	1761852649428
3	7fe70fea-af99-4f45-a33b-fefeb6e409dd	Write Dockerfile	Write Dockerfile for project X.	t	1768094277211
3	92911003-62e1-4563-af1e-afa4d9916425	Plan login flow	Plan login flow with comments.	t	1759743046110
3	2d46cece-3630-4c0b-9b41-0c8243971af3	Deploy database schema	Deploy database schema and document.	t	1756081604696
3	55931643-0ef1-471a-a636-cafb6c56f84a	Deploy Dockerfile	Deploy Dockerfile with team.	f	1766490396980
3	15afce9f-6366-4c6f-9e43-c0492382237a	Plan API	Plan API before EOD.	f	1752594411426
3	ff15dd00-c66c-45dd-9bd9-e3a48b3a35bd	Deploy login flow	Deploy login flow with team.	t	1768479151188
3	09f6fee7-6147-4741-be3f-cc815988cb32	Complete unit tests	Complete unit tests with comments.	t	1754748701329
3	a543389f-02b7-46d3-b433-f55adaff3f3a	Write login flow	Write login flow and document.	t	1756246033868
3	d4c3e161-3882-4b1c-8ece-21da6b4a34c4	Design blog post	Design blog post with comments.	f	1767654926349
3	31abd9f0-79d0-48c7-84e2-33e8f7c21f2e	Write database schema	Write database schema using TS.	f	1752470712534
3	19607fda-a1e5-4f2b-9028-fb84d0e3bec0	Fix unit tests	Fix unit tests for project X.	t	1775563776145
3	457fd67f-bf0b-4cfa-a461-1d2e37fe0fe4	Fix unit tests	Fix unit tests using TS.	t	1751682575212
3	9c215331-f347-43b6-8c2d-176009842a95	Design UI mockup	Design UI mockup in draft.	t	1757933001532
3	d3b50934-a055-4703-97bd-02b34925b533	Fix UI mockup	Fix UI mockup before EOD.	f	1765809368277
3	a41acaf3-f3a8-419f-bc72-38d4df7e8189	Complete login flow	Complete login flow before EOD.	t	1761601420117
3	923ec0ce-ef09-452e-b670-ed349a65e453	Write blog post	Write blog post and document.	f	1767937924083
3	1ded130a-e053-43b6-bba3-24e71271f105	Plan unit tests	Plan unit tests using TS.	f	1770962425057
3	60ab8939-5fb5-413a-818d-38a12f1b9f04	Write UI mockup	Write UI mockup in draft.	t	1764003734865
3	dee8b0ff-75ee-4665-9eba-f48042b33f6b	Complete Dockerfile	Complete Dockerfile in draft.	t	1774691046751
3	7e1f2d70-8d46-42ae-8d6c-70eb91d625f8	Write API	Write API in draft.	t	1767660128870
3	bd39afb0-e8c6-4958-ad69-62d5503c510b	Fix login flow	Fix login flow before EOD.	t	1781239899324
3	d3e05cc9-b8bd-4cb1-b1eb-525bc030c920	Plan unit tests	Plan unit tests and document.	t	1760748659320
3	afaf8b05-7412-4bf7-b764-77c29329c2d9	Review API	Review API using TS.	t	1779596880655
3	78e6f013-6f5a-4abf-980a-c8e7d13e2eaf	Design database schema	Design database schema in draft.	t	1771537165212
3	e39b0122-f8f6-4d2b-8a39-8e70748167e3	Complete login flow	Complete login flow before EOD.	f	1776113273413
3	80d86fd4-1f93-4177-abe9-6203ca70c751	Review database schema	Review database schema and document.	t	1759998812352
3	2547fa48-fa1d-4ee6-abe8-6ff29dd39d05	Plan email template	Plan email template with comments.	t	1772410683403
3	b87c145f-cb8f-414f-a688-1f14b6abe9ee	Write API	Write API in draft.	f	1751436538556
3	899db305-3f95-443f-8c54-ca7723337428	Deploy unit tests	Deploy unit tests in draft.	f	1777520482205
3	5c521019-e106-410f-bd38-f334b7d90fb8	Test unit tests	Test unit tests for project X.	f	1772067080448
3	ad1541b5-e4ba-4160-8345-7de64994e4f6	Plan API	Plan API before EOD.	f	1763723858063
3	e752f771-66ea-4db6-92ad-c6c05c69f35d	Deploy database schema	Deploy database schema using TS.	t	1769812693183
3	119f3551-641a-46da-8661-a8b1e38d4317	Plan login flow	Plan login flow for project X.	t	1755159130061
3	e551dd21-b8c4-4000-a9f5-309d3d19be1c	Review email template	Review email template using TS.	f	1775281059660
3	4e217522-d852-4981-ae7b-c47beb1df643	Deploy API	Deploy API in draft.	t	1765028309927
3	734f2202-7d15-4409-902d-981bb419f39f	Deploy UI mockup	Deploy UI mockup in draft.	t	1751528394990
3	41d4df40-d436-4a16-bcd8-c3f38cd7a0e8	Write blog post	Write blog post before EOD.	t	1778792817908
3	06f78f8c-f736-4cc4-ae45-9d7bfc704190	Design login flow	Design login flow in draft.	t	1772146330942
3	edac7afa-4b4a-4a8e-ac1e-018e68c4e4c0	Test email template	Test email template and document.	t	1751199425542
3	375daf9e-0ab1-4a38-92ba-94d254a31e09	Design blog post	Design blog post for project X.	f	1757483813262
3	34f810a3-9cf6-4ada-8d1e-455d652462bc	Test email template	Test email template with comments.	f	1756166901400
3	86dfb21a-9736-499e-bcc9-b6eb75a8c67c	Write blog post	Write blog post with team.	f	1770869374051
3	d4326ed8-04a0-4113-9dfd-f42fbc014f25	Complete database schema	Complete database schema with team.	t	1750918604541
3	f5bade66-0dd8-42a4-b875-080fdbe5d251	Test UI mockup	Test UI mockup before EOD.	t	1773007753812
3	a5ec1735-4f99-4d03-88f9-b4af1618acb0	Test email template	Test email template using TS.	f	1758341073263
3	60ba2a6a-927d-45d0-9dd0-885546c2baed	Review database schema	Review database schema with team.	t	1778624263292
3	624adc00-db4c-4c55-8670-0020c637904a	Complete API	Complete API for project X.	t	1779415981018
3	2b1ec706-2988-4d1c-a579-e0349ea1611c	Design blog post	Design blog post for project X.	f	1763452592103
3	f23e6aae-6220-41f5-ab30-29232cc93beb	Review API	Review API for project X.	t	1753503636947
3	546bcbcc-cb3c-41e0-8266-2f9a79c37c7c	Deploy database schema	Deploy database schema and document.	t	1764398149137
3	ab1562db-612c-4abd-b23c-d7c277eabef9	Deploy email template	Deploy email template before EOD.	t	1769619726025
3	6f451c4c-0462-4f84-9f61-4f71a20afa60	Fix blog post	Fix blog post before EOD.	f	1753615921947
3	93013a7b-a73e-4793-8035-33c9f91af68e	Fix UI mockup	Fix UI mockup in draft.	f	1761348222652
3	e28d4015-87aa-47bb-8ccd-11c027f0317f	Review unit tests	Review unit tests before EOD.	f	1760195952102
3	f0ca5bc2-c5be-4c48-b297-6d3e2ca5afce	Review API	Review API using TS.	f	1781164501882
3	3d71bfd3-949c-402d-ad76-d394eb98fd80	Design UI mockup	Design UI mockup in draft.	f	1769770665985
3	1f747dda-9dc5-410c-be32-cc67333ed811	Fix blog post	Fix blog post with team.	t	1766750138510
3	ebbb5b08-28f5-436e-9202-982b4ab93029	Fix unit tests	Fix unit tests and document.	f	1780155415062
3	75d72fe9-8bdf-41c9-a2ab-17e87d66b4cb	Design blog post	Design blog post using TS.	t	1765014817820
3	f6585842-a54e-4d14-ae1f-7680bf40eb35	Write UI mockup	Write UI mockup with comments.	t	1756400270275
3	fa98ba7e-2c92-468c-a0dc-ba71970ce279	Plan login flow	Plan login flow with team.	t	1778008179310
3	6a18abe4-99d6-4ead-b809-68441a253c92	Design email template	Design email template in draft.	t	1752164718146
3	bb3312a7-95a0-4d33-9fbc-b3fcd7efcd43	Write database schema	Write database schema for project X.	f	1771723108809
3	9720bf53-ef23-4196-9e57-7d0b231768a7	Complete email template	Complete email template in draft.	t	1755469961502
3	12616032-dac6-41b0-8333-55148d2a3f1d	Fix email template	Fix email template for project X.	f	1774898254981
3	7c94e451-7d46-45cc-b321-900b69d5bf1d	Deploy UI mockup	Deploy UI mockup for project X.	t	1773688389701
3	75fab563-6e32-4226-b5b6-150f95ad2ba2	Plan email template	Plan email template in draft.	t	1780894594613
3	ab91f224-199a-4a58-8afe-8402f9e87f32	Deploy database schema	Deploy database schema using TS.	t	1774969321409
3	65d5a6c8-1b0f-4573-a44d-66cf9d86cf1f	Write email template	Write email template for project X.	t	1768626159448
3	b2bb8c3f-60f4-430b-806f-bf8a56a6975d	Deploy login flow	Deploy login flow using TS.	t	1774640321714
3	98aa2809-e521-4722-a440-0881d69258e1	Plan UI mockup	Plan UI mockup with comments.	t	1754287974293
3	637df64b-f615-4451-9623-cb82c00dbc24	Complete API	Complete API and document.	t	1769109622157
3	21f8a227-c180-4761-81f2-13ece5828594	Write blog post	Write blog post before EOD.	t	1775957196981
3	ff91a42b-407f-46fe-a863-0be139dc9c17	Write login flow	Write login flow and document.	t	1764382859077
3	863515db-43bd-4301-a8d1-2d3aff1b23a1	Design API	Design API with comments.	f	1754635740543
3	a38a3a82-4cab-4ec3-bb23-57a1103f00b2	Plan login flow	Plan login flow and document.	f	1752879234034
3	a680a29f-9c6b-4ea1-b56d-5db10bec80a9	Review login flow	Review login flow in draft.	f	1776762674419
3	0b34b425-9be4-4ae5-99d5-e6d1927e260f	Test database schema	Test database schema using TS.	t	1774261718074
3	d4758cf1-bdbd-4854-a3b5-c782fb853f51	Plan UI mockup	Plan UI mockup with team.	f	1757716673912
3	d464ec72-6e87-41a7-82a5-6ebc9d99ad8d	Test login flow	Test login flow before EOD.	t	1757050415316
3	0896a08d-ed6a-49ed-9078-74c14742d2ed	Write email template	Write email template for project X.	t	1765038752282
3	9734ab3b-1089-44a8-8461-a606fffc2f40	Design login flow	Design login flow using TS.	f	1767821964967
3	1b4cca83-6130-47d5-827e-2af258badaf7	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1757835857596
3	b2ea281e-2ac1-4bbd-8018-33d2c2dd954e	Plan Dockerfile	Plan Dockerfile and document.	f	1751306655486
3	34ca8c75-2453-420b-9e8a-fa98d2a7ba56	Design login flow	Design login flow before EOD.	t	1754727552140
3	92ab2d74-edf3-4070-87e1-0579897616bf	Design API	Design API for project X.	f	1760470911952
3	984be34d-bbea-4926-ad60-e7286f50220b	Plan email template	Plan email template with comments.	f	1773344916938
3	975ff96d-03a7-4e2d-8163-abe7a4b5e09b	Plan Dockerfile	Plan Dockerfile using TS.	f	1769884910824
3	79c3acc0-d622-4fcb-a5b5-63839e0a8ce8	Deploy API	Deploy API for project X.	f	1758139898073
3	11fed304-1bb9-4ddb-b3c8-cfaa4fd19e91	Plan email template	Plan email template before EOD.	t	1776094614366
3	6e7639fc-63e5-407d-a15c-cba81a08d583	Plan login flow	Plan login flow and document.	f	1754836182483
3	20ad9c9e-ecc6-461a-acda-4daba08938f2	Fix email template	Fix email template for project X.	t	1779234016555
3	2aed0a8a-91b7-41a9-b4b7-6f51aa447c86	Test API	Test API with comments.	f	1757411545725
3	85b01c4d-756b-4507-bf19-a957d9505558	Design unit tests	Design unit tests for project X.	f	1750179067443
3	2057fe71-9b9b-49ae-bb8b-1aaaf0c8bee2	Test Dockerfile	Test Dockerfile in draft.	f	1779718880913
3	81edf560-dfa5-4dc2-9f79-664bde2f488d	Complete UI mockup	Complete UI mockup for project X.	f	1778751628568
3	4e6129dc-6b70-47eb-b437-6b2845cc531e	Complete database schema	Complete database schema with team.	t	1754968995489
3	fd117ff0-597e-415d-96a9-be5f9b8d8c91	Design login flow	Design login flow using TS.	t	1753814696418
3	f88c7bb8-5f6d-4189-bd8a-94a3eb06412d	Write blog post	Write blog post before EOD.	t	1762042402333
3	3d57fb61-2877-41ee-b63e-7aee5087a344	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1771814130349
3	7e0c961b-ae0d-4f11-869f-3071e62748c7	Design email template	Design email template using TS.	f	1770389428837
3	189c1063-b03f-4395-a672-9dc3ccad02a0	Deploy login flow	Deploy login flow with comments.	f	1774797991113
3	77120f7e-77ba-4808-af2f-a513a52c31d5	Write blog post	Write blog post in draft.	t	1768151330262
3	ee50809c-6af8-4df8-83fd-e95b0635bd29	Review email template	Review email template in draft.	f	1770004402706
3	79184fe2-fcd4-4365-b6e5-edce4ef9d47b	Fix blog post	Fix blog post and document.	f	1778906825995
3	d38924bf-a0b6-436f-972f-579257f13dc0	Review API	Review API before EOD.	f	1780877659007
3	56996f11-7362-4d53-a2f1-1eaefb9c06e2	Review Dockerfile	Review Dockerfile before EOD.	t	1777971935798
3	67050c27-a56a-4668-b891-5ae77ff6a618	Write blog post	Write blog post in draft.	t	1750647045723
3	2c55f93e-8990-4301-aeb8-7bcba56d253e	Write database schema	Write database schema in draft.	f	1755776982742
3	f7b8f7cd-474a-4205-9d52-d3dca41cbf04	Design UI mockup	Design UI mockup before EOD.	f	1776887876652
3	6bbca36c-6a93-439f-b2f3-e8cfa481c2d9	Fix blog post	Fix blog post in draft.	f	1750281959395
3	e36e63f4-b47d-48ce-b1e9-ff7c40510e78	Plan unit tests	Plan unit tests with comments.	t	1777986882788
3	1c2bf797-f76f-4d0a-a1f2-3f371301f26c	Review blog post	Review blog post using TS.	f	1776670376399
3	4d7278bf-16f0-4976-83ab-b1de83686e64	Design blog post	Design blog post before EOD.	f	1760312464502
3	73d59a74-ea71-40e8-ae4e-c1a1205d38b1	Plan API	Plan API with team.	f	1769711521215
3	53480b62-41e0-44d3-ac3e-890de15cad5e	Write UI mockup	Write UI mockup with team.	t	1753626945040
3	b4d62997-82b6-447a-bdb1-61b0f91528bd	Plan login flow	Plan login flow for project X.	t	1773811631915
3	b8dd171c-8806-4ba6-88a4-a1661859ce1c	Plan email template	Plan email template in draft.	t	1780975699336
3	fa0105d4-c1c6-4c97-a0bf-c742b5a3cea9	Write Dockerfile	Write Dockerfile with team.	f	1761245410001
3	3e3476c7-7134-4660-a911-4e56ecfc8eb1	Fix API	Fix API for project X.	f	1776592408413
3	b40225e5-1df8-4131-8fa1-4a4750bf3a8f	Fix email template	Fix email template with comments.	f	1766944369207
3	ae9fdba8-7b6b-413e-9e7d-69fa8183f6f2	Deploy login flow	Deploy login flow with comments.	f	1760257315538
3	9d3135f2-e9d2-4bdb-9e85-e614782f732c	Review API	Review API using TS.	t	1771169761487
3	051adae4-e58b-460a-a531-ede537fef97f	Deploy unit tests	Deploy unit tests in draft.	f	1761176584030
3	270500eb-ad0d-4a2c-b027-ff3c2e5e64ee	Test email template	Test email template with comments.	f	1757148040718
3	e364c5b3-d72b-4b71-b9c7-0af2e00c54aa	Deploy database schema	Deploy database schema for project X.	t	1781108261931
3	10516502-0178-471d-88d6-b8ef22fd15ee	Fix Dockerfile	Fix Dockerfile for project X.	f	1778153626464
3	399b30c8-a17a-4401-9701-7e59a7ff3801	Deploy Dockerfile	Deploy Dockerfile before EOD.	f	1765824557764
3	5ed00f8d-4222-4d2f-a876-6d03d4ad834c	Plan email template	Plan email template and document.	t	1769762168331
3	2e24911d-72b1-49f9-94aa-80223205ae22	Review login flow	Review login flow for project X.	t	1752439651088
3	8395547e-a28c-4ba4-86d4-c2af31a57328	Deploy login flow	Deploy login flow before EOD.	t	1774820897856
3	db2c5ba3-b2f1-4d46-aae0-a2c61dddecfe	Design login flow	Design login flow with team.	t	1777339937592
3	3ca218c7-7844-4fb7-b764-d7908a47ed2a	Fix UI mockup	Fix UI mockup with team.	t	1779358169417
3	b5396611-ca6b-4b9a-bd18-c292cbafc810	Complete UI mockup	Complete UI mockup with comments.	f	1767081607415
3	d505a3ec-8c29-4a4e-8169-5176f91f8ae1	Test Dockerfile	Test Dockerfile before EOD.	f	1757828614888
3	0ec6650b-d894-4960-a724-18b3ab2819dc	Review blog post	Review blog post and document.	f	1754052161878
3	690154b8-9eaa-4db0-aa02-eeea85b85da9	Complete email template	Complete email template for project X.	t	1767511347645
3	d1a84b15-4941-4905-b57e-1973aa4d73dc	Deploy database schema	Deploy database schema before EOD.	t	1775251880987
3	ca8c4925-f8ef-4f05-a538-f1fb61861447	Deploy database schema	Deploy database schema with comments.	t	1772209158307
3	2112d709-790f-46ba-a0f5-f1323648aabe	Review Dockerfile	Review Dockerfile with team.	f	1774319230751
3	c8f1680f-c3e3-4fd5-8799-499405581617	Deploy database schema	Deploy database schema using TS.	t	1774366586453
3	32a65606-d989-4e83-b59b-3613de60ef72	Deploy Dockerfile	Deploy Dockerfile and document.	f	1751052608906
3	14e6a9df-613d-4ddf-bf35-f9b7089c0bf2	Design blog post	Design blog post with team.	f	1765392158842
3	16afbde6-c132-49e2-b7e9-2d646252f588	Fix unit tests	Fix unit tests with comments.	t	1773839974326
3	20f1b968-545b-411f-9088-fdafc19e26fd	Write API	Write API with team.	f	1763874022491
3	f3c4a4b4-1dd5-4957-963c-6bc7bbc3795e	Review login flow	Review login flow with comments.	t	1771100346284
3	6c330e63-afb0-4cfd-8fc2-6bfa1bd0629c	Test API	Test API for project X.	t	1769466468476
3	00678e12-f257-42bf-a29a-1f4410680a8c	Write blog post	Write blog post with team.	t	1772845540014
3	a856ac4f-2063-4405-9213-78c2a35de2de	Review blog post	Review blog post in draft.	t	1756835028454
3	95e588a1-15df-4024-9f91-a87579ee24cb	Fix unit tests	Fix unit tests in draft.	f	1756326993081
3	1cbfc407-79c3-4ce8-9c31-de4a5d9dfa73	Test email template	Test email template with comments.	f	1776019538696
3	7d35358d-2edd-4ada-8b64-5845ebe14390	Review database schema	Review database schema in draft.	t	1754182977513
3	fb0a74c8-dd86-40ad-ae2e-d4e57f1148c5	Test database schema	Test database schema before EOD.	f	1778071769682
3	fb58d402-6848-4c97-ab20-81e82c4af648	Design API	Design API for project X.	f	1757330791653
3	917ab40e-d136-4264-b63d-10c866c1882a	Design login flow	Design login flow with comments.	t	1765697027514
3	f5399a7a-eaa8-453a-bbd0-eb60f6411028	Deploy email template	Deploy email template and document.	t	1766038821502
3	db4d545a-3dc6-41a5-a840-21deb410745c	Review login flow	Review login flow with team.	t	1769164197599
3	08edf40d-b7c5-4624-b667-ba7ef66c1bf3	Fix unit tests	Fix unit tests with team.	f	1766570852603
3	4ea05be0-9ca4-4b4c-8696-d90b07206aaa	Review database schema	Review database schema in draft.	t	1761285409435
3	38b11192-2c97-4c8d-83e9-fdb2bfb53fc6	Review UI mockup	Review UI mockup and document.	f	1771295431992
3	529c1a59-40de-49dd-bf66-4ec513cc4852	Plan blog post	Plan blog post for project X.	f	1775639126676
3	1bf19829-951f-4628-9996-67e3bff7f38c	Test API	Test API before EOD.	f	1772275743870
3	21635c35-dc93-4432-ab04-e4e83bc1c5ba	Review email template	Review email template using TS.	f	1773332320080
3	72327308-b9fe-4f24-90fd-be8b6c112602	Complete Dockerfile	Complete Dockerfile with comments.	t	1763170426788
3	d1f26e4d-3e33-4181-85db-799eff9b81e5	Design blog post	Design blog post in draft.	t	1753246441693
3	7d6f8d7f-6b81-440f-ae69-3bfb0fca28c0	Review email template	Review email template with team.	t	1752605130958
3	83f24e91-87e8-407e-a619-92a0bc998603	Plan email template	Plan email template and document.	t	1773372747827
3	3a709466-bc83-4f85-89ae-09d712859e1d	Complete login flow	Complete login flow with comments.	f	1777705059162
3	0cd510ff-d96b-4e41-aabe-072efc42bf21	Test blog post	Test blog post before EOD.	f	1772514138010
3	43fc17f0-8d75-4ace-a385-f1a4f08c43c4	Design blog post	Design blog post and document.	f	1772408624802
3	2b83f217-b4a3-4817-a869-2f242c0993d2	Review email template	Review email template with comments.	t	1771274363930
3	943ce5b2-eacf-4f85-bd11-affd92a4dede	Design database schema	Design database schema and document.	t	1768253506903
3	21570a33-3e70-4c61-83d7-17982e9ded96	Review login flow	Review login flow with comments.	t	1761444991095
3	04eebadb-942e-4ad6-bf6e-5c57f5be6d90	Test Dockerfile	Test Dockerfile and document.	t	1762408781672
3	8fa2e1c3-66c6-442f-8303-830fb3032f2e	Test API	Test API for project X.	t	1754158600282
3	dba1bf33-1398-4b9d-a6b3-fd51c155ee61	Fix Dockerfile	Fix Dockerfile for project X.	t	1757505743759
3	80d462ec-732c-494b-94c1-c9d827cf84a7	Fix UI mockup	Fix UI mockup with team.	f	1754177067120
3	96b3fbc9-85bd-42ea-8cc9-f98760690ab3	Write Dockerfile	Write Dockerfile and document.	f	1770618520200
3	d0d399c1-9fbe-4d71-86ab-7131a5726881	Design login flow	Design login flow with team.	t	1772470948335
3	38f88819-5d01-464e-88b3-5e5e40221c09	Write Dockerfile	Write Dockerfile before EOD.	t	1780056818759
3	ad7a7639-e8f0-45bb-acaf-c45bc0b44e11	Complete API	Complete API using TS.	f	1758346526876
3	8a220dbc-8dc9-4340-a6e4-adee6e193657	Complete unit tests	Complete unit tests with comments.	t	1773364090281
3	b7d8f07b-d505-4f81-b311-376a571cdb80	Design login flow	Design login flow with comments.	f	1767732137206
3	524d2118-a7fb-4676-b80c-aff64f88b9c1	Fix database schema	Fix database schema in draft.	f	1756535102382
3	8461280c-e3fc-435b-a9e4-a05121df13f0	Design unit tests	Design unit tests using TS.	f	1771919138728
3	5fd4b6b4-e727-41b4-9b95-6407e1ef18aa	Review unit tests	Review unit tests with comments.	t	1761257824626
3	3cfbb0a4-99a9-43e2-ad6b-e2f33ec38935	Test Dockerfile	Test Dockerfile for project X.	f	1772296723019
3	48c46ef5-f1ee-4b79-8d58-68322c6189c7	Fix database schema	Fix database schema with team.	f	1755862871763
3	af27a9c3-3704-413a-837f-a43e114ef18f	Complete unit tests	Complete unit tests for project X.	t	1759039788901
3	842c2c9f-2879-4f0f-ae45-1eddd671146f	Complete login flow	Complete login flow for project X.	t	1758312518989
3	fedc207c-c4a4-48a2-a1cd-39146786cc75	Plan email template	Plan email template and document.	t	1751553074599
3	01a48281-13f8-42d9-8e9a-d619cca42636	Complete Dockerfile	Complete Dockerfile in draft.	t	1751360909429
3	54d5a409-0426-4287-bc18-b6704346c4c2	Test unit tests	Test unit tests with team.	t	1757960965577
3	5ccbb56c-b16b-4fc9-92a7-a9033be7b411	Fix login flow	Fix login flow with comments.	f	1773347570307
3	93954db8-a062-4455-b608-b59c73ccec2e	Design database schema	Design database schema with team.	t	1759154038191
3	988b356d-94f7-4d54-91e9-6f1751df42b6	Write UI mockup	Write UI mockup using TS.	f	1780934306317
3	ad110e76-f4a2-495f-9325-f14fa1c2456c	Fix UI mockup	Fix UI mockup in draft.	f	1776549819702
3	14e4cad9-9270-49a8-bfba-7a99b1da3912	Plan email template	Plan email template using TS.	t	1752289104559
3	97d387e8-381f-47ed-8ec8-b938a19630ad	Complete Dockerfile	Complete Dockerfile in draft.	t	1761873323490
3	cbb95754-52b0-4df8-a5cb-26cf7b74e7fc	Plan login flow	Plan login flow using TS.	t	1754375040235
3	6cd71bc0-cb3e-4317-81b7-3175de088b95	Write Dockerfile	Write Dockerfile and document.	t	1764630602912
3	304ddce5-82f0-4f10-aa67-bdd1140ea9f9	Design login flow	Design login flow with comments.	f	1774813525076
3	e26d47aa-cee2-4e4c-8e15-8a0be1aac21a	Test UI mockup	Test UI mockup before EOD.	f	1767808437940
3	30fdcece-d638-465a-a0d7-c114d23fceaf	Plan blog post	Plan blog post in draft.	t	1781425936360
3	4a3c4482-bd38-4dd2-a230-3e6db3007acb	Test unit tests	Test unit tests with comments.	f	1779804044850
3	27664c19-be1a-4bea-a5f8-7ae568959fa9	Write email template	Write email template and document.	t	1754230210293
3	7a212abc-667c-448b-b6e8-42f723e34346	Review database schema	Review database schema with team.	f	1764981974849
3	679af199-79a8-45bf-8eea-2d3cd25f9c08	Design Dockerfile	Design Dockerfile and document.	t	1773505351452
3	3c8be568-b376-4ff1-a166-cd55e5a5122b	Fix UI mockup	Fix UI mockup with comments.	f	1756599052258
3	534e5ff9-1d73-4d71-88c8-1e61a7eb91df	Plan Dockerfile	Plan Dockerfile with team.	f	1765102756385
3	9c1d1ea4-f9c6-4943-91e5-eaee05da7494	Write login flow	Write login flow before EOD.	f	1757137362148
3	ec8b1e63-7bd2-4278-85bd-dca988ddf57d	Write unit tests	Write unit tests for project X.	t	1756503810974
3	45a82ff6-f9df-4914-9ba1-140609e81061	Write email template	Write email template for project X.	f	1759538754669
3	b9488e1b-e5b8-41fc-93fe-c66dc094eb91	Complete unit tests	Complete unit tests with comments.	t	1764675781830
3	e87570fc-2d82-4e20-b574-1f2c52db9315	Fix API	Fix API and document.	f	1776474643986
3	1ff3b044-db4b-46b2-831b-957ff1ef44b1	Review blog post	Review blog post in draft.	f	1762312153809
3	cc892320-045e-49ad-9ab2-683902f95f34	Complete Dockerfile	Complete Dockerfile in draft.	t	1763456365685
3	b4345d0d-2aa2-47e8-aa81-fbdcdf1c029b	Write blog post	Write blog post with comments.	f	1763257541327
3	c91b4539-c1d3-49d5-be30-86514af371bf	Deploy blog post	Deploy blog post in draft.	t	1750972266075
3	21fdbe17-1490-43a9-9d81-99090c4a3af6	Complete API	Complete API and document.	f	1765477128466
3	c3cde3db-6b08-4ab2-8886-5356b323a18b	Plan database schema	Plan database schema using TS.	t	1772121469677
3	5e505e3b-c09b-4a18-9fea-4aea2e97e743	Complete API	Complete API with comments.	t	1779738657006
3	40fe09e2-eaa8-4b21-8c67-e0ca6147d7fb	Test login flow	Test login flow and document.	f	1781151911848
3	45e3af7a-108f-49f0-964c-9cfefac52564	Design blog post	Design blog post and document.	t	1762996276221
3	65cfbf9d-2fb4-4341-8ef3-c39590eb394a	Design Dockerfile	Design Dockerfile using TS.	t	1769439228232
3	e09cd144-ea5f-42c3-9385-0bc1b66eb37c	Complete login flow	Complete login flow in draft.	f	1751298415884
3	7f59af0a-17d2-41b7-8a9e-b51e83b939d7	Review login flow	Review login flow in draft.	t	1773246319395
3	2562c2ff-b55d-4fd1-b79a-aed58715b9e4	Review unit tests	Review unit tests and document.	f	1751703386860
3	5b6582a3-0629-4759-b938-d918dae7bd3a	Test database schema	Test database schema with team.	t	1757729650227
3	c37b4130-ef49-4a7f-ac35-e74fc8df3e79	Write unit tests	Write unit tests before EOD.	f	1780468674742
3	bb67d259-92c9-42f6-9c16-946dcae7912d	Test unit tests	Test unit tests before EOD.	t	1766683228790
3	ff69db0f-e496-4cfc-ab3b-92801cb7c587	Complete Dockerfile	Complete Dockerfile before EOD.	f	1752299706956
3	bf99cbe0-2b6b-448c-9670-86a0b90dd53a	Deploy email template	Deploy email template using TS.	t	1759996018561
3	e4ffb268-ba83-4e5b-b41d-bb0023dbe635	Plan unit tests	Plan unit tests with comments.	t	1760151547196
3	39661526-632f-4182-b945-6ae252fa2f25	Test Dockerfile	Test Dockerfile and document.	f	1767255045221
3	2530f242-0b53-48a0-9e46-f5d1a8c89751	Design UI mockup	Design UI mockup using TS.	f	1760547213131
3	9e6be410-7358-4bfc-b563-325b9f5ba4e1	Deploy email template	Deploy email template with team.	f	1769996619049
3	520d3689-f98c-4063-a39b-445ac3cc9c56	Complete API	Complete API before EOD.	f	1751896372901
3	67efef46-f8e1-4ed6-99b0-0b8cd4ce791d	Deploy unit tests	Deploy unit tests and document.	t	1761108511497
3	a7c2f22b-1200-4149-95ad-f31d2b80305e	Design database schema	Design database schema before EOD.	t	1763819325543
3	d1dfc02c-c103-48db-8787-ba2a185f4e14	Test API	Test API and document.	t	1779014285238
3	96c6b341-a9a8-4dfc-9fbd-d47d53cddb6c	Design login flow	Design login flow with team.	f	1781134874972
3	271fb41f-70f4-4fea-850d-80c280eb4ca2	Complete unit tests	Complete unit tests with comments.	t	1750766499132
3	e2d00b61-99ee-43a6-b9d2-e7ddddd15c53	Fix Dockerfile	Fix Dockerfile in draft.	f	1751996643908
3	c0d233f6-3a99-49ee-ac6f-dd458e2bb1cc	Write database schema	Write database schema using TS.	t	1775446924627
3	e3c47b6a-86a5-4de1-b19a-1e6e8014ebaa	Write UI mockup	Write UI mockup with comments.	f	1758152680143
3	d71e76c7-f64f-4c13-abc5-944675356226	Design Dockerfile	Design Dockerfile for project X.	f	1763168794470
3	321f86c2-e98b-4b10-8d86-ad7455bd12f7	Fix blog post	Fix blog post before EOD.	t	1767218029935
3	f72bc3de-6904-456f-8961-b9492a117fbd	Write unit tests	Write unit tests with team.	f	1771424555603
3	06b1079a-af3e-45c6-9a73-b60959c9ed1e	Complete Dockerfile	Complete Dockerfile and document.	t	1781558259700
3	f1f2e4e2-aea0-405a-af3a-babe736e5859	Write Dockerfile	Write Dockerfile with team.	t	1781232019680
3	745a322b-7050-49b3-b8f6-0950d55d34c2	Complete blog post	Complete blog post with comments.	t	1778692289016
3	a84003cf-3632-4e6b-87be-62909d3458dc	Review login flow	Review login flow for project X.	f	1764382781678
3	420612ac-4b94-4564-ab6c-bd8cb226d5c9	Complete email template	Complete email template before EOD.	t	1773710173764
3	89100b8b-8444-4031-9447-c3c0df573634	Complete blog post	Complete blog post in draft.	t	1764238052771
3	3621461e-f69b-478f-be31-264923206e28	Deploy API	Deploy API with team.	t	1769752175165
3	e420a82c-b742-4198-8f57-1b1051b0a535	Plan database schema	Plan database schema for project X.	f	1771390471116
3	a189854f-d59c-45e1-9575-6ca8da419a1b	Complete Dockerfile	Complete Dockerfile and document.	t	1761217823609
3	5f3234e9-e487-4555-994a-92f54a744393	Write blog post	Write blog post for project X.	t	1766049139538
3	60c7c300-aba7-487b-841a-1ee991ddb5d9	Plan API	Plan API with team.	t	1757509118874
3	ba093f6e-2614-4b08-b969-23b40f84aa25	Test email template	Test email template before EOD.	t	1773838017697
3	abcfdbf1-002f-4eef-b1ab-2f2b0df7207a	Design API	Design API and document.	f	1778663684924
3	5741e3c9-bbd2-4c41-aac4-fc584493cf73	Write database schema	Write database schema for project X.	f	1757976520652
3	adf275d4-8498-46a3-9a56-2c425661f42b	Write login flow	Write login flow using TS.	t	1762619680946
3	e81bc10d-c583-465f-8e3a-7b73e32ca467	Write UI mockup	Write UI mockup with comments.	f	1768285501598
3	42173c68-b894-4f86-b66e-7dcc9cad8d07	Deploy unit tests	Deploy unit tests before EOD.	f	1779463719877
3	84599018-95d6-4dfd-bb20-6931e67c713b	Review email template	Review email template in draft.	f	1753163052146
3	b0003bb5-6665-4916-a54a-3ed2a8fa152c	Review Dockerfile	Review Dockerfile with comments.	f	1778472198188
3	5c8a9262-4808-43c5-ba2a-ce5715c446b3	Design blog post	Design blog post using TS.	f	1755651664770
3	9fb418cb-3bc9-4e1e-93c3-a35b70c521c2	Plan database schema	Plan database schema with comments.	t	1757134341911
3	aee29ceb-d82d-434a-957a-f16d988624dc	Test login flow	Test login flow for project X.	f	1755530944338
3	4a725f0f-eb22-404d-8a7d-0e7d64fbd50d	Deploy login flow	Deploy login flow in draft.	f	1772095443980
3	df41f757-eab9-48d1-a48d-ccf6ef99f482	Complete API	Complete API with comments.	t	1767903387319
3	960d7cda-9398-4786-86e6-94875c5e568c	Deploy blog post	Deploy blog post with comments.	t	1761358713691
3	115f92e1-2273-4e13-8825-b7d8e3cf17b7	Fix Dockerfile	Fix Dockerfile and document.	t	1764429326914
3	16397abc-91a4-45ac-8f02-36658f8b653e	Fix API	Fix API before EOD.	f	1775131335642
3	2fa38ff1-2f10-40eb-91ee-14be0a962db6	Plan login flow	Plan login flow before EOD.	t	1758277422326
3	876a7b7d-4b21-4904-a213-4c09d2040294	Review UI mockup	Review UI mockup and document.	t	1773352471915
3	8134b4c8-3257-4e7f-b09b-629ca561523f	Plan blog post	Plan blog post before EOD.	t	1750415234890
3	b0afd6e9-26a0-402f-9168-7c6dee1eaa22	Test database schema	Test database schema with comments.	f	1770717746695
3	1706c259-5f71-438d-9320-c277af2d20ec	Test email template	Test email template in draft.	f	1775929571792
3	3df0793f-2c9e-4301-9254-3fb8c28d902b	Complete Dockerfile	Complete Dockerfile and document.	t	1779297695192
3	3d86544d-a548-4911-9384-d06b9a55262c	Complete UI mockup	Complete UI mockup with comments.	t	1776922206345
3	84111088-eeee-498a-9567-0616051135d8	Fix Dockerfile	Fix Dockerfile with comments.	t	1770356827752
3	1012abc5-48aa-419f-9e27-89a5a4ca1eea	Complete UI mockup	Complete UI mockup for project X.	t	1753047936803
3	6d0cb9b6-fb32-4b08-8e8a-5796bdda93b6	Write Dockerfile	Write Dockerfile in draft.	f	1752793015386
3	05fd33a2-ef38-49e1-8325-fb8c1bf65ca6	Deploy email template	Deploy email template for project X.	f	1760547424451
3	930c9bc1-0b3b-4a78-8b73-470974a29d59	Test database schema	Test database schema for project X.	t	1750221748802
3	32800a45-ba00-4272-9a82-d72f38f44b9a	Plan unit tests	Plan unit tests using TS.	f	1777597383840
3	540a2f8d-600a-4341-8db9-557e1105b520	Write unit tests	Write unit tests before EOD.	t	1778128414450
3	c04c3b74-07b4-4ad6-ad44-b4ccdfd9c817	Review UI mockup	Review UI mockup in draft.	f	1764808509896
3	870dfbf2-46b0-473a-9f2a-3dbc9981c05f	Test Dockerfile	Test Dockerfile before EOD.	f	1753221966841
3	2d23b0ff-eece-43dd-b0b8-6d738d29ff20	Design database schema	Design database schema with team.	t	1766873820139
3	ab25095b-0fc9-48e1-bf64-63980e996a8c	Deploy unit tests	Deploy unit tests and document.	f	1759042492789
3	72db8e46-6b47-4ed8-ad69-6a6233ae0718	Fix database schema	Fix database schema using TS.	f	1761261686932
3	eb332e7f-c085-432e-bc38-55eb5caef8f6	Complete database schema	Complete database schema in draft.	t	1757505235884
3	df4262a5-c0fd-4e2b-a8d9-31e4836e9dda	Deploy login flow	Deploy login flow with comments.	t	1770819107971
3	80e74454-6ab0-4990-b4fd-7875a288f656	Fix email template	Fix email template for project X.	t	1755779209890
3	486ba39f-629b-494b-95d3-c0db1eb61a62	Write Dockerfile	Write Dockerfile with team.	f	1765223902269
3	0a22f902-92f7-4e1b-a7e4-677343988b1f	Write UI mockup	Write UI mockup with team.	t	1769363221291
3	3b8c62e4-b8ce-4b65-a9db-1f02319bc313	Test email template	Test email template and document.	t	1755150535021
3	2bc28915-1a40-4338-8319-36af97a9a3fa	Fix blog post	Fix blog post before EOD.	t	1759765959612
3	2aa11686-588d-4b90-ae6f-50039ee1b2c7	Test email template	Test email template using TS.	f	1753204586153
3	384c0124-d533-4000-a1b4-145b931cc146	Complete blog post	Complete blog post with comments.	f	1755300648131
3	719d5e3b-3db9-4b3e-a8f7-4af668ed0f3e	Complete blog post	Complete blog post with comments.	t	1775579992441
3	290e8203-c38d-4321-9912-98a54d365f08	Fix UI mockup	Fix UI mockup with comments.	f	1758298380544
3	87e49aab-eab3-4374-beb7-e3a33358ab0a	Deploy blog post	Deploy blog post in draft.	f	1777444203598
3	b0e3f07a-0199-486a-973f-fc18d7ea0523	Test blog post	Test blog post in draft.	t	1757473741134
3	71d8e086-9acc-4e65-bba2-f96c1b9469b2	Plan email template	Plan email template with comments.	t	1781254751769
3	e64af874-9dee-419b-808e-cef832b61536	Deploy database schema	Deploy database schema using TS.	f	1753887745262
3	c60b5b9d-294c-4ead-8306-6e14710cdcfa	Fix API	Fix API for project X.	f	1767877272396
3	9e5322c8-02fb-4cb2-b692-30948442a29e	Deploy API	Deploy API in draft.	f	1779867085494
3	119fb95d-2075-4e4b-8a0a-f3d6b807c9de	Complete database schema	Complete database schema with comments.	f	1763751541245
3	20dfca04-dbaa-468a-909d-dd5d1e05f57a	Fix API	Fix API using TS.	f	1758021617465
3	9c1d5427-5a27-40c6-9c51-71ff93fd6f6a	Write database schema	Write database schema before EOD.	f	1759789871908
3	42eb7d02-20a4-45d3-b5ce-c97c15123c33	Fix database schema	Fix database schema before EOD.	t	1772043716524
3	0e440c12-450a-48a9-a0c3-8731cd0e3d70	Write database schema	Write database schema before EOD.	t	1757148445703
3	b4a5e21d-a6ec-4af8-b8d5-6aeb870c0c76	Plan API	Plan API in draft.	f	1757865821254
3	84279f9a-ca84-46c9-a558-e3cff8eb5802	Complete unit tests	Complete unit tests and document.	t	1760694720335
3	cadfec10-1d04-4e4d-bde6-7bc01d16ffc4	Plan Dockerfile	Plan Dockerfile using TS.	t	1765936454945
3	84bbce27-5db8-4b14-b78e-1aa0e14be7cd	Fix blog post	Fix blog post with comments.	f	1777019001907
3	565166f6-c401-4cd5-b257-714134729b0c	Write blog post	Write blog post using TS.	t	1755934268237
3	c0f4060a-fba1-4e15-b25c-f18da9571729	Complete API	Complete API in draft.	t	1781399046499
3	ebaa8069-861c-465e-b53e-8eceb02a5f2b	Design Dockerfile	Design Dockerfile before EOD.	f	1774894056216
3	dc7bab22-bfe2-4acd-845a-2719bfc5d8b2	Review email template	Review email template and document.	f	1781223382625
3	bd720591-22f3-4894-95fc-8da9c088481d	Write API	Write API using TS.	f	1755146139800
3	5b71dfb5-7ade-4110-a429-9bcadda86e43	Review email template	Review email template with comments.	t	1761355445908
3	1d7551c5-1e1d-4edb-9d1a-33b7a99cb2c1	Deploy login flow	Deploy login flow with team.	f	1757286605328
3	a5f108d9-a11e-46b1-82b8-ca14079254e5	Design database schema	Design database schema for project X.	f	1778271716426
3	a7d4d7c2-fe2e-44c4-9515-b59ef4e5f390	Fix unit tests	Fix unit tests with comments.	t	1759293084308
3	503bba45-1e0a-4564-868f-9dc7a22e1b49	Deploy Dockerfile	Deploy Dockerfile with team.	f	1753246449248
3	8332c1bc-5464-4461-8237-dbb2c7c6491d	Review unit tests	Review unit tests in draft.	t	1768036152827
3	56d3923d-f92e-4481-8d7c-f54c0e5c0d9b	Complete UI mockup	Complete UI mockup with comments.	f	1778267475902
3	5b12cfe0-c141-4e99-aabb-f4a15037cf33	Complete unit tests	Complete unit tests in draft.	f	1770552549400
3	88467bae-61b7-46d3-a290-6b5a943599d7	Plan login flow	Plan login flow and document.	f	1769421169172
3	c1d948bc-2930-483a-907a-f265b6387e6d	Deploy email template	Deploy email template using TS.	t	1766255136205
3	4f3e4edf-57c5-4247-88b6-35e3619ab6df	Plan Dockerfile	Plan Dockerfile with comments.	f	1759743079190
3	12eb0932-3027-4c52-adda-2efcf922da4d	Deploy unit tests	Deploy unit tests before EOD.	f	1778379818065
3	6369af77-5e73-4adb-8351-38bdf460c518	Complete unit tests	Complete unit tests with team.	t	1781325492067
3	ab6da10c-bb50-44f3-8291-41eefee15578	Complete email template	Complete email template and document.	f	1756194985976
3	ab2c609e-4a3e-4109-baba-71a9cc648536	Plan database schema	Plan database schema and document.	t	1772857943609
3	3cc5c74e-029a-4931-952e-d2ad88163d81	Review database schema	Review database schema and document.	t	1752307930802
3	b707f389-74b3-41ba-bf85-0cc230f1e1b5	Deploy API	Deploy API before EOD.	t	1751492389818
3	d6f77da4-ccce-4bc7-8f65-07eca5bcc67b	Complete UI mockup	Complete UI mockup with team.	f	1766001636278
3	9e26bc15-db2f-4dfd-9cb1-5f5a78b64f40	Test login flow	Test login flow using TS.	f	1771501296531
3	934053ee-a4b5-4c6e-aa80-388c5b47594c	Deploy unit tests	Deploy unit tests with team.	t	1772753663536
3	389fe094-34e4-421c-b4dc-84b2a6fec673	Plan UI mockup	Plan UI mockup with team.	f	1781621728427
3	b03ac8ba-0922-48bc-aff4-3785e9a1df84	Deploy login flow	Deploy login flow using TS.	f	1774085161870
3	4294ec71-2427-4ae0-83bd-5b547e150c7a	Design email template	Design email template in draft.	t	1763270028921
3	c4691d12-1f46-432f-8c30-8f3d4dc44fc6	Deploy unit tests	Deploy unit tests and document.	t	1764758359448
3	8719dd4f-d97d-42c4-be5e-83f754320612	Fix unit tests	Fix unit tests in draft.	f	1759858355546
3	3768fc35-1a04-4b43-8d81-d24236a15209	Complete Dockerfile	Complete Dockerfile in draft.	f	1768021297595
3	5fe32492-fd24-40f3-805d-4b93c375f730	Deploy database schema	Deploy database schema using TS.	t	1760648005676
3	de337a53-e1e0-4c49-9247-a4b0aacf858e	Plan UI mockup	Plan UI mockup in draft.	f	1780975656603
3	aa85f5b4-86ac-4f1d-baf0-2a400e980998	Deploy unit tests	Deploy unit tests for project X.	t	1756449581899
3	bb8f783d-e2a2-4e4d-b729-e2ab6a6a2293	Complete blog post	Complete blog post for project X.	t	1774609559475
3	33f9911d-fc6e-4740-b079-27f228b3dbf3	Plan unit tests	Plan unit tests before EOD.	f	1755945771113
3	155cbc54-a55e-4f1d-ab34-dd57017bdd02	Write login flow	Write login flow in draft.	t	1773986782701
3	5eb80bff-40d4-43b5-9247-ba6568e71f0c	Complete email template	Complete email template with team.	f	1779790759224
3	7f961afe-010d-4c6c-b3d7-505ad6899654	Design blog post	Design blog post for project X.	f	1764664553679
3	ce018e94-456c-4dc1-af2e-1163cbbb516f	Plan blog post	Plan blog post in draft.	f	1775665208617
3	9a190cff-ce05-4e2c-853d-873980e2b6df	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1781367691592
3	79378515-f9f7-4cd6-a6ea-f92d0fff3609	Design unit tests	Design unit tests before EOD.	t	1773254560456
3	e9aeec00-1b90-4e29-8193-7e393e422897	Test database schema	Test database schema and document.	t	1776591265873
3	0f630f32-a903-485a-bb51-0d0889328bbc	Complete Dockerfile	Complete Dockerfile with team.	t	1781497623973
3	5e2980ab-6c3a-4604-8214-9892899988b2	Design database schema	Design database schema for project X.	f	1765360057139
3	af45311d-dbaf-48b2-b4b5-64f06cb5ff7b	Deploy Dockerfile	Deploy Dockerfile for project X.	f	1780568591249
3	6b3e539c-acf0-45b8-b126-b56193ffd275	Deploy email template	Deploy email template with comments.	t	1767288018373
3	96436bca-a731-4370-8e40-e1a562d9d42b	Review API	Review API for project X.	t	1757421114869
3	033bf911-695e-4f90-98ae-60c71ba6d7d7	Deploy API	Deploy API using TS.	t	1753909803056
3	2d296116-def2-4f63-bf40-49aad67d18f3	Write blog post	Write blog post before EOD.	f	1750883109335
3	44ccdafd-b9c2-404e-b586-d6959dcf5c5a	Plan login flow	Plan login flow for project X.	f	1765243850142
3	b8636b22-8779-4dbb-a7b1-f7cd6a90bc42	Write email template	Write email template using TS.	f	1772028764776
3	ae52db92-bde5-49db-b69b-103a9fdd2ddb	Review login flow	Review login flow with team.	f	1766820905781
3	c31366c0-f7ef-437e-be37-2cd49f99c840	Plan API	Plan API with team.	t	1752884316588
3	ca37b670-39aa-4dba-a79b-cc072743f5ee	Write email template	Write email template before EOD.	f	1759654073933
3	5dd61bda-ecaf-4283-9bc1-2f116bd6df6a	Plan database schema	Plan database schema with team.	t	1775906731759
3	30139a73-9e1e-49fb-9534-7f44aa9b7160	Test UI mockup	Test UI mockup with team.	t	1777131403434
3	2faeef3d-6b84-4b29-a16f-0014dccfa7d2	Fix database schema	Fix database schema for project X.	t	1752635965187
3	8ad43f62-74ef-4734-9d92-b3d1894f733a	Complete email template	Complete email template and document.	f	1770797732668
3	7b3727df-7122-4464-8767-2c68f3284b01	Write email template	Write email template with team.	f	1779441952727
3	15124e56-3bcb-4e9d-b0f1-2885a337d902	Deploy API	Deploy API using TS.	f	1773739804441
3	2c3c1241-5cae-49d8-843a-8c17996876aa	Test blog post	Test blog post and document.	f	1764221656450
3	1b773a74-0d4e-4b77-831f-0fc7155a089c	Complete database schema	Complete database schema with team.	f	1774611026613
3	59077ec1-b2af-44a2-9f6d-3af3a8827839	Design Dockerfile	Design Dockerfile before EOD.	t	1764676629926
3	52ee2625-dfd2-4054-ae39-d4bfd5a6a63f	Write UI mockup	Write UI mockup with team.	f	1780416048513
3	641d0e5a-0435-47f8-89fa-24742ed7a68a	Deploy database schema	Deploy database schema using TS.	f	1755965097917
3	3bf120bc-6d62-4a22-9ff1-97a634872418	Deploy unit tests	Deploy unit tests before EOD.	t	1750758855320
3	e4fa0926-58a1-4a52-b93d-52c54ab74f37	Test database schema	Test database schema and document.	t	1771369363976
3	e7ac4b0b-2976-46c7-96b4-6b415f178c7b	Write blog post	Write blog post and document.	t	1772303068246
3	ec5d85b4-50a2-4631-9b57-c90be6328a33	Fix database schema	Fix database schema using TS.	t	1755439245655
3	4c2fb81c-2c5a-4f54-8da0-c575d38c928d	Complete API	Complete API with comments.	f	1761311804387
3	0fd22bc3-4706-4525-89c1-09c3f11c56f9	Design UI mockup	Design UI mockup for project X.	f	1756863730269
3	bc47dcef-c23d-4375-87c7-db4e09af6168	Plan Dockerfile	Plan Dockerfile before EOD.	f	1752864796799
3	f6e1def7-fe84-4923-8bef-40b62539f452	Write database schema	Write database schema and document.	t	1771154825972
3	ced7221c-fae6-47d0-948a-584cf23881f7	Test blog post	Test blog post using TS.	f	1761824491403
3	83982c99-e874-44ac-ae75-087c36d6dc48	Review login flow	Review login flow before EOD.	f	1775159363518
3	d486d725-5e28-4b31-93af-db8e279c9b40	Fix Dockerfile	Fix Dockerfile and document.	t	1779526729694
3	dfa4e23f-27e0-4751-88a1-0c8c7c11e272	Write unit tests	Write unit tests for project X.	f	1761804172503
3	fd846c55-411b-43b5-8fe7-dadc0bc819a3	Write UI mockup	Write UI mockup using TS.	t	1767530072654
3	64acd594-003a-453a-9559-27b9149eb2c4	Design login flow	Design login flow and document.	t	1756446995393
3	fffa8646-e73c-4478-bce5-009df98f0197	Review unit tests	Review unit tests using TS.	t	1767425851867
3	cd438d78-7483-4d49-8025-9d8c3f5d9382	Review Dockerfile	Review Dockerfile with team.	f	1766955451114
3	ae8323a1-9730-4ee1-ba35-53f16c48ce0a	Test API	Test API with comments.	t	1764253421046
3	425fc338-8958-464b-9202-f2ccbf16c260	Complete API	Complete API before EOD.	t	1771231251568
3	8ffc5b6c-0d1f-49fb-983a-c9a31e97be09	Deploy unit tests	Deploy unit tests with comments.	t	1769532361592
3	e1fcee89-908c-4aa4-93e5-2824adc71975	Test email template	Test email template and document.	t	1760703835164
3	773077b0-247c-48b4-9e13-070cdaf799ec	Fix login flow	Fix login flow for project X.	t	1776430902929
3	f63c3bae-7465-4164-b6da-a42aa8fe35b5	Test Dockerfile	Test Dockerfile for project X.	t	1760772946972
3	a6331cc8-edce-419d-9318-c17314f20944	Write API	Write API using TS.	f	1776679944596
3	58c4e674-803c-4c8e-af6f-80ede2c3b139	Complete email template	Complete email template with comments.	f	1775280086630
3	28d0afc0-5a21-483d-915d-47bd9978b8d1	Deploy UI mockup	Deploy UI mockup before EOD.	f	1766159670387
3	2c0c2030-d084-41b5-8e62-9522ff0bbaff	Design database schema	Design database schema with comments.	f	1780365900622
3	5ede1446-b06f-424a-bc7b-99908587be96	Test email template	Test email template before EOD.	t	1760548826021
3	8f9941c8-d0df-44b5-b0f4-fc9ef3751af3	Review Dockerfile	Review Dockerfile for project X.	t	1761142050808
3	6e8cecdf-cac1-4910-ad1c-82c60bef6c92	Review login flow	Review login flow before EOD.	f	1779914212777
3	5f403b6a-f87b-4a57-a591-1c5e4c5c6fa0	Complete unit tests	Complete unit tests using TS.	t	1780276151602
3	47667b62-9611-4f76-a474-09b8095704d6	Review unit tests	Review unit tests and document.	f	1750919867433
3	7a433f84-2d19-4e44-be52-a5966709a102	Write blog post	Write blog post and document.	f	1777281043998
3	195d7f1c-32ed-4787-bda4-f4f136b8cbbb	Plan database schema	Plan database schema for project X.	t	1766148336808
3	25b5711a-65d8-4fee-a1ae-9ca928b018c4	Deploy blog post	Deploy blog post with comments.	f	1780685357026
3	ceb4c467-9985-498b-8c1c-9aed42243d29	Write Dockerfile	Write Dockerfile for project X.	f	1778856465879
3	dfaac34a-d3be-4f3a-ab96-dfa19943d7cb	Write API	Write API using TS.	f	1769883510723
3	fca7b1ec-4a6c-4464-8ecc-e20c5ef56a8a	Write blog post	Write blog post before EOD.	t	1761312570207
3	f47f58b9-5553-4685-8d18-90d3efdc97c3	Plan unit tests	Plan unit tests with comments.	t	1754015661758
3	f2a9f2a6-c539-492e-97b0-65ce4980f0d5	Test unit tests	Test unit tests and document.	f	1752361615259
3	59f22497-8b33-4213-993f-c461c9e6116f	Review login flow	Review login flow and document.	f	1761381899946
3	e19c903a-a60b-4b56-a04d-779ff424efe3	Design blog post	Design blog post for project X.	f	1753246367383
3	5487491e-8e57-4e2d-9050-d2202df046ce	Write blog post	Write blog post and document.	f	1781408162679
3	281e9dcc-c527-456b-b47b-8056c3f5c684	Write unit tests	Write unit tests before EOD.	f	1752689163618
3	222d2f5c-fa7a-4b5e-8d1c-98df528f8d8c	Plan blog post	Plan blog post before EOD.	t	1751717842898
3	06c557d9-121f-478b-a1e4-2e34eabe2e4f	Write unit tests	Write unit tests for project X.	f	1771411143101
3	fabb9788-ea4e-4beb-afb1-29b2d3bed6a2	Test Dockerfile	Test Dockerfile with comments.	t	1765255220257
3	ab1c757b-1bd6-4734-87f4-7b0c541b0fe3	Write UI mockup	Write UI mockup before EOD.	f	1750196639108
3	ecc3f013-ad83-4615-8693-5049ed685d40	Deploy database schema	Deploy database schema before EOD.	f	1754943482756
3	9d427c90-0171-4d5c-bf01-877ffe1b3324	Complete login flow	Complete login flow for project X.	t	1751310591435
3	7e50c0bb-c6b5-488c-8433-11d7d2cfdda0	Write database schema	Write database schema before EOD.	t	1774714060811
3	68a31367-0bd0-4a11-a275-0c074add5c12	Design UI mockup	Design UI mockup with team.	f	1779090494248
3	6121216a-241b-4dd4-8359-eefe74b9051d	Design email template	Design email template in draft.	f	1781674798756
3	be34c6a9-1766-4114-a500-835640f25253	Review blog post	Review blog post with team.	f	1778272352595
3	1127d85d-88fa-4b21-a164-95d156dc52de	Design UI mockup	Design UI mockup with team.	t	1752306228141
3	01bd0034-e654-468f-b081-646f1b5bfa1d	Test unit tests	Test unit tests before EOD.	f	1762690425153
3	ccb51968-2cbd-43a9-8734-325bbff46157	Fix login flow	Fix login flow for project X.	f	1778092347766
3	095b2942-a7b9-4e69-8faa-1bc0fcc5fd21	Review Dockerfile	Review Dockerfile using TS.	t	1751131510977
3	3baee6f2-fb03-4337-ba67-2a219c4fc853	Test UI mockup	Test UI mockup with team.	t	1776889960705
3	c3708751-bebd-4dee-8f36-2f5c92a3d46b	Deploy API	Deploy API for project X.	t	1764433976263
3	12af4e59-ab0f-4a56-8164-d31942a11679	Design API	Design API in draft.	t	1771568956311
3	9c8acf60-b9b4-47e2-8007-008b5a669789	Complete API	Complete API with comments.	f	1778830691030
3	854b14f6-6284-461d-8240-3901360b07bf	Complete API	Complete API before EOD.	f	1774683412551
3	3aa4eeb4-a943-4d16-921e-66bb6dc4164a	Design email template	Design email template for project X.	t	1765042357965
3	1570ca9a-9f04-4727-b65b-ad9cf8d81beb	Review API	Review API and document.	f	1752362758959
3	d2f3fec0-558f-4674-9152-1f256c77cb72	Design database schema	Design database schema before EOD.	t	1781125487341
3	87e32124-690c-49aa-90ea-878dfb96a847	Write Dockerfile	Write Dockerfile using TS.	f	1778338658042
3	0cfd45a5-0543-4c18-a5fe-8925b7f1522c	Fix API	Fix API with comments.	t	1778549436123
3	eca7518a-6c72-4097-aa76-6aaa777ba851	Write UI mockup	Write UI mockup for project X.	t	1769018832304
3	f403d234-0349-409b-aa04-42889a84046c	Design UI mockup	Design UI mockup with team.	f	1774338492338
3	b81f2f61-8cf0-4c21-bcd0-6c88f7335301	Review API	Review API and document.	f	1750560183302
3	9cceb1ba-932b-4321-85c5-f0419cc45da4	Complete login flow	Complete login flow in draft.	t	1770409221414
3	09caaafe-3ed5-4912-9d0d-9cf0dfd46cff	Design database schema	Design database schema in draft.	f	1765707087282
3	fdb7248d-3432-4059-a909-9189357ff029	Plan database schema	Plan database schema using TS.	f	1779030237823
3	780e26b3-6869-43fc-9b4b-014e0c6927e3	Fix Dockerfile	Fix Dockerfile and document.	t	1759942794152
3	12333542-51e7-452e-8303-ede9e09b0862	Plan login flow	Plan login flow with team.	f	1759136054677
3	f2d9fc73-a4a9-4c7b-bd2f-b92eca4dd4c0	Test Dockerfile	Test Dockerfile with team.	f	1772112446490
3	69bbd395-34d2-423c-a565-e9c698dee0d0	Write blog post	Write blog post for project X.	f	1754335859207
3	d7bc72cf-3b7c-4456-ada2-1e2ea1e1c38b	Test Dockerfile	Test Dockerfile with team.	f	1750383312908
3	1a4c69d6-8b2f-4022-bac1-c07573f632df	Plan UI mockup	Plan UI mockup with comments.	t	1759808010936
3	224b9978-7273-427b-aefe-c4accc4ce232	Design login flow	Design login flow in draft.	f	1764871450476
3	7899b6a0-e060-46b5-b8b8-de0c3d134087	Write API	Write API for project X.	f	1755673921581
3	d4858a8e-5210-4294-a329-b19da012506a	Plan API	Plan API before EOD.	f	1776731129041
3	dffb656b-05d0-413f-b7fc-3a9e1218f8ae	Review database schema	Review database schema before EOD.	f	1764601288897
3	bbe2b7b5-6e9c-4a0f-9d36-462b4841fd0d	Plan login flow	Plan login flow before EOD.	f	1767063571324
3	1467e098-c514-4bd6-a3ac-00dc224fff1b	Design Dockerfile	Design Dockerfile using TS.	f	1765171913132
3	9b156b89-fdd8-4430-b237-13035c129ffe	Design API	Design API for project X.	t	1773876686038
3	67a457ba-ea5d-4390-8dcf-170f0063498d	Deploy blog post	Deploy blog post in draft.	t	1755388571983
3	162800aa-c284-47a6-b3a0-e07eca8744c6	Fix API	Fix API for project X.	t	1757287031855
3	50d87c5c-f590-4e1b-8e61-83c957941c05	Plan email template	Plan email template and document.	f	1767818285105
3	cb485233-eb6e-4e50-9bcc-0746b2783156	Test UI mockup	Test UI mockup with comments.	t	1756591236388
3	931ac1e8-26d2-4ddf-a30c-c426747eb9b8	Design unit tests	Design unit tests with comments.	t	1762815799510
3	b064095c-6c80-4bae-8270-1f209ff4e778	Review login flow	Review login flow using TS.	f	1780388017262
3	5ed66d76-9b9f-46dc-a3ea-00c48eed3030	Fix unit tests	Fix unit tests with team.	f	1769435498985
3	bd1ef8cc-28e4-4ed1-aea1-14d338eed475	Fix blog post	Fix blog post in draft.	t	1777776074094
3	7bd8aedc-3b76-4c17-9909-e7a3d52ec6bb	Write UI mockup	Write UI mockup with team.	f	1753716804869
3	3532f28f-4f61-4a9f-9603-c3ba5bbea3ce	Design Dockerfile	Design Dockerfile using TS.	t	1750486062223
3	3672687e-b913-4958-a7fc-7ded9dabe2c0	Review database schema	Review database schema for project X.	t	1769897326412
3	4b0bf0c9-34d8-405b-8e96-a90fc3ae268a	Write database schema	Write database schema before EOD.	t	1752442365102
3	8fb28b7c-b612-47b2-b49c-f3caac3a3684	Deploy database schema	Deploy database schema and document.	t	1752596933609
3	8d04cb15-8f97-4be8-bab4-487da8e38560	Plan unit tests	Plan unit tests with team.	f	1768958410482
3	b6115869-23b2-4faa-9f99-efab298e8260	Complete database schema	Complete database schema with team.	t	1764754584798
3	cdd2e350-49f2-4f3c-89f1-4b108f774dfe	Review email template	Review email template with team.	f	1780362529180
3	d9c86e75-0c54-4c01-8444-74bf16a760c1	Write email template	Write email template with comments.	f	1751416667562
3	4519fcf0-595c-41c6-aac0-47a313f1158f	Design email template	Design email template and document.	t	1756676544105
3	a04741a5-dd5f-41aa-95b1-11e565803efa	Deploy email template	Deploy email template for project X.	f	1780883471979
3	3ccbd4e7-3872-4d7d-bc57-1e550b81640f	Plan UI mockup	Plan UI mockup with comments.	t	1772923916443
3	d59188a8-6110-462f-9bd2-765b37e67ec0	Fix blog post	Fix blog post in draft.	f	1767610531851
3	515a26cd-e917-406d-ae8e-737406b88fd1	Design login flow	Design login flow using TS.	t	1760697324159
3	894b8289-b87b-4afe-81e4-db5a944ac333	Test database schema	Test database schema using TS.	t	1777166895751
3	3c32753c-e9b5-4fea-9c28-01a07f6140f2	Design login flow	Design login flow using TS.	t	1759316991192
3	a56c5d99-0c9e-4ac3-b69d-4ff3dc1554b0	Complete UI mockup	Complete UI mockup in draft.	t	1780424234052
3	ff11567f-2bee-4a2b-bf38-76b1687bc677	Test UI mockup	Test UI mockup with team.	t	1769395006952
3	d604f1e5-1eeb-4aca-93db-193f8fc03d64	Write API	Write API in draft.	f	1781602323552
3	ce03bd91-ab92-43cb-95b5-4eac3470fc76	Review unit tests	Review unit tests with team.	f	1758807542042
3	2468cbce-24f6-4611-bc5f-e1447c927055	Write email template	Write email template using TS.	f	1780696960739
3	4f0682d7-77b8-40c4-9ae7-86e13e1c32aa	Complete Dockerfile	Complete Dockerfile in draft.	t	1765368628840
3	0aadda9d-b293-40e2-945e-dfe3a38f13c8	Test blog post	Test blog post before EOD.	f	1774400232805
3	3fd34ded-38ea-42f5-a26d-ebfa4a3faba4	Write login flow	Write login flow with team.	t	1780392328730
3	1e0dd272-69da-4364-abe2-a9a0ae143aa5	Complete email template	Complete email template with team.	f	1778509354357
3	cd822675-3255-4500-8622-792e38207273	Write login flow	Write login flow before EOD.	f	1769230841231
3	bdf09dce-14db-4179-92d2-dc7e80630c06	Test login flow	Test login flow for project X.	f	1750420226465
3	e6addabd-c886-47cb-bd01-3f820060aafe	Deploy email template	Deploy email template before EOD.	f	1781200945073
3	92620d2e-e37e-4943-b5c4-d64358784b3d	Plan email template	Plan email template for project X.	t	1781134967321
3	68808573-9a8f-47db-b2c2-f791cec06903	Review Dockerfile	Review Dockerfile in draft.	f	1770649397609
3	86eab6bb-8418-4b76-9be3-f7c65776b1f6	Deploy login flow	Deploy login flow in draft.	t	1764623413944
3	2fb1d999-3cf8-4853-afc0-5aecddf3b6fe	Write unit tests	Write unit tests for project X.	t	1778015053201
3	457c4d82-9a8e-439c-ab97-a07a7c9c1710	Deploy email template	Deploy email template in draft.	f	1761604325102
3	e7b9a36f-d0f5-4529-a45e-0a60cf358128	Test UI mockup	Test UI mockup in draft.	f	1774161751009
3	de7635f9-a674-46e1-81d5-dec5cbaab0b5	Test UI mockup	Test UI mockup before EOD.	t	1780608287857
3	7dc8c976-b8bd-4d1d-9caa-82b1f8841c8c	Deploy blog post	Deploy blog post using TS.	f	1778700914276
3	b451dd30-00d1-4f20-af32-5c3198cf63c1	Test Dockerfile	Test Dockerfile with comments.	f	1752965937226
3	c18b87a5-5689-4667-bc62-05e920aa3aae	Fix blog post	Fix blog post with team.	f	1768062561941
3	bbd0c2d0-a178-45aa-9d9a-5c8876c3a2c8	Fix email template	Fix email template and document.	t	1774208103958
3	6264deb9-6f86-4edc-9368-59ddb0d84250	Review API	Review API and document.	f	1775088134449
3	d8a14dde-c401-4e80-8cfd-560b83dafafa	Write email template	Write email template and document.	t	1777354700646
3	deea48fb-3b96-483e-a33d-b3c43589cbb6	Write API	Write API with comments.	f	1777656293256
3	cedc7cfd-015b-4cb4-a98c-66731fd2fca1	Plan blog post	Plan blog post before EOD.	f	1776591682369
3	78eee60c-6a47-421c-a375-00d4e33f7558	Plan UI mockup	Plan UI mockup for project X.	f	1755178059929
3	f1f235ee-cabd-406c-95fb-f24e8d04651f	Write email template	Write email template for project X.	t	1769944950972
3	39906464-a2d0-46d6-9095-4b3955388902	Complete UI mockup	Complete UI mockup for project X.	f	1752670746367
3	220ed673-d912-414e-a97f-cf4faf7a1464	Write unit tests	Write unit tests with team.	t	1755853774806
3	2184c2f4-6c24-4b77-b56f-3dd5c38227ff	Review email template	Review email template using TS.	t	1768296973987
3	e413c392-7c87-4284-956f-866fd22e6672	Fix database schema	Fix database schema with team.	f	1763073068783
3	dcc40fe1-6696-459b-9471-ae8599c1f572	Review unit tests	Review unit tests in draft.	f	1770416681729
3	d292d3b4-9edf-49a6-b59e-fbdf133e34c0	Test Dockerfile	Test Dockerfile in draft.	f	1757073285815
3	d6afa48e-5418-4620-ae96-4b72bf33abb2	Test UI mockup	Test UI mockup using TS.	t	1764638754468
3	16ac399a-d88a-4ed1-815b-61631ba418ef	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1752579893263
3	854ef572-45cc-4fa3-a91c-56e443450896	Design unit tests	Design unit tests with comments.	t	1765638645957
3	e85a1b4e-bf1f-4138-a3dd-37341fe9253f	Test login flow	Test login flow using TS.	t	1770354808537
3	4f15c395-6c0b-4f21-94f2-ae515f87c1d1	Write UI mockup	Write UI mockup with team.	t	1768985512378
3	9436894c-c0bf-4c4f-94f9-20d2e223bbfb	Write UI mockup	Write UI mockup with comments.	t	1765643992350
3	99b2eff6-0b99-42e4-aac5-67638c6d3198	Deploy Dockerfile	Deploy Dockerfile with team.	f	1758086752872
3	24aad2a4-3929-4409-ab1a-7687d0379810	Review API	Review API with comments.	t	1761608078290
3	5855b5f9-64ec-4b15-b23a-66313fa3bdac	Review API	Review API before EOD.	t	1773280741056
3	ebd41243-6231-47a0-be4c-4b4ea5b40564	Fix unit tests	Fix unit tests in draft.	t	1780831818300
3	d4a66901-32a4-4e58-85ef-b7c278ed8058	Complete email template	Complete email template using TS.	f	1752830178363
3	9ee765b7-2e55-4389-88de-b025d4e43fed	Write UI mockup	Write UI mockup with comments.	t	1780527256165
3	fc0c5510-6fce-461c-97a1-52be78e4e478	Complete Dockerfile	Complete Dockerfile and document.	f	1768434930156
3	0d01ff20-db44-4fd7-9b1b-a560dbe4461c	Review unit tests	Review unit tests for project X.	f	1754802452880
3	0ec37514-53bf-425e-8153-92f85f724564	Complete blog post	Complete blog post for project X.	f	1771015019549
3	bee52cb7-5c6f-49bc-af6c-bb5326e332ac	Fix login flow	Fix login flow with comments.	f	1760373220851
3	610d57a2-a504-4a2d-b567-be31307cb93e	Plan email template	Plan email template with comments.	f	1763194484775
3	d35f564f-118c-435f-b085-ff9a41f97ee4	Write login flow	Write login flow with comments.	t	1779850524141
3	4fbdda07-8b37-41cd-8ba0-d6e15ebd05ba	Write email template	Write email template before EOD.	t	1760201567790
3	5323999e-f4f5-49cb-a698-b8869fcb2267	Plan blog post	Plan blog post with team.	f	1764549925987
3	5df164b7-feb4-45aa-a75d-47fda24cfa0a	Test UI mockup	Test UI mockup with comments.	t	1765705347125
3	5f1f7167-e18f-4f7e-b2b3-2c3272fafeee	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1765685707455
3	1f9e61a0-5c18-409b-aed4-b58cfad4bcbc	Plan API	Plan API in draft.	t	1755408147817
3	f8942242-e683-42b9-96b4-5d5f8ce5dfac	Plan email template	Plan email template using TS.	f	1757538265733
3	ddb3f060-fe32-4132-a3ab-8265dabd8aa5	Plan database schema	Plan database schema with team.	t	1761892013276
3	72ab7c63-0b6d-4704-9083-053e3af03c90	Complete unit tests	Complete unit tests and document.	f	1780616006248
3	f4c86169-ac57-44c3-aaa8-d5cf3f3837ce	Fix UI mockup	Fix UI mockup in draft.	f	1758888963701
3	6f70c536-bb7b-4af9-9089-01cd9b368a5b	Test email template	Test email template and document.	t	1751681107529
3	a7ea4e23-93e3-4711-bf59-3781f8384fe2	Write UI mockup	Write UI mockup and document.	t	1753525704402
3	495eabdb-bf33-4454-bf98-63e0846751b6	Deploy database schema	Deploy database schema before EOD.	f	1761402342896
3	497a27d8-be6c-4ed3-87a4-a4b0355701b9	Complete database schema	Complete database schema and document.	f	1778232906449
3	d11b09b6-1444-4c7d-bb63-9a84245d51f8	Complete Dockerfile	Complete Dockerfile before EOD.	f	1756360203398
3	6cd20d41-7aeb-4649-81d5-cb2bb384be33	Fix blog post	Fix blog post in draft.	t	1754472722432
3	7732dbe7-4c70-4e2d-baaa-63df2f8c7e5d	Test blog post	Test blog post with comments.	f	1755124780357
3	835f8c1e-7ce0-4392-baef-452008334ee3	Write Dockerfile	Write Dockerfile with comments.	t	1758202145350
3	e9883286-0d10-45e8-98fd-ca5c1ee64245	Fix database schema	Fix database schema before EOD.	t	1754489313032
3	c24a75f0-00a7-4922-8f41-35d1ac72d76a	Review Dockerfile	Review Dockerfile in draft.	f	1758019199224
3	12e63a81-46f3-4e0f-857b-881dd2ed19ca	Write blog post	Write blog post and document.	t	1779402431038
3	386ac7d1-e17c-40e8-910a-7f56e3f831d0	Design database schema	Design database schema for project X.	f	1767639707019
3	f16a7d77-3209-4559-8e0c-ba0a1b8c935f	Deploy database schema	Deploy database schema for project X.	t	1776435264409
3	80ee1f02-5337-4dab-8126-e1303051f373	Test unit tests	Test unit tests before EOD.	f	1778830312818
3	97fd0ed1-f351-4157-9ab6-fd5f99afad74	Review Dockerfile	Review Dockerfile with comments.	f	1769425282187
3	2cfdce21-a610-4791-b81e-8e56378a7030	Test blog post	Test blog post using TS.	t	1760904355657
3	a1232081-0b3d-437f-9327-0916386a4751	Plan UI mockup	Plan UI mockup using TS.	t	1755385862072
3	a08e56ea-70e7-4251-a5d4-5b26334847a2	Review login flow	Review login flow with comments.	t	1778317875526
3	553bf01a-ae2b-427d-8cc4-be79fb1c7526	Fix UI mockup	Fix UI mockup with team.	t	1766410168545
3	d8d96f66-92fb-41c3-a6c4-33a1c4d80555	Complete blog post	Complete blog post and document.	t	1750823277140
3	71c0ac02-48c9-4a7b-bde5-64e42b3a2deb	Design login flow	Design login flow with comments.	f	1757664782536
3	036dbd9b-70d4-4b5d-8984-504aae674780	Review database schema	Review database schema for project X.	f	1753586574392
3	fed7e86c-c885-4e36-a27a-4928f4898b06	Plan UI mockup	Plan UI mockup for project X.	f	1779451381919
3	8dee6326-fbff-4a4e-8fb3-dcfbb6d6ff5a	Plan Dockerfile	Plan Dockerfile using TS.	t	1775170440884
3	f217dbb2-f124-47c4-bf25-96ebb4c52501	Deploy database schema	Deploy database schema with team.	f	1757488989040
3	6f42e98c-f296-4e14-8cc4-0f33d685b572	Test unit tests	Test unit tests before EOD.	f	1760602302373
3	ab43c0c0-ceee-4f5c-8dde-53e95a8d89b1	Write database schema	Write database schema and document.	t	1778656389994
3	c9ce3e5f-93b6-47ac-b847-2b7f07633f2b	Review unit tests	Review unit tests with comments.	t	1754633608185
3	d5fe1ed0-cd71-4aa5-b707-1de39bcd5cc0	Write database schema	Write database schema and document.	t	1754861526913
3	ba193ec2-2bec-4b80-9d90-ada5a5b0461b	Deploy UI mockup	Deploy UI mockup and document.	f	1762257266657
3	76527418-6789-44f7-a3c0-aab2d7fc00cd	Test blog post	Test blog post before EOD.	f	1771239345689
3	78b417a5-56f1-4ebe-bc09-54115bad5c06	Write Dockerfile	Write Dockerfile in draft.	t	1765930308803
3	09289781-ffc8-4233-84c0-9457c49ce48e	Write API	Write API with comments.	t	1780419354122
3	8f225c28-6edc-4d16-8fe4-473a01fe4388	Test database schema	Test database schema using TS.	t	1765148379322
3	3dc8d06b-3f1a-496e-b6b2-3aad49f4d2f7	Deploy API	Deploy API with comments.	t	1750374197268
3	194bf183-b2bc-4f75-b04b-dd9f2de0e5fc	Complete unit tests	Complete unit tests for project X.	f	1763066863661
3	0f039d37-5f90-4e02-9377-fc3e1e0100eb	Review unit tests	Review unit tests with team.	f	1755016255665
3	ff4d4f5c-74e8-43f0-a78a-dec35584b5cd	Deploy login flow	Deploy login flow with comments.	t	1766988226218
3	41fdf74d-b0aa-4308-8b61-44645f8ca60a	Deploy email template	Deploy email template and document.	t	1774029344944
3	d83aa1fa-42d5-458c-a061-2da5fd675c54	Deploy UI mockup	Deploy UI mockup before EOD.	t	1775016455227
3	f322a195-80c4-4875-9849-63a96c3a71da	Design database schema	Design database schema with team.	f	1761553465512
3	baf44619-8aca-4701-aa38-88723a9468c1	Deploy login flow	Deploy login flow before EOD.	t	1780328688643
3	368c79cf-0072-4560-8584-0a05a73d9cdd	Fix blog post	Fix blog post with comments.	t	1760542513830
3	d3f79d54-8137-438a-8e85-0c607aab46f8	Complete Dockerfile	Complete Dockerfile with comments.	f	1777740215337
3	03b37833-471e-497b-9058-df54a7b55fd1	Design email template	Design email template with team.	t	1760061494426
3	bbb9294e-088a-47bd-aa56-ae60c4a70744	Review email template	Review email template using TS.	t	1751595126340
3	6d842b47-51da-4d55-a11f-4ef6c43b7e48	Plan unit tests	Plan unit tests in draft.	f	1768970942374
3	95047e3a-329c-4434-a86b-e86158b9e0d4	Plan database schema	Plan database schema using TS.	f	1781577524909
3	b08afed2-1c85-4b92-aaa7-ce89c5385c97	Plan Dockerfile	Plan Dockerfile for project X.	f	1775840180947
3	eaa891f5-9bf0-4ffb-b081-9a3cc3b9fb3b	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1753168897223
3	e7709c7c-e894-4e8d-9e16-c966adac0b62	Write API	Write API for project X.	f	1764984628122
3	678a1331-dca0-4850-9137-9e927eac773c	Deploy UI mockup	Deploy UI mockup and document.	t	1753093028965
3	911dad87-b700-443f-8f4a-d4e520c42106	Deploy login flow	Deploy login flow with team.	t	1754527225311
3	6e48fd8e-63a6-4652-b7fb-ad6d7d85da7c	Design unit tests	Design unit tests with comments.	t	1769222370293
3	62580c38-82b0-4127-892b-b4baa0b2dab9	Complete login flow	Complete login flow using TS.	t	1775850114095
3	fc0936a5-d58c-4f19-b104-cccf03100e9e	Fix API	Fix API for project X.	t	1777053538614
3	85d9f34c-80e4-49a9-b150-38d9f504ac39	Complete email template	Complete email template using TS.	t	1755608404164
3	17871621-8c11-49b3-9b8c-8521ee54fae0	Fix unit tests	Fix unit tests for project X.	f	1757962788973
3	4f268b3f-115f-4382-891e-053b639ddf35	Deploy database schema	Deploy database schema with team.	f	1762830046982
3	298b0fb3-f19c-41cb-b322-690d00870ca4	Fix Dockerfile	Fix Dockerfile in draft.	f	1758280341309
3	9f6f3c2b-3554-463d-af03-c3ca12737f0d	Design email template	Design email template with comments.	f	1761664419020
3	a9159a06-6dce-4d5e-a393-bc7f22177aae	Review email template	Review email template in draft.	t	1777949016093
3	dbdadd03-9e65-48cf-8d85-db22974c3298	Complete blog post	Complete blog post using TS.	f	1771924382865
3	5679aaf2-626b-4824-bca6-12023309ec6d	Write database schema	Write database schema with comments.	t	1766167268227
3	7a287b1e-4fdf-4335-82a7-c465d8655d2b	Deploy API	Deploy API and document.	f	1753527619918
3	4fa1262b-b4af-49a7-9797-40cd775c0763	Review blog post	Review blog post before EOD.	f	1750430742491
3	ecc4dfb6-2676-4667-8423-4e598085c653	Review login flow	Review login flow for project X.	t	1762821227302
3	ac9416dd-fd9b-4b12-ac11-a6e76c46a1c0	Complete login flow	Complete login flow with team.	f	1775386757324
3	803a878b-3f40-4ba4-8c9e-e0db48685cf8	Test Dockerfile	Test Dockerfile for project X.	f	1764167632811
3	04f9b05b-2862-4574-81da-dc9d8bb9ea5e	Review API	Review API with team.	t	1758152690468
3	b60b2d8c-fcd1-4f55-ab60-5ca63fb3dbd5	Review unit tests	Review unit tests with team.	f	1765007917417
3	7d6b8428-16db-4046-947c-9e0181cf7589	Write API	Write API in draft.	f	1780229693104
3	47c4d572-d01f-4ceb-ac3b-f4d972afe87d	Test UI mockup	Test UI mockup for project X.	f	1781101026434
3	90c03310-4394-4905-b2e1-c83ef9816a24	Write Dockerfile	Write Dockerfile and document.	t	1750893322423
3	69dce7ca-d2fb-475a-a4f4-0c45ef7c29b1	Complete API	Complete API with comments.	t	1775454241511
3	4f4e7dff-66d6-461b-8bb9-81e1f095d4ae	Fix email template	Fix email template in draft.	f	1779627505730
3	dde31522-7211-435a-97f2-afcf503e735c	Test Dockerfile	Test Dockerfile with team.	f	1754473917832
3	7b7e604a-0b0e-4518-93e8-856b7074f720	Fix email template	Fix email template and document.	f	1770889385256
3	394a4873-7973-4cff-835c-a89b620243cb	Plan database schema	Plan database schema in draft.	f	1768914603276
3	f1d5b33c-4941-4285-87bb-df4a8415cbeb	Plan Dockerfile	Plan Dockerfile in draft.	f	1753916531354
3	1489d308-edab-488e-b9a4-b9bf2bb6bd13	Complete unit tests	Complete unit tests in draft.	t	1779568679933
3	3e4786cd-b792-4197-90ec-b1ba642299c0	Plan unit tests	Plan unit tests in draft.	t	1770093923686
3	fa454a5c-a95d-4914-93b8-be9b9c1eae05	Design blog post	Design blog post and document.	f	1753056922798
3	f45184cb-8834-4a39-afe4-998884fc003a	Test API	Test API with team.	t	1761253637501
3	04ec2fb6-fc2d-44cc-a937-68ae3dff3f60	Write unit tests	Write unit tests with team.	f	1776982211788
3	4cbee3c0-e9f5-4565-b44c-8fae56c7ee2a	Deploy Dockerfile	Deploy Dockerfile for project X.	f	1779395572876
3	e1b87f6e-0ac5-4be1-a498-c1dafda2a140	Plan login flow	Plan login flow with team.	t	1780725647010
3	13660855-112c-4d9e-b055-c52c576778a5	Write UI mockup	Write UI mockup before EOD.	t	1772867801388
3	9aa15628-46b7-4334-9171-bc78c5750517	Test email template	Test email template in draft.	f	1779369221290
3	818ee6c0-47a7-4a61-b6ed-1e97c328f1e9	Fix API	Fix API before EOD.	t	1781217514921
3	8b28d184-296c-4fb2-9a44-a37b5dc857c1	Fix Dockerfile	Fix Dockerfile for project X.	f	1760745878998
3	a58f5928-1b78-40ed-b8fb-853c21a4513f	Design login flow	Design login flow using TS.	t	1774589724151
3	7131c927-2fab-4643-bf5d-644ee539fabf	Review API	Review API before EOD.	f	1776626337741
3	25dd9076-f674-4294-adc2-ff4f5340c576	Deploy UI mockup	Deploy UI mockup for project X.	t	1772850806379
3	c1bf6706-1e4b-4176-973c-72a2d5d19906	Design database schema	Design database schema with team.	f	1753460752465
3	125fa42c-733c-42c9-bf19-8133fc5dbd8d	Fix login flow	Fix login flow before EOD.	t	1756611123829
3	a42a6842-43e1-403f-86aa-73a67a1d6a43	Design API	Design API for project X.	f	1774723960852
3	62ace28c-042e-48fc-90fe-0eb67e9ebd26	Write Dockerfile	Write Dockerfile for project X.	f	1764910840273
3	c602b873-c560-4401-8607-b1d2324e6d6e	Write UI mockup	Write UI mockup in draft.	t	1779852232485
3	433b2fae-264e-4754-a793-36b7709656f1	Test API	Test API for project X.	t	1765054233198
3	20e3757a-5a19-4ab7-af2b-7faf6032d9e7	Design API	Design API in draft.	f	1776852342337
3	558876fb-2afc-479a-a492-95a70fc1fb95	Design database schema	Design database schema in draft.	t	1779011951444
3	f0c5d97c-31eb-41ee-bb4a-704cdb55ebb6	Complete Dockerfile	Complete Dockerfile with comments.	t	1763544519906
3	cf68d69c-edee-4dbb-90f9-5072071dd85c	Plan API	Plan API for project X.	f	1777901839770
3	f796d73a-c36a-416e-b7f1-1338b6abb9d2	Fix Dockerfile	Fix Dockerfile before EOD.	t	1771504662647
3	7ae1040e-0985-45d8-a1c7-64c14bd84580	Design UI mockup	Design UI mockup before EOD.	t	1766032388605
3	3c4b2015-89ed-408a-84dd-46f072988573	Test Dockerfile	Test Dockerfile using TS.	f	1750916601950
3	31edbfca-0a94-401e-935a-bbc3d2018712	Review API	Review API for project X.	f	1770644393340
3	1dc88239-92e6-4101-b898-24f94c0bdbc0	Write email template	Write email template with team.	f	1776641745479
3	f75675d7-04d3-43b3-af6c-5768b80b89cc	Review API	Review API for project X.	t	1777241654146
3	2e299942-8efe-4f67-a531-9985e3b2f8c1	Deploy email template	Deploy email template with team.	f	1778293881303
3	9ac2c34c-a80a-4cdc-921c-87ed31e3f3f7	Review API	Review API in draft.	f	1763502262625
3	47de5a8e-065c-45c5-be23-f0ad6b0db6b7	Write unit tests	Write unit tests using TS.	t	1762109590719
3	7b149cc2-413f-4718-a5d2-4aed8325f824	Write login flow	Write login flow for project X.	t	1779970720468
3	6028c0e7-ce92-48c6-b47e-a2e2cdd86907	Deploy UI mockup	Deploy UI mockup with team.	t	1771905023938
3	4bbb586e-d4da-4341-abb7-456d260ae59e	Complete unit tests	Complete unit tests for project X.	t	1769488744358
3	6da0c2e3-5be0-478b-a202-48c423273c37	Plan UI mockup	Plan UI mockup using TS.	t	1777451196189
3	0a7f5139-44c3-44cd-9717-4b67be4046f1	Test email template	Test email template in draft.	t	1769210173229
3	dcb91fc7-6e1c-4326-b629-d2ab421f88dc	Test blog post	Test blog post in draft.	f	1765680637221
3	f4b0bc8b-4e1c-4b2c-ba5a-c33fa23e0c67	Fix blog post	Fix blog post before EOD.	f	1773789501526
3	2bdef549-baff-4008-bb9c-06d5aa2b0264	Complete UI mockup	Complete UI mockup using TS.	f	1775991769054
3	e6e2ad1a-c40f-454f-a4ae-9b132410d55e	Review UI mockup	Review UI mockup and document.	t	1758310897049
3	53e9498f-0b43-4f0f-bd64-bb31c048e948	Fix Dockerfile	Fix Dockerfile for project X.	f	1764254624726
3	4df92b57-af8b-404b-baa0-60f69f865330	Fix Dockerfile	Fix Dockerfile with comments.	t	1778002244944
3	2e8044f6-fbb4-42e5-a08f-e775b7976d2c	Plan API	Plan API in draft.	f	1757297240566
3	9e1d6aa8-2852-4e47-b247-3ac95b4f9750	Complete database schema	Complete database schema before EOD.	f	1779422129187
3	30fa855d-4df7-46b4-9f95-25c20ab2fb12	Review UI mockup	Review UI mockup for project X.	t	1769125035460
3	c13e7838-5cb8-46c0-b8a4-707889258be0	Test unit tests	Test unit tests before EOD.	f	1775746621981
3	f1bb6314-20d4-469e-8555-8e32e46f264c	Complete email template	Complete email template for project X.	t	1778479308404
3	d4417ab3-b132-4010-9852-6a45c79ef189	Complete database schema	Complete database schema for project X.	f	1759331391793
3	5f1b58cf-33c1-498f-855a-7d338b35d18d	Design UI mockup	Design UI mockup and document.	f	1754796446761
3	4b63a8f9-e2f5-4fa1-bab9-9378d149eacd	Write blog post	Write blog post using TS.	t	1752457011181
3	a79edf83-37d9-4e5e-a12b-bd99a5dcf37e	Deploy UI mockup	Deploy UI mockup with comments.	f	1753812915530
3	ddb52a26-3167-4111-9b1e-ccde9db879f5	Deploy API	Deploy API for project X.	t	1750538271938
3	74750b8a-bec8-455f-b77b-e6920524ed7d	Complete email template	Complete email template with comments.	t	1757279702183
3	ecb2b0a1-4c95-4e7d-989c-17bcf2465f0c	Write email template	Write email template for project X.	f	1778717126867
3	90bf2104-65c7-4912-bd7f-88a7366e0d9a	Design API	Design API before EOD.	f	1756161936144
3	d4aea3ca-0607-4c84-9268-b7f0bd4c3134	Review API	Review API before EOD.	f	1764380246403
3	2f9436eb-9c54-4a80-a8b4-75b3693b9271	Complete API	Complete API before EOD.	f	1756798411392
3	d04f1e0c-f936-44a5-abc0-c2f683fcd015	Test UI mockup	Test UI mockup with comments.	f	1757529886902
3	4b1c98c8-7c7c-473e-9278-a0529b2dc452	Write UI mockup	Write UI mockup before EOD.	f	1767755535896
3	d99b97b2-4cbc-400f-9327-f56a91045040	Write Dockerfile	Write Dockerfile for project X.	f	1781606948301
3	4aa39626-fe96-4966-8822-85dcecd9efb5	Deploy UI mockup	Deploy UI mockup for project X.	t	1755039338447
3	89e3e17b-e573-4907-a0e6-951335293ec6	Plan API	Plan API using TS.	f	1775978939314
3	05ee770a-fbd0-4940-8142-c80108cf11e6	Plan blog post	Plan blog post using TS.	t	1758149167011
3	d0a4278e-e8a2-489d-a66a-4eaecbd51651	Fix API	Fix API with comments.	t	1759107918247
3	dcebea4a-ee6a-4cd3-abb4-19c49ddf8e83	Review Dockerfile	Review Dockerfile for project X.	f	1759569278769
3	377ee1fc-5bd5-455c-b463-a740ef3b5ff9	Deploy unit tests	Deploy unit tests using TS.	f	1760408462352
3	9e1d445f-913f-4d08-9ba7-b25d1bb2e8f9	Fix login flow	Fix login flow and document.	f	1776317961346
3	6e7c5665-eb2b-4302-86d9-93408dd39a40	Complete login flow	Complete login flow with team.	t	1756586826708
3	29f7ab46-ae18-484b-99dd-f4e01c68c188	Deploy blog post	Deploy blog post with comments.	f	1753544586813
3	5621cae3-dfe7-41d9-a58a-6ed4cad8ccb6	Design blog post	Design blog post using TS.	t	1756479875640
3	ca3000d3-cac7-4f1b-bb38-58cddeabe25f	Deploy email template	Deploy email template with team.	f	1778501395636
3	d5ebd45c-7c16-43d1-a8db-e551061d21c0	Review Dockerfile	Review Dockerfile before EOD.	t	1763164413816
3	9d44274f-78eb-4187-8f36-99a646cdf4ad	Fix login flow	Fix login flow for project X.	t	1768714305006
3	3e4c97b7-137d-4755-96a9-a35b4ad6e224	Fix API	Fix API in draft.	t	1776648782723
3	381e698e-d746-4332-946f-32109b08f318	Plan blog post	Plan blog post with comments.	t	1750538669872
3	2d1dbcbb-5a42-4da7-841b-67c39bd5ee7c	Plan API	Plan API in draft.	t	1753872322355
3	35ba95c0-0649-44a9-9ef1-bcb6b02192b1	Design login flow	Design login flow with comments.	f	1775757059079
3	b1f78c01-261a-4f9f-8ea4-655307db044d	Plan Dockerfile	Plan Dockerfile in draft.	f	1760285900792
3	8938d273-a923-4ecf-8807-ac676e3c9560	Complete email template	Complete email template before EOD.	t	1771510828784
3	9ba7fc81-24ad-4f96-bffa-53f12ead77c7	Fix unit tests	Fix unit tests and document.	t	1761060105527
3	b95fc867-b983-4d9f-9fac-959394ae08f7	Review blog post	Review blog post with team.	f	1777038248577
3	dd133e3f-06bb-4bac-8276-afd7de52e7f1	Complete UI mockup	Complete UI mockup before EOD.	f	1770517360990
3	1c96f0db-fdae-431f-bfdb-ea6066105bcb	Design API	Design API using TS.	t	1774169186461
3	e97cafec-b3e0-46ca-967d-15b38c05adec	Review email template	Review email template with team.	t	1763308722672
3	a8f363b5-ce9e-44a4-8398-e251eaafb131	Fix database schema	Fix database schema with team.	t	1768650828131
3	19248980-bae2-4604-8c81-a9458c0df96b	Fix unit tests	Fix unit tests with team.	t	1770947365759
3	908b7857-d3a2-435a-870a-8115f3c02bc0	Write UI mockup	Write UI mockup before EOD.	t	1753026981757
3	ec9af476-de60-42df-98ca-0167ea020433	Write unit tests	Write unit tests for project X.	t	1752931760659
3	7b3a3daf-7aa6-4c0a-84b7-68892fc44027	Design Dockerfile	Design Dockerfile for project X.	f	1781092464582
3	23508d15-b8f1-419f-9614-b0f3a6981211	Plan API	Plan API with team.	t	1767324944143
3	c3c11cf2-e9aa-437a-a0f1-62616542ab5f	Fix Dockerfile	Fix Dockerfile with comments.	f	1761729515275
3	6d677088-19f0-430f-9ce7-d281ed90794e	Test database schema	Test database schema with team.	t	1773048442860
3	1a6f1851-60aa-448f-b6f1-29abc71561cd	Plan UI mockup	Plan UI mockup for project X.	t	1762328208459
3	7256fb65-8d03-4efa-8eeb-50c46415cff8	Test API	Test API for project X.	t	1764112044820
3	0559639a-59d2-48b4-89b5-2e1f0b38efde	Deploy API	Deploy API and document.	t	1778064138910
3	820e0dd5-6f5f-437d-ad49-65cbb0a78331	Deploy email template	Deploy email template in draft.	t	1767253447513
3	91324cd1-1bc8-4f84-bb3e-3d3231ab59c6	Fix blog post	Fix blog post with team.	t	1750263770145
3	8d2e7343-0eef-4d66-acac-5c1559ae78a6	Complete unit tests	Complete unit tests with team.	f	1769972497493
3	97e78cc2-1ad3-42fe-a0a4-7e862d518c02	Fix email template	Fix email template with team.	t	1768788112163
3	386ff7e0-4d04-460a-bccf-49460fb41106	Test database schema	Test database schema using TS.	t	1755609647387
3	2f69bec5-63ef-4d7f-92d5-49946f0cd9be	Design Dockerfile	Design Dockerfile with comments.	f	1765295246247
3	81831095-3916-4caa-ba9b-174befb41d1a	Test email template	Test email template using TS.	f	1780787346340
3	d9488f80-7009-4d6b-9c1b-145c208b3a49	Design Dockerfile	Design Dockerfile before EOD.	t	1774554700430
3	a5091cfc-4117-4af9-aa58-c8501aec0d91	Design API	Design API using TS.	f	1765380748738
3	8e72ed7e-4197-478c-81c8-e6e356b802c5	Test UI mockup	Test UI mockup and document.	t	1761275683414
3	d58813fc-bcea-4de6-b222-353987e9f8bc	Deploy email template	Deploy email template using TS.	f	1774213187738
3	d4d5c9b1-0e93-44ac-a673-e8d18f3ad5e0	Write API	Write API with team.	f	1769761979669
3	b3325ca6-701c-4ea3-b470-a3e2a25dc201	Write database schema	Write database schema with team.	t	1751571188911
3	852b12c1-3119-4490-a95b-6b4f8249d0c7	Review login flow	Review login flow in draft.	f	1768534021087
3	05a15aae-c455-4af5-b1a3-366299798f77	Deploy blog post	Deploy blog post with comments.	f	1753644785531
3	a721ee8d-ff8c-46c9-bd25-df92debedb1a	Deploy unit tests	Deploy unit tests using TS.	t	1776289760636
3	18399aa8-26b3-4301-a61c-bb279d913c4f	Plan blog post	Plan blog post using TS.	f	1779595102620
3	8f9d4079-9831-4b68-bc07-937fcae40b3e	Fix Dockerfile	Fix Dockerfile with comments.	f	1757222059872
3	b246ea6e-5287-42e6-9e57-9134639b6da4	Review database schema	Review database schema before EOD.	t	1781363365317
3	560afcc4-ce3a-4ae9-928f-a4253d766a11	Complete email template	Complete email template with comments.	f	1763985947849
3	9a6130f3-39b7-4a48-8694-687de55c7e14	Design email template	Design email template using TS.	f	1777899670168
3	7a435a09-dd0d-49bd-abd5-b83d5a1a4532	Complete unit tests	Complete unit tests with comments.	t	1751193951473
3	03afb8ec-b8a0-4147-9d87-270a8cf42399	Fix blog post	Fix blog post before EOD.	t	1762319138269
3	9f731dec-6e30-4da4-a73e-058ad204405f	Plan blog post	Plan blog post with team.	t	1751417694741
3	3a047ee9-80d6-4c5c-96a0-90d8357edc61	Plan blog post	Plan blog post using TS.	t	1774536414975
3	9c2fdd89-ca60-4634-b21f-2061e57fd638	Review Dockerfile	Review Dockerfile and document.	f	1764250735968
3	871056f9-24ce-40d3-9adb-61f5ab631ec5	Complete Dockerfile	Complete Dockerfile for project X.	f	1779688259564
3	52f2b634-5b06-4578-baf7-0f118b857ae1	Review Dockerfile	Review Dockerfile and document.	f	1773510934162
3	b80dac0d-25ec-4894-99da-bed09a00dd30	Design Dockerfile	Design Dockerfile and document.	t	1778762445482
3	17b65529-215c-404f-8fea-f78fbdcd6ca8	Fix email template	Fix email template before EOD.	f	1751883276915
3	a532db8a-defa-4ae6-a52e-5bd68d03f633	Complete UI mockup	Complete UI mockup for project X.	f	1765957994627
3	2d9fc98c-1316-46c4-b772-6fee89e08049	Fix email template	Fix email template and document.	t	1777380309523
3	9bde6876-d50d-48b7-8f07-e38a22824185	Fix UI mockup	Fix UI mockup before EOD.	f	1763590598701
3	12ef29fa-87d4-44aa-9704-22112dfd5216	Plan Dockerfile	Plan Dockerfile in draft.	t	1759311953339
3	33f9dbfd-039d-40c9-aa9f-714a76e7d0c0	Design unit tests	Design unit tests using TS.	t	1760307308670
3	d9ec4495-1812-4593-be2c-9f2cbf21b220	Review login flow	Review login flow before EOD.	t	1781630909123
3	78e59837-e991-439c-b8f6-28c6e938c9ee	Review database schema	Review database schema with comments.	f	1753741242656
3	80b6ab5b-cd65-4860-90e8-179a4e0a6743	Design email template	Design email template using TS.	t	1752714644310
3	f20bc5b3-5454-4eb9-a7fb-6ad8b857ba89	Complete unit tests	Complete unit tests for project X.	f	1776217582164
3	49984278-9a29-4659-90dd-a05012193a98	Design login flow	Design login flow before EOD.	f	1775057483651
3	ba42b33b-724d-4d38-830c-b2806bba3f06	Test UI mockup	Test UI mockup in draft.	f	1774853917486
3	4fd41005-cf64-4c31-96d5-fba52ac5ecb2	Fix Dockerfile	Fix Dockerfile for project X.	t	1772502105814
3	efd528d1-3e09-484d-8112-875cff59d678	Plan API	Plan API in draft.	t	1763571803636
3	029fcd69-898f-496e-820d-ac89b2c34e19	Review API	Review API for project X.	t	1754237480034
3	df50c31f-f0d2-4afc-bd02-215213a7a28c	Write Dockerfile	Write Dockerfile before EOD.	t	1752937388862
3	91ae19b6-8a1e-4d0d-8a4a-f342095ff421	Fix UI mockup	Fix UI mockup and document.	t	1751773500040
3	ae12fa5e-b6ce-4fbc-ab86-9408edc51a40	Design email template	Design email template with comments.	f	1763179435593
3	068e6df9-9a27-4001-90fa-24d1a5927313	Deploy email template	Deploy email template and document.	t	1780327378282
3	d6894259-2859-4fa0-ab3d-c2b45ee6d515	Deploy login flow	Deploy login flow with comments.	t	1765522389004
3	0e449a62-339e-4807-8c92-0cc2ca5aa93c	Fix login flow	Fix login flow with team.	t	1755740637927
3	84242b85-9c4f-412a-9538-8a0feca29573	Plan UI mockup	Plan UI mockup with comments.	f	1772993404785
3	ac29849b-8ecd-4ca7-bd52-61909027d1f2	Design UI mockup	Design UI mockup using TS.	f	1773129469185
3	9cf51852-fbe0-43d2-adc2-02de1ee52242	Fix database schema	Fix database schema with team.	t	1761937294521
3	23c83453-4e86-4abe-9f00-c34c5e37082a	Plan database schema	Plan database schema with comments.	f	1772003858509
3	47129f31-0661-452d-8880-bd5ce2a1d61d	Plan UI mockup	Plan UI mockup and document.	f	1766284457996
3	98f918a3-0c60-4c3f-bb52-72df1afe97d7	Complete unit tests	Complete unit tests in draft.	t	1751170335578
3	29c7f52e-f20b-434d-802b-fed14f4cfe33	Fix login flow	Fix login flow for project X.	f	1750431331612
3	79684d81-6451-49f5-ad4e-9e4dfdf078c4	Plan unit tests	Plan unit tests using TS.	t	1771774823420
3	7fe52c96-a992-493b-850f-8d00a26692a1	Write database schema	Write database schema and document.	t	1760096853184
3	5c55061f-ab29-4486-ab51-dd9ec6bc8bc6	Plan UI mockup	Plan UI mockup in draft.	t	1751141249827
3	c3f992a3-137e-487b-93a9-a39f87195e8f	Plan API	Plan API using TS.	t	1762517954961
3	edbec135-fbb1-4de5-9b2b-0f7fa6c7a885	Plan login flow	Plan login flow and document.	f	1750653919392
3	db67a91c-400f-484e-ba02-f0f2595f383f	Review blog post	Review blog post with comments.	t	1778199839577
3	89f92e3d-b5eb-410d-927d-e2ab16f2e7bb	Complete email template	Complete email template with comments.	t	1774986460087
3	b7cfefab-0388-41df-b6ac-4c4ac2b01e12	Test API	Test API with comments.	f	1755796954257
3	6f8b5179-bd1e-4d28-b40e-1e860bb93062	Design UI mockup	Design UI mockup before EOD.	f	1765477599084
3	e1287dc6-d650-4b7a-9382-12dcee357103	Fix blog post	Fix blog post using TS.	t	1758787063134
3	cc3ff3ab-c523-4021-98e6-8057d6ae4511	Complete login flow	Complete login flow and document.	t	1761167329114
3	fda6c673-c519-4d33-bc82-ffe58153a466	Design email template	Design email template with team.	t	1765756273493
3	5c5bb283-a6d0-4ed6-932d-7fbc3ab679f9	Deploy login flow	Deploy login flow with comments.	f	1750398434568
3	348db436-1b83-4ada-b2bd-95c3884cec1b	Review UI mockup	Review UI mockup in draft.	f	1750669634651
3	88555394-523e-455f-b3b4-38a8c4559189	Deploy email template	Deploy email template in draft.	f	1759248398242
3	76228cc3-64be-4911-9aa5-d2128b4fb31e	Fix blog post	Fix blog post for project X.	f	1752355413358
3	ec903547-e3d5-4a42-80e9-bbb9299cdfc5	Review email template	Review email template with team.	f	1774567287317
3	2dea0b1c-2fe2-4cf3-b495-47a58a292d91	Deploy unit tests	Deploy unit tests for project X.	f	1759667327653
3	70da58fb-b605-4806-95ce-261208c3127d	Review unit tests	Review unit tests for project X.	f	1773974849980
3	edc73791-4641-43cf-be35-0168e254f744	Plan unit tests	Plan unit tests and document.	f	1763251297177
3	af209d04-3ed4-4f34-b05a-df73eacccfec	Deploy login flow	Deploy login flow and document.	t	1754764415525
3	0e6e0cae-e287-4ed9-8311-3e0d5eb30039	Plan UI mockup	Plan UI mockup and document.	t	1772179890926
3	6296276c-bd24-480a-b633-f6ca9d7deb94	Complete unit tests	Complete unit tests with comments.	t	1755255808649
3	f4c4ae9f-0501-4c6c-a4b7-ba29f8065166	Design login flow	Design login flow and document.	t	1757381672673
3	12105c40-9f9a-4cd9-9375-6f707b69cd79	Plan database schema	Plan database schema before EOD.	t	1763246373089
3	96314bc7-634f-4149-8784-00526ca3e8cc	Write email template	Write email template in draft.	f	1750866011990
3	d35b9b8b-e13b-4019-921f-44295c4ddc3c	Write email template	Write email template for project X.	f	1756291460063
3	ba591a3a-3dcf-4d74-a25c-fbd1d0295508	Review login flow	Review login flow for project X.	f	1768335314175
3	4868bba7-6260-40ac-b093-6b10e57dbe49	Fix login flow	Fix login flow before EOD.	f	1778925502633
3	fc5c6ce3-ef06-45c6-84b6-52b79d81fd90	Write Dockerfile	Write Dockerfile before EOD.	t	1777180532166
3	97e4947c-8075-4ede-a35b-7e1d9adf9fd9	Complete email template	Complete email template and document.	t	1779474362686
3	84699090-e85d-4343-b6a3-6481c6af0551	Complete Dockerfile	Complete Dockerfile with team.	t	1776058452880
3	586e975c-c927-4194-95bf-530de941517b	Complete database schema	Complete database schema in draft.	t	1770014137363
3	aa12358d-753c-448d-a84f-a5ce8d4250aa	Test API	Test API in draft.	t	1780191967633
3	a9cc843a-b791-4e19-88ea-de99626eaea8	Write UI mockup	Write UI mockup in draft.	t	1770707943211
3	a6da44bf-2020-4961-8d18-a968d536f1e0	Fix API	Fix API before EOD.	f	1778462314831
3	f3f6f010-79d8-4f30-96c8-7ab09bd089fd	Fix email template	Fix email template using TS.	t	1780518310511
3	62ba7b48-319b-4d27-9de9-7a56d7979640	Deploy UI mockup	Deploy UI mockup and document.	f	1779374105486
3	a183e6cc-0d74-460a-9b7e-ccc07f257ba0	Review UI mockup	Review UI mockup with comments.	f	1755627770176
3	652e1d07-b15c-4ec1-bcf4-d3bc0c1b5c1e	Write email template	Write email template for project X.	t	1763351961953
3	4ceccdc7-ceb8-4438-84d6-b3fa301c903c	Complete email template	Complete email template using TS.	f	1765015577560
3	e09f958c-5b4a-4778-96c4-5e3cb2c2cc51	Deploy UI mockup	Deploy UI mockup with comments.	f	1774366825281
3	dd1e4406-cfdb-4623-845e-98f892a70085	Complete login flow	Complete login flow before EOD.	t	1765915421926
3	bb845eef-5425-4975-a3bb-eb2b5e9b63d6	Complete unit tests	Complete unit tests and document.	t	1758879895869
3	7bd57acc-a8cd-413e-a8eb-1505961599a9	Plan unit tests	Plan unit tests using TS.	f	1766544859197
3	03e4b566-c550-484f-b879-235d12333e5b	Review API	Review API with team.	f	1759001089971
3	fa96bfab-dcff-45bc-8909-bae77ba2984f	Plan database schema	Plan database schema with comments.	f	1751608209202
3	d42212ad-7dd6-46ec-9327-5c76dd738850	Test login flow	Test login flow with comments.	t	1765060664946
3	de5e2e2f-bf06-47ff-af6a-3ff661941f3c	Test email template	Test email template with team.	t	1765264948756
3	b26ce852-a884-40de-9ce7-b3abb41e6e6a	Plan Dockerfile	Plan Dockerfile in draft.	t	1750544202116
3	c4c7e315-c6a1-4cfa-8abf-71d24621d81c	Plan unit tests	Plan unit tests using TS.	f	1753138934019
3	0fe158ae-1cc4-45f0-b05f-3f99dfea0fa6	Plan login flow	Plan login flow and document.	t	1755582641554
3	0a306c81-3e9f-431e-9e31-ab53a8df00e7	Review UI mockup	Review UI mockup in draft.	t	1755224335083
3	437f2729-f4fa-4d7c-a01d-6dc623f1dfbc	Fix Dockerfile	Fix Dockerfile in draft.	f	1772073253107
3	b7f58447-ca0a-4ac9-9426-814d110433be	Fix UI mockup	Fix UI mockup for project X.	t	1777146586448
3	724fa309-15b1-4aa0-8be9-ccdd4286af9a	Complete UI mockup	Complete UI mockup with team.	f	1779985617916
3	6297ec6c-1c92-4f38-8159-02d92442d9cd	Fix blog post	Fix blog post and document.	t	1763608597394
3	9d6dae50-9868-413d-b5aa-0dd6d47ec683	Write login flow	Write login flow with comments.	t	1772620603929
3	57515fad-ced5-433a-a93a-becd91e260a0	Design blog post	Design blog post in draft.	f	1751253308658
3	efcc5548-3704-419e-85ae-0db7db97c047	Complete unit tests	Complete unit tests with comments.	t	1778573399201
3	f98a1a8f-551b-44a3-99b6-d290c0282c32	Plan unit tests	Plan unit tests with comments.	f	1768148122557
3	c50e82dd-bd14-4e10-9d82-67b7a925b87f	Test database schema	Test database schema using TS.	f	1770171857062
3	3a9b66f3-9029-48b9-a637-574376881eb4	Fix unit tests	Fix unit tests in draft.	f	1763289862232
3	9110c4c0-5857-4ac8-8d3e-b2fd680e064a	Plan login flow	Plan login flow in draft.	f	1762448829529
3	ab43fb35-bdd5-4596-b904-85345c659376	Plan email template	Plan email template before EOD.	f	1778724229539
3	d4072e26-dd6f-4ea1-919b-c0b0c68c7e3b	Complete login flow	Complete login flow before EOD.	t	1775426910577
3	f1edd680-8f30-4968-bde0-b4a8e7cda2df	Complete Dockerfile	Complete Dockerfile with comments.	f	1772709454001
3	c5309a84-714c-4f9a-b120-53f69c935f23	Review email template	Review email template using TS.	f	1763816470258
3	25b23206-938f-4093-9be3-fd562e02f211	Test database schema	Test database schema and document.	f	1753619959256
3	68b0b986-9759-449b-aa87-416f58672e0e	Design API	Design API with comments.	f	1762145414063
3	05d0940b-5919-434a-a4d4-60ea7d60f386	Test API	Test API with comments.	f	1750271449308
3	6ba90702-007c-42f5-90dd-1be9e56acbf8	Complete login flow	Complete login flow for project X.	t	1774713593946
3	73d44599-baad-4b96-bc65-3926e56f9235	Test unit tests	Test unit tests using TS.	f	1779165422086
3	35d820c5-1378-4ad4-a4be-8119e50ab9e8	Complete database schema	Complete database schema with team.	t	1771765884109
3	483a8fc7-ac9e-40c2-954f-567dfafcb2cf	Complete login flow	Complete login flow using TS.	t	1776215815558
3	700093bd-10d9-4457-aa83-edd4dd106d53	Plan login flow	Plan login flow with comments.	t	1778491781731
3	893664e9-20ad-4f14-bfb7-46ec12b3953c	Fix login flow	Fix login flow in draft.	f	1766987684766
3	1588861c-f7b5-4025-88a1-3ee10dd32626	Write unit tests	Write unit tests in draft.	t	1772965528984
3	72a2e7f4-dd6b-4017-a1df-287429d732bc	Design blog post	Design blog post in draft.	t	1769403967258
3	e81947af-b6db-4cfb-849b-e633c80832fa	Fix unit tests	Fix unit tests in draft.	f	1774063598623
3	df629178-2fac-49b8-a1ce-ded2823e9eda	Plan database schema	Plan database schema with team.	f	1771052803851
3	b2dc6224-2ca5-4536-aabb-ee05a01d448d	Plan login flow	Plan login flow with comments.	t	1774113437395
3	adcc2685-b46c-4bf8-9837-804ac9066859	Review Dockerfile	Review Dockerfile with team.	t	1755029505876
3	2d4fbfbc-da69-4ad2-ba6c-3fc5744a9175	Test UI mockup	Test UI mockup with comments.	t	1767192652383
3	07b9cb69-7441-4a9a-a4ce-4b31ed42540a	Design API	Design API and document.	f	1759184155466
3	8ce7d70c-8844-4180-a634-d93d5ac7d97e	Deploy login flow	Deploy login flow and document.	f	1770768078228
3	09b039e3-d5f8-434d-b145-89c574f101eb	Plan UI mockup	Plan UI mockup in draft.	t	1762516496235
3	39d2cb1e-b55b-4885-8d68-20ba8e1cc1ee	Plan Dockerfile	Plan Dockerfile with comments.	f	1778668520732
3	4784a91c-68a3-4614-b341-255824203b87	Review blog post	Review blog post before EOD.	f	1756237262638
3	3962b7f4-c51f-4d14-a267-156edabb7fda	Plan unit tests	Plan unit tests in draft.	t	1777959116075
3	d6cec935-d551-4cb4-a068-33f24298bef8	Complete database schema	Complete database schema using TS.	t	1767864978547
3	35ff3c9d-9490-459a-9283-77da90ee7f25	Review email template	Review email template before EOD.	t	1780207877756
3	3a6deac8-d730-448b-b9aa-f4a4025f6d61	Design login flow	Design login flow with comments.	f	1761106611949
3	5a3ce98c-bc11-418f-84af-6254bd669357	Plan database schema	Plan database schema with team.	f	1774351482362
3	7752c973-3fac-4757-aadf-c488e0f08663	Complete UI mockup	Complete UI mockup in draft.	f	1759478718521
3	610ecccc-75e1-4f94-9525-83b59bffe39c	Plan blog post	Plan blog post for project X.	t	1751713895955
3	a25c38ae-90ab-48c0-90b6-a5e732b140ff	Design login flow	Design login flow for project X.	f	1750994791938
3	d8c15021-8a90-4734-bf76-88aa5352a9c5	Deploy database schema	Deploy database schema in draft.	t	1753607087848
3	f9ab6d1c-55eb-418a-833a-4e4d78e4f95c	Deploy Dockerfile	Deploy Dockerfile with team.	t	1771188032692
3	a19faf52-a328-4907-bef9-bb83e1d42b5c	Plan Dockerfile	Plan Dockerfile in draft.	t	1761098356494
3	e7424294-1513-48fc-8f10-7ed1958b36ea	Complete email template	Complete email template for project X.	t	1754611428506
3	25e969e8-1341-4f90-bba5-f1768c2ef183	Deploy login flow	Deploy login flow and document.	t	1751631885309
3	ce039a28-2090-401f-ab7d-2e6742d286b5	Design UI mockup	Design UI mockup before EOD.	t	1764422396445
3	ad7bd886-1c9f-4930-b058-1124b9d2db57	Fix login flow	Fix login flow in draft.	f	1772625103943
3	61bcde0c-4b24-4070-97be-466059153142	Fix API	Fix API for project X.	t	1760201721146
3	0c9e539f-fb3a-45e6-ab4b-447e91d1509b	Plan email template	Plan email template for project X.	f	1751139058940
3	78ed67a0-8600-41c1-a120-93dad12b70ec	Review login flow	Review login flow for project X.	f	1767523798431
3	e3b5a8a5-542e-49c8-995e-cad4ee7acea8	Complete blog post	Complete blog post before EOD.	f	1752334197613
3	6a990437-82cb-497b-9e87-4b54938ab0f0	Design Dockerfile	Design Dockerfile and document.	t	1754363325238
3	0c93a04a-a3c5-4943-b64d-1fae67ff56e8	Fix login flow	Fix login flow with team.	t	1765965796339
3	19f64840-3d80-4582-95a2-924d8dab4ca1	Review unit tests	Review unit tests for project X.	f	1779845173939
3	bf111eb1-1937-4d85-a00f-42d76d6a86d5	Fix database schema	Fix database schema before EOD.	t	1772250136592
3	24e3c42e-ddde-4a4a-bdbf-79186f594fc3	Write unit tests	Write unit tests before EOD.	f	1755978838767
3	8309df1f-fd05-4c2c-9f24-d8e610f13121	Write unit tests	Write unit tests with comments.	t	1762737875000
3	00176a5f-7938-4d67-9422-79c3345da750	Plan unit tests	Plan unit tests with team.	f	1766754279983
3	2cc27688-fe76-4c2f-802c-2eecf9833643	Test unit tests	Test unit tests and document.	t	1770643422170
3	23913317-bcd2-41b0-b418-38ff483343ac	Design Dockerfile	Design Dockerfile for project X.	f	1762871915979
3	f4558ada-a2d1-4478-8e5b-486c24eace11	Fix API	Fix API in draft.	f	1758241951225
3	df1c5d49-a22f-4ac7-a92e-0f23f547f84e	Design blog post	Design blog post before EOD.	f	1778578044399
3	8be3dfb7-d697-49e1-9100-de29feceae51	Review UI mockup	Review UI mockup using TS.	t	1765883415024
3	94c11586-fc02-4677-8d1e-3ab9f5368638	Test unit tests	Test unit tests with team.	f	1759740512204
3	0faa6444-c4ee-455f-b058-8752f7807766	Deploy email template	Deploy email template with team.	f	1753581777649
3	839ed1b9-df3b-48c9-ba04-01b02dbdb64f	Plan database schema	Plan database schema with comments.	t	1755812978394
3	b789b213-deca-408f-8a7d-a40bf8b6b115	Test database schema	Test database schema with comments.	t	1762758781647
3	a67374a1-21f6-4485-9ed1-1765765654ac	Review Dockerfile	Review Dockerfile in draft.	f	1759096529270
3	29ea0b2e-e712-4115-88b6-e46a8c2d9b9c	Fix login flow	Fix login flow and document.	t	1772873633946
3	4b837232-3b08-4736-963b-f074df139805	Complete login flow	Complete login flow for project X.	t	1762381312086
3	6e2a20f0-449a-4c1c-beb7-33bf240d1f1e	Deploy database schema	Deploy database schema with team.	f	1763517153558
3	67ff5d80-e57f-491a-b8a6-658d721f51df	Complete blog post	Complete blog post and document.	f	1761255889344
3	b54ab590-6d51-4b60-b394-942ccb51d99f	Test UI mockup	Test UI mockup in draft.	t	1773080082097
3	92a94af6-100b-4061-8581-956bbe306586	Write Dockerfile	Write Dockerfile and document.	f	1773743613609
3	e585d01a-e246-4972-9a25-02df85d80de2	Write API	Write API in draft.	f	1760886595218
3	a3b7a742-31c8-4f80-a159-578deb903f69	Review unit tests	Review unit tests with team.	f	1780983594644
3	aefb26f0-9821-46af-b8a8-e93c65577084	Write email template	Write email template and document.	f	1771111196274
3	69cd6521-2bc4-45bb-8afd-235fc0b0a082	Test database schema	Test database schema before EOD.	t	1761991283145
3	4eddcfe9-1139-4731-b18e-f8349832d8de	Fix blog post	Fix blog post with team.	t	1770132121066
3	127eef02-f5b3-4b80-b44c-83c747c225cd	Deploy API	Deploy API for project X.	f	1781185147417
3	6363d780-ba62-47cb-945a-4f1cb1ecb7b6	Fix email template	Fix email template and document.	t	1767775537370
3	27d56715-f3b2-403b-9923-48ea0897e972	Write blog post	Write blog post with team.	t	1763826905697
3	65dc1d55-4651-4495-8451-56b12b08fc1e	Design UI mockup	Design UI mockup with team.	f	1767104858049
3	f3f158bd-44eb-4680-b7d1-1db60d25c88f	Test database schema	Test database schema with team.	f	1753432880299
3	9548c9ed-def4-4e3c-a555-81ac4ba8cbed	Test email template	Test email template with comments.	t	1765706497475
3	11ac76ca-e4e8-4fd4-8e03-3b9879e3dfb6	Write blog post	Write blog post and document.	f	1768611499397
3	090efae6-2ff5-4176-9190-6af633d6d9df	Test email template	Test email template with team.	f	1755608742339
3	2113d3ab-d3ac-443d-bbdf-4c77e29f51e1	Test unit tests	Test unit tests with team.	t	1774990479205
3	59b2c894-b3c7-49fb-b585-216fd0e6eb2e	Plan email template	Plan email template with comments.	f	1754991406130
3	1ecf01ce-573d-4759-8f94-687031a8d38f	Fix unit tests	Fix unit tests and document.	t	1764134019415
3	7939fef7-31cc-4d42-8537-cdd6710a15c5	Deploy database schema	Deploy database schema in draft.	f	1763792590485
3	8c2e5e48-377a-4ec1-929c-b85f425f263d	Write UI mockup	Write UI mockup in draft.	f	1779396109903
3	5da64afd-f607-4f1e-86aa-d17f90e87b9a	Deploy API	Deploy API before EOD.	f	1755677910358
3	1627116b-c6b0-4378-be90-e9bfdd224320	Fix UI mockup	Fix UI mockup using TS.	t	1751229283378
3	af944df7-ac3a-46ab-a7cf-4bff23d81d7f	Plan API	Plan API with comments.	t	1780164459905
3	c757e4e8-0c3c-44db-a5f6-f7b68147a47c	Write Dockerfile	Write Dockerfile with team.	f	1775161580490
3	74cac1d9-0c68-4b36-b33c-9bbd1128dbff	Fix API	Fix API with comments.	f	1772014082442
3	39936be9-562b-4f36-9080-c415d184e6f4	Design API	Design API before EOD.	f	1778944790546
3	992a3bde-1923-4a61-95c3-41162f22ad96	Design unit tests	Design unit tests before EOD.	t	1776995128529
3	a603aec9-b7c9-4629-bc87-1a846c7b15b1	Design email template	Design email template in draft.	t	1766608847712
3	899b7435-8a6a-46eb-8d9d-a77ac7b63b33	Plan UI mockup	Plan UI mockup using TS.	t	1776301147777
3	b7b48b68-89a9-4d87-a6fa-b5181156553d	Design UI mockup	Design UI mockup and document.	t	1775746633678
3	6f9b9962-84a1-4488-9045-b2a59a335c2f	Test email template	Test email template before EOD.	f	1768775714808
3	bfa865fd-1ea0-433c-9342-5d40793e64ad	Design login flow	Design login flow with comments.	t	1756788872539
3	38012423-0fb9-479c-bcfb-53a1eda3a32f	Review blog post	Review blog post with comments.	t	1777653525597
3	6381e6db-af3d-457c-8eb5-c35757f1b262	Deploy unit tests	Deploy unit tests using TS.	f	1780591466394
3	1a87be05-bda4-4089-9222-e16db049619f	Write API	Write API before EOD.	t	1772086236663
3	77f8a798-89b3-4bb2-96e2-72b7cfa98f9d	Write Dockerfile	Write Dockerfile using TS.	f	1777670972103
3	4abc997f-57a4-4921-8b29-5ffeec9df126	Complete blog post	Complete blog post for project X.	t	1777757750220
3	532d663c-1084-4bad-9d0b-ff746ff99c1b	Fix login flow	Fix login flow before EOD.	t	1758880648453
3	6ce1c009-d074-4114-9d22-7ec505e5b20b	Plan database schema	Plan database schema with team.	t	1760674927448
3	bb55fbc0-1b93-421b-ac52-9e2eb8c96f83	Design database schema	Design database schema for project X.	t	1761463643164
3	7266e7b4-c548-4109-becf-8dc84161ff7e	Review login flow	Review login flow and document.	t	1771600800498
3	3c027c1d-b661-452f-9e74-c932467debb2	Write database schema	Write database schema with comments.	f	1774223180010
3	bcf24acd-d26c-4b1b-ba6c-3d5ae0c512c6	Complete login flow	Complete login flow before EOD.	f	1766290405280
3	2a334962-3e67-40a1-b16d-237bad35f1c3	Plan API	Plan API and document.	f	1762598481864
3	c229aecb-b790-48c6-913f-fcdff4ee829e	Deploy database schema	Deploy database schema in draft.	t	1760940458018
3	99f2c3d4-0df7-4d7f-8cfa-29db6f1e9696	Write Dockerfile	Write Dockerfile using TS.	t	1751412975968
3	ae2ccce9-236b-413a-a647-d3527a1022bf	Test Dockerfile	Test Dockerfile before EOD.	t	1759447045093
3	ebcba92d-b02f-4841-b9a7-7e839c80a896	Fix UI mockup	Fix UI mockup with team.	t	1761448299540
3	ed7a2f8e-da2a-4ec6-bae7-936808df1746	Complete database schema	Complete database schema using TS.	t	1777458785450
3	80ac85aa-2163-4276-b0b2-b181aa4f5c85	Complete API	Complete API using TS.	t	1763815348741
3	951268c7-0734-47a6-a12c-1831b5083f68	Design blog post	Design blog post with comments.	t	1771280254384
3	204b3c08-4a8e-4447-8543-7e3a277b7319	Test unit tests	Test unit tests with team.	t	1771263751590
3	d32d76b8-676f-4a4f-81c0-1cddb1ab9454	Test API	Test API using TS.	t	1772224234844
3	34acabb3-79e0-4716-890c-3a22ca9bb53a	Test UI mockup	Test UI mockup using TS.	t	1759353507850
3	a52c9851-dd69-4c92-a058-74c90800d96a	Fix login flow	Fix login flow and document.	f	1761033065985
3	afdbfead-5b2a-4d69-a117-d977eb33737d	Plan UI mockup	Plan UI mockup in draft.	t	1779138753850
3	228fba11-17cc-4460-aa2e-af8ba2e1cc61	Plan UI mockup	Plan UI mockup in draft.	t	1767732489323
3	107d9a0c-12e4-4691-920e-1d05a25e9b93	Deploy database schema	Deploy database schema with comments.	f	1750863509029
3	2f729aa6-cbcc-49bf-b27c-a68401da5d75	Review Dockerfile	Review Dockerfile using TS.	t	1757815680328
3	f653bcb4-ab32-4a45-ba4e-160ead79c93d	Test Dockerfile	Test Dockerfile with team.	t	1767877053191
3	e4209787-2a5c-414d-bb99-ac286be194b0	Test API	Test API using TS.	t	1766414418197
3	9ee6945b-0ace-41d6-97e4-55e4fa005d60	Fix UI mockup	Fix UI mockup in draft.	t	1764420620635
3	ad50202c-dd2e-4d06-8ad3-383a06730e57	Design database schema	Design database schema and document.	t	1780826625954
3	9e25b751-8be3-4e74-8359-fe290818b70d	Write API	Write API before EOD.	f	1771853797701
3	6a109863-5ac0-4482-aa44-ae740d5cea39	Plan unit tests	Plan unit tests before EOD.	t	1770031956103
3	394b1bdf-949a-4e30-a786-5a89d1a9752d	Review API	Review API for project X.	f	1761046533525
3	1c68bd34-b50a-46a6-a0c1-65be1a73611a	Complete database schema	Complete database schema in draft.	t	1776172462077
3	2ddd5e73-3158-47b6-b26d-86f4c9b1f4e9	Review email template	Review email template before EOD.	t	1768774466493
3	27c3fd25-6863-41c3-8635-12337bbef4bf	Design database schema	Design database schema using TS.	t	1760952327887
3	424ec62d-7994-47c1-94ab-b933e5511dcf	Write UI mockup	Write UI mockup with comments.	f	1770189516822
3	fc5d549e-3da0-4c49-b412-e46137ef2901	Fix blog post	Fix blog post for project X.	t	1779754231112
3	2add962b-45e8-4765-a9a1-20f0f66c6ab6	Deploy blog post	Deploy blog post for project X.	f	1771044958968
3	9564ec9a-da4e-4bc2-9ccf-a783d3d3e70c	Design email template	Design email template using TS.	f	1770834419784
3	35b8da52-0e63-4951-bee0-c4ec5089a288	Deploy UI mockup	Deploy UI mockup with team.	t	1779309496081
3	efc44993-70ff-482c-803d-aea637542c60	Plan UI mockup	Plan UI mockup with comments.	f	1758621413130
3	4b2da483-9db2-407f-9e7a-3e23ad9f78d5	Test Dockerfile	Test Dockerfile with team.	f	1777259163093
3	7a741911-2d33-45cd-bf44-1cef1136c869	Complete UI mockup	Complete UI mockup before EOD.	t	1752813542282
3	87ef7a17-61f7-4ff1-925d-459c002b7a4f	Complete email template	Complete email template using TS.	f	1752581284194
3	9499f08c-c4a6-4cbc-bd5c-5e19fc8fa70d	Deploy unit tests	Deploy unit tests using TS.	t	1767651684511
3	934ae175-d7a3-4bd5-9874-b11bd8aff0c4	Fix API	Fix API using TS.	t	1770120284493
3	c6fa5692-79af-4afa-b20f-c7a42cf5f453	Test unit tests	Test unit tests using TS.	t	1753774669233
3	d5012b6c-f737-41fe-a49a-0ac89998776f	Review email template	Review email template and document.	f	1751793994736
3	1337df07-e19a-4ec4-a781-4d492d2122dc	Review API	Review API with comments.	f	1758202045944
3	6437e431-55e7-492e-ba95-e5bedc8669b0	Design blog post	Design blog post with comments.	t	1777362688744
3	cb959a8d-0d33-4d6d-9031-f6a987c7f05a	Review UI mockup	Review UI mockup using TS.	f	1780691811811
3	9cabb28e-fc7e-4467-bd43-1464309bedf0	Review database schema	Review database schema in draft.	t	1755403548383
3	7f30464d-95e5-46ab-a27a-5fd5910ea34d	Write API	Write API in draft.	f	1775701495508
3	c858dee2-b16c-4211-b633-72857297b608	Deploy API	Deploy API and document.	f	1766189749536
3	71e0bb28-f2fa-4fc6-a9cd-3944c4dfa54c	Deploy blog post	Deploy blog post in draft.	f	1772113074312
3	e3ea3c5a-c8b0-419a-961e-f503c1dfd180	Complete login flow	Complete login flow in draft.	t	1767505274465
3	275f70bb-82ec-4021-ad68-f2d4405dd796	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1768327274411
3	d31eb1b6-c5c1-485d-9eee-0c26f2a86e77	Complete blog post	Complete blog post with comments.	f	1752376917828
3	f2eff5d1-ce19-4abd-9535-f539e21e8440	Fix UI mockup	Fix UI mockup for project X.	t	1769844404928
3	1cc8e72e-a1b1-4d78-ac25-5b541e774f0f	Complete blog post	Complete blog post with team.	f	1762808879358
3	d524cef7-d142-4c29-81ff-f16afde32766	Fix Dockerfile	Fix Dockerfile with comments.	t	1780014376179
3	34f6a7ef-f53c-4224-a920-5ce7ec26128e	Complete UI mockup	Complete UI mockup using TS.	f	1765836761302
3	9938677c-28dd-454d-aa95-03623c9efce0	Deploy database schema	Deploy database schema and document.	t	1756216693200
3	50083516-6ee2-4432-9ad1-e3d17398ed15	Write email template	Write email template using TS.	t	1764372523944
3	68701fdb-da62-4a7f-b31f-64a491305c49	Fix UI mockup	Fix UI mockup using TS.	t	1761565077738
3	df771e6a-5772-4d21-964a-f89b42428c74	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1763223103975
3	3efb44b2-439c-4aec-8417-6d01761b92e8	Test blog post	Test blog post for project X.	f	1759568859542
3	93775351-9b0d-412d-bf10-9c1d1ef267e1	Test Dockerfile	Test Dockerfile with comments.	t	1763504110150
3	4683ef4d-f2e5-4f22-8040-96f1bb513797	Deploy API	Deploy API in draft.	t	1779393361549
3	a317f6b9-3338-44bf-9480-1fe0605f172d	Plan UI mockup	Plan UI mockup with team.	t	1778497683384
3	e6bb4c5f-b7f3-443b-aabc-4f7a55bb490c	Deploy email template	Deploy email template with team.	f	1768957559263
3	e6e25701-ec37-4820-9ef4-e388166b0f6e	Fix API	Fix API with team.	t	1762972615475
3	f4a99609-e593-4017-af9f-cc6f24642994	Test login flow	Test login flow with team.	f	1758445560891
3	de454b8b-6b00-4fc7-b0b3-8591dd38421a	Write email template	Write email template for project X.	f	1761452383404
3	316544ca-6d64-455f-9969-8150e023ece4	Deploy API	Deploy API with comments.	t	1775937844465
3	cd02a6c5-4d35-4d2c-9fef-f3d22e310ee5	Fix UI mockup	Fix UI mockup in draft.	f	1779283896524
3	ffe093c2-10dd-43c7-94bd-4a1cc6999068	Fix login flow	Fix login flow in draft.	t	1772101684520
3	1fc7f163-ee30-4bfb-950e-56227b2a5461	Complete unit tests	Complete unit tests and document.	f	1768461003057
3	9da83699-7d71-4689-971d-7dd10c8b1d22	Review API	Review API for project X.	f	1776784099564
3	96979008-bd43-4000-8682-acd150d06d5b	Plan API	Plan API with comments.	t	1778264042259
3	d22b7108-de8c-4b17-8a15-dd935fd2d9e2	Complete API	Complete API with comments.	f	1759678724667
3	927e6060-07c6-4bb8-981b-dbac4861fb63	Write blog post	Write blog post for project X.	t	1760293645910
3	0286c857-08c4-49b8-a11e-a05c04b0489b	Review email template	Review email template with comments.	t	1773119842389
3	1b418e7d-a779-4a59-97e3-95bf5ff7342f	Design blog post	Design blog post and document.	f	1763257664055
3	a44c5e5e-0e34-4cb4-9f1e-4247d0393703	Complete unit tests	Complete unit tests using TS.	f	1756794792524
3	326e5678-5ee0-40ab-8b20-f203eeb48760	Fix email template	Fix email template in draft.	f	1778492330080
3	a6b95194-6e12-422a-9b53-c3cb602dc800	Write API	Write API with comments.	f	1773523369722
3	956693f0-f87a-4250-8f3f-1a7acd80ddbd	Design database schema	Design database schema with team.	t	1758235744576
3	1e725dad-042d-4055-ab5a-717beb9e9d07	Design database schema	Design database schema and document.	f	1770314981089
3	57247767-3c64-42c7-be6f-8695f18997c5	Plan email template	Plan email template with comments.	f	1777542698106
3	e6a387a6-68d8-43a1-ae31-11467ab882f2	Design UI mockup	Design UI mockup before EOD.	f	1772127838345
3	16ac0b46-cd94-44d0-8c43-1ddcd9b6fb3f	Write unit tests	Write unit tests with team.	f	1770078019353
3	bcc79ad6-c5d6-46ee-a9c5-f7995132da2c	Design UI mockup	Design UI mockup with comments.	t	1751031320845
3	853569a7-3434-4681-a3e2-5aaeb7ba8de9	Write database schema	Write database schema in draft.	f	1754525999014
3	524ccbb9-f810-4b75-8a8a-5f3609deefd1	Test unit tests	Test unit tests in draft.	t	1774370990493
3	68baeb12-2628-40e9-9510-cc78de63a8db	Write login flow	Write login flow using TS.	t	1754531708998
3	d168a280-e7f1-4fca-be9a-40b889dcccd6	Design login flow	Design login flow in draft.	t	1777023091064
3	39936443-77fd-4ffb-9b8d-77969951a3e0	Plan database schema	Plan database schema with team.	f	1750646375893
3	ae688840-fd0c-4a31-bf94-fa70f5422d4b	Design email template	Design email template with comments.	f	1764943669462
3	1317e2bb-5eac-4f61-8903-497e1955c824	Write UI mockup	Write UI mockup using TS.	t	1758470108789
3	2ec47afd-d633-4f39-a4df-22ecb571c728	Fix unit tests	Fix unit tests with comments.	t	1766151404572
3	eee43c98-4187-49d4-aa5f-b39ae3a673f6	Deploy database schema	Deploy database schema and document.	f	1767055642862
3	ed4077cd-e072-4f2f-8fa4-878d3d65820c	Design unit tests	Design unit tests with comments.	f	1769221885735
3	3107135f-d30d-4cd3-bd32-067f7177a8c5	Review blog post	Review blog post and document.	f	1756558457419
3	e75f8fe4-b697-4738-9e3c-2a8acc832f3d	Review API	Review API in draft.	f	1753441143336
3	a105d466-c694-4ddc-8a7b-42d780189502	Deploy blog post	Deploy blog post using TS.	f	1768767642598
3	92e559db-edde-4d81-a820-83d2a879b49e	Deploy blog post	Deploy blog post and document.	t	1760672992801
3	03b32902-00ab-44d1-b579-0a58a328de3e	Fix database schema	Fix database schema before EOD.	f	1763292778777
3	24fff5f1-4955-4626-b317-e35e77032f3a	Review login flow	Review login flow with team.	t	1770059645067
3	8e159628-ff67-4005-8761-51a9b1d3afe3	Complete database schema	Complete database schema for project X.	t	1771684564268
3	03a20452-4426-4f1a-abc0-a40e53f5f0b4	Fix email template	Fix email template with comments.	f	1754349216487
3	168779b4-aa1a-41ae-9a72-d8821a1e18d3	Complete unit tests	Complete unit tests before EOD.	f	1761729684902
3	ecf59d1c-4fe9-4e87-ab9e-44873e6f6dcc	Write Dockerfile	Write Dockerfile for project X.	f	1762407079562
3	ceb3025c-4644-46ef-ae62-aff6bcc94bd7	Deploy UI mockup	Deploy UI mockup using TS.	t	1771301769557
3	ea48be71-0041-47a4-aff0-521b1327d5fc	Complete email template	Complete email template using TS.	t	1768898893206
3	4cc0142f-4649-4627-9ee1-cea2addb32c0	Test API	Test API in draft.	t	1760853640605
3	14fae049-a020-4497-9367-e4df4654500c	Test email template	Test email template for project X.	t	1752942878924
3	c4a8129e-4306-4f4d-881e-97f0379bd236	Deploy database schema	Deploy database schema for project X.	f	1779075386591
3	11095661-b5c4-43b4-9e95-846c7a093a17	Deploy unit tests	Deploy unit tests using TS.	t	1778305417879
3	c9819855-1ce7-4433-95a1-496e672895f6	Fix blog post	Fix blog post in draft.	f	1777206821245
3	1a181359-c84c-4cae-955b-eba73dfe59b4	Complete unit tests	Complete unit tests using TS.	t	1768673282583
3	67f4f50d-c1cc-4855-9daa-efc0dc2f7799	Write unit tests	Write unit tests using TS.	t	1769656720675
3	5a1576d5-23f7-4688-a4cb-63af22557b46	Review blog post	Review blog post with comments.	f	1774246482204
3	8a921d98-e529-44e9-b087-00bf48f757aa	Write email template	Write email template and document.	t	1774726846328
3	98974b72-99d3-4cb4-8ad5-21be64e9b235	Complete unit tests	Complete unit tests with comments.	f	1753703487892
3	30790e6b-a44e-4332-a6f9-fbdfa53c1ed5	Review email template	Review email template using TS.	f	1760337358690
3	0a58a25d-6206-4b72-a64a-438f0e199d67	Review unit tests	Review unit tests for project X.	t	1751696764831
3	84b279ef-e9ed-4a09-bf45-2d1015f03f38	Review email template	Review email template before EOD.	t	1781470383901
3	6b9a4734-23ef-4378-a409-18a851d0c40b	Fix login flow	Fix login flow using TS.	f	1779132458807
3	a04a9b08-e66d-4dda-9230-9565a76debcf	Design UI mockup	Design UI mockup for project X.	f	1757031522907
3	d6aff7cf-b6ef-4b73-910b-9ea045bc5496	Plan unit tests	Plan unit tests with team.	t	1771622182677
3	00ccc162-4104-4763-bfa0-5df034390dc6	Test UI mockup	Test UI mockup before EOD.	f	1759025623379
3	b492f6bd-5798-4ab1-90e0-e05838ed68c4	Write login flow	Write login flow and document.	t	1765450571337
3	fb5769c8-d312-4714-96da-93036747823b	Deploy blog post	Deploy blog post before EOD.	f	1758997834752
3	efe63c0c-ff4b-441a-bc26-87a1dddd075b	Complete UI mockup	Complete UI mockup with comments.	t	1772512241411
3	6a5ba276-92ac-4b1c-aa35-075320265336	Write unit tests	Write unit tests with comments.	t	1781626011446
3	5a8063c5-3a1d-4564-a99a-be8ff415d2eb	Plan unit tests	Plan unit tests for project X.	t	1778333973151
3	acb41f18-2df2-4e9a-8779-f6c02d1d96be	Fix API	Fix API using TS.	t	1768204354913
3	3b1b7c13-0102-49a8-89ac-e702affcd874	Plan email template	Plan email template with comments.	t	1779322511614
3	a31f204f-ba31-48f2-a378-40333212a59f	Write unit tests	Write unit tests for project X.	t	1780485408423
3	31ea67a0-1fc3-41b7-9dda-1c836d02537a	Review UI mockup	Review UI mockup before EOD.	t	1765327325461
3	68dcce6b-8658-4509-9150-75d27566bd3e	Review database schema	Review database schema with team.	f	1778196678097
3	d623274c-66aa-453d-a0de-011d9bb630f6	Fix login flow	Fix login flow with comments.	f	1758796377286
3	174b3192-ca09-4975-8518-d6a0313309e5	Plan blog post	Plan blog post in draft.	f	1780693860121
3	3d7e9830-b1db-406c-9fb4-edf905a6e0b2	Design Dockerfile	Design Dockerfile using TS.	t	1759743899855
3	0b400902-c6fc-409b-a54c-afddc8a9315f	Design database schema	Design database schema in draft.	f	1767074527222
3	68233e5a-6c6b-44f9-a64c-90465fe7b702	Write unit tests	Write unit tests with team.	f	1758206247545
3	b705d042-52f8-43a9-83c1-0f648785641b	Complete login flow	Complete login flow for project X.	f	1751939111707
3	4530f9c5-8c09-49f2-b3bd-822b3125be2d	Test login flow	Test login flow with team.	t	1757141313319
3	01f85390-f961-4b70-a7aa-f01613fb5e82	Review blog post	Review blog post in draft.	t	1762271511203
3	a0535bf3-2d97-4960-8b3b-58c2852d64e9	Test unit tests	Test unit tests for project X.	t	1753818320847
3	7038ec26-4aeb-4175-8caf-9ce35bd90909	Design API	Design API before EOD.	f	1751984154440
3	598db034-61a0-4370-b33a-f424ec27687f	Write email template	Write email template using TS.	f	1767760761987
3	c616ddc7-a951-42d7-a9d7-f1aec2980fd6	Review blog post	Review blog post in draft.	t	1777126862970
3	d00a2c3f-70e5-405a-bdd3-eafb72457671	Design UI mockup	Design UI mockup using TS.	f	1767816233539
3	db02d149-6b2b-40af-85eb-75d82dc10320	Write login flow	Write login flow for project X.	t	1779189780009
3	ad9ca641-e46a-4a5f-972c-78a9495652b4	Plan login flow	Plan login flow using TS.	t	1754068996210
3	709fbbc7-1ff9-4c51-98b5-6643f4588d14	Complete Dockerfile	Complete Dockerfile and document.	t	1752148580751
3	e1eff6e7-d13e-4472-9b4e-02357d689e94	Plan blog post	Plan blog post and document.	f	1774087315205
3	925b79fd-193b-4141-ad26-690b01b798c1	Complete email template	Complete email template with team.	f	1774638967324
3	0c5bf671-6654-4e6b-92e4-c104d7ee3d5c	Design blog post	Design blog post with team.	t	1750453679596
3	99671a46-3680-4b80-931d-bcb1bdd45ed3	Write Dockerfile	Write Dockerfile with team.	f	1780622022189
3	f8957154-4ad2-4239-b2ae-8c66037c9187	Deploy unit tests	Deploy unit tests and document.	f	1759297060016
3	58514b24-a11d-4df9-8f1e-ed26df15ae2c	Complete blog post	Complete blog post using TS.	t	1755666954201
3	5776b2e1-a184-4c6b-a493-6ed1b1283d6a	Complete login flow	Complete login flow and document.	f	1779266409249
3	d9e13308-c449-4bab-9014-b8148de46204	Review Dockerfile	Review Dockerfile with comments.	f	1755541645199
3	264b1e67-d359-4d21-bda4-e60cb8efade1	Complete Dockerfile	Complete Dockerfile before EOD.	t	1777802447534
3	8bc15e11-1d7e-442e-ad2d-e50522cec427	Review database schema	Review database schema with comments.	t	1766181644244
3	92dfc590-0765-49fd-a479-3b17bf372387	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1754483059087
3	4e987289-045c-4e20-bd51-61f94bdbeedb	Test login flow	Test login flow using TS.	f	1757545002367
3	f9cbdb96-2bf1-4bd5-ad5e-a8ff58695ff6	Fix Dockerfile	Fix Dockerfile for project X.	t	1751714890467
3	e78be208-9c50-4f13-83bd-588fcf7195ed	Fix unit tests	Fix unit tests using TS.	f	1779192929695
3	253b179f-770d-4d17-bdce-724a6cfbe380	Review login flow	Review login flow with team.	t	1761459612665
3	4a3c8255-8ae2-4b8d-aa82-0501f914af6b	Complete database schema	Complete database schema in draft.	t	1750375424036
3	835acdda-6e62-4853-928d-173290b72924	Complete API	Complete API with comments.	f	1751301227469
3	3ecb169f-0ac6-4458-8f09-484e580fd124	Plan email template	Plan email template using TS.	t	1776526566208
3	9045b5f1-6856-4d20-a5d8-d93fdb0f16a8	Write Dockerfile	Write Dockerfile and document.	f	1766569562704
3	ae811192-d29f-43b2-8ae4-ecff70fad1e5	Write API	Write API and document.	t	1750668867271
3	870a1661-64ff-42bc-b609-a50df22d58a2	Design login flow	Design login flow with comments.	t	1752930703351
3	b7872dab-fe72-47fc-941d-96be435fcd44	Write Dockerfile	Write Dockerfile with comments.	t	1769609796303
3	d61f7a76-331c-4ca8-b952-929d16196c9c	Plan blog post	Plan blog post for project X.	f	1766516544102
3	f411fc36-535b-43d1-a02e-c849e96a1a0b	Review API	Review API and document.	f	1769559436028
3	cf2295b8-454c-48f2-bb80-46beb5a4303d	Review Dockerfile	Review Dockerfile in draft.	t	1761861236854
3	049f0631-1468-406a-ae47-8972695db15f	Plan blog post	Plan blog post with comments.	t	1762842102816
3	839623cc-3dc8-49c3-b592-0919ce390482	Design Dockerfile	Design Dockerfile using TS.	f	1776674220861
3	9c7e60e4-111d-4fc4-9627-bab08b2f73d6	Design database schema	Design database schema before EOD.	f	1771951095767
3	c3f5ab2a-cece-4c26-81dc-535b74aa23ba	Review API	Review API using TS.	f	1779825484430
3	f42c2876-ba01-4969-a7f4-a03686901f8c	Deploy Dockerfile	Deploy Dockerfile in draft.	t	1752590795768
3	0a63977c-8342-4214-8419-1cd5fc8370db	Deploy login flow	Deploy login flow and document.	f	1760931499373
3	0c2df674-9a39-4e57-9c97-93aca567980f	Plan API	Plan API with comments.	f	1750297231362
3	77a537b9-8265-4102-9662-c0326721db59	Design UI mockup	Design UI mockup and document.	t	1768973417683
3	dec11b47-ac19-4216-b218-43d4e96cefb2	Write UI mockup	Write UI mockup using TS.	f	1766865733277
3	4454a990-b34b-4687-96b1-07a7497b3314	Design blog post	Design blog post with team.	t	1776939854233
3	217c5b36-2e81-4b9c-a27f-c4bfc9ce57d5	Complete login flow	Complete login flow with comments.	t	1761460536454
3	0ea56148-c265-4626-80de-f55eb2ec0c08	Design Dockerfile	Design Dockerfile before EOD.	t	1767674362123
3	7fef9c75-117d-4863-8eec-33b42721e8bd	Deploy API	Deploy API for project X.	t	1755358295700
3	5c3f5b3a-1935-4418-b12c-f7fcf41f5dfd	Complete unit tests	Complete unit tests for project X.	t	1776388228129
3	6ba5b471-3edd-45a3-b81a-ce8ad6ce2f3c	Fix UI mockup	Fix UI mockup with team.	t	1763062597216
3	ded5bdb6-e406-476c-a61b-e2d1a6ec6e20	Design email template	Design email template and document.	t	1777717537739
3	3441d497-281b-4b5d-bcf2-b7804165214a	Design login flow	Design login flow in draft.	f	1770842734604
3	02d19a14-1974-4d47-826d-6583527e87f7	Deploy email template	Deploy email template in draft.	t	1772749602668
3	d79f83c2-1940-4872-832d-9f4f70ccc4ee	Fix API	Fix API with comments.	t	1750842996130
3	e2b79d09-79ae-4e46-9b96-79c1a56cb24d	Review UI mockup	Review UI mockup with comments.	t	1774627214877
3	788d0881-8f4e-4c45-a406-1a4b420ca2dc	Write blog post	Write blog post using TS.	f	1750296414318
3	b3e986ec-4cf0-4461-8b75-22b2808dc365	Deploy unit tests	Deploy unit tests for project X.	f	1770344981677
3	f3457a34-3614-4315-ab46-835914e62f6f	Complete API	Complete API for project X.	t	1777167406287
3	ecbea60d-0ffd-44e8-95f8-3c559778663a	Complete UI mockup	Complete UI mockup using TS.	f	1761908805950
3	a07b506d-ae59-48d0-aeae-6b821f69167f	Design unit tests	Design unit tests with comments.	t	1766284024692
3	f66909d1-ae45-49a2-be8c-f814f9ce325f	Complete UI mockup	Complete UI mockup with team.	t	1755605910569
3	52005534-fbd1-4803-a609-b9c6e6ca9acb	Write unit tests	Write unit tests and document.	f	1757292020895
3	fdeb8d78-526a-422b-9579-674368a3f9ae	Design API	Design API and document.	t	1765740969138
3	b481a33b-b445-4c92-ab6c-371062c4d16e	Plan Dockerfile	Plan Dockerfile with team.	t	1768640542950
3	9b8b2759-f9b5-4a1c-b01b-4eef115f9323	Test database schema	Test database schema for project X.	t	1756861603724
3	0297b642-d297-40c3-b116-fb55e6c97850	Review API	Review API for project X.	f	1777903336455
3	720e0536-9ba3-4172-962b-c457003902d8	Fix Dockerfile	Fix Dockerfile with comments.	t	1761869274581
3	7929d97f-b2a5-4f31-84f2-2e0ddb8c4b77	Test database schema	Test database schema for project X.	f	1752196466995
3	0c00b404-d8b0-44c6-a2f4-b016e1e9bcab	Plan email template	Plan email template with comments.	t	1778797810586
3	6156ac4d-8fa5-43e7-b571-5df70d1dff0c	Deploy API	Deploy API for project X.	f	1758632096253
3	fece3e8c-78db-462c-8170-f46cbf712964	Deploy Dockerfile	Deploy Dockerfile with team.	t	1764373807482
3	8007186c-7df7-4ab0-ad00-26040520c5b4	Test login flow	Test login flow using TS.	t	1780011518639
3	97dff361-afc9-4cd3-acd1-d98429fd33cc	Test UI mockup	Test UI mockup with comments.	t	1761680849314
3	76dd5dd8-2ba4-4797-91af-d392c47afab3	Complete database schema	Complete database schema and document.	f	1753760785660
3	09142be5-fb26-46ff-bfa0-5f07a025a501	Plan login flow	Plan login flow in draft.	t	1754155040846
3	c28e9350-152e-4ddc-80ea-d489d642a330	Complete UI mockup	Complete UI mockup using TS.	f	1770910831293
3	74fb3c7f-10a4-45b1-8963-74d9e0c3f1c5	Complete unit tests	Complete unit tests for project X.	f	1761872570945
3	a2f1586f-b562-46c5-abd8-f4c32fedcae6	Plan unit tests	Plan unit tests and document.	f	1750960089149
3	599ad16b-c245-4bc9-b9b4-43bc53f3e704	Test blog post	Test blog post before EOD.	f	1769320450400
3	8a858113-66f8-4976-99d4-c37ec38ebc04	Plan database schema	Plan database schema before EOD.	f	1761124455618
3	5ef47c5a-3b87-4a6f-bc61-bea217a8b821	Design login flow	Design login flow using TS.	f	1756758328569
3	06c25de6-ec67-4fc4-af20-91f08cff0b49	Design API	Design API with comments.	t	1776694593774
3	91193693-d3a1-4d9b-bef6-9c1df92b26aa	Fix blog post	Fix blog post and document.	t	1767672265921
3	ae638aa3-6c96-4c1f-9a2a-32446859c02d	Complete unit tests	Complete unit tests for project X.	f	1765023709926
3	5b206958-4ea1-498d-8543-7bb26661487e	Design database schema	Design database schema before EOD.	t	1763880517115
3	be8d473c-c083-4ee1-b63b-a1c97fa9eec3	Write email template	Write email template before EOD.	f	1751667657691
3	b5c04a31-c1ff-4254-8d13-840403d30312	Review blog post	Review blog post and document.	f	1760850551795
3	c4b75ae3-f343-4e4e-80f3-fc6b7741bc17	Review email template	Review email template with team.	f	1756139843339
3	f719b68d-4714-4b81-be8b-654dc1f29c44	Review email template	Review email template using TS.	t	1775649486928
3	f5e43544-b0ce-49c3-9a99-a7c6bcccaec5	Complete Dockerfile	Complete Dockerfile with comments.	t	1760695225883
3	5d57e950-7e38-467d-b699-c02515b75a99	Write API	Write API for project X.	t	1764167447292
3	8f5181ab-4199-424d-9669-a4fc94d4349a	Review blog post	Review blog post and document.	t	1780199886941
3	fb408f00-3dcf-4c80-bf5b-8b35ecf2c12a	Design email template	Design email template in draft.	t	1757779481526
3	54e2838a-c07f-4dc7-8c92-67fa058b9fa0	Complete login flow	Complete login flow before EOD.	t	1756624631204
3	d3230261-7d99-41dd-bf7a-b3f8505bb37b	Review unit tests	Review unit tests in draft.	t	1751983967664
3	81d2ad28-50df-4db4-aad4-40a81d09c1e6	Complete unit tests	Complete unit tests for project X.	t	1769961374320
3	5867df6d-1ce7-42ca-b122-3d72a7d6570e	Deploy API	Deploy API using TS.	f	1755300436528
3	56a9c93a-da61-4929-a7da-1ceea9a8cf9a	Deploy API	Deploy API with team.	t	1772176737986
3	a2949031-20ab-4fa5-9f43-5b1b6409f84b	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1761007502998
3	1774ab0a-5fcb-4327-a1ce-c030fbeedabb	Test email template	Test email template with comments.	t	1773599660058
3	6a53f492-8c47-4bec-9300-5ebfad90e9da	Plan Dockerfile	Plan Dockerfile in draft.	f	1777297879470
3	7c75e74e-2835-4ed0-b094-17aa30e25814	Design unit tests	Design unit tests before EOD.	t	1773649497151
3	0ff09b81-e37b-4a97-b7e1-000bbb6eceed	Write login flow	Write login flow before EOD.	f	1758068576694
3	e4071d2e-aac7-4608-8a17-29dc829c3482	Plan API	Plan API with comments.	t	1752559500143
3	17c9f2c7-9d06-4684-a064-40d1a69986a7	Plan email template	Plan email template and document.	t	1754206751575
3	0071a170-245f-40cb-a651-54fe2fb6620a	Fix login flow	Fix login flow with team.	f	1769109555333
3	e14e4fde-d729-48e2-9e58-b919d93c96ba	Deploy database schema	Deploy database schema in draft.	t	1778766565422
3	63d989b0-277c-435c-8341-53a6a77c5636	Deploy login flow	Deploy login flow for project X.	t	1764082297793
3	c88e3ff4-a481-4703-9f43-874a780f3e05	Write database schema	Write database schema with comments.	f	1768583120161
3	bc9c66ac-6a2d-4cf6-8609-8c52985bc5a6	Design blog post	Design blog post for project X.	t	1767632938435
3	9cb88248-ccb2-43bd-ae39-9890b3e5cb15	Plan unit tests	Plan unit tests before EOD.	t	1750938759239
3	f351b0d5-e057-415b-b067-aad111830eb0	Design UI mockup	Design UI mockup and document.	f	1752601594681
3	d9604974-a37b-415c-bd52-dd0992d8c46c	Complete database schema	Complete database schema for project X.	t	1772049709459
3	675f70b7-4485-434b-8f5a-fa3aa548cc7c	Fix UI mockup	Fix UI mockup for project X.	f	1770349616700
3	a26ca758-9986-4e95-bf76-ac611b604900	Fix UI mockup	Fix UI mockup in draft.	t	1757543811095
3	edca8226-a0ad-420f-8a40-0e2043176748	Write blog post	Write blog post for project X.	f	1768774373867
3	d359f898-2c99-444f-805b-954142ea5f00	Complete API	Complete API for project X.	t	1772497622725
3	966f1092-bb2d-4a58-94bb-973c206608c6	Test unit tests	Test unit tests using TS.	f	1772680154934
3	ffb06c70-562e-42d9-ad0d-ce8afe6b12b0	Write email template	Write email template before EOD.	f	1752714897530
3	465e3bbf-ab71-4206-a636-f7a7328cb8f8	Deploy login flow	Deploy login flow with team.	t	1773993995427
3	cbbeda20-c4ca-4970-92c9-56fcc69f2f18	Complete login flow	Complete login flow using TS.	t	1753354860492
3	2debc3d3-05dd-4b9b-8a6a-764854bc8e3a	Review Dockerfile	Review Dockerfile before EOD.	f	1756445996401
3	fdcfc0b6-8b7e-4582-919c-7c6b7e831eaf	Design Dockerfile	Design Dockerfile with team.	t	1779763262353
3	098d762e-02f2-4afb-a4ca-6a4a97392870	Complete API	Complete API with team.	f	1781216036811
3	805910ef-f92d-49fc-8db1-b9256928b013	Complete login flow	Complete login flow using TS.	t	1768172320692
3	947f44f3-cfc2-4bae-a8d5-18ef8042c13c	Plan database schema	Plan database schema using TS.	f	1755536520184
3	92bced64-d364-4fdd-a769-3c4efc50fd6d	Design database schema	Design database schema for project X.	f	1781464133028
3	4edd4e3a-c680-4fd8-a3e5-07878aa6a1bd	Fix blog post	Fix blog post before EOD.	f	1766138255753
3	c1743274-5a46-4d36-a43d-e082cc4736a9	Review email template	Review email template and document.	f	1778414209056
3	eaa285fe-386b-4591-aab9-f05768f5678e	Plan unit tests	Plan unit tests and document.	f	1769329894572
3	5644976f-0ed5-4685-94c1-10e9ec6dff42	Review login flow	Review login flow with team.	t	1780420753015
3	4189a473-f751-417d-9e08-9383119ec52f	Write login flow	Write login flow with team.	t	1753925780283
3	f5335dc5-9705-47b1-8217-defb5b3ce351	Complete database schema	Complete database schema with comments.	t	1776818617998
3	da14404d-9a29-4e13-9c59-c7083533b01a	Review login flow	Review login flow before EOD.	t	1763273909508
3	b80645f2-697e-4da2-ac7b-aff406777df1	Review blog post	Review blog post and document.	f	1772528282090
3	315a302a-a03a-4ff5-8bd5-d2df70c9609d	Test login flow	Test login flow using TS.	f	1757888056859
3	b2f114b5-cf8b-4230-ae30-1abe97175d05	Deploy UI mockup	Deploy UI mockup in draft.	t	1765837663601
3	96d9056a-981a-4346-a925-4ecc863d7169	Review blog post	Review blog post before EOD.	t	1752669592501
3	720a5ca6-fe26-4a94-a03a-b1ea751727ad	Design email template	Design email template with team.	t	1779588575724
3	d6096ef2-c02a-4c40-aaec-e0ef50c95b3d	Deploy unit tests	Deploy unit tests with comments.	f	1779342873770
3	84c5ea8c-fd65-4f62-b02f-153fc1804d92	Design blog post	Design blog post and document.	f	1780834153550
3	252eb6d3-f467-4832-b37c-b861b58de223	Review email template	Review email template with team.	t	1752791427505
3	99791018-319a-4e02-97f9-c4deccda620e	Write Dockerfile	Write Dockerfile before EOD.	t	1761740589451
3	d230cc5f-8433-48c4-b6e1-4983358fd505	Fix API	Fix API with team.	t	1766459165562
3	d20b3fef-b6cc-4d87-aff7-12bdb2fd6c00	Plan blog post	Plan blog post for project X.	f	1779018873251
3	b9d5cd62-e79b-49a8-b518-05be8dbffcf2	Plan email template	Plan email template using TS.	t	1771600552368
3	1d8dd9c3-5079-47ae-a4bf-fc7e53102af2	Plan email template	Plan email template before EOD.	t	1761476574145
3	b223038c-9a9a-4c9d-a54d-c82bfb16a40d	Test login flow	Test login flow with team.	f	1767012476272
3	3b92f4c3-cd55-40b2-ada0-78c11c177237	Design UI mockup	Design UI mockup with team.	f	1768194632114
3	5941db8d-ccfc-49a6-8969-f980e33f590b	Review UI mockup	Review UI mockup with comments.	f	1772908217290
3	2b5264b1-ed2b-48f7-adde-a893cd02edcd	Review Dockerfile	Review Dockerfile in draft.	f	1779286724474
3	ecb84183-e958-40d7-9a71-540e28493e43	Complete login flow	Complete login flow for project X.	t	1755452658932
3	ef8e7898-6aac-4e2a-97cc-f45e9ff054b2	Review blog post	Review blog post in draft.	t	1781660693035
3	167d5b13-dbb4-4f82-a4f4-ad3a0d3231db	Deploy API	Deploy API with comments.	t	1752593992801
3	801a8ce1-2020-42ac-912c-3ecb4483a44f	Write blog post	Write blog post with team.	t	1773525371621
3	e4f50bdd-6857-4400-a801-750fd846e331	Write login flow	Write login flow in draft.	t	1754614742078
3	d921c692-f1fa-4c1f-9317-7c69a355517d	Deploy email template	Deploy email template before EOD.	t	1752935419590
3	2d003001-8b6b-49da-9b43-d6e580f390f6	Fix API	Fix API before EOD.	f	1778865944758
3	aa741038-7515-48ed-8c58-61deef5fbecf	Deploy Dockerfile	Deploy Dockerfile and document.	f	1766111931769
3	1a5acaa7-f21f-4aaa-95bd-4c6f3d49712f	Deploy database schema	Deploy database schema before EOD.	t	1754412135141
3	2ef9e1a5-36db-449f-a67c-ff662e1513c9	Fix API	Fix API before EOD.	f	1776138804304
3	51ff7270-8d88-47c3-9e23-64107f097e7d	Fix UI mockup	Fix UI mockup with team.	t	1763272303219
3	9b7138cc-7d7b-46df-bc97-cbd3433804ac	Plan blog post	Plan blog post before EOD.	t	1755539087911
3	4c90756f-8c8d-4ec1-85a8-7429f0205937	Design UI mockup	Design UI mockup before EOD.	f	1770239354332
3	c85bf921-13c7-42ba-a381-d568cc927026	Write API	Write API with comments.	t	1755746732581
3	b4d36966-1696-499d-8abb-8df0f16e769b	Deploy login flow	Deploy login flow using TS.	f	1774907218319
3	075e974e-2265-4643-a599-c64a3c81fbe8	Review email template	Review email template with team.	f	1768963127085
3	25a3b8da-9ade-4d07-95eb-9c769b8b8d29	Test email template	Test email template and document.	f	1768291380490
3	5da8dc3b-e664-4858-b427-76505d601be9	Design blog post	Design blog post and document.	f	1778930482008
3	c3332787-57f5-4c43-92cb-4934b66e1a2c	Write login flow	Write login flow with comments.	t	1765665046728
3	8577f523-3b62-46be-953d-3f73d5aa4dcf	Test UI mockup	Test UI mockup for project X.	f	1754149402813
3	8f799911-a4c6-4c9f-81be-977c7a7a28f0	Deploy unit tests	Deploy unit tests and document.	t	1755309329225
3	ef0a7bf5-1a06-4072-8c9c-da50be697445	Complete API	Complete API before EOD.	t	1771036197415
3	ce73db89-c437-4072-b49c-f68e395ad0ab	Plan unit tests	Plan unit tests with comments.	f	1756438180132
3	24146986-815c-4c36-8228-4e82a08802ab	Complete blog post	Complete blog post and document.	f	1757028124956
3	1b5d5c67-6b6b-454f-9007-823efd2c1fea	Complete email template	Complete email template before EOD.	f	1755011942760
3	11cc2d8e-1e7c-4273-a6a5-6ef697634e97	Test email template	Test email template with comments.	f	1760662313539
3	f3e9faf9-bd9c-4fc9-8d68-4897b9632842	Plan database schema	Plan database schema with comments.	f	1776510863071
3	0593cf62-4a63-4f46-877e-6ee0ccc15a20	Deploy database schema	Deploy database schema using TS.	t	1764595099010
3	b3c50c41-cd81-4759-a50b-8bc0a0eb6b54	Test Dockerfile	Test Dockerfile with team.	f	1773424911371
3	cbecf85c-8a47-4ade-af45-3a0b36652132	Plan UI mockup	Plan UI mockup with team.	t	1751017642723
3	4f62cf6f-a96d-4341-a004-915cfb227dc4	Test email template	Test email template with comments.	t	1767608066210
3	3b798c32-ebbd-4db1-ae55-0a9a66d82c73	Deploy UI mockup	Deploy UI mockup using TS.	t	1774900649094
3	d4719388-d1a9-404d-8dd7-bfbbcd6b4596	Plan Dockerfile	Plan Dockerfile for project X.	f	1781472177664
3	77236cfc-9559-4c7f-8a29-ad5088eacb26	Fix unit tests	Fix unit tests in draft.	t	1766574714469
3	dbe0218b-72e1-494d-82c5-568b01d2f8c4	Test UI mockup	Test UI mockup with team.	f	1761504223588
3	b1b0fc76-8138-46a0-a095-56d344774554	Fix login flow	Fix login flow and document.	f	1769288347644
3	6675974a-96f3-44ea-be68-30f241618081	Write Dockerfile	Write Dockerfile for project X.	t	1752274290618
3	c1eb1c25-a5f8-4acc-9c98-9df2e93c457a	Design UI mockup	Design UI mockup with team.	t	1773512618516
3	97ba1a4c-c665-4e72-beeb-89bbc3cf26c1	Complete unit tests	Complete unit tests using TS.	f	1751315064968
3	ed94c6f3-5818-4aa0-a6e9-477284aab290	Design unit tests	Design unit tests with team.	t	1769600934413
3	47368d8b-2cbe-41b6-8c47-2b0309a292e5	Review UI mockup	Review UI mockup before EOD.	f	1766060339860
3	77ac1eb5-d068-4929-a46a-57cc4ead1f0a	Plan email template	Plan email template with team.	t	1750742255003
3	684cdef5-bcea-4731-a243-3a0b7c0df4f0	Design API	Design API with comments.	t	1770052397983
3	07ece75e-bd5e-4aa0-8226-176037de5119	Design email template	Design email template in draft.	f	1761559654774
3	e2423edd-5f29-41f9-a9f0-df9dfc7b59a7	Plan database schema	Plan database schema with comments.	f	1761614034824
3	9940f8fb-ed51-418f-ae3a-e45fa793fa3a	Plan UI mockup	Plan UI mockup with team.	t	1763124236095
3	c4c0ff82-62a1-4ee2-b651-0a899b02b154	Test unit tests	Test unit tests for project X.	f	1769409044964
3	dcfc42a4-e5b3-4c08-9537-4917b76b4f65	Test Dockerfile	Test Dockerfile with comments.	t	1752124932510
3	67447ef7-6fae-4eb8-aa8d-3065a2642940	Deploy blog post	Deploy blog post with team.	f	1756522017071
3	8c1f1a2f-d533-4a3f-bc69-83ffe1fa8cec	Deploy email template	Deploy email template using TS.	t	1757840707644
3	a92bf13e-259e-4a75-8412-3bf7e5e89d57	Design UI mockup	Design UI mockup in draft.	f	1754401011345
3	1125e013-523f-4b64-b6f2-06a871bc79ab	Plan database schema	Plan database schema and document.	t	1753845774023
3	3aeb5f00-7692-4af9-afdf-9b93aced51ca	Deploy database schema	Deploy database schema with comments.	f	1751101500785
3	cd4f5631-adb7-4947-a28f-5dbb55f1e2b3	Test blog post	Test blog post before EOD.	f	1778020601658
3	21db9970-857c-43e1-8670-84aadca4e7ac	Design Dockerfile	Design Dockerfile with comments.	t	1755072286114
3	67a5515c-5807-483c-af11-1274e53801df	Write blog post	Write blog post before EOD.	t	1780902167149
3	815f7b2f-a87e-4e8a-90d7-f7a2cb55a165	Design blog post	Design blog post for project X.	t	1755101251009
3	3bc36f9f-15e7-4070-9676-1539c158c68c	Write email template	Write email template with team.	f	1762110114338
3	3dbdfa2a-22d8-44e0-81f3-08a18947cf80	Design API	Design API with team.	t	1772461067823
3	e76db780-27e5-410e-ba1c-1d32b5b5af88	Test UI mockup	Test UI mockup using TS.	t	1763179241486
3	5d424dd1-9425-4d8a-a1ee-54e7cead54f0	Design Dockerfile	Design Dockerfile for project X.	f	1777321693818
3	e35d573a-1316-4314-8b8a-42d407f25a83	Design API	Design API with comments.	f	1758848039618
3	18600d6e-0c30-4d6e-ac40-20351b5e6b8f	Review UI mockup	Review UI mockup using TS.	f	1772947232717
3	202ee6ce-cef0-4b0c-bd7a-48014ba49149	Fix Dockerfile	Fix Dockerfile before EOD.	t	1752221934284
3	f28e89f7-8a91-4f28-9bd5-7a3a64e28fa3	Test database schema	Test database schema in draft.	t	1759692872617
3	a701dd37-05a3-4b1b-ad26-bac21a3004f4	Plan email template	Plan email template and document.	f	1767061821263
3	b7c9f5b6-8b34-4f41-a93a-62b78543022c	Review Dockerfile	Review Dockerfile and document.	t	1779638934651
3	e7e2d3a9-3860-4aaf-a623-0e59c00d81c2	Fix Dockerfile	Fix Dockerfile with team.	t	1755161099303
3	d0013b6e-de67-4a48-988b-1e8dd2363675	Fix API	Fix API for project X.	t	1753546313279
3	36502a9f-29d1-46ba-bcf1-e53f53f2baf2	Fix blog post	Fix blog post before EOD.	f	1774626367092
3	8142231f-3a78-4bee-9603-bcbbfabb1e99	Deploy UI mockup	Deploy UI mockup using TS.	f	1760677633961
3	1878835d-a180-4e4d-ad87-62d8adc0f343	Write email template	Write email template before EOD.	t	1758322537440
3	d1f27ab7-6f80-4f28-ada5-5d565850ea96	Design blog post	Design blog post with team.	t	1781663862382
3	aefd5494-14b3-47dc-b83e-bbaaaa7025c3	Review Dockerfile	Review Dockerfile with team.	t	1776845160641
3	e4a55886-3df6-4bac-9c70-4b543259282b	Test email template	Test email template and document.	f	1775212002308
3	d32267c3-ae9d-4045-b37a-c76f20d58b3c	Fix database schema	Fix database schema for project X.	f	1772566917479
3	94df00b4-57ab-4d04-a579-b70b47964e81	Fix API	Fix API in draft.	t	1779375621050
3	ed12d7b3-22f3-4a09-bdc8-874046714c5b	Fix blog post	Fix blog post in draft.	t	1750966394118
3	29b27107-7f2b-4b63-a7b8-635f845d36d9	Design database schema	Design database schema before EOD.	t	1761802973814
3	eff61b5e-9f17-4511-83cf-7c2490459f22	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1758235555293
3	567dbcfb-1be5-4885-8f1f-5a3c514494b0	Complete database schema	Complete database schema with comments.	f	1759126442212
3	1350f23d-c43d-4c45-92f3-6d32c5d02377	Write Dockerfile	Write Dockerfile and document.	f	1775881957535
3	d4291e2f-2a5f-4d04-9e8b-be7ef43ee8b3	Write UI mockup	Write UI mockup and document.	f	1776531000547
3	f871af2a-fcfd-4131-a8e5-8d9772268b7f	Fix blog post	Fix blog post in draft.	f	1777629274534
3	da5988bd-a7f4-4fe7-beee-05a517c52def	Write API	Write API with comments.	t	1771639711244
3	1ff0655e-5a43-469b-adf4-38c5967ba622	Complete email template	Complete email template before EOD.	t	1760634479893
3	fc8b123d-136d-412e-ae3c-a57054ac6354	Test email template	Test email template with team.	t	1758123283405
3	8f57cb66-0526-4c1c-a9cb-11ea598afca9	Test unit tests	Test unit tests and document.	f	1757243290996
3	88341991-c372-4712-b8f1-7d4262ccdb14	Review unit tests	Review unit tests with team.	t	1764486915928
3	51d0e532-ae8b-4601-9d28-63c71c11b6f3	Deploy database schema	Deploy database schema in draft.	f	1766353496718
3	57b49584-48dc-4a0b-87b0-5018235dc886	Write login flow	Write login flow for project X.	t	1769222122589
3	c4d9c04f-f2da-403a-abac-82be13e8b963	Complete API	Complete API with comments.	t	1769919601529
3	b5e3787a-82cc-455d-a25c-2234247e20bc	Review unit tests	Review unit tests with team.	t	1780305247782
3	5e4592e7-5d56-417b-87e6-96515f2757ad	Test unit tests	Test unit tests in draft.	t	1750530685367
3	a39635d9-e700-4eb8-a78a-8e7b0a9463e4	Test blog post	Test blog post with team.	f	1764709917161
3	ab10a35c-55cb-4081-973d-3adf25c12441	Write blog post	Write blog post using TS.	t	1765246474868
3	6ffdfff4-af6e-461f-9c10-6ec270978edd	Review API	Review API in draft.	f	1751826509994
3	265a022b-8f46-4851-9b1a-c55589d14023	Test UI mockup	Test UI mockup and document.	f	1753404850973
3	0d7d7212-5b4b-47c2-806e-39bfd9227f89	Test login flow	Test login flow with comments.	t	1779975279211
3	b2005102-74be-4b72-a506-6ef53b647fcd	Deploy UI mockup	Deploy UI mockup and document.	f	1781501653775
3	67bf9250-3bf8-4d98-8837-903993ab2691	Test login flow	Test login flow using TS.	f	1778886343220
3	729826fe-5116-4f46-93a1-d6b9946e0468	Write UI mockup	Write UI mockup with comments.	f	1773248678326
3	2c9c303a-7c41-4af0-a6bd-1cf6537119a0	Fix database schema	Fix database schema for project X.	t	1762880803570
3	f7f05f80-2db4-4bc9-8aa4-995ba3c8fecd	Complete UI mockup	Complete UI mockup using TS.	t	1758632904664
3	a149e805-8830-4734-bcc4-370a806acc74	Review blog post	Review blog post in draft.	f	1771148814567
3	4ef3b856-49ec-47ba-b024-c5b3dc3d0419	Test Dockerfile	Test Dockerfile and document.	f	1781696405697
3	c01dfc35-3fed-4ef7-beab-69f13fcc4c8a	Plan email template	Plan email template before EOD.	f	1778575064308
3	58a36d3e-a42f-433f-b681-46faa6832f47	Review email template	Review email template in draft.	t	1780666923353
3	ebfbb9d1-320b-48c6-9236-7376a43dcdaa	Deploy blog post	Deploy blog post and document.	t	1780397726707
3	c5a8c345-30fc-4f40-b190-a51bb79cc7b6	Design blog post	Design blog post with team.	t	1778057218416
3	57584555-6693-4e2f-be45-845ffdac210d	Plan database schema	Plan database schema for project X.	t	1781557936964
3	4411ab16-972e-4609-acb5-e0e89601dadd	Review database schema	Review database schema for project X.	t	1781363385307
3	0aa7cae2-18b1-4cef-84ea-abd36ebcfef0	Review unit tests	Review unit tests and document.	f	1765068143841
3	b6bb8eaf-1163-4c34-9adc-31d8695d67c1	Design database schema	Design database schema with comments.	t	1751110903113
3	8e9def8a-b5f4-41d1-b648-d354471ae887	Plan Dockerfile	Plan Dockerfile and document.	t	1773959155775
3	d0bf248e-96e9-4a8d-bbce-66a6f2c016ca	Review database schema	Review database schema in draft.	t	1773241139709
3	598d5bd0-e7a4-4dc3-87c0-fecefbb673d8	Deploy API	Deploy API before EOD.	f	1776411469716
3	8d248746-3fcd-4359-93fb-81c8c79dd52a	Plan UI mockup	Plan UI mockup with comments.	f	1758618695435
3	aaa10a73-de87-483f-89db-59fec3687e9f	Deploy UI mockup	Deploy UI mockup with team.	f	1760914331205
3	c865c6c6-76b4-41b3-a257-db3d496018b0	Deploy database schema	Deploy database schema for project X.	t	1755403097798
3	45d835aa-60b3-41d1-9219-17109450b5a2	Design blog post	Design blog post for project X.	t	1762586065321
3	e8466db7-12a4-4b6f-acb8-0881b32d1ba3	Plan login flow	Plan login flow for project X.	t	1752811860255
3	e9335a0c-f09e-4a49-9c94-902591421397	Write UI mockup	Write UI mockup and document.	t	1777299448562
3	0c732901-33a8-4fd5-992e-efb3e057ca10	Fix API	Fix API for project X.	t	1770725772560
3	c51b922a-224f-473c-bf66-aa46c79fec77	Design email template	Design email template before EOD.	f	1762694521095
3	0d473e59-85c0-4832-ba18-617a68f8b651	Write login flow	Write login flow for project X.	t	1768679967095
3	a2345e31-e70d-4f95-ab8c-4853cfdb8c93	Test email template	Test email template with team.	f	1754955193077
3	57e39186-f5d7-4605-98d5-ba84f1103014	Plan database schema	Plan database schema and document.	t	1757613798420
3	3ababe57-a5b6-4cd9-9b38-ff1eaa6622fa	Complete login flow	Complete login flow using TS.	f	1767648439662
3	5f0830f1-f0f2-46f4-9579-8e7cf72d6e19	Fix database schema	Fix database schema for project X.	t	1776051773343
3	44299b37-7a2b-4cb8-b54c-76dba3ca90d0	Write email template	Write email template for project X.	t	1768094097721
3	ec421362-ce60-471b-9af1-f3c9dc7371d9	Complete UI mockup	Complete UI mockup and document.	t	1762239409264
3	603c7c73-88f4-48a3-a914-36db581801e4	Deploy unit tests	Deploy unit tests in draft.	f	1755765450534
3	772d9b64-e066-4ed5-8ccc-e753a3c1331e	Review database schema	Review database schema and document.	t	1750399392942
3	27b24a59-5d8d-44ca-9220-49dd800f788a	Deploy email template	Deploy email template for project X.	t	1770961988366
3	559e8013-f780-4a82-95c3-7984617eca02	Deploy login flow	Deploy login flow in draft.	t	1780249534002
3	733a21b0-aa74-45ea-a9b5-4895bcfafe4d	Write login flow	Write login flow for project X.	f	1759645077435
3	85a090d3-c715-4347-a0af-757d69f17f37	Write unit tests	Write unit tests before EOD.	f	1774846505609
3	f066b51c-f46d-47dd-b9af-1ecb07f71fa1	Design blog post	Design blog post before EOD.	f	1757082244444
3	c9f9dc80-ee02-4480-92d4-84a4fefe5cef	Write blog post	Write blog post with team.	t	1763908612063
3	ee4611ef-0f72-4005-bc2b-762157425c3f	Fix blog post	Fix blog post in draft.	f	1764254496006
3	bd7b6dda-e1d4-4722-b6fc-261a845f7ec3	Test email template	Test email template in draft.	f	1757476501402
3	f85d4ef9-f6f5-440d-9e16-4d01c5aaddfc	Deploy email template	Deploy email template before EOD.	f	1776637782657
3	ff7e75d9-0114-4d62-8e46-89a53053ebb6	Plan email template	Plan email template and document.	f	1777753906161
3	f1d7aa70-7249-4037-883d-cf7b55e9bfe0	Deploy unit tests	Deploy unit tests with team.	f	1759024083107
3	b15d14de-c5b0-443d-9381-b70be53420ab	Review email template	Review email template and document.	t	1780224957250
3	51440f64-5200-4a13-8d1b-2c2ade613d08	Complete API	Complete API with comments.	t	1758027630345
3	42863ba6-39ed-48d6-b5ea-634ded47b6eb	Design Dockerfile	Design Dockerfile for project X.	t	1754380560043
3	cd65d3e3-f700-4904-9a41-d7326b2f61df	Write email template	Write email template with team.	t	1765261888241
3	40b7c860-854d-4652-bc67-de248107ae6c	Test email template	Test email template before EOD.	t	1766044702740
3	53853ea0-d7ae-4b6c-8c0f-2898a9a9d71a	Deploy email template	Deploy email template for project X.	t	1753888785386
3	32588aec-7167-4472-bbf9-d9945d3795e8	Review UI mockup	Review UI mockup and document.	f	1764093673380
3	31c6083f-85f8-4a4d-87d7-46abcaae6832	Deploy database schema	Deploy database schema and document.	t	1751994875759
3	058ed711-5a97-4091-8735-d0932b2df806	Fix blog post	Fix blog post in draft.	t	1780612036870
3	e8416267-f5ae-4cb3-89c3-4165ee0e8e96	Complete UI mockup	Complete UI mockup for project X.	f	1765011322030
3	c2b4d9ba-f28c-4286-910c-b1ee82a13b12	Review UI mockup	Review UI mockup in draft.	f	1767776966350
3	10f4dfd5-bc0e-4ef1-a482-c06daf44651c	Plan unit tests	Plan unit tests before EOD.	t	1763786834400
3	1c09bc33-4911-49e4-adff-70e70b077ceb	Review email template	Review email template with team.	t	1768773259251
3	165d1e36-df40-492c-9524-8fca5a6acc37	Design UI mockup	Design UI mockup before EOD.	f	1780706471170
3	6c42e7b0-b817-4e90-ba0c-4e0a26898c77	Plan login flow	Plan login flow with comments.	f	1764123363992
3	94a7ddc7-e307-4323-aab0-561ffc8c9894	Complete API	Complete API with comments.	f	1778466672872
3	669670bd-b4f5-44c3-a878-72bd76e4a37e	Test API	Test API with comments.	f	1777832175348
3	e72fd643-700b-48be-9003-92f21aa69bc1	Review unit tests	Review unit tests using TS.	f	1765002151686
3	871f0630-c5b2-4958-bbf4-a71e287c94fd	Design Dockerfile	Design Dockerfile in draft.	f	1780960234581
3	4abed559-78b8-48b9-9d91-56280a24bee2	Write email template	Write email template using TS.	f	1760463565137
3	3156dddf-3df1-4cb8-86f5-289f207d5e80	Fix blog post	Fix blog post before EOD.	t	1757917135289
3	bc2d53d3-ec04-4fae-adbd-fb72531a1c55	Write login flow	Write login flow before EOD.	f	1759320274756
3	1bd2049d-74dc-4a7c-a6c2-63f71ef838c5	Write blog post	Write blog post with team.	f	1780096571405
3	12c07929-7c6b-4cb0-b6ce-ab3a8d527e10	Plan database schema	Plan database schema in draft.	f	1762487659582
3	4b85b0f6-9ecb-4ca9-965c-9484ac89090a	Design login flow	Design login flow and document.	f	1773492886919
3	f2ba2f17-2798-4488-b847-d8e4301b2c81	Review database schema	Review database schema before EOD.	t	1764757514059
3	9693595a-d240-43ab-8422-da320238151f	Design Dockerfile	Design Dockerfile for project X.	t	1771865141714
3	847803e8-cf5a-4c1d-89ee-79c8fb12944f	Deploy login flow	Deploy login flow using TS.	f	1751316522337
3	931a285b-8c73-42fd-9b4b-4ee8d3a80e20	Review database schema	Review database schema with team.	t	1759629976050
3	f001e36d-ef5e-436e-b7b0-809b748a709a	Review email template	Review email template and document.	t	1760589207795
3	e2681190-2845-4127-96ff-2e63cc5bbd1f	Design blog post	Design blog post in draft.	t	1759942986632
3	4146f7a7-7f4c-433d-8e2e-c660257c1755	Complete blog post	Complete blog post and document.	f	1764236940801
3	2e43aa25-6040-423d-9a09-5f696b8c60eb	Test database schema	Test database schema using TS.	f	1778536547640
3	7d484524-ad0c-443a-b694-370c59110966	Design UI mockup	Design UI mockup for project X.	f	1767337373070
3	c688cbb3-2cb1-47e3-8164-b2172107f4f5	Plan database schema	Plan database schema for project X.	t	1768195501819
3	9196f8a6-642a-4305-8023-bb969b8f1a59	Design UI mockup	Design UI mockup for project X.	f	1754111616981
3	004f1ece-4f69-4209-a2ac-b91036ebff72	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1755541291490
3	b8dea61c-597b-499e-a3f9-e6e73f36a249	Design API	Design API in draft.	t	1778123749845
3	3de9e2d5-d339-4b5e-ae9a-0f4a5fa8470b	Fix UI mockup	Fix UI mockup using TS.	f	1758115944435
3	72989f3b-2dd3-42e6-8ccc-9515c6192f86	Test database schema	Test database schema with comments.	t	1755973357725
3	ee29704d-8fef-4990-bf73-dc234e596a4c	Review UI mockup	Review UI mockup before EOD.	f	1758302434445
3	e727800e-5eaf-4158-863a-02fc25d21d08	Complete blog post	Complete blog post with team.	f	1761104476281
3	b4b93732-61e5-470b-ab4e-7d8e33933d63	Complete database schema	Complete database schema and document.	t	1764009929014
3	e47e7e97-13ed-4e54-8005-68ce67bebd66	Fix unit tests	Fix unit tests before EOD.	t	1767049223796
3	55c339d8-92d8-44b0-a370-bdc0e68aab70	Write login flow	Write login flow with comments.	f	1779971937271
3	f8172b4e-f3c1-45e3-82e0-e94b20c0443c	Review Dockerfile	Review Dockerfile before EOD.	f	1756747694181
3	fcf7ccb3-efac-40f1-ad4c-2b2ad51fa7e5	Fix login flow	Fix login flow with team.	t	1771345298522
3	a9153163-a4e1-4b90-8321-379e94f0dd57	Write blog post	Write blog post for project X.	f	1778988076288
3	44eda375-fd54-4772-b24b-619af0c23141	Design login flow	Design login flow using TS.	t	1765095568673
3	697605a5-ec50-47f2-89e7-d6391dc243ce	Review database schema	Review database schema using TS.	t	1774470308266
3	201abf05-4c5d-41ab-b7b1-93d08925ebe3	Plan UI mockup	Plan UI mockup and document.	f	1776718175036
3	7e8db47a-ba29-47c8-854b-5ca211fe828d	Design Dockerfile	Design Dockerfile with comments.	f	1761527643780
3	8c344876-22ac-4069-825a-1de8996498c8	Deploy email template	Deploy email template and document.	f	1768712766099
3	a93b7cdd-d4eb-4d63-910c-69936002fb13	Review email template	Review email template and document.	t	1756761486223
3	33baadbb-a554-4ba3-8dd1-80c654d98eb4	Design email template	Design email template in draft.	f	1756376012846
3	9c82859e-e87d-4585-905e-729d71756dee	Review unit tests	Review unit tests before EOD.	t	1767017178627
3	cf9116f1-d839-4e78-8a74-34dd7a28a239	Fix login flow	Fix login flow in draft.	t	1776335977357
3	c2f0d77f-202b-4ca2-ab71-9d824df562b1	Fix email template	Fix email template for project X.	t	1775246178382
3	e7465d02-8277-4bea-9ae6-8dffcdd98c30	Write database schema	Write database schema before EOD.	f	1762975423154
3	9c2d7219-c039-4612-90cb-42ddac5049be	Test database schema	Test database schema in draft.	t	1776993030012
3	1fbb4642-acf6-4beb-a045-6ee0f7f186eb	Review blog post	Review blog post for project X.	t	1759824873536
3	43637bc9-732a-4a82-b3d9-92a36bcc2e75	Test Dockerfile	Test Dockerfile with comments.	t	1751511841952
3	6096d0c9-0772-42d5-ae65-573f742e20cb	Complete unit tests	Complete unit tests with team.	f	1772303991959
3	e70dbc3f-b40e-400c-a7ad-3e508225c6d0	Review email template	Review email template with team.	t	1751168993905
3	c660ac13-bb99-48e1-9684-e83209492b4e	Review UI mockup	Review UI mockup using TS.	f	1779479188555
3	5726f228-57c3-4f7a-9387-f811779028c3	Fix API	Fix API with team.	f	1777233423814
3	0e6d9026-0bbb-4b9b-8881-19e7824aa273	Design API	Design API and document.	t	1776772230635
3	e35329b4-bc1f-45dc-8b86-87fb787b15cd	Complete API	Complete API in draft.	t	1771937082790
3	649e648a-e24e-4ce7-82c9-bfd6940d6ed7	Deploy UI mockup	Deploy UI mockup in draft.	f	1761487410269
3	a9940359-cca7-4f2f-b372-df720039e0a9	Test login flow	Test login flow and document.	f	1753788016485
3	5c4c5741-8222-4af0-9ec8-00249a767fef	Test email template	Test email template with comments.	f	1761545272525
3	0d527c5e-02f4-40a3-8f4a-56fb9a65c98e	Plan login flow	Plan login flow in draft.	f	1770622224016
3	d5a7e0ed-3ee7-4406-a1a9-f58641ba0fbe	Review database schema	Review database schema for project X.	t	1779360937888
3	24a651f9-2a36-45b6-81e3-02458ed193c8	Plan API	Plan API using TS.	t	1771153065615
3	184900bc-82f8-4518-bf91-13a8bcded2a4	Fix email template	Fix email template for project X.	t	1751096092625
3	9d96515d-e39b-410f-8dbc-3af95a6ce900	Design unit tests	Design unit tests and document.	f	1769798990580
3	832c561c-608a-426b-827e-75e88df214a6	Write Dockerfile	Write Dockerfile using TS.	t	1780662604027
3	2be9c80a-c99f-4f4b-808e-e8d90d8a08b9	Write API	Write API for project X.	t	1765311589120
3	e950e0f9-2bae-4270-be9d-c636448265e2	Review database schema	Review database schema for project X.	t	1772795247711
3	f1f9df21-9dbc-4c21-ad71-ec6b96f57695	Review database schema	Review database schema and document.	t	1769476303166
3	5efc6051-af3f-46d4-8fda-1aa2d2ba3c04	Complete UI mockup	Complete UI mockup with team.	t	1750446133957
3	d39b4ad6-73c1-4574-881e-dd3d8ef28711	Fix database schema	Fix database schema before EOD.	t	1768226393341
3	da7e49c4-6d87-4e69-b2ab-e14bffa24b39	Review API	Review API with team.	f	1756073391075
3	7624c0cf-7b74-4022-9ac2-5f4b4e74090b	Write Dockerfile	Write Dockerfile and document.	t	1774784003151
3	309833e0-6414-4aa3-9d7f-fc8cf8593cd7	Design UI mockup	Design UI mockup with team.	f	1762200789141
3	9d1b021c-7311-49c7-9efd-b82b750348d7	Test API	Test API and document.	t	1752898938027
3	59dcd25b-3cdd-4e94-a7f5-ef6945eb1a9a	Test blog post	Test blog post with team.	t	1776825001149
3	30666267-92e2-4bd3-9b42-d0a4ebe38530	Deploy unit tests	Deploy unit tests for project X.	f	1777377938482
3	b69b67c4-34b4-4f03-a575-396c8e284962	Test API	Test API and document.	f	1761208382456
3	b61e8d56-8efc-4936-a1c4-ccba47c893d9	Design login flow	Design login flow with team.	f	1775754071500
3	71f0c0f6-165c-4de4-a48d-6a5b9a0cb70f	Plan unit tests	Plan unit tests using TS.	f	1759629536815
3	c7e369e1-c440-4295-96af-e72457b32b61	Test email template	Test email template using TS.	f	1772264643410
3	9be0ebc5-54c7-4aa1-9a2d-a74f1e7a82f2	Design API	Design API using TS.	f	1772000077682
3	914162d6-c794-4826-b702-ecb7171f4960	Review Dockerfile	Review Dockerfile in draft.	f	1773376830409
3	cac68d22-a88b-4af2-8664-cf20a0f6a96d	Design email template	Design email template and document.	t	1772960939016
3	ef06834b-e0ee-46d3-8a97-d9a74372f8fa	Design blog post	Design blog post and document.	t	1779787083988
3	8770ec07-4d4e-429c-94a5-987d6e4a0be6	Write UI mockup	Write UI mockup with comments.	t	1769932217400
3	087293c9-0ea0-40f4-98d5-3a28164d4dab	Review API	Review API with comments.	t	1762227706775
3	a284e279-a956-4201-bd95-545d45469ee8	Test unit tests	Test unit tests and document.	t	1750798055910
3	0b0dd601-a6ba-44a7-9f8f-c4ab189d0db5	Test database schema	Test database schema with comments.	f	1765461429275
3	16d3a18e-8d8a-4149-961a-615296fd86b6	Design database schema	Design database schema and document.	f	1776088562166
3	e269e768-4bf9-492e-bbee-fe02bb53f2e3	Design API	Design API and document.	t	1776696975335
3	331f3a45-0510-4803-b2fe-340775faac79	Write blog post	Write blog post in draft.	f	1780270602358
3	1f3b8fe4-e34a-428e-8b13-cc4f4e2fd83c	Fix unit tests	Fix unit tests in draft.	f	1777376900023
3	e0c2168e-08e3-4f28-bc2a-5155c8bfad8d	Deploy unit tests	Deploy unit tests for project X.	t	1766754995087
3	09ac0c35-3ed9-44d7-a5a7-da874311a5df	Design blog post	Design blog post with comments.	t	1768233476032
3	a1d4ff94-6857-4207-b5db-62b34d6e4c70	Deploy database schema	Deploy database schema before EOD.	f	1773640214120
3	02fbdc2b-8aa8-43fe-b9f6-d041291916de	Fix Dockerfile	Fix Dockerfile with comments.	t	1774381806977
3	639516b7-e5f4-4af8-ada0-eed38dd60e9c	Test blog post	Test blog post with team.	f	1755309232370
3	d841a0cb-a75f-4087-a55e-17710f9d5c0f	Test API	Test API and document.	f	1770263425469
3	62a5b0ba-7537-4f8a-8157-59bef1b646fd	Design unit tests	Design unit tests and document.	f	1768564636721
3	7abf7cb2-fc74-43e7-87fb-76bb4b3ee100	Complete Dockerfile	Complete Dockerfile with comments.	t	1764709455386
3	4b69abed-467a-4e81-b7ef-82e557d8b965	Review email template	Review email template with team.	t	1767003539321
3	5c196c88-5df1-4305-ba39-a5ea7b73af9f	Review database schema	Review database schema and document.	f	1759979526690
3	8d9b5102-6c44-4562-a7b2-ad2078ba7515	Write blog post	Write blog post with comments.	f	1757101505594
3	736bbfe9-b582-436e-b2b4-fba3e0f2aeef	Deploy database schema	Deploy database schema with comments.	t	1779912680816
3	94c63c50-0896-45ae-9cd5-610ca51e1342	Deploy database schema	Deploy database schema using TS.	f	1761488269249
3	abd22525-1fac-48d4-ac7f-40486e29d372	Plan API	Plan API and document.	t	1764683609124
3	d1cd8fac-ce67-4246-b24d-81f6238e26ba	Fix database schema	Fix database schema using TS.	t	1771446047901
3	f31751fa-2e72-464c-af2f-4b1a36071ccf	Plan UI mockup	Plan UI mockup before EOD.	f	1775816989369
3	c5a8e5bf-3d4d-4301-8324-08d4770fc93f	Design blog post	Design blog post with comments.	f	1757269659054
3	453ea41a-efd4-4ec6-b9e5-58a742de0bd1	Test email template	Test email template with comments.	t	1753304476032
3	b40db1ef-d8b8-4e34-aae2-a596377ff677	Design email template	Design email template for project X.	f	1770852759246
3	ee1cd3a3-0818-43e7-9ad4-2546dc7480f8	Write API	Write API using TS.	f	1754357996117
3	bd4227de-269f-4f97-a95d-c8f707e2b1be	Complete API	Complete API using TS.	t	1754940622375
3	5cc8745e-d89d-4634-be4f-d9e81834513c	Test API	Test API before EOD.	f	1770070262568
3	1ff6a075-560f-4ad3-9805-0d6ea3124177	Deploy blog post	Deploy blog post and document.	t	1772743239395
3	e2f7ed86-aa31-40b5-819e-f4e717c7b4b6	Deploy UI mockup	Deploy UI mockup and document.	f	1779711773525
3	a09ff369-acff-4091-9c0d-2cf0d2df29a1	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1770263049677
3	4cc1d8af-8795-49cb-8513-e33cd960656d	Review blog post	Review blog post for project X.	t	1766302308470
3	a22e109a-e8b4-4bcf-9f81-4af1697cb11f	Deploy database schema	Deploy database schema with team.	f	1764046294151
3	91bc5396-43dd-4d24-adc9-1752319c3592	Review database schema	Review database schema using TS.	f	1772087421037
3	fab0ec71-43ff-496e-bab9-87920653b5f8	Review database schema	Review database schema for project X.	t	1778565117679
3	08746e3c-25ad-4359-8d94-d4d4adb72e1d	Write unit tests	Write unit tests and document.	f	1760712283667
3	6a01ec63-994e-46ba-b9fc-765a82388963	Design unit tests	Design unit tests with team.	f	1765646775765
3	284c186e-634a-4ac9-b087-1a747e5e9e9a	Plan UI mockup	Plan UI mockup with comments.	t	1755927137559
3	3c5c6d41-ed1a-4207-8ce4-b54d271ce3a3	Test blog post	Test blog post with team.	t	1758446974792
3	492e67c0-ca74-4ffb-8e1f-201723c60894	Deploy blog post	Deploy blog post in draft.	t	1773601072402
3	706d5db0-07ec-4b8f-aeac-0b2d81d9abb4	Review Dockerfile	Review Dockerfile before EOD.	t	1768312486357
3	0452e316-e579-42b6-a566-cdc8af540ecc	Fix blog post	Fix blog post before EOD.	t	1760358833099
3	e7ebbbad-f01d-4fde-a107-1a4fb3c1809d	Review blog post	Review blog post with team.	f	1771602604517
3	881ce44c-ecc9-494c-983d-3adffb036b3f	Test database schema	Test database schema with comments.	f	1771661415995
3	3fc2372b-5058-4424-b1e7-4e5c72b9e4d4	Fix blog post	Fix blog post and document.	t	1763229151199
3	b5bf5c08-01a7-469c-aeb9-d8c63e8f4856	Complete blog post	Complete blog post and document.	t	1764955364285
3	1deba120-cb22-4e25-b11c-5394c74fe24e	Plan API	Plan API before EOD.	f	1753343765681
3	95ec1bf1-21ef-48c4-866c-8f0608556c3c	Design email template	Design email template with team.	t	1773562143392
3	4f423b84-45cd-4576-b239-3f52896c4dc9	Fix email template	Fix email template for project X.	f	1771199010129
3	9c479762-9b29-418c-98bc-b1fc41344b55	Complete database schema	Complete database schema using TS.	f	1750810940020
3	ac2c6263-281f-4798-8a8e-103d62d99da5	Review database schema	Review database schema in draft.	f	1755829821053
3	e944a0e0-75d0-4eb2-a542-60535ed9a027	Fix email template	Fix email template and document.	t	1757905674704
3	b793abdb-2b0b-4b99-a22f-1d5a59f71295	Review UI mockup	Review UI mockup for project X.	f	1771891828783
3	c5a49e10-42d8-4e79-bd44-9fd5ee006ad7	Review blog post	Review blog post using TS.	f	1778910668646
3	b1a491e0-bc0f-4ad0-ae8f-325cb9566687	Plan unit tests	Plan unit tests with team.	f	1766292706453
3	9ef34948-2e53-4ab6-83af-5b0554a3b4d6	Review email template	Review email template in draft.	f	1778032474671
3	f379c65c-0da8-43e3-842d-2f1c2056526e	Complete unit tests	Complete unit tests and document.	f	1751340914906
3	72013524-492b-4995-a968-ee5e054203c3	Review Dockerfile	Review Dockerfile in draft.	t	1773924080054
3	8c0756e1-11fc-4189-a332-a16a02fa13b6	Design email template	Design email template with comments.	f	1758544107862
3	a7ed0c11-d08d-4e64-b7ec-bc205282b553	Design UI mockup	Design UI mockup with team.	f	1750283318641
3	662bf0bf-339e-4149-91dc-6e1ff85b9f5b	Plan API	Plan API and document.	t	1750585882701
3	a86d8211-e0d5-4a3c-9354-411a7d299d34	Review email template	Review email template before EOD.	t	1776522308312
3	b6454367-8c47-4b79-aa94-3b2388bbb968	Fix UI mockup	Fix UI mockup and document.	t	1770131421542
3	c2f76333-d55a-49a2-acac-02d1725bdf35	Design unit tests	Design unit tests and document.	t	1777825589366
3	fed1d18f-d07f-4342-b68d-488b15a15803	Test UI mockup	Test UI mockup with team.	t	1759228867680
3	5f8afae4-3bec-40a9-bec2-0cfc55e8bf4e	Review database schema	Review database schema in draft.	t	1760690488974
3	48a85d2c-062a-474a-b5e6-08e8ea3b55c4	Write email template	Write email template with comments.	t	1777041327743
3	f0989efd-55a4-460d-861b-c4a69cf0279b	Review email template	Review email template for project X.	t	1777832246820
3	8f9f9f3b-ec10-4e76-8a28-f17504973eb3	Complete API	Complete API with comments.	t	1752446771684
3	91514fdc-a294-4b6c-a021-3e99cd8c4aa1	Review database schema	Review database schema for project X.	f	1779950323053
3	a62eb108-a2cb-4767-bb6f-11a4ad85b436	Deploy login flow	Deploy login flow in draft.	t	1774091068450
3	b3c2eacb-5900-4976-ac91-dc1c8b794888	Plan database schema	Plan database schema and document.	t	1751974141962
3	5bf429d1-95f7-4059-8237-952ebc34c4d4	Review Dockerfile	Review Dockerfile and document.	f	1751222878866
3	b42e29e9-65b4-43c6-9a9c-ad1a5d01bc08	Deploy email template	Deploy email template with team.	t	1766491881104
3	f3af3ef8-d65c-4887-8ce8-29563b88b1c8	Test email template	Test email template and document.	f	1753215718822
3	21fff3e6-a035-4751-ad44-8417dc35d58a	Design API	Design API and document.	f	1767607827268
3	42f9dd2e-ec0e-4f18-bfe1-966022c4c582	Fix database schema	Fix database schema before EOD.	t	1775502411249
3	08414a81-93da-4915-a4e8-eb4ced1fcf5c	Review API	Review API with comments.	t	1760400770667
3	e86f7585-41c5-4424-bddc-01c2c9c5ab3f	Write login flow	Write login flow for project X.	f	1771919050785
3	0555b7ea-e6d8-49fd-9278-bb81002ee59f	Fix UI mockup	Fix UI mockup with comments.	t	1773274076211
3	2cdd2692-a5ab-45d3-88e3-978ac1f89d79	Test API	Test API using TS.	f	1772330688922
3	4bd6ef80-695c-404a-9814-4871a4b66374	Test Dockerfile	Test Dockerfile before EOD.	t	1768373771954
3	74af1b92-540f-415e-9f84-1e2cfca3329b	Fix unit tests	Fix unit tests with team.	t	1757455171040
3	bc209d5b-a796-4de9-9086-965c29dfa618	Test email template	Test email template for project X.	t	1750479320365
3	91ef19ff-1c03-401b-86f2-75314d5812a8	Write unit tests	Write unit tests with comments.	t	1762842145298
3	04b8b1c8-de2a-42c5-93db-442bcdba602f	Deploy login flow	Deploy login flow using TS.	t	1756639968513
3	b8b6506e-6072-444c-845e-8687e96cb441	Write UI mockup	Write UI mockup in draft.	t	1771857662263
3	75b3e0dc-e1b3-453b-b28b-2215f4ea2e63	Deploy UI mockup	Deploy UI mockup and document.	t	1777187280030
3	a08bcc00-ff16-4320-a12f-daf955c2cf9b	Review unit tests	Review unit tests with comments.	t	1759246761128
3	62e7b2cd-3075-4fd0-88b8-04cc33cf724b	Plan unit tests	Plan unit tests with comments.	t	1765231136289
3	9705b958-c1ca-4f9d-8ec3-6f639e49bc3d	Complete UI mockup	Complete UI mockup in draft.	t	1755240541785
3	e4887f29-816b-4b7a-a87a-4e845bf6b0b1	Complete unit tests	Complete unit tests with team.	f	1774840980020
3	785dc37b-edb0-45ad-91ac-0097fc056dbb	Design database schema	Design database schema with comments.	f	1763917995412
3	20100349-2f95-4edc-920b-73e9680ae76b	Write database schema	Write database schema before EOD.	f	1778473719141
3	067b6036-577f-4d84-b42b-7ee857248e35	Write unit tests	Write unit tests before EOD.	f	1755254649528
3	8aa49160-6f89-4eb3-81c3-e4312d66cf44	Design Dockerfile	Design Dockerfile and document.	f	1770956086783
3	532ac89d-4b60-4f0b-b337-dbeac92e7a96	Plan blog post	Plan blog post before EOD.	t	1780330131553
3	e4b9dd63-034d-4635-8618-57d208816443	Test blog post	Test blog post and document.	t	1768929311313
3	3549e31f-9375-424f-a647-e7902905584f	Plan Dockerfile	Plan Dockerfile and document.	f	1772736102645
3	b95c71d4-dbae-4b86-bd5b-445c640a3df9	Complete Dockerfile	Complete Dockerfile for project X.	t	1767593613437
3	3822947a-f2ab-407e-8f12-741fa84c8a47	Complete Dockerfile	Complete Dockerfile in draft.	t	1766446346353
3	2b9b32a3-3b04-40ce-a794-6090bdbe75de	Design database schema	Design database schema with comments.	f	1773097869188
3	54e9801d-1290-46f5-b251-89a408affeba	Deploy email template	Deploy email template before EOD.	f	1772421227616
3	e2cdf27d-82da-455d-a596-68448ea70e98	Test unit tests	Test unit tests and document.	f	1750275739562
3	bcb524e5-f64a-4e5d-a473-cd9e85946da5	Deploy email template	Deploy email template using TS.	f	1762746444045
3	c405672f-2af1-4648-871f-f13ab471985f	Test UI mockup	Test UI mockup using TS.	t	1753584470297
3	d22100c9-4638-4ccc-ac03-d292d7c0b2ca	Test login flow	Test login flow using TS.	f	1764132705063
3	bb1ce05f-ee6b-4642-ab84-765f5eed2bf3	Complete unit tests	Complete unit tests in draft.	t	1770861484540
3	12663594-6a72-4ba5-a245-f9a53c6b2b22	Design unit tests	Design unit tests with comments.	t	1780105859281
3	7aa6d589-e4c3-473d-bd2c-b07923248314	Design Dockerfile	Design Dockerfile for project X.	t	1767124243227
3	68278826-27ae-4886-8109-d028af355b1e	Design database schema	Design database schema and document.	f	1767615524441
3	b52299fe-93be-4513-989e-30877bffbb01	Test database schema	Test database schema with team.	t	1755711792976
3	2dfd5e06-3c98-4305-bd31-117d63060e31	Plan email template	Plan email template using TS.	t	1753377401655
3	b535857b-9cc3-42f2-b50b-0f277a4f579b	Plan database schema	Plan database schema in draft.	t	1766901873582
3	00ef9762-769f-4da5-be5d-ec4802d76074	Deploy Dockerfile	Deploy Dockerfile before EOD.	f	1756131948833
3	914830a1-8810-46d3-b5a2-47a84a11fec5	Fix login flow	Fix login flow and document.	t	1761716421134
3	77947158-d12d-4557-9f38-f655c2e9693e	Fix blog post	Fix blog post and document.	f	1755473198586
3	d2b26990-5338-4990-96ac-64db8c863a86	Plan blog post	Plan blog post in draft.	t	1754103271498
3	5a8a9f5d-c88a-4a70-b3ec-1edc9c11d328	Deploy Dockerfile	Deploy Dockerfile in draft.	f	1770942557847
3	87adbd4a-f28a-4b38-9347-747107ddadbd	Plan Dockerfile	Plan Dockerfile in draft.	t	1765442594818
3	d7702e99-3da9-4025-a2a7-e824ba0e16f0	Review blog post	Review blog post using TS.	f	1763944532363
3	dc380ae7-e043-43a4-b3f4-ece14d73a43b	Plan API	Plan API with comments.	f	1761677325374
3	99fcad72-5f0e-43cd-9964-4cc66e325fc1	Complete blog post	Complete blog post and document.	f	1759921781454
3	0f25d4aa-0b37-4c50-b1c9-03d3a3f17eae	Design database schema	Design database schema with comments.	t	1771270173369
3	999a089d-ea2a-46e3-86d6-629c6b9e7636	Deploy Dockerfile	Deploy Dockerfile before EOD.	f	1766308591515
3	083e7173-4588-485f-b5c8-e242c4b8cd0e	Deploy login flow	Deploy login flow before EOD.	f	1776940566732
3	2402a5b7-1d6e-4a76-b8d4-329f7ad343d5	Test login flow	Test login flow with team.	t	1763071964224
3	0689a95b-c890-4620-82d2-9abe307188ec	Plan email template	Plan email template in draft.	f	1774810637661
3	e92f7f81-46ec-42e2-81fe-8e869b318703	Plan login flow	Plan login flow with team.	f	1781160855760
3	d6369b1f-5a50-4a12-8be1-24ed9860f46b	Review API	Review API using TS.	t	1768491016091
3	663dcffb-0f48-4103-b48f-6d3816241fe3	Plan login flow	Plan login flow with team.	f	1767344971699
3	bbc98a7e-296a-44b6-9d23-f7f67a2e7811	Complete UI mockup	Complete UI mockup for project X.	f	1760333152226
3	30728249-3a8b-46ec-9a14-9e2d872857b3	Write Dockerfile	Write Dockerfile using TS.	f	1779985579737
3	7361a2c5-1347-4569-97a1-5559e3400dff	Write UI mockup	Write UI mockup with comments.	t	1756802054878
3	792bcf40-8e33-463c-bc0c-4bb1ad188d0c	Design login flow	Design login flow and document.	f	1778146747893
3	ad76e3d0-39f6-4688-915e-925db41d1b35	Plan API	Plan API with comments.	f	1758182309333
3	0d2f300e-a274-4ca9-bac6-06028f6f7a0b	Review Dockerfile	Review Dockerfile using TS.	t	1755758027278
3	eb317589-f836-4592-b856-3c5e9be982ec	Plan UI mockup	Plan UI mockup in draft.	t	1762645551885
3	8c0ddcdf-9dc5-4c9f-9e32-d4716fed1fc1	Design blog post	Design blog post in draft.	f	1759466421110
3	dc5be269-b529-444c-8515-f8ae5625906b	Fix UI mockup	Fix UI mockup with team.	t	1771157041129
3	23ef0b78-f676-4bde-97c7-2eb8b4a32100	Plan unit tests	Plan unit tests with team.	t	1759924891228
3	91ffddd7-14cb-4bab-85b9-a9e52b109b1b	Complete API	Complete API in draft.	f	1757941262408
3	38a9248e-ae42-487e-b1f9-82f86d6f6a5b	Review login flow	Review login flow using TS.	f	1753680611666
3	7278b125-165e-4ddc-bc59-a4efde9d7aa7	Test UI mockup	Test UI mockup with comments.	t	1778137916212
3	9b06880c-95d9-4410-a9be-80fd2b974be1	Write unit tests	Write unit tests with comments.	f	1767674793718
3	04f9f4f8-3c92-41d5-8068-b13ee50880ff	Write blog post	Write blog post in draft.	t	1774416181522
3	f104ecad-73ba-47f5-b465-8b8a1d2ded3d	Fix unit tests	Fix unit tests using TS.	f	1765771652069
3	fc820e60-84b5-40c3-a329-bf267005df1d	Write Dockerfile	Write Dockerfile before EOD.	f	1757020764891
3	8d7888d5-66b6-4a53-8c51-024bc99caf7d	Complete email template	Complete email template in draft.	t	1760518485884
3	0fee1418-1182-4dde-82c7-fddb909929a2	Test database schema	Test database schema with team.	f	1780150757501
3	aff6cc22-5ff9-4d6e-a833-8ac6a63649ea	Write login flow	Write login flow in draft.	t	1751363378157
3	d3cc8a77-7bde-4cd8-b01c-aca82a4aa345	Design login flow	Design login flow for project X.	f	1776458823746
3	b13c1179-2530-473c-aae6-dfd7820d40c8	Fix database schema	Fix database schema and document.	t	1759982575574
3	8ea20cb8-d7c4-4e38-8eda-5788afb8686b	Deploy email template	Deploy email template with team.	f	1775196671917
3	7e2b17fc-0d62-4043-86ef-fb03dc43937b	Test blog post	Test blog post using TS.	f	1758181613977
3	887f2623-e430-4397-9f6a-4fed23dfbced	Design email template	Design email template with team.	f	1750666391110
3	689a8c97-8707-4fe0-bddd-fa2a9af72e96	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1760835982299
3	3cbc5553-fa9f-4ff4-af0b-7764fd0c7772	Design database schema	Design database schema before EOD.	t	1776330207342
3	874fc40f-38c9-46b6-978d-806cde101894	Fix login flow	Fix login flow and document.	t	1780984062764
3	fd3a0a2d-a7e5-43f2-b74e-acd7dfdc7099	Fix blog post	Fix blog post and document.	f	1751048334964
3	a912a2c3-807b-4bb8-a739-5262732e7f65	Test blog post	Test blog post and document.	t	1756532976534
3	9f36125a-8f1d-4d4b-ac5d-85cf15eb1135	Review Dockerfile	Review Dockerfile for project X.	t	1753643153761
3	9506b37c-d07a-4dd8-8a26-694990e855a2	Test login flow	Test login flow using TS.	t	1770071324992
3	b50e65cc-c5ae-4bdd-ac57-34584b891b83	Plan Dockerfile	Plan Dockerfile in draft.	f	1752224673064
3	681e33b5-a36f-4a73-bb4a-342a67cbad6b	Complete database schema	Complete database schema using TS.	f	1779652995237
3	3f649fe6-2dc0-4bde-8734-3e1a2772f2d8	Plan UI mockup	Plan UI mockup using TS.	f	1754248189980
3	50a7f103-4d22-4963-bb5c-787414c9c080	Test database schema	Test database schema and document.	f	1776320056081
3	b2a5ac74-a9b8-45c3-8994-9d82cf776c0e	Write Dockerfile	Write Dockerfile and document.	f	1771901748872
3	cf748dfd-f88c-4682-9672-e5fcabec5caa	Write UI mockup	Write UI mockup for project X.	t	1771165008127
3	8e1f4246-002d-462a-abf3-3dd0152076d6	Design Dockerfile	Design Dockerfile with team.	f	1777957630146
3	6e09c8a1-f6b1-4410-a897-ecb8df9d55a0	Complete unit tests	Complete unit tests with team.	t	1766714294840
3	5102bbed-87d0-4e9c-a6d1-d0c291fdde7c	Deploy database schema	Deploy database schema in draft.	f	1752086609215
3	9a5e55fe-14c9-4561-9c1b-e89a9ed69334	Test blog post	Test blog post for project X.	t	1780321108764
3	629d5a1c-6633-410a-a738-9fd9111ef368	Deploy login flow	Deploy login flow using TS.	f	1779035112663
3	43d6e73b-94ca-485e-86d7-d25f2f8f0e62	Deploy unit tests	Deploy unit tests before EOD.	f	1754047038402
3	cb91645a-8297-4a68-bda5-3335c862f72e	Review Dockerfile	Review Dockerfile using TS.	t	1761778436722
3	4318591f-e51b-4b1b-ae51-5ad6392318a6	Fix Dockerfile	Fix Dockerfile in draft.	t	1763224265176
3	5004d4a4-38e4-4eec-bf13-ce3b838d559b	Deploy database schema	Deploy database schema with comments.	f	1756748282991
3	6b6d0205-847a-420a-ac72-2e78e04a40f0	Review unit tests	Review unit tests and document.	f	1755491565395
3	fc35674e-4ca6-40f2-b8dc-8e80b5987a4b	Review UI mockup	Review UI mockup using TS.	t	1779937273397
3	2d4161cc-43df-41f4-b937-0274b0796235	Review API	Review API in draft.	f	1764967147875
3	9b8e894e-7d2f-437a-881c-34546802b414	Write API	Write API with comments.	f	1757170456301
3	1373afb0-3211-497f-b905-bd44eadb1d3f	Write unit tests	Write unit tests for project X.	f	1779700644398
3	8beb9ed7-0546-4614-98ed-eaec9f981b0c	Complete database schema	Complete database schema using TS.	t	1765807406317
3	deb91579-8f3e-4f45-adbc-aa7b841905c8	Complete blog post	Complete blog post before EOD.	f	1768669114574
3	ef97f673-f5cf-4802-9990-6202bf813070	Fix Dockerfile	Fix Dockerfile using TS.	t	1756387468075
3	08f865d2-3a85-4e71-a48b-a09a822b9b2b	Deploy Dockerfile	Deploy Dockerfile and document.	t	1750422342939
3	c19a8bc4-3b4b-4608-bbf3-23f7d2b6a761	Test API	Test API and document.	t	1766510203848
3	e6dd790c-df24-46d1-ab17-8f54f9090945	Complete unit tests	Complete unit tests with comments.	t	1752872269156
3	bd2601d0-f15b-4a27-8f21-19d49638c291	Deploy database schema	Deploy database schema and document.	f	1763420502992
3	0d8d2c73-0c3f-4ae6-8974-5fed4f03f3d6	Design database schema	Design database schema in draft.	t	1768434454540
3	d482a967-ef0b-4cd6-a8cf-c2f656ec5022	Fix unit tests	Fix unit tests with comments.	t	1755145083286
3	0160d57a-46d8-4b70-a29d-0b8467b2c151	Plan email template	Plan email template in draft.	t	1771689249679
3	dc987e7e-c224-4dd7-804d-a69436ba3c5a	Plan API	Plan API before EOD.	t	1767993388329
3	cdb31996-50ba-497f-b0fb-c5e5ecccf4d0	Complete login flow	Complete login flow with team.	f	1754852754324
3	06da08c9-82e0-4e7e-b24a-37d746ccba10	Deploy database schema	Deploy database schema with comments.	t	1756687016660
3	f7248197-3e6e-4a52-9d8c-80f0263806c0	Fix database schema	Fix database schema with comments.	f	1771126039020
3	e6bab8d5-8964-4eba-a8f7-6738f83f208c	Write unit tests	Write unit tests before EOD.	t	1778771156413
3	9a9c0814-3cfe-4c5a-a32b-e39311b23dd3	Test API	Test API with comments.	t	1760150568440
3	602ae1e5-d704-487a-94b5-0efd4efdf8ba	Review login flow	Review login flow using TS.	f	1759967492040
3	c598d905-2c88-49d1-acb8-3b22324ac031	Plan email template	Plan email template for project X.	f	1772208960914
3	6a0bde48-f3b3-4e48-a4fa-01a88228942a	Plan unit tests	Plan unit tests with comments.	f	1755559206534
3	19d32557-0f71-473c-aac3-0d1e37bdc1a2	Write API	Write API before EOD.	t	1781166740896
3	acf3fd09-e734-4526-9be2-13aff5d74c48	Plan Dockerfile	Plan Dockerfile in draft.	t	1765356711821
3	77760465-95ed-4e87-9815-82e872460a23	Design API	Design API and document.	t	1770129995045
3	439f2555-23be-40ba-9b81-35806b205f57	Complete email template	Complete email template in draft.	t	1769701701257
3	6e82c182-3696-4d73-9354-44aa148455cf	Review blog post	Review blog post with team.	f	1780610790233
3	42a15fe5-6b08-43c0-8865-fffcbecd2f47	Complete Dockerfile	Complete Dockerfile using TS.	f	1769447409152
3	94a671cb-7806-4f83-a4d7-2da3bf7e680e	Design UI mockup	Design UI mockup with team.	f	1771640794752
3	dcd355a1-97b4-4d23-ae1e-3f8a7866c19f	Test login flow	Test login flow and document.	t	1755891756973
3	88f7f3a9-27cd-47c6-a9aa-669a9603e847	Write login flow	Write login flow for project X.	t	1755870446425
3	28994b27-655c-4834-a216-4b30cacb2957	Test Dockerfile	Test Dockerfile with comments.	f	1757738625965
3	eef50e9d-205c-49c0-9ce4-398ca4e0060a	Fix API	Fix API for project X.	t	1759921124572
3	083d8e40-ece5-4dc0-9d49-cd00cc55ee23	Complete UI mockup	Complete UI mockup before EOD.	t	1750834583749
3	e5adb1b7-1f9b-4811-ac27-03e76554b3b7	Write login flow	Write login flow with comments.	f	1762298844581
3	3d50dc54-a3df-4ed9-8213-cf10d487868f	Test Dockerfile	Test Dockerfile for project X.	t	1777917668434
3	f9b2ca58-186c-40c5-bc34-8aa4af62c35d	Test login flow	Test login flow with comments.	f	1768388917016
3	6ada3956-5dd8-4ccf-a207-4324716651a6	Fix unit tests	Fix unit tests with comments.	f	1777782323256
3	eaf2a584-3df9-45d7-b7a2-5df668a2f646	Write database schema	Write database schema in draft.	f	1774967328829
3	63a8bfb5-1162-4a61-b14e-408fe16df666	Test UI mockup	Test UI mockup before EOD.	t	1767242462923
3	208c8c3a-fbf5-40a9-a49d-b821a6a02164	Write Dockerfile	Write Dockerfile before EOD.	f	1754354982150
3	558dba97-ff01-48f1-81fa-53230ace4d05	Test blog post	Test blog post before EOD.	f	1757417416096
3	05b859f4-ae2e-45a8-8e4a-bf6cef42a4ff	Deploy email template	Deploy email template for project X.	f	1768420682535
3	86a00386-e558-4667-829a-bd9c2f7cd388	Fix blog post	Fix blog post with team.	t	1768104693031
3	89c4e13c-8138-4c39-91eb-794c643e09a1	Plan API	Plan API with team.	t	1757697189152
3	5b872819-fe7a-414c-9454-732f2834144b	Deploy database schema	Deploy database schema before EOD.	f	1762652848568
3	0d132558-1a9e-4cfb-a2e7-3b455e3af55c	Design email template	Design email template before EOD.	t	1750573643306
3	25eee69c-3112-40b4-a537-ccab44cd4953	Review email template	Review email template and document.	f	1768960987651
3	0c4ba8c0-bcbb-4837-8fd4-f56b41953b01	Design blog post	Design blog post using TS.	t	1752311583023
3	7662589b-e2f6-4b39-b7c2-1a8cc12ea09b	Write login flow	Write login flow with team.	f	1781566387790
3	d5624c77-3dd3-41b1-a28c-aafce5439077	Design blog post	Design blog post for project X.	f	1756536598638
3	4455efec-e174-4322-9e4c-c96d78dbe133	Test Dockerfile	Test Dockerfile and document.	t	1762453648500
3	0be1e8dd-6197-4678-814f-7fed70ccd621	Test Dockerfile	Test Dockerfile and document.	t	1777458361374
3	38af961b-8ffe-45ae-bcfe-2553812d20fe	Complete email template	Complete email template using TS.	t	1779586366332
3	6bcac959-8910-4d00-89f2-ac7856e5ae3a	Deploy blog post	Deploy blog post with comments.	t	1768716354113
3	f1b123c0-80bb-4fa7-9d1c-b9a4eee532b3	Review login flow	Review login flow before EOD.	f	1780593202507
3	44c74a3a-b37e-4a61-a91b-4c764ebc5ffa	Test email template	Test email template in draft.	f	1776081817217
3	40f6c890-1b71-4eb3-9029-0c8a3dcc7406	Complete unit tests	Complete unit tests using TS.	t	1769872286339
3	932abaa4-037b-4724-a540-b116011a30ce	Fix API	Fix API with comments.	f	1780416365234
3	81c22093-e1a2-481b-b562-4d320113b88f	Plan email template	Plan email template in draft.	t	1780754411702
3	49a988b6-aba3-4eb9-9bc3-d7879f6e8696	Review UI mockup	Review UI mockup with team.	t	1765648301893
3	ce1c4b7f-f72a-45a9-8441-a77e39659d4e	Deploy blog post	Deploy blog post and document.	t	1757518088883
3	98b1b00a-dce7-47fe-a3a4-10095c55847b	Fix database schema	Fix database schema in draft.	t	1772453052811
3	c4abab38-6843-47d0-8af4-8e334e98238b	Design API	Design API in draft.	f	1752251782959
3	50ccd905-c4a3-47c4-b48e-01dd46dbe6f9	Deploy email template	Deploy email template with team.	t	1750505932592
3	d72f8d2e-8f99-4007-99d3-c0bb9d1f0169	Deploy unit tests	Deploy unit tests before EOD.	f	1771380785693
3	d46d88f5-9318-4407-9662-f4db5c281da1	Plan Dockerfile	Plan Dockerfile and document.	f	1774060111110
3	8285a758-ac51-4144-b504-d2787e585991	Deploy UI mockup	Deploy UI mockup in draft.	t	1772774236219
3	093f04e3-f82f-46cd-89c7-c2392644c4e4	Complete API	Complete API with comments.	t	1766121947210
3	183c7957-9d8a-48d6-9ad9-28ac3d5071d5	Deploy unit tests	Deploy unit tests using TS.	f	1758299665655
3	889bd576-3c9a-4f42-9e06-93225cb29146	Fix UI mockup	Fix UI mockup with team.	t	1769606629751
3	4b919dfa-a006-49e5-b759-bfd44c5bf192	Complete UI mockup	Complete UI mockup with team.	t	1771418980442
3	d055ad5e-f1b8-41ef-ae0b-7290e05b2886	Test blog post	Test blog post using TS.	t	1779684849767
3	2901e00c-fd33-48df-b72e-5be753d71504	Deploy API	Deploy API using TS.	f	1754246500844
3	0ce77e7b-ede9-4922-9f8d-cc931df05617	Test unit tests	Test unit tests before EOD.	f	1765426598735
3	76bf44ee-7395-4c69-83b0-79b7ccf09004	Design database schema	Design database schema using TS.	t	1753252243496
3	cfd26813-770d-4717-b217-ded64e1e7484	Plan UI mockup	Plan UI mockup before EOD.	t	1755902628903
3	9057b3d8-214c-4f74-b87a-fdce4b4fb74a	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1773172234356
3	623c5006-3c2d-4c34-86d3-20a6f3e55874	Deploy email template	Deploy email template for project X.	f	1753570876354
3	920b22e5-f57e-4915-bbdd-130681026bad	Design API	Design API with comments.	t	1781578864253
3	054a9545-3247-46ba-89f9-461542ea18a3	Deploy blog post	Deploy blog post for project X.	f	1771435096671
3	94ef9d90-b75e-4854-962e-716b2eb9eeaa	Deploy blog post	Deploy blog post with team.	t	1760880075176
3	7fa3914b-61c6-4852-9d1e-de80dc6d1265	Fix blog post	Fix blog post with comments.	t	1777676642120
3	e699727f-3713-444d-ba71-7199defb1e04	Review blog post	Review blog post before EOD.	f	1781389698836
3	ef150871-9a64-4dec-9f74-e3fbc3682ce6	Deploy email template	Deploy email template and document.	f	1758542071685
3	918a5d24-6951-4497-8cce-199b364584c3	Design blog post	Design blog post with comments.	t	1761778603370
3	6a360376-3f35-4f68-9b3a-b4addc87ed64	Fix unit tests	Fix unit tests before EOD.	t	1762966773540
3	0767ab65-fb96-4f44-ac08-c5bdf2af18a6	Plan email template	Plan email template with comments.	t	1758828955776
3	61017bf6-1f1a-438d-84d8-973777e0a7bc	Design email template	Design email template using TS.	f	1753412743579
3	380f5bab-56bc-4dad-9471-f99722c066a4	Write email template	Write email template with comments.	f	1750488779655
3	75fae7d4-5967-41af-b451-93bb61a70d71	Complete unit tests	Complete unit tests with team.	t	1770303573282
3	558b7200-4ce0-4217-a762-64b71364d6c4	Fix UI mockup	Fix UI mockup for project X.	f	1767411996718
3	44e7d827-0dac-427e-8f48-51893d2352ee	Plan blog post	Plan blog post with comments.	f	1779695526163
3	6832aef7-81cb-4256-af6b-e6b5080248cf	Fix API	Fix API before EOD.	f	1779035406600
3	149b055f-186c-4887-a70d-dd820a38e26a	Design unit tests	Design unit tests with comments.	t	1751951370414
3	35d54077-dd25-4e3a-a30d-0999d2d20f41	Test unit tests	Test unit tests for project X.	f	1759297430214
3	7a85e164-63ae-4a21-aff3-a492555e672a	Fix login flow	Fix login flow with team.	f	1772890307505
3	83a0651f-0831-40cd-81f7-2b0e9e76b848	Deploy unit tests	Deploy unit tests before EOD.	f	1781396729317
3	eef978d4-38c6-48db-b00e-3a52f75b4ab1	Test UI mockup	Test UI mockup with comments.	t	1767231103293
3	7d51700d-1275-423c-8dae-6d93573c4931	Fix email template	Fix email template for project X.	t	1761376902246
3	2b601e0e-d93a-4fdb-9ad4-071c0c1cac28	Complete database schema	Complete database schema with team.	t	1769209904949
3	a513b894-8ec9-4fcf-984f-53d2a9f81187	Write database schema	Write database schema in draft.	f	1756545192997
3	93fe80a8-40b0-400f-affb-fdd505007339	Write UI mockup	Write UI mockup for project X.	f	1780750633117
3	5f5db719-c3a2-4463-82be-adc1e3b722b8	Review blog post	Review blog post using TS.	t	1768137568105
3	80939e1f-770c-4152-8896-9480b993c1df	Test API	Test API with team.	t	1759080525410
3	1ca36222-1280-4252-a8b1-a53188a7a0a5	Complete database schema	Complete database schema and document.	t	1757258339514
3	5457855b-17a8-48a8-b6de-5cf268e50735	Test email template	Test email template and document.	t	1759214333602
3	13ebd62f-79d5-4f94-9639-208c675be43b	Complete login flow	Complete login flow before EOD.	f	1755566834145
3	ea98beee-623f-4ec7-89a7-93c95967961c	Design email template	Design email template in draft.	t	1765856880246
3	29733fb3-e13b-49ae-9071-b3c9e33f243b	Review UI mockup	Review UI mockup in draft.	t	1758870506806
3	45ab4150-308b-45d1-8e5a-547d14182228	Complete unit tests	Complete unit tests with team.	t	1751220668047
3	5d6361ec-9c3a-4e23-9137-00cdeb7468ca	Fix login flow	Fix login flow with comments.	f	1752217991894
3	91556de5-6a8b-466a-b1ef-526b9beb4e01	Complete database schema	Complete database schema for project X.	f	1768929149198
3	d0f0357c-f36c-4346-bdc8-b255af7ff666	Design unit tests	Design unit tests before EOD.	f	1763167581106
3	7e40118e-fdfa-4395-a3fb-81d4b4fec7c8	Deploy UI mockup	Deploy UI mockup and document.	t	1762440930882
3	b88ef694-aca3-4872-b11e-094e51e36fd0	Design unit tests	Design unit tests with team.	t	1768882839457
3	849da159-c8db-4517-bbd6-100bd8a8b3c5	Fix blog post	Fix blog post and document.	t	1767912873886
3	47d66656-9404-4532-b969-6ab26d7c267a	Deploy blog post	Deploy blog post and document.	f	1764147621676
3	6ab5100e-0318-4244-9532-cd66f892be86	Design database schema	Design database schema and document.	f	1769676790870
3	1ad77de0-8105-487b-9657-020a24c9b8a0	Design email template	Design email template and document.	t	1771174242714
3	14dfe924-fbb2-418e-a44c-9131174bb831	Fix UI mockup	Fix UI mockup and document.	f	1752137979989
3	df745c89-f811-40f5-883d-070548efb8f7	Design login flow	Design login flow with team.	t	1752784840704
3	dcb187ce-4001-4c17-b54c-0b6a4bff93cd	Design blog post	Design blog post with team.	f	1754836854349
3	6566d8da-a06b-4763-a5d8-08791daaec6e	Plan database schema	Plan database schema in draft.	t	1764693369286
3	0efa8312-b3f6-4856-92d4-004464be2a7b	Write blog post	Write blog post and document.	f	1761540038349
3	d5ee8d3b-d665-44e6-a8c3-e966bd81fcf3	Complete Dockerfile	Complete Dockerfile with team.	t	1755433906482
3	546fd7c0-b312-4196-8b29-43891c1bcd30	Design UI mockup	Design UI mockup with comments.	t	1757661931697
3	d77dc5d5-3494-4538-8384-11d071acf514	Design email template	Design email template for project X.	t	1761601356096
3	fa09300b-d078-417c-9184-24d7779d021a	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1754011176274
3	a7f50e7a-a853-4456-8a43-31aa5e86a850	Design blog post	Design blog post and document.	f	1759811890315
3	5b44742d-7114-419d-a1b7-5f2161d67e02	Complete Dockerfile	Complete Dockerfile with comments.	t	1761393806073
3	2354c844-b429-40bc-8970-7e80a38896fd	Complete Dockerfile	Complete Dockerfile using TS.	t	1759854203997
3	8310533c-83fa-4f8e-9b67-4778ee35d594	Fix Dockerfile	Fix Dockerfile in draft.	t	1755632776172
3	a6c634c9-7df2-42b4-a1cb-e84896e0cd58	Write login flow	Write login flow using TS.	f	1772314263048
3	0a0b270f-283e-4ef9-baf6-ac40982f5228	Deploy blog post	Deploy blog post for project X.	t	1761345818573
3	d3f13b38-28d5-40df-8074-23ab0033ad7f	Plan login flow	Plan login flow with team.	t	1778479400230
3	85c0fb94-76e9-4b0f-a779-7ea177da00f3	Review blog post	Review blog post and document.	t	1780876542286
3	52233823-75bc-4de0-9bea-fffcc62141aa	Plan API	Plan API in draft.	f	1770076574771
3	ce6723ea-6e44-4d68-ad7e-63fb1802abaa	Review database schema	Review database schema with comments.	f	1780709948413
3	8a5da5a0-132c-4ce7-bee1-ca5fb5bb708c	Deploy blog post	Deploy blog post in draft.	t	1767902820222
3	6ebfa68f-af01-40f8-a996-45f5323b417b	Write unit tests	Write unit tests before EOD.	t	1777768284120
3	865a1b25-9573-4bbc-8eb7-96195c0fc560	Plan Dockerfile	Plan Dockerfile in draft.	t	1767526616647
3	cb8914c1-85c3-4e32-80db-0e13c1cca5a2	Design blog post	Design blog post before EOD.	f	1776388367713
3	85a68321-c096-468a-aefc-6f03195c5c4b	Plan API	Plan API with comments.	t	1751662662251
3	cbaf3691-bc01-40dd-bcf8-0db98851b3a8	Review UI mockup	Review UI mockup with team.	f	1772429243679
3	448c1b40-7bbc-401c-8997-6038465f5180	Fix Dockerfile	Fix Dockerfile and document.	t	1780687105053
3	fc51cc94-7300-4f37-94cb-8afd8143f780	Deploy database schema	Deploy database schema for project X.	t	1758398789998
3	ffbe81cb-292a-4205-8e6d-f2db437e8621	Plan database schema	Plan database schema in draft.	t	1756166236905
3	9803203f-4465-410f-b6ea-c9f81e4d7bcf	Deploy Dockerfile	Deploy Dockerfile in draft.	f	1777402649414
3	3859a058-8ec7-4044-be38-b221fafac57a	Test email template	Test email template for project X.	t	1778475511475
3	9edf1782-df64-4feb-96a0-df5cbebec2f6	Plan email template	Plan email template with comments.	t	1753205551223
3	51ea22ee-de99-4237-b4f1-d17ae9897aea	Test login flow	Test login flow with comments.	t	1781021466818
3	1a047bef-0166-466b-b21e-8bc53b791fbb	Design login flow	Design login flow using TS.	f	1766159257147
3	f8386db1-414e-402e-939f-c06e78c9fcb6	Test blog post	Test blog post before EOD.	f	1764088834835
3	82a15363-bfc6-4763-9881-1c22058a741b	Deploy email template	Deploy email template and document.	t	1759866104601
3	7c51bfcf-376e-4306-b913-907c62c6285c	Deploy email template	Deploy email template with comments.	t	1765992775208
3	eee2c50f-95c4-4a91-8fbf-47da70a07d7a	Review email template	Review email template using TS.	t	1759749801078
3	697148f7-851d-45a7-87cc-6d8149795961	Design unit tests	Design unit tests for project X.	f	1777158751153
3	af59d919-f2a0-41a3-b854-7a4eb3cda4e8	Complete API	Complete API in draft.	f	1765064306166
3	57eeac50-1c4f-48bc-8739-9b7b7d06fc19	Complete API	Complete API and document.	f	1772115005913
3	473c9756-66ce-4e2f-bc26-8180432839ec	Review database schema	Review database schema with comments.	f	1776698257355
3	94d3910a-1073-40d2-b8bf-e21a9215bd7c	Test UI mockup	Test UI mockup with team.	t	1755818515635
3	ff5d9aca-7744-48e3-aefc-200525dbcbc6	Plan login flow	Plan login flow in draft.	t	1755852798095
3	98d85f04-f2fc-458c-b7bb-2c94c963c30e	Deploy API	Deploy API using TS.	t	1779709816337
3	6c567ac7-eca3-4666-b768-5b45f58b2445	Design API	Design API before EOD.	t	1770352030844
3	6e29d2ee-05bd-4d92-bbc8-52e414adaa31	Review UI mockup	Review UI mockup with comments.	f	1781246960884
3	99a280ba-2fcd-4b24-af49-382fa3424e09	Review login flow	Review login flow and document.	t	1754956095289
3	68fdeaed-cd86-4856-a733-41439a90cf5e	Plan unit tests	Plan unit tests and document.	t	1757313522805
3	205df966-e4c2-477e-85ae-246b0bbbb337	Fix Dockerfile	Fix Dockerfile in draft.	f	1761016585872
3	6261c30c-24da-454c-8bc3-66b6d2aca838	Test email template	Test email template and document.	f	1771745141303
3	886580eb-cb26-4f15-bf32-a7b212cba413	Deploy UI mockup	Deploy UI mockup for project X.	t	1756361194303
3	01f9e35e-9cff-429c-8c37-542461f1ee18	Plan blog post	Plan blog post in draft.	t	1757273061247
3	43baacf5-6111-4a93-b54b-3771e5635edb	Deploy UI mockup	Deploy UI mockup using TS.	f	1759864573095
3	20be6740-3085-4355-b8ec-83d2d17b009e	Complete Dockerfile	Complete Dockerfile for project X.	f	1759088013478
3	fedf9191-bc4e-4463-9c56-b4ec7c9da6b3	Deploy API	Deploy API before EOD.	f	1778245421338
3	c88d3a1f-888c-4167-a5dc-3d6124c46e87	Test blog post	Test blog post with team.	t	1761409772175
3	4e4f154a-1f1e-4482-af85-00ab31ecc12e	Test unit tests	Test unit tests with team.	f	1772331927481
3	49b957e3-a1cc-4f2f-85fe-a17409b54bf2	Review email template	Review email template and document.	t	1753369349220
3	126b9714-cd2c-42b3-9289-70892b31bf79	Test unit tests	Test unit tests for project X.	f	1756121165610
3	fb41f759-cfd3-4efc-a55c-ee75c97dd671	Plan UI mockup	Plan UI mockup using TS.	f	1758404939285
3	95338a70-b8d7-4b48-8ed7-7827c9d42a28	Plan Dockerfile	Plan Dockerfile using TS.	f	1780789156065
3	cefdb8e1-820a-4989-90de-5438715e5982	Deploy blog post	Deploy blog post in draft.	t	1754309290617
3	840c2d96-7cea-4de1-b00f-0f5717fa1423	Write unit tests	Write unit tests with comments.	t	1764811321820
3	a7c471d6-70a1-4fc2-acbb-3b2d7a26e317	Write database schema	Write database schema in draft.	f	1770167800787
3	91f27499-172d-461c-96b8-963a088f9582	Test API	Test API using TS.	f	1774694662552
3	68d710d6-61f1-4e44-9880-a11074873205	Deploy blog post	Deploy blog post with comments.	t	1779897179512
3	f94777de-4d7b-41f2-9563-697a69ab0f7f	Review Dockerfile	Review Dockerfile with team.	f	1754679653825
3	2e412744-47c0-4b5b-82db-babcc64f98ef	Write blog post	Write blog post with comments.	f	1764944366075
3	b0988db7-ce0c-45c4-83ff-63aaf0389917	Review blog post	Review blog post with comments.	t	1779490316063
3	0d599f71-6823-4064-9156-906442003049	Complete API	Complete API with comments.	f	1780442631625
3	0e6241ed-08ea-4ab1-96b6-03789ac93ac1	Test API	Test API in draft.	t	1754445432220
3	11f3e9a7-d15f-4dae-b89c-7bd339c97858	Write UI mockup	Write UI mockup for project X.	t	1777745896369
3	02208103-dfae-4d86-ae51-03d1fcdf86d5	Design email template	Design email template and document.	f	1768052686125
3	c5deef18-bf96-47e1-ae15-e171feff9a77	Deploy unit tests	Deploy unit tests before EOD.	f	1759836755714
3	b7dceac5-62ff-4792-b0ee-445a48a9f4a4	Review blog post	Review blog post using TS.	t	1763134915305
3	ebb83646-7cd7-4639-bcff-ef4475d8343c	Write database schema	Write database schema with team.	f	1753277249594
3	60657d60-3881-4d1e-8c58-22fc93b590f6	Deploy email template	Deploy email template with comments.	t	1769442141731
3	e136a6e0-0fa1-4a01-809c-78221e263a19	Design database schema	Design database schema for project X.	f	1764940738650
3	9073560f-e55e-492f-8501-776addac2895	Fix unit tests	Fix unit tests with comments.	t	1751969584311
3	1b43cb07-85a1-4d56-81f1-b319c12bd70f	Review email template	Review email template using TS.	f	1765209449922
3	1e21d082-6ca6-4e84-926c-535b26721d7e	Deploy unit tests	Deploy unit tests in draft.	f	1776210562401
3	27aa5918-2976-435c-a8d3-06e1e4e47e2a	Deploy login flow	Deploy login flow with comments.	f	1760926158652
3	d86526bf-6b49-4dc8-b291-3f82b1ccf95c	Plan API	Plan API in draft.	f	1778324658976
3	41fa3f1b-98bb-4be6-a06e-28b210c8efc3	Deploy login flow	Deploy login flow in draft.	f	1765238860482
3	e4ae88be-58f7-45be-a1d1-e9015b84f3fb	Plan login flow	Plan login flow in draft.	f	1773745772165
3	bd51397a-8003-40d8-b2ef-b4762be32633	Test email template	Test email template in draft.	t	1777884877585
3	5207c3a6-798f-452b-9d10-464f912032bd	Plan API	Plan API before EOD.	t	1774701844925
3	3e105e1f-501b-4ed6-be34-3c14dbfedbfd	Complete API	Complete API using TS.	f	1762639424436
3	40d1a54d-ec1e-4dea-8722-0b29264d1875	Review login flow	Review login flow in draft.	t	1761827741437
3	5b6aa3cf-3764-434b-8efa-bf17bb683ab9	Design API	Design API for project X.	t	1751512283611
3	8a7f0666-f899-446f-9780-77dcd448d138	Test database schema	Test database schema before EOD.	f	1765462876119
3	c65576fa-bb59-490c-93a8-3492b28886c4	Complete database schema	Complete database schema for project X.	t	1780140611782
3	09c10e8d-d74a-4e48-8009-7f52b2244926	Complete API	Complete API and document.	t	1773251866266
3	1edadb25-36ef-4932-a784-6bdb7376a0da	Review Dockerfile	Review Dockerfile using TS.	t	1764723557901
3	558efab7-b07d-423c-bcb7-5c3115dc089d	Review email template	Review email template with comments.	t	1763912572000
3	a178cb62-8688-481c-8c8c-5c5b70f6db51	Plan login flow	Plan login flow in draft.	t	1767585426880
3	92c9b3b6-0003-4f32-92d4-f0e2fadef3fa	Complete email template	Complete email template with comments.	t	1754583599428
3	e5e10733-9236-47ba-a0f0-1efafbe6ae21	Write database schema	Write database schema before EOD.	f	1752353023805
3	044578ad-475d-4571-84e4-9779b0243b7a	Complete unit tests	Complete unit tests with comments.	f	1760888286945
3	38e8b6b5-e4ae-440f-82a2-e76927b8922b	Fix UI mockup	Fix UI mockup with team.	t	1759270537401
3	fd8a62e4-b6be-4632-b6bd-c6da4ff1acaa	Deploy blog post	Deploy blog post for project X.	t	1775410342260
3	15148517-36d5-464e-9691-da662eb1ab4d	Fix API	Fix API with team.	f	1756448558912
3	fd0543ba-0fc9-4267-a2c3-e1d291b5718d	Design API	Design API with comments.	t	1750535403309
3	6fc858f9-68f7-4b05-9dab-4d4128a95d88	Deploy database schema	Deploy database schema with team.	f	1751900340933
3	cafc01de-4d2b-4234-b50c-4c87262c72fe	Plan blog post	Plan blog post for project X.	t	1763256220633
3	3e226977-1f1a-4445-b89a-685d7c0f399d	Design Dockerfile	Design Dockerfile before EOD.	f	1756896768852
3	6c7f3b4d-d549-44c6-8c16-c502eec35328	Deploy unit tests	Deploy unit tests for project X.	t	1767559085835
3	069afcc4-04ce-40f2-954a-5908d4f9dedc	Test API	Test API and document.	t	1774991051782
3	e233c27a-74ad-4e34-9ab2-2b0f2baf681a	Plan login flow	Plan login flow before EOD.	f	1776110080986
3	a24d52b0-20da-4306-9701-146eeea4238a	Plan email template	Plan email template with team.	f	1774972669095
3	e0eb7a9f-604f-4491-8840-c906b2d3f3f2	Review login flow	Review login flow for project X.	t	1760660882157
3	6bc2e191-5acd-42e8-b4ef-179663b1d346	Write login flow	Write login flow for project X.	f	1760015147216
3	68836e75-b174-4e77-8d9c-da2f16da8986	Design email template	Design email template for project X.	t	1758906445590
3	3ccb5134-24df-476b-ba0e-7253adb63946	Write unit tests	Write unit tests for project X.	f	1761199547679
3	07b324a6-5827-4328-b2e9-d0774d2edc9a	Complete login flow	Complete login flow for project X.	t	1758502826201
3	7b9fe0c5-02ef-4797-a47f-f4d45cf56309	Deploy Dockerfile	Deploy Dockerfile with team.	f	1760888501603
3	3f0af5a1-90b8-49f1-96fe-5127cfb761e8	Deploy blog post	Deploy blog post using TS.	f	1755233636278
3	9828413b-3ac0-49c2-9104-0f574cff301e	Plan UI mockup	Plan UI mockup using TS.	f	1770274930969
3	e62bbd1d-4e47-43e8-93ad-9a12b77ccb97	Fix API	Fix API using TS.	t	1751193719380
3	ff0cf34b-9fdc-4c3c-97f0-f416c293e545	Review database schema	Review database schema with comments.	t	1752984361771
3	4907d3e7-a783-4c78-a1fa-f73ffe27705a	Test email template	Test email template and document.	t	1778164097038
3	dead3a97-842a-483f-bc3a-88f2af0ec919	Review Dockerfile	Review Dockerfile in draft.	f	1765253433804
3	1bdb7620-7586-4aca-8f84-711ee27c937a	Review UI mockup	Review UI mockup and document.	f	1770736325206
3	2b6106b2-6a08-4137-ba90-0d90315af930	Fix blog post	Fix blog post with team.	f	1760184761393
3	29c7fd2a-2b76-4777-993f-42009083d605	Plan Dockerfile	Plan Dockerfile in draft.	t	1755609874092
3	bb85c943-0672-43b6-ab81-76109c65d4eb	Test login flow	Test login flow for project X.	f	1762297199527
3	617c8918-fbdf-4dfd-862e-26d650fe3aed	Plan database schema	Plan database schema for project X.	t	1759700631080
3	5a0ea425-9120-4ff1-9b24-5a1cbac6579b	Fix unit tests	Fix unit tests using TS.	t	1754479486061
3	cf0f799e-9543-445a-b866-e185a1210e1e	Write UI mockup	Write UI mockup in draft.	t	1766653211676
3	11355152-9756-49af-b56a-3ec4497bda6e	Plan unit tests	Plan unit tests for project X.	t	1763443497977
3	b74d26b8-ab96-4031-8ed5-9b856b3e9204	Test email template	Test email template with comments.	t	1764618238439
3	e0ba5a0d-825f-47cb-869e-af224027c239	Review API	Review API with team.	t	1773275808971
3	34cecef6-eb05-4745-93d7-2a81ee65ec13	Deploy Dockerfile	Deploy Dockerfile before EOD.	t	1773837379380
3	3757e24f-e973-4036-9af8-342b9b62cedc	Write database schema	Write database schema with comments.	f	1763543373514
3	2273ad5b-cd01-4c78-ab06-ab80ae551779	Plan UI mockup	Plan UI mockup with team.	f	1757022123197
3	acaeb96c-458d-4ae7-9e3f-49cf7ee5d818	Test Dockerfile	Test Dockerfile before EOD.	f	1761414162234
3	26fd3653-898d-4091-bec0-087037543f75	Plan blog post	Plan blog post for project X.	t	1773978298857
3	5e208665-891f-43f7-9062-35c6d99b6080	Plan Dockerfile	Plan Dockerfile before EOD.	t	1764999836849
3	1fb30eaf-89b9-4713-8f90-8a854715105c	Plan email template	Plan email template before EOD.	t	1765073850773
3	fb86ea3d-b29e-436c-a602-258f002f4a7f	Write blog post	Write blog post in draft.	f	1763629829192
3	57975937-1228-4c8d-9742-442d1b4ddded	Fix API	Fix API for project X.	f	1753216464737
3	a82c671b-665a-407a-a2ae-50331b58dc51	Deploy unit tests	Deploy unit tests with team.	f	1779896846967
3	e05e0832-a0e7-402d-8a13-88fba25f7739	Test unit tests	Test unit tests using TS.	f	1751052979876
3	ca1e8c4b-af89-482d-b4cd-4209b565fff5	Complete email template	Complete email template before EOD.	t	1755061085382
3	31333d70-3a18-4a32-aed6-7d3530dedb3e	Plan unit tests	Plan unit tests using TS.	f	1762164952021
3	366a5d4a-a1f0-47d0-ae5a-182128aa7aaf	Plan UI mockup	Plan UI mockup and document.	t	1765581205394
3	6ed7b8d7-af65-44e0-8f0a-f6323ea0e8ca	Design login flow	Design login flow before EOD.	t	1758205196450
3	32658235-89bd-4464-96a3-682bed040edc	Deploy Dockerfile	Deploy Dockerfile and document.	t	1776005648372
3	3d80d83e-ac81-4460-b38c-fafb6d4f0481	Review Dockerfile	Review Dockerfile in draft.	t	1762457520078
3	8e594a0c-6a46-406a-a0cc-58797ad4ac2f	Design unit tests	Design unit tests using TS.	f	1770001075077
3	f1e0bfc3-f0f0-486a-afe3-d4e5cf718a4d	Test database schema	Test database schema for project X.	f	1766966574242
3	18690e4c-fae0-4745-aae5-ddc24948e004	Write database schema	Write database schema with comments.	f	1769541150056
3	8ae064cc-7c96-443d-b908-013c608e503b	Complete UI mockup	Complete UI mockup with comments.	f	1764833525312
3	778ade94-62c0-452c-90ff-a1858772c602	Review API	Review API for project X.	f	1775763858954
3	3d38fcaa-259b-4429-81b6-b1b99ce500e7	Write login flow	Write login flow using TS.	t	1766621413467
3	cf46a994-00f3-47c7-ada4-e1c86b6152ce	Review login flow	Review login flow with comments.	f	1780647393338
3	7ee16104-6ae6-407a-8a7f-b4e79fcdae2f	Plan email template	Plan email template and document.	f	1756330925062
3	eb3922c7-1015-43d7-950e-527d47ea8757	Plan login flow	Plan login flow with comments.	f	1760539408349
3	83c7de51-6228-44b7-811d-9a3b09ce6a98	Plan API	Plan API with comments.	t	1774662931955
3	3daaa319-b392-4383-b337-8109c6a99986	Test login flow	Test login flow with team.	t	1752816783906
3	e99183f3-1eca-4e22-ba33-eda842ed0652	Test login flow	Test login flow for project X.	t	1778121625865
3	699ddb3a-178f-4c25-a4af-78f81f007d91	Write Dockerfile	Write Dockerfile with team.	f	1781474248640
3	8b085e2b-aea1-4f83-ba28-0f711eeddffe	Deploy email template	Deploy email template with team.	f	1757171252215
3	1b4fffc4-5c18-4395-b85b-19d204071317	Test database schema	Test database schema with team.	f	1764651829528
3	1c3f1ef5-1bd9-4cbe-b016-e38d9ba2e3b2	Fix UI mockup	Fix UI mockup with comments.	t	1751660953912
3	e608b70c-86ac-4e42-adbc-3c81e36c4ee2	Deploy UI mockup	Deploy UI mockup with comments.	t	1755581348861
3	19e1f550-547a-4a73-b178-1a90362d8d50	Fix unit tests	Fix unit tests using TS.	f	1757878630788
3	b30f4e28-7f8e-4620-8653-631a1b059890	Fix database schema	Fix database schema and document.	f	1761764393515
3	ea428fd7-0be2-4ace-8654-d5c5e2620525	Design blog post	Design blog post with team.	t	1757999256202
3	8ed8d132-cec1-4bfa-bfd2-e690d92bc29d	Write UI mockup	Write UI mockup using TS.	t	1760789227361
3	1ce18db8-a87f-47c6-bd35-1803bf1d1603	Fix unit tests	Fix unit tests and document.	t	1754720711228
3	bd7cebd7-1c32-457f-a083-108c4504a34b	Deploy API	Deploy API with team.	f	1772703893908
3	9832d151-09d9-4e31-b7f3-a65fa39541af	Test API	Test API before EOD.	t	1772943703409
3	7ac7cce8-d5e1-4cda-96f0-ac96fec99b14	Design email template	Design email template with team.	t	1758530206828
3	94a30357-6ba2-40f9-b9a5-8323d75b3e17	Complete login flow	Complete login flow using TS.	t	1770897881758
3	e81af2b7-c2fc-45d7-b4ce-b1da6a2ff2ae	Write UI mockup	Write UI mockup in draft.	t	1777370701194
3	7886fc40-3e8e-410b-8673-e2962fcd4fdb	Review database schema	Review database schema using TS.	t	1750272697862
3	a5e276aa-44d6-4236-aa2a-92cef2e464b6	Design database schema	Design database schema using TS.	t	1776489750966
3	403faeb2-40ec-4f3b-9567-18f8d95d2cfa	Design Dockerfile	Design Dockerfile with team.	f	1777622537326
3	dd134669-003b-419d-a0ef-4d6616c060b4	Plan database schema	Plan database schema before EOD.	t	1761414425542
3	684750c2-3e98-494f-9b59-cc4847d785bc	Design login flow	Design login flow before EOD.	f	1754410812098
3	bbc55400-0373-4d25-8728-b37716797a21	Design blog post	Design blog post with comments.	t	1771669102748
3	88815375-1ab9-4dfc-ac4c-7f66d8590e2e	Write login flow	Write login flow with team.	f	1780249227868
3	43658c00-d5b2-4888-ba2c-d89f0261c7b6	Deploy unit tests	Deploy unit tests with comments.	f	1762391534152
3	0115179f-eaba-49a4-b63b-9db10278977e	Write database schema	Write database schema for project X.	t	1760080490397
3	1b94c612-914b-4ff2-adb4-63209f1f891a	Write blog post	Write blog post using TS.	t	1764023866940
3	de4d0c23-4c44-4fde-8d33-90a746990013	Deploy unit tests	Deploy unit tests and document.	f	1762494935410
3	7cb51b26-ec6b-4535-a53d-098979ac1344	Write blog post	Write blog post for project X.	t	1764004785449
3	e83857e6-b3e2-4033-9906-701c7afdb6ad	Design email template	Design email template using TS.	t	1757004632362
3	a5717255-f8e5-4238-8196-4c079cec480f	Write UI mockup	Write UI mockup before EOD.	f	1767733363499
3	a2906a19-fa95-4d4a-be74-c5066b735da3	Design Dockerfile	Design Dockerfile for project X.	f	1756159767874
3	5c57ea4b-0d24-42d7-994d-dd5e534a1410	Review database schema	Review database schema before EOD.	f	1755131511995
3	aa3485ae-1ed2-475d-85ce-bf13982ec18c	Test login flow	Test login flow and document.	f	1756727772976
3	18dfed30-d889-4b66-9586-d3cd278967cf	Design database schema	Design database schema with team.	f	1761485307410
3	1061736b-e845-403a-bfc6-c9412eb069ba	Review API	Review API with comments.	f	1755023209575
3	a6cb1f34-80d4-4a0f-8276-9a65773a04a2	Complete blog post	Complete blog post with comments.	t	1753931231859
3	11c10528-8aad-41bb-a0a6-021267e092cc	Complete blog post	Complete blog post in draft.	f	1759762134204
3	66753271-910e-4924-bf94-fd546895b31c	Design unit tests	Design unit tests using TS.	t	1768650084289
3	8f1bada2-178c-4e56-bda8-e218810a8bb9	Complete login flow	Complete login flow with comments.	f	1754581463647
3	7884c88f-0469-4268-8734-16dbc8a8ebc2	Test UI mockup	Test UI mockup with comments.	t	1779250994885
3	58515007-8df9-427e-8447-6307d290b31a	Test Dockerfile	Test Dockerfile and document.	t	1753401690362
3	748e07d3-402f-4d08-a8ff-e69aa7fd2b4e	Deploy login flow	Deploy login flow for project X.	f	1755651372581
3	7f402ffa-ca27-47c7-a061-294755beae7e	Deploy blog post	Deploy blog post in draft.	t	1773160088857
3	b94ce3e6-c6a6-44ce-8d6a-e65c5b2c5c95	Review UI mockup	Review UI mockup before EOD.	f	1755232420818
3	7d09e70b-34f5-4128-a3f4-bf1592f4900c	Fix UI mockup	Fix UI mockup before EOD.	t	1756119559111
3	0fcedf64-71ba-4a4e-aae0-aa4de3d6ed64	Test login flow	Test login flow with team.	t	1776592658682
3	4fbfc5d0-430c-4a1f-a9e3-1a7901915849	Fix API	Fix API for project X.	f	1758651535177
3	513c15ef-e15a-46ec-8a47-3211d5d5ea24	Fix API	Fix API using TS.	f	1777634087048
3	970d120f-7e3f-454d-b6b7-fe975a146b10	Deploy database schema	Deploy database schema using TS.	f	1758602422958
3	e68b564c-3147-4c2f-bb4f-64e615b3546a	Review UI mockup	Review UI mockup in draft.	t	1773173776077
3	a989e90a-8071-4f77-9789-03d795ef08ae	Test database schema	Test database schema with team.	t	1768653151678
3	58df8d3d-70b2-419f-91f3-d17fc9f01826	Test blog post	Test blog post with team.	t	1780487397243
3	8d6c20c1-0ae5-4431-8e7d-f73b52126106	Test blog post	Test blog post for project X.	t	1750300401465
3	e5fe54ad-2802-4f4a-8f95-6fb2f0f6d7be	Review email template	Review email template with team.	f	1752174226619
3	62802c7c-4a60-48ba-9af1-38438b76e5a7	Review blog post	Review blog post before EOD.	t	1771404071199
3	14902c24-f073-458d-90ce-1d25e698796f	Plan blog post	Plan blog post for project X.	t	1750290848670
3	1989eeae-dd90-433d-827f-11ab4eff5cac	Write blog post	Write blog post with team.	t	1760970315332
3	a035575f-8d2f-4de0-b066-0fe49499f00d	Design UI mockup	Design UI mockup in draft.	f	1780696639176
3	a98cd430-6644-4163-b277-389c851aac65	Complete email template	Complete email template in draft.	f	1754126739472
3	c9c70e34-e432-4125-a18d-07951725b501	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1774619938484
3	69adbea0-3df9-4040-92cd-f7058e1b62a5	Review email template	Review email template in draft.	t	1778947876401
3	36cdad24-ee6f-46c6-ae57-eb9b2bcf6f02	Complete Dockerfile	Complete Dockerfile in draft.	f	1758841369318
3	c9a211fc-bb97-4222-a38e-e5bb5e8ae4ca	Fix email template	Fix email template for project X.	t	1767690136539
3	4a61e69b-4170-4c94-8903-6844e5e9b95e	Review blog post	Review blog post with comments.	f	1772260863345
3	f3ee2658-93d1-47b3-9ee7-7020dc0c5556	Review Dockerfile	Review Dockerfile for project X.	f	1761709491980
3	a9eed6ea-517c-49f3-ba80-e9d42c644a6e	Design Dockerfile	Design Dockerfile and document.	f	1761195677124
3	09a321c0-71c4-4d14-8104-54feff0f756a	Test database schema	Test database schema and document.	t	1781397650828
3	72af7273-a1f3-4b75-843e-d8c18b374041	Complete database schema	Complete database schema with comments.	f	1769284154949
3	1e2ecdb7-5486-4206-9929-d3464791b408	Fix unit tests	Fix unit tests in draft.	t	1765229745861
3	0048c715-a534-40e4-aec3-a03942f7af73	Review blog post	Review blog post with team.	f	1752317067154
3	c827ca9c-264a-406f-a0cf-0ee145a6fb44	Test Dockerfile	Test Dockerfile using TS.	t	1762035567644
3	f4dcae36-06df-4be7-b093-a4afec38c26e	Plan UI mockup	Plan UI mockup in draft.	f	1768033446296
3	f30b18b7-0185-4867-89ab-ac471a44b9a7	Complete login flow	Complete login flow and document.	t	1754046166903
3	a8149a5b-35fe-4961-824b-ea4488a4972b	Write database schema	Write database schema using TS.	t	1768124354150
3	939c2d9d-06c6-4632-85de-9ef964fdd794	Plan database schema	Plan database schema and document.	f	1769859309174
3	0e805779-0aad-4cef-bc5e-4ac8867abe8f	Plan login flow	Plan login flow with comments.	f	1771821418125
3	3493a4f6-a983-4928-9cd6-9633e993037d	Plan database schema	Plan database schema with comments.	t	1780652568899
3	4591e8d0-9e8a-41ee-ac32-12c6dbf0c313	Plan unit tests	Plan unit tests for project X.	f	1764958059342
3	ccada7f1-b2ec-4afd-8485-bc6035b48909	Review API	Review API with team.	f	1775004338366
3	95f4cb2d-1c46-41cc-9f9d-109716ad59c0	Review API	Review API for project X.	f	1762313453655
3	c7dc2eb1-c9cf-46d9-9d62-14ea914ca951	Write UI mockup	Write UI mockup with comments.	f	1752993539011
3	22542f2c-daba-4e03-80a5-eb51ec04ef6b	Write database schema	Write database schema and document.	f	1759854823781
3	8b7e59d7-cbfa-4a2c-b792-9a43ef77a46c	Write login flow	Write login flow for project X.	t	1778978645397
3	166789ae-081b-4af1-9825-6016bfdf89ed	Plan email template	Plan email template for project X.	t	1759130478739
3	79e3cd9c-dbfa-486c-ba4d-c5fff4eb6b97	Test UI mockup	Test UI mockup and document.	f	1769017924944
3	5fb0a1d9-7407-402a-9a57-8d0e84e095a6	Design Dockerfile	Design Dockerfile for project X.	t	1770503868825
3	e07453b7-f0c8-498a-9225-3be6a1e558b9	Design API	Design API with team.	f	1780843132377
3	ec085e87-fdc9-4e5d-bbfc-f03b8476cb2e	Fix Dockerfile	Fix Dockerfile for project X.	f	1752074366311
3	3c9b5160-8a5e-4a8a-af37-e4b3168df461	Test login flow	Test login flow with comments.	f	1763261284566
3	5346601d-5c76-4651-8707-1be7e800d57e	Complete unit tests	Complete unit tests in draft.	t	1777916793201
3	dd566606-f339-404a-bc62-aba59519933c	Write database schema	Write database schema using TS.	f	1755592399232
3	9faff1ed-5526-4bbf-b247-b8bbefa3b46c	Plan database schema	Plan database schema with team.	f	1776855525438
3	60ab4545-fa2e-4317-9780-db12b188d6e2	Plan API	Plan API for project X.	t	1752582331987
3	0ae7c972-55e1-480f-88f5-f561b47ac299	Plan blog post	Plan blog post with comments.	t	1763504487977
3	9a3d8a5c-e7da-449f-8a34-4d415c439cf3	Write email template	Write email template and document.	f	1750245068556
3	19e35769-b870-40e8-a2ee-cda07da437f3	Deploy unit tests	Deploy unit tests before EOD.	f	1767263448502
3	11c63667-4924-46ba-bdd7-21a01114d9c8	Review email template	Review email template for project X.	t	1754605271066
3	90528f09-770e-47e6-bcc5-a6076f1d3a14	Review email template	Review email template using TS.	t	1759937522049
3	cce7ca34-48f4-4011-b29b-c01fe2350473	Complete UI mockup	Complete UI mockup with comments.	f	1779578640315
3	1bcfa080-6f9c-4f6e-8971-66c5b812a833	Test database schema	Test database schema and document.	f	1771353516979
3	7667ffb9-2a44-4c7e-b5dc-3d11482edb60	Complete UI mockup	Complete UI mockup before EOD.	f	1779242071162
3	b3beecbb-0793-46c3-a825-8f2f2192612e	Review blog post	Review blog post for project X.	t	1752009823390
3	a31f2158-351e-4f36-83d5-3292c043abd7	Deploy database schema	Deploy database schema and document.	f	1770976842888
3	0d7dc43b-2be1-49e4-9c58-d6bab6e4ed5e	Complete login flow	Complete login flow and document.	f	1753921406800
3	bff48c0b-2c00-4ad8-b40b-705dddd68bef	Design API	Design API before EOD.	t	1765313524265
3	de5a832e-72c1-4708-8e0e-e043d5a62798	Complete API	Complete API with comments.	t	1776228746219
3	49f42ea9-ef39-41c3-8e5f-c03fef5c736d	Complete blog post	Complete blog post with team.	t	1774751373966
3	3188461f-e761-4c57-a70a-29091f166815	Review blog post	Review blog post for project X.	f	1774670070413
3	0b80c075-619b-4e7b-9185-743c32114f49	Deploy email template	Deploy email template before EOD.	f	1753487819900
3	3c29bd5d-cb70-48e5-9f1a-7b8381b373f8	Deploy UI mockup	Deploy UI mockup with team.	f	1774649296416
3	8472ce7f-7e2f-4681-a56f-944ebb67d126	Complete Dockerfile	Complete Dockerfile and document.	f	1761610761984
3	5eb0810e-bdcb-4682-b225-2bdd4b71b1c5	Test blog post	Test blog post with team.	f	1755160439790
3	77cad8bd-7191-41de-b762-6f6a87c33282	Fix email template	Fix email template and document.	t	1767422215415
3	bd369282-4354-43f4-a63c-77c299acdd0f	Plan login flow	Plan login flow using TS.	t	1759372340474
3	ac5f3669-2f9f-4a1a-a493-848898254301	Fix unit tests	Fix unit tests using TS.	t	1754944122727
3	65744c6c-4d2c-42ea-b340-df37b7482e7b	Write email template	Write email template before EOD.	t	1752310715565
3	6f999d9e-c6a7-4b1a-9de0-b6d8d44183da	Test UI mockup	Test UI mockup in draft.	t	1753796258317
3	b3b1b4f2-0989-495d-8528-82e3e977763d	Review login flow	Review login flow and document.	t	1767773152714
3	ffc81e80-895a-41a9-b015-0e6d317ba45e	Deploy UI mockup	Deploy UI mockup for project X.	t	1776964572079
3	58dd6e62-df5b-425f-94e9-6352cbbd0b65	Plan Dockerfile	Plan Dockerfile in draft.	f	1766031861316
3	7305845d-abe3-45d2-bcbd-e9c949adbb99	Deploy API	Deploy API with team.	t	1760456629352
3	f79ee19a-7993-46e2-9276-7dc8fc9ef2c2	Complete database schema	Complete database schema before EOD.	t	1779532519688
3	be3ff370-5437-45eb-8152-a9ba43ac070f	Deploy blog post	Deploy blog post using TS.	t	1759095231204
3	3878990a-019e-4c78-897a-037b479d80cb	Review unit tests	Review unit tests before EOD.	t	1780659399545
3	6300bb2d-db72-4fd5-9c6a-7f5e6cabc54c	Test API	Test API and document.	f	1770832866725
3	94d27241-f3d4-4abe-b36b-ab90e740d220	Write Dockerfile	Write Dockerfile with comments.	t	1765734786097
3	00e16d6d-db12-45f1-a522-aa2394296dcb	Deploy database schema	Deploy database schema using TS.	t	1766200891151
3	211433cb-02a3-48cc-a23c-f068434953e5	Complete blog post	Complete blog post with comments.	t	1755191825107
3	89c8f54e-aa59-4292-8365-0d9a96250d7a	Plan unit tests	Plan unit tests before EOD.	t	1763691766954
3	f5b5bbdc-535e-4748-9659-790100402d74	Review UI mockup	Review UI mockup with team.	t	1765650306130
3	dc9fc211-d039-4208-8400-5c099106346f	Complete login flow	Complete login flow and document.	f	1771375089417
3	d314bf69-2bef-4a64-992b-e95efa51ef32	Write unit tests	Write unit tests with team.	t	1767126026690
3	8dfddfbe-ecf4-402a-a7b2-31b8eb4506f5	Complete login flow	Complete login flow and document.	t	1754599686427
3	868d0ebb-cdd2-4031-9be0-a4051f4f8752	Review Dockerfile	Review Dockerfile with comments.	f	1766316252192
3	70706ba1-27a3-4c37-8662-222c31aa2674	Complete API	Complete API for project X.	t	1759477817666
3	405b75d7-440c-4f8f-9dd4-b1ee084ac3b8	Fix unit tests	Fix unit tests for project X.	t	1757763866082
3	f1c95f1f-b4e2-4df1-aeba-ae41fd268b01	Deploy API	Deploy API with comments.	t	1778521323209
3	c8a14451-3ba0-4f27-b61a-9a2da435d8f2	Complete database schema	Complete database schema with comments.	t	1764610372667
3	9e858e53-6e2e-46e3-818b-1055b9a427fe	Deploy API	Deploy API before EOD.	f	1770308792405
3	6f7ef58a-065a-471a-8cb3-64aa71641f36	Complete login flow	Complete login flow with team.	t	1776455088304
3	e715e4f9-03be-4a0d-bb4a-d480f6d13543	Fix database schema	Fix database schema with team.	t	1755375689324
3	b094bae4-f1d5-49f1-9a10-da5b1b0e884b	Fix unit tests	Fix unit tests and document.	f	1777125204182
3	963b7044-e6a9-4a04-be5f-b913b974fc00	Plan UI mockup	Plan UI mockup with team.	t	1765865613450
3	214a0e48-e1f9-40de-8c51-469ee192ee7c	Fix API	Fix API using TS.	f	1761432518664
3	395ce20f-2883-4aa7-83d0-b2a3949e1464	Fix blog post	Fix blog post before EOD.	f	1752242994884
3	813b7017-eaff-4fd3-b494-abf05dfe9598	Test unit tests	Test unit tests before EOD.	t	1757666877579
3	c6a52d92-8db8-4f25-9a3a-c24c0521f75f	Complete unit tests	Complete unit tests in draft.	f	1750631871477
3	f4722204-81f5-472f-8900-5e76e3dd8242	Plan Dockerfile	Plan Dockerfile with comments.	t	1773906628274
3	b101f93d-8605-4240-a50e-0c26d6d005cb	Design unit tests	Design unit tests and document.	f	1778826220954
3	985008fd-54aa-48c2-b425-ed78824e9a8c	Plan UI mockup	Plan UI mockup in draft.	t	1760184673351
3	49f7b6f5-d06a-4d8d-9310-55f00bc5cc0c	Plan UI mockup	Plan UI mockup before EOD.	t	1776986146738
3	2cf9aa85-8893-4bdb-8539-cd53fa76b460	Review database schema	Review database schema with comments.	f	1768452699741
3	a71ea908-60a9-4455-b67a-a35cb5ad0bca	Plan API	Plan API using TS.	t	1755782626629
3	4b637e55-ebd2-427e-82e4-10a4ddcd4396	Fix unit tests	Fix unit tests before EOD.	f	1757343134231
3	7a8d6680-c1fd-43b0-82f9-19dac0113f4b	Deploy login flow	Deploy login flow before EOD.	t	1762015301435
3	3f16ea4c-7dfe-4022-b623-6592e38ccdf9	Complete Dockerfile	Complete Dockerfile with team.	t	1775969190060
3	b29c812e-3621-4ab3-9c5e-770baa230e4e	Review UI mockup	Review UI mockup using TS.	t	1752877037096
3	2913398b-856b-4d26-8594-eb33731240a4	Review database schema	Review database schema for project X.	t	1770863168786
3	89dc8ae4-20d1-4665-beb6-b6b058a44bbd	Design API	Design API with comments.	t	1778082152008
3	2ab4a0aa-927d-411c-8145-6e14d54e52ac	Plan blog post	Plan blog post and document.	f	1765989544560
3	a6ea45b8-53ea-4a26-8ab4-70f545174d2c	Deploy login flow	Deploy login flow for project X.	f	1772851913832
3	b9f03b5b-b7a3-4d76-8277-4f409154a6c9	Write database schema	Write database schema for project X.	f	1769093746284
3	25d14feb-4946-4084-a5d9-dad29c06bace	Review Dockerfile	Review Dockerfile with team.	t	1763788640495
3	e286533c-f9ed-458d-94eb-f7511b785547	Deploy unit tests	Deploy unit tests before EOD.	f	1768050843863
3	a78d2e76-b25f-421f-8916-3487829f3259	Plan UI mockup	Plan UI mockup in draft.	f	1756230934232
3	7cec1f01-5d65-4889-875d-04aefc1bc601	Complete unit tests	Complete unit tests before EOD.	f	1778953763282
3	9dd6135e-73f6-484b-8b13-03e62ff4380c	Test blog post	Test blog post and document.	t	1778247168651
3	7fe8d831-4ae6-4a76-b90a-7764bc8c78f3	Plan blog post	Plan blog post using TS.	f	1756251992672
3	9b62d207-397b-40c6-8422-85c83fbf7b6b	Fix email template	Fix email template in draft.	t	1759815516360
3	1cc7aa31-be0c-42b2-9f76-e20381805f1d	Complete blog post	Complete blog post in draft.	t	1781023565353
3	396afd22-fffd-4bdf-ba6b-6d8ba7e08d37	Test blog post	Test blog post for project X.	t	1770242913002
3	1a94af43-f733-4891-a95e-cf766423dca0	Complete login flow	Complete login flow using TS.	t	1770370913700
3	8738cd26-c3cb-49d4-b977-c78231f2d034	Test API	Test API with team.	t	1770000212545
3	f549e38a-5e72-4919-b5df-a001a667e344	Complete UI mockup	Complete UI mockup before EOD.	t	1753656866482
3	dae59ce7-a1d3-4bac-9e1a-1a99510973f3	Design unit tests	Design unit tests before EOD.	t	1779781951789
3	c2e32b33-3a2f-42f7-ae44-f9b3d0e3106d	Review API	Review API in draft.	f	1753666248187
3	feca83ce-2736-47e4-b57e-9526d26f2490	Write UI mockup	Write UI mockup with comments.	t	1779424610666
3	b30dac71-6bab-458d-89a1-7a18a27dbbb7	Design blog post	Design blog post with team.	f	1776970136088
3	74dd5b77-6c8e-4810-8fd9-3d88975b7bbf	Fix email template	Fix email template for project X.	t	1762667663793
3	18305b7b-ff92-4ba7-9d6c-3deefb43cb80	Test blog post	Test blog post for project X.	t	1750431535483
3	e948f45e-21fb-4956-a87d-00d69c24425b	Deploy login flow	Deploy login flow in draft.	t	1755137650168
3	9e6302d7-cf33-4120-9d06-be1a5483c30d	Deploy email template	Deploy email template for project X.	f	1774323640432
3	9da1814f-fef3-4d0c-a811-2c8698e7e2aa	Plan unit tests	Plan unit tests before EOD.	f	1751048412785
3	b23ce97b-9d94-4235-8984-8a1889a7e361	Deploy API	Deploy API and document.	t	1766077712785
3	cbad9fef-d682-47c8-a467-126e35252ab8	Fix Dockerfile	Fix Dockerfile with team.	t	1779779231799
3	ad5bc5ae-fd11-45c2-88cf-479890b30158	Write Dockerfile	Write Dockerfile for project X.	f	1776274445787
3	c7b0c378-c866-4300-bcc6-96445323e69c	Complete API	Complete API and document.	f	1767247441398
3	a11d49b3-9cbb-4780-982b-e49e5f38461f	Complete API	Complete API and document.	f	1770680468679
3	10577a11-dd6d-4577-9bb8-b9ef31df329f	Design UI mockup	Design UI mockup in draft.	t	1752032422994
3	45dfdf9f-b06e-472e-be30-ea5db29b440d	Test login flow	Test login flow using TS.	t	1765495407042
3	3e573dae-f3cf-444b-af24-f35521b62a80	Plan database schema	Plan database schema in draft.	t	1768096470961
3	fd7b421a-8397-453b-aaa8-f204e33435f6	Write blog post	Write blog post for project X.	t	1774129057377
3	1141107e-320e-4208-a609-df6d1de708d4	Write blog post	Write blog post for project X.	f	1769436209932
3	fdd69c47-cddb-4b5f-9c2a-e91239dd7cd6	Review API	Review API in draft.	t	1765891851396
3	3379d117-0917-4ad4-8963-043ed0b3ad77	Design database schema	Design database schema using TS.	t	1759037859194
3	213b2500-7dc6-4345-b0c2-16a0e8534746	Design API	Design API in draft.	t	1754453279364
3	b0d94596-ec4c-47aa-858d-e8a8ae1c8932	Complete Dockerfile	Complete Dockerfile with team.	f	1774180606778
3	ae6b9240-8b3f-41b4-9142-deab7f265961	Fix login flow	Fix login flow using TS.	t	1773001700486
3	37e49845-4555-46ec-9f67-c227bd715525	Write database schema	Write database schema with comments.	f	1757305303491
3	032dd9a9-13d3-496d-967a-eb223bb765e5	Test Dockerfile	Test Dockerfile before EOD.	f	1766728601228
3	f70dcb5a-f82e-4506-8305-14b6b42a19f6	Plan blog post	Plan blog post in draft.	t	1762019203971
3	e09a6242-f938-4de0-bd72-122f245966a1	Deploy login flow	Deploy login flow with comments.	f	1779830212153
3	65d8de91-9659-4ca7-a575-08d6af0007d6	Write database schema	Write database schema with team.	t	1762602077901
3	8558e0e1-4514-40c0-a957-2c86bb270d7e	Review unit tests	Review unit tests with team.	f	1764929492411
3	7193c81c-0518-4bd5-a12e-a1771d04b1e3	Design Dockerfile	Design Dockerfile in draft.	t	1780146239928
3	81e7375f-7eb3-4bfd-be7f-6d7214aa2e7e	Design email template	Design email template using TS.	t	1770606153494
3	456faef7-3aa3-4a3b-a046-7e14be2ccbdd	Write API	Write API before EOD.	f	1773663648017
3	19cc8b6d-7f9d-436b-81f7-b5ba9bed1edb	Fix API	Fix API before EOD.	t	1752483139813
3	a4483453-2425-4926-85af-7ed71f2f5c98	Deploy blog post	Deploy blog post and document.	f	1761118051372
3	4170d0be-c22f-40de-92b3-099cb6dac80d	Write blog post	Write blog post with team.	t	1773601089414
3	ef7ada19-89af-4043-8779-4b368273b536	Deploy unit tests	Deploy unit tests using TS.	t	1765329552415
3	be8c482f-9f3a-46cc-8021-047a13760da1	Test blog post	Test blog post before EOD.	f	1776439781250
3	b9c51774-177d-49e5-893b-8a192438ed8e	Review database schema	Review database schema in draft.	f	1781203281755
3	b5d635f6-cd45-4f55-945a-00c828271ae3	Plan Dockerfile	Plan Dockerfile and document.	t	1773159619395
3	5f2ebab5-dd1e-4b6e-813a-f6289c739ff1	Fix email template	Fix email template and document.	t	1752702641305
3	b5b11c04-dc63-488f-8ab8-4f36a06b86fa	Complete blog post	Complete blog post with team.	t	1757038139561
3	85e39896-f86e-4ec8-982c-d06b9773ea1b	Design API	Design API with comments.	t	1773784274551
3	537e7cd0-3f1d-404a-b4c5-918962b07894	Plan Dockerfile	Plan Dockerfile for project X.	f	1753763672008
3	636a6c36-0f89-4482-99b1-907fab347f25	Deploy API	Deploy API in draft.	t	1772885143243
3	c1039e14-753b-4817-a65d-fcfe2163b67a	Fix email template	Fix email template with comments.	t	1767554840653
3	ebc7d094-e573-4f80-b2b7-09db21765bee	Deploy UI mockup	Deploy UI mockup and document.	t	1755198907573
3	1c1dc4ae-f228-475f-9c5e-60f312d3c734	Test UI mockup	Test UI mockup for project X.	f	1751805449125
3	fcd75448-0f04-4d70-a6c4-a9d7f05a257b	Fix API	Fix API using TS.	f	1757271139642
3	8893d5fc-af74-4061-a62f-5137c128223e	Plan UI mockup	Plan UI mockup for project X.	t	1763824319139
3	8dff194f-606c-4273-97c8-cf6382949b87	Fix unit tests	Fix unit tests for project X.	t	1762408678529
3	c59238d5-c891-44e4-8e86-c0ab116519d8	Test login flow	Test login flow before EOD.	t	1777295091634
3	cc96e375-fae1-4734-b0cc-f051e737366f	Design email template	Design email template and document.	f	1767434007701
3	f55509a9-8877-4d11-bb01-6308b812925f	Complete API	Complete API for project X.	t	1766625193975
3	fc527e2a-9619-449e-afa4-dba52cadcf6e	Complete Dockerfile	Complete Dockerfile with comments.	f	1780764178019
3	33fbdbe7-11ed-4cd3-bf41-73bb6f7e5ad8	Test API	Test API for project X.	f	1777018989699
3	754116ed-9480-4a3e-8efb-3a6f8ce9b1ad	Write database schema	Write database schema and document.	t	1772492923812
3	1e596c17-8fd2-426d-b7a2-fd18fb554958	Plan API	Plan API in draft.	t	1778411790178
3	bcd0c8f6-c0fb-4c06-89e2-01fda6c410cc	Design UI mockup	Design UI mockup using TS.	f	1777269734565
3	a044a950-2e1b-45b8-a10a-7fe0fae91494	Complete database schema	Complete database schema and document.	f	1773454348768
3	3b13fa10-9c65-452f-80c4-eec4bb935a00	Deploy UI mockup	Deploy UI mockup using TS.	f	1777100908215
3	c28176df-ecc2-46da-aa48-ab034597c8a9	Fix blog post	Fix blog post and document.	f	1755888625167
3	0ebc3b5a-b21c-4887-aa90-86316b7731ae	Review email template	Review email template for project X.	f	1771749789661
3	34166a07-2df7-4027-a3f4-966e09557c2b	Write Dockerfile	Write Dockerfile with team.	f	1771565181415
3	f66b6398-9898-4e29-9c44-654d61e1216f	Review Dockerfile	Review Dockerfile with comments.	t	1764539692699
3	3784af7e-116c-4fbd-9d22-e45621dacefc	Fix blog post	Fix blog post with comments.	f	1779173407491
3	d1ed199f-fbd6-488e-8a54-529e2ad38068	Complete API	Complete API with team.	t	1780332085257
3	81abe254-3f69-426b-b55f-8b0ec83e3565	Review login flow	Review login flow before EOD.	f	1778665852965
3	567253c2-6fe5-47fc-8fcc-35a37964101c	Review email template	Review email template and document.	f	1767101178547
3	9f78005c-0015-4d1c-b75c-2f740988b0e0	Write blog post	Write blog post in draft.	t	1775070791643
3	bcb70459-e670-446c-9704-5a3334e3e0a7	Plan email template	Plan email template for project X.	f	1768922169454
3	10becbe8-a299-46f5-bb8b-1ce1d764092b	Fix unit tests	Fix unit tests before EOD.	t	1766594300606
3	fe7b375a-a5aa-4070-a6f4-bcf7fcd12189	Plan login flow	Plan login flow and document.	t	1758562522817
3	f0925ff4-ad6c-44b0-a999-87a442502c8e	Write email template	Write email template and document.	f	1754159230461
3	a9b59137-70fc-42f0-a0ef-99fb4c4ec286	Deploy blog post	Deploy blog post with comments.	t	1778764619823
3	55078bca-ea08-486d-b83a-6d2d4dafa138	Design unit tests	Design unit tests for project X.	t	1763352558421
3	713f04ab-66ea-43f9-8051-ef1262defb29	Complete email template	Complete email template in draft.	f	1770927872711
3	61b06b00-e4c6-44dc-9c65-87125c384f96	Test database schema	Test database schema for project X.	t	1764262283415
3	467c67c2-f6fa-4291-8fab-5d9f5186cd87	Fix blog post	Fix blog post with comments.	f	1758042829192
3	658bc2b8-f01b-4686-98ce-c8638dce6538	Fix Dockerfile	Fix Dockerfile with comments.	t	1771429402602
3	451c0e80-3bbb-4759-a408-8ca5d66749fe	Test login flow	Test login flow before EOD.	t	1755195053684
3	3518a026-c973-4f3f-8c4b-a0f9b35fd271	Fix blog post	Fix blog post in draft.	t	1759849144859
3	498fb004-0958-4992-81a8-771110aa7ce8	Test UI mockup	Test UI mockup with team.	t	1769344323180
3	403bd90f-df68-4a92-a08e-72c60addaec1	Fix UI mockup	Fix UI mockup in draft.	f	1767335610752
3	1690109a-4ff7-4868-8a9f-6810c9832af9	Test UI mockup	Test UI mockup before EOD.	f	1767229878368
3	f2b21620-c84d-4325-b6c9-b4cb76d1d128	Deploy Dockerfile	Deploy Dockerfile for project X.	t	1756312150533
3	38ed3816-0a08-4c8d-974a-c9a4bb4ca0cb	Plan database schema	Plan database schema and document.	f	1764507374971
3	a4ccf68d-2a9b-4f42-ae4f-fef6f101b834	Complete email template	Complete email template with comments.	f	1758021958160
3	6ba0f034-beda-431c-b209-251e36f0cb80	Review email template	Review email template with team.	f	1754835505560
3	091c6331-e141-4569-bfcc-e04bcb485dcc	Review UI mockup	Review UI mockup with team.	f	1753458486995
3	40f260d8-6880-4b48-a91f-73f9f4026064	Write API	Write API before EOD.	t	1768754915731
3	c3d81c18-a309-4371-b506-58a2a31068c5	Review email template	Review email template for project X.	t	1751546688685
3	50730d3a-fd28-4fc6-9dea-46b05e20435f	Test UI mockup	Test UI mockup and document.	t	1771680863207
3	a309fc16-e806-4ce0-8b8a-bbe7abec3505	Deploy unit tests	Deploy unit tests and document.	f	1765455563601
3	6fe6f8a8-d695-4c76-b10c-fe97a341f20d	Complete UI mockup	Complete UI mockup before EOD.	t	1754372495727
3	440dbebb-b1b8-4965-918a-70534d4b3f0a	Fix database schema	Fix database schema with team.	f	1759624848432
3	6c6a3a74-26d5-4054-8b86-24f6938aa4b5	Test unit tests	Test unit tests before EOD.	t	1753959643991
3	441f8bd0-c553-4bd1-8b84-c68aa8b01855	Review email template	Review email template before EOD.	t	1754307900162
3	bab591e8-1696-43b2-b940-d5677d9aaa10	Fix login flow	Fix login flow before EOD.	f	1770856499818
3	761b166b-3242-45d7-9227-4fa20207277c	Write UI mockup	Write UI mockup for project X.	f	1760557670342
3	da896122-215d-4676-897f-30c03185ae62	Test UI mockup	Test UI mockup and document.	f	1770147405050
3	1329df08-05ed-4b37-a8df-72ee6b81569a	Fix blog post	Fix blog post before EOD.	t	1766371957960
3	ad96d6c2-2655-45a3-82c1-f8b9d68ba35b	Complete database schema	Complete database schema with comments.	f	1771713769107
3	8496ac6a-e371-4d1a-af60-07905d6a6570	Fix blog post	Fix blog post and document.	f	1770666116520
3	d59c2ddc-1976-4518-aadf-1412bf937266	Test blog post	Test blog post for project X.	t	1756545734345
3	7416d973-4901-49a4-989c-4ba4874802bc	Complete login flow	Complete login flow with comments.	f	1773149044944
3	9d26e850-5d63-456c-9d33-fb2352c54717	Deploy UI mockup	Deploy UI mockup in draft.	t	1754071854890
3	3ee00744-521d-43d2-a656-fea40ea82c20	Complete database schema	Complete database schema before EOD.	f	1781471244702
3	512a2918-a42d-436f-b764-7f15330f1757	Deploy email template	Deploy email template with comments.	t	1777947129316
3	a106b809-255e-43c6-ba15-760a1fd27731	Test unit tests	Test unit tests and document.	t	1780844201891
3	b108d6d2-7365-4a13-91b7-e0b973a5898a	Test login flow	Test login flow for project X.	f	1755022942662
3	a17c86a8-a22c-4c3c-b4db-2b6e8cb1801b	Fix email template	Fix email template with team.	t	1765952453876
3	905079ac-ad0b-4b49-bde2-cc4d5e24fa46	Write Dockerfile	Write Dockerfile and document.	f	1753006073930
3	9db4751d-2e04-4a5f-b981-249ac439e860	Plan blog post	Plan blog post before EOD.	t	1760964507635
3	4ecac86d-ab12-4125-8d12-5a04bf615566	Write API	Write API for project X.	f	1760481141713
3	097e74a3-d6d0-435d-ac12-f3535b69c1f8	Complete UI mockup	Complete UI mockup with comments.	t	1778747688622
3	6586fe9a-c080-4b2c-aaac-0dd389bb44e8	Plan email template	Plan email template and document.	t	1757640738596
3	1d390d43-f3b8-47f7-8935-b780f0ab507f	Deploy UI mockup	Deploy UI mockup and document.	t	1774628788502
3	589fdc9c-8488-4f8b-bc36-cac318642b55	Design database schema	Design database schema in draft.	t	1780118142674
3	fe35b2d3-6f65-498a-b87d-cb01e0cfc2f3	Plan API	Plan API in draft.	t	1751232670552
3	00ea4d21-ef57-4b95-81b4-95b03c8acfa3	Deploy Dockerfile	Deploy Dockerfile and document.	t	1766660006323
3	c234fb8d-ce55-4b7b-a9c3-fb14e0a85e18	Plan UI mockup	Plan UI mockup using TS.	t	1755822228463
3	febb9298-1a6b-4aee-b85d-808be0b9ffdd	Test database schema	Test database schema with comments.	f	1763345798939
3	de47f215-cc2b-419e-bb84-58d84d6c70ea	Complete Dockerfile	Complete Dockerfile and document.	t	1771729550360
3	4e3bee25-e772-4e79-bb5b-7b07cf0a03fc	Deploy API	Deploy API in draft.	f	1781675157454
3	3cd8bbcf-56ab-4d23-b5f8-63655e2ff0cb	Design login flow	Design login flow and document.	t	1778537163875
3	51e7268d-9176-4e16-9220-40b53c090162	Write UI mockup	Write UI mockup with comments.	t	1775633895405
3	a014399b-acf9-4728-9c84-2a3f89ddf7a5	Fix API	Fix API in draft.	f	1774225839566
3	f3ea6735-6965-4e4b-a0c9-26cdd92f2b4c	Review blog post	Review blog post using TS.	f	1759103471842
3	b1c45ddc-a74c-4b1b-9ad8-25bdd14f2296	Review UI mockup	Review UI mockup in draft.	t	1769104292102
3	c2eed8da-c615-469d-8987-a8c4df1ac3b5	Test unit tests	Test unit tests using TS.	f	1763218932992
3	8b7238c4-f9bb-4063-ab16-09114d47aa48	Fix unit tests	Fix unit tests for project X.	t	1766213083352
3	30d1a9b0-4ca4-4b9e-8a88-e4d8a70c63ea	Design unit tests	Design unit tests using TS.	f	1752498421913
3	5085b8e0-04b1-4b87-9eaf-3d4a54545f59	Design unit tests	Design unit tests for project X.	f	1769589931621
3	81f6ea14-5bc8-4209-a4b7-278378a479cf	Review unit tests	Review unit tests and document.	t	1768889406068
3	4408df10-8951-4b42-8670-33b028faaeac	Test unit tests	Test unit tests before EOD.	t	1754089578310
3	64aeec70-f178-4ca8-8329-2f28cd455cb2	Design API	Design API with comments.	t	1766760820640
3	63584bfa-620e-4d85-8db7-55739737fec7	Plan database schema	Plan database schema for project X.	f	1771916405228
3	c4cc2548-d4fa-443d-9f02-33a42be9e380	Fix email template	Fix email template before EOD.	f	1779296369613
3	35ce65a2-9241-4e41-83b4-f0a2aec75d39	Test unit tests	Test unit tests with comments.	f	1771685056574
3	291268d1-ae2f-4469-b122-ae0b2416d201	Complete Dockerfile	Complete Dockerfile with comments.	f	1775965759898
3	0db03acd-86c6-41bf-bb81-a45949996ca0	Plan login flow	Plan login flow with team.	t	1765799220679
3	9661914a-4664-4ade-b287-a21925c74afc	Deploy API	Deploy API for project X.	t	1757630155526
3	d01d6328-ec8c-4f27-97f4-11dae17dd16e	Write API	Write API for project X.	t	1750965601516
3	5239cd4f-10bf-4531-842c-eeca87d7d5b0	Design email template	Design email template with team.	f	1752153696600
3	cbd3ebc4-da91-450e-9b96-d9b6b5feac71	Test API	Test API with team.	t	1766840502514
3	0c5fa26e-1869-4b31-92ed-8f39fcd64448	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1765447418706
3	4bb74dd6-4c14-4889-ac9a-4536ecec9113	Test database schema	Test database schema with comments.	f	1764035983978
3	8a43f30b-3a61-42a5-85a0-657b752d3359	Fix email template	Fix email template and document.	f	1760696210807
3	809bdc11-ea21-4253-9f12-66bf5523f46b	Design login flow	Design login flow before EOD.	f	1776533662351
3	f14d1ed5-ee03-4ae2-81a9-db548d4669a6	Review blog post	Review blog post with comments.	t	1779681578628
3	29b49022-c351-4354-b56a-c17655c91fa9	Deploy API	Deploy API for project X.	f	1781266624126
3	a5b43596-7e39-4161-a3a1-1c2448d7dc71	Test Dockerfile	Test Dockerfile for project X.	f	1767384306118
3	61a668e5-9403-412d-b5f2-13bf9ecd2e55	Deploy unit tests	Deploy unit tests before EOD.	f	1761508320921
3	4d426937-7141-4b98-8203-f166041037d0	Write Dockerfile	Write Dockerfile using TS.	f	1774767607851
3	d7a019d5-b298-4f24-bddc-30a9e3a265eb	Deploy email template	Deploy email template with comments.	t	1771511495299
3	d2ed1f4e-69c1-4201-b108-6f442d6fcfdd	Write UI mockup	Write UI mockup with comments.	t	1763335248907
3	cae64259-aaa8-41f1-8e21-c956f845227a	Review unit tests	Review unit tests in draft.	t	1763126374184
3	e6816232-46ab-4123-8719-e23488cacc35	Fix email template	Fix email template before EOD.	t	1769369828796
3	1f611dbc-a63f-4749-a405-06ffaea848f6	Deploy login flow	Deploy login flow in draft.	f	1757229472465
3	3b642ca0-d7fd-4d76-b947-d3553e36f9cc	Plan Dockerfile	Plan Dockerfile with team.	f	1771258231981
3	7947d1bb-f314-4549-890a-b9263779d126	Complete unit tests	Complete unit tests in draft.	f	1780059594648
3	ca695947-8b93-4f10-a2e4-b751816c4188	Plan login flow	Plan login flow in draft.	t	1758437197584
3	dee04121-c243-474d-a6aa-dcb305269523	Design Dockerfile	Design Dockerfile with comments.	f	1754806937685
3	4c1aacaf-864e-46ec-a7c7-ab2821db98ad	Design database schema	Design database schema for project X.	f	1762472857791
3	557466b5-3aa9-4f80-b6a6-36586a073398	Review API	Review API for project X.	t	1757700470698
3	518f8de6-93c2-45fa-8444-eb2cfb1d3953	Complete email template	Complete email template for project X.	f	1763107147108
3	07d22d60-e589-48a7-90de-be106d1df847	Write UI mockup	Write UI mockup before EOD.	f	1757683317757
3	05748193-5574-4b05-b36c-86c73cccf0c2	Review login flow	Review login flow with team.	t	1760867995269
3	edf51cf4-ff33-485c-9608-0508a6b59202	Plan blog post	Plan blog post with comments.	f	1761552710102
3	b97e6bec-3e3b-4ff2-b4df-936e61cd4239	Design blog post	Design blog post in draft.	f	1780228357957
3	1b952260-5105-49cb-abdb-5473718455ad	Fix Dockerfile	Fix Dockerfile and document.	t	1777998842896
3	f563da96-06ea-4e22-b11f-5ff1377aab4e	Review Dockerfile	Review Dockerfile for project X.	t	1752314124753
3	deef74ae-3821-43c0-82a6-99b6fe886ff5	Plan blog post	Plan blog post and document.	t	1777194634171
3	2dc3ab72-dea7-4bdb-8e8a-17cec14a33d6	Complete blog post	Complete blog post in draft.	t	1751052164307
3	7d47ae28-57a2-45cb-b08b-54270dbfeff0	Deploy unit tests	Deploy unit tests for project X.	f	1755956688713
3	5f3bf9ff-ca3e-4dd9-a746-ac34e98988c9	Fix blog post	Fix blog post before EOD.	f	1780652889758
3	e5c2a1fc-5b4a-4eec-817a-6da144e560e7	Deploy UI mockup	Deploy UI mockup for project X.	t	1766011031724
3	51df7155-0ae8-4fea-bcd0-31a839d531c3	Design email template	Design email template and document.	t	1770741671532
3	45a630a4-54ff-4ab0-a4f7-a913963f50d9	Test Dockerfile	Test Dockerfile using TS.	t	1757411493968
3	4134ffa3-018b-4813-b41c-0749e2cdfe28	Deploy blog post	Deploy blog post before EOD.	f	1779617890044
3	40f8831e-d40e-4685-b7d9-92089f3ba210	Plan Dockerfile	Plan Dockerfile in draft.	t	1762886973113
3	4c533768-4040-4c86-a1e6-5b3c7829a085	Deploy login flow	Deploy login flow with team.	f	1758437053450
3	28b541b3-0449-4674-a255-f608a32e3958	Fix login flow	Fix login flow in draft.	t	1766521282325
3	80da162f-77c2-40b2-bc4e-353d7a86fffa	Design email template	Design email template with team.	f	1758579857547
3	b6f4c040-d386-4d4d-a9fc-f25294b6abcf	Write email template	Write email template with team.	t	1758667680480
3	916e7500-07a1-4250-9b7b-874fed5d32ba	Review blog post	Review blog post in draft.	f	1760388658054
3	4d0d429a-cdb9-4d25-8e17-d4f7ee292874	Fix blog post	Fix blog post with comments.	f	1757494045677
3	226d7195-10a0-49f6-83d6-6edef754ba55	Write Dockerfile	Write Dockerfile with comments.	t	1769546319143
3	b73b7eac-927a-43ec-b782-81a3c2db2557	Review email template	Review email template before EOD.	t	1759187868861
3	46bc7a57-eed7-4c18-844a-4fa2912945df	Write blog post	Write blog post using TS.	t	1764905615176
3	3b16e514-2442-41f4-8eae-e40a52a1d2cc	Complete UI mockup	Complete UI mockup before EOD.	f	1771627890388
3	082ec085-e683-4866-9bfe-369c0a760286	Design unit tests	Design unit tests and document.	f	1778804153390
3	fcd9da7f-def7-496b-b5b2-395986ec0e5d	Design database schema	Design database schema with team.	t	1780396692154
3	11f6f9e4-b54c-4bbc-a3cf-de5ce98b3ea9	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1754265631678
3	73c82466-5ccd-4dcd-be3f-8bd8880eccae	Write API	Write API with comments.	f	1761532442994
3	7b1e4d01-a187-477f-97ef-1f557db6eb33	Review unit tests	Review unit tests with team.	f	1764507065917
3	e1c88d1a-cede-4278-9675-f7b62752d89f	Deploy email template	Deploy email template for project X.	t	1777131915237
3	26e85cbf-6091-4ec7-9f83-01a03a8aa2b9	Write email template	Write email template using TS.	t	1758535809296
3	96fb45ef-1b20-4469-bad7-97fab2105cd6	Deploy unit tests	Deploy unit tests in draft.	t	1757927528722
3	3986690f-c8f8-4765-8d94-163f003c084c	Review unit tests	Review unit tests before EOD.	t	1763278821297
3	49cbddef-50f9-4dca-a0ee-a14db5c95442	Plan UI mockup	Plan UI mockup in draft.	t	1771238956327
3	d12e32ca-2c56-401f-9b05-3e4f6847491a	Test blog post	Test blog post in draft.	t	1765100921503
3	c9f14917-a739-465a-94dd-39acdcf80b71	Test email template	Test email template before EOD.	f	1769524072629
3	53c7eb67-7168-4ed8-9a2d-f05fcc558162	Complete login flow	Complete login flow using TS.	t	1769347440668
3	3b8ae618-3fa5-4114-a3e3-8335773956c5	Complete unit tests	Complete unit tests for project X.	f	1759127788391
3	ae1c9004-4f43-4743-8d3f-0041158a4615	Complete database schema	Complete database schema with team.	f	1774237655993
3	52d3503b-f08f-4df0-8d65-be4a2fbb432a	Complete Dockerfile	Complete Dockerfile and document.	f	1764577595566
3	a3821d22-61e5-4698-a07c-d7e3b8d0f1a1	Complete database schema	Complete database schema and document.	t	1773812477379
3	be81e701-dfc0-4dfa-a322-8cbfcc5c25ee	Test email template	Test email template with comments.	t	1779777773053
3	b8eef741-8f69-418e-a51d-7ca860e607f0	Complete UI mockup	Complete UI mockup in draft.	t	1776331517317
3	c98a2d53-8851-4098-880b-4304d0f4dbf4	Design Dockerfile	Design Dockerfile with team.	f	1757460586871
3	5b3bc100-8d0d-4cbf-a6e4-3a704e09eade	Design Dockerfile	Design Dockerfile before EOD.	f	1767101827586
3	e8ba3a5c-b7f9-49c8-95be-a93b35b7e115	Plan email template	Plan email template in draft.	t	1769596036723
3	03570dbf-80a2-491a-858d-2af5c806a6ba	Fix login flow	Fix login flow for project X.	f	1770378449672
3	7342eca7-7c94-471e-b156-cebc88ee6302	Test database schema	Test database schema for project X.	t	1762033603770
3	ed681529-2fb3-4941-ae60-e0cbff895424	Complete email template	Complete email template and document.	t	1778511132856
3	7be5d2d7-8454-450c-9b3d-c1cc523c9cd6	Test Dockerfile	Test Dockerfile and document.	t	1763849718558
3	359661c4-1778-40c9-9a8c-0f2d6dcdc372	Test API	Test API using TS.	f	1752330620831
3	a2becfda-b193-4cfc-b0f1-cfce86b49f60	Test email template	Test email template and document.	f	1778719286270
3	ac7fbd12-b7ff-4ab8-844b-fd6042194d37	Test login flow	Test login flow before EOD.	f	1757164719579
3	f7e75dc5-ee14-4fde-a792-d05a600435ff	Design blog post	Design blog post in draft.	t	1764770505429
3	da14a108-9119-4ca7-804b-ba7ebc32ceb9	Complete blog post	Complete blog post with team.	f	1755487626642
3	48f44da3-87ad-4a6b-9fb4-21dd950214d4	Plan database schema	Plan database schema using TS.	t	1765285163987
3	2a09926b-d4b2-47bc-add8-34e8b64858b5	Complete login flow	Complete login flow and document.	f	1760691161561
3	76b7894f-71fc-4e96-8775-241a690de4d1	Fix unit tests	Fix unit tests and document.	t	1755897681638
3	f4abef14-444d-4d70-81a1-e5819f8abbfe	Write database schema	Write database schema with team.	t	1775906792117
3	69aad387-acb8-4dcc-b47a-289d48d4f023	Deploy UI mockup	Deploy UI mockup using TS.	t	1758993941165
3	e86b481b-4dd7-4b79-aaae-4c523406b04f	Review UI mockup	Review UI mockup in draft.	f	1758195193528
3	9c26755e-1a99-4142-b8b8-9966ff7c418d	Design email template	Design email template for project X.	t	1770636771938
3	bb5ad2fa-d1e6-4333-a754-47176a63de7a	Plan UI mockup	Plan UI mockup with team.	t	1764854275314
3	51218da9-9e37-4076-ab0b-ea2fb91c12fb	Design unit tests	Design unit tests for project X.	t	1765174870704
3	03f0bbf0-b849-4c96-b587-f167aa0be089	Design email template	Design email template in draft.	f	1766776197306
3	f00940b4-1bf7-4e08-8fc3-60c61f6d6c61	Design Dockerfile	Design Dockerfile for project X.	t	1778241836694
3	72048fb0-b9a0-4c7f-97cf-885e1531379c	Fix blog post	Fix blog post using TS.	f	1756581559188
3	bcd3c21f-bdc7-4eba-bb03-d1d8baddfc66	Deploy email template	Deploy email template before EOD.	t	1755909890300
3	52c3485b-aea7-45f3-a98e-ac790bf7213d	Test API	Test API with team.	f	1773300131765
3	280e1d2a-4f70-4ce9-a5a9-441b2f5a9641	Review unit tests	Review unit tests for project X.	f	1766741273737
3	3977e509-c218-4d5c-bd2b-bb285614115d	Design blog post	Design blog post before EOD.	t	1770117966807
3	2dc0513a-a924-4ed2-9732-5a84bf380d20	Deploy login flow	Deploy login flow and document.	f	1780900672213
3	54561042-74ab-4bad-90c5-6c32eeaeb6f6	Complete database schema	Complete database schema with comments.	f	1773272680544
3	74a355c7-f578-4fde-91bd-f5ada074e1ab	Plan API	Plan API using TS.	f	1766772198703
3	0f7d59ab-8a65-46b7-a1af-7fef8ab09d8e	Design UI mockup	Design UI mockup for project X.	t	1768356924910
3	ebd6bb36-6d8d-48c4-b200-4b9467d6cec8	Test database schema	Test database schema with comments.	t	1760935469550
3	245936fe-cd51-4e5d-b0e1-b839e717dc6c	Plan email template	Plan email template before EOD.	t	1778380399676
3	677b0ea7-97b5-40c8-8468-e10b88622b45	Write API	Write API using TS.	f	1752187061365
3	00fcf065-c76a-4fa7-9933-d175f26bcfdc	Deploy login flow	Deploy login flow and document.	t	1751484936278
3	179aaafb-1542-4691-970a-c3cfc985065b	Complete email template	Complete email template with comments.	f	1777742133767
3	37a7720d-47f0-4cc0-9db6-434675baf797	Review login flow	Review login flow with comments.	t	1757293889197
3	9ae4103d-f3c8-4caa-97b2-34bd57dc524a	Deploy database schema	Deploy database schema with team.	t	1761032440680
3	fb1afc51-c1d5-4b4b-b908-5ed4827b3287	Plan unit tests	Plan unit tests for project X.	f	1766593506704
3	5bb559fc-b078-4be8-b6a5-3f5b29297645	Write API	Write API for project X.	f	1774254621209
3	c60a501f-0dd9-4890-a421-5639a80c1533	Write UI mockup	Write UI mockup with team.	f	1764071142255
3	0a4cc52f-a1e2-44e3-8faa-c3b6022763c3	Deploy email template	Deploy email template for project X.	t	1776032028680
3	6e017f1c-48a2-43ed-8bb4-2510a43b8b26	Test unit tests	Test unit tests using TS.	t	1768467535978
3	b264c721-0a58-4a6b-945a-c342b841e39e	Design database schema	Design database schema for project X.	f	1757077039078
3	46397660-bc3a-4472-b193-f6a0fa80dc02	Fix unit tests	Fix unit tests with team.	t	1753321348576
3	a9dcd8ad-ae82-4980-8464-4e912445e08f	Fix unit tests	Fix unit tests using TS.	t	1776202674007
3	534f8dd4-4865-4542-a25f-6211c9efce90	Review login flow	Review login flow in draft.	f	1762372580133
3	35381098-062c-4222-993a-43dc7323d7de	Fix blog post	Fix blog post before EOD.	t	1778862302594
3	424d4d9e-c0bf-4ee7-83bf-a0f4fee5a3d7	Complete Dockerfile	Complete Dockerfile using TS.	f	1752068454007
3	9c464ade-2f3e-4d72-9cb7-40ca4646d0f6	Design UI mockup	Design UI mockup with comments.	f	1771364437718
3	2ee2bbf9-4973-4fe5-90d1-f0f5f9292abe	Design blog post	Design blog post using TS.	t	1755528457750
3	9e7ad949-588e-44d3-ba13-71071e15ee18	Deploy UI mockup	Deploy UI mockup with team.	f	1767369709558
3	5deb2b4e-9512-41e1-9073-144861608f48	Test database schema	Test database schema using TS.	f	1780299830447
3	d8a7726d-e5e1-48eb-916a-50d5ab2f1c39	Deploy Dockerfile	Deploy Dockerfile with team.	t	1767812113752
3	6502b104-4ecc-43b7-9b1c-25b18cebfb27	Complete login flow	Complete login flow for project X.	t	1770059856793
3	369f0727-b35a-43a3-8b04-d644a64d487e	Plan unit tests	Plan unit tests before EOD.	f	1762884897756
3	4b74570d-a5b9-4afe-9ed3-82796eff089e	Plan login flow	Plan login flow in draft.	f	1773675404178
3	db7edbbd-953b-4785-b0a7-7fd176e64b52	Fix Dockerfile	Fix Dockerfile with team.	t	1775730943070
3	28b0deac-cf49-49e0-a651-b289038195e4	Plan database schema	Plan database schema with team.	f	1766349362910
3	79fc645d-d33b-4a88-9038-05fe735a8916	Fix API	Fix API using TS.	t	1777767056237
3	0938fe7b-2630-4ee0-bd97-bcd8892e5a99	Plan unit tests	Plan unit tests using TS.	f	1757010329435
3	61e34e13-3ea8-4741-84d3-f0bba95976ad	Test email template	Test email template with comments.	f	1778444063460
3	8e637671-221c-4733-82d9-6d022274cee5	Plan API	Plan API before EOD.	t	1776071759213
3	8f8942df-c615-4a24-90e1-6b3f2a3a8b15	Fix database schema	Fix database schema using TS.	t	1766220703434
3	138fd792-78d1-4629-8740-830735fd5d4a	Write Dockerfile	Write Dockerfile with comments.	t	1757778218255
3	2b65a52e-2ed8-4691-94ac-cd92aa7c25a3	Deploy database schema	Deploy database schema for project X.	t	1750408925501
3	d5f7f1c4-dc41-45b4-bf06-b9d317e8e662	Deploy blog post	Deploy blog post before EOD.	f	1765491752581
3	18e00407-1692-4189-8d6e-c3d42654c873	Test UI mockup	Test UI mockup for project X.	f	1750550645304
3	99b4837e-0df2-4d76-88a0-e95849d84726	Deploy unit tests	Deploy unit tests for project X.	t	1756365931619
3	a952593e-2e86-4199-a6a6-74761d5eebf4	Write API	Write API in draft.	t	1766273303348
3	6bf4ce3b-b068-4f36-9b4f-b7633b465f33	Design login flow	Design login flow in draft.	f	1759516814058
3	f7630d38-e077-4015-b526-401aa9332fdf	Complete API	Complete API with comments.	f	1775086160134
3	119967de-df51-426f-be61-a4fcfcc7df44	Design Dockerfile	Design Dockerfile in draft.	t	1768550239116
3	ab7b29e9-682f-4dc2-8157-30180c14a55b	Complete email template	Complete email template before EOD.	f	1754814412018
3	d2f29444-4a19-49e9-960d-5b249c94695c	Test email template	Test email template using TS.	f	1755330469278
3	72062f74-fcc5-4b98-9baa-860416b03ab3	Design unit tests	Design unit tests with comments.	t	1760163915597
3	fb79738f-fede-4687-a16b-3ff2b9ef4b83	Deploy database schema	Deploy database schema and document.	f	1757720263829
3	adf5023d-4731-44e9-9ecc-658eccb0bd7f	Review Dockerfile	Review Dockerfile with comments.	f	1781590523937
3	2f3735dd-bc79-4fae-8655-076a143e7e4f	Deploy Dockerfile	Deploy Dockerfile with team.	f	1768765680722
3	76d42745-d294-433c-aaf4-021e76e21965	Write email template	Write email template in draft.	f	1775143343117
3	b63fb68f-4fb0-48ba-ab1a-730870adbbe9	Test unit tests	Test unit tests using TS.	t	1766830226278
3	a0b7ae59-5c1a-406e-b8d4-2af65bcfe650	Test UI mockup	Test UI mockup using TS.	f	1758526849023
3	8d6d6496-e977-450b-a0d6-90c0aa9f51fb	Design database schema	Design database schema before EOD.	t	1752865393414
3	cdea0788-bbbe-4439-aa5a-44dec05424ba	Fix unit tests	Fix unit tests before EOD.	f	1752611182761
3	03d94729-4cc0-401d-afd0-726babadd5b8	Plan unit tests	Plan unit tests with team.	t	1776943497316
3	7d3d5462-26ab-489d-a713-c5df19c179cf	Review unit tests	Review unit tests for project X.	t	1766534191567
3	46519f0e-97cc-4c09-a2a9-218cc71bd1d3	Plan unit tests	Plan unit tests with team.	t	1758432724216
3	04b1ec13-7ffb-49fc-ad41-269a7564b842	Write email template	Write email template in draft.	t	1753631226715
3	b268085b-5f37-490d-ac89-cfd56eaec6a5	Design email template	Design email template using TS.	t	1761732597913
3	0ee2a8e2-2b2b-4691-bf5c-106aa6c15547	Design UI mockup	Design UI mockup in draft.	t	1754453680228
3	908dfb08-0413-4203-a480-5a854859ee2a	Write API	Write API before EOD.	t	1770440092854
3	b816522c-5fd9-47f5-8776-0e105200750a	Deploy email template	Deploy email template and document.	t	1750244632450
3	67cf0fcd-510a-483e-9cca-72b588f8ae85	Design database schema	Design database schema in draft.	f	1770118518819
3	a0a7102a-7a2d-4b28-be74-98fe1462f069	Design database schema	Design database schema with comments.	t	1768612150267
3	08659459-3a24-4731-91b9-af48384fe292	Plan Dockerfile	Plan Dockerfile for project X.	f	1776117273909
3	3879e9ad-1477-4dd0-8551-bfe87a5a96c1	Design API	Design API using TS.	t	1751623833675
3	e75d1cd5-8336-40cf-a1ea-4c92f6c839dd	Complete unit tests	Complete unit tests and document.	f	1774018885566
3	118e334c-f32f-40b1-90bd-1dbb4ef83e33	Test blog post	Test blog post for project X.	f	1777803140943
3	20ec8da4-118e-437c-a241-47adacda0ada	Review unit tests	Review unit tests with comments.	t	1759602601647
3	f2c8685a-0f8a-42fc-81ca-587cbae44f03	Write email template	Write email template for project X.	t	1761752859273
3	27dd3627-a5de-4237-aeb7-c37639f45f6d	Complete database schema	Complete database schema with team.	f	1762962242150
3	2b73ae9f-a3e6-46a3-b6b4-6c629a55baa8	Write email template	Write email template for project X.	t	1750312858759
3	3c0d030a-4395-4cc5-ba79-7725b228124d	Deploy unit tests	Deploy unit tests and document.	f	1775036441333
3	543d788d-12a1-465e-993b-78f55c577e6e	Review login flow	Review login flow for project X.	f	1759735994697
3	5c194eae-31d0-41c9-95ca-14b597bc5a4d	Complete login flow	Complete login flow using TS.	t	1756270383014
3	617cb632-892d-4811-b4ae-e1e04098a2fe	Plan API	Plan API for project X.	t	1774042873017
3	83818be0-6344-4b19-b9b8-2dbf3b740b24	Review API	Review API with comments.	t	1766096112634
3	4dfa6def-e6dd-4863-8108-af879e3cc812	Plan Dockerfile	Plan Dockerfile with comments.	f	1778271521891
3	8c0333e4-2840-4702-afdb-cbc6a59ee687	Plan database schema	Plan database schema in draft.	f	1776436438444
3	aa3bf67c-0133-43dc-917f-cb0a1620fd5c	Review unit tests	Review unit tests for project X.	t	1778612674890
3	a46f41f7-38cb-466f-81f7-f35ba0bea754	Review Dockerfile	Review Dockerfile before EOD.	f	1761228670035
3	93801410-8f3a-4a80-8a40-6551893cad9e	Fix API	Fix API before EOD.	t	1755623392036
3	ee46db01-daf3-4e87-b0e4-86dad95a0da8	Deploy API	Deploy API before EOD.	t	1754367753716
3	5cd4b65a-e06e-4503-871f-7cf0c2e474f2	Design UI mockup	Design UI mockup using TS.	f	1752037596314
3	1e0c818c-f148-4245-ad52-f477d6a1b119	Fix unit tests	Fix unit tests before EOD.	f	1780980992435
3	6e71f002-bcbb-4167-9199-d6236d8ada29	Plan email template	Plan email template for project X.	t	1755470530562
3	a2dc5a46-62ef-4f2b-ad0f-efdd9d16f980	Complete API	Complete API before EOD.	t	1778263935445
3	68559001-0fe8-448b-a3fa-c6f4cc22b73c	Plan login flow	Plan login flow and document.	f	1759135265093
3	e73e45e5-346c-4b0f-b3d4-0f982aa75a04	Complete unit tests	Complete unit tests with team.	t	1771206154315
3	54363456-0012-418d-8975-c8e6d182ca11	Deploy Dockerfile	Deploy Dockerfile in draft.	t	1752432773842
3	2186fa45-8caa-4aa7-9f36-3ba18c7f42b2	Test email template	Test email template before EOD.	f	1773768327965
3	68bc2c99-6b22-4768-831c-7ced24e70018	Test API	Test API before EOD.	f	1772267209825
3	be6fc519-58d9-49cc-b40d-958ddfdb7176	Plan unit tests	Plan unit tests and document.	t	1772548073293
3	2d9b9fa7-b2f2-4a7b-b52f-335476be9592	Test database schema	Test database schema with comments.	f	1769506454814
3	49a80883-83d2-4a07-bcef-060ad376534f	Test Dockerfile	Test Dockerfile and document.	f	1765090067308
3	8d93a74b-cf6c-43d6-a0a2-e32c7aae07d2	Complete database schema	Complete database schema with comments.	f	1777232680319
3	f3a95b43-ea98-4160-8ccc-a51ff05f2e95	Review Dockerfile	Review Dockerfile using TS.	t	1768830760729
3	3bf8e59f-f206-4f5a-a0cd-aeeb3fcbfe99	Write unit tests	Write unit tests for project X.	t	1779671550655
3	9d61c188-5d28-47ae-89ec-d21b357b523b	Write unit tests	Write unit tests with team.	f	1762345654007
3	bcd7cc56-8179-4398-9b12-22d0c2e0f7f1	Test login flow	Test login flow using TS.	f	1756231597287
3	492e28d5-72e6-4974-9e7c-cbdf01d8416c	Design email template	Design email template with comments.	t	1766670216328
3	74c2bd24-5660-4578-a247-611b1d37616f	Deploy database schema	Deploy database schema for project X.	t	1763084167509
3	f06f9d31-e108-4c2f-972c-ba7700bb502b	Review blog post	Review blog post with team.	t	1762648962758
3	b05d1315-6920-475c-8303-1ca819d42c0a	Plan login flow	Plan login flow with team.	f	1779202874534
3	cb5748eb-24b7-4f4c-a84d-746cdd0b29d7	Test blog post	Test blog post in draft.	t	1781082591640
3	b2ca3e63-c085-4b08-9e5b-c572664f0b82	Review email template	Review email template using TS.	t	1760259678692
3	0aa24eb2-2c9c-4561-ba07-187ed46b91a0	Plan UI mockup	Plan UI mockup for project X.	t	1756470412063
3	59fdbab1-4dea-4d24-9e5d-ae1fc5dfce64	Design database schema	Design database schema in draft.	t	1754030849717
3	299f2610-6401-4efc-865e-615c88c266dc	Test unit tests	Test unit tests before EOD.	f	1765512133486
3	a4ed233b-b587-415e-9caa-3867ec38ff8e	Plan login flow	Plan login flow and document.	t	1757852370010
3	39b63fad-e69d-4d2d-adfc-8339325ed8e6	Fix API	Fix API using TS.	t	1776000943266
3	a18fb043-c174-46de-a0b7-a68f34367546	Test unit tests	Test unit tests and document.	t	1754997245633
3	18b29599-078b-43d1-9e0c-a4846397335f	Test API	Test API with team.	t	1768271572330
3	0f7856ed-ad58-4711-9b08-9462b581c99a	Deploy login flow	Deploy login flow and document.	t	1756636426874
3	71f27faa-9d31-465b-a596-4da459b7af2b	Review UI mockup	Review UI mockup before EOD.	t	1766421334733
3	a631d1c0-e6bb-4fb7-b893-bb97af79a363	Review API	Review API with comments.	t	1754527023031
3	1c4071c2-1e67-44c7-84f1-2f0406e4757a	Complete API	Complete API in draft.	t	1761020346694
3	bdb33a48-017c-4db9-8574-1c7ec37626a6	Review email template	Review email template with comments.	t	1755423009641
3	d3910348-cfad-48a0-a873-c877ef2a171b	Complete UI mockup	Complete UI mockup with comments.	f	1756691416436
3	7afc5424-e7c2-4da9-ae6d-cfeba2b8a1c4	Design Dockerfile	Design Dockerfile in draft.	t	1752322400791
3	d72eb990-4204-4e96-9687-2d588bdc1142	Plan blog post	Plan blog post and document.	t	1777603020375
3	78448966-b495-4083-9d5c-d56c6575a507	Write login flow	Write login flow and document.	f	1772920772639
3	c135f235-2efa-49da-9d3e-ecc03ef3d08a	Plan API	Plan API with comments.	t	1762988147607
3	c6b380e3-9a8d-44ad-8127-046fc8510eed	Fix unit tests	Fix unit tests using TS.	t	1777538413963
3	ea06414f-7a54-406f-96f5-eee984d62f52	Deploy API	Deploy API and document.	f	1776896495727
3	58bc4f92-1ac0-4123-bd11-5a48de29b8e7	Test database schema	Test database schema for project X.	f	1776838548591
3	4dc9d1df-a591-4012-8bcc-5370eeed30de	Complete login flow	Complete login flow before EOD.	f	1769032590258
3	63d0072c-3b5a-4e47-b3b7-1aa476999e39	Test database schema	Test database schema before EOD.	f	1768197193881
3	6ef99c25-90cb-41f7-a06f-19fd18840555	Deploy UI mockup	Deploy UI mockup for project X.	t	1758220073969
3	a42628e2-eed3-4f6e-aa64-3befc5963676	Plan unit tests	Plan unit tests before EOD.	t	1772334669254
3	82a436ff-fa90-4c5b-80f3-2c540eba14bb	Test UI mockup	Test UI mockup in draft.	f	1764239801041
3	e6c38e59-6057-4d4e-ae89-ba83f5c9d319	Deploy unit tests	Deploy unit tests with comments.	f	1753215685100
3	bcb405d3-6a20-441a-bb4b-d69874988eb3	Write unit tests	Write unit tests for project X.	t	1764290727529
3	896281bd-c21e-4d92-b585-142511a8f764	Plan database schema	Plan database schema using TS.	t	1770280773630
3	25a2be32-f034-4dbb-b712-d6fc24dee6d9	Design API	Design API with comments.	f	1765183717913
3	eadef3b2-f99c-468d-ab36-a12367f97238	Test API	Test API with comments.	t	1767003846259
3	fb7ce6b1-6adf-4f00-b0f3-cba16a960493	Test API	Test API for project X.	f	1760906605896
3	ab65d80e-cfec-4f16-bd27-28469097ad68	Design Dockerfile	Design Dockerfile for project X.	f	1767262712527
3	1fa9b66a-9e3d-492a-aa69-491a946e5c8b	Test API	Test API using TS.	t	1773848571789
3	c24fa8b8-ae0b-4f42-8389-1714b34e53c0	Fix UI mockup	Fix UI mockup with comments.	t	1780398768832
3	5341c9e4-7758-43bc-a9a8-17ee5953f9e2	Test Dockerfile	Test Dockerfile and document.	f	1764060668622
3	7b421de4-c8c3-4160-8920-9f36989e3171	Review UI mockup	Review UI mockup with comments.	f	1772802845397
3	1424a0dc-e296-4987-ba64-fccaf913efe5	Plan Dockerfile	Plan Dockerfile with team.	t	1756418674070
3	87beb28b-3f7f-4924-a0b7-9957867e83f1	Review Dockerfile	Review Dockerfile using TS.	f	1759275232413
3	9ed0ec5c-30c8-402a-8167-3876f602d1fe	Design database schema	Design database schema with team.	f	1776051280642
3	58cb78ae-6765-497d-ad66-18e6bd91fb03	Plan UI mockup	Plan UI mockup with team.	f	1761694855108
3	e6346681-e800-404c-8693-7e56e9f008e5	Review Dockerfile	Review Dockerfile for project X.	t	1780787725463
3	f311f80d-0ce8-40e7-b7bc-9e209986c9d5	Plan API	Plan API with comments.	t	1760123790415
3	ea5130a4-4818-4044-a6e1-8af70bf21ec2	Review UI mockup	Review UI mockup for project X.	f	1767074193423
3	4e311606-6549-4a3a-9c3c-12275eb27393	Review login flow	Review login flow for project X.	f	1771858654432
3	593f7b74-3709-454d-833d-ecae6aae2449	Deploy API	Deploy API using TS.	t	1753752656869
3	f98e7e3f-e325-4849-9813-baae5f82507f	Fix Dockerfile	Fix Dockerfile before EOD.	f	1753733716482
3	4268886d-695c-4e88-acf5-4cf3830628d7	Test email template	Test email template using TS.	t	1773138809347
3	cd6e4b51-2f02-4875-a797-b346d2dcc625	Write database schema	Write database schema with team.	t	1761301864707
3	e9181686-53ee-4b2b-8cd0-3ab3774e2501	Complete blog post	Complete blog post before EOD.	f	1772918892073
3	2758a0c4-f4f9-4589-8429-29f80f2b4252	Test blog post	Test blog post in draft.	t	1775659349814
3	a844fcdd-4e81-46dd-879c-702e4bd6dacc	Plan blog post	Plan blog post in draft.	t	1773582628360
3	f92ab8ac-a653-4a0e-802e-f0e393a54b69	Review Dockerfile	Review Dockerfile and document.	f	1772465795217
3	fb27494d-c1a3-4203-82f1-2f86e4237db7	Fix login flow	Fix login flow for project X.	f	1754603598420
3	d6f0869f-5cc5-47be-b6e1-8e96d08e9c56	Review database schema	Review database schema with comments.	t	1755541761301
3	b9384cac-c039-47df-ac9c-f64bea9ff19d	Deploy database schema	Deploy database schema for project X.	t	1754681480257
3	e0e32c0c-74cd-4a6f-9f4b-74c16ec9b3e4	Test API	Test API before EOD.	t	1766548119242
3	1d937cf5-ca77-41a7-903c-c0f070c3787e	Fix email template	Fix email template with comments.	f	1780282127236
3	2a6918ba-5746-494b-a46e-dcf43f3fa38a	Complete API	Complete API for project X.	f	1757002589830
3	5b189f92-3797-4f0c-88c6-6c838f92d82e	Complete blog post	Complete blog post before EOD.	f	1781435229010
3	d2119b22-4dfc-4635-b2a2-94a4013e747b	Test database schema	Test database schema using TS.	t	1769891425692
3	ddf52fca-c3d5-49d2-b5d8-9998062abc2d	Test database schema	Test database schema and document.	f	1769544189750
3	3e207309-0148-4d4b-85f8-ce4f828a6d13	Design blog post	Design blog post in draft.	f	1754478218671
3	23a8f44c-73c1-4341-96d5-936ae26ec297	Plan unit tests	Plan unit tests with comments.	t	1765275568426
3	dbb66326-4e17-4ed0-b330-3f0e73ec431a	Complete blog post	Complete blog post before EOD.	t	1760673455993
3	dabc892f-ca1f-46d3-9518-43d4010170d4	Deploy login flow	Deploy login flow and document.	f	1774495377845
3	fcab2637-4c2c-46dd-ab74-77cb889b92a9	Fix blog post	Fix blog post before EOD.	t	1764693163007
3	65ef2a8a-c951-499f-8dbf-14a4d5888201	Review Dockerfile	Review Dockerfile with team.	t	1767636906931
3	b304db75-f807-4f21-8639-60ad1a9025e1	Test Dockerfile	Test Dockerfile before EOD.	t	1777648808247
3	807cb766-1384-488d-8ddf-1fbd0cd5e0e5	Test login flow	Test login flow with team.	t	1767856303875
3	901b9d37-2696-4d80-8178-c6f02b0f387b	Review email template	Review email template and document.	f	1758283218977
3	e8fe7157-2a97-407c-9047-dc2a755b2d65	Review unit tests	Review unit tests in draft.	f	1762717975762
3	ce9575d9-4609-4b91-8c9f-28f0207e5625	Fix email template	Fix email template with comments.	f	1781235248751
3	12aded3b-1acd-4986-99a3-1ccda725496a	Write unit tests	Write unit tests and document.	t	1764198540595
3	35247bb6-fee6-4c40-87de-6f386daa273c	Deploy login flow	Deploy login flow and document.	t	1771164088148
3	c99ade52-5591-447a-840f-90bed8a6aa73	Fix blog post	Fix blog post using TS.	f	1764115847103
3	e1db8db3-6432-469f-90ba-4bed7ccd7892	Deploy UI mockup	Deploy UI mockup with comments.	t	1776470433420
3	1b6464af-8c6b-45ad-81c0-15b0944d9831	Test blog post	Test blog post with team.	f	1767621893991
3	d90a0828-0d00-454d-a092-d99f3f527070	Plan email template	Plan email template with comments.	t	1773667009522
3	c930cc87-d583-4d49-8bb0-ec4f728ca772	Fix unit tests	Fix unit tests using TS.	t	1759860077304
3	28999f71-5b3e-45e1-970e-fdd5e28334b5	Write unit tests	Write unit tests using TS.	f	1762504701847
3	feae6e2a-4612-430d-a942-289aae0e2e5e	Design unit tests	Design unit tests using TS.	f	1763242631302
3	32269a9d-a4c3-4a3e-8237-439adf3800f1	Test blog post	Test blog post using TS.	f	1762423643690
3	d175af68-5d4f-4e3d-85cb-465a137706a6	Test UI mockup	Test UI mockup and document.	f	1766267450404
3	008cfe2f-2fb6-48c8-88e7-5ca8ee5988c4	Review API	Review API using TS.	f	1751283060926
3	da1ba883-433e-43ae-ab74-be371a80a8d9	Write API	Write API with team.	f	1762324727578
3	8c767299-8a84-4745-be32-06b84211ea19	Review UI mockup	Review UI mockup with team.	f	1758643923028
3	40d91d4b-1883-499d-a846-10becc9668a8	Design API	Design API in draft.	t	1774172008804
3	3483cddd-177f-441d-9b9f-374bad6df555	Write unit tests	Write unit tests and document.	t	1769727184780
3	f5be1e49-b4c8-4be9-bb2c-c0f6e7a7ea18	Review API	Review API with team.	f	1762937646120
3	8438adf7-705d-4e47-9df5-1c4ec44a9fa8	Plan login flow	Plan login flow for project X.	f	1777488676921
3	2347f7c9-ce6e-401f-87c1-9e2c28405e73	Fix unit tests	Fix unit tests with team.	t	1781096639682
3	936e71f4-05a5-434c-9ee0-f87482070132	Review API	Review API before EOD.	f	1775785600130
3	f5aa4504-6bba-4621-a2d9-95963b9166f8	Review login flow	Review login flow and document.	t	1777489407453
3	7a877f28-896f-4f7d-9660-42339ee5f1da	Write login flow	Write login flow using TS.	t	1759391080781
3	92525fbb-1d0c-4c0d-adbf-77c9e712aeca	Write login flow	Write login flow with team.	f	1777027514723
3	d463c2bf-4cd0-4e3a-b6b8-37cdfc3d2c3f	Test unit tests	Test unit tests for project X.	f	1763501508880
3	d80001c9-3584-4c61-bb6c-82e5c5ef8c55	Design API	Design API with comments.	t	1771027954472
3	13eb741a-95d1-40de-adc4-fd6df7d5efa1	Fix email template	Fix email template with comments.	t	1771595190333
3	ef6a4c6c-58e4-4b97-8c14-4fc7897da210	Review blog post	Review blog post in draft.	t	1777012683449
3	c285c503-3616-4ed7-a462-bc01abb96793	Test database schema	Test database schema with comments.	f	1773301774494
3	c698cc10-c0f9-48af-a498-fb2a18082161	Plan blog post	Plan blog post using TS.	f	1751095467418
3	da7022e2-5d20-4188-8ea4-800473f3c4a6	Test unit tests	Test unit tests with team.	t	1756304686337
3	3318b4ca-c1e4-47df-8878-dfea77e95a88	Design email template	Design email template before EOD.	f	1754702285963
3	eb644f32-dd16-4874-93dc-8f7e80bb506f	Write API	Write API using TS.	f	1756202973962
3	15a64bce-3155-40ae-ac84-030a5005ffef	Fix blog post	Fix blog post for project X.	t	1761767125011
3	0c574df7-01d3-499d-b94a-23405d296301	Test UI mockup	Test UI mockup for project X.	f	1771987576763
3	e2f6f5af-80a4-4983-b6e4-fe9c2671cde4	Fix login flow	Fix login flow and document.	f	1780807661498
3	8c8249f1-064a-485f-a4f4-56816be9fae5	Review Dockerfile	Review Dockerfile for project X.	f	1750272478319
3	31589084-f009-4c37-9038-87c5ca4e6fea	Plan login flow	Plan login flow before EOD.	f	1755588353131
3	66c90bd8-08d9-4790-99a0-f64740a07191	Deploy blog post	Deploy blog post with comments.	t	1761196729557
3	6d1c0e0d-926a-401c-bf62-46474c455571	Deploy Dockerfile	Deploy Dockerfile before EOD.	t	1757225798035
3	84485178-ba36-47a7-8c73-1db7eab57651	Complete Dockerfile	Complete Dockerfile using TS.	t	1758921365385
3	bd3b112c-7a9e-4af6-aaf4-a64d08fa0462	Test login flow	Test login flow for project X.	t	1751288377105
3	3f57b167-bee2-4370-8cf7-88aacfab808c	Review database schema	Review database schema and document.	t	1756097123775
3	5266ddf8-aa34-4f7c-b3e8-38e303e6692f	Design blog post	Design blog post with team.	t	1755734373731
3	59d24970-f6fe-44b8-a891-62d0ef4791f0	Test blog post	Test blog post with team.	t	1773691145339
3	1e2a1480-bf6f-45bd-962b-b8d253d1b083	Complete Dockerfile	Complete Dockerfile with comments.	f	1768129094871
3	88008a51-effb-448b-a607-ca329ec02bcf	Test API	Test API for project X.	f	1763156495940
3	8c6f9014-41a6-40f1-a48b-240aabd79e00	Fix Dockerfile	Fix Dockerfile for project X.	t	1756562296092
3	5304bb63-69a7-4060-8016-6f924523e1fc	Review login flow	Review login flow with comments.	f	1778470424183
3	fb40106d-71cb-4cab-ac60-0186de7beaa6	Write unit tests	Write unit tests with team.	t	1776128840918
3	1e290d8c-3480-470d-b854-dc7fd4e2cfe5	Plan API	Plan API for project X.	f	1772614524708
3	e7ea4e76-364b-4026-a07a-c51da340822a	Test API	Test API for project X.	f	1755046367859
3	30cac011-b9f7-4e14-8d65-cece15801215	Design API	Design API for project X.	f	1769877918052
3	d5dd8747-5915-4a65-bfdf-aa44078ab2e4	Fix Dockerfile	Fix Dockerfile with comments.	f	1751975376446
3	9833f9e9-9cd4-41cc-81a9-86021ebc9d14	Design UI mockup	Design UI mockup with team.	f	1765034518987
3	84dbff66-fdbc-4c8f-8509-b9b5c1e8d113	Review Dockerfile	Review Dockerfile with team.	t	1754609172939
3	9de16bfe-5dba-41f1-9f18-378e0fc68c71	Complete unit tests	Complete unit tests using TS.	t	1763674337046
3	50145fe4-f879-41a4-80fb-48854c3e6e2f	Plan API	Plan API with comments.	f	1781335489290
3	7925afd2-b44c-476a-ad79-42df27c42d39	Deploy Dockerfile	Deploy Dockerfile with team.	t	1770541873814
3	42654930-b7a2-4c91-be2b-15ec20b321a2	Fix UI mockup	Fix UI mockup in draft.	t	1765084798186
3	4cd6c35b-9779-4681-8e74-6fdae3dbb436	Complete login flow	Complete login flow for project X.	t	1779158024039
3	770f9a2b-e9f4-48b0-b784-d453c990f392	Complete UI mockup	Complete UI mockup in draft.	t	1755722678800
3	4965fce8-13da-4c4f-b82f-56b5b17c4bd7	Write login flow	Write login flow with team.	t	1761791399702
3	60b30448-9145-4349-8864-8f0df9bdf1de	Write email template	Write email template in draft.	f	1780571931053
3	62e582f7-8096-4549-8edb-1ac8fbf8166c	Write unit tests	Write unit tests using TS.	f	1753474489859
3	8bbce7f4-c0fd-4beb-b038-0151b8fcdabc	Complete login flow	Complete login flow with team.	f	1781347745714
3	8d4e1657-2039-4ef9-82e1-e1c4ddd8c2ea	Review UI mockup	Review UI mockup using TS.	f	1765410710149
3	db2bbe6c-4014-46ba-9efa-e051ab090546	Design login flow	Design login flow before EOD.	f	1765049528143
3	7a7d1a87-57a3-4335-9e61-e56df0b1deea	Test login flow	Test login flow in draft.	f	1778000038953
3	808528d2-df10-495e-a8a8-0a009c74cd66	Complete Dockerfile	Complete Dockerfile with team.	f	1777958543412
3	77f876db-d11b-414e-89a9-49af6b388248	Complete Dockerfile	Complete Dockerfile and document.	f	1758903335764
3	c3459c9b-21fb-4dde-8f59-e88a6b6fe28a	Fix unit tests	Fix unit tests with team.	t	1776327323243
3	a908d1a7-67f1-4bde-8df3-df45b7241aa5	Deploy email template	Deploy email template using TS.	f	1772076835999
3	96d8f793-0dba-4e2c-a774-b03cf664e933	Fix Dockerfile	Fix Dockerfile using TS.	f	1769309409740
3	3e6c28cd-4cbd-444b-a51e-f0c1c9fa922d	Test blog post	Test blog post before EOD.	f	1766787873627
3	2cca2f48-22bb-45b4-84ad-68df6c055b49	Plan unit tests	Plan unit tests and document.	t	1751525842461
3	f55f0bcf-a597-4d26-b889-67a567501881	Write Dockerfile	Write Dockerfile for project X.	f	1772840879040
3	2a7a82e2-59ee-4b79-bb51-a9684136b976	Fix database schema	Fix database schema in draft.	t	1763189825761
3	fef524e7-59da-4662-81cd-4179ef8d2961	Deploy blog post	Deploy blog post and document.	f	1753830818324
3	7c6d39fe-c5df-4dc3-b173-7b9d49b76e2b	Complete login flow	Complete login flow and document.	f	1752581439496
3	d4a49dd5-6c57-436e-8363-0e8a168aaece	Write blog post	Write blog post in draft.	f	1765486086647
3	febd97c5-bebb-4e23-ad6f-667944cf15a9	Review database schema	Review database schema and document.	f	1756504898771
3	bc3a187c-f42f-4fbf-8094-cae1e7936dc8	Design email template	Design email template for project X.	t	1766316389904
3	d972d718-97c0-4ba2-b33b-817b2960a14a	Write Dockerfile	Write Dockerfile using TS.	f	1750615888633
3	c49071e6-6bbd-4742-ae0c-0576ed01e782	Fix database schema	Fix database schema and document.	f	1762074195901
3	651b382b-1511-4c26-bcb9-b14c56e98e1e	Deploy API	Deploy API with comments.	t	1755296677817
3	6fa6f191-ae01-440c-a09c-753523c42b77	Complete blog post	Complete blog post in draft.	f	1772747071639
3	6978cbde-5c94-4b00-b227-31ae8c7e0661	Plan blog post	Plan blog post with comments.	t	1758665746692
3	3643b888-888e-4279-88f3-f35c7f522518	Complete UI mockup	Complete UI mockup before EOD.	t	1764850086211
3	fcb4f1e6-8120-4143-91b8-fe1165def218	Complete database schema	Complete database schema using TS.	t	1772752118263
3	59520c1a-b856-4cf6-9fab-d3baf89c9870	Write blog post	Write blog post before EOD.	t	1780758430802
3	2a53989b-0115-4e1d-aa25-359ecad94afa	Design blog post	Design blog post using TS.	t	1758459346863
3	a6f27e5f-e6c2-4548-8797-a298148bd942	Design blog post	Design blog post with comments.	t	1779469173369
3	c1582d30-60df-47fb-8694-83fa0ba10b39	Review UI mockup	Review UI mockup using TS.	t	1757275677627
3	8e0024bc-07b0-4ab2-b0bb-70036191f41b	Review unit tests	Review unit tests and document.	t	1762283308803
3	b85f0882-e571-467a-9b4b-bbd754b4a398	Review email template	Review email template before EOD.	t	1764642724440
3	5c069c16-2ff2-43e6-a75a-7177139fd833	Complete login flow	Complete login flow and document.	t	1770855919722
3	2f285bc7-b422-4e00-a83b-569b3dc7aff3	Plan Dockerfile	Plan Dockerfile for project X.	t	1758266591972
3	18b8099a-834e-455d-902a-4df60dae7941	Deploy database schema	Deploy database schema in draft.	t	1764983571060
3	37d3afd0-001e-41b6-a7e9-44588fa53674	Review database schema	Review database schema using TS.	f	1764994619966
3	7896f586-8d7a-46f5-ac20-6c7ad64531e0	Complete unit tests	Complete unit tests with comments.	t	1776823691872
3	d8941ca9-a355-4bfe-8ff8-d4a6925b3b6d	Deploy API	Deploy API before EOD.	t	1776500717611
3	ad87dd08-ca84-4dbb-94b4-c65b3375b4df	Test Dockerfile	Test Dockerfile using TS.	f	1755429655987
3	56c0ba6e-0851-436d-846b-dbe42546171a	Plan UI mockup	Plan UI mockup with team.	t	1753804790407
3	eb2e6dbf-ae22-4280-b9f0-e1c1a49ea361	Design UI mockup	Design UI mockup with team.	f	1762658174178
3	0984cecf-7ddc-48aa-8986-0729ee93f54b	Test login flow	Test login flow with team.	f	1766907093086
3	de2957b1-073f-4314-96ee-d200e2e7e181	Plan email template	Plan email template with team.	t	1760789070729
3	116014e9-7d38-4eb6-a454-e5d05df26569	Complete blog post	Complete blog post in draft.	t	1767961481423
3	36b510fd-3955-47e6-9ba5-ce554bfe6912	Fix login flow	Fix login flow in draft.	f	1773667689899
3	d9714f07-14eb-4087-9284-3128b0c2789c	Test email template	Test email template before EOD.	t	1752777517723
3	64f02dbc-7853-4aa6-9206-a9ebdffe061b	Test login flow	Test login flow with comments.	f	1750516422929
3	0e91d54d-b587-4ef5-a9f5-a625ab576854	Review login flow	Review login flow with comments.	t	1755680602013
3	3bea4d05-de99-49c6-a9c9-52eedc40d2e5	Deploy email template	Deploy email template with comments.	t	1775584190887
3	9b45f9f8-4503-425d-988d-a671ad5309e7	Complete blog post	Complete blog post with team.	f	1780381105867
3	e309fea6-c884-46e8-bab7-89d7999ecdbc	Fix blog post	Fix blog post using TS.	t	1764816371434
3	b664e32b-1133-4a13-89b3-dd7ec48d20df	Review unit tests	Review unit tests using TS.	f	1756536973622
3	475823cd-c1c2-48e9-861b-4787b6ac6a2c	Complete email template	Complete email template with comments.	f	1779266147158
3	48608147-ba31-4925-be7e-52aacd334c8c	Design database schema	Design database schema using TS.	f	1759889440631
3	4ba364e1-20ee-464c-8fc1-3cb2afd30ee6	Write blog post	Write blog post before EOD.	f	1759322630642
3	3abed8df-2e31-4e6c-90da-2b820118b5b3	Deploy unit tests	Deploy unit tests in draft.	f	1759289903156
3	5365e94d-473c-4359-9fe2-65f2177371f1	Deploy email template	Deploy email template for project X.	t	1772457433799
3	7a9253ff-b7d9-43af-9075-16b5da8c06d0	Design Dockerfile	Design Dockerfile in draft.	f	1764319766253
3	39c0a689-5476-4d4f-8628-823f344b9df9	Test login flow	Test login flow before EOD.	f	1770467241571
3	3f3ffdba-308b-41e7-93b1-b849591aca60	Design UI mockup	Design UI mockup before EOD.	t	1775753651540
3	5e0a068c-e18f-4536-8bab-b1deed0b3ad0	Plan login flow	Plan login flow with comments.	t	1771435818319
3	68373f03-f84f-41bb-a8dc-7b75fbc29e28	Test API	Test API for project X.	f	1762190138788
3	e9a14f9d-0294-4651-8e98-66b1bb296bcd	Test Dockerfile	Test Dockerfile using TS.	f	1751152551835
3	59f72036-1f26-4921-a7c8-97bc956d646a	Fix login flow	Fix login flow with team.	t	1761104051061
3	4e8ca69f-2841-42bf-971b-5c5c9b75e3ba	Plan API	Plan API with comments.	t	1750519358170
3	81d20aba-db27-46a2-9899-6c5f8577db56	Design database schema	Design database schema using TS.	f	1776257402397
3	9de8b888-3a6a-4ab5-a6aa-84997315a4d3	Design Dockerfile	Design Dockerfile using TS.	t	1757255040355
3	cfb33726-8905-47a2-bfba-8c548106115a	Plan blog post	Plan blog post using TS.	t	1759970137592
3	70307b09-b948-4156-90f3-0133b33f5358	Review unit tests	Review unit tests for project X.	f	1759990360564
3	6594c3f3-676b-41f4-8405-038f7a450567	Fix Dockerfile	Fix Dockerfile and document.	t	1764543298427
3	7d54b77b-99fc-4cea-b6bd-af3b426ca25c	Review API	Review API with team.	t	1770782675498
3	40f6820c-cbd6-42eb-9029-0ca1a22581f8	Design email template	Design email template using TS.	t	1765890597378
3	55c02fd2-e98b-49d1-a9df-eb8c80b54623	Write database schema	Write database schema in draft.	f	1771349098396
3	81cbc781-5e3d-4052-88ee-a3d50091958d	Deploy blog post	Deploy blog post for project X.	f	1764269431070
3	354fc1ad-7d73-45d3-ba0f-b5333e835404	Plan UI mockup	Plan UI mockup for project X.	f	1757200232731
3	42293282-cf7e-4fc0-8f82-9fe132b44263	Write login flow	Write login flow with team.	t	1761945660561
3	7c08b8e9-7ba5-4494-a608-e9ba4076db77	Test unit tests	Test unit tests before EOD.	t	1768074922603
3	10786428-a91d-4e7c-9850-4e58b1b8cad2	Plan UI mockup	Plan UI mockup with comments.	f	1775810458731
3	7a81154f-de1b-4f49-924f-22c47f941701	Plan email template	Plan email template before EOD.	f	1754668258398
3	ccc6a7f0-3cf2-4769-939d-e211443e5424	Complete login flow	Complete login flow before EOD.	f	1767942105465
3	6e325e53-fe5f-4fb6-baf0-ee0fee2099bc	Deploy API	Deploy API with comments.	f	1753577974306
3	0a0bc148-a392-48f8-aa41-f1b0a28cd9e3	Write database schema	Write database schema in draft.	t	1758990192419
3	0b16fb70-3e5c-47c8-a397-59e6c89cd3d3	Test database schema	Test database schema and document.	t	1759861831662
3	043e27bc-f2a6-416a-ab43-35655ba6855d	Write email template	Write email template with comments.	t	1774330263546
3	b2db68f1-192f-469e-9672-2d8e8326790c	Complete unit tests	Complete unit tests in draft.	t	1761444015422
3	17f1611c-d201-4961-991f-76d38dd31533	Design blog post	Design blog post before EOD.	t	1780897821366
3	0c8f43f3-d322-4079-930c-836007a5f881	Test UI mockup	Test UI mockup and document.	f	1757030808162
3	e6137dca-c1e6-4416-97cc-7beba56874fb	Plan Dockerfile	Plan Dockerfile with team.	f	1750416629296
3	a60188cb-7861-4c64-9152-89349f27da55	Plan database schema	Plan database schema before EOD.	t	1757242256018
3	3d8d6905-5cc9-47f7-843e-3ed8f68bb44d	Fix database schema	Fix database schema with comments.	t	1750805302345
3	fe723c8b-13c6-4497-a396-88598c42cc2f	Fix database schema	Fix database schema with team.	t	1761823546894
3	19a89bba-68e3-4f77-8481-92bed66b055c	Plan UI mockup	Plan UI mockup before EOD.	t	1767862690267
3	6a41e5df-e53a-413d-bc48-e381c517325b	Fix Dockerfile	Fix Dockerfile with team.	t	1777133366616
3	0860a245-6504-4cec-a6d7-c65fa0be195d	Design unit tests	Design unit tests with team.	f	1771796448307
3	3ac81b52-9eb9-42e8-a5b3-a612eeb8b0c2	Design database schema	Design database schema and document.	t	1759470725222
3	5e5c58d3-627a-4ed7-a83d-4a2ab80027fa	Complete login flow	Complete login flow with comments.	f	1761254653451
3	7b3a99a0-26ee-45fd-8baa-69ab14d063d5	Plan blog post	Plan blog post with team.	t	1772399473372
3	87ef6ca7-7658-43a6-adb3-4d9faebe9677	Review login flow	Review login flow and document.	f	1757029940418
3	eddfa73d-c40e-4203-a33f-a1b80c8d1c8c	Fix email template	Fix email template with comments.	t	1775552228337
3	362f0eb7-ff72-4b32-8d69-ee06027b42ac	Review database schema	Review database schema with team.	t	1773447884702
3	c4552e8a-f917-4645-b7c3-74a3ba50ccb6	Plan email template	Plan email template for project X.	t	1759611905076
3	e35dd02e-8539-4668-b0a2-eff60ed8ea37	Deploy login flow	Deploy login flow in draft.	f	1766784866139
3	ade1c894-8206-41a1-9b00-41051c02af21	Fix email template	Fix email template with comments.	f	1781643423525
3	b19d059c-852e-4bd6-874f-a0020af47d28	Review blog post	Review blog post with team.	f	1762366756824
3	9363e049-6aff-470c-a1e1-af5df8ca06d7	Plan blog post	Plan blog post before EOD.	t	1763821429585
3	9cd592cd-2afe-4abf-82f0-4da14d436e52	Review email template	Review email template and document.	f	1762128333143
3	686d95df-c575-4a53-ade7-b7779d718b72	Deploy UI mockup	Deploy UI mockup before EOD.	f	1777741779060
3	8c176821-0b71-47ee-9281-232f4b5d2306	Deploy database schema	Deploy database schema in draft.	f	1756575910773
3	7b59a756-c530-4e45-a687-273f6fe2c0d2	Test UI mockup	Test UI mockup for project X.	t	1779635129575
3	96e2ee6d-9214-4194-b127-781369adc232	Write login flow	Write login flow in draft.	f	1765658050353
3	1ab007c6-542f-431c-a7c7-42f106fe12e5	Complete blog post	Complete blog post using TS.	f	1759992175436
3	6347f934-f263-4010-855e-91ab6632f59a	Write database schema	Write database schema for project X.	t	1773860297026
3	49b888d1-6532-432f-ab0e-53774eca9217	Design API	Design API before EOD.	t	1759812768180
3	10df9cd0-1997-4997-9b15-829a91ac7152	Test unit tests	Test unit tests with comments.	f	1768084998277
3	368b2d7c-c4e0-4d38-bc8f-3549b1a483a9	Fix unit tests	Fix unit tests before EOD.	t	1773814404150
3	73122987-042e-487d-9670-c1ff9e3422fa	Plan email template	Plan email template in draft.	f	1777287359712
3	63ee8ffd-4c36-4917-916a-96046dc1e1ce	Review Dockerfile	Review Dockerfile with team.	t	1764695803107
3	f47a6cd7-9457-4264-92a6-d9039231ad85	Complete email template	Complete email template before EOD.	t	1752837894170
3	9710e080-fa52-4f95-90b4-52ec79391bff	Write unit tests	Write unit tests and document.	t	1765668034913
3	b907df33-9ca6-4092-b00e-607ddb29595d	Design database schema	Design database schema before EOD.	t	1766984014677
3	74f4c526-a00e-4cc8-a199-d83d6509a957	Review blog post	Review blog post with team.	t	1772559732223
3	1388fc44-f6e6-49e5-b398-220d209393ac	Plan email template	Plan email template in draft.	f	1761911273627
3	21a7683d-9360-44d9-90e2-02e9fe6bda78	Fix unit tests	Fix unit tests and document.	f	1765836170852
3	0d6d6d9c-cc48-47d5-ba8d-20e6d57c9ad4	Fix API	Fix API in draft.	f	1755747037465
3	de0c332b-07b5-445f-aa82-ca43e6bc9f40	Plan email template	Plan email template using TS.	t	1770216511896
3	f8578ad7-6303-4615-a5f7-f030a5204388	Complete blog post	Complete blog post before EOD.	t	1781398475918
3	f42b3de0-bff6-439d-ae52-ba729f144d7c	Complete login flow	Complete login flow in draft.	t	1770381369561
3	b383cae5-ac1e-4ba7-b174-108231931614	Fix Dockerfile	Fix Dockerfile with comments.	f	1766563721282
3	57c2dc6d-153f-4a07-903e-13096653ce0a	Fix unit tests	Fix unit tests with comments.	f	1761702563333
3	88df9ffa-ee74-4cf9-bc97-fac4aa73f151	Fix Dockerfile	Fix Dockerfile using TS.	f	1758639750320
3	b16270d5-ef87-4ca9-8131-609802cce31b	Design login flow	Design login flow for project X.	t	1758566750675
3	4a4635e3-401c-41f4-af75-c854d01a14e5	Complete UI mockup	Complete UI mockup with comments.	t	1762531022722
3	3a6f1537-dd1c-44c6-807f-22fad02a79f3	Design login flow	Design login flow with comments.	f	1765873376249
3	8f1441a0-328d-41b2-acf7-12cdc7a0f10f	Review blog post	Review blog post in draft.	t	1774605143269
3	beb10a14-84b4-4e9d-972c-3c9bbe47b59b	Complete unit tests	Complete unit tests in draft.	f	1772147502007
3	8633d84d-736b-4b2b-9d26-a888e664948e	Write API	Write API in draft.	f	1777383804972
3	22bdd784-1fcf-42df-9d98-75b1eb3166d3	Deploy database schema	Deploy database schema using TS.	f	1778548446073
3	9164c265-7071-4c9b-8fc2-93fd0c18fff9	Complete UI mockup	Complete UI mockup using TS.	t	1771530583712
3	c812e91f-5d58-4264-8814-397a90b2aefe	Fix unit tests	Fix unit tests before EOD.	t	1773871132801
3	bf11d51c-b883-4ea8-bd27-c13a40970ca3	Fix API	Fix API with comments.	f	1767030041088
3	310190e4-73f1-463a-8915-2d657cce4fa7	Plan Dockerfile	Plan Dockerfile and document.	f	1757213584804
3	01c78253-ee7c-450b-8c83-3dff132359ed	Deploy unit tests	Deploy unit tests for project X.	f	1768744796255
3	ee071754-f22b-41f3-909b-6f34a7886091	Plan unit tests	Plan unit tests and document.	t	1781617295630
3	dc94d69f-8e40-4a67-bd53-e5ce4f2e3b74	Review email template	Review email template with team.	t	1777289445213
3	4cc92493-aac2-414a-b7d7-47da382bfc33	Design Dockerfile	Design Dockerfile before EOD.	f	1757611563382
3	ef8e8e60-27c3-47b7-869a-eaa068e900e3	Test database schema	Test database schema in draft.	t	1763109916980
3	0fb5e2ac-d24e-49f2-a5db-e1b2677cc5df	Plan UI mockup	Plan UI mockup using TS.	f	1776924983351
3	a0f5c496-8d93-44e5-abee-0fd910f466fc	Design email template	Design email template before EOD.	t	1766792330642
3	65145f66-e332-4b69-bc1e-3afdf0f9ad8d	Complete login flow	Complete login flow for project X.	f	1766307276595
3	271738bf-a60c-4759-b39b-56593dd8bbca	Test UI mockup	Test UI mockup in draft.	t	1761854194824
3	9f63f6d3-a8d1-477f-93cd-5307795b88bc	Test unit tests	Test unit tests before EOD.	t	1756935534583
3	2f21b282-914d-47ce-9257-c029e6aa1a47	Plan unit tests	Plan unit tests with comments.	t	1763051877757
3	f4f123c1-f983-434a-a793-71271d12406a	Write UI mockup	Write UI mockup in draft.	f	1759870878925
3	11b7a8e8-abad-4297-b17d-473e08b5f2d4	Plan login flow	Plan login flow with comments.	t	1763666211912
3	d49d2a79-0b54-4415-ae94-4d95e9b404de	Write login flow	Write login flow in draft.	t	1776174891470
3	107ba80b-5710-4db5-ae6f-cf002418b3d6	Design UI mockup	Design UI mockup and document.	f	1755031731587
3	aa89f385-4a2e-4666-8193-a823787c263c	Plan unit tests	Plan unit tests in draft.	f	1773185885607
3	3c489908-4af5-4e21-9acd-806d8fe12ecd	Write login flow	Write login flow using TS.	f	1765837901629
3	ba9bce39-a388-424c-bdd1-c74cbc594487	Design UI mockup	Design UI mockup with team.	t	1752764169444
3	9d52e434-45d2-4637-a933-92f14b0f9f72	Write database schema	Write database schema using TS.	f	1758593415777
3	777d5235-e892-49b8-bf33-81d8100d0c82	Design database schema	Design database schema in draft.	f	1779928489608
3	358856a8-ff38-4f25-9f11-b270cb940a7d	Design API	Design API with team.	f	1759643271308
3	10732777-2e31-444e-b608-84125a8cdb98	Review database schema	Review database schema in draft.	f	1772358718473
3	bbfe28c8-c2f1-4ff4-8b62-fc896ba472d0	Test login flow	Test login flow and document.	t	1764835317988
3	c16e5a79-9126-4427-99de-b16cf786f5de	Plan email template	Plan email template with team.	t	1753063178488
3	f9732ceb-2918-42bf-a6bc-29048d78f2f9	Deploy blog post	Deploy blog post in draft.	f	1766900416589
3	7879d1e7-fd65-483e-b2c6-b358f706aeff	Complete Dockerfile	Complete Dockerfile before EOD.	t	1765787610537
3	c1620f50-0782-428d-989a-afcb3e61c966	Plan Dockerfile	Plan Dockerfile using TS.	t	1779372041153
3	c75a90a6-50d7-4a20-9649-eecef637d842	Write database schema	Write database schema using TS.	t	1769812309831
3	145628ec-359b-4a72-8669-7ac2aabf6035	Fix Dockerfile	Fix Dockerfile using TS.	f	1760789681678
3	8990f264-3337-43cd-89e0-b391d152a983	Write API	Write API with team.	t	1758850022564
3	bb368bef-1dc3-4ba7-a10d-8841110486aa	Design blog post	Design blog post with team.	t	1750401728987
3	a6a0fe9c-a2c9-4f90-9461-1adb14298714	Review Dockerfile	Review Dockerfile for project X.	f	1755765818046
3	cb2a3d82-e57e-448f-bb73-789f55a76b89	Fix API	Fix API and document.	t	1761283096075
3	42154168-9b2d-4295-9cc9-851e1a589b28	Fix UI mockup	Fix UI mockup and document.	f	1763454739704
3	07c988da-a95b-474b-bfad-faabbee20774	Design UI mockup	Design UI mockup with comments.	f	1764505285881
3	faf350cb-2016-420e-9ec8-6199c70f13ec	Test login flow	Test login flow in draft.	f	1777963884882
3	f10d6c8a-76bf-46a7-8220-b0f7a1e84cc4	Design login flow	Design login flow for project X.	t	1779862154691
3	2921a85e-8b6b-4282-a9d1-26004ea1b0a0	Write UI mockup	Write UI mockup and document.	f	1764183270270
3	ec599e76-dfcc-41a8-b803-11194fdff30d	Complete email template	Complete email template and document.	f	1752072779018
3	13633753-c3b6-4bba-83c4-a51290b07eab	Design database schema	Design database schema for project X.	t	1768702266572
3	9b054fce-e0e9-4362-8f43-46b642fac7e6	Design email template	Design email template using TS.	f	1771851073326
3	eca2cd5a-a881-406c-808d-e39764fe2eb5	Test unit tests	Test unit tests in draft.	f	1759199024030
3	d50d816f-8846-4b6c-973f-c02fd02f06df	Plan database schema	Plan database schema and document.	f	1761748580014
3	bf5a50c7-4034-4a85-9c3c-750878418443	Complete UI mockup	Complete UI mockup in draft.	f	1778312993957
3	68d6b19e-8342-4504-9469-b3fb7fb04022	Fix API	Fix API before EOD.	t	1768749641600
3	aa92fb3e-ed2f-4b49-beeb-804a8ca01c9c	Fix Dockerfile	Fix Dockerfile with team.	f	1780864826007
3	775f3fc2-d3a7-4cd9-b34e-d01972cc9700	Deploy unit tests	Deploy unit tests and document.	f	1779370995692
3	deb81f4f-8c75-4323-a3b6-65364a87d4d4	Test API	Test API and document.	t	1770016358602
3	a486ea17-2828-4780-997b-2eb13ef9a578	Complete blog post	Complete blog post for project X.	f	1752720579999
3	e771f9da-7495-4cfc-8a27-c1a6f0694cd9	Design API	Design API and document.	f	1751077711050
3	107054ee-7768-4cdc-9688-b068f754f650	Plan email template	Plan email template in draft.	t	1777386876152
3	5569aef4-7637-48de-a7d5-0386820d6145	Test API	Test API using TS.	t	1780149348196
3	065a4871-92e5-4615-9a47-bf1043a1ff05	Fix Dockerfile	Fix Dockerfile for project X.	t	1763245117224
3	8e880413-7978-475f-bb8d-26dc13c3306e	Complete database schema	Complete database schema with comments.	t	1755090097785
3	e826da7d-23a0-4898-b400-94b565f76970	Review login flow	Review login flow before EOD.	t	1774934018418
3	7991cc62-3194-43db-b87d-7a81b1ed8faa	Write login flow	Write login flow and document.	f	1779497814176
3	f1ba4d2f-6ebb-4dfe-809d-5959822fcab2	Complete database schema	Complete database schema with team.	t	1764439446292
3	82a95baf-67ff-4bd7-9b76-7f37f6227d13	Deploy login flow	Deploy login flow and document.	f	1779569844087
3	17762c12-4855-4b3a-ab2f-8ebeb4d8ff15	Fix blog post	Fix blog post for project X.	f	1772727975281
3	88bc9d3b-3e6b-487b-8be9-ec2775ed5c25	Plan Dockerfile	Plan Dockerfile for project X.	f	1776323671546
3	8e8bdf18-4b6c-4b41-8e24-3503aa3206eb	Write UI mockup	Write UI mockup using TS.	f	1765934494070
3	68571726-74e9-45ff-ab13-a9a8840c9fc9	Test API	Test API before EOD.	f	1757641816643
3	ebe06bde-281e-4ab0-b133-5e2c79e09db1	Deploy login flow	Deploy login flow with team.	t	1775563396126
3	165aa861-ac0c-421a-90b7-2d7de27f8b44	Plan blog post	Plan blog post with comments.	f	1759031478447
3	95ec77e8-a8e8-40d2-9e7a-c7e3c7e4f9f8	Review email template	Review email template before EOD.	f	1771272708177
3	d3aecb84-54df-4234-8eec-b4b0af451b39	Plan API	Plan API before EOD.	f	1752529715899
3	4446474c-b8d6-4815-a2d8-2368ff69b395	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1765415771814
3	ff250c5c-20be-4e36-b8f3-0a41abef2dcf	Test blog post	Test blog post in draft.	f	1753597646986
3	c54f630d-d9b7-4491-8a71-fd12d98af3de	Review API	Review API and document.	t	1757138740431
3	131278e4-5d14-4b26-8111-664a4be95e96	Write email template	Write email template for project X.	f	1761966978935
3	4307f6da-6053-4674-98e1-370d71c45aa9	Write Dockerfile	Write Dockerfile using TS.	f	1778350045121
3	34e316eb-ba33-481a-88ce-7327ac7417a4	Test API	Test API using TS.	f	1758759288963
3	14bd1ca7-6c41-4c75-8ac5-e852f89aaf33	Review Dockerfile	Review Dockerfile with comments.	f	1760792841950
3	977b1b64-48b2-4c54-a51b-45c159d07aab	Review database schema	Review database schema using TS.	f	1762049969911
3	397ebc84-9263-4034-97e7-cd95a1a09128	Design login flow	Design login flow before EOD.	t	1766618573231
3	910454f1-288b-41e9-b9f2-4ae03c4e7118	Review API	Review API and document.	f	1755797660340
3	e4bf85bd-ed4d-4a5f-affe-bf93dabe3f9a	Review email template	Review email template with team.	f	1781342741949
3	b19e051e-f905-4be6-ab00-7fdf1cede064	Test blog post	Test blog post with team.	f	1773759103506
3	3fe3b872-d1a6-4370-82e7-174fea1226d8	Review API	Review API before EOD.	f	1770129590187
3	93ef4ee1-ed31-4841-8920-0245b0b59158	Design API	Design API before EOD.	t	1768713400689
3	e086aeaa-c55c-4f57-83db-86124af9c33c	Review Dockerfile	Review Dockerfile with comments.	t	1777706132655
3	c855b3d6-1fc7-4add-aac0-432ea6926a2b	Design unit tests	Design unit tests with comments.	t	1772589195759
3	5bee1e70-b1e7-4fea-9947-9e2ac8b88ac4	Plan Dockerfile	Plan Dockerfile in draft.	t	1753790452733
3	1ac8e2bb-5412-4456-898f-3943a216bc2e	Plan Dockerfile	Plan Dockerfile before EOD.	f	1757214328387
3	f085d837-3bf8-4a31-86f8-928a04ef1638	Review login flow	Review login flow with comments.	t	1760205000017
3	08e51d4e-7e48-4aef-bb3b-4dbb2137ace8	Review unit tests	Review unit tests for project X.	t	1759331212171
3	716a5121-2a8f-44ea-a458-32046f2e89a7	Design UI mockup	Design UI mockup using TS.	t	1758912862761
3	06b31c9b-06db-43da-99e2-1b20f89be20b	Test email template	Test email template with team.	t	1752182542582
3	f1252785-f451-475c-aa83-370f44602856	Design UI mockup	Design UI mockup before EOD.	f	1779402164138
3	54927fff-2290-4c57-a7fc-934be429732a	Plan Dockerfile	Plan Dockerfile with team.	f	1762644453825
3	2a4746eb-1a1f-4496-b18e-3e62a0926dea	Plan API	Plan API for project X.	t	1759405137795
3	e7350969-bbf5-4406-a2cb-084ea6668077	Plan email template	Plan email template and document.	t	1771483506961
3	c49668ae-2bd6-4dba-a4e8-5086a88e9ab4	Review API	Review API for project X.	f	1764583588395
3	51714aee-2efa-458f-b234-decdeaab8f4a	Plan Dockerfile	Plan Dockerfile and document.	f	1751549111006
3	1c13aae3-6239-4d94-8628-c70a7dc718dc	Complete Dockerfile	Complete Dockerfile and document.	t	1756847950976
3	b0350b1f-432b-4488-b0c8-aa226695bf90	Test Dockerfile	Test Dockerfile in draft.	t	1778475578814
3	1eb7cf93-6f0d-4e30-b486-f439f4e89b8f	Plan UI mockup	Plan UI mockup using TS.	f	1768101149842
3	a7821ba7-9f4e-452f-9c9a-9485a68ec6f8	Write UI mockup	Write UI mockup using TS.	f	1773097303994
3	a4b774b7-3904-4ef5-83cd-ecb71235e6aa	Review blog post	Review blog post with team.	f	1769920806105
3	1ec29c71-6dd9-49b6-8e84-248159feb716	Complete blog post	Complete blog post and document.	t	1776144811589
3	cb43d7da-94ad-4866-9ff8-7b34cf2c362c	Test unit tests	Test unit tests with team.	t	1755167510412
3	6e863ae8-311e-4f85-9456-be5afd005acf	Test API	Test API with team.	t	1759693353574
3	d2fa6cfd-c5bc-42b1-bea9-86dcc55d3d7a	Complete database schema	Complete database schema for project X.	f	1751443157631
3	fff197ee-1498-43d7-bec2-dcef948238d6	Test login flow	Test login flow in draft.	t	1757999488265
3	46c5bfb5-2ca0-4a6a-b4d0-45ab5ece9105	Design login flow	Design login flow for project X.	f	1757150960734
3	1119e634-a835-4263-b76f-6e769ad8055f	Deploy Dockerfile	Deploy Dockerfile and document.	f	1753075656345
3	d2a411f9-0c34-44dc-8a72-12b85fbb32ca	Fix unit tests	Fix unit tests using TS.	t	1755176298665
3	4abb160b-4371-4370-a869-0a7d24882d43	Fix Dockerfile	Fix Dockerfile with comments.	t	1765617497122
3	38b6d646-9441-4537-8918-af6aad36be9f	Fix blog post	Fix blog post for project X.	t	1760632798743
3	ad9097b7-ba0e-47d8-b3fa-3546dd8476a2	Fix UI mockup	Fix UI mockup in draft.	f	1763462101006
3	ba7b3492-a57f-41df-9bd2-56f1d9c139ed	Deploy database schema	Deploy database schema and document.	f	1775596575516
3	edba2c32-0411-42b1-9fb3-bd36b258b9c6	Write Dockerfile	Write Dockerfile and document.	t	1754231941548
3	c887537b-8748-4b79-ace0-4756381ebd56	Review UI mockup	Review UI mockup for project X.	f	1759158799987
3	50ab2002-f6d7-46dd-979a-85850be58e6f	Complete Dockerfile	Complete Dockerfile and document.	t	1756212977489
3	b0f83b41-ef9c-452e-8f9b-246aa620581b	Plan UI mockup	Plan UI mockup before EOD.	t	1768622652824
3	39e3a3d8-fffd-47f4-bae4-f309ad40aae8	Write database schema	Write database schema with comments.	f	1759601685165
3	662f1168-0840-4a91-acc1-1b1b1df4f665	Complete API	Complete API with team.	f	1768642807482
3	5ddd59b2-02f1-429b-86f5-ba6220993cbe	Test database schema	Test database schema and document.	t	1757798334877
3	323693f1-7b37-44ac-b41b-f6484ad70603	Fix unit tests	Fix unit tests for project X.	f	1774743584093
3	0ddd6e97-a31c-495d-8885-67b70b65c653	Plan login flow	Plan login flow and document.	f	1774749083927
3	eb235c00-48c1-4fa4-a417-25aefed049f7	Plan Dockerfile	Plan Dockerfile using TS.	f	1778614532506
3	a33404d5-a291-42d8-9fcc-adf88a5b68c2	Test database schema	Test database schema before EOD.	t	1758693962228
3	1502d9d4-98ab-40aa-8547-0fa7914f2f7c	Complete login flow	Complete login flow and document.	t	1751245914754
3	56453566-bf45-4072-a5e2-0fdb2af23596	Write API	Write API in draft.	f	1755613966584
3	8c82fa6c-878a-49e5-9462-2781b6f0db62	Write login flow	Write login flow before EOD.	f	1768939951598
3	df32ac2b-71cf-466b-9096-efbffeea11a3	Write Dockerfile	Write Dockerfile in draft.	f	1756503487113
3	783c0d7e-ceb6-48b2-967a-15f24966676c	Deploy API	Deploy API and document.	f	1773601878826
3	339faf30-459a-4d16-8846-c3d72195d850	Plan blog post	Plan blog post and document.	t	1758778015143
3	957269f0-18e5-42f0-8636-b829fae8729b	Write login flow	Write login flow with team.	t	1771996796074
3	fa3c56ed-0ee1-47c7-ba51-05d25db12f83	Write UI mockup	Write UI mockup and document.	t	1759576912777
3	75954310-6918-4e51-9876-caedbcf1035b	Deploy login flow	Deploy login flow using TS.	t	1751144594494
3	85afe46c-61e8-41ed-a415-155850cfcb1f	Deploy login flow	Deploy login flow before EOD.	t	1755906476250
3	d4439704-d3b6-45bd-8766-ea711e4d1a24	Test UI mockup	Test UI mockup using TS.	t	1775919837460
3	4e9d3227-09ed-499a-912e-b7ed07729d54	Complete UI mockup	Complete UI mockup using TS.	f	1775857577579
3	2470e9fc-bbc1-45f3-98ba-bf7b63755b8e	Write UI mockup	Write UI mockup with team.	f	1758900184542
3	fd6caf3c-8fa4-49a4-851e-8e3ae0b0ffd4	Write API	Write API with comments.	t	1758764374686
3	0f7aef50-831f-48d3-a661-13b2fede373e	Plan UI mockup	Plan UI mockup with team.	f	1773588310132
3	33083562-553e-4d32-a7f7-47ad860eb12a	Complete blog post	Complete blog post and document.	f	1762514421096
3	912d2240-f216-472a-81d9-7906e240d709	Test Dockerfile	Test Dockerfile and document.	f	1757027652909
3	f4cc59e6-1bde-41fe-9e04-bfa94cbe9c72	Test login flow	Test login flow before EOD.	f	1763768779753
3	2d54f31b-9390-4ad7-968e-67223d2e833c	Complete Dockerfile	Complete Dockerfile in draft.	t	1757093793219
3	e18eb7cb-a338-42d2-846b-d77be3c8a023	Complete Dockerfile	Complete Dockerfile and document.	t	1774864235729
3	1f65e7ef-9f93-4104-82c4-a3cb3d6ad0e8	Complete email template	Complete email template using TS.	t	1771520605221
3	0b2705b4-6c1b-486e-8bc4-c05050fdc8bf	Review Dockerfile	Review Dockerfile in draft.	f	1756328705977
3	e78d266c-b25c-473c-98e1-48a6d890c147	Fix unit tests	Fix unit tests for project X.	f	1772766126880
3	70e0e658-3904-40bc-a70a-aae0c85b8ac4	Complete login flow	Complete login flow with comments.	t	1754756853953
3	7f403745-6e0c-4920-9c29-94223d6d2ace	Complete Dockerfile	Complete Dockerfile using TS.	f	1770051669555
3	686c8c27-2d5a-499c-86e2-80ce55fec948	Test login flow	Test login flow and document.	t	1774406411987
3	79892cb5-21c8-4dd0-9374-76611bde0370	Review blog post	Review blog post with team.	f	1779699039237
3	a40d65f9-19ed-4af6-98b1-9919b89eafa4	Test blog post	Test blog post and document.	f	1755848862860
3	744cea0d-ac02-4807-b92b-48a46d414cfe	Design database schema	Design database schema for project X.	t	1762360922201
3	435e94b6-17eb-430d-b945-121740e6727a	Deploy unit tests	Deploy unit tests for project X.	f	1765213494614
3	6929ac64-dc84-4c8b-8dd5-5c81c2a79db0	Complete email template	Complete email template for project X.	f	1752812499721
3	1eb2f128-fb8b-4cb6-aeee-e7655f3b26d5	Fix database schema	Fix database schema in draft.	t	1758184382146
3	a136fdba-5d0a-4acd-8c1a-12f20a4306ed	Test blog post	Test blog post in draft.	t	1753672695824
3	4e5aa737-f3c3-4e77-8423-f0b8c5fbab17	Review login flow	Review login flow with comments.	f	1766503713649
3	593c8f11-1341-4be9-953f-51892e23a82b	Review blog post	Review blog post for project X.	t	1767615686967
3	a90ecd35-dbd3-49ce-986f-d98917498502	Design email template	Design email template before EOD.	f	1776142215720
3	348ee55a-bd79-4faa-b311-7ec12bc448cf	Design unit tests	Design unit tests for project X.	t	1771690239991
3	54678d5c-ef09-4246-8e1a-96d9e0988bc0	Complete UI mockup	Complete UI mockup using TS.	t	1760927234310
3	897be6e9-40f4-413f-a2fe-016b4a50c0ec	Design API	Design API using TS.	t	1757412695782
3	5e040b50-2304-4627-8d27-6910b2a422ac	Plan Dockerfile	Plan Dockerfile for project X.	t	1761656116110
3	381fd646-d2cd-447f-b706-24492d1214c0	Complete Dockerfile	Complete Dockerfile in draft.	f	1769071020539
3	9e5b2832-6187-490f-b981-8f23af38685f	Write database schema	Write database schema with team.	f	1772715662770
3	10fbf54c-9a28-4cfc-9503-d4400946358e	Fix email template	Fix email template using TS.	t	1763973258495
3	9671c59e-26be-4ee1-9ff8-4dc12cb9e75e	Plan UI mockup	Plan UI mockup for project X.	t	1764767950707
3	3ff12f4e-7a7b-41d9-b5e3-6f2ce3824577	Deploy unit tests	Deploy unit tests using TS.	f	1763867659637
3	bb24828a-4293-4939-bd14-ad8722b4d13e	Complete database schema	Complete database schema before EOD.	f	1768232005734
3	7272aabe-7e32-4fb2-b7b1-5f49fb4426a0	Write unit tests	Write unit tests for project X.	f	1754576314352
3	3f2df91d-fe14-430d-a870-f6f51a5e3e26	Review API	Review API in draft.	f	1758362789336
3	1cbb92ea-c67b-490b-a550-7475a82c09f2	Deploy database schema	Deploy database schema using TS.	f	1781257161592
3	845679ac-9bea-48d2-a6d5-28ec1710e2c7	Design UI mockup	Design UI mockup using TS.	f	1763426702921
3	0ac98b46-8c2a-460d-9822-fb8e74ac70a9	Design blog post	Design blog post and document.	f	1765122707868
3	af75f1a8-5285-4a45-b9fa-058369ddf25f	Review email template	Review email template for project X.	t	1770090492033
3	d904a8eb-483b-4e9c-8701-94d27d293b51	Test Dockerfile	Test Dockerfile in draft.	f	1775341458232
3	380aa292-6b27-4c95-9676-8baa3ce017bb	Review Dockerfile	Review Dockerfile with comments.	f	1755981462670
3	771ae191-06ba-47c8-bc82-58159f91b578	Write API	Write API with comments.	t	1758138294554
3	a2257be0-49d5-4cdd-9813-ecf852996242	Design blog post	Design blog post in draft.	t	1781057275305
3	1b3b854d-0f7c-48c1-bacb-e47eceee26c0	Complete database schema	Complete database schema and document.	t	1780296075725
3	9b29db02-aa0c-4521-91a0-9426b6b0dd48	Deploy database schema	Deploy database schema using TS.	t	1769513250682
3	f28b9ba2-a65f-4167-b7b8-68e3aa32861d	Deploy email template	Deploy email template for project X.	f	1764937621268
3	ca5153a5-c0f5-48bf-9c91-bd570d15361f	Review Dockerfile	Review Dockerfile with team.	t	1756028389980
3	ed0f93dd-3320-42ca-bce7-95ff13cdcd3f	Review API	Review API and document.	t	1776166672738
3	1d98e73c-c9e8-49b6-af5b-0b2e2db005bc	Design Dockerfile	Design Dockerfile for project X.	f	1753583074172
3	9ce56dd4-fd90-49a1-9b83-60d72d1c5cf0	Complete database schema	Complete database schema and document.	t	1754203520519
3	8b3425ec-01c3-4024-bdce-30acf4501d16	Test email template	Test email template before EOD.	t	1776373252502
3	e10b15d5-e679-4a35-aa1d-0e00279ba198	Write unit tests	Write unit tests with team.	t	1777912697255
3	93c3ec23-58ee-451a-90f2-22c31ecfde2c	Deploy UI mockup	Deploy UI mockup before EOD.	f	1758635902935
3	b3e7ddd2-b76e-4dc4-b833-ba89d42f519d	Deploy UI mockup	Deploy UI mockup for project X.	f	1781548182118
3	44852ec9-64ac-4e82-9549-5d32e2369e45	Test blog post	Test blog post and document.	f	1768252560946
3	6971e4d0-c905-456b-91e7-0be6c5b44390	Design UI mockup	Design UI mockup with comments.	t	1779964879406
3	76aac553-29ac-48d1-81ce-0319b5c45564	Fix blog post	Fix blog post for project X.	f	1751940989122
3	0b238ff1-24ba-4f69-8b1c-a07df34bc715	Write email template	Write email template in draft.	t	1755267802886
3	1a52e624-d01b-4f16-a7ea-aad4828940a3	Design blog post	Design blog post using TS.	f	1761314211080
3	09edd410-f253-4905-be10-c8fa8d68ccea	Design email template	Design email template with comments.	t	1751886011270
3	ce7d7b3a-409d-4c33-892b-f17a517b8289	Design unit tests	Design unit tests using TS.	f	1757366154671
3	550f1035-9c62-43f1-a2ca-3514c3ae4fe1	Write UI mockup	Write UI mockup in draft.	t	1755582574268
3	7757e21d-fa14-4eca-ba02-f3c3107a2d26	Plan Dockerfile	Plan Dockerfile with team.	f	1778557503507
3	20654987-24c4-4642-9678-606fc447edf5	Write blog post	Write blog post in draft.	t	1766906409089
3	fcbd6b2e-cceb-424b-bc7c-f39f27b2128d	Complete UI mockup	Complete UI mockup for project X.	t	1768971197596
3	18587db1-10c2-4ae7-b426-1521a1e73c06	Complete Dockerfile	Complete Dockerfile in draft.	t	1758128431385
3	4f661049-8097-40b1-a1e3-e452d77881c6	Test unit tests	Test unit tests before EOD.	t	1768049449383
3	fb722951-7b98-44a4-a3c6-8afa56f80a6b	Test unit tests	Test unit tests before EOD.	f	1753881595366
3	075d8178-0d18-4cc3-a892-ff25e75c01ea	Fix database schema	Fix database schema before EOD.	f	1761760795163
3	bdfc880a-e4a1-4263-96ef-00d2b8ab376a	Complete database schema	Complete database schema in draft.	f	1760222750127
3	be2dc72b-9fb1-4b4a-829c-2dcd023b345b	Write unit tests	Write unit tests in draft.	t	1768867649638
3	35bf34ba-b1ec-453f-8bbb-763b4cd452f2	Review unit tests	Review unit tests with team.	f	1759324303828
3	3574d572-af5c-466a-acfe-686d951305e0	Test unit tests	Test unit tests with team.	f	1751314081171
3	955c1b4e-d32c-4491-ae9e-cf14fa9d47ec	Design Dockerfile	Design Dockerfile in draft.	f	1773603002556
3	4a35bdae-8fdb-47f8-b477-33603c5a7cda	Design API	Design API with comments.	t	1757552312408
3	14775ea5-3056-4536-9a17-d19a9b150db3	Design unit tests	Design unit tests before EOD.	t	1766197842105
3	a972e2cb-ff1c-4eeb-b749-607e0a37c435	Plan blog post	Plan blog post and document.	t	1776491655502
3	38003781-a175-482e-963d-6214e6efe877	Test database schema	Test database schema with team.	f	1777947028769
3	a2ba100c-eb38-4d20-8946-f0387d7b6fa1	Fix API	Fix API in draft.	f	1771396222513
3	30ea4197-0e69-4271-a144-30c49da1a5bf	Review unit tests	Review unit tests with comments.	f	1765818389703
3	a1643427-7fd0-48e0-8189-2d1a92726764	Deploy database schema	Deploy database schema and document.	f	1759268927821
3	677faf1f-5303-4fbf-a1c1-abccc5bf5700	Plan email template	Plan email template with comments.	f	1753307829218
3	2cf62073-c83c-40d7-bcef-3459955f5236	Plan unit tests	Plan unit tests and document.	t	1760715731271
3	b27f1497-30af-4627-aa5c-50b6ef35ab5f	Design login flow	Design login flow before EOD.	t	1756157569101
3	caa958eb-f009-4db2-b068-cfe19c19a02b	Plan unit tests	Plan unit tests and document.	f	1762045914902
3	f00ec281-a4f0-4124-acc9-afadfa1f11d4	Plan API	Plan API using TS.	f	1753282218583
3	ec0bea2c-b1f3-4c23-9a6c-5ff561b3dfea	Test blog post	Test blog post using TS.	t	1760767134942
3	a5432ef1-2174-46b9-9c25-3a3f01cd367b	Complete API	Complete API in draft.	t	1777581157584
3	a1b091a4-c74b-4d4c-beb5-ab0f79ffa97c	Review UI mockup	Review UI mockup with team.	t	1750380679126
3	4ce70406-f6ae-4c88-bcea-67a5d475835e	Review UI mockup	Review UI mockup for project X.	t	1755225401915
3	eae89f78-5813-4e82-8f80-2c7dc6ca52e2	Test login flow	Test login flow in draft.	f	1763258837812
3	07d29cd1-c1f9-41fb-85f5-550c993df426	Fix API	Fix API in draft.	t	1776307237663
3	e9a593f4-7fc8-43a1-ae9e-125d46c92f1c	Write database schema	Write database schema for project X.	f	1779565621298
3	72443271-386c-4699-8581-26aa6bdf2cc3	Plan login flow	Plan login flow with team.	t	1758848107749
3	5a0ddbb0-a314-4410-8bd8-7d627bd3586d	Complete UI mockup	Complete UI mockup for project X.	f	1754370066509
3	5aba6a21-589a-4808-b450-90717527c64f	Review login flow	Review login flow using TS.	f	1781052327230
3	e9e80b1c-b7f9-4268-ab41-b2755591c443	Write login flow	Write login flow and document.	t	1757870095406
3	f9bf95ac-1ff7-4460-855b-b138a0a28ac5	Deploy database schema	Deploy database schema with team.	f	1774718446557
3	84034ab3-9267-4633-8ebe-a8aeaba05591	Fix database schema	Fix database schema for project X.	f	1758259249237
3	01251cdc-b651-46d1-8004-5c738ebb954b	Fix database schema	Fix database schema for project X.	t	1769040352599
3	6739618f-8e3b-42c9-b5d4-2d468d9904cc	Plan database schema	Plan database schema in draft.	f	1781549238839
3	8b7dea6b-9897-42ee-9999-14d2e30f0bb1	Deploy unit tests	Deploy unit tests with team.	f	1762511517172
3	419d2813-87bb-4685-a96d-f9ece6c7ccf3	Write database schema	Write database schema before EOD.	t	1757387365613
3	cee64f9b-6c80-414c-84e0-277b1eaf450a	Design unit tests	Design unit tests with team.	f	1774202880615
3	6e8831af-f7fa-4c0a-bcd7-ad1ecd6c9921	Deploy UI mockup	Deploy UI mockup and document.	t	1767808218748
3	0c2c2c25-2580-4c50-ada3-2b20b3b73bb2	Fix email template	Fix email template for project X.	f	1776909051638
3	fc7fdcb5-c000-410c-8fff-b3d663dfeff0	Review unit tests	Review unit tests in draft.	t	1777436497222
3	ecdc8701-62ca-4f7f-a827-0757b3b79606	Write blog post	Write blog post for project X.	f	1771537351658
3	0e77fbd0-656b-4361-99ea-7a318d34ca24	Test database schema	Test database schema with team.	t	1777792807614
3	771e4332-15ba-4594-99e5-5b88920cc7c0	Design API	Design API before EOD.	t	1766450954635
3	42b63dcd-821b-4bed-9439-e64841460c45	Design blog post	Design blog post before EOD.	f	1763782741663
3	85d6aad4-4392-4f68-8b61-8e9f30123d20	Plan login flow	Plan login flow and document.	f	1777215867375
3	292e7c3a-dd42-4c0c-8100-0215b621244b	Design blog post	Design blog post and document.	f	1781378869677
3	5cac1ef0-cd73-498b-9792-818340d479f1	Design API	Design API in draft.	t	1755263486856
3	c6022f02-4737-4252-9b74-1dd0b54c040d	Write UI mockup	Write UI mockup with team.	t	1769903117279
3	4f237235-e8e7-4133-ac2f-e7bedfc1bf9d	Fix API	Fix API for project X.	t	1770701024804
3	2f90368d-7cd6-446a-9e83-27986058a233	Fix login flow	Fix login flow before EOD.	f	1778052964292
3	3dd83c9e-c9cf-40f4-a7cb-338d7c4ac852	Test Dockerfile	Test Dockerfile with team.	f	1776691601442
3	6d4386b2-16e3-426f-aa68-3448dbf92685	Plan login flow	Plan login flow in draft.	t	1756362404880
3	590f404a-a4d2-4c38-a255-ab6693aaeabf	Design login flow	Design login flow before EOD.	t	1754714935743
3	e4049d58-98be-4db4-9556-345eaa3756aa	Review blog post	Review blog post before EOD.	f	1774373146389
3	77f015ea-c83a-45a9-a46e-ebb066f401f3	Fix login flow	Fix login flow in draft.	t	1764883016003
3	8de12396-fa36-445c-ba0b-6129df78e15c	Deploy database schema	Deploy database schema using TS.	t	1756093435122
3	ad6b95e2-7246-4f9a-93a4-0c216f9b9b83	Fix database schema	Fix database schema with comments.	f	1776601727654
3	60de78a3-5fa8-478c-80ab-59bbbcd81f01	Deploy blog post	Deploy blog post before EOD.	t	1779388462350
3	08a76f04-330a-4628-82e4-fd74cbb36f5e	Fix email template	Fix email template before EOD.	t	1758038374629
3	21cbcc73-4fdb-451f-8b4e-e7bbc6e1013e	Deploy email template	Deploy email template before EOD.	t	1774038926997
3	020a03c7-ab42-4d87-bba7-b66696967735	Review email template	Review email template before EOD.	t	1759536049392
3	13d2d288-1d0e-41df-9c21-fbbe3745b8aa	Design Dockerfile	Design Dockerfile in draft.	t	1763899818973
3	26b7c4e1-6aea-459e-ab90-6f579c511d0d	Fix Dockerfile	Fix Dockerfile before EOD.	t	1779469975199
3	84f4dadd-7a8e-4932-8708-0a6235822d1a	Plan email template	Plan email template for project X.	t	1774653173137
3	4e450ca3-7f51-478f-8dc5-bfd7cc43fa78	Deploy login flow	Deploy login flow with comments.	t	1775908746206
3	2f4f32ef-4697-4343-96b8-0452b056cf00	Complete login flow	Complete login flow using TS.	t	1768330023526
3	e4dd5547-5ff5-4601-b1a0-eee17745d455	Deploy email template	Deploy email template with comments.	f	1760050405978
3	eb6d80d6-c634-4bf1-bf3d-d5ca50e88385	Review UI mockup	Review UI mockup with team.	t	1759439844897
3	b51f71c3-b9ae-400e-b74e-1bfda3d0e059	Write unit tests	Write unit tests with comments.	t	1764531628228
3	75e83d07-f5a1-4fbc-9fb2-3a60cfc53ff0	Test UI mockup	Test UI mockup before EOD.	f	1770437800784
3	5db901a9-1e6a-489a-aacb-02539b59ffa1	Complete login flow	Complete login flow and document.	t	1780742732825
3	85616947-8fc7-4ae1-8acf-698536584b4a	Test UI mockup	Test UI mockup before EOD.	t	1767717306907
3	6bf83eab-4ef4-4d68-96d0-b7f6846a51db	Test database schema	Test database schema for project X.	f	1752327578968
3	95b64511-f313-4acf-89b8-6cd34a75c277	Fix Dockerfile	Fix Dockerfile in draft.	t	1759581129083
3	26a66c68-6288-4380-a8ff-0842a1a4cfbe	Design UI mockup	Design UI mockup before EOD.	t	1752391273516
3	b35d5828-e43b-4119-b52d-65cf282e4474	Plan login flow	Plan login flow with comments.	t	1751179845499
3	b7801021-11e6-4d81-b3ae-a83579e09acb	Complete database schema	Complete database schema before EOD.	t	1771420970650
3	f9d499a4-04fc-4dc4-b99a-85ac9cee3f17	Design Dockerfile	Design Dockerfile using TS.	t	1758269319382
3	e07020a5-6732-4f31-ad06-45f2b601e221	Deploy login flow	Deploy login flow before EOD.	f	1760868103796
3	d3a02e57-1287-4741-9c78-a6a3c2000d95	Write email template	Write email template with team.	t	1763648536920
3	35a0eafd-3f90-4af1-8d0a-46a8d84fe71a	Plan API	Plan API in draft.	t	1775024129696
3	e88bfd27-fa86-43f2-abcd-0d688d48d2bb	Write unit tests	Write unit tests for project X.	t	1772450157601
3	20b8e88a-946f-4b95-a572-6a094d73769f	Write database schema	Write database schema for project X.	f	1751866584659
3	a65ddb79-1023-4679-afdc-98e14ff9d3b0	Fix blog post	Fix blog post before EOD.	f	1772518408470
3	0a0e8568-0786-4bc6-b75c-b7b1724d9f7c	Plan blog post	Plan blog post before EOD.	t	1770633126314
3	b11486c3-d4c6-416b-a5a6-3581f89425d0	Review Dockerfile	Review Dockerfile with comments.	t	1758264573416
3	13d42e17-7d0e-4b17-9026-11c398b7def7	Fix UI mockup	Fix UI mockup with comments.	f	1760438590763
3	6e3f9160-b384-448d-94d6-d0c583ca2939	Deploy UI mockup	Deploy UI mockup with comments.	t	1762595454775
3	5a9b9939-6b7c-4e09-8908-edcda1816dec	Review UI mockup	Review UI mockup with comments.	t	1765139107143
3	eb56f1e5-80a6-4136-b928-0bbc6883391b	Write API	Write API using TS.	t	1752699622910
3	9d1d3b3a-5da1-4d31-9fd0-b06d04380867	Review API	Review API and document.	f	1751784904698
3	843e51e8-a2e0-4910-9e20-4015f4b9ddd8	Complete UI mockup	Complete UI mockup for project X.	f	1777567272718
3	1c673db7-256e-45f5-9b24-f4a3d313cb6f	Fix email template	Fix email template before EOD.	f	1776053824973
3	046c63fe-29f8-491f-86d5-bc04e9d361f9	Write UI mockup	Write UI mockup in draft.	t	1751599143244
3	fbaf2cd3-d04d-4ee7-9cf0-a2c3cd514e8d	Test Dockerfile	Test Dockerfile for project X.	t	1773328651596
3	3377f883-7f63-4da0-8870-caba61d4ed0b	Design login flow	Design login flow using TS.	f	1767052024024
3	33f32ca2-86c1-4a76-b1a5-0add8158067d	Complete blog post	Complete blog post with team.	t	1781127319503
3	397319b3-5cd9-426b-80b5-a26930f40d5c	Review API	Review API and document.	t	1771383777897
3	98026588-866d-448f-af32-b12024b16631	Review unit tests	Review unit tests with comments.	t	1756410567518
3	1dc9b226-4c04-46fa-81fc-299779bf6c55	Design database schema	Design database schema and document.	t	1780992065255
3	765fb78e-688b-4fa5-ae69-c127c1ed6cc0	Deploy email template	Deploy email template in draft.	f	1774115944852
3	755c67ba-e7a3-4309-8b45-8efafbe498a3	Review blog post	Review blog post before EOD.	f	1760106195368
3	ad2815b2-5865-4c66-8130-aeb60b1ce315	Test blog post	Test blog post with comments.	t	1775182193246
3	5eed1ac7-df80-4b7b-8462-9accf3d0dd0e	Plan email template	Plan email template in draft.	t	1775145003604
3	590c0cb2-cced-4308-9e49-ae0ed0d68302	Review Dockerfile	Review Dockerfile before EOD.	f	1766759702905
3	784e3634-af83-42a0-9b5f-22914cf644e3	Review login flow	Review login flow in draft.	t	1765005921521
3	39296db2-51c5-480d-bb72-448492db4f68	Review API	Review API before EOD.	f	1776116005121
3	febebf84-8ff1-4074-8d64-c3f3a9933430	Deploy blog post	Deploy blog post with comments.	t	1761991019952
3	15d05eb7-e98c-4d72-97fd-61ac6c18a136	Plan Dockerfile	Plan Dockerfile in draft.	f	1763910307693
3	4076b102-bf58-4940-b979-dba71fc11223	Review blog post	Review blog post with comments.	t	1776248418715
3	c6bb93f5-4825-410a-be86-ae29bade18a1	Deploy Dockerfile	Deploy Dockerfile before EOD.	f	1776153035674
3	89623a32-b4ba-4dea-8549-03abfbb84afe	Test database schema	Test database schema and document.	f	1750982190888
3	5c384191-0fd2-4963-928c-c0440572d755	Plan Dockerfile	Plan Dockerfile for project X.	t	1773525233396
3	20e3010f-25df-469d-aa07-06669327733c	Design login flow	Design login flow using TS.	f	1758079879000
3	6ae51fd9-b649-47fb-aea4-1bcddc43c9d6	Write login flow	Write login flow with team.	f	1771476192787
3	f561340b-81b9-4336-8e00-a7daee474abc	Plan blog post	Plan blog post using TS.	t	1758922453610
3	ff58bf14-8043-484e-968e-bf899f95d0bb	Design login flow	Design login flow in draft.	f	1770878952647
3	35df6c88-5304-478b-8ab5-be32ff135643	Plan API	Plan API using TS.	f	1778523125053
3	764005aa-51be-43c9-bbbe-fe837e5dc903	Plan blog post	Plan blog post before EOD.	f	1780252252050
3	b1d86fbf-3ec5-4728-a670-b08f63d575e2	Test email template	Test email template before EOD.	f	1751019934273
3	6bbaf559-8a73-497b-97c5-b50580202979	Fix unit tests	Fix unit tests for project X.	f	1760293998348
3	d55e4fff-4b64-48cd-adf9-7155549e82ef	Plan unit tests	Plan unit tests with comments.	t	1766373313723
3	57b7a79f-c3b4-4493-baf6-c946631138a5	Design API	Design API with team.	f	1754323612275
3	ecc0be7b-8a65-454a-88b5-4af11b2f2372	Write blog post	Write blog post and document.	t	1753719374956
3	f5108a11-dcaf-4c38-99ce-c78bc428758a	Deploy Dockerfile	Deploy Dockerfile in draft.	f	1766356576066
3	47ce2df6-983c-4be6-a334-f36b1717eacc	Deploy email template	Deploy email template with team.	f	1771694560189
3	a4996dfd-8a1b-48d6-aa6d-edaf8caad0ec	Write blog post	Write blog post with team.	f	1772054095556
3	59d43506-79e6-49bd-a0dd-24e9ce00daec	Fix email template	Fix email template and document.	f	1754929539619
3	f4ab935c-2313-4a39-aa1d-63ba8380d3b9	Plan API	Plan API and document.	f	1763957682688
3	2435c78a-1e32-4a20-b519-8603aacc363d	Deploy login flow	Deploy login flow with comments.	t	1756836819325
3	0032e442-4eba-40dd-ad47-2f49a3ceca02	Design database schema	Design database schema using TS.	f	1758244736709
3	a2e160d8-b782-4827-b1cb-1fbbd37743ab	Complete API	Complete API with comments.	t	1768136533317
3	943511dd-f4b9-42ff-bac3-50e9a892438b	Complete blog post	Complete blog post for project X.	f	1751956278321
3	3aaee47c-0e17-414b-8745-449f6333abf5	Deploy database schema	Deploy database schema with team.	t	1760016147389
3	33f45b12-493d-4acf-80c8-4a395a312d16	Deploy database schema	Deploy database schema with team.	t	1761750716167
3	5a68844c-bc20-44c8-bace-47756d16e979	Plan UI mockup	Plan UI mockup and document.	f	1768693132992
3	28199d07-5375-4e7f-892f-b906cf895d3d	Test Dockerfile	Test Dockerfile before EOD.	t	1773695669395
3	cc968e9f-aa37-4ba2-9f79-f769d8810083	Test blog post	Test blog post for project X.	f	1777656521376
3	a96e16d5-a7f3-4ad2-b45c-0b383efa1063	Test UI mockup	Test UI mockup using TS.	f	1773389468360
3	72be6c8e-65b6-4de0-88a8-3fa83134551c	Deploy email template	Deploy email template with team.	f	1771110600281
3	b56d4042-6cf8-44e2-8a47-9e83fe657688	Plan API	Plan API with comments.	t	1767929342452
3	569f2e54-a36c-449f-92a2-8f8ca720fd82	Complete unit tests	Complete unit tests before EOD.	t	1752444186060
3	935ed0f1-a077-456a-80f1-3fb41bc6590e	Test database schema	Test database schema for project X.	t	1777923383366
3	2146773e-68a8-4d76-a8ba-e245ecb19894	Write unit tests	Write unit tests and document.	f	1777348459346
3	14cc1fd8-aa91-4be5-9ecb-975efd39d0f4	Fix login flow	Fix login flow for project X.	t	1780864536378
3	38a5fe2c-019d-4597-bfad-855464717e75	Complete login flow	Complete login flow for project X.	f	1779937306929
3	49a83a34-ea92-49f9-8a13-bfaab6ae2f8c	Plan unit tests	Plan unit tests using TS.	t	1769219889629
3	0f6bdfba-3abe-412b-b1a9-f60e3e3e4702	Complete Dockerfile	Complete Dockerfile for project X.	f	1756640329832
3	8123d2c9-2158-4efd-b0bd-283bce19731f	Design login flow	Design login flow using TS.	t	1761997867758
3	f21a28fc-2dc2-455f-b747-b9518beb513a	Test UI mockup	Test UI mockup with comments.	t	1750486157527
3	9ea2ba10-2b60-4f45-bbf7-a3cd95893804	Test UI mockup	Test UI mockup for project X.	f	1778168961633
3	48976922-809f-4dfd-9a3d-2ad2b81dcdd7	Review database schema	Review database schema for project X.	f	1758525432266
3	363161d1-0949-459b-8085-e69730a1a3a6	Deploy email template	Deploy email template for project X.	f	1772827846261
3	fdfe0648-ef2d-478a-bb38-bd02c0c3a7a1	Write UI mockup	Write UI mockup with team.	f	1779542277306
3	86d32712-c783-4d3d-9aed-3bf157892512	Review email template	Review email template for project X.	t	1760274231662
3	fb2aae7d-0410-4f1c-9ad6-bca4bdbe66d0	Design Dockerfile	Design Dockerfile before EOD.	t	1766302147907
3	636ea46a-548b-43ba-a60b-348b01385379	Design unit tests	Design unit tests with team.	t	1760287435153
3	f04b2521-4389-475d-8042-2243e2d1dce3	Complete blog post	Complete blog post and document.	t	1768271231097
3	a8ffef7d-abea-42d0-9ce3-f096bcaac94a	Write Dockerfile	Write Dockerfile for project X.	t	1765847739194
3	7ebcb324-2326-4567-adfd-d42ebc32a5a3	Review Dockerfile	Review Dockerfile with comments.	f	1779869447609
3	40b6cdfb-af9f-4bd3-86ef-8a1a30c005e4	Deploy unit tests	Deploy unit tests before EOD.	f	1755289536914
3	523ed9fa-89aa-4565-9604-f17f496b69bf	Design API	Design API and document.	t	1756558649785
3	8b2676c8-9455-48e1-8b08-e4e16257718d	Review UI mockup	Review UI mockup for project X.	t	1771354789483
3	890f0c90-199e-44f4-b3d3-b9ee354d5236	Design email template	Design email template and document.	f	1756368169535
3	669dc7d4-c0b3-40c8-80e5-f8a135902b2e	Deploy unit tests	Deploy unit tests in draft.	t	1763965179103
3	bf25b5da-1bf0-4cbb-a6fe-11b7720bc3f5	Write UI mockup	Write UI mockup and document.	t	1767801320384
3	9e520d4f-a3a8-4d5e-8fc1-018b5cb9d35d	Plan UI mockup	Plan UI mockup before EOD.	t	1756899102603
3	07325509-193f-4211-bde9-7e0e3c66226c	Fix unit tests	Fix unit tests using TS.	f	1755660844610
3	ce77c4dd-423e-4989-be02-a47e29f4ea7f	Review database schema	Review database schema using TS.	t	1763927868536
3	53cd31a4-7d02-4a4f-b9ea-527cefdb396f	Test login flow	Test login flow and document.	f	1763884375743
3	864f6f5d-34e8-409d-b704-5d7b182615b6	Test database schema	Test database schema in draft.	f	1758839300487
3	8f0affbe-4143-4319-ab4c-9ee0cb4118a3	Plan login flow	Plan login flow with comments.	t	1758194996197
3	a0b94654-1b5d-4721-8b4a-e9e80d8f5470	Deploy UI mockup	Deploy UI mockup with comments.	t	1752879110951
3	0af7fe3b-40e8-4286-a490-9019e36e9dd9	Write database schema	Write database schema with team.	t	1770833203312
3	5a2bcd20-9e27-42ae-b546-56e59c596532	Review email template	Review email template for project X.	f	1762969951939
3	24696c47-39af-466a-ad70-7f65e325dc52	Design blog post	Design blog post before EOD.	t	1753586783174
3	4db8f573-52cb-45d9-930d-f2c17204597f	Test database schema	Test database schema before EOD.	f	1753409782340
3	bb9fb5da-3d17-4947-b240-8c6cef178b63	Deploy API	Deploy API and document.	t	1750248741113
3	641bfd49-6210-4470-b283-7851d1c4bc4a	Deploy blog post	Deploy blog post for project X.	f	1779088718595
3	acae1bdb-65ee-4865-92f5-f3e2a0e7eb93	Review UI mockup	Review UI mockup using TS.	t	1776563864698
3	838a78e7-8db9-44a9-af22-d5474d202ccf	Write API	Write API with team.	f	1755081297463
3	c72e52cd-3aab-4f89-8a87-e4ba4fb01b4d	Deploy login flow	Deploy login flow with comments.	f	1777149342894
3	ed0e2da9-35c9-4818-958c-71cd7ed0d548	Write login flow	Write login flow and document.	t	1761992457270
3	e94bf44b-d82e-4932-8447-568adbe1a5db	Fix unit tests	Fix unit tests in draft.	t	1767231321287
3	cf3699a0-b98d-4699-aac4-4466da10278c	Complete Dockerfile	Complete Dockerfile with team.	t	1758096727004
3	86dbe8cd-e900-4f04-b1b4-7f2dd845d21d	Review blog post	Review blog post with team.	t	1751918278843
3	e3f0a634-eb2b-4d4d-9cbc-44d882649780	Design database schema	Design database schema for project X.	t	1779762605448
3	669ef65d-eb81-494c-a947-a3ded8bb6fc9	Deploy Dockerfile	Deploy Dockerfile with team.	t	1757612063799
3	425496cb-c94c-40c3-adb1-4163795ee54d	Write Dockerfile	Write Dockerfile using TS.	t	1771039924905
3	5cb068f7-f10b-45b5-9220-f8b22900ef9f	Test unit tests	Test unit tests for project X.	t	1770291959408
3	b90cf4c2-1c59-43f0-a056-2c1d07dbd287	Fix API	Fix API with comments.	t	1769128977240
3	1fc01c53-d7ad-4f39-8c1b-00571528112c	Design UI mockup	Design UI mockup using TS.	f	1776571345653
3	0b79fee9-c662-430d-91ff-74ec67d55145	Plan Dockerfile	Plan Dockerfile with team.	t	1771200329573
3	5694ad86-74f2-4f01-80bf-b0ed7585e228	Complete login flow	Complete login flow in draft.	t	1757791384235
3	7e168d18-b8a8-47aa-a94b-f3e129d151db	Test blog post	Test blog post in draft.	f	1755386846728
3	405f7f00-12cd-4588-b922-9b0b2c0000a4	Write blog post	Write blog post and document.	f	1752362168292
3	456cdbfb-8e6d-45ad-9391-ff985eb77434	Review Dockerfile	Review Dockerfile with comments.	f	1753030151171
3	2126113f-c714-4676-ab4c-94540f278fab	Test API	Test API with comments.	f	1762691125953
3	820004b4-abf2-4acd-837d-c352098a5bf2	Complete database schema	Complete database schema in draft.	t	1769695709226
3	970fa8cb-2aef-4b5a-b700-24e07eed64c2	Design unit tests	Design unit tests with comments.	t	1762037047253
3	a2900cab-a648-43c2-9da3-593fe2db731b	Fix blog post	Fix blog post for project X.	t	1750702493774
3	9142cd9d-b0d3-4bb6-adce-e1fb2c315067	Test API	Test API for project X.	f	1750838977813
3	dac5bd4a-a74f-4b71-9193-92483869e8cd	Deploy database schema	Deploy database schema for project X.	t	1771002656963
3	a8507da2-64a7-4c03-b5c6-6075854363c4	Deploy unit tests	Deploy unit tests with comments.	t	1780006743403
3	369a599f-4aad-4c63-a923-be7075a4110e	Deploy database schema	Deploy database schema and document.	f	1774773374148
3	73a82296-ed13-4c79-b3be-1223ca66cfe7	Plan email template	Plan email template using TS.	f	1752092379955
3	f573cc88-150a-432e-8c3e-0f39e5bc386f	Complete database schema	Complete database schema with comments.	f	1751253842190
3	14a1b0bc-ae6d-48c3-b38d-26dc3311a034	Plan unit tests	Plan unit tests with comments.	f	1781321185891
3	e6902041-cea9-49cb-9e44-9b01290882aa	Test Dockerfile	Test Dockerfile before EOD.	t	1780734194466
3	6825ab6c-51bd-4902-9800-c43d01c4e9dc	Plan login flow	Plan login flow using TS.	f	1778394821901
3	e95a9724-bf5d-4856-8848-66b7b2654491	Plan API	Plan API with comments.	f	1777324565003
3	2d42c2f4-8c72-4c50-83e5-9227d59364b1	Plan email template	Plan email template using TS.	f	1756598919137
3	86d3f765-f99a-4fe7-849b-a4da5ab2c69a	Write Dockerfile	Write Dockerfile with team.	f	1755410042145
3	16d3239f-e4be-42c0-acd4-e53b6b242779	Test Dockerfile	Test Dockerfile in draft.	f	1772983542695
3	6b731908-7d13-4e9d-9688-2573fcdb6847	Complete unit tests	Complete unit tests for project X.	f	1777926752155
3	e6cd3c8a-e858-4544-81e0-9c956fc5ccbd	Deploy login flow	Deploy login flow with comments.	f	1779988752875
3	b39cddc3-e1ac-43fb-b392-9f1ac5234fec	Review Dockerfile	Review Dockerfile for project X.	f	1760056103609
3	4fa4853a-fe32-47a3-9e63-244399113b53	Deploy unit tests	Deploy unit tests using TS.	t	1755017656961
3	f37f1d23-259e-4017-b782-50e3368f8251	Deploy database schema	Deploy database schema with team.	t	1763106552755
3	1c8ccf5f-9693-4da7-87a8-108ca818b060	Design Dockerfile	Design Dockerfile and document.	f	1770585618132
3	9469d153-6651-4dd4-8eb1-1f015bfbf394	Test API	Test API for project X.	t	1772196240599
3	3cfa65ed-9cfc-4f95-a611-476ca5d8e508	Write unit tests	Write unit tests in draft.	f	1773559361352
3	8c6e2f1e-1a77-4c80-8c77-7dc7d3a9b586	Plan login flow	Plan login flow with comments.	f	1750198988383
3	64b518e3-22b6-4aaf-a321-142cb113819a	Complete login flow	Complete login flow with team.	t	1776601572424
3	247b34e5-3850-45bf-b860-79e8820a62ec	Design UI mockup	Design UI mockup and document.	t	1754578872519
3	31796cec-c9ff-492b-a347-24292730f3de	Complete UI mockup	Complete UI mockup and document.	t	1768755516443
3	8ad56de0-1dd3-48b7-9120-a24ac840a79a	Plan Dockerfile	Plan Dockerfile before EOD.	f	1751661026841
3	70bd2a1e-dc6a-4285-944d-e685850a91ef	Design UI mockup	Design UI mockup with comments.	t	1774006443148
3	13f76498-4a2a-4698-8152-b808d42aff48	Write database schema	Write database schema and document.	f	1757317042365
3	a62729b0-a706-49df-8ad5-599995454d33	Design UI mockup	Design UI mockup and document.	t	1752596877145
3	adc637ae-eb9f-4ef1-bd7a-651fb213f78e	Write blog post	Write blog post and document.	t	1780803819074
3	518dd4d3-1b34-4a16-9e84-b08d54a73e6e	Complete blog post	Complete blog post using TS.	f	1767002885948
3	9e47ead2-2f6d-456a-81e3-65b493f28b0b	Complete Dockerfile	Complete Dockerfile for project X.	t	1775030601191
3	fd457b7f-20ab-4757-a189-397127e9258a	Plan Dockerfile	Plan Dockerfile using TS.	t	1753250765510
3	5d2961a9-5fc9-49d2-a38d-616ec5d5fd8a	Design blog post	Design blog post before EOD.	f	1779795816574
3	1b67749b-b68a-4ae5-a7b3-17fafe1f8f29	Test database schema	Test database schema using TS.	t	1751114337947
3	aa83310a-146f-478c-93b3-d5b2fd438a42	Deploy login flow	Deploy login flow using TS.	t	1771787491212
3	979f8807-14ff-453c-905d-906c845afcf8	Complete unit tests	Complete unit tests using TS.	t	1772568444694
3	bc2bfda1-2083-47dc-ab22-250f76eba84d	Review unit tests	Review unit tests in draft.	f	1767162550658
3	9156c8b9-a5f4-45b6-8129-f88cc0f55a67	Write unit tests	Write unit tests before EOD.	f	1754681494274
3	8a325c8b-d16b-4459-a317-cfbb763915e9	Test API	Test API with comments.	t	1765383025741
3	0b0becf0-d566-45e0-aa04-9a1418e401d9	Plan UI mockup	Plan UI mockup in draft.	t	1756831272428
3	75fca93a-f0a9-4e97-a245-43609088e1a4	Plan blog post	Plan blog post using TS.	t	1776172581052
3	9a381767-d6c7-4013-b2ca-1fe8ac3b4dcd	Test UI mockup	Test UI mockup with comments.	f	1758632007051
3	5a43afb5-3d5b-4211-a515-cee1e40f5ddc	Test unit tests	Test unit tests using TS.	f	1765114542060
3	f445d8f4-39e6-4fa1-a50f-352b752f4946	Design API	Design API in draft.	t	1751023047655
3	8efbb9a3-eac0-42bf-aa02-1fea732145a0	Plan blog post	Plan blog post for project X.	t	1760372168537
3	1f4e593f-4370-4932-8031-f392f8eaff8a	Write database schema	Write database schema with comments.	t	1763494309351
3	b369a4a3-6f74-42ff-aaa1-eb287e15dd11	Design database schema	Design database schema in draft.	f	1774934665658
3	f5bde178-666d-45fd-bcc1-f4392ec9ad14	Review database schema	Review database schema using TS.	t	1755679857679
3	3c8c48cd-e9ec-4d1f-b2e2-c8014f6259be	Plan Dockerfile	Plan Dockerfile with comments.	f	1762704315800
3	ce3d88f6-4e23-4b3e-8c96-626c4219e2ec	Fix email template	Fix email template with comments.	t	1772761388894
3	256ffc06-a248-433b-bf2d-83ea17112568	Write login flow	Write login flow for project X.	t	1779879277235
3	3e713ab0-822e-49b2-bbe5-53d76cad3672	Plan API	Plan API in draft.	f	1760281353285
3	d2738b6a-1f53-4efa-ba52-7017ba328979	Fix database schema	Fix database schema for project X.	t	1755705987654
3	d0124667-1fad-43cb-a5f1-20719d90a72d	Design UI mockup	Design UI mockup and document.	t	1778389229378
3	d2b70b2c-1286-4467-8cc7-f8fe0654623a	Complete API	Complete API using TS.	t	1761803499105
3	22de79c1-794d-4e54-a465-7de6aaf5399d	Plan unit tests	Plan unit tests with comments.	t	1772308681694
3	51c67963-d0a6-46f9-beec-4c7ad7a624a5	Test email template	Test email template before EOD.	f	1760504578080
3	bfd62164-1d26-465a-89a4-a67a32b409be	Plan UI mockup	Plan UI mockup in draft.	t	1760739879208
3	cb8b85f0-e96f-470c-9918-8d311cc4131e	Complete UI mockup	Complete UI mockup with comments.	t	1765753954160
3	6c2e3af5-4ef1-4cda-b077-edf32b15eadc	Deploy UI mockup	Deploy UI mockup for project X.	t	1760044010829
3	ad5235a1-801f-475c-8526-ef1a61a83a99	Test email template	Test email template with comments.	f	1759058300509
3	48877c02-2b31-4aea-a7da-a72e139b419c	Write database schema	Write database schema before EOD.	t	1771637879562
3	25c080ce-6798-4b18-b7e4-0527b15828fc	Complete API	Complete API in draft.	f	1756940610311
3	305fc4cd-bb95-4cd6-84f5-b0848835155e	Deploy Dockerfile	Deploy Dockerfile with team.	t	1775371986063
3	74cc905e-09f7-40ec-815a-b3e3c2e51c80	Review API	Review API before EOD.	t	1773638911248
3	7fdadfc3-ff8e-4a90-bbdb-2564daf8f412	Test unit tests	Test unit tests and document.	t	1771755978088
3	da139bd6-ccbf-4692-a42e-09593cecf92d	Test login flow	Test login flow for project X.	f	1769714361716
3	518da46e-d647-4296-a327-7b2aeb23f071	Deploy UI mockup	Deploy UI mockup before EOD.	f	1763581790778
3	af176777-6fe8-4ec5-8e8c-87adcb103bb7	Review blog post	Review blog post for project X.	t	1762410359847
3	72e0629e-b3ce-4822-b22d-af1bd294981e	Fix database schema	Fix database schema in draft.	f	1777361600359
3	f96d9ee6-2405-4153-bd22-05ec22c250a5	Plan Dockerfile	Plan Dockerfile for project X.	f	1769266265196
3	b36a6727-7f79-4f9a-a352-325c8fd91de6	Write API	Write API with comments.	t	1761265984877
3	80bd7a7a-7568-43ed-8fd0-ee77d9bf393e	Complete API	Complete API in draft.	t	1765057309664
3	f1e3695b-bfe9-47f0-aed3-72eb06fcd4f5	Fix blog post	Fix blog post using TS.	f	1763305662265
3	c48a12e6-9cd1-41cb-9ebd-20c2889b589c	Plan Dockerfile	Plan Dockerfile and document.	f	1772082601621
3	6eb10207-9db7-4f54-8755-f72b0283e54d	Test email template	Test email template with comments.	f	1758662730778
3	ff6de938-7e98-4992-8e0c-1ca3236cf899	Deploy API	Deploy API for project X.	f	1779123531089
3	b4a36440-55c1-40df-8035-80eebc8c5b7e	Write blog post	Write blog post for project X.	t	1770439979984
3	d8ff1ccb-ff26-4980-a71b-0041738cfa2d	Complete Dockerfile	Complete Dockerfile with comments.	f	1750468197964
3	a3b5bde0-82db-494c-85c2-5a6dab440d07	Review email template	Review email template before EOD.	t	1761360632627
3	e4aa9f27-ea94-4c2f-ab6d-73390dab83a5	Design Dockerfile	Design Dockerfile for project X.	t	1758235352442
3	95a98f13-bd97-426f-9fa1-940801bf1257	Write blog post	Write blog post and document.	t	1775008090523
3	be7edbad-02c3-4d3e-9f20-02778900d4bf	Test login flow	Test login flow before EOD.	t	1776239092104
3	d68c2795-6bcb-4b95-bbe9-c676206a4298	Fix login flow	Fix login flow and document.	t	1754133372519
3	c61568df-f562-44cb-ba62-2c252ba8acac	Fix unit tests	Fix unit tests for project X.	f	1762900168620
3	b79ca89a-34ad-462c-b957-3ca6c10f304b	Write UI mockup	Write UI mockup in draft.	t	1756892088166
3	4a428234-a945-4ed3-82f0-d22414f908b1	Deploy Dockerfile	Deploy Dockerfile and document.	f	1778836243742
3	27a4a4a4-694e-41f6-b1fb-1999ef27effe	Fix Dockerfile	Fix Dockerfile before EOD.	f	1759810585223
3	c2d41e8f-bbad-4001-bb2f-66a11a52df10	Plan email template	Plan email template using TS.	t	1756241161758
3	92ecd9e3-450c-4ab5-9856-0ff014a3cb5e	Review API	Review API before EOD.	f	1773408623055
3	b4261a99-ce7d-48f8-88bc-258b2878568b	Deploy blog post	Deploy blog post and document.	f	1774853929044
3	abb9a88f-7fad-4072-b62f-498b5f6cbf9b	Review login flow	Review login flow and document.	f	1750846795981
3	21bb9586-ff85-4e4e-9086-2a4a30e85168	Test unit tests	Test unit tests before EOD.	t	1771448751690
3	deedefbe-c9b8-449e-8a19-bc9e51523162	Review API	Review API with comments.	t	1766767179173
3	1c5fb7df-db2b-45a1-b073-399a3cb5422f	Fix unit tests	Fix unit tests using TS.	f	1765601051318
3	0e2784f5-12c0-43dd-a727-2a86f10f99a0	Design API	Design API using TS.	f	1764350444309
3	3e266808-dd07-45f4-bada-9449aaa7097d	Design unit tests	Design unit tests with team.	f	1759935492921
3	15e9ad88-3a22-473a-ad17-8c4d90ec1626	Deploy Dockerfile	Deploy Dockerfile and document.	t	1753422970622
3	a6cbb793-7ca6-4cf5-a702-83ec01eb9bbb	Deploy Dockerfile	Deploy Dockerfile using TS.	f	1768329559266
3	6170092a-42cc-4c66-849e-4739e41b4a09	Review API	Review API and document.	t	1765773247852
3	0c704818-4554-4f9e-b219-6ca341b43c3e	Review email template	Review email template with comments.	f	1751870860995
3	109639e5-5985-4ea7-95fa-546d3f8aba53	Deploy UI mockup	Deploy UI mockup with comments.	t	1759788326691
3	08b1b3e9-742a-4cf0-8c10-188b219d312e	Write UI mockup	Write UI mockup before EOD.	t	1779313044526
3	7b1bdb6a-9b49-42d5-bb0c-8ee538721e37	Complete API	Complete API in draft.	f	1765151763860
3	b12ecb7e-ed86-44ba-8314-ebc2d0d20a1a	Plan API	Plan API with team.	t	1764065186628
3	1d326496-4662-4af7-bae3-c296ba1328ce	Fix database schema	Fix database schema before EOD.	t	1758450800153
3	d28e69f1-e946-4041-8ded-654018b250f4	Complete email template	Complete email template for project X.	f	1768627689535
3	e663d9dc-760f-40a7-a04a-3075e952b375	Review unit tests	Review unit tests using TS.	t	1769265044207
3	35025b9a-da26-4d3b-ba9a-febaa15d9a3c	Design UI mockup	Design UI mockup with team.	t	1762800835475
3	24220681-3884-4585-83a0-20e880e2bdf8	Design API	Design API for project X.	t	1773914475058
3	ebad1120-d07c-4985-92f7-31de69288a20	Write API	Write API in draft.	t	1774128708290
3	c51ac4b6-7fb4-4a49-978c-eb300fbc5bbd	Deploy Dockerfile	Deploy Dockerfile with comments.	f	1780710583977
3	2544ab1c-0e54-469a-b815-7d6d816aa890	Write API	Write API with team.	f	1777848189148
3	e56e87d9-652a-4582-aa1a-d48a2bda8baf	Design unit tests	Design unit tests in draft.	f	1756388767115
3	beb9dc93-c8bd-41e0-9b45-5c875d05f154	Plan database schema	Plan database schema with comments.	t	1763253633604
3	2a59570c-2092-4628-ac6b-0f752581de59	Plan API	Plan API with team.	f	1779842531286
3	4160d906-a769-4abb-b912-5599e7c695dc	Review email template	Review email template in draft.	t	1760665058030
3	17a05741-e743-490f-a0c8-1ec7dd7d14d5	Deploy blog post	Deploy blog post with comments.	f	1776615341794
3	1dfceff1-2a7e-41f7-a59b-8cde255d778e	Fix unit tests	Fix unit tests with comments.	f	1771706089763
3	bacedb9a-4215-4499-a6ed-0652716734fd	Review email template	Review email template before EOD.	f	1780737014494
3	a6e96ef6-8438-43a1-957d-637fe4d241ab	Deploy UI mockup	Deploy UI mockup using TS.	f	1776950175138
3	7b0348d8-967a-4cb6-830c-50c20bde4ff8	Deploy database schema	Deploy database schema before EOD.	f	1775789619532
3	db5000e0-21b2-45a0-a5ea-4f1b6d3b0b9f	Complete email template	Complete email template in draft.	f	1775879479515
3	134bcb7d-997f-4fe5-a821-da2a57f25dba	Design database schema	Design database schema in draft.	f	1780015692250
3	bb38173e-e52d-419b-8138-bbe2f7195ba6	Deploy blog post	Deploy blog post in draft.	t	1769298762078
3	cd10e9e3-7ab9-4be5-a598-e8c94c8a16b9	Design Dockerfile	Design Dockerfile with team.	t	1754906656928
3	2bd88f06-dabd-4e57-a766-905610c8df47	Write blog post	Write blog post using TS.	t	1781695553312
3	a850b746-d017-4fc6-abf5-3c37bfe0aa52	Write Dockerfile	Write Dockerfile with team.	t	1759021441189
3	5f502a55-0b2d-40fa-aa23-031ec077ac9c	Write API	Write API and document.	t	1770333512894
3	a21fe31b-ec6a-4d2a-8a0f-b69508b4931d	Fix Dockerfile	Fix Dockerfile with team.	f	1775694807866
3	c60aaf1d-a78f-4e84-9577-f429c314ab91	Deploy UI mockup	Deploy UI mockup in draft.	t	1754406402212
3	a10a5688-fec3-4d6e-bbc7-7f2bd97b56b7	Review email template	Review email template with team.	t	1779160148983
3	049634de-338c-4a68-8f69-d70c95ef22af	Design blog post	Design blog post using TS.	t	1755716709150
3	c631b8f8-e41e-463e-ad40-216d2199520a	Design API	Design API with comments.	t	1770807924866
3	e422d466-d4c5-4aea-98da-fbf56de7e2be	Design login flow	Design login flow in draft.	f	1757281555489
3	b214ef76-efbd-46cc-9e22-9148dae03e80	Write unit tests	Write unit tests for project X.	f	1751408818751
3	896a88e3-a1e0-46a1-9e6d-5526abae7c9e	Plan blog post	Plan blog post before EOD.	f	1773813795169
3	8d50257d-eb98-4e61-909b-a9d06b6c2369	Plan email template	Plan email template before EOD.	f	1752400684841
3	e4a73985-1631-4db2-a853-680248a029d4	Complete Dockerfile	Complete Dockerfile using TS.	t	1770634976192
3	9827eed1-5b36-4a1c-97d1-0ae78bee47f2	Write UI mockup	Write UI mockup in draft.	f	1758908747426
3	a3e88ea6-82d0-4d48-877b-7ec83960ecd8	Design API	Design API before EOD.	t	1763821451728
3	4443db40-9059-49a1-91a3-852c23880aa5	Fix email template	Fix email template in draft.	t	1757806053831
3	d92a9eff-da5c-4e95-84cf-f2b1f744fa80	Review API	Review API before EOD.	f	1771665303626
3	7a4cf4fb-3e45-4c3c-bfb7-e6e650d13cc3	Design database schema	Design database schema using TS.	t	1771276409256
3	ae78301d-acd9-41ff-84c0-5ea85babd5fd	Deploy Dockerfile	Deploy Dockerfile before EOD.	t	1765874497282
3	a31b209c-b3dc-499c-b5e1-05aff3a158fa	Design UI mockup	Design UI mockup with comments.	f	1753364744408
3	7f191609-7be9-4200-951c-b9a01723e064	Write Dockerfile	Write Dockerfile and document.	f	1755038976729
3	a288022b-228a-4997-861d-1e1228ee5808	Deploy Dockerfile	Deploy Dockerfile before EOD.	t	1770266539691
3	357ade35-ef0b-48fd-be69-65b76779275c	Deploy database schema	Deploy database schema before EOD.	f	1770476564557
3	6edf3a80-247c-46c4-8ac5-209c8400d629	Design Dockerfile	Design Dockerfile using TS.	f	1756836977811
3	b43cdf14-43df-4b53-8d34-cc7cef0b27d5	Fix blog post	Fix blog post in draft.	f	1753691146680
3	de643682-f3fc-49ab-b67e-39ab9e71d8c6	Review UI mockup	Review UI mockup for project X.	f	1779827782662
3	65c3a52c-9073-4e2e-a3c6-2aa18b4ca510	Complete Dockerfile	Complete Dockerfile before EOD.	t	1766735772096
3	00eb21f6-f3a9-44ce-9500-c258d961a34b	Test email template	Test email template before EOD.	f	1762231376615
3	94e198ab-c1c3-4e70-80a0-56557432c5d6	Plan email template	Plan email template in draft.	t	1753629591641
3	29d4ead5-be7d-4c67-9d6e-a9f33e65aedc	Deploy database schema	Deploy database schema with team.	t	1759746002682
3	cc33d160-cd81-448a-983e-e771cadccf1f	Write login flow	Write login flow for project X.	f	1755932435343
3	cc993112-f271-4b68-93c4-a8fb1a6cbc9b	Test blog post	Test blog post and document.	t	1775145909647
3	ba9ad9e7-91f3-4cad-bf9b-8e068b186b92	Test UI mockup	Test UI mockup with team.	f	1756104694469
3	b1b07fe6-6592-4ec4-9241-274301b3663d	Plan database schema	Plan database schema with team.	t	1765298533908
3	ab84c12a-c5e0-40fa-a63b-43493e5c614d	Design Dockerfile	Design Dockerfile using TS.	f	1760937293845
3	0b2cbb70-47be-4f31-bb01-d619e1f0a495	Write unit tests	Write unit tests for project X.	t	1780620464368
3	93cba5d6-3f20-4a0f-9e26-8dc08254f515	Test API	Test API for project X.	t	1755561922468
3	39881e2a-d256-41e4-959c-cb398ee8c354	Plan Dockerfile	Plan Dockerfile for project X.	t	1752746499249
3	5c52bc79-9fb4-4cbb-9aec-5fa4f86ca08b	Plan UI mockup	Plan UI mockup with team.	t	1764818365538
3	c8949c69-39c0-464e-b41f-93a7ad003aff	Review UI mockup	Review UI mockup with team.	f	1757786030769
3	da1a93dd-9cb1-4bc4-8a6b-e1aeae1ba931	Review UI mockup	Review UI mockup with comments.	f	1752793144977
3	bc3a4872-77d4-483a-89f3-9602c9f9ac15	Complete login flow	Complete login flow with comments.	t	1753601023976
3	5e70cf3a-803e-4908-b373-e2fcd82ab3d8	Write email template	Write email template and document.	f	1758299651235
3	87b1bc2d-a9a1-4eb9-b031-dfb5897ee5d2	Write Dockerfile	Write Dockerfile using TS.	t	1760281281293
3	1327d10a-6381-49f2-a553-dc0374628f48	Deploy unit tests	Deploy unit tests with team.	f	1774369372552
3	aa4fe1a7-37b1-40d5-8629-9b31ef3e2f7d	Write UI mockup	Write UI mockup and document.	f	1762583028097
3	dfd3b1ce-0c22-404d-bac9-5f47538492e6	Complete unit tests	Complete unit tests and document.	t	1772662467773
3	adcfa91e-f97a-4c71-9c02-47b1051e3c6e	Design UI mockup	Design UI mockup using TS.	f	1756439598880
3	90189657-c3ad-4882-8459-d4c34d58814b	Review database schema	Review database schema in draft.	f	1772658803961
3	5817ef8c-ce8d-4365-ab89-43258ce7a985	Fix UI mockup	Fix UI mockup with comments.	t	1756008862207
3	f8f70f76-272a-41ea-8b07-23a4f8a7c9b5	Fix UI mockup	Fix UI mockup with team.	f	1775646735816
3	a0ee0111-0368-4635-bacb-f66aad0e6e0b	Test UI mockup	Test UI mockup before EOD.	t	1763468103615
3	e203675e-1130-4ad8-a985-f1697dfe1a7e	Design database schema	Design database schema with comments.	f	1774796678356
3	c7b98329-930b-4320-9b52-d4a3fed6da69	Review login flow	Review login flow using TS.	t	1756038387618
3	ca4279fe-d41c-441e-8f5a-0bdeb0d3a8fe	Deploy API	Deploy API with team.	t	1775365393726
3	93e8dc49-d667-4b41-b56f-2283b0527910	Deploy blog post	Deploy blog post with team.	f	1761113728009
3	d2a93ee9-1eaa-4016-bfdc-b26d6eccb31b	Plan UI mockup	Plan UI mockup using TS.	t	1763251097738
3	76e0699e-754c-4a33-b0d4-b768c318cdff	Deploy unit tests	Deploy unit tests for project X.	f	1762162780792
3	bd8d273d-68b8-45c5-ad89-25725de07f58	Review database schema	Review database schema for project X.	f	1751308526456
3	1c400054-9e08-4bfe-8942-e67c30651569	Write email template	Write email template for project X.	f	1760185290397
3	d3b2c099-60ed-4d24-ac5e-eee53bd39250	Complete API	Complete API and document.	f	1762742214113
3	fac66d12-d0ed-4343-a580-db801ffc2a21	Write email template	Write email template before EOD.	t	1756242981754
3	3a8100e8-44fe-41e5-b375-116dd65b573c	Fix blog post	Fix blog post with team.	f	1768447703344
3	39da7759-bc69-483f-a52d-49a366b69766	Fix UI mockup	Fix UI mockup with team.	t	1755030924548
3	17db5a7d-710b-4440-9b31-3a2f506f2e23	Deploy database schema	Deploy database schema and document.	f	1772242623775
3	646c1472-d32f-45cb-9836-53615c4d448f	Design Dockerfile	Design Dockerfile and document.	f	1775722935430
3	2e2307ae-870f-4aeb-a743-75ff26e32020	Plan API	Plan API and document.	f	1767134130050
3	dc56029a-7f12-411b-b6c2-47f91962c2b9	Deploy API	Deploy API using TS.	f	1763648653971
3	193a4b54-3598-4e32-9f8b-1ebec1623f72	Write login flow	Write login flow for project X.	f	1760777870035
3	24762336-951c-47ac-80b2-e3113e81ad8f	Test API	Test API and document.	f	1757591396301
3	ceba72ec-369c-4d74-8ff5-76906b4d288d	Deploy blog post	Deploy blog post using TS.	t	1776157942400
3	2a0802d9-419d-45ac-b9a3-0a71d3eb415d	Fix UI mockup	Fix UI mockup with comments.	f	1760853697917
3	5140fb15-70a4-418e-a89a-f278ba0d5a6d	Design Dockerfile	Design Dockerfile before EOD.	t	1751197241533
3	893dc5b5-c5c6-4b8a-956f-c2b84c1b3796	Design Dockerfile	Design Dockerfile with team.	t	1781427609175
3	87f66a35-47a3-4414-9817-222a9bbda926	Complete UI mockup	Complete UI mockup in draft.	f	1766819962168
3	abb3eb83-4d50-4cad-aa59-e957252bdef8	Review UI mockup	Review UI mockup using TS.	f	1759728999019
3	8b642273-24f1-4eb0-9e46-cf01c85732f9	Test blog post	Test blog post in draft.	t	1756410782589
3	b74b402f-1cff-4807-ab13-33fcc659361f	Fix email template	Fix email template using TS.	f	1763803150039
3	7d3f2a91-e9a1-4eba-88b6-bdf54bfca454	Review API	Review API for project X.	t	1752471373950
3	5caa2ef6-f993-41f7-87ac-46090a6d575f	Write UI mockup	Write UI mockup with team.	t	1761275037071
3	0998b731-56c9-4234-9b7b-87c6bb8a47d9	Fix API	Fix API before EOD.	f	1770666555956
3	b28cd61d-4559-426d-a477-d8cb5374c526	Write UI mockup	Write UI mockup with comments.	t	1750877479572
3	e8824b50-e026-42d2-9c9e-643973f50648	Design unit tests	Design unit tests with team.	t	1768772365415
3	afda5f8e-652d-443b-ba7d-e81fad9dde0b	Design API	Design API with comments.	t	1775996607582
3	946b4975-ff1b-4b22-af35-a5c33687fb74	Design UI mockup	Design UI mockup before EOD.	f	1756797185841
3	422569d6-50da-433c-85dc-c63f8b0b475d	Test Dockerfile	Test Dockerfile and document.	f	1760398841597
3	54f30f11-d891-4096-ab87-e9d925df2272	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1774521473140
3	b5126e1a-91e8-479e-bc39-3434367ed42b	Design blog post	Design blog post and document.	t	1758889547981
3	79d21109-a2f8-4ade-aa1c-462251266f9b	Plan unit tests	Plan unit tests with comments.	f	1770350369324
3	05c4db2a-612a-47e8-85cc-060c7c5919c5	Deploy blog post	Deploy blog post and document.	t	1777047838373
3	18007c9d-75c0-4fe3-84bd-1905b41bcb97	Test unit tests	Test unit tests with team.	f	1767680042956
3	d6c2715d-4d53-45c4-ad05-92dc8819839d	Design email template	Design email template using TS.	f	1767943309797
3	a2b2cb71-16c3-4555-a234-7c85503f23bc	Plan login flow	Plan login flow with comments.	f	1761803925859
3	1f88bd6f-56f2-4370-bb5a-0827371d06a5	Review UI mockup	Review UI mockup before EOD.	t	1757488931389
3	85385609-5ac2-48b2-b609-0e845355fb17	Complete UI mockup	Complete UI mockup before EOD.	t	1766838114466
3	57cd61a5-7d80-4406-aaf5-9320cb975c06	Design unit tests	Design unit tests with team.	t	1752416527296
3	121e1e1c-2f30-4600-b51f-7429553f63bb	Review UI mockup	Review UI mockup using TS.	t	1776683586472
3	621fbc38-2b2c-45e5-b29e-631c07392216	Review API	Review API with comments.	t	1758192624831
3	54545061-3447-4a29-b3a6-87235c9fa5a1	Design login flow	Design login flow for project X.	f	1761220943920
3	2172ee7c-513e-4acc-8215-76b597b2c815	Complete unit tests	Complete unit tests in draft.	t	1779136471493
3	f824ef28-8de1-4685-a360-225a5537d90e	Write unit tests	Write unit tests and document.	f	1776061655680
3	a740f8df-1eda-4af4-b4e2-0c7d26fafacf	Test database schema	Test database schema using TS.	f	1773598851443
3	4ad77d19-03f3-4fe0-8486-ea22c451bdf9	Deploy API	Deploy API with team.	f	1763907714271
3	8f5eecfc-2c5e-435c-b9a6-9e4348f3e17f	Fix database schema	Fix database schema and document.	t	1765286510866
3	5c526df7-c238-4407-8304-a3522b33c10e	Deploy email template	Deploy email template using TS.	t	1774451024833
3	12814e22-02ef-4dbd-952e-da74914c721c	Complete database schema	Complete database schema with team.	t	1771865041828
3	70a37086-1ab4-41b0-90c1-ba35acf678ce	Review email template	Review email template using TS.	t	1774767583792
3	a0beeac2-90a0-4e68-a76e-757e8642c5ca	Review login flow	Review login flow before EOD.	t	1765835824584
3	e65c363e-4e46-4aba-81a9-14b54e6195b4	Fix email template	Fix email template with comments.	f	1780768257651
3	6c028ee6-3390-458c-9bd1-021376b4706b	Review unit tests	Review unit tests in draft.	f	1764846265940
3	31f8457e-eeec-4505-afa8-05a614ad3fff	Design Dockerfile	Design Dockerfile in draft.	f	1775358416579
3	08262f53-20aa-4755-8920-cebd5ad53f33	Complete email template	Complete email template before EOD.	t	1758108478026
3	4e37bc98-9425-4ad4-a63f-ad70b38f4ca6	Deploy UI mockup	Deploy UI mockup using TS.	f	1774804916166
3	15838669-f1b2-492f-9d7e-e9ba12bbd9a7	Deploy blog post	Deploy blog post and document.	t	1768220639945
3	b5e1dca4-7565-4326-afaf-748bdab7d18e	Review Dockerfile	Review Dockerfile with comments.	f	1779316683277
3	965dafe2-f8d2-4b80-b5d5-b94eb43e6d9a	Plan blog post	Plan blog post with comments.	t	1770098097527
3	1f6eb9cd-fb07-4726-b43b-aadf1777fd79	Review unit tests	Review unit tests with comments.	t	1781646003848
3	3b83475d-217f-4b28-a70b-e9714c704bf7	Write database schema	Write database schema using TS.	f	1781704080985
3	c3dc42fe-e5cc-4f1d-81be-1b588e563d90	Plan blog post	Plan blog post with team.	t	1778975500636
3	62d1f2a2-e9b9-49be-a79d-56c8f577ccb3	Test database schema	Test database schema with comments.	f	1755678512916
3	a4f39fcf-c1ca-405b-bda8-f249eaa95a95	Complete unit tests	Complete unit tests in draft.	f	1770769029757
3	ca629dbd-f07b-477d-83a7-3ddd0a00bc2b	Design Dockerfile	Design Dockerfile with team.	f	1763618521022
3	8fe52548-e55d-4b0f-b6ae-4ef02292bd64	Write API	Write API and document.	t	1766417034512
3	bf0ee9b3-3eea-4068-8313-4e7355b71d9e	Plan UI mockup	Plan UI mockup with comments.	f	1762920593031
3	4acf2bff-5715-4103-a693-d52b106575dc	Complete UI mockup	Complete UI mockup and document.	f	1761854468047
3	b598d242-b7c9-4b9f-a2f1-09767c986743	Fix email template	Fix email template with comments.	f	1755733711419
3	7e01532a-f5e5-417b-a594-4dfada12f7f2	Design database schema	Design database schema in draft.	f	1767093535273
3	bcf79756-b8ce-4051-a2b9-d4e6889385cd	Write login flow	Write login flow before EOD.	f	1768369344763
3	c1e5d65a-810f-45d5-8a5b-327026cf738b	Review unit tests	Review unit tests before EOD.	t	1771849328605
3	5e32ce55-972c-468c-85e3-4d7a2e63ef57	Fix Dockerfile	Fix Dockerfile and document.	f	1777699676166
3	41a9d09d-82a4-4a9c-914b-c5a18ac2cf1a	Deploy blog post	Deploy blog post before EOD.	t	1756596132713
3	1401b572-d943-4dbe-ad57-51a9a90a4996	Complete UI mockup	Complete UI mockup before EOD.	t	1775750625065
3	98278d1b-4e0d-4bae-b908-f2b942c7a0be	Design blog post	Design blog post using TS.	t	1753089753008
3	241e9294-2caf-4fab-8444-b2e1eb9f9a09	Plan API	Plan API with comments.	t	1764380052573
3	aa33024d-b9b0-45b5-839c-b964ec987f06	Write email template	Write email template for project X.	f	1752517647433
3	b9a8b3e3-e748-4e1e-a19e-f9965379b20f	Write blog post	Write blog post with team.	t	1763367610158
3	21dc0bd7-e8cb-4b97-adb8-3bc0fa99e42c	Design unit tests	Design unit tests and document.	f	1779780687319
3	d65fe606-48a2-45b3-9a63-75e9353609f8	Design API	Design API and document.	t	1771101513500
3	af2196ad-4aba-499f-8028-5a60f89032dd	Plan database schema	Plan database schema using TS.	f	1763399032256
3	1b985ee4-e9e5-448c-84a3-02280a5c6465	Plan login flow	Plan login flow for project X.	t	1756660244625
3	653d3eb4-0fcf-4fac-b8bc-8810edfcab7e	Fix UI mockup	Fix UI mockup using TS.	t	1757680067161
3	56813786-127a-40ae-af4e-f71d50a851c4	Fix UI mockup	Fix UI mockup in draft.	f	1762695845118
3	2608953d-3419-44ea-9188-6f89a495eef0	Plan blog post	Plan blog post for project X.	t	1759411968621
3	d1451322-67a4-4a8c-9ca5-a5a7c66049e4	Deploy UI mockup	Deploy UI mockup and document.	f	1763354491606
3	4dd49ab4-af0f-42c1-8ccc-eae4afe2b061	Review unit tests	Review unit tests with comments.	t	1765664567193
3	febb5fe2-8135-4c5a-a363-c6a34f3eed03	Test API	Test API using TS.	t	1756074538377
3	e47ba54d-d01c-4007-a261-7a347d6ed10b	Review Dockerfile	Review Dockerfile using TS.	f	1770864515918
3	73e9d6a4-7f9f-4310-b591-b6a2bba0e3c1	Complete database schema	Complete database schema before EOD.	t	1755381327019
3	776e01d0-5c3a-4434-a6b1-558f1eb9eb07	Plan UI mockup	Plan UI mockup using TS.	f	1754199328547
3	dbc0aabc-a7f8-4a79-afee-87088bcf3d9f	Plan email template	Plan email template before EOD.	t	1774273856094
3	f9304b71-0aeb-4501-98a2-437e4637f7fc	Deploy unit tests	Deploy unit tests with team.	f	1761132120331
3	e5aa8604-c1be-43b6-8a73-46ccab3a439b	Deploy login flow	Deploy login flow with comments.	t	1762997402040
3	3f2e6d44-a34f-4b5c-a852-b51b61979b1e	Plan database schema	Plan database schema for project X.	f	1763471556790
3	7afbb0c0-3f4d-4c3b-b515-f276cdeb9cb5	Design email template	Design email template in draft.	f	1751019643337
3	ee8201b7-951a-4694-b2ae-a1af8ec080d1	Test UI mockup	Test UI mockup with team.	f	1768814775987
3	a9d15ab0-5ba0-43ff-a9e5-c70cff05076a	Fix login flow	Fix login flow using TS.	t	1759500227120
3	0569a19c-28c8-4e3e-88b0-9b8cc4a94f15	Plan blog post	Plan blog post with comments.	t	1755824446736
3	06d9a3c2-c304-4b53-8c2e-4902e89bad1a	Complete login flow	Complete login flow with team.	f	1762715732119
3	18074be1-67ab-49a1-b8e3-14be5a3552a1	Complete blog post	Complete blog post and document.	f	1759846070486
3	7ed46cd0-6eba-4521-8b8e-b8bb19d557b4	Deploy unit tests	Deploy unit tests with team.	t	1776755517452
3	9bbc4ce9-3b52-4d46-99f6-e0bed0dd84ea	Write Dockerfile	Write Dockerfile with comments.	f	1763044066779
3	fa233695-83c2-4b75-8c26-285fdf112b72	Write unit tests	Write unit tests in draft.	t	1752476123854
3	f606f2bf-6d87-4bd6-8856-772b002461e2	Complete UI mockup	Complete UI mockup with comments.	f	1769563831237
3	9d7f09ef-0601-4ee5-8cae-f633f9338ae9	Test unit tests	Test unit tests with comments.	f	1762063204618
3	80995192-8a88-4faf-9e47-52420365692c	Write blog post	Write blog post in draft.	f	1751027241945
3	1875895f-80e6-4b10-abf0-d052d8bc82dc	Fix blog post	Fix blog post with comments.	f	1768699346481
3	cb15c858-056a-4967-843c-182ff7cf4098	Deploy UI mockup	Deploy UI mockup with team.	f	1769190341793
3	67a8f363-127a-4bb7-b2a7-6d3144546bb9	Test login flow	Test login flow in draft.	t	1772082091036
3	4bc6d123-4f85-4a93-aadb-792f3950118d	Test blog post	Test blog post with team.	t	1763531812709
3	3884cb06-de0c-40fb-8f8a-ca6bf51d2fcb	Deploy blog post	Deploy blog post with comments.	t	1767385103295
3	05a33bac-ba7b-4806-801c-6f07c6d80ca5	Design email template	Design email template with comments.	f	1760617313541
3	19a4534e-200e-4a64-aed7-a2f0e2338974	Fix database schema	Fix database schema with comments.	t	1760488862663
3	0fb64bcf-f3f9-45d9-b9bf-910b1ba7f5d4	Review blog post	Review blog post using TS.	t	1765671792787
3	13b49b53-fc8d-448a-a739-5a20f9aa06ef	Complete login flow	Complete login flow and document.	f	1758740793022
3	1efaefa8-4a7a-4225-9da8-626949ce4823	Design unit tests	Design unit tests in draft.	t	1769740730550
3	68ec0e66-bc22-4e3a-930e-c8cba8c48160	Review API	Review API before EOD.	t	1776110640469
3	1beaf879-8f2d-47f2-8cbc-1515c72b6818	Plan email template	Plan email template with team.	f	1755026365930
3	849e2716-5463-4ee0-a3ce-b68085994d77	Test database schema	Test database schema using TS.	f	1756945514555
3	fa5621e4-f67b-46fb-9417-a689e9835cf2	Write login flow	Write login flow before EOD.	f	1770864353400
3	78d842b1-26b3-4626-a98a-07f321c37ee1	Fix API	Fix API in draft.	f	1761099019409
3	ee5b9b34-8052-43ae-92c9-edd797ac22af	Review email template	Review email template before EOD.	t	1756291321015
3	f4f2d107-9252-4975-996b-84966c4ee694	Design login flow	Design login flow with comments.	t	1754678580184
3	4c94a405-7012-40f0-a5d2-677d8aa485a2	Complete unit tests	Complete unit tests before EOD.	t	1775146394812
3	63d70af6-13cb-4952-a776-e97510703291	Test UI mockup	Test UI mockup before EOD.	t	1760126179252
3	0b27a0a4-7b7e-4e6b-8b16-d9f7265a9167	Fix email template	Fix email template with comments.	t	1770139196156
3	bc7caacb-a0ec-4bc3-8f9f-360515cff755	Plan database schema	Plan database schema in draft.	t	1771699758545
3	e487aed6-6525-409f-912c-7a71736d248e	Design unit tests	Design unit tests with team.	f	1759847534912
3	a3e4c571-1c44-43f4-9b82-8f321d55d230	Review database schema	Review database schema with comments.	t	1754582569422
3	246cde4a-6386-4ff0-9fec-48ceb38bce6f	Test blog post	Test blog post with comments.	f	1759529119239
3	304f82a3-20ca-4dca-bea3-4a3c5fa4ea1b	Plan Dockerfile	Plan Dockerfile with team.	f	1772891786068
3	56518751-7902-4b78-b14a-0aabf3afcf52	Design UI mockup	Design UI mockup and document.	f	1760176361535
3	e17bd1fb-0467-4a97-8283-aceebb132dcc	Write API	Write API for project X.	f	1756968086153
3	007177f8-f421-4676-a9b6-2cc3047cb8c4	Complete database schema	Complete database schema with team.	t	1751394625217
3	fcbe0d6e-246c-4638-bdf3-ef1100e0d3d9	Plan UI mockup	Plan UI mockup using TS.	t	1764443890611
3	054491e9-fe65-408f-bf37-83bcf903958b	Write login flow	Write login flow for project X.	f	1761296729203
3	2be363a7-2c57-4b20-a94d-7d9d328677d9	Design UI mockup	Design UI mockup for project X.	t	1781587087719
3	e80e1c3a-1ebd-4850-8af5-f70db156aeac	Plan unit tests	Plan unit tests in draft.	f	1780726534167
3	84d0fb33-bf45-4aee-9b72-b217063573b0	Write Dockerfile	Write Dockerfile before EOD.	f	1764590308299
3	c1732929-6950-4419-8b1a-826b77f56b27	Plan unit tests	Plan unit tests with team.	t	1763561753927
3	0726d374-4c59-4f40-b336-f10c140d170a	Test UI mockup	Test UI mockup with comments.	t	1752560890332
3	3e5fbba3-0a71-4012-b055-6822a72de597	Deploy unit tests	Deploy unit tests for project X.	f	1765663711052
3	663b44b9-1c52-492c-b4c7-7bfd5ca5bce4	Test API	Test API in draft.	t	1764079554245
3	383b57f2-c307-4754-8927-8feff7749daf	Test blog post	Test blog post and document.	f	1781460205514
3	5df52659-f463-4d21-a366-ad00fd178888	Complete Dockerfile	Complete Dockerfile with team.	t	1756497654304
3	8fda219c-0340-4c5f-9ad6-e80817c669d0	Write API	Write API using TS.	f	1753111726881
3	c9ae2553-bbc1-4fb4-96e7-e5fb27b4c477	Review UI mockup	Review UI mockup before EOD.	f	1765368611205
3	306fecf3-ac87-431c-a9db-9d323a21a30c	Review login flow	Review login flow with comments.	t	1778932429594
3	f57f6ecf-f3b4-4e60-87c8-d0f3e9c3e9e1	Complete email template	Complete email template using TS.	f	1773018358832
3	4e249e66-125c-4ebc-b028-04c02aca4578	Fix UI mockup	Fix UI mockup with team.	t	1770542396778
3	471c600a-39d8-4207-bbb4-39058a78d7ec	Plan blog post	Plan blog post using TS.	f	1753884092122
3	16c994bc-f996-4615-861b-7da81380a689	Write UI mockup	Write UI mockup with team.	t	1754868286700
3	f21747fd-76c3-4315-aa9f-f6244e66dda5	Deploy blog post	Deploy blog post and document.	f	1769798812099
3	035ac728-5f30-45c4-9d0c-de61fcc574b4	Review Dockerfile	Review Dockerfile with comments.	f	1754534717138
3	b45aa6c0-e797-4a8b-b028-52c2fd5be679	Design API	Design API before EOD.	f	1769466698908
3	430ff06f-ff51-44f2-b6d3-4875a67a45da	Deploy API	Deploy API for project X.	t	1778116692787
3	28427fb6-2808-4bab-9e78-fbc03453312a	Complete blog post	Complete blog post before EOD.	t	1770479593096
3	c107c235-a8ef-4454-ad4f-83fd7c927e19	Test Dockerfile	Test Dockerfile using TS.	t	1772790230372
3	4ec9dc60-cd16-4947-9675-0e0332b6ceb5	Design blog post	Design blog post and document.	t	1750440714492
3	90fa3c67-ba46-4193-a2c0-14a4efe41fa7	Complete blog post	Complete blog post before EOD.	t	1754264901126
3	e7c68180-7c3d-4977-85ab-088e6b518be7	Review login flow	Review login flow with team.	f	1771712856690
3	ee09a8d2-1c1a-429a-82a6-52bb9b9c1722	Test unit tests	Test unit tests with comments.	t	1776900552536
3	76a5e96e-5c8d-4640-a768-3dc303b95604	Plan unit tests	Plan unit tests for project X.	f	1780453280811
3	37ad4c1b-9a0c-40dc-bf07-19c606fc6fbd	Plan blog post	Plan blog post and document.	t	1754752761372
3	50b49b13-8ee6-4371-970c-1f285acfb69e	Plan Dockerfile	Plan Dockerfile in draft.	f	1768357839764
3	6c4eccc4-e0f1-41cd-84dd-d788d776c0f8	Test UI mockup	Test UI mockup and document.	f	1761884605664
3	f52bf3bc-c270-43de-8880-707c7dd3b023	Deploy email template	Deploy email template before EOD.	t	1766458072622
3	0104f44f-b2e3-43a5-9c4a-ef254e66348a	Plan blog post	Plan blog post using TS.	t	1753306970289
3	acdce459-7a98-4f13-9cf3-4f146e4dd31c	Complete blog post	Complete blog post using TS.	f	1781153562647
3	0d86b7d4-fb14-4dc3-847d-a1603772a1c6	Fix UI mockup	Fix UI mockup using TS.	f	1767860086930
3	0e5eb789-f52a-4360-878e-41d0ee936848	Plan unit tests	Plan unit tests for project X.	t	1777403118665
3	a734c1ed-a391-4711-ae3e-f7880129cac1	Review UI mockup	Review UI mockup for project X.	f	1768247621578
3	f938678e-9c2c-4c10-ae90-e62b5419ddaf	Plan Dockerfile	Plan Dockerfile before EOD.	f	1771909691700
3	da391876-1f94-4ee4-8282-ad6ce31b4d64	Review login flow	Review login flow with team.	f	1752267185368
3	3b642027-3a17-4a50-9825-6e1f66b80f67	Review email template	Review email template with team.	t	1781160746255
3	ea68e2e8-fd33-49a8-b950-96282d03f2b2	Deploy API	Deploy API with comments.	t	1768317314725
3	e9863132-95cd-4095-b448-a2b6e69883bb	Deploy email template	Deploy email template and document.	f	1755247134987
3	a5d9c57f-c29f-4650-a948-1806d1191aaf	Design login flow	Design login flow using TS.	f	1757142390625
3	04bb7f9e-c469-4cfd-882c-b947d9ea3b96	Design login flow	Design login flow for project X.	t	1765793979226
3	d237c1db-23fb-425f-858c-bbf9727c8079	Design Dockerfile	Design Dockerfile for project X.	f	1780513497270
3	3d21373d-9042-480c-bb68-0faa48de6c84	Fix unit tests	Fix unit tests using TS.	f	1768946579380
3	dffb14b1-fc0e-470b-875e-14e9f1ee8bfd	Review blog post	Review blog post before EOD.	t	1777673874317
3	e44fb581-fabc-43a9-9338-b407e64fe311	Complete database schema	Complete database schema before EOD.	t	1773224982585
3	e997a7af-8bc2-4560-a6a6-17c14de9904d	Review API	Review API using TS.	t	1767504610103
3	38c46dfd-e61c-4f68-8cf7-533e03c6aca2	Test email template	Test email template before EOD.	f	1762241688992
3	d750af3f-fede-4c67-951c-b27f09e28cb2	Plan email template	Plan email template and document.	f	1776831591353
3	ff11fd4e-cea4-4987-8cab-c6b9757dbee8	Complete email template	Complete email template in draft.	t	1768228312295
3	807648c3-0e70-4c95-91cb-a7be3a0ffb8a	Write unit tests	Write unit tests with team.	f	1750378377865
3	5975a210-e915-44e2-91e1-a09ca7aa58bc	Fix database schema	Fix database schema for project X.	f	1757495311912
3	34e198c3-19bf-4d3d-a690-05f8b2d32a62	Design email template	Design email template with comments.	t	1752053886703
3	ec5eed96-111f-4241-b917-3813fbb30b5b	Fix unit tests	Fix unit tests with team.	f	1753377017126
3	b2d60a0e-9dd6-4204-a15e-d18936ef6811	Fix database schema	Fix database schema with team.	f	1758004777042
3	b684dfbd-200b-4717-9554-7923523e2822	Plan Dockerfile	Plan Dockerfile and document.	f	1778867010183
3	837a11c5-30a4-4ee9-9549-8d716b6493cf	Complete login flow	Complete login flow and document.	t	1777503851130
3	a9055238-6f0f-4ff4-9fda-4e4433bae9ca	Test email template	Test email template with team.	f	1766162137230
3	3b93bd15-421f-4d6c-be8a-745b1f525eff	Review blog post	Review blog post with comments.	t	1762731991003
3	12bf2b44-bc2f-4b9f-86eb-5ce6fb05ff0b	Plan blog post	Plan blog post using TS.	f	1755637465596
3	1bbde109-a299-4082-b071-c6a06614610c	Plan login flow	Plan login flow using TS.	t	1772385605166
3	8a3f2359-08db-4264-99d3-6d2db7c1c8a8	Review API	Review API and document.	f	1765105058089
3	c7b9aa3d-ca6c-4ba3-a083-c1d920750642	Review database schema	Review database schema with comments.	t	1769173699977
3	7c6d6f7e-5ab9-47c5-9d09-2957e6752b29	Deploy unit tests	Deploy unit tests in draft.	t	1773400471231
3	fbb34f10-5eb8-4651-9c21-5293070a391b	Review database schema	Review database schema with comments.	f	1774991632378
3	fae3c8ba-c382-4c46-90aa-7652b119f100	Test login flow	Test login flow in draft.	t	1770503754797
3	237e951f-1a5d-4042-96ff-d31a2b1ab353	Test blog post	Test blog post in draft.	t	1780363884122
3	cbd9d573-1c36-4996-9ff7-218c61af5721	Complete email template	Complete email template with comments.	f	1765097229479
3	7dc15b50-0282-4b6b-b2d0-9d8ffca072c5	Complete Dockerfile	Complete Dockerfile before EOD.	t	1776217720095
3	3ed0729e-e53b-4178-9f99-141398928da5	Test database schema	Test database schema with team.	t	1755606232836
3	23416e5c-752a-47da-855f-1733f1f8cfed	Fix login flow	Fix login flow for project X.	f	1756569534394
3	50f89b72-43ea-48c7-be96-c81b275f0479	Review unit tests	Review unit tests with team.	f	1753979913306
3	57d81c04-4bb0-4df2-a2ec-ee7159f72bae	Test email template	Test email template and document.	f	1772946649343
3	33fc896c-cad5-48f8-af26-2c1514181282	Plan database schema	Plan database schema before EOD.	t	1762537954452
3	7de5b084-3634-48d0-938f-0ea134132765	Test unit tests	Test unit tests with comments.	t	1760909194441
3	d25615e7-5c90-4daf-8da1-4c963d2a0367	Design email template	Design email template with comments.	t	1763266585664
3	a9f52ca4-6067-4604-b87e-4e8b4cd8a048	Plan API	Plan API using TS.	t	1758933296189
3	5ba2e3d0-b4ff-4b9a-8abf-e15871b2fbd4	Review blog post	Review blog post and document.	f	1764195903321
3	b484c8f9-327d-4d30-8aee-8aaab820e8bf	Deploy UI mockup	Deploy UI mockup for project X.	t	1755804580367
3	8008b445-6e24-4eb0-98a4-0124e120569f	Review database schema	Review database schema in draft.	t	1757244610998
3	90708044-241d-49f5-8220-d2aaf33f9bf2	Design email template	Design email template and document.	f	1757147302009
3	a085e183-87a9-482c-b985-0e55bdb14ec5	Test unit tests	Test unit tests with comments.	t	1779653962700
3	49d7066a-3529-4a09-b784-7c5c835e88ce	Review blog post	Review blog post and document.	t	1777086082138
3	6028fb8b-6b24-45d9-bd6b-0a50b5f97efe	Write database schema	Write database schema in draft.	t	1777421205237
3	6ed4aeb6-9f38-49c9-a3de-f435c8be21ad	Deploy Dockerfile	Deploy Dockerfile for project X.	t	1770466012036
3	e7ad78f8-8d88-4c57-af93-6fec3304e75f	Deploy UI mockup	Deploy UI mockup and document.	f	1780552710009
3	9fc00f59-3217-4c92-83a7-0dc954f48c44	Review Dockerfile	Review Dockerfile with team.	f	1754318143756
3	186f6881-a3f6-4231-8856-9ebaa5008018	Deploy UI mockup	Deploy UI mockup before EOD.	t	1772308474189
3	f7cc66b7-a21a-464d-9f4a-160fcfa29582	Deploy database schema	Deploy database schema in draft.	t	1781165153560
3	2befcb6c-f17d-482f-b59b-fe3a871d6f3d	Plan database schema	Plan database schema with comments.	t	1777260762831
3	3e82b8da-6938-4655-8bce-a11cc701181d	Test API	Test API before EOD.	f	1759981963096
3	0b832f7d-e269-4cc3-8675-b3bd706794dd	Test blog post	Test blog post using TS.	f	1754095606733
3	2824c957-ddce-4590-8e7b-69b280e861d4	Write Dockerfile	Write Dockerfile before EOD.	f	1758580150375
3	1917ecaa-59be-43bf-8191-1d69c38c46b9	Design email template	Design email template for project X.	t	1781166768138
3	4c54272e-8b4e-4281-931e-45b5376f560a	Test login flow	Test login flow using TS.	t	1767880589041
3	09a61c58-5f68-487c-87b2-07e8637422df	Write API	Write API with team.	t	1773829117543
3	7aa674ac-f7f0-46d4-894d-d1b66029b53c	Design Dockerfile	Design Dockerfile with team.	f	1776165904276
3	76bf5fee-b34e-4d9c-87da-dfeef37ca584	Complete unit tests	Complete unit tests using TS.	f	1751520301784
3	5999af3b-56c4-4ba8-80b4-4eb42dc58f90	Fix email template	Fix email template using TS.	f	1759754078955
3	95a85147-df6a-45f8-944d-6b8aae83db90	Design blog post	Design blog post and document.	t	1767709716821
3	647c5dbb-c331-4158-8f27-8ae7f5f86dc3	Design login flow	Design login flow for project X.	f	1768184446472
3	eee9b13b-5215-451e-b3a0-39bafda3635d	Complete UI mockup	Complete UI mockup before EOD.	t	1774431297151
3	049f8924-9b7e-4879-aabd-3bb6ad569cc6	Review unit tests	Review unit tests before EOD.	f	1753450439161
3	4cd2fa89-8098-452c-94fd-fcc9e0382062	Review unit tests	Review unit tests with comments.	t	1777040984404
3	b9b395ef-f501-408a-80f4-0d7dd33932a4	Plan unit tests	Plan unit tests before EOD.	f	1766055640876
3	7dc2b8dd-1958-4974-99d8-2aad2c69b319	Fix unit tests	Fix unit tests using TS.	f	1754128051388
3	2f3e01eb-ffc4-4266-934f-e7b12b85b255	Deploy database schema	Deploy database schema before EOD.	f	1774288352307
3	03623a16-0fb2-4a1e-9025-eed844e89d5d	Complete Dockerfile	Complete Dockerfile using TS.	f	1772930391990
3	7bb94382-0a83-48b9-b384-0989b1238945	Design login flow	Design login flow before EOD.	t	1754867168308
3	8a2cf6eb-cf7d-4ecd-a76d-23d5c0ff56f3	Fix Dockerfile	Fix Dockerfile before EOD.	f	1774395208282
3	fc7882d5-7ad0-4daa-a6dd-e55f49ede8b7	Review blog post	Review blog post and document.	t	1774351912614
3	c7147e19-1706-4d39-9145-a93542672a87	Plan email template	Plan email template using TS.	t	1754308623485
3	f10cdcee-29b6-4d35-b8ae-b859783ddda4	Write login flow	Write login flow before EOD.	t	1765994461350
3	51b0b218-cc69-43eb-9227-163aaabba6e8	Plan UI mockup	Plan UI mockup using TS.	f	1769060224751
3	ec8d5512-d3f8-4fca-ae56-7eeb4a05af5a	Design database schema	Design database schema with comments.	t	1756690140755
3	4239f422-3123-40e4-8756-d294013075e0	Fix login flow	Fix login flow and document.	t	1757812817749
3	e0b30f89-8d3c-486b-b390-bd46e71a647c	Complete Dockerfile	Complete Dockerfile before EOD.	t	1778905774513
3	0aacb3d3-46f5-4916-ad03-371edf7dc9bd	Plan Dockerfile	Plan Dockerfile with team.	f	1756415598201
3	1c2d0254-f6a6-4f87-b4cd-e8f462c78eb4	Write API	Write API and document.	f	1770437550108
3	195f56aa-123d-4eb7-8431-868808695b1b	Complete database schema	Complete database schema for project X.	t	1755442958950
3	8069817e-9b2d-44c0-9da7-49e8ef68a66f	Complete database schema	Complete database schema before EOD.	t	1756581559038
3	4ddd6c7b-990f-4e90-9f9d-1e44a8bff163	Write email template	Write email template with team.	f	1754685344605
3	f8b3cbb2-7ddd-414a-b474-21ffb711b31d	Plan API	Plan API for project X.	f	1774407514735
3	ea1a9190-f051-4fc2-b760-c99e04f6d265	Test UI mockup	Test UI mockup in draft.	t	1766114468794
3	bae0b752-f645-4f66-8d20-0e0069140427	Fix login flow	Fix login flow using TS.	t	1769832611698
3	7e9e0f5f-0789-48ae-850f-b233743f005f	Deploy API	Deploy API before EOD.	t	1753718497328
3	d20ecf02-73a1-41ed-b278-66f08b66b687	Test UI mockup	Test UI mockup before EOD.	f	1765827797123
3	2966e77c-96d7-41f9-974b-5dd2e08e25cd	Test email template	Test email template with team.	f	1773638169033
3	7a296091-21f4-4a2a-b484-a91921fb9995	Deploy email template	Deploy email template and document.	t	1757633550414
3	4d2f79ff-c769-4632-a048-b8aeb13b7ac9	Review blog post	Review blog post before EOD.	t	1773820350826
3	96fac8a2-e3c8-4f0c-8cc5-db7cc60b3db8	Review login flow	Review login flow with comments.	f	1771603648766
3	c3a30a47-d26e-4e3a-99b0-e479cc63a389	Deploy API	Deploy API using TS.	t	1769311264320
3	178875f3-9d52-439a-a2bb-8a3dcff72859	Plan Dockerfile	Plan Dockerfile with comments.	f	1776189668681
3	8314a6d3-c971-4f9f-a9e3-8646fd7b91b0	Plan blog post	Plan blog post with comments.	f	1757175494453
3	42d6fc0f-0145-4d8e-8d88-75845dc882ff	Design UI mockup	Design UI mockup for project X.	f	1769704262402
3	04439b0b-cf74-48ed-b656-ed7beb74d2b8	Deploy blog post	Deploy blog post with comments.	t	1753492083220
3	e8f1cf3b-aa68-40f3-9c50-582f3ce5cc77	Review email template	Review email template with comments.	t	1750908932146
3	f3516166-76ea-45c2-8e14-433b0f268ab3	Review Dockerfile	Review Dockerfile with comments.	t	1762704143147
3	0639628a-0fdd-49fd-a67e-1025e54785e9	Fix blog post	Fix blog post before EOD.	t	1772487491243
3	574e06a6-b3a2-471a-8876-26e08aeff0db	Test Dockerfile	Test Dockerfile for project X.	t	1774942832354
3	7be02d32-ab2a-46d0-bbf7-16aeaefd32ff	Design email template	Design email template before EOD.	t	1777154347262
3	daaf52ba-4b70-4b10-9c69-a1dd6e647722	Plan UI mockup	Plan UI mockup for project X.	t	1774018323478
3	28892889-9bfc-4a2d-8a42-e373fe8fe685	Review email template	Review email template in draft.	f	1761636088361
3	0328d8c6-35c9-4fda-aa48-314f82417666	Write Dockerfile	Write Dockerfile using TS.	f	1778969053557
3	804fc6df-5426-4539-929f-da05cff94b31	Plan blog post	Plan blog post for project X.	f	1752284423632
3	172636dd-be68-4f35-83ea-12f3aaefa09c	Fix unit tests	Fix unit tests and document.	t	1776207982157
3	5566cb0b-a7c5-4a03-a6c0-be43fbaea49a	Complete database schema	Complete database schema in draft.	f	1761806789121
3	1502da17-83ef-4505-9f8d-23c30da21c55	Review Dockerfile	Review Dockerfile with team.	f	1773548719416
3	b69b8bbc-1cb7-4555-9f1c-0cf26fa09b3c	Deploy login flow	Deploy login flow for project X.	f	1775608868079
3	67d3eb88-4f15-4849-abd8-b42dca060217	Plan email template	Plan email template and document.	f	1756300923838
3	fc3f60fb-d833-483e-b23b-ec7866e694de	Write login flow	Write login flow for project X.	f	1776952799252
3	453770ff-c90b-4ae2-ae0b-d91b163bd7e4	Fix blog post	Fix blog post with team.	f	1767256012224
3	8bc50560-b3dd-4734-9bfb-2f04f8a43c74	Complete blog post	Complete blog post with comments.	t	1753123184006
3	0027bd49-5923-4b10-baae-670e3313583a	Plan blog post	Plan blog post with team.	t	1764145678827
3	7c97c5cf-20fd-4a1a-bcd4-87fc2b5520d0	Test email template	Test email template and document.	f	1759873868587
3	248781b8-d09b-4e59-813a-587c6f3323e6	Review UI mockup	Review UI mockup with comments.	f	1751413541666
3	9c298ace-e038-4f3e-8dad-9026ed9fe2c7	Design email template	Design email template in draft.	t	1769065264043
3	f077721a-3db3-4c90-8697-a761d07b6046	Test login flow	Test login flow with team.	t	1761539845533
3	9e3629d5-1818-4a6d-bc9a-a571cc6f6b1b	Review unit tests	Review unit tests for project X.	f	1761328696882
3	28e47553-4dfd-4022-a20b-7b9f01f33b3a	Plan Dockerfile	Plan Dockerfile using TS.	f	1750544820926
3	7c51f8ea-88fa-4dc3-b9b2-74941b51f2a5	Write UI mockup	Write UI mockup using TS.	t	1769270032275
3	4c663d93-c0bb-49e0-8366-e76f9bbea82e	Complete UI mockup	Complete UI mockup with comments.	t	1768868378674
3	aa0cb933-70c7-42b6-9bce-6231c3bb91fb	Complete email template	Complete email template in draft.	f	1753929151009
3	4af27373-d305-4c15-a5eb-97a908b7d331	Fix email template	Fix email template for project X.	t	1754443752481
3	ff24118e-7d07-42ac-8040-dab873c9f500	Design Dockerfile	Design Dockerfile with comments.	f	1780266521980
3	153f6ca2-3a65-46e9-b72c-8c69977ac511	Test UI mockup	Test UI mockup before EOD.	f	1777993440471
3	f3818de7-a8f9-48b9-bc7e-d0ab877c0be3	Test login flow	Test login flow using TS.	f	1758190078108
3	8f2ca516-f4c0-4877-9997-4cd994cf84ca	Complete Dockerfile	Complete Dockerfile using TS.	f	1778099715365
3	c29fa257-35f5-44bd-8f10-05d25bc10d7a	Deploy unit tests	Deploy unit tests in draft.	f	1776699105275
3	9a9308d8-8e21-4a7a-949e-dce33233b864	Review UI mockup	Review UI mockup with comments.	t	1775613749091
3	f5defb2a-ac99-449c-8473-8e5cd19301e4	Deploy login flow	Deploy login flow before EOD.	t	1775934995861
3	0f27a268-dcb0-49a5-acc6-80292e4d3e10	Write login flow	Write login flow with team.	t	1776706789560
3	d0247282-3e81-4b22-ab12-7b65261cf995	Fix blog post	Fix blog post in draft.	f	1780996565639
3	f74c6f1c-87b0-496d-995b-2f5297316c18	Design UI mockup	Design UI mockup for project X.	f	1752979392013
3	8adafe74-e771-4e10-8347-4d722b9e14e6	Plan unit tests	Plan unit tests for project X.	f	1762594125017
3	c14a0b1c-c714-4910-a9dd-944933561134	Review login flow	Review login flow with team.	t	1762209817090
3	475fbec9-7cbe-4180-94fa-3d911d229c96	Deploy database schema	Deploy database schema with comments.	t	1771854381386
3	4817ea08-5ad8-4576-b549-c3a84bd6ca33	Fix API	Fix API and document.	f	1778070082068
3	64e8dac6-6ff3-45ea-be14-e963e8c78048	Design blog post	Design blog post with team.	f	1756126511081
3	0ee48679-fd35-45b9-b570-7d1aacdddc50	Fix API	Fix API in draft.	f	1781496128430
3	ea2f8849-9aca-4319-9901-64ecddd3e8ac	Plan UI mockup	Plan UI mockup for project X.	f	1764434858379
3	28293249-5910-4bb4-85ba-e530ebf589ec	Review email template	Review email template in draft.	t	1775305703454
3	9a4c73af-b165-47f2-ad57-07d66924b446	Plan email template	Plan email template using TS.	t	1773403417272
3	aabc827f-4ae6-4019-b6c1-b76925832c97	Deploy unit tests	Deploy unit tests with comments.	t	1751595604874
3	f651dfc6-efd8-4b26-a343-c6cc37ce8ef6	Complete API	Complete API and document.	f	1752166180991
3	b0f18400-2e16-4712-b6c6-051e6aec9ca2	Design UI mockup	Design UI mockup with team.	t	1768055586675
3	eaf0d0d0-af9d-4f26-9e0c-1e34733ba868	Deploy UI mockup	Deploy UI mockup before EOD.	t	1760526831760
3	c3d6340a-4cf4-44fc-ad1c-94100f469431	Write unit tests	Write unit tests and document.	f	1762911509209
3	3abfa2ac-91dc-424c-a8c5-4af60af5fad9	Test login flow	Test login flow in draft.	t	1770094778891
3	20d712fe-ceb2-41cb-ace9-6f58283a9548	Deploy email template	Deploy email template with comments.	f	1774746239160
3	caa9f4ab-dbbf-4f85-8a0a-b4a5bebc79aa	Review Dockerfile	Review Dockerfile with team.	f	1769400836519
3	2ab423ea-076e-454d-8454-d181d61d6a2b	Fix email template	Fix email template for project X.	t	1769012845332
3	6d0d2f88-c99b-4a3e-9d66-48a8acfd1bcd	Write unit tests	Write unit tests in draft.	f	1778584785191
3	1dba0dbf-799e-4644-86a9-7d3c48f00d5a	Test API	Test API with team.	f	1767768055052
3	cefcb651-0d10-4a43-b384-77ac83edf751	Deploy email template	Deploy email template using TS.	f	1770929058675
3	043aea3c-8088-4bb0-bd09-cbff5e55631b	Test database schema	Test database schema with team.	f	1760073628943
3	0b1e8d0c-12a0-4327-a1ff-cdfc9fcd678e	Review API	Review API in draft.	t	1773484441408
3	25af96dd-65d8-4de2-9df2-7a70101d0ae1	Deploy database schema	Deploy database schema in draft.	f	1763666068353
3	0957985f-87e0-49d4-9d0e-052f72625756	Plan UI mockup	Plan UI mockup in draft.	t	1751485906321
3	d3046a2a-77b4-4a3c-9b35-398066588cc7	Complete API	Complete API in draft.	f	1755320129487
3	1db22f02-6a21-4265-9fcb-f0cf61813eeb	Review login flow	Review login flow with team.	t	1778823451172
3	4aa002c6-cabd-480d-9935-b95c87b5da61	Design UI mockup	Design UI mockup with comments.	f	1765710931714
3	7c26d859-f339-4361-9109-4982967a4db4	Plan unit tests	Plan unit tests in draft.	t	1755047095589
3	66ced16e-dcc1-4bf8-9121-7df46667343b	Complete blog post	Complete blog post with team.	t	1759229488027
3	21da12cf-8c85-4dda-bd5f-e475d5f12123	Plan Dockerfile	Plan Dockerfile with comments.	t	1757490788197
3	7d963315-a2e1-475f-a584-619105739bb8	Deploy UI mockup	Deploy UI mockup in draft.	t	1757247571723
3	5e4f112f-deb5-447c-bc82-51f4b61f3dd0	Deploy login flow	Deploy login flow for project X.	f	1769835429343
3	e0c33486-2b4c-4898-b372-a49be7de7388	Plan API	Plan API using TS.	t	1759701334222
3	f3ea9986-65e1-4ce9-96af-a7d4718d0dce	Complete login flow	Complete login flow using TS.	t	1752150011394
3	f21b015f-ea74-4745-b885-85060dc315bb	Design unit tests	Design unit tests for project X.	f	1759021209821
3	d6b8acf7-a20d-4025-9190-06a23794e122	Plan API	Plan API and document.	t	1779713004348
3	9847d826-8230-4d2a-bce1-b2f211c9fa35	Deploy database schema	Deploy database schema with team.	t	1759972573111
3	7c3ec2b0-830c-47b2-997e-2cef17aba886	Fix login flow	Fix login flow in draft.	t	1757515272361
3	d8dad594-29c1-4af1-819f-2cb25c8a54e1	Design Dockerfile	Design Dockerfile in draft.	t	1759157604689
3	8db2361e-d884-4ce8-9706-310a63657f49	Review email template	Review email template before EOD.	t	1755031634160
3	f60eef66-5472-4535-b2be-4ba133b3436b	Write login flow	Write login flow in draft.	f	1759943158449
3	1b8120d7-185b-4284-9fd9-cf7c4154cf03	Design email template	Design email template before EOD.	f	1757399048606
3	af80cc1b-22ff-4ee5-a787-3e0c87a990f9	Deploy UI mockup	Deploy UI mockup with team.	t	1762250432007
3	70484f7f-7a0a-4125-95ec-b42b1c384094	Review Dockerfile	Review Dockerfile in draft.	f	1780619284707
3	a90fa445-322f-4d39-972b-a65ed8d43a5e	Fix UI mockup	Fix UI mockup using TS.	f	1751999979772
3	19593144-426b-4132-8834-a64924d947ec	Test UI mockup	Test UI mockup using TS.	f	1766679001587
3	d0e2b8b0-28c3-4dcd-a1a5-e3819af6e0d6	Test database schema	Test database schema with team.	f	1751235479257
3	7c2911b6-2a5a-43bc-a35e-85ab897d9996	Review Dockerfile	Review Dockerfile with team.	t	1757439162434
3	1a4e79a6-24dc-4262-a490-d194bd551146	Review UI mockup	Review UI mockup with comments.	t	1764233272233
3	fccfdfb0-9096-4612-a591-8b8934c93716	Review UI mockup	Review UI mockup with comments.	t	1778845109034
3	1b3a504c-f589-4d25-a88b-8e2940b62768	Design Dockerfile	Design Dockerfile in draft.	t	1779120198823
3	335619fb-a0ed-4e4a-84e8-db15b4b7d219	Test unit tests	Test unit tests using TS.	t	1767168266673
3	661c686c-b970-4858-9b80-48109abe30f1	Fix database schema	Fix database schema using TS.	f	1779361563388
3	b66775a5-4fa9-4883-99df-b3ca0ee7c14f	Plan email template	Plan email template using TS.	f	1777692065416
3	c6bf8bb1-974d-461f-ba76-0fbcc49e1749	Test email template	Test email template using TS.	t	1754945027232
3	002bea8b-8808-46ce-9088-bbb053681c89	Fix unit tests	Fix unit tests for project X.	t	1760984747187
3	d0f55642-1957-45a1-b5e2-c7755ec8a088	Review login flow	Review login flow and document.	f	1779318935448
3	2bf0a212-4a30-4029-bd5f-86586a3e461e	Design UI mockup	Design UI mockup for project X.	t	1755988936715
3	836ee784-65ca-48d1-b134-0f293860ba99	Fix unit tests	Fix unit tests before EOD.	f	1770827994317
3	f0e1cf67-6fbd-4f65-8375-7b2f926cf129	Review API	Review API using TS.	f	1775681579924
3	af2bd66a-c056-4c5f-acc1-0d4a95977af0	Plan unit tests	Plan unit tests before EOD.	f	1758917285542
3	86a010ed-f20a-4fbd-b46e-4edab21f5017	Deploy database schema	Deploy database schema for project X.	f	1772664353420
3	aa3f867f-f193-4c40-9024-7f850db844c1	Design Dockerfile	Design Dockerfile with comments.	t	1754594491331
3	b7d429dc-bb99-46ee-92b8-6b19a3c0b36a	Fix API	Fix API and document.	f	1781621193235
3	be32a563-8b58-4e0a-b50c-d2784d77c315	Fix UI mockup	Fix UI mockup with comments.	t	1758575518499
3	b2ead792-f122-4175-9a02-69871b2cf9d3	Deploy database schema	Deploy database schema for project X.	f	1751779483413
3	0edaf161-4dd6-4187-9097-8acfe2de77b5	Design blog post	Design blog post before EOD.	f	1773117417598
3	eb9c8581-c0c2-4aac-9abc-350d6127d530	Review UI mockup	Review UI mockup for project X.	t	1774652426904
3	26b879bf-6064-4311-b605-67aa73173144	Design login flow	Design login flow using TS.	f	1755132379691
3	0ef7b2e3-a00f-4715-99c1-93e89459720a	Review login flow	Review login flow with comments.	t	1774382112816
3	8c1b7381-6be2-4853-b3ab-1244de9eca18	Deploy database schema	Deploy database schema for project X.	f	1776603880764
3	a9251480-c8da-436a-8383-d8d0ba9d0f01	Review database schema	Review database schema using TS.	t	1760544795528
3	48b88971-57e9-4bf0-8107-f10dba618f2f	Deploy blog post	Deploy blog post and document.	t	1766141303354
3	d463c491-1c98-4a11-909d-fe57454bc9dc	Plan blog post	Plan blog post and document.	t	1768858743882
3	9b558f38-258e-4082-9452-32f13142f885	Deploy blog post	Deploy blog post for project X.	f	1775015234651
3	e51faf69-85b5-436f-b25c-6ecee350048a	Review blog post	Review blog post using TS.	f	1771155141006
3	fbaae2ff-ae2b-49e6-b318-a8b3b732bedf	Complete UI mockup	Complete UI mockup using TS.	t	1759438150285
3	f2d6af93-0419-4837-912f-070a996000f2	Plan unit tests	Plan unit tests and document.	t	1773168180270
3	4eefb2ba-4406-4d89-93ee-e64b4bdb28b5	Complete login flow	Complete login flow with comments.	f	1763505483003
3	6f67fe35-3689-47e3-bfb1-bd29415d13b6	Design UI mockup	Design UI mockup with comments.	t	1767225415225
3	7e539c28-b042-4552-8425-15752765aa96	Complete unit tests	Complete unit tests before EOD.	t	1769438977602
3	3649b378-1981-455f-b69b-de5101fe5bc2	Fix Dockerfile	Fix Dockerfile with team.	f	1766825384485
3	1e441bbe-2831-4234-8f3a-b3320bd67c56	Fix API	Fix API using TS.	f	1760120287799
3	20bb7ee2-b38e-423e-9ea9-3f61dcf2b838	Test unit tests	Test unit tests and document.	f	1769732312581
3	5dd0b1cf-7e9a-48f9-ad9a-8946e5c87de4	Deploy UI mockup	Deploy UI mockup in draft.	t	1775183054150
3	f711f110-e91c-4c5e-946e-ad832353676f	Review database schema	Review database schema with comments.	t	1764348017083
3	ad08204a-f41f-4335-9d7a-1c4bdbb5de32	Fix API	Fix API and document.	t	1780310017321
3	6f7bd5cc-0728-4621-ab83-e5d3e90a4654	Write blog post	Write blog post with comments.	t	1762451804252
3	45c56667-70d0-4f86-9010-1bd6b3d64192	Fix unit tests	Fix unit tests with team.	t	1770543769343
3	f3941565-b04e-47c6-93a8-45c6969a7f71	Design unit tests	Design unit tests and document.	t	1758290033516
3	1c3a2059-0696-4578-bd2c-880851ec8b02	Plan blog post	Plan blog post with comments.	t	1776832998972
3	a7896025-5219-4d3f-bba6-11115fa8c8f3	Write email template	Write email template using TS.	t	1758432317217
3	f42d31d8-60cb-4a38-9874-08527a99be9d	Review UI mockup	Review UI mockup in draft.	t	1758826627320
3	b2cf4c37-b25a-420c-90a3-db925f732b55	Plan Dockerfile	Plan Dockerfile before EOD.	t	1759742100850
3	da1afa35-147d-4449-b591-f0cbdf02c4f0	Test UI mockup	Test UI mockup using TS.	f	1751262268212
3	3acf53f6-fb0e-47f8-a2cb-bc993d00cd67	Test Dockerfile	Test Dockerfile with comments.	f	1768687976287
3	c63988f6-b9be-4771-81b2-7ea75f7c64b2	Design unit tests	Design unit tests for project X.	t	1765735537580
3	f64b122f-c77f-48f4-857d-f7ab2c886493	Plan unit tests	Plan unit tests in draft.	f	1778340566168
3	44ded8b6-31e8-4570-866e-a2603849cba6	Review UI mockup	Review UI mockup and document.	t	1781351041361
3	10ab2f99-9189-4e46-ae94-24982c88cc38	Design login flow	Design login flow in draft.	t	1758594997954
3	c1c96624-ca43-483a-8bc6-3c0a5483129c	Write API	Write API before EOD.	f	1778388506719
3	41a59a7f-1ad7-469d-9ac5-e58faaeb143a	Write email template	Write email template for project X.	f	1771121183247
3	5bec0797-53f1-4be1-918c-a60ed425eb2e	Fix database schema	Fix database schema before EOD.	t	1750706059644
3	2bc75d50-54d6-4476-ae3f-4f3d74240846	Design API	Design API for project X.	t	1756693128110
3	c38e8cfa-c286-42d3-b7d2-3985976c38f9	Fix Dockerfile	Fix Dockerfile in draft.	t	1773418890533
3	4e763674-8f20-47fa-b5ab-003f3609c3d8	Test login flow	Test login flow and document.	t	1777250572447
3	12fc8841-e780-404d-8fa2-79bcf59539e8	Plan unit tests	Plan unit tests in draft.	t	1758309320115
3	c9243a2a-4647-4391-b0bd-6d55362c9455	Deploy login flow	Deploy login flow in draft.	t	1763025307299
3	3429a8ca-c252-43a0-a86a-ec2d63d4d382	Test blog post	Test blog post for project X.	f	1762458708911
3	d5a1ff18-2d8e-4fcd-bde4-ab5c0855f211	Test login flow	Test login flow with team.	t	1763464275134
3	2c4c5a24-3c36-4c2a-bbbf-9fbd4ea97974	Design API	Design API with team.	f	1779749937388
3	99dd3b7e-7dab-4de9-83a2-9ab2a2e0ebc4	Review UI mockup	Review UI mockup with comments.	t	1776626714954
3	8b52f624-c59d-4c25-84b2-091e6fe13b79	Test login flow	Test login flow with team.	t	1754412830924
3	246d1be6-3968-4599-acc0-e473f4ea2342	Write Dockerfile	Write Dockerfile before EOD.	f	1770145100086
3	4616dd39-6fb8-4adf-ba6c-e0f744ef81f1	Fix UI mockup	Fix UI mockup using TS.	t	1759979715478
3	6a390059-7f58-4172-af4e-be031249f582	Fix login flow	Fix login flow with comments.	f	1759553344301
3	883cb51f-f533-44ef-ac93-fa38136b1277	Test email template	Test email template with team.	f	1750819668137
3	a6713f12-f51a-4b97-9161-cc0130fd9102	Plan unit tests	Plan unit tests using TS.	f	1765367409607
3	b9e2039f-b375-4ba3-b145-428f66b80595	Write blog post	Write blog post with comments.	t	1770067819140
3	c26e9cbb-5dfa-492f-8917-823208196fb2	Fix login flow	Fix login flow with comments.	t	1751993278481
3	2fa0c3e9-4894-4845-a758-d4997712e85f	Test database schema	Test database schema with team.	f	1763532642100
3	2d100fac-eafd-4350-a11d-e40a1e5d62e1	Design Dockerfile	Design Dockerfile with team.	t	1761760246788
3	09a7ddf0-3f49-4347-bf8b-498c4aace3ad	Test Dockerfile	Test Dockerfile in draft.	t	1754741155522
3	2c5f9e44-f575-4ab1-bd65-5c3ff6ae6ef4	Write blog post	Write blog post with team.	t	1763354313251
3	c06a7dc1-618b-4843-b5db-0e2979a516ba	Write email template	Write email template with comments.	f	1757702391704
3	cca6c154-c188-4424-8b8a-142c34bfa55d	Design blog post	Design blog post with comments.	t	1760310451102
3	071750a2-288f-4969-b5a8-1fa1c8829ea2	Deploy email template	Deploy email template with team.	t	1766282208328
3	c100961f-1994-4796-88b3-546da5df0d18	Test Dockerfile	Test Dockerfile before EOD.	f	1750865520870
3	300423ad-8f27-4924-aec3-5f46f1794307	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1756458085429
3	12849efa-2f69-472d-bd74-ed901a684461	Design email template	Design email template using TS.	f	1761160096815
3	d5668a5e-ba09-4aec-a9f1-211450a40cb6	Plan unit tests	Plan unit tests with team.	t	1772893779269
3	af4d35dd-a3fb-4433-9766-61cd06e8ff01	Design API	Design API for project X.	f	1756002214361
3	498eec16-58ec-4ee0-ade1-456af3dcbc61	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1753250848172
3	f14aeb7e-1e47-40b9-b4ea-240101f40fd3	Test blog post	Test blog post for project X.	f	1766286060366
3	aa372456-3fe9-4759-b354-1ccee5f7ca7a	Design Dockerfile	Design Dockerfile with comments.	f	1779898613553
3	fbd65d65-d93d-4d51-b7e9-02dca9f7774c	Plan API	Plan API in draft.	f	1771968822031
3	2896f0c6-e1f1-49bd-a2c5-dd5d2b562a30	Write Dockerfile	Write Dockerfile with comments.	f	1767359455064
3	1bc7bc84-e086-4607-8189-6863ab91060d	Test blog post	Test blog post and document.	t	1757290228779
3	6c298cf9-ceb9-44ae-9e36-07eb5ebe0027	Write database schema	Write database schema in draft.	f	1774748114075
3	2187af53-4114-4815-9067-1a5548e1b579	Plan UI mockup	Plan UI mockup with team.	t	1774813520709
3	bd8ed942-55da-40cd-97b6-30f2beed3935	Write UI mockup	Write UI mockup with comments.	t	1762762627170
3	5aa6cb9b-a830-4df2-8661-39d2ff228cff	Review email template	Review email template for project X.	f	1774985878337
3	7344f11a-dafe-4ea7-ae9d-4af2481779a6	Fix email template	Fix email template using TS.	t	1780280758731
3	0d80d357-7480-4ce2-8629-34ac717cf8a1	Write API	Write API with team.	t	1774355799732
3	4ee72ef9-88c4-447d-8ce0-f494d1f238b6	Write login flow	Write login flow using TS.	t	1771072693495
3	1597b6d3-2a39-412f-aed0-49335b606d48	Plan UI mockup	Plan UI mockup with comments.	t	1761454436451
3	738fcb15-9280-4bbf-870d-bee337702f6d	Test database schema	Test database schema with team.	f	1761646141695
3	5d70053b-dff8-4fc1-acd2-4eb627af902a	Fix login flow	Fix login flow for project X.	f	1780220915001
3	a8353d04-a43a-4a7e-870f-7feec9d31106	Fix unit tests	Fix unit tests for project X.	f	1774559460660
3	b11632dc-6158-4ea6-b50f-d29633c00030	Test database schema	Test database schema before EOD.	f	1759734514527
3	35d2f338-2a6b-44e0-a7e4-2f97201da640	Write blog post	Write blog post before EOD.	f	1755529133332
3	365a24ec-36e6-4fbd-9d1c-8a5c91888907	Fix login flow	Fix login flow with comments.	f	1760225244277
3	179ed4da-510e-41c4-8fbd-0878fd99e544	Fix unit tests	Fix unit tests for project X.	f	1758084036466
3	76d97f86-40b4-4e7d-a8c7-16df246891e5	Test UI mockup	Test UI mockup and document.	f	1767159428380
3	a49af08f-e311-4c30-be4b-fbb3f3572189	Plan API	Plan API in draft.	f	1762941873793
3	2216e53f-bdc9-4896-9eb3-9f50d2a71e5b	Write unit tests	Write unit tests for project X.	t	1757016688698
3	8bd32185-379f-4cdb-a2cd-99d934cfcd99	Fix unit tests	Fix unit tests before EOD.	f	1773057301332
3	ceb0dd4d-2784-4ce3-b3e6-68979f8f9e30	Write login flow	Write login flow and document.	t	1779966429137
3	1d65543e-1dd4-4c91-b299-982a2006e1d9	Design blog post	Design blog post with team.	t	1752862764193
3	d7a4a76e-4912-452a-aa2d-a4d8cf852be4	Review unit tests	Review unit tests for project X.	t	1768925986527
3	aab45a7a-1497-47a1-9ca4-de1b05ded4bd	Fix unit tests	Fix unit tests using TS.	t	1778203335634
3	6948135d-dd46-4e93-b0de-a09739ca75c5	Test unit tests	Test unit tests and document.	t	1772762903533
3	e69b9731-ae29-4e47-b398-badac4ed86a4	Design database schema	Design database schema before EOD.	t	1768280685889
3	b3bd2b17-b1df-460c-9ff1-93eb6c570cfe	Review email template	Review email template with team.	t	1762587003716
3	c0d8db75-8cd2-42d9-adbc-8c1c6e469899	Fix database schema	Fix database schema in draft.	f	1762603290621
3	fc1502e8-cd1a-4f95-907d-88fff0d3d054	Design unit tests	Design unit tests with comments.	f	1757341221690
3	082e51c4-ea6b-4045-8683-e50e1e0ef12e	Deploy API	Deploy API before EOD.	t	1778591182783
3	0eab0da9-53ae-44c6-abed-502261ec8f69	Deploy login flow	Deploy login flow with team.	f	1770500079613
3	ea72c00a-a2a8-4baf-8903-d28f01a6c0e7	Test email template	Test email template for project X.	t	1773768154268
3	a104ccf3-073b-43fa-862a-3a5b354671f5	Review Dockerfile	Review Dockerfile in draft.	f	1778604013867
3	613dabe8-5ab3-4bc0-a75a-3ddd6370f1e9	Plan database schema	Plan database schema with team.	t	1771691786518
3	1fb4d07b-649a-4201-a1d9-79f32cd12a8a	Test email template	Test email template with comments.	f	1771601746938
3	6e31b7ac-76cf-44bb-b42a-66a567316b82	Deploy email template	Deploy email template for project X.	f	1769699493767
3	055e03a5-fe21-45ae-80d3-c7c54e06a091	Complete API	Complete API in draft.	f	1752623191086
3	f24fd80f-79aa-4e04-9e30-bf2d8816668a	Complete API	Complete API for project X.	f	1781435529389
3	2e46621a-b345-40ca-8e96-c8780f2b8c98	Fix API	Fix API with team.	t	1778493701732
3	688bce50-4051-4966-b88f-c586f80acb89	Plan email template	Plan email template for project X.	f	1761219429347
3	46240657-74fd-4651-97a7-8e9891e3a680	Complete login flow	Complete login flow using TS.	f	1778395735388
3	cb7a79c8-2c68-4099-98d1-5360f15bb639	Deploy Dockerfile	Deploy Dockerfile and document.	f	1757234411603
3	0a2f5300-878f-494c-a8ad-c48b26e5ce83	Review Dockerfile	Review Dockerfile and document.	f	1772148838175
3	87570008-be2b-4dd9-ae14-ad0d99440e5e	Complete email template	Complete email template with team.	f	1762431605512
3	219fad2b-1b89-4d1c-918b-3d3f21e6cd42	Plan login flow	Plan login flow using TS.	f	1773498585803
3	33b6287b-6f71-4eb7-b2e5-d8b593a8655e	Deploy Dockerfile	Deploy Dockerfile with team.	f	1779735807207
3	388f4f55-0094-4377-b6a7-750e252476d3	Complete blog post	Complete blog post for project X.	f	1774020276051
3	9fd96351-fdd3-41bf-b302-d6589c66e092	Write unit tests	Write unit tests using TS.	t	1752082611610
3	6d7fa713-ea28-4d29-baca-e4bd4c6a5b3d	Deploy database schema	Deploy database schema before EOD.	f	1753052445269
3	a78fb36b-e9a6-45e9-ab20-daf1d74662ed	Deploy email template	Deploy email template using TS.	f	1761465170553
3	35129ff7-96a1-419a-a099-6952c0630cfd	Deploy UI mockup	Deploy UI mockup with comments.	f	1767790179885
3	6558eb82-b5af-4c1b-ba5f-1e437de572a9	Deploy Dockerfile	Deploy Dockerfile before EOD.	t	1769495964494
3	e83a31e5-1e91-48e1-b791-51f40afc275d	Write UI mockup	Write UI mockup in draft.	t	1750875356564
3	5481d868-0538-48e7-8150-69d2939dbaec	Review login flow	Review login flow before EOD.	t	1778559695511
3	cfb71c7a-e7ae-412d-9dbc-8608fcd4ef2a	Deploy API	Deploy API before EOD.	f	1759033793909
3	dfab9869-5101-4cc2-ae2f-d968ca020920	Test API	Test API in draft.	t	1774962513422
3	7777a61a-0b62-47bb-af51-59eb9353eca7	Review API	Review API before EOD.	f	1754398576721
3	531cfc7c-a384-4f9e-b4b4-076079ec46eb	Design API	Design API with comments.	f	1767117296502
3	cc929b07-9b74-464b-a78f-d2be7276d0fd	Complete login flow	Complete login flow with comments.	t	1764132803841
3	baf2378d-52f5-480d-9162-f1635e79eae5	Complete blog post	Complete blog post in draft.	f	1765149945338
3	cf6ee480-833c-4b87-b5c5-3edf03f0bcf2	Test Dockerfile	Test Dockerfile for project X.	f	1768579414389
3	cc3201d5-bf7b-41f8-b6f3-8dcc5c758351	Complete email template	Complete email template before EOD.	t	1764477800154
3	a6630aca-98d8-4053-abbd-56730e75fb8a	Test email template	Test email template for project X.	f	1779323673605
3	4d4c114f-1127-4cc5-a81c-e42fe0711cdd	Plan email template	Plan email template with comments.	f	1777021782929
3	ada1c410-84c7-4389-ac79-242136cd671f	Test database schema	Test database schema with comments.	f	1780779331566
3	222ec469-c493-424a-b452-c9cbfc7d784c	Plan login flow	Plan login flow before EOD.	t	1760858167449
3	0461c7da-9cbd-476c-838d-2d8182cd358c	Deploy email template	Deploy email template before EOD.	f	1758126774958
3	cefc9a17-01b4-4400-975c-399dbf8ba2a5	Deploy UI mockup	Deploy UI mockup before EOD.	t	1779062267255
3	282a7e82-4d6d-4037-b6e8-64d686820a8a	Fix email template	Fix email template for project X.	t	1774430046208
3	349f9f17-9c4b-4a24-a358-b9124c4550a5	Plan blog post	Plan blog post before EOD.	f	1777097737713
3	176b5c81-881b-4fce-92fb-7fee608ac654	Test email template	Test email template with comments.	t	1777010294013
3	0cc7aa07-9848-47e8-9a7a-7ab27653b352	Review database schema	Review database schema before EOD.	f	1758632645345
3	539bb09f-2c4f-4b3c-8433-3b5f375bfe18	Test API	Test API before EOD.	f	1755890665324
3	efdebb96-9da7-4aba-83d2-3bde2d14890b	Plan email template	Plan email template with comments.	t	1759128860720
3	bf73cf21-0656-4a07-ac48-b107af64e4c3	Test Dockerfile	Test Dockerfile with team.	t	1753773059538
3	b24845a4-f63f-42c6-a9c5-764b83fdad17	Fix UI mockup	Fix UI mockup with team.	t	1780811986642
3	e26bdbd4-6b65-431e-b962-32e3cb1ea707	Review database schema	Review database schema and document.	f	1771212003713
3	82125505-7a85-4bdd-b86f-5c83596ceab7	Complete login flow	Complete login flow for project X.	t	1756273373757
3	646834d2-2d1b-4b25-8cca-fe2d39a0a028	Test blog post	Test blog post using TS.	f	1766461275054
3	6c994edf-9bea-4c04-954e-ca4734bb011f	Deploy API	Deploy API for project X.	t	1779392048664
3	9b8f2889-4cff-4fc3-ba64-03e70aca0e54	Test UI mockup	Test UI mockup for project X.	f	1767190384977
3	22032e56-9f44-4ee2-9fa4-ae0fe89f1d65	Review API	Review API with team.	t	1774080605012
3	eeee114a-3ef7-4f7c-9e9a-0c3379ace01b	Complete UI mockup	Complete UI mockup and document.	t	1755678587616
3	793478b5-8a1f-47d4-a982-c809bcff43cd	Deploy database schema	Deploy database schema and document.	t	1768278152531
3	1b01a952-c7fb-4b09-9daa-c294c7bdcb1a	Review blog post	Review blog post before EOD.	t	1761598444971
3	3300917c-8aa2-48bf-94ca-58a5d1ef4900	Complete UI mockup	Complete UI mockup and document.	t	1767705430473
3	c67fec14-3e52-4b89-8305-d6a698dc53ff	Test database schema	Test database schema for project X.	t	1753163575968
3	0f207902-5000-46e0-850f-622bfa669d58	Fix blog post	Fix blog post in draft.	t	1776358903492
3	9807a315-1dee-49c5-a7ea-d5de799e10d8	Plan database schema	Plan database schema with team.	t	1779841582040
3	a05539bb-0751-4dc9-892c-27383b3fb001	Test unit tests	Test unit tests and document.	t	1769882719085
3	673923c4-cdcf-48ef-947d-f1a9d275670c	Design database schema	Design database schema before EOD.	f	1775324791657
3	e9d926f2-c894-49c5-9abd-ce8c3149ce94	Fix UI mockup	Fix UI mockup before EOD.	t	1771466176543
3	59513a3f-2d12-4930-8aff-f81dcc010d84	Plan email template	Plan email template using TS.	f	1779766339347
3	87f1ce77-96a5-4847-9a27-0f774be7652f	Review login flow	Review login flow for project X.	t	1771139484400
3	6d19fb8b-347e-4ad0-bc76-a7cab7360fbf	Fix Dockerfile	Fix Dockerfile and document.	f	1764308017471
3	65413927-10ea-41fd-994f-19fa9694e9f3	Plan API	Plan API and document.	f	1778544181861
3	47d00ed7-e88b-46b5-8a4d-9ebfbe8a3aad	Review blog post	Review blog post for project X.	f	1765411040787
3	a76ffe9a-0da4-49c8-9dc0-574a21161bf8	Test Dockerfile	Test Dockerfile before EOD.	f	1760247486203
3	6e31fb9f-6a66-4c72-b174-b49d68c930b9	Complete UI mockup	Complete UI mockup with team.	f	1755734353644
3	f06b65f2-1223-4552-b2e4-8554a1339a94	Fix Dockerfile	Fix Dockerfile with team.	f	1779553676288
3	79896116-758f-48ee-9a12-cbd86fb95e4f	Fix unit tests	Fix unit tests in draft.	t	1765759476743
3	7675521d-74d0-4ff1-b507-1906bfb79753	Deploy API	Deploy API with team.	f	1771537052602
3	c5e81ffe-cd3a-43ab-b2c4-7e725579d57f	Fix login flow	Fix login flow in draft.	f	1764438742907
3	896ba8cf-dc5a-411e-a592-e4b21fa1de35	Plan login flow	Plan login flow and document.	f	1751399504469
3	0547b0b5-2325-4ebf-bcfa-4cf940ad27bc	Fix blog post	Fix blog post using TS.	f	1772415553519
3	b443c4fe-4e2a-44b9-ae29-455845992680	Deploy UI mockup	Deploy UI mockup before EOD.	t	1763970179950
3	333c92a1-700a-4810-b143-379f392eaf72	Fix Dockerfile	Fix Dockerfile using TS.	t	1771919655346
3	1dba25f9-6712-495d-b3f7-a0d9802bcd5e	Fix email template	Fix email template before EOD.	f	1771540238733
3	c7fdca0c-c403-4251-a793-62b7b383d435	Plan database schema	Plan database schema with team.	f	1751325196951
3	7ad26bbc-38aa-467c-82cc-0664ac44bfc7	Review Dockerfile	Review Dockerfile using TS.	t	1768112715046
3	c4590fed-06cc-4e9f-b978-0bd538b8a562	Plan unit tests	Plan unit tests before EOD.	f	1766527285630
3	4da262f2-356c-4cf3-9ae5-aeefb32a1e54	Review unit tests	Review unit tests for project X.	t	1761242900274
3	d80c6102-8c2a-40ce-a36e-3b8989d2184a	Fix database schema	Fix database schema with comments.	f	1762981638206
3	72a1fd83-b7d1-4538-a113-a74eb947aa0a	Deploy email template	Deploy email template before EOD.	f	1761225304480
3	00befe9e-874b-495e-b96d-134398dae5da	Write Dockerfile	Write Dockerfile before EOD.	t	1759456624584
3	e1628277-1138-415f-9043-f8d8be9c6b83	Plan email template	Plan email template using TS.	t	1775240548257
3	45141a4d-6e94-4eb3-9638-e7e4fedba2fe	Write API	Write API before EOD.	t	1756881781607
3	7e311506-c41b-48f2-b105-e75f5db5889b	Deploy UI mockup	Deploy UI mockup with team.	f	1757810714488
3	6f55bdf9-04c2-4faf-bcbc-b9819e2009b7	Plan Dockerfile	Plan Dockerfile in draft.	t	1762062641731
3	ec3f13d5-1983-45aa-8212-1bf833750935	Plan email template	Plan email template with comments.	t	1781276519229
3	b1f6d5b9-7c75-4cb2-8999-d3566c306078	Design API	Design API and document.	t	1777604569901
3	51d6da1a-36c9-4004-9243-afb1f46b596e	Deploy database schema	Deploy database schema and document.	f	1750507185680
3	c7086175-aada-4fe9-be3c-f525e78792c6	Complete blog post	Complete blog post and document.	f	1772004833181
3	09b4bc19-50e5-465a-9d55-3bb086533e26	Review Dockerfile	Review Dockerfile with comments.	t	1769069963587
3	fd863af2-1dd9-48c4-aa76-e7143ddbb3fd	Test blog post	Test blog post with team.	t	1771659840897
3	f2d30084-b6d0-455e-b8ec-c3059a5ee345	Complete email template	Complete email template and document.	f	1753935336024
3	bd2b3907-8964-4523-9c5c-652b6557bbd2	Complete login flow	Complete login flow using TS.	f	1768698255065
3	4522025a-6195-4829-9afc-f9b8b6450a2b	Review blog post	Review blog post with comments.	t	1765151616558
3	b7d3f277-5f5e-4c87-836c-2c91837af59e	Design UI mockup	Design UI mockup using TS.	f	1759029264031
3	f8c5036d-00e0-468f-9d81-585870887b50	Write API	Write API in draft.	f	1768539241573
3	34cb32ca-1f7e-42d3-b657-f9f8b7c8ef1f	Write unit tests	Write unit tests in draft.	f	1754170745712
3	ff68082b-6c05-40cc-8fe2-7178e892ec77	Plan login flow	Plan login flow in draft.	t	1766158187949
3	264d31a0-2b97-4c53-bca2-06a989d378ec	Deploy login flow	Deploy login flow and document.	f	1778427108006
3	42f0844e-47f3-4dd9-bb4a-41f2883adda8	Design API	Design API with team.	f	1759709684281
3	8dd09a54-8963-4118-a1de-4f2ac3f9b404	Write database schema	Write database schema with team.	f	1780549944006
3	66656a30-8d9e-475d-a2a5-3cbdf8271c6b	Design Dockerfile	Design Dockerfile and document.	f	1756884928575
3	e54fa058-d16b-40cb-8507-b17ee34b8d6b	Write Dockerfile	Write Dockerfile for project X.	f	1764958362960
3	940d2a4a-c137-4d80-b080-afef8900ca5c	Complete UI mockup	Complete UI mockup using TS.	f	1765096380157
3	cf380bbe-7e94-4af2-b0ef-9ededb7384ef	Complete unit tests	Complete unit tests with team.	t	1759357449862
3	2d045448-0871-416c-9d56-3542a5918d2b	Write Dockerfile	Write Dockerfile before EOD.	f	1763251226916
3	a23537fa-5141-457a-a264-709faded7684	Write email template	Write email template in draft.	t	1773434494987
3	213e2d52-7c54-4a71-b360-8795fc55b4a2	Plan database schema	Plan database schema with team.	f	1750538448096
3	4f8cacda-7535-4b52-bcb5-b33b82eb6e16	Test database schema	Test database schema in draft.	f	1774657482703
3	c5156a9d-453f-4842-acd4-95ada90a1476	Fix database schema	Fix database schema with team.	f	1773385603652
3	aeb16c54-1ab2-4d9e-a56d-9ef2e8b34f08	Test UI mockup	Test UI mockup with comments.	t	1780005296530
3	f85e0631-7297-4e73-adb0-e9da664aa523	Write email template	Write email template for project X.	f	1766553543056
3	6b9859e6-595e-4f66-82e2-66b0e91b0e49	Plan unit tests	Plan unit tests for project X.	f	1769100918216
3	02814069-5bc6-456d-9b47-ea13fb04d273	Design blog post	Design blog post with team.	f	1776757688348
3	81f0295f-0c42-40b3-8e6d-c672cef06c51	Complete unit tests	Complete unit tests using TS.	f	1752275366630
3	f613df13-cc0b-4d32-a8f1-5d4a3eb35b13	Test unit tests	Test unit tests and document.	t	1778734103469
3	550852a5-0f6b-46a7-a6b3-a08a54b1c8a9	Write Dockerfile	Write Dockerfile with team.	t	1776052069897
3	3752c058-825b-4b17-9ff7-752371db32f3	Test API	Test API with comments.	f	1769655839877
3	4c9b1ecf-2e83-4c5f-a642-5fcd5478bc5b	Test UI mockup	Test UI mockup in draft.	t	1751185287153
3	a6e69199-14fd-4039-9c45-24dabafb305e	Deploy email template	Deploy email template and document.	t	1759496244472
3	116ec321-9735-4d45-b4a2-a11cf13b6f5a	Write database schema	Write database schema and document.	f	1757922314414
3	f81e8b5b-8747-4358-b0e1-932640cf19df	Deploy email template	Deploy email template for project X.	t	1762585965282
3	73492ac6-4f57-4d8b-9c99-ea5e99f739fc	Deploy email template	Deploy email template with team.	f	1760037825826
3	8ddc9568-3e24-4697-8c0c-8b4f0c02ce3e	Deploy email template	Deploy email template with comments.	t	1770476705242
3	cedb9f1d-6d2e-40c8-802f-d43c20c31801	Fix email template	Fix email template for project X.	t	1753472117176
3	e305042e-9439-4a6f-bc85-f6880e20b22f	Plan Dockerfile	Plan Dockerfile with team.	t	1768623478776
3	25a4ad77-932d-41da-b78b-8b7e3bbc8854	Deploy login flow	Deploy login flow in draft.	t	1766096529861
3	6eb30533-8bc2-43dd-a86c-eea8991a57ca	Write database schema	Write database schema before EOD.	t	1763822378561
3	5ff3bf47-a734-4787-ac55-2b92a92675bb	Write API	Write API for project X.	t	1758921041707
3	e43cd855-9c56-458d-a5ea-0945b08bf787	Plan blog post	Plan blog post in draft.	t	1778302629899
3	03420f1f-5548-4e37-bdb5-4c8eeb6e04dc	Review API	Review API with comments.	f	1760278778682
3	5a2364f7-ad8f-468c-b7f2-7f0858aabace	Write UI mockup	Write UI mockup before EOD.	f	1779157920738
3	5566bd97-bc27-4abd-8e15-c2bd85286a28	Test login flow	Test login flow with team.	f	1764419124633
3	81506b06-9b0d-4ffc-ba14-6ab15e30ddc1	Review API	Review API for project X.	f	1778652863775
3	745316b4-91f3-402a-bf6e-3abed1e25302	Fix login flow	Fix login flow before EOD.	f	1771992834014
3	0ec061a7-8a3c-4b5f-ae74-f4f49162501d	Review API	Review API with comments.	t	1751892841041
3	8a6c9526-07fb-44b2-9259-38a1824c8523	Review API	Review API for project X.	t	1763525990854
3	63062517-ffa7-4226-b8ef-59c09d6442ec	Fix unit tests	Fix unit tests using TS.	f	1767148653515
3	22c0cdd0-2e3a-4036-a3a2-b9be7866be11	Review API	Review API with comments.	f	1760083907022
3	02908afa-d7ed-461f-88d9-b66078f32e7d	Write unit tests	Write unit tests with team.	f	1760187003414
3	50ca0708-ad87-41be-a728-22ecfbc6a6a8	Test Dockerfile	Test Dockerfile before EOD.	t	1768876265899
3	8e8f64f6-748c-482c-9641-918b8bf0cf3f	Design UI mockup	Design UI mockup and document.	t	1760901936664
3	993018a8-3bff-49fc-aa65-187d68fa1726	Write Dockerfile	Write Dockerfile for project X.	t	1751861705721
3	0238afd5-1016-4a57-bb12-d746819fccc8	Test API	Test API using TS.	f	1763264632375
3	b4a18980-27a5-48e3-b108-7341480ee9d6	Write email template	Write email template and document.	t	1761606899447
3	3c14a480-cbd0-4677-b106-3ee267318dc2	Design email template	Design email template with team.	f	1762334143669
3	f66ec6ea-9369-4813-b1f5-3d2e31aea925	Complete email template	Complete email template using TS.	f	1750968880198
3	88a325ed-cce0-4714-a30e-59ec070c37e9	Deploy API	Deploy API with team.	f	1774436164163
3	92750142-4753-44dc-9d5b-ecf670d5b632	Plan UI mockup	Plan UI mockup with comments.	t	1752474161765
3	3fe3dd8e-742a-4fb7-a5a0-fc51b1c13c64	Design API	Design API and document.	f	1773955247660
3	116e0b2c-152c-47bf-b2e4-4e5bd846c529	Design login flow	Design login flow for project X.	t	1766481817411
3	6efa36e9-3f5a-4827-8082-3a9a32294c77	Deploy blog post	Deploy blog post using TS.	t	1773945793172
3	8558861e-a929-4f51-bf27-36d3cd10961d	Fix UI mockup	Fix UI mockup with comments.	f	1775585128648
3	e08a54df-72d9-4109-bb02-3584bafce4c8	Plan unit tests	Plan unit tests in draft.	t	1752821973394
3	92bd6881-e4bd-43a2-a344-253679aa1456	Design unit tests	Design unit tests with team.	t	1761458325216
3	b627db92-68d7-4082-9c83-0de3411157b2	Deploy unit tests	Deploy unit tests with team.	f	1777041610339
3	3d62774c-484e-474e-b5a4-967f5e256c2c	Complete unit tests	Complete unit tests before EOD.	t	1751207060593
3	2a32ff57-8a04-4158-b09f-5c214f76d829	Test UI mockup	Test UI mockup with comments.	f	1769512740842
3	4bba0d58-47ce-45a6-a303-a43fa95f7a2e	Write API	Write API in draft.	t	1753932306447
3	c4d4d2c1-2ae7-4469-994c-a1e91d27c34c	Deploy email template	Deploy email template in draft.	t	1775784833133
3	5dba41d6-adad-4c07-8781-fdba4f6ebb05	Design Dockerfile	Design Dockerfile with comments.	t	1780616798674
3	07d65e6c-4c4a-42e3-9060-f972a0c25c53	Complete blog post	Complete blog post before EOD.	f	1755456528312
3	82510724-20d9-499d-9627-4fbf5d120b1e	Fix email template	Fix email template with team.	f	1761971889230
3	7546e6e3-52ff-4eb8-8697-344eb64821dc	Write API	Write API and document.	t	1774039944177
3	cc3493a3-9ca8-4f45-ab8d-767a3e29f2e2	Complete unit tests	Complete unit tests and document.	f	1775937058112
3	d23a41b8-0a69-4fd7-ad4d-f9d631660013	Write email template	Write email template in draft.	t	1769638754032
3	5617afc1-e385-425c-8d53-04c958140873	Test blog post	Test blog post with comments.	t	1780455248166
3	4e26f4ad-63ac-439b-b75b-e014d53be7bf	Complete email template	Complete email template for project X.	f	1770266773196
3	780c36de-a0c7-4c69-95c5-efb9fff2eb8a	Write email template	Write email template before EOD.	f	1768009732524
3	bedf01f4-f89e-410f-843c-a0044d0994f4	Plan UI mockup	Plan UI mockup using TS.	t	1779108535971
3	68d1bf33-cd58-47da-a5c0-85cec6247bac	Design database schema	Design database schema for project X.	f	1769164720003
3	44aaa1fc-4ad9-47fb-a6e8-0de9f4c0bf80	Complete database schema	Complete database schema before EOD.	t	1751082449694
3	3b7b9935-07bf-4850-b4f2-3e5827f7f7bc	Complete unit tests	Complete unit tests before EOD.	f	1777819986971
3	1644e521-5a5c-4920-8bc9-e238fc6996bd	Fix login flow	Fix login flow for project X.	f	1770813297504
3	4f2ecd7a-cf7a-4303-b22a-95d5789cbb61	Deploy blog post	Deploy blog post in draft.	f	1753045570392
3	e60240bd-15f0-4bf5-a02d-7a1c38465c9b	Review login flow	Review login flow using TS.	t	1766156850645
3	5a3cf241-a4dd-4fc7-afd9-be0dbae21876	Review login flow	Review login flow with comments.	t	1759266905663
3	ccfa22db-c7cd-47b2-a058-c1d134c4d455	Complete login flow	Complete login flow with comments.	t	1776698980267
3	ff46f748-d3b3-44f5-8f79-28c9e5102c9f	Review Dockerfile	Review Dockerfile with comments.	f	1762051717434
3	8900755d-6b87-4122-b53a-c553ea2ac628	Write blog post	Write blog post and document.	t	1763330440591
3	5f8db329-83a8-4445-8629-e9af5143f2e4	Complete API	Complete API for project X.	f	1774586874930
3	8abf1596-db77-47bf-8bc8-af17d79b8bbe	Write blog post	Write blog post with team.	f	1780188315243
3	49280657-0dad-4dd1-a20b-a81984da7abb	Complete UI mockup	Complete UI mockup for project X.	t	1778914199397
3	fcc4b955-f60e-4ee3-8612-52438b9415aa	Write unit tests	Write unit tests with comments.	t	1760364523850
3	800d5cf0-c5f0-4337-a3e9-c23db717a419	Plan database schema	Plan database schema with comments.	t	1766136640811
3	38e3c9a1-736c-401f-bd83-e10a3f7f5205	Plan unit tests	Plan unit tests in draft.	f	1775723684327
3	5256a5f1-adec-4de0-9650-3e7e45725cab	Test login flow	Test login flow with comments.	t	1781320473987
3	3b240fbd-7658-494a-bde3-a8c1728ca9a7	Complete unit tests	Complete unit tests before EOD.	t	1770767152817
3	503d1dfd-b726-465e-bd2f-2f5a06af6096	Fix database schema	Fix database schema and document.	f	1762265022332
3	634b9832-8ad3-4e6b-832f-928c634079f5	Test database schema	Test database schema before EOD.	t	1769573053969
3	85061eb0-a1d4-4e7f-898a-6275bc90a40d	Fix login flow	Fix login flow and document.	t	1772910674836
3	cc16baa9-7462-4a85-961d-8c2fc465987b	Test API	Test API for project X.	t	1755716079719
3	026f2e9c-a11c-44f0-a498-6d3da70d14bc	Test UI mockup	Test UI mockup and document.	t	1763966316320
3	f6baece4-09ae-457c-83d7-54ca197be7df	Fix UI mockup	Fix UI mockup with comments.	t	1772928927634
3	90965d52-d673-427d-aeee-7a78a0db89da	Review Dockerfile	Review Dockerfile for project X.	t	1767777037565
3	1982a2ef-ff25-49e8-a5cc-5eb68ea899b7	Write database schema	Write database schema with team.	f	1777582913419
3	08e8eb07-2319-4956-88b5-9d974eea121b	Plan database schema	Plan database schema before EOD.	f	1772999686551
3	25d63c2b-fdbe-4509-a666-2c9ecc0c96c1	Complete login flow	Complete login flow before EOD.	t	1780660726298
3	3ed1051c-19b0-4be5-82fe-9109041bc103	Test API	Test API and document.	t	1757643189401
3	64fdd91a-83c7-4946-a9fd-e99b98e45c75	Write login flow	Write login flow with comments.	f	1763268355944
3	b6056462-adac-4ce0-967a-e26b73bc19e9	Deploy blog post	Deploy blog post before EOD.	f	1765300946644
3	2dafeadc-abcf-458e-acfe-f8172b9c51bb	Test API	Test API with comments.	f	1750341633005
3	0db072ea-b0b1-47fd-b778-e980251c170e	Deploy blog post	Deploy blog post using TS.	t	1778464196764
3	3d336c4c-8d1e-4bde-99fc-b905321b4443	Complete email template	Complete email template with team.	t	1758598970108
3	36bf7e4e-3f6f-4ccb-a8d2-cca5dd622ef3	Fix API	Fix API with team.	f	1768620950219
3	1003b05d-c3a2-46dc-b016-71cb39745842	Deploy UI mockup	Deploy UI mockup with team.	t	1777074711821
3	da8fa9eb-9665-4a80-ad47-56645b19f033	Fix login flow	Fix login flow in draft.	f	1767132661991
3	0928f92f-bbed-44a0-9c2a-b3de084d3f93	Review unit tests	Review unit tests using TS.	t	1764658224571
3	78245531-53e7-49d9-9dfa-01267766a100	Deploy blog post	Deploy blog post with team.	t	1764152378143
3	d8352fcb-ffda-43b0-9831-d0252c91114e	Deploy database schema	Deploy database schema with team.	f	1780186272084
3	459631e4-c399-4e8e-be45-a0f79e4d7a46	Complete blog post	Complete blog post and document.	t	1771333617236
3	68165c44-b953-412e-b8e3-dd3bfccfcce0	Complete unit tests	Complete unit tests with comments.	t	1764716292283
3	7f363cdd-3480-4f32-9971-c3e00fe7c144	Write API	Write API before EOD.	t	1775082785667
3	de785b0d-a7c6-48c1-b7f1-fac3b004f8ac	Design blog post	Design blog post before EOD.	t	1772255428336
3	49c90811-0645-4a60-9180-6499bbfb3715	Deploy unit tests	Deploy unit tests with comments.	f	1776698447885
3	f92f6fe6-6a9d-40b8-8a9f-e892e21b38d7	Write login flow	Write login flow with comments.	f	1754716940542
3	7e2249a4-bfda-4acc-b20a-949676a8ebc2	Deploy database schema	Deploy database schema with comments.	f	1768317906686
3	90e9b877-022e-4d49-8f65-cd334900b39c	Design UI mockup	Design UI mockup and document.	t	1780601762686
3	87eacee4-5b6f-414c-aad4-0a64ec60e7c7	Complete login flow	Complete login flow with team.	t	1758386169976
3	ccbfa208-654b-42ad-b4c9-ae0ad28e9329	Review database schema	Review database schema and document.	t	1755197080538
3	cfa920e9-488a-403d-b678-dbc858307d17	Design UI mockup	Design UI mockup and document.	t	1750433678413
3	9986ccc0-f0fe-48bb-837e-6ea1976f1715	Write API	Write API for project X.	t	1751270569871
3	bf1b6b3f-bb05-42f5-a328-d623a035d66c	Fix email template	Fix email template using TS.	t	1775788715293
3	16b8574b-70a3-42cc-8192-34cf37081d42	Write blog post	Write blog post and document.	f	1772818480528
3	1a178564-c5d2-4b03-b0f2-93ee0b132b2f	Write blog post	Write blog post with comments.	t	1780766160932
3	dc824568-0533-4612-8865-e598bdddb3ea	Plan UI mockup	Plan UI mockup for project X.	t	1751330319314
3	69691fbc-8a58-46ce-9d2e-7f26c6324a58	Design login flow	Design login flow and document.	t	1767171085276
3	949a4385-4e6d-42c8-870b-f2be606fa6bd	Complete database schema	Complete database schema in draft.	f	1754914907229
3	091ab0cc-3157-4302-b02a-50cbd2b9d919	Review blog post	Review blog post in draft.	f	1750193618690
3	235613d0-abe9-46a7-9e91-8a8d3673b8f8	Review login flow	Review login flow using TS.	f	1772444781773
3	07a82cdb-1f6f-41e5-99aa-9377becd9979	Review database schema	Review database schema with comments.	f	1763901687115
3	237a6f20-b1e2-45a2-94d8-50488337b762	Write login flow	Write login flow before EOD.	f	1751185667693
3	8661c428-898a-45c8-a015-454b984696e2	Deploy UI mockup	Deploy UI mockup in draft.	f	1757613998881
3	4969afa0-6ea9-4a3d-8412-a9451adb5674	Deploy login flow	Deploy login flow and document.	t	1771340786090
3	5ff0d217-9fa2-4628-87da-733663d0ff5d	Test database schema	Test database schema with comments.	f	1762377512491
3	33cb4817-32b5-428f-b373-e2f19b14610b	Deploy UI mockup	Deploy UI mockup before EOD.	t	1763222754247
3	eeddebc7-5d1d-418a-98cf-1e77979c52a2	Design database schema	Design database schema using TS.	t	1762110135516
3	55c35dde-9b74-4b13-8cf2-4ead7c5f06a3	Deploy database schema	Deploy database schema in draft.	t	1758602929401
3	7836c4a0-49f5-4596-84a8-6b1073745a46	Fix Dockerfile	Fix Dockerfile with comments.	t	1757445375206
3	3088e5f0-9754-4c2b-9b39-997bc11058e3	Fix login flow	Fix login flow using TS.	f	1780208104913
3	4cba5e8c-12e5-4f7b-b72f-9c711ca4c1d7	Fix blog post	Fix blog post before EOD.	f	1778458432032
3	5bbf7c2d-f777-4305-a8bf-e9af7b1137d3	Deploy API	Deploy API with comments.	t	1771867294366
3	ec772810-0f7a-428a-95ad-a72b35d97cf6	Design login flow	Design login flow in draft.	t	1776552352398
3	247a45ae-0c87-4de2-a500-e6bf4aecaf55	Review Dockerfile	Review Dockerfile in draft.	f	1772493537018
3	4808807e-15ab-47ae-be18-e3ed54dbb5c9	Test API	Test API with comments.	f	1752789552560
3	6e3d4015-060a-4bae-a465-70f6e368d27b	Plan unit tests	Plan unit tests in draft.	f	1758703844579
3	daacb960-54e1-40d1-a056-7272d6f9f29a	Review email template	Review email template and document.	t	1781414418942
3	1468dc1b-54d5-4369-bab9-2ab9189219a5	Complete blog post	Complete blog post using TS.	t	1767152374732
3	8c482637-28d2-4318-a61b-de45b29f16fd	Design database schema	Design database schema and document.	f	1770290198952
3	f1726ac9-59de-4b57-bbda-9b2e88096c38	Write email template	Write email template using TS.	f	1754599829489
3	05976613-5dc4-4a33-8428-e94e1cf8a3df	Design Dockerfile	Design Dockerfile before EOD.	t	1772530767625
3	16356d15-a276-4398-9d94-b8d857fbd5a6	Review login flow	Review login flow with team.	t	1775610571934
3	edba011a-c1e8-4922-89fa-c3e806b03fa6	Test database schema	Test database schema with team.	t	1757096084481
3	0f8430ad-718b-4182-bb17-897780b17af2	Fix unit tests	Fix unit tests before EOD.	f	1770013896202
3	9b048484-68fc-4724-a58b-b64abc5f9fcd	Design login flow	Design login flow for project X.	f	1773841737395
3	95b66533-45ec-4d99-896f-333ccd2c2b29	Write database schema	Write database schema for project X.	f	1760250125026
3	8b5f6f64-67d2-4030-86f2-bfa4a8c2e07f	Test API	Test API for project X.	t	1778822261421
3	80f2de1c-c730-479a-8a6f-216ea6be0917	Fix blog post	Fix blog post and document.	t	1769671089152
3	40a3c96f-10a4-4db0-8e9b-478f0ea614c6	Plan login flow	Plan login flow with team.	t	1764706390465
3	6a9933c2-9882-4b2b-9669-810b3e9febb2	Design email template	Design email template in draft.	t	1750777685419
3	3d7b587f-4d67-4340-b7c1-cabe16ea45d4	Fix login flow	Fix login flow with comments.	t	1767330357241
3	f5b9cdda-3171-49b3-a963-407fe0f2d278	Complete blog post	Complete blog post with comments.	t	1756787033530
3	66155e54-dc4c-4cc9-b0a7-19fa149a65d3	Fix blog post	Fix blog post with team.	f	1751318304292
3	4509b0c9-42b1-4fa3-8ab9-012a349b3521	Review API	Review API with comments.	t	1771801037919
3	41a78015-4ab9-457c-97dd-4cbd9946be90	Design Dockerfile	Design Dockerfile for project X.	t	1775628496869
3	66c620a4-f34a-441b-87ea-5221b994416d	Plan UI mockup	Plan UI mockup with team.	t	1754567298039
3	8b5a423a-6881-4da1-ac8e-54a80aff9690	Deploy blog post	Deploy blog post with team.	f	1779483017137
3	a2e66f56-7eb7-403c-8d3a-460496e9398b	Fix UI mockup	Fix UI mockup for project X.	t	1759619223094
3	74293aba-2f35-41c8-8754-1d13cbf0e038	Write UI mockup	Write UI mockup before EOD.	f	1781455017552
3	5decfbaa-38e2-4fa0-b480-0899c8eaf247	Fix database schema	Fix database schema for project X.	t	1759393026885
3	55661ce0-ad61-415a-aa96-ac82151c4bb1	Design login flow	Design login flow before EOD.	f	1780258987179
3	6b21b931-0328-4a9f-91b6-728ce4f3682d	Write email template	Write email template for project X.	f	1765450694615
3	dcc16d37-68df-4d27-979f-319d2defec99	Review Dockerfile	Review Dockerfile using TS.	f	1775214719042
3	3aa2d9f2-46f8-4efe-aa03-092596d13e74	Review Dockerfile	Review Dockerfile with comments.	t	1778994936497
3	7209148f-78fa-44bc-909f-0531d375b0dd	Deploy UI mockup	Deploy UI mockup and document.	t	1765197826417
3	aff77c36-d2f3-4a41-ade3-d5935febf9a4	Deploy UI mockup	Deploy UI mockup and document.	t	1777337553657
3	bce6bbb7-08c7-42f3-ba26-a93f11c1b1d8	Write API	Write API before EOD.	t	1757232660012
3	bda6f0a2-9431-42fd-8ac7-ce2627680448	Design Dockerfile	Design Dockerfile for project X.	t	1773971003854
3	38d1db8e-2da9-4108-b2f2-cc3e8048c947	Write login flow	Write login flow and document.	t	1769828190196
3	5e789796-af21-48f0-9cf6-54256f3a11ad	Write Dockerfile	Write Dockerfile in draft.	f	1777146507676
3	6cf846f3-8f17-4bac-a328-8709cd57ce8e	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1775100707305
3	fe5cc1b2-2351-463c-9430-56239a963772	Write login flow	Write login flow with team.	t	1757913780042
3	59eee769-d72a-4381-9240-f7dbf099dac3	Test email template	Test email template with comments.	t	1771580148952
3	07e4697b-e7fd-4315-9963-6a968441db94	Complete email template	Complete email template before EOD.	t	1775917622768
3	5201abb9-a974-4496-ad94-544072f93df1	Complete UI mockup	Complete UI mockup for project X.	f	1757450303015
3	0cf65d3a-0e61-40c9-9d91-35570d089a60	Complete UI mockup	Complete UI mockup before EOD.	t	1771567663587
3	9b0a162a-864c-4189-8303-e0fa997807db	Plan blog post	Plan blog post and document.	t	1778241398050
3	2ddbbb89-bdcb-4265-9762-a63bf85b1c77	Review database schema	Review database schema in draft.	t	1754954995861
3	c2b45c3c-bfd1-4764-a7d0-8911ddebc411	Write unit tests	Write unit tests and document.	t	1773105206132
3	c495c30f-dedc-43d8-8710-0bee89ce36cc	Design login flow	Design login flow in draft.	t	1755707801730
3	630e2dc9-e770-466d-baf0-62c2bc9af86a	Review unit tests	Review unit tests before EOD.	f	1780612817054
3	4548a1f7-2635-4ddb-a2fd-fa881a2ce993	Write database schema	Write database schema before EOD.	f	1778437042599
3	ea7622e4-b166-42b4-8764-a7eb821e4df8	Fix blog post	Fix blog post with team.	f	1762568873119
3	ab478617-870c-4ded-b9c0-5e4b35aacc03	Fix unit tests	Fix unit tests and document.	f	1760540946538
3	61e555b9-be6b-4ca7-8901-9688998208a3	Plan email template	Plan email template and document.	f	1764760473273
3	7580012d-eece-4de4-a8ec-0eb43ce8b775	Test blog post	Test blog post with team.	t	1758310283852
3	31251700-9518-48d1-8699-72b121b6f959	Review blog post	Review blog post using TS.	t	1751690164232
3	d94b25c9-7b41-476c-8e0d-0cb482eacec0	Fix email template	Fix email template in draft.	f	1764286817822
3	6634e3b8-4cc2-4c09-bcf3-23164b198f08	Review UI mockup	Review UI mockup before EOD.	t	1761668504256
3	d704d1b1-96d8-49c6-8b6a-a5a1af8c0070	Write Dockerfile	Write Dockerfile in draft.	f	1769575853030
3	92497348-95e7-4f68-b6db-33275861d76c	Write blog post	Write blog post with comments.	t	1757773882935
3	bd1472db-a7f6-4b98-bc8e-577e941a2221	Plan unit tests	Plan unit tests using TS.	t	1759232988802
3	90c242d8-8374-48ab-b651-133ce4027d6e	Deploy email template	Deploy email template and document.	f	1761954319210
3	7eec4e50-14fb-4eb2-9703-4d3604114109	Fix database schema	Fix database schema in draft.	f	1776317190854
3	460e6961-69aa-4d1c-aa01-c8cdf1c1d1cb	Deploy blog post	Deploy blog post in draft.	f	1775180882166
3	c926d934-735b-459d-84e6-45f191be758b	Plan email template	Plan email template using TS.	t	1767670112681
3	f92a5ca9-9c78-4600-a20a-6bea21bb63a3	Write email template	Write email template before EOD.	f	1770442836488
3	43b58371-a293-493e-8eab-9c34e1d4a11a	Deploy blog post	Deploy blog post in draft.	t	1769162627253
3	9168e187-7dd8-4e0a-93ce-1d770fb81a2d	Design API	Design API using TS.	f	1775415091460
3	cfa20e8b-dc44-494b-9fbf-14a64036eac2	Complete UI mockup	Complete UI mockup with comments.	f	1777598004257
3	c4d2cb62-6112-485b-b3de-84f08d57d5f8	Review database schema	Review database schema in draft.	t	1773806987570
3	8ff64fe5-f32c-4640-ba1a-40abf43b9946	Plan UI mockup	Plan UI mockup and document.	t	1760325810707
3	9048c394-84cb-44ce-bb0b-50ea1dd7b01e	Fix API	Fix API using TS.	f	1762874115690
3	e086d028-ed7d-451b-9b0b-cf967aa5edeb	Complete email template	Complete email template before EOD.	f	1759683874648
3	a06400bb-8b86-4e31-ade5-2efa6de344b8	Review UI mockup	Review UI mockup with comments.	t	1767330573067
3	3ce46e10-1d95-474c-a2c2-578dedc1e7f9	Write API	Write API and document.	f	1769889304077
3	cb387012-ee2d-4f22-8d18-5076784a873a	Deploy API	Deploy API with team.	f	1754208736917
3	ab536d07-5c9f-4619-a3c5-cee922e81cee	Plan API	Plan API with comments.	t	1761064207377
3	8787b7fe-6e91-418e-8f11-1aee013627e1	Deploy Dockerfile	Deploy Dockerfile and document.	f	1751895536651
3	196e6a63-73aa-4cbb-99f4-5f92e1f90fde	Write email template	Write email template using TS.	t	1765622451437
3	96bded79-39b5-4408-a563-ff9809c347bc	Write email template	Write email template with comments.	t	1758199258908
3	3d4b392e-222c-46a0-bf2b-8e8f03b8f0a9	Write UI mockup	Write UI mockup before EOD.	f	1772067301080
3	02a87586-802d-4999-8130-ce5dae94d754	Test unit tests	Test unit tests using TS.	f	1770676700638
3	aecf713d-67a5-49ca-adbc-648eadac095b	Design Dockerfile	Design Dockerfile and document.	t	1765538565257
3	28be39f5-4173-4574-a541-b088ad81d6cc	Write Dockerfile	Write Dockerfile with comments.	f	1777099552339
3	cf04a113-4477-4a50-936f-3cef2a2b978f	Test Dockerfile	Test Dockerfile with team.	f	1759208455151
3	4224694c-b3ce-4148-bdf9-ba27aabd863e	Plan email template	Plan email template with team.	t	1765795344532
3	e3c10151-9968-473a-ad6a-dd73d6ee2a30	Plan UI mockup	Plan UI mockup with comments.	t	1757664826412
3	dcba3764-4d12-40c7-bb58-08df6ec83a2f	Test Dockerfile	Test Dockerfile before EOD.	t	1775028236135
3	da73f732-9300-4ccc-8761-fc0ac5891e18	Fix database schema	Fix database schema with team.	f	1769127093462
3	380a7bfa-6cdf-4d1f-94ba-9f16b8956eef	Fix blog post	Fix blog post using TS.	f	1756200620678
3	a0bc1196-fa9a-44f3-9936-e9a0e498a030	Plan login flow	Plan login flow using TS.	f	1751301131200
3	916715f6-c1bf-49d8-88d7-95efffdfb5ab	Complete API	Complete API using TS.	t	1781256013069
3	76ab66cd-7d0e-4509-96d4-577833ac8ed6	Review unit tests	Review unit tests and document.	t	1772838241010
3	54731d72-470f-43c3-835e-8de074aa6c0d	Test API	Test API in draft.	f	1751032024939
3	ec33c523-228a-4c12-bc7b-ef35a3a05a86	Plan email template	Plan email template and document.	f	1774587656432
3	7fd5e1cd-14d3-4955-8e7e-c5f1d972d0d3	Fix email template	Fix email template before EOD.	f	1763232887454
3	89f430c2-1099-4089-a46f-6e673af78f69	Plan blog post	Plan blog post before EOD.	t	1754492558460
3	0c347676-7835-4f6d-b8e0-e33993c04b73	Write blog post	Write blog post with comments.	t	1771109284603
3	b8b2f057-06b4-425d-ae81-736c1dcd7693	Review database schema	Review database schema before EOD.	f	1751541665357
3	a48bbf4c-b8a9-481b-bab6-a638e9fd5e8f	Review API	Review API in draft.	t	1778218024364
3	68226cc7-0ade-40dc-ad19-a168e42e73a7	Test login flow	Test login flow in draft.	t	1780622529025
3	b9e8ab70-8f61-44ae-bb8e-1a7861908b4b	Complete login flow	Complete login flow using TS.	t	1754028831654
3	97abe425-8bfc-4012-bddb-1cdba8ddf99a	Review Dockerfile	Review Dockerfile and document.	f	1777566860513
3	bf5f0815-a9d1-49b4-9b27-27867820820c	Fix blog post	Fix blog post and document.	f	1757341285096
3	75b9fbd6-badc-4c5e-a6d8-7689617e03a1	Plan Dockerfile	Plan Dockerfile with team.	t	1769389919795
3	f5ab30a7-d9fc-4b0c-b3fc-f0416255fd74	Write database schema	Write database schema for project X.	t	1777289310022
3	16f4cd09-689f-4ab3-b65a-c921f36287e2	Plan unit tests	Plan unit tests in draft.	t	1775257482974
3	d9b9fdef-21fc-40d0-b8a8-e5aade59e412	Review Dockerfile	Review Dockerfile for project X.	t	1751170708186
3	137340ff-2863-4811-821f-7bd1c99b20c6	Complete email template	Complete email template with team.	t	1754052610254
3	799c5c06-a8ae-4eee-8272-56d8cfab7846	Test email template	Test email template and document.	f	1760698060969
3	00c4b806-e337-4e95-afa9-aa16347035c8	Design email template	Design email template with team.	t	1767768304786
3	d7e4d746-3077-4c92-afd7-39dbe89e7c2d	Write blog post	Write blog post in draft.	t	1753509004887
3	3e8c510b-92f8-4e39-9b37-4942f607fa89	Review email template	Review email template and document.	f	1751819839889
3	d1917525-a940-4503-b184-8e0d7df144b1	Fix blog post	Fix blog post with team.	f	1754650313795
3	eeac2fb8-1f5e-453e-956d-0d202a27559d	Fix Dockerfile	Fix Dockerfile for project X.	f	1780860492147
3	75a7954e-9b67-43f6-9d52-41ad8c80cb59	Fix API	Fix API with team.	t	1769630487611
3	60f3e8fe-4494-4027-bc65-aae25096306b	Fix database schema	Fix database schema with team.	t	1781060155500
3	7241300f-b7dd-46d4-9417-a1f4b2382a61	Design Dockerfile	Design Dockerfile with team.	t	1750711341741
3	f0e147b1-c56e-437a-a88d-ce5957308198	Fix login flow	Fix login flow using TS.	t	1754165992243
3	dc681810-f65f-41a2-a5b4-542fbd64e217	Review unit tests	Review unit tests with team.	t	1760461314042
3	d2acb92c-ed4b-4842-a5e9-5ee078f6cb3e	Write API	Write API using TS.	f	1773324858764
3	b7dd5725-05b6-472e-b318-c1e9b447c6d3	Deploy email template	Deploy email template in draft.	f	1779231879911
3	c821dc1f-9412-479c-a4a9-682c1f0a0591	Plan login flow	Plan login flow for project X.	t	1752421778982
3	f0d6b354-e107-443c-be72-4c587b127f59	Fix email template	Fix email template with team.	t	1763695627039
3	db4ab8b6-934d-4279-a120-b95768d3c0f3	Review UI mockup	Review UI mockup using TS.	t	1767506404463
3	be3edac3-ac18-4966-93cb-43d7d55ed84a	Design API	Design API and document.	f	1752552469488
3	0b33d2f4-5928-4dbc-94f0-99077cb98ba9	Review Dockerfile	Review Dockerfile and document.	t	1773566306192
3	9d0a152c-f5eb-4c9d-8816-24092740c0bd	Complete UI mockup	Complete UI mockup using TS.	t	1750366140767
3	9f8efef3-c838-4c63-a5b1-f36aa83fe834	Complete database schema	Complete database schema with team.	t	1779384358713
3	00c98b03-ff47-4d07-873e-98dc83256cce	Deploy UI mockup	Deploy UI mockup and document.	f	1759258382674
3	82fb12fa-3739-44dd-8921-daa437d5a846	Complete login flow	Complete login flow using TS.	f	1771516901601
3	7f27a6e9-895b-4601-b809-88a58d286138	Fix blog post	Fix blog post before EOD.	f	1781495480487
3	77deff27-5d98-40fe-b9d9-04b737ddd395	Test database schema	Test database schema and document.	t	1757659556104
3	84ffe8af-49f2-42f5-9bb5-02bf06fa1b5b	Review database schema	Review database schema using TS.	t	1774232515481
3	f3b943ad-302e-4314-b21c-41323758b0e8	Plan API	Plan API using TS.	f	1771947127175
3	c0590eec-390a-4b24-ab90-55e4c6234d9b	Deploy email template	Deploy email template using TS.	t	1754233266693
3	691576f3-1813-4bfa-84cc-966ed2f8a327	Complete login flow	Complete login flow and document.	f	1760010209471
3	3056c20a-6f6e-4ba0-aac4-f0138c65fcc3	Write blog post	Write blog post with team.	f	1778754125379
3	b2c1be69-0d53-4159-9ce6-48fae76ec8ae	Deploy database schema	Deploy database schema with comments.	t	1768124930133
3	54ee9063-bd7d-4f00-91bd-3e700fb42545	Plan login flow	Plan login flow and document.	t	1780583363014
3	92201ff0-5b8e-415a-9998-951cb98363f7	Plan database schema	Plan database schema for project X.	t	1774823270413
3	d7562ad3-8b5b-4c26-aaaf-4aba62ce1dc6	Write database schema	Write database schema for project X.	t	1758382052107
3	5b993a81-2797-4419-ac7f-fd27f3282a6b	Review API	Review API before EOD.	f	1768797043404
3	2132a825-6c87-48e7-bd89-ead0a6cf85e2	Test email template	Test email template with team.	t	1755233534489
3	a47d1bd0-1701-4807-95d3-e3ab379a2a28	Plan unit tests	Plan unit tests in draft.	f	1752871126221
3	023637c5-1cd8-41ae-8ac1-ce42b3744a6c	Write UI mockup	Write UI mockup with comments.	t	1775693124430
3	81585bd1-761e-4521-ab82-c36d759566b8	Plan email template	Plan email template and document.	f	1750853261623
3	96f24b45-5d86-492e-ba37-bf1bc1d283bd	Write login flow	Write login flow in draft.	t	1754725937532
3	6c48412d-34a5-4df3-9b70-2dbd720cd5f6	Review Dockerfile	Review Dockerfile for project X.	t	1761668447389
3	dfd9b1c2-8d7e-45a6-a196-b89786c69c63	Write unit tests	Write unit tests with team.	f	1774985843644
3	dabeffce-547c-4dc2-9214-36af5327ce4b	Fix unit tests	Fix unit tests using TS.	t	1777706416750
3	ee778794-9212-47f6-9a0c-dde271330f29	Fix blog post	Fix blog post with team.	t	1760882138873
3	a444acba-8c83-47fd-8aa8-46076a4569fe	Test UI mockup	Test UI mockup with team.	f	1755906890736
3	05266d70-be0c-4184-9670-7e5b5a8bc57b	Plan blog post	Plan blog post with team.	f	1774845113896
3	480f8653-7d9c-4b5b-bc86-2047b67253e6	Complete blog post	Complete blog post with team.	t	1759892510820
3	1201c588-f623-40fe-ad38-8e9cf6839493	Fix database schema	Fix database schema with team.	f	1775689333978
3	2c21f28d-f480-4f4d-8a85-8c2fa1cf3875	Complete login flow	Complete login flow using TS.	t	1765302900361
3	fffeda91-231b-4168-96c9-af6e35d3473f	Design email template	Design email template before EOD.	f	1755950412766
3	f09558dc-0a17-4816-bb13-46a72d9e81bb	Complete unit tests	Complete unit tests using TS.	t	1763259425356
3	7272bc91-7b2d-4295-922f-40fdfeaeff5a	Review Dockerfile	Review Dockerfile before EOD.	f	1780982935577
3	a85533e5-b613-4536-8a2a-81d9085fdf60	Complete Dockerfile	Complete Dockerfile using TS.	f	1768743576999
3	6d0747a0-a0f3-4539-8abc-d4e573e814a5	Test API	Test API for project X.	t	1756231946321
3	f5251acd-6c7b-4137-89a5-2223143ffb96	Test login flow	Test login flow for project X.	t	1772838582959
3	d872dfad-736a-4a69-b077-b828a34c7aa1	Write database schema	Write database schema using TS.	f	1765726884208
3	cc111067-bcf6-4cb7-b21c-821f5c140ad6	Fix Dockerfile	Fix Dockerfile using TS.	f	1760221055651
3	ad60499a-2dc5-442e-9285-30a659ed6b40	Design blog post	Design blog post with comments.	t	1765359172796
3	804b3ee9-118d-4aab-b53c-a9b58fe8c7dc	Review unit tests	Review unit tests in draft.	f	1752678943962
3	a14aa703-9f15-4366-8957-092aa96d6512	Complete email template	Complete email template with comments.	f	1759602982891
3	17331926-ca64-4edb-abeb-84b919790da9	Review database schema	Review database schema and document.	f	1758793814374
3	051031c4-701f-4dc8-b097-3ef34f1798b9	Plan Dockerfile	Plan Dockerfile before EOD.	f	1768062055002
3	638229b3-626a-4d09-8f9a-6c244adef7c3	Fix email template	Fix email template with team.	t	1769389624933
3	bbe83542-38d8-44de-8330-f3a941c50470	Plan login flow	Plan login flow before EOD.	t	1759700487657
3	fba888d7-7101-4db0-a7bf-fd00b39b0c77	Plan unit tests	Plan unit tests for project X.	f	1751340442792
3	663ca74a-19de-4005-a824-12ed02db74dc	Deploy blog post	Deploy blog post with comments.	f	1768656887930
3	daeed83f-f769-4c1a-938d-af8319e47f0a	Test database schema	Test database schema for project X.	f	1754489075304
3	0d6413d6-8b46-4835-bef2-59af2d8d0b34	Fix API	Fix API with comments.	t	1779249692852
3	8f233d0e-92ca-4ebc-af83-30f0cd68e297	Test UI mockup	Test UI mockup with team.	t	1770349322905
3	e6684ed4-acd3-4be2-9244-2a31c7c1bbd0	Write API	Write API using TS.	f	1765047614338
3	882aed44-1777-4c6c-a64b-36dd2ed30994	Write email template	Write email template with comments.	f	1772419352417
3	5fe5d9ec-cd14-42ff-8566-0951f74db073	Plan database schema	Plan database schema with team.	f	1760096357595
3	a8753c97-7eef-488d-bea8-f6c62ef8e6f7	Test unit tests	Test unit tests with comments.	t	1766882623545
3	bd4b15e7-3bf3-4529-8402-d8b5607b1e23	Plan unit tests	Plan unit tests with team.	f	1775127505054
3	55fed15e-4581-4bc7-abed-917fe2e032fd	Design Dockerfile	Design Dockerfile and document.	t	1760319724796
3	768211bf-dcfc-447e-b935-9a73d88ec90a	Fix email template	Fix email template using TS.	f	1752131666056
3	b35dd71a-3583-439b-9319-8c0905f4e94e	Design database schema	Design database schema with comments.	f	1755670610515
3	480ae433-b653-4dff-852c-bc4a1efe6097	Review Dockerfile	Review Dockerfile with team.	t	1773254366877
3	7a6600bc-6159-45e6-94cf-bbfe57a72653	Write API	Write API using TS.	t	1769190521134
3	2ed6822f-ffc5-4dff-af66-d34c83b83823	Design blog post	Design blog post for project X.	t	1775914554461
3	ad049434-6756-4ed9-9060-f9239abf1aaf	Test database schema	Test database schema before EOD.	t	1765454646447
3	d1b2fe1b-6ef5-4795-8486-760bec3d12d2	Complete UI mockup	Complete UI mockup with comments.	f	1759573048514
3	3ae433c5-538e-45dd-9be7-4b8e4941cda7	Review database schema	Review database schema using TS.	t	1768890264396
3	6d61f045-cf47-4787-a6d1-319a121b6f7a	Write database schema	Write database schema and document.	t	1760114955764
3	4d12de3b-eb1c-48f0-abb9-29cbf255b1dc	Fix email template	Fix email template for project X.	t	1778794263330
3	56e7e4f1-a75c-422d-9f68-04364ce547cc	Deploy login flow	Deploy login flow before EOD.	t	1755495936028
3	d143e367-9593-4184-aba2-e46fc25afbdd	Write Dockerfile	Write Dockerfile before EOD.	t	1769567248162
3	bfe17f29-8732-4e04-9a20-94f9ec086aa1	Test database schema	Test database schema with comments.	t	1757049018782
3	ebe0dfe7-899a-49bc-804e-4f622abb62ae	Review email template	Review email template before EOD.	t	1768737515749
3	117d0e33-3609-4904-bc56-867470266be0	Complete blog post	Complete blog post with team.	t	1763336471846
3	7e80786f-7c5d-4baa-909e-07184594e355	Deploy database schema	Deploy database schema with comments.	f	1765849221117
3	7c80c0f7-9bec-4a23-830b-df6c60f03b83	Write email template	Write email template for project X.	t	1773821808801
3	7cfff235-49d9-4a9a-b7c0-eb9296fa3b2e	Complete UI mockup	Complete UI mockup with team.	t	1772017383642
3	8811a59c-6cfc-44ba-8d27-439140285690	Complete login flow	Complete login flow and document.	t	1764291964311
3	21352c12-ed3d-46e9-bbc1-2372ef377682	Fix Dockerfile	Fix Dockerfile before EOD.	t	1770216832658
3	faa0bab2-7847-48db-9d52-b7beab37e535	Write database schema	Write database schema for project X.	t	1769493372927
3	064dc92e-b289-458f-91b8-df9303714c60	Plan API	Plan API in draft.	f	1754780799351
3	85dacb2a-b04a-41be-b7f8-87b9b9efbafb	Write database schema	Write database schema and document.	t	1764513042027
3	cb9788d6-2b4b-4931-aa06-382a9a063ded	Complete blog post	Complete blog post and document.	t	1751315285058
3	e105ca49-4315-4667-a9d8-be381c7827ee	Write unit tests	Write unit tests before EOD.	t	1762169629981
3	ff1c285d-714a-48e2-9f20-b43ee916ed8e	Fix API	Fix API using TS.	t	1751260782610
3	bd4207e4-8b14-4002-82fc-8bbf59669df3	Fix blog post	Fix blog post and document.	t	1774451122828
3	4c971bf2-9204-4ea9-b3a5-236aca0d6415	Design blog post	Design blog post for project X.	t	1761561896783
3	9653dbc5-1d14-407d-afef-f260cd536d40	Deploy blog post	Deploy blog post in draft.	t	1759458387144
3	20799862-ec55-4f67-82a1-a9c52ce32965	Test UI mockup	Test UI mockup with team.	f	1759851143338
3	de4461f6-216a-482a-9185-1b722513c56c	Write login flow	Write login flow with comments.	f	1774892246203
3	a32b67ea-94b7-4c68-ae5f-17c6e3ecf1a2	Design API	Design API with team.	t	1767210023707
3	19607e30-2b37-4087-8178-112ccf284fc2	Fix database schema	Fix database schema with comments.	t	1766632875681
3	19eb2fda-0019-4408-90b7-6433dde2cb69	Test UI mockup	Test UI mockup for project X.	f	1762997273599
3	d69839b4-30d2-4bf8-83fc-86c993bac5a4	Review Dockerfile	Review Dockerfile in draft.	t	1769421893672
3	6e0c9e19-2b9e-40c7-938c-8a51e8788f36	Fix API	Fix API in draft.	t	1752931246912
3	d756961b-730b-49c4-9fe7-39a2daab6892	Test UI mockup	Test UI mockup and document.	t	1755025569728
3	ddd58591-6725-45ac-aacd-29d9f5660746	Test blog post	Test blog post before EOD.	t	1754812827823
3	6653b5bc-3a9f-49f6-8d13-361939cbd403	Plan email template	Plan email template in draft.	f	1769990575873
3	60f8a04a-f5ed-4c33-97b2-757c2ae3fe48	Fix Dockerfile	Fix Dockerfile in draft.	t	1753379396427
3	f89d550a-dd99-4a8e-a496-8d652adf7822	Test login flow	Test login flow using TS.	f	1774781023438
3	7eca19b2-ad3c-4d46-b65a-0ba25b42842b	Write Dockerfile	Write Dockerfile using TS.	t	1780976286971
3	af20f80a-0bec-400d-b729-3f4b6a5d19e9	Write Dockerfile	Write Dockerfile with team.	t	1779462019281
3	0195c201-bf26-4c01-8c8e-c052e268e5c1	Complete UI mockup	Complete UI mockup before EOD.	f	1758166727842
3	343418f9-e3b7-4601-a8f1-0ab2ade33964	Fix email template	Fix email template using TS.	t	1751387706117
3	0ab60002-aa6c-4950-b7b9-53acfb95b375	Plan Dockerfile	Plan Dockerfile with comments.	f	1760401343567
3	caee17fe-0157-4c3f-bc23-3efc427fccdd	Review email template	Review email template with comments.	f	1752375336388
3	79f4bc33-0d89-4a9d-9b8b-0adf41e435ab	Fix unit tests	Fix unit tests and document.	f	1764452161346
3	47e53da9-5e08-4815-b08e-99795777a57d	Fix email template	Fix email template with team.	t	1768796499625
3	a3bcdfcf-a633-4c7a-a2c4-6510467c84af	Plan unit tests	Plan unit tests with team.	t	1764573061541
3	927a5d70-cce6-45ab-bace-35d7cab94aeb	Plan unit tests	Plan unit tests and document.	t	1780275165336
3	40f2632f-9cea-427c-9790-fbea9a6624c6	Review login flow	Review login flow with team.	f	1753126862404
3	04062842-fc37-4c1c-956d-3bb9ac530e70	Design Dockerfile	Design Dockerfile using TS.	f	1780983723208
3	de0202d3-9a74-43bd-9843-7b596fe4ea99	Deploy blog post	Deploy blog post using TS.	f	1762172922889
3	fa8b4fcc-3e88-429c-b463-e4bc376767cd	Complete blog post	Complete blog post with comments.	t	1759872926179
3	1086b147-931e-4b56-b556-bad7d4c92204	Complete blog post	Complete blog post using TS.	t	1780580125111
3	d827f824-2eb3-4119-b7e2-28f4e87402fa	Deploy API	Deploy API using TS.	t	1776377468138
3	af7bc5be-c9f8-4fb0-aaf9-91c12008ab66	Fix blog post	Fix blog post for project X.	t	1780172045792
3	3a0b72e0-07c9-4917-ace1-eaeace91f715	Fix blog post	Fix blog post for project X.	f	1770159244189
3	0c322593-fab9-49d1-b6b2-9351d9b75096	Deploy login flow	Deploy login flow before EOD.	t	1765275435577
3	df9a302f-34bb-47e4-9dfd-5ebb3fd47981	Fix database schema	Fix database schema for project X.	t	1776599733824
3	c2f31b64-2421-4236-99c9-260646515775	Fix API	Fix API before EOD.	f	1762301569947
3	b12e9681-df30-46fc-8738-5d65b7762995	Write login flow	Write login flow with comments.	f	1754149969211
3	fbe1c709-025f-4e04-ac66-a79251d0f3b2	Complete API	Complete API with team.	t	1770540015019
3	7db4e6c6-6843-41c1-90e9-3f7332f6b97a	Review unit tests	Review unit tests in draft.	f	1756144862263
3	8f9a7dee-bb39-4bf2-8f2f-569e92bc7a54	Test email template	Test email template with comments.	f	1758612546621
3	79764a13-2dac-4e18-90f8-058193c90922	Test UI mockup	Test UI mockup using TS.	f	1772446276558
3	0ebac12d-c463-4fbf-aebc-1bf9c567ee39	Deploy unit tests	Deploy unit tests before EOD.	f	1775877741675
3	28a66b5d-f115-4cff-a886-770b12ee5838	Fix API	Fix API with team.	t	1772797777010
3	61ead522-8764-4bee-9139-ebf342cc70eb	Deploy login flow	Deploy login flow before EOD.	t	1771270697752
3	9b43a545-4af3-48b8-b945-80d72e23b4ab	Test UI mockup	Test UI mockup in draft.	t	1780595666120
3	f559bed5-774e-4af1-8286-3e4bbd898076	Design Dockerfile	Design Dockerfile and document.	t	1761124300856
3	06c74785-982f-4991-b647-9a0ebd78e882	Complete API	Complete API for project X.	t	1760010992763
3	c99ab5c5-2156-4167-997a-ebc7a1b9d7ae	Complete login flow	Complete login flow for project X.	t	1754502007248
3	5d0685ce-68a9-4052-a74a-59c4d65b971b	Fix unit tests	Fix unit tests before EOD.	f	1777607855434
3	c49ffdc4-1096-4d25-8e1e-2ca42980163f	Test login flow	Test login flow using TS.	t	1759908717910
3	03a8c3ea-0bf6-4b69-8ecc-812b1d039493	Write database schema	Write database schema using TS.	t	1778333574952
3	e0c2e73a-4ac7-460c-a1fb-3b1cca780b10	Design Dockerfile	Design Dockerfile with comments.	t	1773400082996
3	1332cfa9-b694-4913-8d8a-95166c8c7e67	Deploy blog post	Deploy blog post using TS.	t	1776927751208
3	9f063c1a-e95c-4aaf-96bb-ade9f75950b6	Review login flow	Review login flow with comments.	t	1757557260344
3	b641cf9f-88bd-4ad8-9d6c-ecba847db2ff	Complete Dockerfile	Complete Dockerfile with comments.	t	1759358982852
3	ffbe050f-0d83-4e37-970f-62925b6ee389	Plan API	Plan API for project X.	f	1776265909938
3	4b458156-2244-4007-9d42-a9b0394c784c	Review API	Review API for project X.	t	1778823201480
3	a7ba7470-b6af-43e8-9b24-aec35e90fd6e	Write unit tests	Write unit tests for project X.	f	1767239508143
3	ecf7a116-8f6a-4862-a918-30281e597b1d	Plan blog post	Plan blog post before EOD.	t	1771120004689
3	d7806d8e-98e5-4509-b1a8-b949c1f2166a	Write UI mockup	Write UI mockup for project X.	t	1777855790008
3	7323d787-34d9-40ee-aad6-6568f1499bcb	Plan UI mockup	Plan UI mockup before EOD.	f	1753830628068
3	ca88aa03-3924-4cc1-913d-647667b7e1fe	Deploy database schema	Deploy database schema in draft.	f	1768343079278
3	bb069ff5-40a0-44b6-91c0-04a2ee21927d	Review Dockerfile	Review Dockerfile using TS.	t	1778830824786
3	10ad7c77-1ef4-4a99-bc69-5e282ce1fe31	Fix email template	Fix email template and document.	t	1758817574330
3	d2d0198b-47c4-4cd8-bbfd-dfed0bdcb1d7	Deploy database schema	Deploy database schema with team.	f	1770396795677
3	ce92659c-ee24-4009-8b79-e33a03f51a45	Write login flow	Write login flow and document.	t	1774678873367
3	a2e8da33-a6cf-48a3-a47d-20051eb971b3	Deploy Dockerfile	Deploy Dockerfile with comments.	t	1777856027215
3	3997b936-89a0-40e8-babb-aba8f5fd7fa2	Review blog post	Review blog post for project X.	f	1755196870663
3	cf665555-6efc-41c6-84b8-c53a9d03b139	Review API	Review API for project X.	f	1751852281899
3	b3d41f9b-3936-4e95-a110-4f370a90bbc1	Write blog post	Write blog post with team.	t	1765605816812
3	432d4b0c-fe31-4234-9e6a-3e89f7e50d58	Complete Dockerfile	Complete Dockerfile with comments.	f	1751514321723
3	9dbe34c6-965b-43f8-b02f-642fb651ae27	Fix Dockerfile	Fix Dockerfile and document.	f	1752779029406
3	6f013e8d-2ae6-415c-bd53-c15debf4673f	Review UI mockup	Review UI mockup in draft.	f	1777494245829
3	a35fb4e8-78f3-4272-8fed-12ff7c237495	Write UI mockup	Write UI mockup using TS.	f	1763751254026
3	a143877c-5376-4c7c-8e72-a08accaa5662	Design unit tests	Design unit tests and document.	f	1779867140398
3	66466e67-fdf2-419a-bcb9-b306145bdd2e	Complete UI mockup	Complete UI mockup in draft.	t	1756883054277
3	a87587f5-0920-4a0b-8fd1-f15cf7c82394	Write unit tests	Write unit tests using TS.	t	1754857409355
3	feda230a-c302-441b-8ece-2f154febdaa2	Plan API	Plan API in draft.	t	1754002152507
3	06f67208-a7bd-4d44-8214-687045c8aebe	Plan login flow	Plan login flow in draft.	f	1759405178524
3	6d705609-550a-42b1-bfa2-bbbd6089a0a7	Test database schema	Test database schema with team.	t	1781187870038
3	c1f2f368-9228-4f05-8eb6-69f06dfbd70b	Plan unit tests	Plan unit tests for project X.	f	1772279275055
3	00ab51db-9cce-4e54-8b48-7363f83d027d	Design API	Design API before EOD.	f	1763055119791
3	b3dba5f9-8b19-41eb-a2cc-c4279f41134c	Deploy unit tests	Deploy unit tests before EOD.	f	1772243274927
3	4a7793fb-14f7-4da1-837c-428a93d4d505	Test database schema	Test database schema and document.	t	1776448341697
3	676aba42-3bdd-4404-849c-9f55e31a1b45	Fix UI mockup	Fix UI mockup for project X.	f	1757760482276
3	2a8db080-47b4-4c78-ac58-e9fae586f5b0	Fix email template	Fix email template for project X.	t	1775206298776
3	ba8fda5c-f829-4784-ba32-914c4c43efdf	Test UI mockup	Test UI mockup using TS.	f	1772209070459
3	b95d190f-7c46-4352-8ba7-554b9978cc31	Review Dockerfile	Review Dockerfile in draft.	f	1770352033307
3	f99e51a3-28bc-4895-9b6a-8a2c2c3c8fee	Test blog post	Test blog post using TS.	f	1758101535986
3	27b0b609-2bfd-4380-9392-878adb5e4c43	Plan UI mockup	Plan UI mockup for project X.	f	1778425277314
3	26ceb86f-e793-4c92-b3fb-f7ae9e429350	Design unit tests	Design unit tests before EOD.	f	1765939571674
3	9b4a11dd-5bfc-4ff3-84f1-c136fef85870	Test API	Test API and document.	f	1779670816733
3	60ce1450-966a-4b28-aa55-cf4221ae4a8c	Fix email template	Fix email template and document.	t	1770628921582
3	521818d5-a536-4c79-8797-c4367279427d	Plan API	Plan API and document.	f	1772910986674
3	15c6e2bf-5466-4208-b8de-335bf0a08c72	Review email template	Review email template in draft.	t	1780992000870
3	1c227694-c919-4e72-a7b9-3ca69d767375	Review API	Review API before EOD.	f	1768185161895
3	c6e65587-65f5-459c-92da-67b0f5a79772	Design Dockerfile	Design Dockerfile with team.	t	1758837528732
3	458e80fa-ff54-43bd-b5ce-16e594fdc53f	Test unit tests	Test unit tests with comments.	t	1771557800728
3	73235695-b80f-4d6c-9692-049b2e7c9eb0	Review unit tests	Review unit tests for project X.	f	1765474768304
3	46e97185-5418-49ef-a4f7-9cec6626f600	Test login flow	Test login flow and document.	f	1769751066341
3	0ef94ffa-7822-4759-a422-de1db91f6abb	Design email template	Design email template before EOD.	f	1758942273278
3	59b75c6f-7166-41e8-a1f3-2793a99004a1	Fix email template	Fix email template in draft.	f	1781106281771
3	c1e95bd8-e9ef-42b4-afdd-702e91b0d13e	Design login flow	Design login flow with team.	f	1752877400797
3	68064ffc-d767-49df-952e-c037de0e6bc4	Design email template	Design email template in draft.	t	1779361289041
3	29aafa50-4534-43ae-af9a-e8addf61ff7d	Design database schema	Design database schema with team.	t	1768114518021
3	c96a461b-9487-49aa-95ec-e94b20b21786	Plan login flow	Plan login flow with team.	t	1771291772082
3	fee67e17-3558-447f-9678-e37066583042	Review login flow	Review login flow and document.	t	1757393401426
3	32aeb8a4-c865-49e8-a3a6-a93778afa049	Test unit tests	Test unit tests in draft.	f	1759335215160
3	384c99db-afd7-4797-8d14-966412d1a9f2	Deploy Dockerfile	Deploy Dockerfile and document.	f	1756019927214
3	8699a6f9-0199-4579-8465-f38a6ce25784	Plan API	Plan API using TS.	f	1779278494573
3	b3f86d0b-d4a8-4906-8002-0c4e33f0e09e	Complete API	Complete API for project X.	t	1762791741879
3	b548022c-1e42-4280-afd6-f7154753660d	Write login flow	Write login flow using TS.	f	1761083695508
3	9562b758-40b3-4679-8f7d-7adf5b2fa629	Design Dockerfile	Design Dockerfile with team.	f	1763002162425
3	306cf241-48be-4ed2-bd8c-89041b4187cf	Deploy blog post	Deploy blog post with comments.	t	1778160678520
3	68cdf8c8-842b-4f47-bb0d-16be3d15c6ea	Design login flow	Design login flow with team.	t	1778682425595
3	b1369eac-0079-459b-bfe6-69ab18427f56	Complete database schema	Complete database schema with team.	f	1769859030704
3	ed842032-62e7-448a-954b-d7b6f754b8c9	Design UI mockup	Design UI mockup and document.	t	1773473681994
3	60265310-4a16-4319-8a83-b9d0a0290091	Plan UI mockup	Plan UI mockup using TS.	f	1780050953444
3	637c7417-9fd6-4056-9897-bec862c4c866	Plan login flow	Plan login flow using TS.	f	1750349555949
3	5328d361-65b6-405c-a5a4-808357338bd3	Write UI mockup	Write UI mockup before EOD.	f	1780998244641
3	bfbf5a0e-c64b-4134-8522-f2a11997ebf5	Complete email template	Complete email template using TS.	f	1771220233708
3	7964d8a0-81e6-42cd-bec2-082bb0f5f4f1	Deploy UI mockup	Deploy UI mockup using TS.	f	1779625770453
3	16d5b1a8-cf90-4fe5-9886-b459364d5fca	Plan login flow	Plan login flow for project X.	f	1752222640521
3	9ddba15f-6ba1-46e7-8153-9eed06883a96	Design Dockerfile	Design Dockerfile before EOD.	t	1760372586907
3	5975e8a2-6338-4945-bda9-e4b3b1a5dc13	Deploy database schema	Deploy database schema with team.	t	1751751148705
3	733aaa2e-fa44-4e1d-8400-7cbb0875b206	Plan Dockerfile	Plan Dockerfile and document.	f	1767017591261
3	26bd7f29-f6fe-44d5-ac4b-04f596a93d49	Write database schema	Write database schema with team.	t	1768701361506
3	93c8c5dc-4dc8-4dae-a071-bd232a71077c	Deploy unit tests	Deploy unit tests using TS.	f	1778097934393
3	8245d555-b90e-441f-af71-8bbc64dd3749	Plan unit tests	Plan unit tests with team.	f	1775928971155
3	bdd249ed-03bc-4891-97a3-75893fff156f	Design blog post	Design blog post and document.	t	1751798253069
3	6d63cab2-af37-4a6c-b6a4-a46ade5a79c3	Review email template	Review email template for project X.	f	1781177271577
3	af475dfa-7b58-4d2c-ae97-2a1282c57ad3	Review unit tests	Review unit tests in draft.	f	1778250666506
3	f09055a5-ccc9-4354-bc54-1abd45ff756c	Design database schema	Design database schema using TS.	t	1763123213960
3	13c257c0-02a0-446a-822b-580af1eedec9	Complete login flow	Complete login flow and document.	t	1750333376955
3	6bf50af7-f593-41b0-8f66-8c4b1681bf6a	Design Dockerfile	Design Dockerfile and document.	f	1760061628105
3	d19a5b97-399d-4226-831a-786d98a92a63	Fix unit tests	Fix unit tests for project X.	t	1762256231010
3	c1e3d07a-d436-4bc8-80ce-b25203b0daa0	Deploy unit tests	Deploy unit tests before EOD.	f	1761796924949
3	1236f4e6-b719-4f5a-9fd0-9a2916521026	Deploy Dockerfile	Deploy Dockerfile and document.	t	1773423998257
3	b73d0ff3-e69a-4b53-8cee-4131d8d786d6	Deploy unit tests	Deploy unit tests before EOD.	t	1779225634500
3	bac87e3e-f038-400e-aef5-b2bcbd9360d0	Plan Dockerfile	Plan Dockerfile with team.	f	1772619929791
3	cd5aae38-dfa5-4483-ba55-6dd767cb7173	Complete blog post	Complete blog post for project X.	t	1756048149702
3	56ca6c10-fd0c-41da-8596-ac68d4ac3819	Test email template	Test email template and document.	f	1756689294563
3	fbaba1d9-356e-40a5-abbd-ea12a827064d	Fix unit tests	Fix unit tests with comments.	t	1760008111300
3	82b01b71-99ee-42f5-90ac-02743074277a	Complete UI mockup	Complete UI mockup and document.	t	1753011364235
3	4986b890-5d5e-43a7-b50e-807e0490b899	Complete API	Complete API for project X.	t	1772102835157
3	2e55c530-7b19-44c7-959c-53e278afe529	Deploy UI mockup	Deploy UI mockup with comments.	f	1778302693683
3	e90c1322-b1bd-4cbc-aa28-43042b2dec82	Deploy email template	Deploy email template before EOD.	t	1774059193798
3	3f99e6f3-cc26-48fa-b4ea-7339ea402e1d	Complete Dockerfile	Complete Dockerfile before EOD.	t	1764902455965
3	44af557e-173d-4a8e-a2fd-78cff013b308	Test email template	Test email template before EOD.	f	1770633693316
3	801877e6-0ef7-4e6d-b27d-df5fb8a8aa89	Deploy login flow	Deploy login flow with team.	t	1761176508608
3	17fa6424-9647-49ad-af5d-41c8194de360	Test blog post	Test blog post using TS.	f	1768988397693
3	22bfa919-e309-41cd-8dbd-0b9445c7239f	Design login flow	Design login flow with comments.	f	1778170504311
3	309f3ebf-95a1-4d9e-bd07-0aa72de4429c	Review API	Review API in draft.	t	1762294628360
3	826ced06-105e-4f99-9bab-947d4333cd72	Complete unit tests	Complete unit tests before EOD.	t	1761553851036
3	484f4d54-503a-4059-9f5f-0ebcf67fcd73	Complete login flow	Complete login flow with team.	t	1770898123107
3	87ae8475-3b67-45df-9ba6-7f7526ce9047	Fix email template	Fix email template for project X.	f	1758321575014
3	83623e55-0819-4aff-a866-b8986ecb39d0	Plan API	Plan API with team.	f	1776879373182
3	dc9344d4-77cc-4868-98bc-a10eb9f03420	Test Dockerfile	Test Dockerfile and document.	t	1768155056888
3	d3a35882-fb68-486d-803b-a78285570e8e	Complete Dockerfile	Complete Dockerfile in draft.	t	1752890763140
3	2613cd00-1135-4e5a-b5fb-49145f2c328b	Design database schema	Design database schema before EOD.	f	1759410470722
3	a8082102-7fae-4810-b2e8-acfbad09e9fa	Design API	Design API before EOD.	t	1761567772937
3	1de94776-ce52-424e-a96d-ab6d6922010a	Deploy UI mockup	Deploy UI mockup for project X.	t	1759848030408
3	ec63181b-a6ab-4001-82c8-ee42bd395096	Write blog post	Write blog post and document.	f	1767136092681
3	b9a1a1fc-18ce-4919-b839-6a761c67c58a	Design blog post	Design blog post for project X.	t	1771064680433
3	83fe3cd8-b25e-4330-bb5d-439e2354e78d	Test database schema	Test database schema and document.	f	1768311269508
3	2de62ef6-333e-4765-825a-76870cf49f6d	Write API	Write API with team.	f	1753423093041
3	a8abf39c-9952-4e95-9309-70e7bf5e4449	Review unit tests	Review unit tests with team.	f	1750692324752
3	449ed205-892e-490c-8b49-c9a9ae9e89e2	Complete database schema	Complete database schema and document.	f	1772263761502
3	6f66dabb-739e-4f87-8e71-19c3af2e5725	Plan API	Plan API using TS.	f	1773259840242
3	e85e6aaa-3918-4fcd-acad-34cab1633188	Deploy unit tests	Deploy unit tests for project X.	t	1756214447385
3	c84ca735-5634-4e94-8a8a-2896c49e3077	Write blog post	Write blog post with team.	t	1760599177829
3	22ef4183-f2ea-4a04-b871-825777ae9682	Deploy database schema	Deploy database schema using TS.	t	1754423283893
3	b06f9eee-1d3e-49a2-bf35-e596de34af7a	Fix blog post	Fix blog post before EOD.	t	1761317401293
3	486bc2e4-9055-466f-94e4-0f14dda9cf1c	Design database schema	Design database schema and document.	t	1768486066134
3	c57c2b79-46a8-429f-9fe8-0f7f0fe927e3	Review Dockerfile	Review Dockerfile with comments.	t	1752292969161
3	3dd98d0b-ab0f-47f1-980d-92ecd7aec405	Review unit tests	Review unit tests with team.	t	1770752300834
3	270efd02-11bf-44a3-8b2b-f1c0c6796d30	Fix database schema	Fix database schema for project X.	f	1772314283518
3	f3ae0c6f-5564-4c20-b03a-6e8de1be68be	Test Dockerfile	Test Dockerfile for project X.	t	1780175043620
3	58aa994d-97ff-451a-b75f-21395a564867	Design API	Design API with team.	t	1777483036060
3	431520b5-3034-47b2-8dfa-237abdf42807	Deploy UI mockup	Deploy UI mockup for project X.	t	1763947615657
3	d23e86c0-126b-42c2-b9fb-a4aee9c7235f	Test API	Test API in draft.	t	1752243632891
3	ffc1bc9d-6ae0-4ff5-aaf6-09e765403b79	Review login flow	Review login flow with team.	f	1751005727764
3	fc0705d8-efc8-434d-b737-47cb62a15577	Deploy UI mockup	Deploy UI mockup for project X.	t	1763280020441
3	546abd1b-1e9b-44ea-bde2-fab9d23a2466	Plan Dockerfile	Plan Dockerfile with comments.	t	1764736225948
3	c418826b-9843-450b-b166-fc10fe9a5647	Fix blog post	Fix blog post before EOD.	t	1753552380978
3	aa88315d-fa63-44c4-9218-ab9e2c7f0cfc	Design blog post	Design blog post using TS.	t	1750473266916
3	ec991dbe-375e-435a-bd7f-1b5e23176d32	Plan unit tests	Plan unit tests before EOD.	t	1763609261248
3	3dc8c08f-8503-4d7d-84fe-5cc12076855c	Write database schema	Write database schema and document.	t	1781057591310
3	3d8ef164-7955-413e-8e7d-f9ab03a214bb	Test Dockerfile	Test Dockerfile before EOD.	f	1769456857921
3	84bcadfe-3548-456e-b959-dac302250d09	Write blog post	Write blog post with comments.	f	1774135238442
3	928260da-9121-45ca-931d-e4175ac31014	Write API	Write API using TS.	f	1774638451923
3	3b6ccf35-6d0b-499f-8d0a-7f0ead1e2ea3	Fix database schema	Fix database schema with team.	f	1751916190743
3	0084b696-aab2-49c7-859b-940398f9fa27	Deploy unit tests	Deploy unit tests for project X.	t	1779684310080
3	fe8b1ddd-66aa-4cf2-9842-952bd6d9ab26	Fix database schema	Fix database schema with team.	f	1778458636181
3	b97aabda-730b-4a56-8d11-535511679ceb	Plan API	Plan API using TS.	t	1753213745072
3	084b558e-f3d1-47cc-b55d-f37c597ac766	Plan UI mockup	Plan UI mockup in draft.	t	1755759394755
3	824b8b49-8f09-476c-97ae-4b9afadd9a4f	Complete database schema	Complete database schema before EOD.	t	1770256412661
3	87b7f0fc-6e07-4ba2-aead-0f5911e321fc	Complete blog post	Complete blog post in draft.	t	1773533978602
3	241858e4-c516-4965-b5b9-b97c2137c09b	Design unit tests	Design unit tests with team.	t	1777642329626
3	fc805f4e-403a-4c15-83ec-ef952e7a6ae4	Review Dockerfile	Review Dockerfile with team.	t	1761307673359
3	fe880ce7-43d5-42af-9e0d-14a9b01142dc	Design unit tests	Design unit tests with comments.	t	1774961187402
3	5324d009-a508-4a8a-b142-023f2debe1d6	Fix email template	Fix email template before EOD.	f	1751185366634
3	31d1e243-7556-4e0c-8661-bb71a6bf1040	Test UI mockup	Test UI mockup for project X.	f	1750488928000
3	0b0560a9-3bfc-4dbe-80af-8efdd8dc5854	Design database schema	Design database schema for project X.	t	1751745039938
3	02a13652-60a7-4172-99b5-347665f46faf	Write UI mockup	Write UI mockup in draft.	f	1751138595383
3	efd92c50-ce4b-496b-97a8-2d2a8a904c2f	Write blog post	Write blog post using TS.	f	1761690183986
3	2870f036-cbc6-421c-a403-cd1c89600360	Complete login flow	Complete login flow with comments.	t	1771164841793
3	0f9dfc0c-43b0-41d2-8fc2-2991e4473245	Complete blog post	Complete blog post with team.	t	1761485467169
3	cdcf747d-57dd-46e9-9f6c-43be41589b0c	Plan unit tests	Plan unit tests with team.	t	1767234902419
3	868408ed-e623-4d34-911c-286ac5bc9c26	Fix blog post	Fix blog post for project X.	f	1764198378824
3	8697314d-494f-48da-93df-ea419e8cfd3e	Design blog post	Design blog post with comments.	t	1765303935597
3	566738cc-65c5-4355-b1bb-48afeb114c1a	Complete login flow	Complete login flow and document.	f	1761932013827
3	6dd81058-6acb-451e-ae2e-81c7e2bee437	Test API	Test API and document.	f	1776902435419
3	bf4afa6d-857c-482a-afa9-b5fd2c81ce70	Complete login flow	Complete login flow in draft.	f	1758358337205
3	3422e6a7-a5c0-4e5d-902e-40275d51ad94	Write email template	Write email template using TS.	f	1756416081298
3	1f3f07f4-6b0f-4c9f-b5f0-eb81f46a7edd	Fix login flow	Fix login flow with comments.	t	1765240754451
3	d1b4c16d-853d-4207-a482-92ca73a61772	Fix email template	Fix email template with comments.	t	1761074928138
3	39b4b3b6-a3a2-4724-9ca6-8f3b7cb7ae03	Deploy database schema	Deploy database schema with team.	f	1778757965239
3	546cf86e-2f29-43ce-bf4c-9e781adc9fe8	Review Dockerfile	Review Dockerfile in draft.	t	1752437708412
3	c8266df7-31b9-4550-916b-9e07d1c5e25b	Test email template	Test email template for project X.	t	1768267799733
3	95b15880-cd35-40c3-9c36-8056bb1ee9f1	Deploy API	Deploy API using TS.	t	1759143419267
3	b2501a84-b138-4c84-ba88-b0ec8606b047	Write blog post	Write blog post with team.	f	1755892151395
3	f4b59ca7-53bf-4476-ba94-3465a4145b76	Review email template	Review email template before EOD.	t	1764503251582
3	a45316d2-47b2-4383-bf42-a7d3a66cf1ad	Test login flow	Test login flow and document.	t	1770277741788
3	cb47f67e-eb5b-400b-8b1a-123557b448b3	Plan database schema	Plan database schema with comments.	t	1772950949006
3	1cd9476b-69e1-4786-979a-1ea528d520e8	Test UI mockup	Test UI mockup in draft.	f	1780527955721
3	d434fffa-9749-47d3-8a2f-930ba1b772cd	Complete database schema	Complete database schema with comments.	t	1753593039950
3	a64b59d1-4d05-4f41-a4b0-9cef88471832	Review API	Review API with team.	f	1763697007781
3	9fa3edb1-500e-49b3-be9d-25045b2be32a	Design unit tests	Design unit tests for project X.	f	1773027866180
3	0672340c-e1f2-4976-8eb8-4f49a8c417a6	Test unit tests	Test unit tests with team.	f	1764137179830
3	4258cd90-56b3-4a1a-a7a4-d7a78fb73069	Complete blog post	Complete blog post in draft.	f	1767835151259
3	8ee8dbd5-a524-49e2-a1dd-45e61fdcd1a0	Design login flow	Design login flow before EOD.	t	1772291340469
3	0872b09f-9e00-462c-8c84-36e9b5a935af	Design UI mockup	Design UI mockup with team.	t	1762396991605
3	f62e7c0b-145f-40da-8df6-0db985b72c61	Deploy Dockerfile	Deploy Dockerfile for project X.	f	1764961851507
3	c6f385fe-15cd-40a7-8284-ac85bb33b1f9	Deploy login flow	Deploy login flow and document.	t	1750318217546
3	5140b6fb-3a09-4194-ba53-dac635880812	Write UI mockup	Write UI mockup with comments.	t	1781621523370
3	6ee7adbb-8545-4328-9efd-bfbb47e77f18	Deploy login flow	Deploy login flow for project X.	t	1752137952913
3	91893c1d-a1a1-4d76-ab46-606787af0c19	Plan unit tests	Plan unit tests with team.	f	1768494367310
3	aa1afe54-4ddf-47eb-8c04-63f7a7a6760e	Deploy email template	Deploy email template in draft.	t	1768747016806
3	075bc9f8-bfd7-4ab4-91f6-d68e5775cdc2	Write API	Write API using TS.	t	1761016312995
3	51515b0a-d3ca-43cf-9e61-0c22dfb5ff5a	Write UI mockup	Write UI mockup with comments.	t	1768531410491
3	391751f0-45fc-40c0-ae72-19d00ce83ea5	Complete blog post	Complete blog post with comments.	f	1770786248812
3	68a7eaa5-74d9-4003-a350-bad83c6f8e5f	Review Dockerfile	Review Dockerfile for project X.	f	1750831934903
3	f251b3ee-b003-471c-8449-bc3a4e8d1a15	Complete blog post	Complete blog post before EOD.	f	1775964230603
3	d9c25c61-fe1c-4b50-9c14-3d6bd4a7f67d	Complete email template	Complete email template with comments.	t	1757483700309
3	e352336d-2265-4f49-84ff-f93c12c449d8	Review database schema	Review database schema with comments.	f	1753709343898
3	f07ba75a-3a5c-439f-8f4e-fb61f32afe5d	Plan Dockerfile	Plan Dockerfile using TS.	f	1766642265273
3	19be0a18-109a-435c-b487-3e276661a262	Fix database schema	Fix database schema and document.	t	1758819485737
3	12ed3ccf-9998-4296-84d8-f9ada0191460	Deploy UI mockup	Deploy UI mockup before EOD.	f	1756063891365
3	4cf3958b-c0ba-467f-a492-2beffd677e0d	Design Dockerfile	Design Dockerfile before EOD.	f	1764213211819
3	4638a32d-73bb-4422-8035-804cca2c56ba	Review database schema	Review database schema with comments.	t	1754824538844
3	47b867fd-a798-49b6-9cf4-15e8a8329b1e	Fix unit tests	Fix unit tests in draft.	t	1767980058813
3	29357d56-60e2-4a7d-9acc-bd48330f9568	Review email template	Review email template with team.	f	1767538369624
3	cff31145-acf6-4f55-951f-4fa89bc6016a	Design UI mockup	Design UI mockup for project X.	f	1759171950320
3	42a7ba5b-a097-4a19-8f9d-5d9432b2f67e	Deploy email template	Deploy email template in draft.	f	1771891279222
3	fa9cd014-f7b5-47ca-bb74-b1bf71931a59	Deploy unit tests	Deploy unit tests in draft.	f	1780865131544
3	62c166b2-5396-4779-a5a5-1babe653f1d3	Plan database schema	Plan database schema for project X.	f	1767836525811
3	e96a524d-c976-453e-87b9-b93026127bff	Plan blog post	Plan blog post before EOD.	f	1779469424325
3	8862bcf3-6343-42d3-9269-bf4e9ded6132	Test unit tests	Test unit tests for project X.	f	1761014829784
3	ea05e085-6166-4e77-8da1-d79c33635749	Write email template	Write email template with team.	t	1766455290625
3	906bfac7-fd76-4246-8322-d7aaa250bb39	Fix email template	Fix email template with team.	t	1780816267023
3	68a1cdb6-124b-4a74-957d-7056a5d4ab69	Complete email template	Complete email template with comments.	f	1774056914731
3	e8d69d66-527f-4233-bfff-3d715236777f	Complete database schema	Complete database schema with comments.	f	1754731234708
3	70473a44-6e55-46d7-860b-431aec523ce1	Design UI mockup	Design UI mockup using TS.	t	1779913491558
3	cf7f2a16-ab7f-4879-87bc-0249b1a4a1eb	Plan login flow	Plan login flow using TS.	t	1759590741232
3	bcb0ec63-dfeb-45de-bfea-b7ae83ea36d8	Fix blog post	Fix blog post in draft.	t	1774102965045
3	28f9b167-cedf-42e1-9db5-442ec1cf6519	Deploy blog post	Deploy blog post for project X.	t	1757815052629
3	b573a508-12db-4f1e-a57d-7e3e08c3d0ff	Write unit tests	Write unit tests and document.	t	1752448027171
3	bbaced3b-3861-4d2f-af2a-230c91a93ae0	Deploy Dockerfile	Deploy Dockerfile using TS.	t	1755891664981
3	c610b9cc-e7a1-463c-a4c3-ece0cd1e4314	Test login flow	Test login flow in draft.	f	1776629137881
3	57aef96a-6665-45e4-aea4-a718cd8d6b9a	Complete unit tests	Complete unit tests with team.	f	1770975906867
3	f22440b4-5050-4ecd-83ce-1aa7fe420c18	Design email template	Design email template with comments.	f	1753041364236
3	38b9d403-7444-4a12-9fb9-67bc7f1ea01b	Fix database schema	Fix database schema for project X.	t	1763351106150
3	7e742191-6c58-457a-9218-c29e37b2e7f1	Complete API	Complete API before EOD.	f	1771866565001
3	b3ffcd41-2d72-4549-9cbf-387b6e4f7373	Test email template	Test email template with team.	f	1772240504947
3	15fadbc0-b9c7-47c5-8ccf-376a4c7d9c78	Review API	Review API and document.	f	1778272216773
3	5e32072c-d474-4043-b375-01db63ec65de	Complete login flow	Complete login flow before EOD.	f	1770016991518
3	50bcc0e1-6c00-4ad2-bf8a-b274a11b7f07	Write email template	Write email template with team.	f	1755378308196
3	e0245f49-16dc-4e0d-8460-1afbe8e339a4	Write Dockerfile	Write Dockerfile in draft.	t	1781275639274
3	a9cab1e5-5450-4003-8bc4-c0b200787ac3	Fix UI mockup	Fix UI mockup before EOD.	t	1768889847678
3	af7c1ff7-441f-47e3-b960-63159a8c9c80	Test Dockerfile	Test Dockerfile with team.	t	1751869033497
3	0905f251-2aad-4f8a-938f-e55c2f522b54	Plan database schema	Plan database schema with team.	t	1778532793729
3	ab7d9c6d-d6d6-4eda-86af-b615b97e9ccb	Review email template	Review email template for project X.	t	1751013995159
3	54fa6303-70a7-4461-9bea-5041260c2b87	Deploy API	Deploy API using TS.	t	1754340992621
3	8bfcc075-d0b9-4f72-b4cd-73b50a1d1b46	Deploy unit tests	Deploy unit tests with comments.	t	1776583335592
3	6354e072-58dd-4811-93c3-1281ae145f40	Fix blog post	Fix blog post for project X.	t	1750374261907
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, email, password, created_at) FROM stdin;
1	newAbc	abc@gmail.com	123456	2025-06-05 10:03:14.161475
2	Harkirat	newHari@gmail.com	1234567	2025-06-05 10:03:14.494483
3	dummy123	dummy@gmail.com	newdummy	2025-06-05 10:03:14.751372
4	abcdef	abcd@gmail.com	1234567	2025-06-11 08:36:34.910614
9	pilla	pilla@gmail.com	123456	2025-06-11 11:35:13.657402
10	lol	lol@gmail.com	lol123	2025-06-11 12:26:48.223351
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (user_id, id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: todo todo_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

