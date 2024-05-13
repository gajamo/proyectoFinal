PGDMP  	    %                |            carritoCompra    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    carritoCompra    DATABASE     �   CREATE DATABASE "carritoCompra" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "carritoCompra";
                postgres    false            �            1259    16419    detalle_orden_venta    TABLE     �   CREATE TABLE public.detalle_orden_venta (
    id integer NOT NULL,
    orden_id integer,
    producto_id integer,
    cantidad integer
);
 '   DROP TABLE public.detalle_orden_venta;
       public         heap    postgres    false            �            1259    16418    detalle_orden_venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_orden_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.detalle_orden_venta_id_seq;
       public          postgres    false    220                       0    0    detalle_orden_venta_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.detalle_orden_venta_id_seq OWNED BY public.detalle_orden_venta.id;
          public          postgres    false    219            �            1259    16409    ordenes_ventas    TABLE     �   CREATE TABLE public.ordenes_ventas (
    id integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total numeric NOT NULL,
    estado character varying(50) NOT NULL
);
 "   DROP TABLE public.ordenes_ventas;
       public         heap    postgres    false            �            1259    16408    ordenes_ventas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ordenes_ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ordenes_ventas_id_seq;
       public          postgres    false    218                       0    0    ordenes_ventas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ordenes_ventas_id_seq OWNED BY public.ordenes_ventas.id;
          public          postgres    false    217            �            1259    16400 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price numeric NOT NULL,
    description text,
    imageurl character varying(255),
    stock integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16399    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    216                       0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    215            ]           2604    16422    detalle_orden_venta id    DEFAULT     �   ALTER TABLE ONLY public.detalle_orden_venta ALTER COLUMN id SET DEFAULT nextval('public.detalle_orden_venta_id_seq'::regclass);
 E   ALTER TABLE public.detalle_orden_venta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            [           2604    16412    ordenes_ventas id    DEFAULT     v   ALTER TABLE ONLY public.ordenes_ventas ALTER COLUMN id SET DEFAULT nextval('public.ordenes_ventas_id_seq'::regclass);
 @   ALTER TABLE public.ordenes_ventas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    16403    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16419    detalle_orden_venta 
   TABLE DATA           R   COPY public.detalle_orden_venta (id, orden_id, producto_id, cantidad) FROM stdin;
    public          postgres    false    220   "       �          0    16409    ordenes_ventas 
   TABLE DATA           B   COPY public.ordenes_ventas (id, fecha, total, estado) FROM stdin;
    public          postgres    false    218   ?       �          0    16400 	   productos 
   TABLE DATA           R   COPY public.productos (id, name, price, description, imageurl, stock) FROM stdin;
    public          postgres    false    216   \                  0    0    detalle_orden_venta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detalle_orden_venta_id_seq', 1, false);
          public          postgres    false    219                       0    0    ordenes_ventas_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ordenes_ventas_id_seq', 1, false);
          public          postgres    false    217                       0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 1, false);
          public          postgres    false    215            c           2606    16424 ,   detalle_orden_venta detalle_orden_venta_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.detalle_orden_venta
    ADD CONSTRAINT detalle_orden_venta_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.detalle_orden_venta DROP CONSTRAINT detalle_orden_venta_pkey;
       public            postgres    false    220            a           2606    16417 "   ordenes_ventas ordenes_ventas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ordenes_ventas
    ADD CONSTRAINT ordenes_ventas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ordenes_ventas DROP CONSTRAINT ordenes_ventas_pkey;
       public            postgres    false    218            _           2606    16407    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    216            d           2606    16425 5   detalle_orden_venta detalle_orden_venta_orden_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_orden_venta
    ADD CONSTRAINT detalle_orden_venta_orden_id_fkey FOREIGN KEY (orden_id) REFERENCES public.ordenes_ventas(id);
 _   ALTER TABLE ONLY public.detalle_orden_venta DROP CONSTRAINT detalle_orden_venta_orden_id_fkey;
       public          postgres    false    218    4705    220            e           2606    16430 8   detalle_orden_venta detalle_orden_venta_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_orden_venta
    ADD CONSTRAINT detalle_orden_venta_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.productos(id);
 b   ALTER TABLE ONLY public.detalle_orden_venta DROP CONSTRAINT detalle_orden_venta_producto_id_fkey;
       public          postgres    false    4703    220    216            �      x������ � �      �      x������ � �      �      x������ � �     