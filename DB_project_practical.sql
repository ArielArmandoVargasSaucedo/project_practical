PGDMP                      |            DB_project_practical    16.1    16.0 O    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    25201    DB_project_practical    DATABASE     �   CREATE DATABASE "DB_project_practical" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 &   DROP DATABASE "DB_project_practical";
                postgres    false            �            1259    25251    batch_id_batch_seq    SEQUENCE     {   CREATE SEQUENCE public.batch_id_batch_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.batch_id_batch_seq;
       public          postgres    false            �            1259    25247    batch    TABLE     �   CREATE TABLE public.batch (
    id_batch integer DEFAULT nextval('public.batch_id_batch_seq'::regclass) NOT NULL,
    id_line_type integer NOT NULL,
    id_product integer NOT NULL,
    code_batch character varying NOT NULL
);
    DROP TABLE public.batch;
       public         heap    postgres    false    216            �            1259    25252    company_id_company_seq    SEQUENCE        CREATE SEQUENCE public.company_id_company_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_id_company_seq;
       public          postgres    false            �            1259    25253    company    TABLE     �   CREATE TABLE public.company (
    id_company integer DEFAULT nextval('public.company_id_company_seq'::regclass) NOT NULL,
    name_company character varying NOT NULL
);
    DROP TABLE public.company;
       public         heap    postgres    false    217            �            1259    25259    destination_id_destination_seq    SEQUENCE     �   CREATE SEQUENCE public.destination_id_destination_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.destination_id_destination_seq;
       public          postgres    false            �            1259    25260    destination    TABLE     �   CREATE TABLE public.destination (
    id_destination integer DEFAULT nextval('public.destination_id_destination_seq'::regclass) NOT NULL,
    destination_code character varying NOT NULL,
    destination_description character varying NOT NULL
);
    DROP TABLE public.destination;
       public         heap    postgres    false    219            �            1259    25270    line_type_id_line_type_seq    SEQUENCE     �   CREATE SEQUENCE public.line_type_id_line_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.line_type_id_line_type_seq;
       public          postgres    false            �            1259    25266 	   line_type    TABLE     �   CREATE TABLE public.line_type (
    id_line_type integer DEFAULT nextval('public.line_type_id_line_type_seq'::regclass) NOT NULL,
    name_line_type character varying NOT NULL,
    code_line_type character varying NOT NULL,
    id_ueb integer NOT NULL
);
    DROP TABLE public.line_type;
       public         heap    postgres    false    222            �            1259    25280    product_id_product_seq    SEQUENCE        CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_id_product_seq;
       public          postgres    false            �            1259    25271    product    TABLE       CREATE TABLE public.product (
    id_product integer DEFAULT nextval('public.product_id_product_seq'::regclass) NOT NULL,
    id_product_family integer NOT NULL,
    id_ueb integer NOT NULL,
    name_product character varying NOT NULL,
    code_product character varying NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false    226            �            1259    25279 $   product_family_id_product_family_seq    SEQUENCE     �   CREATE SEQUENCE public.product_family_id_product_family_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.product_family_id_product_family_seq;
       public          postgres    false            �            1259    25275    product_family    TABLE     A  CREATE TABLE public.product_family (
    id_product_family integer DEFAULT nextval('public.product_family_id_product_family_seq'::regclass) NOT NULL,
    id_company integer NOT NULL,
    name_product_family character varying NOT NULL,
    presentation character varying NOT NULL,
    format character varying NOT NULL
);
 "   DROP TABLE public.product_family;
       public         heap    postgres    false    225            �            1259    25281    state_id_state_seq    SEQUENCE     {   CREATE SEQUENCE public.state_id_state_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.state_id_state_seq;
       public          postgres    false            �            1259    25282    state    TABLE     �   CREATE TABLE public.state (
    id_state integer DEFAULT nextval('public.state_id_state_seq'::regclass) NOT NULL,
    state_order integer NOT NULL,
    name_state character varying NOT NULL
);
    DROP TABLE public.state;
       public         heap    postgres    false    227            �            1259    25292    ueb_id_ueb_seq    SEQUENCE     w   CREATE SEQUENCE public.ueb_id_ueb_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ueb_id_ueb_seq;
       public          postgres    false            �            1259    25288    ueb    TABLE     �   CREATE TABLE public.ueb (
    id_ueb integer DEFAULT nextval('public.ueb_id_ueb_seq'::regclass) NOT NULL,
    id_company integer NOT NULL,
    name_ueb character varying NOT NULL
);
    DROP TABLE public.ueb;
       public         heap    postgres    false    230            �            1259    25297    unit_id_unit_seq    SEQUENCE     y   CREATE SEQUENCE public.unit_id_unit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.unit_id_unit_seq;
       public          postgres    false            �            1259    25293    unit    TABLE     �   CREATE TABLE public.unit (
    id_unit integer DEFAULT nextval('public.unit_id_unit_seq'::regclass) NOT NULL,
    amount integer NOT NULL,
    id_state integer NOT NULL,
    id_destination integer NOT NULL,
    id_batch integer NOT NULL
);
    DROP TABLE public.unit;
       public         heap    postgres    false    232                      0    25247    batch 
   TABLE DATA           O   COPY public.batch (id_batch, id_line_type, id_product, code_batch) FROM stdin;
    public          postgres    false    215   {b                 0    25253    company 
   TABLE DATA           ;   COPY public.company (id_company, name_company) FROM stdin;
    public          postgres    false    218   �b                 0    25260    destination 
   TABLE DATA           `   COPY public.destination (id_destination, destination_code, destination_description) FROM stdin;
    public          postgres    false    220   �b                 0    25266 	   line_type 
   TABLE DATA           Y   COPY public.line_type (id_line_type, name_line_type, code_line_type, id_ueb) FROM stdin;
    public          postgres    false    221   �c                 0    25271    product 
   TABLE DATA           d   COPY public.product (id_product, id_product_family, id_ueb, name_product, code_product) FROM stdin;
    public          postgres    false    223   ed                 0    25275    product_family 
   TABLE DATA           r   COPY public.product_family (id_product_family, id_company, name_product_family, presentation, format) FROM stdin;
    public          postgres    false    224   �d       "          0    25282    state 
   TABLE DATA           B   COPY public.state (id_state, state_order, name_state) FROM stdin;
    public          postgres    false    228   )g       #          0    25288    ueb 
   TABLE DATA           ;   COPY public.ueb (id_ueb, id_company, name_ueb) FROM stdin;
    public          postgres    false    229   �g       %          0    25293    unit 
   TABLE DATA           S   COPY public.unit (id_unit, amount, id_state, id_destination, id_batch) FROM stdin;
    public          postgres    false    231   *h       -           0    0    batch_id_batch_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.batch_id_batch_seq', 16, true);
          public          postgres    false    216            .           0    0    company_id_company_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_id_company_seq', 35, true);
          public          postgres    false    217            /           0    0    destination_id_destination_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.destination_id_destination_seq', 47, true);
          public          postgres    false    219            0           0    0    line_type_id_line_type_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.line_type_id_line_type_seq', 20, true);
          public          postgres    false    222            1           0    0 $   product_family_id_product_family_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.product_family_id_product_family_seq', 51, true);
          public          postgres    false    225            2           0    0    product_id_product_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_id_product_seq', 16, true);
          public          postgres    false    226            3           0    0    state_id_state_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.state_id_state_seq', 51, true);
          public          postgres    false    227            4           0    0    ueb_id_ueb_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ueb_id_ueb_seq', 13, true);
          public          postgres    false    230            5           0    0    unit_id_unit_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.unit_id_unit_seq', 15, true);
          public          postgres    false    232            L           2606    25299    batch PK_batch 
   CONSTRAINT     T   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "PK_batch" PRIMARY KEY (id_batch);
 :   ALTER TABLE ONLY public.batch DROP CONSTRAINT "PK_batch";
       public            postgres    false    215            P           2606    25301    company PK_company 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "PK_company" PRIMARY KEY (id_company);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT "PK_company";
       public            postgres    false    218            U           2606    25303    destination PK_destination 
   CONSTRAINT     f   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "PK_destination" PRIMARY KEY (id_destination);
 F   ALTER TABLE ONLY public.destination DROP CONSTRAINT "PK_destination";
       public            postgres    false    220            ]           2606    25305    line_type PK_line_type 
   CONSTRAINT     `   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "PK_line_type" PRIMARY KEY (id_line_type);
 B   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "PK_line_type";
       public            postgres    false    221            b           2606    25307    product PK_product 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_product" PRIMARY KEY (id_product);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_product";
       public            postgres    false    223            j           2606    25309     product_family PK_product_family 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "PK_product_family" PRIMARY KEY (id_product_family);
 L   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "PK_product_family";
       public            postgres    false    224            o           2606    25311    state PK_state 
   CONSTRAINT     T   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "PK_state" PRIMARY KEY (id_state);
 :   ALTER TABLE ONLY public.state DROP CONSTRAINT "PK_state";
       public            postgres    false    228            v           2606    25313 
   ueb PK_ueb 
   CONSTRAINT     N   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "PK_ueb" PRIMARY KEY (id_ueb);
 6   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "PK_ueb";
       public            postgres    false    229            {           2606    25315    unit PK_unit 
   CONSTRAINT     Q   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "PK_unit" PRIMARY KEY (id_unit);
 8   ALTER TABLE ONLY public.unit DROP CONSTRAINT "PK_unit";
       public            postgres    false    231            N           2606    25463 $   batch UQ_01059db576d5b3a0c7dc89632ac 
   CONSTRAINT     g   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "UQ_01059db576d5b3a0c7dc89632ac" UNIQUE (code_batch);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "UQ_01059db576d5b3a0c7dc89632ac";
       public            postgres    false    215            R           2606    25317 &   company UQ_080e4173db932efd64aa2e73b53 
   CONSTRAINT     k   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "UQ_080e4173db932efd64aa2e73b53" UNIQUE (name_company);
 R   ALTER TABLE ONLY public.company DROP CONSTRAINT "UQ_080e4173db932efd64aa2e73b53";
       public            postgres    false    218            W           2606    25319 *   destination UQ_2aaab44ac7cd7b42278f4732922 
   CONSTRAINT     z   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "UQ_2aaab44ac7cd7b42278f4732922" UNIQUE (destination_description);
 V   ALTER TABLE ONLY public.destination DROP CONSTRAINT "UQ_2aaab44ac7cd7b42278f4732922";
       public            postgres    false    220            Y           2606    25321 *   destination UQ_55b73d3274e3c78ea3a1df4f769 
   CONSTRAINT     s   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "UQ_55b73d3274e3c78ea3a1df4f769" UNIQUE (destination_code);
 V   ALTER TABLE ONLY public.destination DROP CONSTRAINT "UQ_55b73d3274e3c78ea3a1df4f769";
       public            postgres    false    220            d           2606    25447 &   product UQ_6917871961ed0c1f2ad99c37528 
   CONSTRAINT     k   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "UQ_6917871961ed0c1f2ad99c37528" UNIQUE (code_product);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "UQ_6917871961ed0c1f2ad99c37528";
       public            postgres    false    223            x           2606    25401 "   ueb UQ_91fc59ea5c6fa8475d0a9a6862e 
   CONSTRAINT     c   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "UQ_91fc59ea5c6fa8475d0a9a6862e" UNIQUE (name_ueb);
 N   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "UQ_91fc59ea5c6fa8475d0a9a6862e";
       public            postgres    false    229            q           2606    25323 $   state UQ_9390196561d53ce2bf4b33d37ce 
   CONSTRAINT     h   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce" UNIQUE (state_order);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce";
       public            postgres    false    228            _           2606    25414 (   line_type UQ_95c71964fa3660650066217167a 
   CONSTRAINT     o   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "UQ_95c71964fa3660650066217167a" UNIQUE (code_line_type);
 T   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "UQ_95c71964fa3660650066217167a";
       public            postgres    false    221            f           2606    41350 &   product UQ_c7127df4a5ce2f98808c3a51795 
   CONSTRAINT     k   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "UQ_c7127df4a5ce2f98808c3a51795" UNIQUE (name_product);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "UQ_c7127df4a5ce2f98808c3a51795";
       public            postgres    false    223            l           2606    25390 -   product_family UQ_d8a492d7a10f56bae7ad661c389 
   CONSTRAINT     y   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "UQ_d8a492d7a10f56bae7ad661c389" UNIQUE (name_product_family);
 Y   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "UQ_d8a492d7a10f56bae7ad661c389";
       public            postgres    false    224            s           2606    25325 $   state UQ_f307120d3537ff14642242eb2d3 
   CONSTRAINT     g   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_f307120d3537ff14642242eb2d3" UNIQUE (name_state);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_f307120d3537ff14642242eb2d3";
       public            postgres    false    228            `           1259    49539    idx_code_line_type_lower    INDEX     n   CREATE UNIQUE INDEX idx_code_line_type_lower ON public.line_type USING btree (lower((code_line_type)::text));
 ,   DROP INDEX public.idx_code_line_type_lower;
       public            postgres    false    221    221            g           1259    49541    idx_code_product_lower    INDEX     h   CREATE UNIQUE INDEX idx_code_product_lower ON public.product USING btree (lower((code_product)::text));
 *   DROP INDEX public.idx_code_product_lower;
       public            postgres    false    223    223            Z           1259    49544    idx_destination_code_lower    INDEX     t   CREATE UNIQUE INDEX idx_destination_code_lower ON public.destination USING btree (lower((destination_code)::text));
 .   DROP INDEX public.idx_destination_code_lower;
       public            postgres    false    220    220            [           1259    49543 !   idx_destination_description_lower    INDEX     �   CREATE UNIQUE INDEX idx_destination_description_lower ON public.destination USING btree (lower((destination_description)::text));
 5   DROP INDEX public.idx_destination_description_lower;
       public            postgres    false    220    220            S           1259    49536    idx_name_company_lower    INDEX     h   CREATE UNIQUE INDEX idx_name_company_lower ON public.company USING btree (lower((name_company)::text));
 *   DROP INDEX public.idx_name_company_lower;
       public            postgres    false    218    218            m           1259    49537    idx_name_product_family_lower    INDEX     }   CREATE UNIQUE INDEX idx_name_product_family_lower ON public.product_family USING btree (lower((name_product_family)::text));
 1   DROP INDEX public.idx_name_product_family_lower;
       public            postgres    false    224    224            h           1259    49540    idx_name_product_lower    INDEX     h   CREATE UNIQUE INDEX idx_name_product_lower ON public.product USING btree (lower((name_product)::text));
 *   DROP INDEX public.idx_name_product_lower;
       public            postgres    false    223    223            t           1259    49542    idx_name_state_lower    INDEX     b   CREATE UNIQUE INDEX idx_name_state_lower ON public.state USING btree (lower((name_state)::text));
 (   DROP INDEX public.idx_name_state_lower;
       public            postgres    false    228    228            y           1259    49538    idx_name_ueb_lower    INDEX     \   CREATE UNIQUE INDEX idx_name_ueb_lower ON public.ueb USING btree (lower((name_ueb)::text));
 &   DROP INDEX public.idx_name_ueb_lower;
       public            postgres    false    229    229            �           2606    25438 #   unit FK_02d1c988a69796d1a23e854b8cb    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_02d1c988a69796d1a23e854b8cb" FOREIGN KEY (id_destination) REFERENCES public.destination(id_destination);
 O   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_02d1c988a69796d1a23e854b8cb";
       public          postgres    false    231    220    4693                       2606    41376 &   product FK_0736d24e18f7ffdb5ddc8a69d6e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_0736d24e18f7ffdb5ddc8a69d6e" FOREIGN KEY (id_product_family) REFERENCES public.product_family(id_product_family);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_0736d24e18f7ffdb5ddc8a69d6e";
       public          postgres    false    4714    224    223            �           2606    25391 -   product_family FK_0db8ced0c7019fc4fdf27da0670    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "FK_0db8ced0c7019fc4fdf27da0670" FOREIGN KEY (id_company) REFERENCES public.company(id_company);
 Y   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "FK_0db8ced0c7019fc4fdf27da0670";
       public          postgres    false    224    4688    218            �           2606    41381 &   product FK_18d07f66ed050de87aa5919843e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_18d07f66ed050de87aa5919843e" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_18d07f66ed050de87aa5919843e";
       public          postgres    false    223    4726    229            |           2606    41371 $   batch FK_420f3bed3e596bced6793700d55    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_420f3bed3e596bced6793700d55" FOREIGN KEY (id_product) REFERENCES public.product(id_product);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_420f3bed3e596bced6793700d55";
       public          postgres    false    215    4706    223            ~           2606    25416 (   line_type FK_569356cf69ebcd7c19f9d738150    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "FK_569356cf69ebcd7c19f9d738150" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb);
 T   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "FK_569356cf69ebcd7c19f9d738150";
       public          postgres    false    221    4726    229            �           2606    41344 #   unit FK_5c94ace2219a6e305383d81399f    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_5c94ace2219a6e305383d81399f" FOREIGN KEY (id_batch) REFERENCES public.batch(id_batch);
 O   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_5c94ace2219a6e305383d81399f";
       public          postgres    false    4684    231    215            �           2606    25402 "   ueb FK_8c609db12b30f398053885cfba4    FK CONSTRAINT     �   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "FK_8c609db12b30f398053885cfba4" FOREIGN KEY (id_company) REFERENCES public.company(id_company);
 N   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "FK_8c609db12b30f398053885cfba4";
       public          postgres    false    229    218    4688            }           2606    41366 $   batch FK_a020d8db97fde2d43a76f1d4a7b    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_a020d8db97fde2d43a76f1d4a7b" FOREIGN KEY (id_line_type) REFERENCES public.line_type(id_line_type);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_a020d8db97fde2d43a76f1d4a7b";
       public          postgres    false    215    221    4701            �           2606    25433 #   unit FK_d42a93fc0c05429c17b34c8c88b    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_d42a93fc0c05429c17b34c8c88b" FOREIGN KEY (id_state) REFERENCES public.state(id_state);
 O   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_d42a93fc0c05429c17b34c8c88b";
       public          postgres    false    228    231    4719               %   x���4�44 ".CS��1�24�s,�b���� �4            x�3�t�tv������ '&         �   x�e�KN�0���S�	��>�]��ǆ
�Ǌ����Hi"e�6����%ҷ�m˲���Ew..�n��vY��W�W�����5n�"K�Ԁ�)�����e���=x�!�Z�:p��L=����CyuAw5f9�@�Bݧ��,G2�$�?\&k�'��4P�E'�B]���߱=��*q��A���]��C���e�w�s"k�F�}�H�BM2�%��� &�V�         �   x�e�;
�0��S�����a\�2����##[>����=F������F����'L�7>���@�]�X���FC�C�]�$�Y����ǍR��H+�Y�i?"3]^�&i{�m�C
�9�:Tc]1�Z�灈�SEk         P   x�34�42�4�t�/)��ͯH����46153�24�42J����'��%�f�$*����gd�%��s��q��qqq ��d         T  x�uSAn�0<K���7�)+q�4)�H�JI�c��9pТI�>����8F{�pgG3�u��.���K&��G&]ǎLT�٢��\�+�t��A`_~o�3
�<��	B�b7�<3��{|�o��<��xb�= $�Q&0�T�B��^�p�ht�Lے����1 �-S�*H� �y����6�DL=h�H��ˣ�(�'�i�-i�P4Xڪ��` �:[r���pDX�Z��;g#�9,�q��jE���D]gACT� �b��9���̈́���Ox��
țOcK�k��&�Jň�2*�Q�_�I窉�����d.	��������ow���?2��N��h�$��k�S�7�)ؼ��ܶ���7�p@�Y��x�}g0��#+yW��c-�o������k��?�gA��n!i1$mv���ssB��j��R�D�����hb9�����D�(Ji�NAl&��t�9�v����[�3�v���Qj:I�ҍ��jr��2���m5WC���]������Rp�TP�88Ҷb8�<�"3<6g :�����C^�ѓh��#Y^^C*��Ī�vd�b���t�������x��WeY��T!M      "   �   x���1�0Eg�aA��B��= ���R��i��G��Ha@EB���}g��bo�}deYQښ�^�'7ݣ4�GȖG�ɶX����H������"ɮN�.��I���ѐ���i[}��DS������vKO�Q��e�.��'l��">K�[�      #   E   x�3�4�t�tv�22|<��]���L�P G!$��ݟ��w��9�����e
	������� �|      %      x�34�420�4�4��24�4��c���� Bx     