PGDMP  *    9            	    |         	   VendasAPI    17.0    17.0 G    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            D           1262    16396 	   VendasAPI    DATABASE     �   CREATE DATABASE "VendasAPI" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "VendasAPI";
                     postgres    false                        2615    16397    comercialize    SCHEMA        CREATE SCHEMA comercialize;
    DROP SCHEMA comercialize;
                     postgres    false            �            1259    16536    cliente    TABLE     4  CREATE TABLE comercialize.cliente (
    "idCliente" integer NOT NULL,
    nome character varying(60) NOT NULL,
    cpf character varying(15) NOT NULL,
    email character varying(100) NOT NULL,
    telefone character varying(20) NOT NULL,
    sexo character(1) NOT NULL,
    "idEndereco" integer NOT NULL
);
 !   DROP TABLE comercialize.cliente;
       comercialize         heap r       postgres    false    6            �            1259    16535    cliente_idCliente_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."cliente_idCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE comercialize."cliente_idCliente_seq";
       comercialize               postgres    false    222    6            E           0    0    cliente_idCliente_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE comercialize."cliente_idCliente_seq" OWNED BY comercialize.cliente."idCliente";
          comercialize               postgres    false    221            �            1259    16529    endereco    TABLE     �  CREATE TABLE comercialize.endereco (
    "idEndereco" integer NOT NULL,
    pais character varying(60) NOT NULL,
    estado character varying(60) NOT NULL,
    cidade character varying(60) NOT NULL,
    cep character varying(10) NOT NULL,
    bairro character varying(60) NOT NULL,
    rua character varying(60) NOT NULL,
    numero bigint NOT NULL,
    complemento character varying(60)
);
 "   DROP TABLE comercialize.endereco;
       comercialize         heap r       postgres    false    6            �            1259    16528    endereco_idEndereco_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."endereco_idEndereco_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE comercialize."endereco_idEndereco_seq";
       comercialize               postgres    false    220    6            F           0    0    endereco_idEndereco_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE comercialize."endereco_idEndereco_seq" OWNED BY comercialize.endereco."idEndereco";
          comercialize               postgres    false    219            �            1259    16503    endereco_idendereco_seq    SEQUENCE     �   CREATE SEQUENCE comercialize.endereco_idendereco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE comercialize.endereco_idendereco_seq;
       comercialize               postgres    false    6            �            1259    16548    estoque    TABLE     �   CREATE TABLE comercialize.estoque (
    "idEstoque" integer NOT NULL,
    nome character varying(60) NOT NULL,
    capacidade bigint NOT NULL
);
 !   DROP TABLE comercialize.estoque;
       comercialize         heap r       postgres    false    6            �            1259    16547    estoque_idEstoque_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."estoque_idEstoque_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE comercialize."estoque_idEstoque_seq";
       comercialize               postgres    false    6    224            G           0    0    estoque_idEstoque_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE comercialize."estoque_idEstoque_seq" OWNED BY comercialize.estoque."idEstoque";
          comercialize               postgres    false    223            �            1259    16562    estoque_produto    TABLE     �   CREATE TABLE comercialize.estoque_produto (
    "idEstoque_Produto" integer NOT NULL,
    "idProduto" integer NOT NULL,
    "idEstoque" integer NOT NULL,
    quantidade bigint NOT NULL,
    data_atualizacao timestamp without time zone NOT NULL
);
 )   DROP TABLE comercialize.estoque_produto;
       comercialize         heap r       postgres    false    6            �            1259    16561 %   estoque_produto_idEstoque_Produto_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."estoque_produto_idEstoque_Produto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE comercialize."estoque_produto_idEstoque_Produto_seq";
       comercialize               postgres    false    228    6            H           0    0 %   estoque_produto_idEstoque_Produto_seq    SEQUENCE OWNED BY        ALTER SEQUENCE comercialize."estoque_produto_idEstoque_Produto_seq" OWNED BY comercialize.estoque_produto."idEstoque_Produto";
          comercialize               postgres    false    227            �            1259    16605    itensVendidos    TABLE     �   CREATE TABLE comercialize."itensVendidos" (
    "idItensVendidos" integer NOT NULL,
    "idVenda" integer NOT NULL,
    "idProduto" integer NOT NULL,
    "qtdVendida" bigint NOT NULL
);
 )   DROP TABLE comercialize."itensVendidos";
       comercialize         heap r       postgres    false    6            �            1259    16604 !   itensVendidos_idItensVendidos_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."itensVendidos_idItensVendidos_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE comercialize."itensVendidos_idItensVendidos_seq";
       comercialize               postgres    false    234    6            I           0    0 !   itensVendidos_idItensVendidos_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE comercialize."itensVendidos_idItensVendidos_seq" OWNED BY comercialize."itensVendidos"."idItensVendidos";
          comercialize               postgres    false    233            �            1259    16555    produto    TABLE     �   CREATE TABLE comercialize.produto (
    "idProduto" integer NOT NULL,
    nome character varying(60) NOT NULL,
    descricao character varying(150),
    valor numeric(10,2) NOT NULL
);
 !   DROP TABLE comercialize.produto;
       comercialize         heap r       postgres    false    6            �            1259    16554    produto_idProduto_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."produto_idProduto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE comercialize."produto_idProduto_seq";
       comercialize               postgres    false    6    226            J           0    0    produto_idProduto_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE comercialize."produto_idProduto_seq" OWNED BY comercialize.produto."idProduto";
          comercialize               postgres    false    225            �            1259    16579    usuario    TABLE     �   CREATE TABLE comercialize.usuario (
    "idUsuario" integer NOT NULL,
    "nomeUsuario" character varying(60) NOT NULL,
    senha character varying(100) NOT NULL,
    "ehAdm" smallint NOT NULL,
    login character varying(60) NOT NULL
);
 !   DROP TABLE comercialize.usuario;
       comercialize         heap r       postgres    false    6            �            1259    16578    usuario_idUsuario_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."usuario_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE comercialize."usuario_idUsuario_seq";
       comercialize               postgres    false    230    6            K           0    0    usuario_idUsuario_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE comercialize."usuario_idUsuario_seq" OWNED BY comercialize.usuario."idUsuario";
          comercialize               postgres    false    229            �            1259    16588    venda    TABLE       CREATE TABLE comercialize.venda (
    "idVenda" integer NOT NULL,
    "idCliente" integer NOT NULL,
    "idUsuario" integer NOT NULL,
    data_venda timestamp without time zone NOT NULL,
    valor numeric(10,2) NOT NULL,
    forma_pagamento character varying(20) NOT NULL
);
    DROP TABLE comercialize.venda;
       comercialize         heap r       postgres    false    6            �            1259    16587    venda_idVenda_seq    SEQUENCE     �   CREATE SEQUENCE comercialize."venda_idVenda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE comercialize."venda_idVenda_seq";
       comercialize               postgres    false    6    232            L           0    0    venda_idVenda_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE comercialize."venda_idVenda_seq" OWNED BY comercialize.venda."idVenda";
          comercialize               postgres    false    231            }           2604    16539    cliente idCliente    DEFAULT     �   ALTER TABLE ONLY comercialize.cliente ALTER COLUMN "idCliente" SET DEFAULT nextval('comercialize."cliente_idCliente_seq"'::regclass);
 H   ALTER TABLE comercialize.cliente ALTER COLUMN "idCliente" DROP DEFAULT;
       comercialize               postgres    false    221    222    222            |           2604    16532    endereco idEndereco    DEFAULT     �   ALTER TABLE ONLY comercialize.endereco ALTER COLUMN "idEndereco" SET DEFAULT nextval('comercialize."endereco_idEndereco_seq"'::regclass);
 J   ALTER TABLE comercialize.endereco ALTER COLUMN "idEndereco" DROP DEFAULT;
       comercialize               postgres    false    219    220    220            ~           2604    16551    estoque idEstoque    DEFAULT     �   ALTER TABLE ONLY comercialize.estoque ALTER COLUMN "idEstoque" SET DEFAULT nextval('comercialize."estoque_idEstoque_seq"'::regclass);
 H   ALTER TABLE comercialize.estoque ALTER COLUMN "idEstoque" DROP DEFAULT;
       comercialize               postgres    false    223    224    224            �           2604    16565 !   estoque_produto idEstoque_Produto    DEFAULT     �   ALTER TABLE ONLY comercialize.estoque_produto ALTER COLUMN "idEstoque_Produto" SET DEFAULT nextval('comercialize."estoque_produto_idEstoque_Produto_seq"'::regclass);
 X   ALTER TABLE comercialize.estoque_produto ALTER COLUMN "idEstoque_Produto" DROP DEFAULT;
       comercialize               postgres    false    227    228    228            �           2604    16608    itensVendidos idItensVendidos    DEFAULT     �   ALTER TABLE ONLY comercialize."itensVendidos" ALTER COLUMN "idItensVendidos" SET DEFAULT nextval('comercialize."itensVendidos_idItensVendidos_seq"'::regclass);
 V   ALTER TABLE comercialize."itensVendidos" ALTER COLUMN "idItensVendidos" DROP DEFAULT;
       comercialize               postgres    false    233    234    234                       2604    16558    produto idProduto    DEFAULT     �   ALTER TABLE ONLY comercialize.produto ALTER COLUMN "idProduto" SET DEFAULT nextval('comercialize."produto_idProduto_seq"'::regclass);
 H   ALTER TABLE comercialize.produto ALTER COLUMN "idProduto" DROP DEFAULT;
       comercialize               postgres    false    225    226    226            �           2604    16582    usuario idUsuario    DEFAULT     �   ALTER TABLE ONLY comercialize.usuario ALTER COLUMN "idUsuario" SET DEFAULT nextval('comercialize."usuario_idUsuario_seq"'::regclass);
 H   ALTER TABLE comercialize.usuario ALTER COLUMN "idUsuario" DROP DEFAULT;
       comercialize               postgres    false    229    230    230            �           2604    16591    venda idVenda    DEFAULT     ~   ALTER TABLE ONLY comercialize.venda ALTER COLUMN "idVenda" SET DEFAULT nextval('comercialize."venda_idVenda_seq"'::regclass);
 D   ALTER TABLE comercialize.venda ALTER COLUMN "idVenda" DROP DEFAULT;
       comercialize               postgres    false    231    232    232            2          0    16536    cliente 
   TABLE DATA           d   COPY comercialize.cliente ("idCliente", nome, cpf, email, telefone, sexo, "idEndereco") FROM stdin;
    comercialize               postgres    false    222   N[       0          0    16529    endereco 
   TABLE DATA           s   COPY comercialize.endereco ("idEndereco", pais, estado, cidade, cep, bairro, rua, numero, complemento) FROM stdin;
    comercialize               postgres    false    220   �]       4          0    16548    estoque 
   TABLE DATA           F   COPY comercialize.estoque ("idEstoque", nome, capacidade) FROM stdin;
    comercialize               postgres    false    224   qa       8          0    16562    estoque_produto 
   TABLE DATA           |   COPY comercialize.estoque_produto ("idEstoque_Produto", "idProduto", "idEstoque", quantidade, data_atualizacao) FROM stdin;
    comercialize               postgres    false    228   �a       >          0    16605    itensVendidos 
   TABLE DATA           h   COPY comercialize."itensVendidos" ("idItensVendidos", "idVenda", "idProduto", "qtdVendida") FROM stdin;
    comercialize               postgres    false    234   !b       6          0    16555    produto 
   TABLE DATA           L   COPY comercialize.produto ("idProduto", nome, descricao, valor) FROM stdin;
    comercialize               postgres    false    226   jb       :          0    16579    usuario 
   TABLE DATA           Z   COPY comercialize.usuario ("idUsuario", "nomeUsuario", senha, "ehAdm", login) FROM stdin;
    comercialize               postgres    false    230   �e       <          0    16588    venda 
   TABLE DATA           n   COPY comercialize.venda ("idVenda", "idCliente", "idUsuario", data_venda, valor, forma_pagamento) FROM stdin;
    comercialize               postgres    false    232   kf       M           0    0    cliente_idCliente_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('comercialize."cliente_idCliente_seq"', 22, true);
          comercialize               postgres    false    221            N           0    0    endereco_idEndereco_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('comercialize."endereco_idEndereco_seq"', 21, true);
          comercialize               postgres    false    219            O           0    0    endereco_idendereco_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('comercialize.endereco_idendereco_seq', 10, true);
          comercialize               postgres    false    218            P           0    0    estoque_idEstoque_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('comercialize."estoque_idEstoque_seq"', 5, true);
          comercialize               postgres    false    223            Q           0    0 %   estoque_produto_idEstoque_Produto_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('comercialize."estoque_produto_idEstoque_Produto_seq"', 5, true);
          comercialize               postgres    false    227            R           0    0 !   itensVendidos_idItensVendidos_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('comercialize."itensVendidos_idItensVendidos_seq"', 13, true);
          comercialize               postgres    false    233            S           0    0    produto_idProduto_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('comercialize."produto_idProduto_seq"', 20, true);
          comercialize               postgres    false    225            T           0    0    usuario_idUsuario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('comercialize."usuario_idUsuario_seq"', 5, true);
          comercialize               postgres    false    229            U           0    0    venda_idVenda_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('comercialize."venda_idVenda_seq"', 46, true);
          comercialize               postgres    false    231            �           2606    16541    cliente cliente_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY comercialize.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY ("idCliente");
 D   ALTER TABLE ONLY comercialize.cliente DROP CONSTRAINT cliente_pkey;
       comercialize                 postgres    false    222            �           2606    16534    endereco endereco_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY comercialize.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY ("idEndereco");
 F   ALTER TABLE ONLY comercialize.endereco DROP CONSTRAINT endereco_pkey;
       comercialize                 postgres    false    220            �           2606    16553    estoque estoque_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY comercialize.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY ("idEstoque");
 D   ALTER TABLE ONLY comercialize.estoque DROP CONSTRAINT estoque_pkey;
       comercialize                 postgres    false    224            �           2606    16567 $   estoque_produto estoque_produto_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT estoque_produto_pkey PRIMARY KEY ("idEstoque_Produto");
 T   ALTER TABLE ONLY comercialize.estoque_produto DROP CONSTRAINT estoque_produto_pkey;
       comercialize                 postgres    false    228            �           2606    16610     itensVendidos itensVendidos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "itensVendidos_pkey" PRIMARY KEY ("idItensVendidos");
 T   ALTER TABLE ONLY comercialize."itensVendidos" DROP CONSTRAINT "itensVendidos_pkey";
       comercialize                 postgres    false    234            �           2606    16560    produto produto_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY comercialize.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY ("idProduto");
 D   ALTER TABLE ONLY comercialize.produto DROP CONSTRAINT produto_pkey;
       comercialize                 postgres    false    226            �           2606    16586    usuario usuario_login_key 
   CONSTRAINT     [   ALTER TABLE ONLY comercialize.usuario
    ADD CONSTRAINT usuario_login_key UNIQUE (login);
 I   ALTER TABLE ONLY comercialize.usuario DROP CONSTRAINT usuario_login_key;
       comercialize                 postgres    false    230            �           2606    16584    usuario usuario_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY comercialize.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY ("idUsuario");
 D   ALTER TABLE ONLY comercialize.usuario DROP CONSTRAINT usuario_pkey;
       comercialize                 postgres    false    230            �           2606    16593    venda venda_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY ("idVenda");
 @   ALTER TABLE ONLY comercialize.venda DROP CONSTRAINT venda_pkey;
       comercialize                 postgres    false    232            �           2606    16594    venda FK_Cliente    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT "FK_Cliente" FOREIGN KEY ("idCliente") REFERENCES comercialize.cliente("idCliente");
 B   ALTER TABLE ONLY comercialize.venda DROP CONSTRAINT "FK_Cliente";
       comercialize               postgres    false    222    4743    232            �           2606    16542    cliente FK_ENDERECO    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize.cliente
    ADD CONSTRAINT "FK_ENDERECO" FOREIGN KEY ("idEndereco") REFERENCES comercialize.endereco("idEndereco");
 E   ALTER TABLE ONLY comercialize.cliente DROP CONSTRAINT "FK_ENDERECO";
       comercialize               postgres    false    220    222    4741            �           2606    16568    estoque_produto FK_ESTOQUE    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT "FK_ESTOQUE" FOREIGN KEY ("idEstoque") REFERENCES comercialize.estoque("idEstoque");
 L   ALTER TABLE ONLY comercialize.estoque_produto DROP CONSTRAINT "FK_ESTOQUE";
       comercialize               postgres    false    4745    224    228            �           2606    16573    estoque_produto FK_PRODUTO    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize.estoque_produto
    ADD CONSTRAINT "FK_PRODUTO" FOREIGN KEY ("idProduto") REFERENCES comercialize.produto("idProduto");
 L   ALTER TABLE ONLY comercialize.estoque_produto DROP CONSTRAINT "FK_PRODUTO";
       comercialize               postgres    false    226    228    4747            �           2606    16611    itensVendidos FK_PRODUTOS    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "FK_PRODUTOS" FOREIGN KEY ("idProduto") REFERENCES comercialize.produto("idProduto");
 M   ALTER TABLE ONLY comercialize."itensVendidos" DROP CONSTRAINT "FK_PRODUTOS";
       comercialize               postgres    false    4747    234    226            �           2606    16599    venda FK_USUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize.venda
    ADD CONSTRAINT "FK_USUARIO" FOREIGN KEY ("idUsuario") REFERENCES comercialize.usuario("idUsuario");
 B   ALTER TABLE ONLY comercialize.venda DROP CONSTRAINT "FK_USUARIO";
       comercialize               postgres    false    232    4753    230            �           2606    16616    itensVendidos FK_VENDAS    FK CONSTRAINT     �   ALTER TABLE ONLY comercialize."itensVendidos"
    ADD CONSTRAINT "FK_VENDAS" FOREIGN KEY ("idVenda") REFERENCES comercialize.venda("idVenda");
 K   ALTER TABLE ONLY comercialize."itensVendidos" DROP CONSTRAINT "FK_VENDAS";
       comercialize               postgres    false    232    234    4755            2   f  x�}�Kn�0���S�x�֮i��6��솱i��)g�e�t�uFd�����>��p�S���޹뼁���*�3��ZA/�D?�{�:܌=u۴��EY�d*�K�1�{�g3L%��L��B$�� W\F��0��L%33Y���;)T	�����&L0�8|��*ÅF,-�Q�
n���/ꋮ�nk@ƒJD?#F�B%�wT��l�V���/�S�g73�q�S���#ws�zM�a*Q<	���B �g�E�Zx|vf?�q��]�J���[Hđs��\�'�lg4'grC *jL%�}��G������h���������찵���T����b?��gNwE�x��f�����1�y�b*�x���K�ƙ2E9�7&�o&lw0�@e����	�᝟5劊�8�;q�e�����}$z7�8�fgl�Ж���p���$�E�JE�I����_�	�Τ���b$#�-ó��JQ�s?v�^�^���m����8r����٦ZQ�f�	X}=�)��9��^�ٌS����ӟ���?��!/��P�)2g����ٔǜ��v�K���$��Ɇ��e�뺝�[e��H��V�@��_��G      0   �  x�]��r�F�ח���R4?�X�,+qYF�TYds%�r��n��k�&�Ŭ�rV���r	䙝(�p�9�iq�,�RA�C��kX��2�� �&�tJk[���D7�-�kv��5�c��â���l�a�`���$��?��� �F�g�^ҳвD�6���y@p�yᠶ^A&�a�+�� �ȟ��	xƺ�שX�/��Ȕ9�y�8S��4h��ђF���č�����L�R]Z�!8x��~����Kc�ޜ�2r��R�����4�{�{��aH�)ѿ�� l��t�ͷ� �F�Hu�O�(\JUs�c��ܘ���4k2��7�[�KC���OF�Hf~���rw��<d%آ�Z����6p��wlm�����X�=Y�J|���~��@�����t�Y²���ہ��?Mzɸ��� ������d:�Od;�GQ�l�,�H9�0��?�����7E)s�����Ȋ�|�\0����hza���8TV�`e$��D8��;^����Z�͸�<�?����l���F��د�K�.f�� c�Q�Ą	_��M�n�D=���ܢ�"����հ����n?	k��f<>"��a�[�����}�e�pY�h�[��{���$�qVH����c�,�:�$u)$W׻���g�krMh�d��#��#Mw�{�s?O|�������V8M����o7�A�xO{�sj�n�m��7<��(�ێm;���ҥ��5�g�`�PԵ�$z�� �'���}�I�(���ã���@�(QKښ��;L?`���kr�� ��*���]�xl%���*͊^0�����*:����\�6쎖"��1������,ı�C��V~n�zNM�~q���?��J}7> <�D�}W����p4�;drO�q��˿D�ޟ�z��?Dc��      4   <   x�3�t-.�/,MUp�440�2��8��|c8ߙ��Ԁ��w�4ʛ����F@�=... ���      8   T   x�M��	�@EѵVa|~���_G�!��<Aإ��ł.�@K�ب�&@�A��� 
�{4(��Sq0�h����37��      >   9   x�-��  ���0�^va�9�P�W�8\&�](��꾻��6�`.�����
      6   X  x�]T=o#7��_��D�Շ-��c�؈a�$��ڝ�i�����%�� ��c��� �Y���8S�keu���W�QoqR���o�uU��[>��l�u�c:��H��0��t]Mf�C��� oBOG��D���J�u�V*K'��\D�	hT�R��[�^��gB^O��L��Ә�=&�[F9��d䞾�����R;�C�Lx*��z��&q�򑟆���7`��SKzk���� �*���k��r��/��*����˯���\���P�-V��u=[��b�ު?�hb�$Ī�\�!Dn�Ƥ��lҘSCD���|C7���-�=gM�����'m+4��?Ź֦�LԽ��Cr,sBvgȆB�Ѩ>b?+nz%~�1�p�~�ځ�D�0Pd�����I���`���FG���?���#Γ��*�#�J�wDN�����Օ�`�����M���4�!zRt�S��jU`�
Z-�!�i?Pu�Zղ	9	1���z&�4I�ꎌj�2�R�U�Ѐ���<+_�
�C�'���@����Tt�d���`{*�P�84��J���ѕ6+`q�ݘ<��y����DF�����Blzu:�k���}��\�\���z4��|�헹���77B���C�S��K����~QƩ�7!�=�+����̹�=�������I��Q�K��v\����铧���w��g;���5h�ʟ&�^�F;lFy�7D�q�՘Ε4,���h�}FxȜ�P��eVu*.�Z\Q�<ba�:f�OY��o��=�vw^U�;] -�rM�Ɏ�*q}�9�i#�C���~s�Ȁ��իo�Kk��?N'���ô d      :   �   x�3�LL����T1JR14RILJNqMs��������/,
.	-���2426153��4@cqB��2���O�'�$3N�	@6�1gnbQf"����2�,HM)��i@��F �L9�(p�%�,��F�\1z\\\ ^i/      <   �  x���K��0�|���|��e�ct�)�A��)�Y�>]�s�Rqc���0 �@J�������� ��,��㗷����B2:ô@�+�����t9$�e�i����������0/���{��zW+5�k�e�[C�oV;^�El������[NdF��R{f��]�v��B~Xo�Vv�?aT7Ng��=h:w��2$��i����1m�Xj�jt��i���1&ޗs�t��!����|�T9`��rMc%�#��6�P��Os�.o���q�E��BiTU=�2�R	*߱.�HRŒ�2݈��ho$O�D͕%�m��.�ImW���t��R��]/G���r�~[�O�T���)Y�lK����>%���/̍m%���/�c}:z]_�Y!��+���L[{�9+NC�:��c�'��6�~�>�a��]�     