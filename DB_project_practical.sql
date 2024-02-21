PGDMP  &    8                |            DB_project_practical    16.1    16.0 r    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    25201    DB_project_practical    DATABASE     �   CREATE DATABASE "DB_project_practical" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 &   DROP DATABASE "DB_project_practical";
                postgres    false            �            1255    25202    delete_batch(integer)    FUNCTION     �   CREATE FUNCTION public.delete_batch(_id_batch integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.batch
  WHERE id_batch = $1;
END;
$_$;
 6   DROP FUNCTION public.delete_batch(_id_batch integer);
       public          postgres    false            �            1255    25203    delete_company(integer)    FUNCTION     �   CREATE FUNCTION public.delete_company(_id_company integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.company
  WHERE id_company = $1;
END;
$_$;
 :   DROP FUNCTION public.delete_company(_id_company integer);
       public          postgres    false            �            1255    25204    delete_destination(integer)    FUNCTION     �   CREATE FUNCTION public.delete_destination(_id_destination integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.destination
  WHERE id_destination = $1;
END;
$_$;
 B   DROP FUNCTION public.delete_destination(_id_destination integer);
       public          postgres    false            �            1255    25205    delete_line_type(integer)    FUNCTION     �   CREATE FUNCTION public.delete_line_type(_id_line_type integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.line_type
  WHERE id_line_type = $1;
END;
$_$;
 >   DROP FUNCTION public.delete_line_type(_id_line_type integer);
       public          postgres    false            �            1255    25206    delete_product(integer)    FUNCTION     �   CREATE FUNCTION public.delete_product(_id_product integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.product
  WHERE id_product = $1;
END;
$_$;
 :   DROP FUNCTION public.delete_product(_id_product integer);
       public          postgres    false            �            1255    25207    delete_product_family(integer)    FUNCTION     �   CREATE FUNCTION public.delete_product_family(_id_product_family integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.product_family
  WHERE id_product_family = $1;
END;
$_$;
 H   DROP FUNCTION public.delete_product_family(_id_product_family integer);
       public          postgres    false            �            1255    25208    delete_state(integer)    FUNCTION     �   CREATE FUNCTION public.delete_state(_id_state integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.state
  WHERE id_state = $1;
END;
$_$;
 6   DROP FUNCTION public.delete_state(_id_state integer);
       public          postgres    false            �            1255    25209    delete_ueb(integer)    FUNCTION     �   CREATE FUNCTION public.delete_ueb(_id_ueb integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.ueb
  WHERE id_ueb = $1;
END;
$_$;
 2   DROP FUNCTION public.delete_ueb(_id_ueb integer);
       public          postgres    false            �            1255    25210    delete_unit(integer)    FUNCTION     �   CREATE FUNCTION public.delete_unit(_id_unit integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.unit
  WHERE id_unit = $1;
END;
$_$;
 4   DROP FUNCTION public.delete_unit(_id_unit integer);
       public          postgres    false            �            1255    25211    find_batch(integer)    FUNCTION     �   CREATE FUNCTION public.find_batch(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from batch
  where id_batch= $1;
$_$;
 *   DROP FUNCTION public.find_batch(integer);
       public          postgres    false            �            1255    25212    find_company(integer)    FUNCTION     �   CREATE FUNCTION public.find_company(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from company
  where id_company= $1;
$_$;
 ,   DROP FUNCTION public.find_company(integer);
       public          postgres    false            �            1255    25213    find_destination(integer)    FUNCTION     �   CREATE FUNCTION public.find_destination(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from destination
  where id_destination = $1;
$_$;
 0   DROP FUNCTION public.find_destination(integer);
       public          postgres    false            �            1255    25214    find_line_type(integer)    FUNCTION     �   CREATE FUNCTION public.find_line_type(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from line_type
  where id_line_type = $1;
$_$;
 .   DROP FUNCTION public.find_line_type(integer);
       public          postgres    false            �            1255    25215    find_product(integer)    FUNCTION     �   CREATE FUNCTION public.find_product(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from product
  where id_product = $1;
$_$;
 ,   DROP FUNCTION public.find_product(integer);
       public          postgres    false            �            1255    25216    find_product_family(integer)    FUNCTION     �   CREATE FUNCTION public.find_product_family(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from product_family
  where id_product_family = $1;
$_$;
 3   DROP FUNCTION public.find_product_family(integer);
       public          postgres    false            �            1255    25217    find_state(integer)    FUNCTION     �   CREATE FUNCTION public.find_state(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from state
  where id_state = $1;
$_$;
 *   DROP FUNCTION public.find_state(integer);
       public          postgres    false            �            1255    25218    find_ueb(integer)    FUNCTION     �   CREATE FUNCTION public.find_ueb(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from ueb
  where id_ueb = $1;
$_$;
 (   DROP FUNCTION public.find_ueb(integer);
       public          postgres    false            �            1255    25219    find_unit(integer)    FUNCTION     �   CREATE FUNCTION public.find_unit(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from unit
  where id_unit = $1;
$_$;
 )   DROP FUNCTION public.find_unit(integer);
       public          postgres    false            �            1255    25220 :   insert_batch(character varying, integer, integer, integer)    FUNCTION     @  CREATE FUNCTION public.insert_batch(code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into batch(code_batch,id_line,id_product,id_unit)values("code_batch_1","id_line_type_2","id_product_3","id_unit_4"); 
END;
$$;
 �   DROP FUNCTION public.insert_batch(code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer);
       public          postgres    false            �            1255    25221 !   insert_company(character varying)    FUNCTION     �   CREATE FUNCTION public.insert_company(name_company_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into company(name_company)values(name_company_1); 
END;
$$;
 G   DROP FUNCTION public.insert_company(name_company_1 character varying);
       public          postgres    false            �            1255    25222 %   insert_destination(character varying)    FUNCTION     �   CREATE FUNCTION public.insert_destination(destination_code_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into destination(destination_code)values(destination_code_1); 
END;
$$;
 O   DROP FUNCTION public.insert_destination(destination_code_1 character varying);
       public          postgres    false            �            1255    25223 ?   insert_line_type(character varying, character varying, integer)    FUNCTION     0  CREATE FUNCTION public.insert_line_type(name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into line_type(name_line_type,code_line_type,id_ueb)values(name_line_type_1,code_line_type_2,id_ueb_3); 
END;
$$;
 �   DROP FUNCTION public.insert_line_type(name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer);
       public          postgres    false            �            1255    25224 F   insert_product(character varying, character varying, integer, integer)    FUNCTION     c  CREATE FUNCTION public.insert_product(name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into product(name_product,code_product,id_product_family,id_ueb)values(name_product_1,code_product_2,id_product_family_3,id_ueb_4); 
END;
$$;
 �   DROP FUNCTION public.insert_product(name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer);
       public          postgres    false                        1255    25225 W   insert_product_family(character varying, character varying, character varying, integer)    FUNCTION     {  CREATE FUNCTION public.insert_product_family(name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into product_family(name_product_family,presentation,format,id_company)values(name_product_family_1,presentation_2,format_3,id_company_4); 
END;
$$;
 �   DROP FUNCTION public.insert_product_family(name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer);
       public          postgres    false                       1255    25226 (   insert_state(character varying, integer)    FUNCTION     �   CREATE FUNCTION public.insert_state(name_state_1 character varying, state_order_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into state(name_state,state_order)values(name_state_1,state_order_2); 
END;
$$;
 Z   DROP FUNCTION public.insert_state(name_state_1 character varying, state_order_2 integer);
       public          postgres    false                       1255    25227 &   insert_ueb(character varying, integer)    FUNCTION     �   CREATE FUNCTION public.insert_ueb(name_ueb_1 character varying, id_company_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into ueb(name_ueb,id_company)values(name_ueb_1,id_company_2); 
END;
$$;
 U   DROP FUNCTION public.insert_ueb(name_ueb_1 character varying, id_company_2 integer);
       public          postgres    false                       1255    25228 &   insert_unit(integer, integer, integer)    FUNCTION        CREATE FUNCTION public.insert_unit(amount_1 integer, id_state_2 integer, id_destination_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into unit(amount,id_state,id_destination)values(amount_1,id_state_2,id_destination_3); 
END;
$$;
 b   DROP FUNCTION public.insert_unit(amount_1 integer, id_state_2 integer, id_destination_3 integer);
       public          postgres    false                       1255    25229    select_all_batch()    FUNCTION     �   CREATE FUNCTION public.select_all_batch() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listbatch refcursor;
BEGIN
  OPEN listbatch FOR 
  Select * from batch order by batch.id_batch;
  RETURN listbatch;
END;
$$;
 )   DROP FUNCTION public.select_all_batch();
       public          postgres    false                       1255    25230    select_all_company()    FUNCTION     �   CREATE FUNCTION public.select_all_company() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listcompany refcursor;
BEGIN
  OPEN listcompany FOR 
  Select * from company order by company.id_company;
  RETURN listcompany;
END;
$$;
 +   DROP FUNCTION public.select_all_company();
       public          postgres    false                       1255    25231    select_all_destination()    FUNCTION       CREATE FUNCTION public.select_all_destination() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listdestination refcursor;
BEGIN
  OPEN listdestination FOR 
  Select * from destination order by destination.id_destination;
  RETURN listdestination;
END;
$$;
 /   DROP FUNCTION public.select_all_destination();
       public          postgres    false                       1255    25232    select_all_line_type()    FUNCTION     �   CREATE FUNCTION public.select_all_line_type() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listline_type refcursor;
BEGIN
  OPEN listline_type FOR 
  Select * from line_type order by line_type.id_line_type;
  RETURN listline_type;
END;
$$;
 -   DROP FUNCTION public.select_all_line_type();
       public          postgres    false                       1255    25233    select_all_product()    FUNCTION     �   CREATE FUNCTION public.select_all_product() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listproduct refcursor;
BEGIN
  OPEN listproduct FOR 
  Select * from product order by product.id_product;
  RETURN listproduct;
END;
$$;
 +   DROP FUNCTION public.select_all_product();
       public          postgres    false            	           1255    25234    select_all_product_family()    FUNCTION     !  CREATE FUNCTION public.select_all_product_family() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listproduct_family refcursor;
BEGIN
  OPEN listproduct_family FOR 
  Select * from product_family order by product_family.id_product_family;
  RETURN listproduct_family;
END;
$$;
 2   DROP FUNCTION public.select_all_product_family();
       public          postgres    false            
           1255    25235    select_all_state()    FUNCTION     �   CREATE FUNCTION public.select_all_state() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  liststate refcursor;
BEGIN
  OPEN liststate FOR 
  Select * from state order by state.id_state;
  RETURN liststate;
END;
$$;
 )   DROP FUNCTION public.select_all_state();
       public          postgres    false                       1255    25236    select_all_ueb()    FUNCTION     �   CREATE FUNCTION public.select_all_ueb() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listueb refcursor;
BEGIN
  OPEN listueb FOR 
  Select * from ueb order by ueb.id_ueb;
  RETURN listueb;
END;
$$;
 '   DROP FUNCTION public.select_all_ueb();
       public          postgres    false                       1255    25237    select_all_unit()    FUNCTION     �   CREATE FUNCTION public.select_all_unit() RETURNS refcursor
    LANGUAGE plpgsql
    AS $$
DECLARE
  listunit refcursor;
BEGIN
  OPEN listunit FOR 
  Select * from unit order by unit.id_unit;
  RETURN listunit;
END;
$$;
 (   DROP FUNCTION public.select_all_unit();
       public          postgres    false                       1255    25238 C   update_batch(integer, character varying, integer, integer, integer)    FUNCTION     8  CREATE FUNCTION public.update_batch(id_batch_0 integer, code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update batch
  SET code_batch=$2,id_line_type=$3,id_product=$4,id_unit=$5 where id_batch= $1; 
END;
$_$;
 �   DROP FUNCTION public.update_batch(id_batch_0 integer, code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer);
       public          postgres    false                       1255    25239 *   update_company(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.update_company(id_company_0 integer, name_company_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update company
  SET name_company=$2 where id_company= $1; 
END;
$_$;
 ]   DROP FUNCTION public.update_company(id_company_0 integer, name_company_1 character varying);
       public          postgres    false                       1255    25240 .   update_destination(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.update_destination(id_destination_0 integer, destination_code_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update destination
  SET destination_code=$2 where id_destination= $1; 
END;
$_$;
 i   DROP FUNCTION public.update_destination(id_destination_0 integer, destination_code_1 character varying);
       public          postgres    false                       1255    25241 H   update_line_type(integer, character varying, character varying, integer)    FUNCTION     7  CREATE FUNCTION public.update_line_type(id_line_type_0 integer, name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update line_type
  SET name_line_type=$2,code_line_type=$3,id_ueb=$4 where id_line_type=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_line_type(id_line_type_0 integer, name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer);
       public          postgres    false                       1255    25242 O   update_product(integer, character varying, character varying, integer, integer)    FUNCTION     Y  CREATE FUNCTION public.update_product(id_product_0 integer, name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update product
  SET name_product=$2,code_product=$3,id_product_family=$4,id_ueb=$5 where id_product=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_product(id_product_0 integer, name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer);
       public          postgres    false                       1255    25243 `   update_product_family(integer, character varying, character varying, character varying, integer)    FUNCTION       CREATE FUNCTION public.update_product_family(id_product_family_0 integer, name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update product_family
  SET name_product_family=$2,presentation=$3,format=$4,id_company=$5 where id_product_family=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_product_family(id_product_family_0 integer, name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer);
       public          postgres    false                       1255    25244 1   update_state(integer, character varying, integer)    FUNCTION     �   CREATE FUNCTION public.update_state(id_state_0 integer, name_state_1 character varying, state_order_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update state
  SET name_state=$2,state_order=$3 where id_state=$1; 
END;
$_$;
 n   DROP FUNCTION public.update_state(id_state_0 integer, name_state_1 character varying, state_order_2 integer);
       public          postgres    false                       1255    25245 /   update_ueb(integer, character varying, integer)    FUNCTION     �   CREATE FUNCTION public.update_ueb(id_ueb_0 integer, name_ueb_1 character varying, id_company_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update ueb
  SET name_ueb=$2,id_company=$3 where id_ueb=$1; 
END;
$_$;
 g   DROP FUNCTION public.update_ueb(id_ueb_0 integer, name_ueb_1 character varying, id_company_2 integer);
       public          postgres    false                       1255    25246 /   update_unit(integer, integer, integer, integer)    FUNCTION       CREATE FUNCTION public.update_unit(id_unit_0 integer, amount_1 integer, id_state_2 integer, id_destination_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update unit
  SET amount=$2,id_state=$3,id_destination=$4 where id_unit=$1; 
END;
$_$;
 u   DROP FUNCTION public.update_unit(id_unit_0 integer, amount_1 integer, id_state_2 integer, id_destination_3 integer);
       public          postgres    false            �            1259    25251    batch_id_batch_seq    SEQUENCE     {   CREATE SEQUENCE public.batch_id_batch_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.batch_id_batch_seq;
       public          postgres    false            �            1259    25247    batch    TABLE       CREATE TABLE public.batch (
    id_batch integer DEFAULT nextval('public.batch_id_batch_seq'::regclass) NOT NULL,
    id_line_type integer NOT NULL,
    id_product integer NOT NULL,
    id_unit integer NOT NULL,
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
    id_destination integer NOT NULL
);
    DROP TABLE public.unit;
       public         heap    postgres    false    232            7          0    25247    batch 
   TABLE DATA           X   COPY public.batch (id_batch, id_line_type, id_product, id_unit, code_batch) FROM stdin;
    public          postgres    false    215   �       :          0    25253    company 
   TABLE DATA           ;   COPY public.company (id_company, name_company) FROM stdin;
    public          postgres    false    218   C�       <          0    25260    destination 
   TABLE DATA           `   COPY public.destination (id_destination, destination_code, destination_description) FROM stdin;
    public          postgres    false    220   h�       =          0    25266 	   line_type 
   TABLE DATA           Y   COPY public.line_type (id_line_type, name_line_type, code_line_type, id_ueb) FROM stdin;
    public          postgres    false    221   _�       ?          0    25271    product 
   TABLE DATA           d   COPY public.product (id_product, id_product_family, id_ueb, name_product, code_product) FROM stdin;
    public          postgres    false    223   ��       @          0    25275    product_family 
   TABLE DATA           r   COPY public.product_family (id_product_family, id_company, name_product_family, presentation, format) FROM stdin;
    public          postgres    false    224   &�       D          0    25282    state 
   TABLE DATA           B   COPY public.state (id_state, state_order, name_state) FROM stdin;
    public          postgres    false    228   f�       E          0    25288    ueb 
   TABLE DATA           ;   COPY public.ueb (id_ueb, id_company, name_ueb) FROM stdin;
    public          postgres    false    229   �       G          0    25293    unit 
   TABLE DATA           I   COPY public.unit (id_unit, amount, id_state, id_destination) FROM stdin;
    public          postgres    false    231   \�       O           0    0    batch_id_batch_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.batch_id_batch_seq', 1, true);
          public          postgres    false    216            P           0    0    company_id_company_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.company_id_company_seq', 4, true);
          public          postgres    false    217            Q           0    0    destination_id_destination_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.destination_id_destination_seq', 23, true);
          public          postgres    false    219            R           0    0    line_type_id_line_type_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.line_type_id_line_type_seq', 9, true);
          public          postgres    false    222            S           0    0 $   product_family_id_product_family_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.product_family_id_product_family_seq', 31, true);
          public          postgres    false    225            T           0    0    product_id_product_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_id_product_seq', 2, true);
          public          postgres    false    226            U           0    0    state_id_state_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.state_id_state_seq', 11, true);
          public          postgres    false    227            V           0    0    ueb_id_ueb_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ueb_id_ueb_seq', 5, true);
          public          postgres    false    230            W           0    0    unit_id_unit_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.unit_id_unit_seq', 2, true);
          public          postgres    false    232            y           2606    25299    batch PK_batch 
   CONSTRAINT     T   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "PK_batch" PRIMARY KEY (id_batch);
 :   ALTER TABLE ONLY public.batch DROP CONSTRAINT "PK_batch";
       public            postgres    false    215            }           2606    25301    company PK_company 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "PK_company" PRIMARY KEY (id_company);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT "PK_company";
       public            postgres    false    218            �           2606    25303    destination PK_destination 
   CONSTRAINT     f   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "PK_destination" PRIMARY KEY (id_destination);
 F   ALTER TABLE ONLY public.destination DROP CONSTRAINT "PK_destination";
       public            postgres    false    220            �           2606    25305    line_type PK_line_type 
   CONSTRAINT     `   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "PK_line_type" PRIMARY KEY (id_line_type);
 B   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "PK_line_type";
       public            postgres    false    221            �           2606    25307    product PK_product 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_product" PRIMARY KEY (id_product);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_product";
       public            postgres    false    223            �           2606    25309     product_family PK_product_family 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "PK_product_family" PRIMARY KEY (id_product_family);
 L   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "PK_product_family";
       public            postgres    false    224            �           2606    25311    state PK_state 
   CONSTRAINT     T   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "PK_state" PRIMARY KEY (id_state);
 :   ALTER TABLE ONLY public.state DROP CONSTRAINT "PK_state";
       public            postgres    false    228            �           2606    25313 
   ueb PK_ueb 
   CONSTRAINT     N   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "PK_ueb" PRIMARY KEY (id_ueb);
 6   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "PK_ueb";
       public            postgres    false    229            �           2606    25315    unit PK_unit 
   CONSTRAINT     Q   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "PK_unit" PRIMARY KEY (id_unit);
 8   ALTER TABLE ONLY public.unit DROP CONSTRAINT "PK_unit";
       public            postgres    false    231            {           2606    25463 $   batch UQ_01059db576d5b3a0c7dc89632ac 
   CONSTRAINT     g   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "UQ_01059db576d5b3a0c7dc89632ac" UNIQUE (code_batch);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "UQ_01059db576d5b3a0c7dc89632ac";
       public            postgres    false    215                       2606    25317 &   company UQ_080e4173db932efd64aa2e73b53 
   CONSTRAINT     k   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "UQ_080e4173db932efd64aa2e73b53" UNIQUE (name_company);
 R   ALTER TABLE ONLY public.company DROP CONSTRAINT "UQ_080e4173db932efd64aa2e73b53";
       public            postgres    false    218            �           2606    25319 *   destination UQ_2aaab44ac7cd7b42278f4732922 
   CONSTRAINT     z   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "UQ_2aaab44ac7cd7b42278f4732922" UNIQUE (destination_description);
 V   ALTER TABLE ONLY public.destination DROP CONSTRAINT "UQ_2aaab44ac7cd7b42278f4732922";
       public            postgres    false    220            �           2606    25321 *   destination UQ_55b73d3274e3c78ea3a1df4f769 
   CONSTRAINT     s   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "UQ_55b73d3274e3c78ea3a1df4f769" UNIQUE (destination_code);
 V   ALTER TABLE ONLY public.destination DROP CONSTRAINT "UQ_55b73d3274e3c78ea3a1df4f769";
       public            postgres    false    220            �           2606    25447 &   product UQ_6917871961ed0c1f2ad99c37528 
   CONSTRAINT     k   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "UQ_6917871961ed0c1f2ad99c37528" UNIQUE (code_product);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "UQ_6917871961ed0c1f2ad99c37528";
       public            postgres    false    223            �           2606    25401 "   ueb UQ_91fc59ea5c6fa8475d0a9a6862e 
   CONSTRAINT     c   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "UQ_91fc59ea5c6fa8475d0a9a6862e" UNIQUE (name_ueb);
 N   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "UQ_91fc59ea5c6fa8475d0a9a6862e";
       public            postgres    false    229            �           2606    25323 $   state UQ_9390196561d53ce2bf4b33d37ce 
   CONSTRAINT     h   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce" UNIQUE (state_order);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce";
       public            postgres    false    228            �           2606    25414 (   line_type UQ_95c71964fa3660650066217167a 
   CONSTRAINT     o   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "UQ_95c71964fa3660650066217167a" UNIQUE (code_line_type);
 T   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "UQ_95c71964fa3660650066217167a";
       public            postgres    false    221            �           2606    25390 -   product_family UQ_d8a492d7a10f56bae7ad661c389 
   CONSTRAINT     y   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "UQ_d8a492d7a10f56bae7ad661c389" UNIQUE (name_product_family);
 Y   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "UQ_d8a492d7a10f56bae7ad661c389";
       public            postgres    false    224            �           2606    25325 $   state UQ_f307120d3537ff14642242eb2d3 
   CONSTRAINT     g   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_f307120d3537ff14642242eb2d3" UNIQUE (name_state);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_f307120d3537ff14642242eb2d3";
       public            postgres    false    228            �           2606    25438 #   unit FK_02d1c988a69796d1a23e854b8cb    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_02d1c988a69796d1a23e854b8cb" FOREIGN KEY (id_destination) REFERENCES public.destination(id_destination);
 O   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_02d1c988a69796d1a23e854b8cb";
       public          postgres    false    4737    220    231            �           2606    25448 &   product FK_0736d24e18f7ffdb5ddc8a69d6e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_0736d24e18f7ffdb5ddc8a69d6e" FOREIGN KEY (id_product_family) REFERENCES public.product_family(id_product_family);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_0736d24e18f7ffdb5ddc8a69d6e";
       public          postgres    false    224    223    4751            �           2606    25391 -   product_family FK_0db8ced0c7019fc4fdf27da0670    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "FK_0db8ced0c7019fc4fdf27da0670" FOREIGN KEY (id_company) REFERENCES public.company(id_company);
 Y   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "FK_0db8ced0c7019fc4fdf27da0670";
       public          postgres    false    218    4733    224            �           2606    25453 &   product FK_18d07f66ed050de87aa5919843e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_18d07f66ed050de87aa5919843e" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_18d07f66ed050de87aa5919843e";
       public          postgres    false    223    229    4761            �           2606    25486 $   batch FK_420f3bed3e596bced6793700d55    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_420f3bed3e596bced6793700d55" FOREIGN KEY (id_product) REFERENCES public.product(id_product);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_420f3bed3e596bced6793700d55";
       public          postgres    false    215    4747    223            �           2606    25416 (   line_type FK_569356cf69ebcd7c19f9d738150    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "FK_569356cf69ebcd7c19f9d738150" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb);
 T   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "FK_569356cf69ebcd7c19f9d738150";
       public          postgres    false    229    221    4761            �           2606    25402 "   ueb FK_8c609db12b30f398053885cfba4    FK CONSTRAINT     �   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "FK_8c609db12b30f398053885cfba4" FOREIGN KEY (id_company) REFERENCES public.company(id_company);
 N   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "FK_8c609db12b30f398053885cfba4";
       public          postgres    false    218    4733    229            �           2606    25481 $   batch FK_a020d8db97fde2d43a76f1d4a7b    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_a020d8db97fde2d43a76f1d4a7b" FOREIGN KEY (id_line_type) REFERENCES public.line_type(id_line_type);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_a020d8db97fde2d43a76f1d4a7b";
       public          postgres    false    4743    215    221            �           2606    25433 #   unit FK_d42a93fc0c05429c17b34c8c88b    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_d42a93fc0c05429c17b34c8c88b" FOREIGN KEY (id_state) REFERENCES public.state(id_state);
 O   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_d42a93fc0c05429c17b34c8c88b";
       public          postgres    false    231    228    4755            �           2606    25491 $   batch FK_f951d2803ef746a6c7cc3de2eed    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_f951d2803ef746a6c7cc3de2eed" FOREIGN KEY (id_unit) REFERENCES public.unit(id_unit);
 P   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_f951d2803ef746a6c7cc3de2eed";
       public          postgres    false    215    231    4765            7      x�3�4�@cS3�=... �n      :      x�3�t�tv������ '&      <   �   x�e�KN�0���S�	��>�]��ǆ
�Ǌ����Hi"e�6����%ҷ�m˲���Ew..�n��vY��W�W�����5n�"K�Ԁ�)�����e���=x�!�Z�:p��L=����CyuAw5f9�@�Bݧ��,G2�$�?\&k�'��4P�E'�B]���߱=��*q��A���]��C���e�w�s"k�F�}�H�BM2�%��� &�V�      =   �   x�e�;
�0��S���)%5¸�eo!XGF�|�l)P;�{Lo���7+5:�7�4�����g�f��b���w��pg�x/��-����EZ��B�m��tziS��,�"��sZ���#�E�����jE=      ?      x�3�4BG �43571367����� 6�      @   0  x�uT���0���@���#)��)iRr8C:J��<���I��@J~M�j��b��d5��,^\�`<���&=!��	\������������n�1��ܦ6k\@	�*%�jOU��%�TU-}o�{p����Q����aw~�y��S'�1�$�$� m	?�D�ED��O?�%�:�QcsB��C��0�RP�8�^[���4�u�l�!���-]�iY�@���=ٌ�l�TT��9 b�'Ao�gFwނ���fGɥ�w�nVASV0�9�ˁ[���C�b7�)s�\['�����;��jh>����#
۬�Z�{���]�Cc
-t�;�uI8�ߵ��"&�b�'�,�d�_����5���MΖ�_�Tp{��<v�Jbt�p$�Al��q���L�_�H�|k`�>@��w_����W2�3!���)#�[%ŮU,��ȓ<����:�q�G\js���]�������e+�.(Ggݩ4��#�	��P���/Iq.��^�.��ayn��O�J[:��D�Ux���Ѵrm�AV�y��F俁�7u(��ό���}%�      D   �   x�3�4�H�K�L�+IUHIUH,(�OJL�<�9O!1/1��ڒ��D.3N#TuE�e��`U@^NNj^bJ�&��1��Ԓ�����$�%�	�\^Ybq*���)nG�e]��ZQ T�����Z��24�4#�d�n�:GG�=...  W%      E   E   x�3�4�t�tv�22|<��]���L�P G!$��ݟ��w��9�����e
	������� �|      G      x�3�44�4�4����� ��     