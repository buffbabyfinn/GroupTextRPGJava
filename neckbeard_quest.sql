PGDMP     1    9    
            t           neckbeard_quest    9.3.11    9.3.11 +    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16816    neckbeard_quest    DATABASE     �   CREATE DATABASE neckbeard_quest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE neckbeard_quest;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    7                        3079    11750    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16879    battle    TABLE     t   CREATE TABLE battle (
    id integer NOT NULL,
    hero_id integer,
    monster_id integer,
    hero_win boolean
);
    DROP TABLE public.battle;
       public         postgres    false    7            �            1259    16882    battle_id_seq    SEQUENCE     o   CREATE SEQUENCE battle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.battle_id_seq;
       public       postgres    false    174    7            �           0    0    battle_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE battle_id_seq OWNED BY battle.id;
            public       postgres    false    175            �            1259    16825    hero    TABLE     F  CREATE TABLE hero (
    id integer NOT NULL,
    beard_choice integer,
    name character varying,
    experience integer,
    gold integer,
    attack integer,
    defense integer,
    speed integer,
    stamina integer,
    level integer,
    exp_to_next_level integer,
    treasure_one boolean,
    treasure_two boolean
);
    DROP TABLE public.hero;
       public         postgres    false    7            �            1259    16831    hero_id_seq    SEQUENCE     m   CREATE SEQUENCE hero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.hero_id_seq;
       public       postgres    false    171    7            �           0    0    hero_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE hero_id_seq OWNED BY hero.id;
            public       postgres    false    172            �            1259    16884    level    TABLE     H   CREATE TABLE level (
    id integer NOT NULL,
    experience integer
);
    DROP TABLE public.level;
       public         postgres    false    7            �            1259    16887    level_id_seq    SEQUENCE     n   CREATE SEQUENCE level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.level_id_seq;
       public       postgres    false    176    7            �           0    0    level_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE level_id_seq OWNED BY level.id;
            public       postgres    false    177            �            1259    16889    monster    TABLE       CREATE TABLE monster (
    id integer NOT NULL,
    monster_name character varying,
    monster_defense integer,
    monster_attack integer,
    monster_gold integer,
    monster_speed integer,
    monster_stamina integer,
    monster_exp integer,
    monster_level integer
);
    DROP TABLE public.monster;
       public         postgres    false    7            �            1259    16841    monster_id_seq    SEQUENCE     p   CREATE SEQUENCE monster_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.monster_id_seq;
       public       postgres    false    178    7            �           0    0    monster_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE monster_id_seq OWNED BY monster.id;
            public       postgres    false    173            �            1259    16912    players    TABLE     s   CREATE TABLE players (
    id integer NOT NULL,
    user_name character varying,
    password character varying
);
    DROP TABLE public.players;
       public         postgres    false    7            �            1259    16910    players_id_seq    SEQUENCE     p   CREATE SEQUENCE players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.players_id_seq;
       public       postgres    false    7    180            �           0    0    players_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE players_id_seq OWNED BY players.id;
            public       postgres    false    179            ;           2604    16940    id    DEFAULT     X   ALTER TABLE ONLY battle ALTER COLUMN id SET DEFAULT nextval('battle_id_seq'::regclass);
 8   ALTER TABLE public.battle ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    174            :           2604    16941    id    DEFAULT     T   ALTER TABLE ONLY hero ALTER COLUMN id SET DEFAULT nextval('hero_id_seq'::regclass);
 6   ALTER TABLE public.hero ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    171            <           2604    16943    id    DEFAULT     V   ALTER TABLE ONLY level ALTER COLUMN id SET DEFAULT nextval('level_id_seq'::regclass);
 7   ALTER TABLE public.level ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    176            =           2604    16944    id    DEFAULT     Z   ALTER TABLE ONLY monster ALTER COLUMN id SET DEFAULT nextval('monster_id_seq'::regclass);
 9   ALTER TABLE public.monster ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    173    178    178            >           2604    16915    id    DEFAULT     Z   ALTER TABLE ONLY players ALTER COLUMN id SET DEFAULT nextval('players_id_seq'::regclass);
 9   ALTER TABLE public.players ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    180    179    180            �          0    16879    battle 
   TABLE DATA               <   COPY battle (id, hero_id, monster_id, hero_win) FROM stdin;
    public       postgres    false    174   �)       �           0    0    battle_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('battle_id_seq', 1, false);
            public       postgres    false    175            �          0    16825    hero 
   TABLE DATA               �   COPY hero (id, beard_choice, name, experience, gold, attack, defense, speed, stamina, level, exp_to_next_level, treasure_one, treasure_two) FROM stdin;
    public       postgres    false    171   �)       �           0    0    hero_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('hero_id_seq', 89, true);
            public       postgres    false    172            �          0    16884    level 
   TABLE DATA               (   COPY level (id, experience) FROM stdin;
    public       postgres    false    176   �+       �           0    0    level_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('level_id_seq', 25, true);
            public       postgres    false    177            �          0    16889    monster 
   TABLE DATA               �   COPY monster (id, monster_name, monster_defense, monster_attack, monster_gold, monster_speed, monster_stamina, monster_exp, monster_level) FROM stdin;
    public       postgres    false    178   �+       �           0    0    monster_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('monster_id_seq', 257, true);
            public       postgres    false    173            �          0    16912    players 
   TABLE DATA               3   COPY players (id, user_name, password) FROM stdin;
    public       postgres    false    180   D/       �           0    0    players_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('players_id_seq', 14, true);
            public       postgres    false    179            B           2606    16904    battle_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY battle
    ADD CONSTRAINT battle_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.battle DROP CONSTRAINT battle_pkey;
       public         postgres    false    174    174            @           2606    16867 	   hero_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY hero
    ADD CONSTRAINT hero_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.hero DROP CONSTRAINT hero_pkey;
       public         postgres    false    171    171            D           2606    16906 
   level_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY level
    ADD CONSTRAINT level_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.level DROP CONSTRAINT level_pkey;
       public         postgres    false    176    176            F           2606    16908    monster_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY monster
    ADD CONSTRAINT monster_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.monster DROP CONSTRAINT monster_pkey;
       public         postgres    false    178    178            H           2606    16920    players_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public         postgres    false    180    180            �      x������ � �      �   �  x�m��N�@�����j��K�4ј4M�7(6Ei(�����n�L[��3gΌ1��n<h0����	4�� `����{�RB[d��o9�#�
d�����N��i"3EK�χሜ�0�XR�#�.+�^p�8��Pڡ�<�3-���Y��2u��~���Ru��$�c�r�,�Q"eր\��UfLD��s�L��9���G��C�&�!Ff����$��4�ڣ�1������!*�R�G���|Dɹ���0���%%k���lb�V-�b�B=N�B�2�>������Q��t���V9��{qj�)Dځ�?�z���ea�T�s�$�	{I![+"w�Ɏ(�d���M���Gg�xK�=�o���'�D*�F��fa�LJ�͓���MP!��jq��u��}Q���(      �   F   x�˹�@ B���{��b�u��|����8q�K�p�k.>p��c�� <��ȟ,�&�E����      �   A  x��W�N1<�S�[m��k+����
R�T��ҧ��vv��1B����$^;/�~�����=��ݿ�<ޞ.a�I��z��pu>�!�!�AR�C�V�WZ�GHҟ��*�Q��s�T�BB���Vm���.~c�|�z> �z_�VfÄu��G�0��ʁ>W'��D絒��ro�a�%!�ɀs9��ƀRG����T�+ �c�b�d�b�ޅ�4J�Z�]J+�����'ڮJ���*�@L:Kc���ƌ'a�J�vL�g�Q�E�kna�4����?� ��|��e�S?�yˊ�����8Y�����rV�����%K%%T�i�� ��}m��;�C��(Ȏ��C�D�6|���P�.�*�2>-�t�,S�
�~T�L���&a]'��Q���f]�UZ�`H�:���%�N�|ՊV��>lFu¨a�ĺa��0�dvW;�[�&�۟"���K�N���ֆ�I��2J?�h�g+i��L�)u�赀T�<a�b�*4P!+HH!�x�AwpLȬ$���w9��!��"x��֨
�Ó�R�k�����P��4?U" ���	�g�SF���K	u�L�!�MHJ
h�"�.�y��M&Kt/#�<��"x���x��cr��������ÿ����o�ǌ"I�oj?<�}}�}�_��vG]Ĉ������N۶���4Ъ�~�V4�VD��k�\,�l;6T~��}x��L��?��c���iP��c��I��ei6��2�12��Y�*o@�.:C���?�D���}�i��)�2�I�zike�Ք�#�$�r�RAH|�^��hJ      �   �   x�U��
�0�ϳ#nZ��ã�4�&�6K����*��v`C�
6Lf��{I5�e�?��逫����̣����������XE"�.xe��e��i���"fh(eA-!L��$��G_,T�X]�7S�w�تJ �a�θ���JA�     