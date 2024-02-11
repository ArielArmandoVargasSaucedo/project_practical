PGDMP                      |            DB_project_practical    16.1    16.0 }    S           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            T           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            U           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            V           1262    24971    DB_project_practical    DATABASE     �   CREATE DATABASE "DB_project_practical" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
 &   DROP DATABASE "DB_project_practical";
                postgres    false            �            1255    24972    delete_batch(integer)    FUNCTION     �   CREATE FUNCTION public.delete_batch(_id_batch integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.batch
  WHERE id_batch = $1;
END;
$_$;
 6   DROP FUNCTION public.delete_batch(_id_batch integer);
       public          postgres    false            �            1255    24973    delete_company(integer)    FUNCTION     �   CREATE FUNCTION public.delete_company(_id_company integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.company
  WHERE id_company = $1;
END;
$_$;
 :   DROP FUNCTION public.delete_company(_id_company integer);
       public          postgres    false            �            1255    24974    delete_destination(integer)    FUNCTION     �   CREATE FUNCTION public.delete_destination(_id_destination integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.destination
  WHERE id_destination = $1;
END;
$_$;
 B   DROP FUNCTION public.delete_destination(_id_destination integer);
       public          postgres    false            �            1255    24975    delete_line_type(integer)    FUNCTION     �   CREATE FUNCTION public.delete_line_type(_id_line_type integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.line_type
  WHERE id_line_type = $1;
END;
$_$;
 >   DROP FUNCTION public.delete_line_type(_id_line_type integer);
       public          postgres    false            �            1255    24976    delete_product(integer)    FUNCTION     �   CREATE FUNCTION public.delete_product(_id_product integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.product
  WHERE id_product = $1;
END;
$_$;
 :   DROP FUNCTION public.delete_product(_id_product integer);
       public          postgres    false            �            1255    24977    delete_product_family(integer)    FUNCTION     �   CREATE FUNCTION public.delete_product_family(_id_product_family integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.product_family
  WHERE id_product_family = $1;
END;
$_$;
 H   DROP FUNCTION public.delete_product_family(_id_product_family integer);
       public          postgres    false            �            1255    24978    delete_state(integer)    FUNCTION     �   CREATE FUNCTION public.delete_state(_id_state integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.state
  WHERE id_state = $1;
END;
$_$;
 6   DROP FUNCTION public.delete_state(_id_state integer);
       public          postgres    false            �            1255    24979    delete_ueb(integer)    FUNCTION     �   CREATE FUNCTION public.delete_ueb(_id_ueb integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.ueb
  WHERE id_ueb = $1;
END;
$_$;
 2   DROP FUNCTION public.delete_ueb(_id_ueb integer);
       public          postgres    false            �            1255    24980    delete_unit(integer)    FUNCTION     �   CREATE FUNCTION public.delete_unit(_id_unit integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
  DELETE FROM public.unit
  WHERE id_unit = $1;
END;
$_$;
 4   DROP FUNCTION public.delete_unit(_id_unit integer);
       public          postgres    false            �            1255    24981    find_batch(integer)    FUNCTION     �   CREATE FUNCTION public.find_batch(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from batch
  where id_batch= $1;
$_$;
 *   DROP FUNCTION public.find_batch(integer);
       public          postgres    false            �            1255    24982    find_company(integer)    FUNCTION     �   CREATE FUNCTION public.find_company(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from company
  where id_company= $1;
$_$;
 ,   DROP FUNCTION public.find_company(integer);
       public          postgres    false            �            1255    24983    find_destination(integer)    FUNCTION     �   CREATE FUNCTION public.find_destination(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from destination
  where id_destination = $1;
$_$;
 0   DROP FUNCTION public.find_destination(integer);
       public          postgres    false            �            1255    24984    find_line_type(integer)    FUNCTION     �   CREATE FUNCTION public.find_line_type(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from line_type
  where id_line_type = $1;
$_$;
 .   DROP FUNCTION public.find_line_type(integer);
       public          postgres    false            �            1255    24985    find_product(integer)    FUNCTION     �   CREATE FUNCTION public.find_product(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from product
  where id_product = $1;
$_$;
 ,   DROP FUNCTION public.find_product(integer);
       public          postgres    false            �            1255    24986    find_product_family(integer)    FUNCTION     �   CREATE FUNCTION public.find_product_family(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from product_family
  where id_product_family = $1;
$_$;
 3   DROP FUNCTION public.find_product_family(integer);
       public          postgres    false            �            1255    24987    find_state(integer)    FUNCTION     �   CREATE FUNCTION public.find_state(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from state
  where id_state = $1;
$_$;
 *   DROP FUNCTION public.find_state(integer);
       public          postgres    false            �            1255    24988    find_ueb(integer)    FUNCTION     �   CREATE FUNCTION public.find_ueb(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from ueb
  where id_ueb = $1;
$_$;
 (   DROP FUNCTION public.find_ueb(integer);
       public          postgres    false            �            1255    24989    find_unit(integer)    FUNCTION     �   CREATE FUNCTION public.find_unit(integer) RETURNS record
    LANGUAGE sql
    AS $_$
  select * from unit
  where id_unit = $1;
$_$;
 )   DROP FUNCTION public.find_unit(integer);
       public          postgres    false            �            1255    24990 :   insert_batch(character varying, integer, integer, integer)    FUNCTION     @  CREATE FUNCTION public.insert_batch(code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into batch(code_batch,id_line,id_product,id_unit)values("code_batch_1","id_line_type_2","id_product_3","id_unit_4"); 
END;
$$;
 �   DROP FUNCTION public.insert_batch(code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer);
       public          postgres    false            �            1255    24991 !   insert_company(character varying)    FUNCTION     �   CREATE FUNCTION public.insert_company(name_company_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into company(name_company)values(name_company_1); 
END;
$$;
 G   DROP FUNCTION public.insert_company(name_company_1 character varying);
       public          postgres    false            �            1255    24992 %   insert_destination(character varying)    FUNCTION     �   CREATE FUNCTION public.insert_destination(destination_code_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into destination(destination_code)values(destination_code_1); 
END;
$$;
 O   DROP FUNCTION public.insert_destination(destination_code_1 character varying);
       public          postgres    false                        1255    24993 ?   insert_line_type(character varying, character varying, integer)    FUNCTION     0  CREATE FUNCTION public.insert_line_type(name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into line_type(name_line_type,code_line_type,id_ueb)values(name_line_type_1,code_line_type_2,id_ueb_3); 
END;
$$;
 �   DROP FUNCTION public.insert_line_type(name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer);
       public          postgres    false                       1255    24994 F   insert_product(character varying, character varying, integer, integer)    FUNCTION     c  CREATE FUNCTION public.insert_product(name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into product(name_product,code_product,id_product_family,id_ueb)values(name_product_1,code_product_2,id_product_family_3,id_ueb_4); 
END;
$$;
 �   DROP FUNCTION public.insert_product(name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer);
       public          postgres    false                       1255    24995 W   insert_product_family(character varying, character varying, character varying, integer)    FUNCTION     {  CREATE FUNCTION public.insert_product_family(name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into product_family(name_product_family,presentation,format,id_company)values(name_product_family_1,presentation_2,format_3,id_company_4); 
END;
$$;
 �   DROP FUNCTION public.insert_product_family(name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer);
       public          postgres    false                       1255    24996 (   insert_state(character varying, integer)    FUNCTION     �   CREATE FUNCTION public.insert_state(name_state_1 character varying, state_order_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into state(name_state,state_order)values(name_state_1,state_order_2); 
END;
$$;
 Z   DROP FUNCTION public.insert_state(name_state_1 character varying, state_order_2 integer);
       public          postgres    false                       1255    24997 &   insert_ueb(character varying, integer)    FUNCTION     �   CREATE FUNCTION public.insert_ueb(name_ueb_1 character varying, id_company_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into ueb(name_ueb,id_company)values(name_ueb_1,id_company_2); 
END;
$$;
 U   DROP FUNCTION public.insert_ueb(name_ueb_1 character varying, id_company_2 integer);
       public          postgres    false                       1255    24998 &   insert_unit(integer, integer, integer)    FUNCTION        CREATE FUNCTION public.insert_unit(amount_1 integer, id_state_2 integer, id_destination_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
  insert into unit(amount,id_state,id_destination)values(amount_1,id_state_2,id_destination_3); 
END;
$$;
 b   DROP FUNCTION public.insert_unit(amount_1 integer, id_state_2 integer, id_destination_3 integer);
       public          postgres    false                       1255    24999    select_all_batch()    FUNCTION     �   CREATE FUNCTION public.select_all_batch() RETURNS refcursor
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
       public          postgres    false                       1255    25000    select_all_company()    FUNCTION     �   CREATE FUNCTION public.select_all_company() RETURNS refcursor
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
       public          postgres    false                       1255    25001    select_all_destination()    FUNCTION       CREATE FUNCTION public.select_all_destination() RETURNS refcursor
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
       public          postgres    false            	           1255    25002    select_all_line_type()    FUNCTION     �   CREATE FUNCTION public.select_all_line_type() RETURNS refcursor
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
       public          postgres    false            
           1255    25003    select_all_product()    FUNCTION     �   CREATE FUNCTION public.select_all_product() RETURNS refcursor
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
       public          postgres    false                       1255    25004    select_all_product_family()    FUNCTION     !  CREATE FUNCTION public.select_all_product_family() RETURNS refcursor
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
       public          postgres    false                       1255    25005    select_all_state()    FUNCTION     �   CREATE FUNCTION public.select_all_state() RETURNS refcursor
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
       public          postgres    false                       1255    25006    select_all_ueb()    FUNCTION     �   CREATE FUNCTION public.select_all_ueb() RETURNS refcursor
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
       public          postgres    false                       1255    25007    select_all_unit()    FUNCTION     �   CREATE FUNCTION public.select_all_unit() RETURNS refcursor
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
       public          postgres    false                       1255    25008 C   update_batch(integer, character varying, integer, integer, integer)    FUNCTION     8  CREATE FUNCTION public.update_batch(id_batch_0 integer, code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update batch
  SET code_batch=$2,id_line_type=$3,id_product=$4,id_unit=$5 where id_batch= $1; 
END;
$_$;
 �   DROP FUNCTION public.update_batch(id_batch_0 integer, code_batch_1 character varying, id_line_type_2 integer, id_product_3 integer, id_unit_4 integer);
       public          postgres    false                       1255    25009 *   update_company(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.update_company(id_company_0 integer, name_company_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update company
  SET name_company=$2 where id_company= $1; 
END;
$_$;
 ]   DROP FUNCTION public.update_company(id_company_0 integer, name_company_1 character varying);
       public          postgres    false                       1255    25010 .   update_destination(integer, character varying)    FUNCTION     �   CREATE FUNCTION public.update_destination(id_destination_0 integer, destination_code_1 character varying) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update destination
  SET destination_code=$2 where id_destination= $1; 
END;
$_$;
 i   DROP FUNCTION public.update_destination(id_destination_0 integer, destination_code_1 character varying);
       public          postgres    false                       1255    25011 H   update_line_type(integer, character varying, character varying, integer)    FUNCTION     7  CREATE FUNCTION public.update_line_type(id_line_type_0 integer, name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update line_type
  SET name_line_type=$2,code_line_type=$3,id_ueb=$4 where id_line_type=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_line_type(id_line_type_0 integer, name_line_type_1 character varying, code_line_type_2 character varying, id_ueb_3 integer);
       public          postgres    false                       1255    25012 O   update_product(integer, character varying, character varying, integer, integer)    FUNCTION     Y  CREATE FUNCTION public.update_product(id_product_0 integer, name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update product
  SET name_product=$2,code_product=$3,id_product_family=$4,id_ueb=$5 where id_product=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_product(id_product_0 integer, name_product_1 character varying, code_product_2 character varying, id_product_family_3 integer, id_ueb_4 integer);
       public          postgres    false                       1255    25013 `   update_product_family(integer, character varying, character varying, character varying, integer)    FUNCTION       CREATE FUNCTION public.update_product_family(id_product_family_0 integer, name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update product_family
  SET name_product_family=$2,presentation=$3,format=$4,id_company=$5 where id_product_family=$1; 
END;
$_$;
 �   DROP FUNCTION public.update_product_family(id_product_family_0 integer, name_product_family_1 character varying, presentation_2 character varying, format_3 character varying, id_company_4 integer);
       public          postgres    false                       1255    25014 1   update_state(integer, character varying, integer)    FUNCTION     �   CREATE FUNCTION public.update_state(id_state_0 integer, name_state_1 character varying, state_order_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update state
  SET name_state=$2,state_order=$3 where id_state=$1; 
END;
$_$;
 n   DROP FUNCTION public.update_state(id_state_0 integer, name_state_1 character varying, state_order_2 integer);
       public          postgres    false                       1255    25015 /   update_ueb(integer, character varying, integer)    FUNCTION     �   CREATE FUNCTION public.update_ueb(id_ueb_0 integer, name_ueb_1 character varying, id_company_2 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update ueb
  SET name_ueb=$2,id_company=$3 where id_ueb=$1; 
END;
$_$;
 g   DROP FUNCTION public.update_ueb(id_ueb_0 integer, name_ueb_1 character varying, id_company_2 integer);
       public          postgres    false                       1255    25016 /   update_unit(integer, integer, integer, integer)    FUNCTION       CREATE FUNCTION public.update_unit(id_unit_0 integer, amount_1 integer, id_state_2 integer, id_destination_3 integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN 
  update unit
  SET amount=$2,id_state=$3,id_destination=$4 where id_unit=$1; 
END;
$_$;
 u   DROP FUNCTION public.update_unit(id_unit_0 integer, amount_1 integer, id_state_2 integer, id_destination_3 integer);
       public          postgres    false            �            1259    25017    batch    TABLE     �   CREATE TABLE public.batch (
    id_batch integer DEFAULT nextval(('"batch_id_batch_seq"'::text)::regclass) NOT NULL,
    code_batch character varying(50),
    id_line_type integer,
    id_product integer,
    id_unit integer
);
    DROP TABLE public.batch;
       public         heap    postgres    false            �            1259    25021    batch_id_batch_seq    SEQUENCE     {   CREATE SEQUENCE public.batch_id_batch_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.batch_id_batch_seq;
       public          postgres    false            �            1259    25158 	   companies    TABLE     p   CREATE TABLE public.companies (
    id_company integer NOT NULL,
    name_company character varying NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false            �            1259    25157    companies_id_company_seq    SEQUENCE     �   CREATE SEQUENCE public.companies_id_company_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.companies_id_company_seq;
       public          postgres    false    234            W           0    0    companies_id_company_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.companies_id_company_seq OWNED BY public.companies.id_company;
          public          postgres    false    233            �            1259    25032    company_id_company_seq    SEQUENCE        CREATE SEQUENCE public.company_id_company_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_id_company_seq;
       public          postgres    false            �            1259    25028    company    TABLE     �   CREATE TABLE public.company (
    id_company integer DEFAULT nextval('public.company_id_company_seq'::regclass) NOT NULL,
    name_company character varying NOT NULL
);
    DROP TABLE public.company;
       public         heap    postgres    false    218            �            1259    25033    destination    TABLE     �   CREATE TABLE public.destination (
    id_destination integer DEFAULT nextval(('"destination_id_destination_seq"'::text)::regclass) NOT NULL,
    destination_code character varying(4) NOT NULL
);
    DROP TABLE public.destination;
       public         heap    postgres    false            �            1259    25037    destination_id_destination_seq    SEQUENCE     �   CREATE SEQUENCE public.destination_id_destination_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.destination_id_destination_seq;
       public          postgres    false            �            1259    25038 	   line_type    TABLE     �   CREATE TABLE public.line_type (
    id_line_type integer DEFAULT nextval(('"line_type_id_line_type_seq"'::text)::regclass) NOT NULL,
    name_line_type character varying(60) NOT NULL,
    code_line_type character varying(10),
    id_ueb integer
);
    DROP TABLE public.line_type;
       public         heap    postgres    false            �            1259    25042    line_type_id_line_type_seq    SEQUENCE     �   CREATE SEQUENCE public.line_type_id_line_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.line_type_id_line_type_seq;
       public          postgres    false            �            1259    25043    product    TABLE       CREATE TABLE public.product (
    id_product integer DEFAULT nextval(('"product_id_product_seq"'::text)::regclass) NOT NULL,
    name_product character varying(50) NOT NULL,
    code_product character varying(50),
    id_product_family integer,
    id_ueb integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    25047    product_family    TABLE     5  CREATE TABLE public.product_family (
    id_product_family integer DEFAULT nextval(('"product_family_id_product_family_seq"'::text)::regclass) NOT NULL,
    name_product_family character varying(50) NOT NULL,
    presentation character varying(50),
    format character varying(50),
    id_company integer
);
 "   DROP TABLE public.product_family;
       public         heap    postgres    false            �            1259    25051 $   product_family_id_product_family_seq    SEQUENCE     �   CREATE SEQUENCE public.product_family_id_product_family_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.product_family_id_product_family_seq;
       public          postgres    false            �            1259    25052    product_id_product_seq    SEQUENCE        CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_id_product_seq;
       public          postgres    false            �            1259    25057    state_id_state_seq    SEQUENCE     {   CREATE SEQUENCE public.state_id_state_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.state_id_state_seq;
       public          postgres    false            �            1259    25053    state    TABLE     �   CREATE TABLE public.state (
    id_state integer DEFAULT nextval('public.state_id_state_seq'::regclass) NOT NULL,
    state_order integer NOT NULL,
    name_state character varying NOT NULL
);
    DROP TABLE public.state;
       public         heap    postgres    false    228            �            1259    25058    ueb    TABLE     �   CREATE TABLE public.ueb (
    id_ueb integer DEFAULT nextval(('"ueb_id_ueb_seq"'::text)::regclass) NOT NULL,
    name_ueb character varying(50) NOT NULL,
    id_company integer
);
    DROP TABLE public.ueb;
       public         heap    postgres    false            �            1259    25062    ueb_id_ueb_seq    SEQUENCE     w   CREATE SEQUENCE public.ueb_id_ueb_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ueb_id_ueb_seq;
       public          postgres    false            �            1259    25063    unit    TABLE     �   CREATE TABLE public.unit (
    id_unit integer DEFAULT nextval(('"unit_id_unit_seq"'::text)::regclass) NOT NULL,
    amount integer,
    id_state integer,
    id_destination integer
);
    DROP TABLE public.unit;
       public         heap    postgres    false            �            1259    25067    unit_id_unit_seq    SEQUENCE     y   CREATE SEQUENCE public.unit_id_unit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.unit_id_unit_seq;
       public          postgres    false            }           2604    25161    companies id_company    DEFAULT     |   ALTER TABLE ONLY public.companies ALTER COLUMN id_company SET DEFAULT nextval('public.companies_id_company_seq'::regclass);
 C   ALTER TABLE public.companies ALTER COLUMN id_company DROP DEFAULT;
       public          postgres    false    234    233    234            =          0    25017    batch 
   TABLE DATA           X   COPY public.batch (id_batch, code_batch, id_line_type, id_product, id_unit) FROM stdin;
    public          postgres    false    215   ��       P          0    25158 	   companies 
   TABLE DATA           =   COPY public.companies (id_company, name_company) FROM stdin;
    public          postgres    false    234   �       ?          0    25028    company 
   TABLE DATA           ;   COPY public.company (id_company, name_company) FROM stdin;
    public          postgres    false    217   9�       A          0    25033    destination 
   TABLE DATA           G   COPY public.destination (id_destination, destination_code) FROM stdin;
    public          postgres    false    219   ^�       C          0    25038 	   line_type 
   TABLE DATA           Y   COPY public.line_type (id_line_type, name_line_type, code_line_type, id_ueb) FROM stdin;
    public          postgres    false    221   {�       E          0    25043    product 
   TABLE DATA           d   COPY public.product (id_product, name_product, code_product, id_product_family, id_ueb) FROM stdin;
    public          postgres    false    223   ��       F          0    25047    product_family 
   TABLE DATA           r   COPY public.product_family (id_product_family, name_product_family, presentation, format, id_company) FROM stdin;
    public          postgres    false    224   ��       I          0    25053    state 
   TABLE DATA           B   COPY public.state (id_state, state_order, name_state) FROM stdin;
    public          postgres    false    227   Ұ       K          0    25058    ueb 
   TABLE DATA           ;   COPY public.ueb (id_ueb, name_ueb, id_company) FROM stdin;
    public          postgres    false    229   s�       M          0    25063    unit 
   TABLE DATA           I   COPY public.unit (id_unit, amount, id_state, id_destination) FROM stdin;
    public          postgres    false    231   ��       X           0    0    batch_id_batch_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.batch_id_batch_seq', 1, false);
          public          postgres    false    216            Y           0    0    companies_id_company_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.companies_id_company_seq', 1, false);
          public          postgres    false    233            Z           0    0    company_id_company_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.company_id_company_seq', 1, true);
          public          postgres    false    218            [           0    0    destination_id_destination_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.destination_id_destination_seq', 1, false);
          public          postgres    false    220            \           0    0    line_type_id_line_type_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.line_type_id_line_type_seq', 1, false);
          public          postgres    false    222            ]           0    0 $   product_family_id_product_family_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.product_family_id_product_family_seq', 1, false);
          public          postgres    false    225            ^           0    0    product_id_product_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_id_product_seq', 1, false);
          public          postgres    false    226            _           0    0    state_id_state_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.state_id_state_seq', 11, true);
          public          postgres    false    228            `           0    0    ueb_id_ueb_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ueb_id_ueb_seq', 1, false);
          public          postgres    false    230            a           0    0    unit_id_unit_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.unit_id_unit_seq', 1, false);
          public          postgres    false    232            �           2606    25070    batch PK_batch 
   CONSTRAINT     T   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "PK_batch" PRIMARY KEY (id_batch);
 :   ALTER TABLE ONLY public.batch DROP CONSTRAINT "PK_batch";
       public            postgres    false    215            �           2606    25072    company PK_company 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "PK_company" PRIMARY KEY (id_company);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT "PK_company";
       public            postgres    false    217            �           2606    25074    destination PK_destination 
   CONSTRAINT     f   ALTER TABLE ONLY public.destination
    ADD CONSTRAINT "PK_destination" PRIMARY KEY (id_destination);
 F   ALTER TABLE ONLY public.destination DROP CONSTRAINT "PK_destination";
       public            postgres    false    219            �           2606    25165 (   companies PK_efac189ba0c051f7a00ada6a2e5 
   CONSTRAINT     p   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT "PK_efac189ba0c051f7a00ada6a2e5" PRIMARY KEY (id_company);
 T   ALTER TABLE ONLY public.companies DROP CONSTRAINT "PK_efac189ba0c051f7a00ada6a2e5";
       public            postgres    false    234            �           2606    25078    line_type PK_line_type 
   CONSTRAINT     `   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "PK_line_type" PRIMARY KEY (id_line_type);
 B   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "PK_line_type";
       public            postgres    false    221            �           2606    25080    product PK_product 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_product" PRIMARY KEY (id_product);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_product";
       public            postgres    false    223            �           2606    25082     product_family PK_product_family 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "PK_product_family" PRIMARY KEY (id_product_family);
 L   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "PK_product_family";
       public            postgres    false    224            �           2606    25084    state PK_state 
   CONSTRAINT     T   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "PK_state" PRIMARY KEY (id_state);
 :   ALTER TABLE ONLY public.state DROP CONSTRAINT "PK_state";
       public            postgres    false    227            �           2606    25086 
   ueb PK_ueb 
   CONSTRAINT     N   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "PK_ueb" PRIMARY KEY (id_ueb);
 6   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "PK_ueb";
       public            postgres    false    229            �           2606    25088    unit PK_unit 
   CONSTRAINT     Q   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "PK_unit" PRIMARY KEY (id_unit);
 8   ALTER TABLE ONLY public.unit DROP CONSTRAINT "PK_unit";
       public            postgres    false    231            �           2606    25155 &   company UQ_080e4173db932efd64aa2e73b53 
   CONSTRAINT     k   ALTER TABLE ONLY public.company
    ADD CONSTRAINT "UQ_080e4173db932efd64aa2e73b53" UNIQUE (name_company);
 R   ALTER TABLE ONLY public.company DROP CONSTRAINT "UQ_080e4173db932efd64aa2e73b53";
       public            postgres    false    217            �           2606    25174 $   state UQ_9390196561d53ce2bf4b33d37ce 
   CONSTRAINT     h   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce" UNIQUE (state_order);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_9390196561d53ce2bf4b33d37ce";
       public            postgres    false    227            �           2606    25167 (   companies UQ_afb91befc95458033dd4d74bd06 
   CONSTRAINT     m   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT "UQ_afb91befc95458033dd4d74bd06" UNIQUE (name_company);
 T   ALTER TABLE ONLY public.companies DROP CONSTRAINT "UQ_afb91befc95458033dd4d74bd06";
       public            postgres    false    234            �           2606    25172 $   state UQ_f307120d3537ff14642242eb2d3 
   CONSTRAINT     g   ALTER TABLE ONLY public.state
    ADD CONSTRAINT "UQ_f307120d3537ff14642242eb2d3" UNIQUE (name_state);
 P   ALTER TABLE ONLY public.state DROP CONSTRAINT "UQ_f307120d3537ff14642242eb2d3";
       public            postgres    false    227            ~           1259    25091    IXFK_batch_line_type    INDEX     P   CREATE INDEX "IXFK_batch_line_type" ON public.batch USING btree (id_line_type);
 *   DROP INDEX public."IXFK_batch_line_type";
       public            postgres    false    215                       1259    25092    IXFK_batch_product    INDEX     L   CREATE INDEX "IXFK_batch_product" ON public.batch USING btree (id_product);
 (   DROP INDEX public."IXFK_batch_product";
       public            postgres    false    215            �           1259    25093    IXFK_batch_unit    INDEX     F   CREATE INDEX "IXFK_batch_unit" ON public.batch USING btree (id_unit);
 %   DROP INDEX public."IXFK_batch_unit";
       public            postgres    false    215            �           1259    25094    IXFK_line_type_ueb    INDEX     L   CREATE INDEX "IXFK_line_type_ueb" ON public.line_type USING btree (id_ueb);
 (   DROP INDEX public."IXFK_line_type_ueb";
       public            postgres    false    221            �           1259    25095    IXFK_product_family_company    INDEX     ^   CREATE INDEX "IXFK_product_family_company" ON public.product_family USING btree (id_company);
 1   DROP INDEX public."IXFK_product_family_company";
       public            postgres    false    224            �           1259    25096    IXFK_product_product_family    INDEX     ^   CREATE INDEX "IXFK_product_product_family" ON public.product USING btree (id_product_family);
 1   DROP INDEX public."IXFK_product_product_family";
       public            postgres    false    223            �           1259    25097    IXFK_product_ueb    INDEX     H   CREATE INDEX "IXFK_product_ueb" ON public.product USING btree (id_ueb);
 &   DROP INDEX public."IXFK_product_ueb";
       public            postgres    false    223            �           1259    25098    IXFK_ueb_company    INDEX     H   CREATE INDEX "IXFK_ueb_company" ON public.ueb USING btree (id_company);
 &   DROP INDEX public."IXFK_ueb_company";
       public            postgres    false    229            �           1259    25099    IXFK_unit_destination    INDEX     R   CREATE INDEX "IXFK_unit_destination" ON public.unit USING btree (id_destination);
 +   DROP INDEX public."IXFK_unit_destination";
       public            postgres    false    231            �           1259    25100    IXFK_unit_state    INDEX     F   CREATE INDEX "IXFK_unit_state" ON public.unit USING btree (id_state);
 %   DROP INDEX public."IXFK_unit_state";
       public            postgres    false    231            �           2606    25101    batch FK_batch_line_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_batch_line_type" FOREIGN KEY (id_line_type) REFERENCES public.line_type(id_line_type) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_batch_line_type";
       public          postgres    false    215    4747    221            �           2606    25106    batch FK_batch_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_batch_product" FOREIGN KEY (id_product) REFERENCES public.product(id_product) ON UPDATE CASCADE ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_batch_product";
       public          postgres    false    215    4751    223            �           2606    25111    batch FK_batch_unit    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT "FK_batch_unit" FOREIGN KEY (id_unit) REFERENCES public.unit(id_unit) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY public.batch DROP CONSTRAINT "FK_batch_unit";
       public          postgres    false    215    4767    231            �           2606    25116    line_type FK_line_type_ueb    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_type
    ADD CONSTRAINT "FK_line_type_ueb" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.line_type DROP CONSTRAINT "FK_line_type_ueb";
       public          postgres    false    221    4763    229            �           2606    25121 (   product_family FK_product_family_company    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_family
    ADD CONSTRAINT "FK_product_family_company" FOREIGN KEY (id_company) REFERENCES public.company(id_company) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.product_family DROP CONSTRAINT "FK_product_family_company";
       public          postgres    false    224    4740    217            �           2606    25126 !   product FK_product_product_family    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_product_product_family" FOREIGN KEY (id_product_family) REFERENCES public.product_family(id_product_family) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_product_product_family";
       public          postgres    false    224    4754    223            �           2606    25131    product FK_product_ueb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_product_ueb" FOREIGN KEY (id_ueb) REFERENCES public.ueb(id_ueb) ON UPDATE CASCADE ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_product_ueb";
       public          postgres    false    4763    223    229            �           2606    25136    ueb FK_ueb_company    FK CONSTRAINT     �   ALTER TABLE ONLY public.ueb
    ADD CONSTRAINT "FK_ueb_company" FOREIGN KEY (id_company) REFERENCES public.company(id_company) ON UPDATE CASCADE ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.ueb DROP CONSTRAINT "FK_ueb_company";
       public          postgres    false    229    4740    217            �           2606    25141    unit FK_unit_destination    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_unit_destination" FOREIGN KEY (id_destination) REFERENCES public.destination(id_destination) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_unit_destination";
       public          postgres    false    231    4744    219            �           2606    25146    unit FK_unit_state    FK CONSTRAINT     �   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT "FK_unit_state" FOREIGN KEY (id_state) REFERENCES public.state(id_state) ON UPDATE CASCADE ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.unit DROP CONSTRAINT "FK_unit_state";
       public          postgres    false    4756    231    227            =      x������ � �      P      x������ � �      ?      x�3�t�tv������ '&      A      x������ � �      C      x������ � �      E      x������ � �      F      x������ � �      I   �   x�3�4�H�K�L�+IUHIUH,(�OJL�<�9O!1/1��ڒ��D.3N#TuE�e��`U@^NNj^bJ�&��1��Ԓ�����$�%�	�\^Ybq*���)nG�e]��ZQ T�����Z��24�4#�d�n�:GG�=...  W%      K      x������ � �      M      x������ � �     