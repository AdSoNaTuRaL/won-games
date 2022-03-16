PGDMP                         z            wongames    12.4 (Debian 12.4-1.pgdg100+1)    12.4 (Debian 12.4-1.pgdg100+1) *   `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            c           1262    43682    wongames    DATABASE     x   CREATE DATABASE wongames WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE wongames;
                wongames    false            �            1259    44038    banners    TABLE     O  CREATE TABLE public.banners (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.banners;
       public         heap    wongames    false            �            1259    44051    banners_components    TABLE       CREATE TABLE public.banners_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    banner_id integer NOT NULL
);
 &   DROP TABLE public.banners_components;
       public         heap    wongames    false            �            1259    44049    banners_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.banners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.banners_components_id_seq;
       public          wongames    false    249            d           0    0    banners_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.banners_components_id_seq OWNED BY public.banners_components.id;
          public          wongames    false    248            �            1259    44036    banners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.banners_id_seq;
       public          wongames    false    247            e           0    0    banners_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;
          public          wongames    false    246            �            1259    43837 
   categories    TABLE     _  CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.categories;
       public         heap    wongames    false            �            1259    43925 "   categories_games__games_categories    TABLE     �   CREATE TABLE public.categories_games__games_categories (
    id integer NOT NULL,
    game_id integer,
    category_id integer
);
 6   DROP TABLE public.categories_games__games_categories;
       public         heap    wongames    false            �            1259    43923 )   categories_games__games_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_games__games_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.categories_games__games_categories_id_seq;
       public          wongames    false    237            f           0    0 )   categories_games__games_categories_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.categories_games__games_categories_id_seq OWNED BY public.categories_games__games_categories.id;
          public          wongames    false    236            �            1259    43835    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          wongames    false    227            g           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          wongames    false    226            �            1259    44016    components_page_buttons    TABLE     �   CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    link character varying(255)
);
 +   DROP TABLE public.components_page_buttons;
       public         heap    wongames    false            �            1259    44014    components_page_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_buttons_id_seq;
       public          wongames    false    243            h           0    0    components_page_buttons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;
          public          wongames    false    242            �            1259    44082    components_page_highlights    TABLE     �   CREATE TABLE public.components_page_highlights (
    id integer NOT NULL,
    title character varying(255),
    subtitle text,
    "buttonLabel" character varying(255),
    "buttonLink" character varying(255),
    alignment character varying(255)
);
 .   DROP TABLE public.components_page_highlights;
       public         heap    wongames    false            �            1259    44080 !   components_page_highlights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_highlights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_page_highlights_id_seq;
       public          wongames    false    251            i           0    0 !   components_page_highlights_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_page_highlights_id_seq OWNED BY public.components_page_highlights.id;
          public          wongames    false    250            �            1259    44093    components_page_popular_games    TABLE     q   CREATE TABLE public.components_page_popular_games (
    id integer NOT NULL,
    title character varying(255)
);
 1   DROP TABLE public.components_page_popular_games;
       public         heap    wongames    false            �            1259    44101 $   components_page_popular_games__games    TABLE     �   CREATE TABLE public.components_page_popular_games__games (
    id integer NOT NULL,
    components_page_popular_game_id integer,
    game_id integer
);
 8   DROP TABLE public.components_page_popular_games__games;
       public         heap    wongames    false            �            1259    44099 +   components_page_popular_games__games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_popular_games__games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_page_popular_games__games_id_seq;
       public          wongames    false    255            j           0    0 +   components_page_popular_games__games_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_page_popular_games__games_id_seq OWNED BY public.components_page_popular_games__games.id;
          public          wongames    false    254                       1259    44109 (   components_page_popular_games_components    TABLE     0  CREATE TABLE public.components_page_popular_games_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_popular_game_id integer NOT NULL
);
 <   DROP TABLE public.components_page_popular_games_components;
       public         heap    wongames    false                        1259    44107 /   components_page_popular_games_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_popular_games_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_page_popular_games_components_id_seq;
       public          wongames    false    257            k           0    0 /   components_page_popular_games_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_popular_games_components_id_seq OWNED BY public.components_page_popular_games_components.id;
          public          wongames    false    256            �            1259    44091 $   components_page_popular_games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_popular_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_page_popular_games_id_seq;
       public          wongames    false    253            l           0    0 $   components_page_popular_games_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_page_popular_games_id_seq OWNED BY public.components_page_popular_games.id;
          public          wongames    false    252            �            1259    44027    components_page_ribbons    TABLE     �   CREATE TABLE public.components_page_ribbons (
    id integer NOT NULL,
    text character varying(255),
    color character varying(255),
    sizes character varying(255),
    size character varying(255)
);
 +   DROP TABLE public.components_page_ribbons;
       public         heap    wongames    false            �            1259    44025    components_page_ribbons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_ribbons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_ribbons_id_seq;
       public          wongames    false    245            m           0    0    components_page_ribbons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_ribbons_id_seq OWNED BY public.components_page_ribbons.id;
          public          wongames    false    244                       1259    44125    components_page_sections    TABLE     l   CREATE TABLE public.components_page_sections (
    id integer NOT NULL,
    title character varying(255)
);
 ,   DROP TABLE public.components_page_sections;
       public         heap    wongames    false                       1259    44133 #   components_page_sections_components    TABLE     &  CREATE TABLE public.components_page_sections_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_id integer NOT NULL
);
 7   DROP TABLE public.components_page_sections_components;
       public         heap    wongames    false                       1259    44131 *   components_page_sections_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_sections_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_page_sections_components_id_seq;
       public          wongames    false    261            n           0    0 *   components_page_sections_components_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_page_sections_components_id_seq OWNED BY public.components_page_sections_components.id;
          public          wongames    false    260                       1259    44123    components_page_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_page_sections_id_seq;
       public          wongames    false    259            o           0    0    components_page_sections_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_page_sections_id_seq OWNED BY public.components_page_sections.id;
          public          wongames    false    258            �            1259    43685 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    wongames    false            �            1259    43683    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          wongames    false    203            p           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          wongames    false    202            �            1259    43871 
   developers    TABLE     _  CREATE TABLE public.developers (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.developers;
       public         heap    wongames    false            �            1259    43933 "   developers_games__games_developers    TABLE     �   CREATE TABLE public.developers_games__games_developers (
    id integer NOT NULL,
    game_id integer,
    developer_id integer
);
 6   DROP TABLE public.developers_games__games_developers;
       public         heap    wongames    false            �            1259    43931 )   developers_games__games_developers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.developers_games__games_developers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.developers_games__games_developers_id_seq;
       public          wongames    false    239            q           0    0 )   developers_games__games_developers_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.developers_games__games_developers_id_seq OWNED BY public.developers_games__games_developers.id;
          public          wongames    false    238            �            1259    43869    developers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.developers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.developers_id_seq;
       public          wongames    false    231            r           0    0    developers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.developers_id_seq OWNED BY public.developers.id;
          public          wongames    false    230                       1259    44265    email_templates    TABLE     �  CREATE TABLE public.email_templates (
    id integer NOT NULL,
    design jsonb,
    name character varying(255),
    subject character varying(255),
    "bodyHtml" text,
    "bodyText" text,
    enabled boolean,
    tags jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.email_templates;
       public         heap    wongames    false                       1259    44263    email_templates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.email_templates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.email_templates_id_seq;
       public          wongames    false    279            s           0    0    email_templates_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.email_templates_id_seq OWNED BY public.email_templates.id;
          public          wongames    false    278            �            1259    43907    games    TABLE     �  CREATE TABLE public.games (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    short_description text,
    description text,
    price numeric(10,2),
    release_date date,
    rating character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    publisher integer
);
    DROP TABLE public.games;
       public         heap    wongames    false            �            1259    43905    games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.games_id_seq;
       public          wongames    false    235            t           0    0    games_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;
          public          wongames    false    234            �            1259    43941     games_platforms__platforms_games    TABLE     �   CREATE TABLE public.games_platforms__platforms_games (
    id integer NOT NULL,
    game_id integer,
    platform_id integer
);
 4   DROP TABLE public.games_platforms__platforms_games;
       public         heap    wongames    false            �            1259    43939 '   games_platforms__platforms_games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.games_platforms__platforms_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.games_platforms__platforms_games_id_seq;
       public          wongames    false    241            u           0    0 '   games_platforms__platforms_games_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.games_platforms__platforms_games_id_seq OWNED BY public.games_platforms__platforms_games.id;
          public          wongames    false    240                       1259    44149    homes    TABLE       CREATE TABLE public.homes (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.homes;
       public         heap    wongames    false            	           1259    44159    homes_components    TABLE        CREATE TABLE public.homes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    home_id integer NOT NULL
);
 $   DROP TABLE public.homes_components;
       public         heap    wongames    false                       1259    44157    homes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.homes_components_id_seq;
       public          wongames    false    265            v           0    0    homes_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.homes_components_id_seq OWNED BY public.homes_components.id;
          public          wongames    false    264                       1259    44147    homes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.homes_id_seq;
       public          wongames    false    263            w           0    0    homes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.homes_id_seq OWNED BY public.homes.id;
          public          wongames    false    262            �            1259    43821    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    wongames    false            �            1259    43819    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          wongames    false    225            x           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          wongames    false    224                       1259    44232    orders    TABLE     �  CREATE TABLE public.orders (
    id integer NOT NULL,
    "user" integer,
    total_in_cents bigint NOT NULL,
    payment_intent_id character varying(255),
    card_brand character varying(255),
    card_last4 character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.orders;
       public         heap    wongames    false                       1259    44245    orders__games    TABLE     j   CREATE TABLE public.orders__games (
    id integer NOT NULL,
    order_id integer,
    game_id integer
);
 !   DROP TABLE public.orders__games;
       public         heap    wongames    false                       1259    44243    orders__games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders__games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.orders__games_id_seq;
       public          wongames    false    277            y           0    0    orders__games_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.orders__games_id_seq OWNED BY public.orders__games.id;
          public          wongames    false    276                       1259    44230    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          wongames    false    275            z           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          wongames    false    274            �            1259    43854 	   platforms    TABLE     ^  CREATE TABLE public.platforms (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.platforms;
       public         heap    wongames    false            �            1259    43852    platforms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.platforms_id_seq;
       public          wongames    false    229            {           0    0    platforms_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;
          public          wongames    false    228            �            1259    43888 
   publishers    TABLE     _  CREATE TABLE public.publishers (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.publishers;
       public         heap    wongames    false            �            1259    43886    publishers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.publishers_id_seq;
       public          wongames    false    233            |           0    0    publishers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.publishers_id_seq OWNED BY public.publishers.id;
          public          wongames    false    232                       1259    44176    recommendeds    TABLE       CREATE TABLE public.recommendeds (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.recommendeds;
       public         heap    wongames    false                       1259    44186    recommendeds_components    TABLE       CREATE TABLE public.recommendeds_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    recommended_id integer NOT NULL
);
 +   DROP TABLE public.recommendeds_components;
       public         heap    wongames    false                       1259    44184    recommendeds_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recommendeds_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recommendeds_components_id_seq;
       public          wongames    false    269            }           0    0    recommendeds_components_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recommendeds_components_id_seq OWNED BY public.recommendeds_components.id;
          public          wongames    false    268            
           1259    44174    recommendeds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recommendeds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.recommendeds_id_seq;
       public          wongames    false    267            ~           0    0    recommendeds_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.recommendeds_id_seq OWNED BY public.recommendeds.id;
          public          wongames    false    266            �            1259    43737    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    wongames    false            �            1259    43735    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          wongames    false    211                       0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          wongames    false    210            �            1259    43707    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    wongames    false            �            1259    43705    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          wongames    false    207            �           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          wongames    false    206            �            1259    43720    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    wongames    false            �            1259    43718    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          wongames    false    209            �           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          wongames    false    208            �            1259    43750    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    wongames    false            �            1259    43748    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          wongames    false    213            �           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          wongames    false    212            �            1259    43696    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    wongames    false            �            1259    43694    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          wongames    false    205            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          wongames    false    204            �            1259    43797    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    wongames    false            �            1259    43795    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          wongames    false    221            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          wongames    false    220            �            1259    43810    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    wongames    false            �            1259    43808    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          wongames    false    223            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          wongames    false    222            �            1259    43758    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    wongames    false            �            1259    43756 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          wongames    false    215            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          wongames    false    214            �            1259    43769    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    wongames    false            �            1259    43767    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          wongames    false    217            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          wongames    false    216            �            1259    43782    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    wongames    false            �            1259    43780    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          wongames    false    219            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          wongames    false    218                       1259    44209 	   wishlists    TABLE       CREATE TABLE public.wishlists (
    id integer NOT NULL,
    "user" integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.wishlists;
       public         heap    wongames    false                       1259    44219    wishlists__games    TABLE     p   CREATE TABLE public.wishlists__games (
    id integer NOT NULL,
    wishlist_id integer,
    game_id integer
);
 $   DROP TABLE public.wishlists__games;
       public         heap    wongames    false                       1259    44217    wishlists__games_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlists__games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wishlists__games_id_seq;
       public          wongames    false    273            �           0    0    wishlists__games_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wishlists__games_id_seq OWNED BY public.wishlists__games.id;
          public          wongames    false    272                       1259    44207    wishlists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.wishlists_id_seq;
       public          wongames    false    271            �           0    0    wishlists_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.wishlists_id_seq OWNED BY public.wishlists.id;
          public          wongames    false    270                       2604    44041 
   banners id    DEFAULT     h   ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);
 9   ALTER TABLE public.banners ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    246    247    247                       2604    44054    banners_components id    DEFAULT     ~   ALTER TABLE ONLY public.banners_components ALTER COLUMN id SET DEFAULT nextval('public.banners_components_id_seq'::regclass);
 D   ALTER TABLE public.banners_components ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    249    248    249            �           2604    43840    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    227    226    227            �           2604    43928 %   categories_games__games_categories id    DEFAULT     �   ALTER TABLE ONLY public.categories_games__games_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_games__games_categories_id_seq'::regclass);
 T   ALTER TABLE public.categories_games__games_categories ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    236    237    237                        2604    44019    components_page_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);
 I   ALTER TABLE public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    242    243    243                       2604    44085    components_page_highlights id    DEFAULT     �   ALTER TABLE ONLY public.components_page_highlights ALTER COLUMN id SET DEFAULT nextval('public.components_page_highlights_id_seq'::regclass);
 L   ALTER TABLE public.components_page_highlights ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    251    250    251                       2604    44096     components_page_popular_games id    DEFAULT     �   ALTER TABLE ONLY public.components_page_popular_games ALTER COLUMN id SET DEFAULT nextval('public.components_page_popular_games_id_seq'::regclass);
 O   ALTER TABLE public.components_page_popular_games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    252    253    253                       2604    44104 '   components_page_popular_games__games id    DEFAULT     �   ALTER TABLE ONLY public.components_page_popular_games__games ALTER COLUMN id SET DEFAULT nextval('public.components_page_popular_games__games_id_seq'::regclass);
 V   ALTER TABLE public.components_page_popular_games__games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    254    255    255            	           2604    44112 +   components_page_popular_games_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_popular_games_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_popular_games_components_id_seq'::regclass);
 Z   ALTER TABLE public.components_page_popular_games_components ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    256    257    257                       2604    44030    components_page_ribbons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_ribbons ALTER COLUMN id SET DEFAULT nextval('public.components_page_ribbons_id_seq'::regclass);
 I   ALTER TABLE public.components_page_ribbons ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    245    244    245            
           2604    44128    components_page_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_page_sections ALTER COLUMN id SET DEFAULT nextval('public.components_page_sections_id_seq'::regclass);
 J   ALTER TABLE public.components_page_sections ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    259    258    259                       2604    44136 &   components_page_sections_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_sections_components_id_seq'::regclass);
 U   ALTER TABLE public.components_page_sections_components ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    261    260    261            �           2604    43688    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    203    202    203            �           2604    43874    developers id    DEFAULT     n   ALTER TABLE ONLY public.developers ALTER COLUMN id SET DEFAULT nextval('public.developers_id_seq'::regclass);
 <   ALTER TABLE public.developers ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    231    230    231            �           2604    43936 %   developers_games__games_developers id    DEFAULT     �   ALTER TABLE ONLY public.developers_games__games_developers ALTER COLUMN id SET DEFAULT nextval('public.developers_games__games_developers_id_seq'::regclass);
 T   ALTER TABLE public.developers_games__games_developers ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    238    239    239                       2604    44268    email_templates id    DEFAULT     x   ALTER TABLE ONLY public.email_templates ALTER COLUMN id SET DEFAULT nextval('public.email_templates_id_seq'::regclass);
 A   ALTER TABLE public.email_templates ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    278    279    279            �           2604    43910    games id    DEFAULT     d   ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);
 7   ALTER TABLE public.games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    235    234    235            �           2604    43944 #   games_platforms__platforms_games id    DEFAULT     �   ALTER TABLE ONLY public.games_platforms__platforms_games ALTER COLUMN id SET DEFAULT nextval('public.games_platforms__platforms_games_id_seq'::regclass);
 R   ALTER TABLE public.games_platforms__platforms_games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    241    240    241                       2604    44152    homes id    DEFAULT     d   ALTER TABLE ONLY public.homes ALTER COLUMN id SET DEFAULT nextval('public.homes_id_seq'::regclass);
 7   ALTER TABLE public.homes ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    263    262    263                       2604    44162    homes_components id    DEFAULT     z   ALTER TABLE ONLY public.homes_components ALTER COLUMN id SET DEFAULT nextval('public.homes_components_id_seq'::regclass);
 B   ALTER TABLE public.homes_components ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    265    264    265            �           2604    43824    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    225    224    225                       2604    44235 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    275    274    275                       2604    44248    orders__games id    DEFAULT     t   ALTER TABLE ONLY public.orders__games ALTER COLUMN id SET DEFAULT nextval('public.orders__games_id_seq'::regclass);
 ?   ALTER TABLE public.orders__games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    276    277    277            �           2604    43857    platforms id    DEFAULT     l   ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);
 ;   ALTER TABLE public.platforms ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    229    228    229            �           2604    43891    publishers id    DEFAULT     n   ALTER TABLE ONLY public.publishers ALTER COLUMN id SET DEFAULT nextval('public.publishers_id_seq'::regclass);
 <   ALTER TABLE public.publishers ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    232    233    233                       2604    44179    recommendeds id    DEFAULT     r   ALTER TABLE ONLY public.recommendeds ALTER COLUMN id SET DEFAULT nextval('public.recommendeds_id_seq'::regclass);
 >   ALTER TABLE public.recommendeds ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    266    267    267                       2604    44189    recommendeds_components id    DEFAULT     �   ALTER TABLE ONLY public.recommendeds_components ALTER COLUMN id SET DEFAULT nextval('public.recommendeds_components_id_seq'::regclass);
 I   ALTER TABLE public.recommendeds_components ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    269    268    269            �           2604    43740    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    211    210    211            �           2604    43710    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    206    207    207            �           2604    43723    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    208    209    209            �           2604    43753    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    213    212    213            �           2604    43699    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    205    204    205            �           2604    43800    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    221    220    221            �           2604    43813    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    223    222    223            �           2604    43761    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    215    214    215            �           2604    43772    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    216    217    217            �           2604    43785    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    219    218    219                       2604    44212    wishlists id    DEFAULT     l   ALTER TABLE ONLY public.wishlists ALTER COLUMN id SET DEFAULT nextval('public.wishlists_id_seq'::regclass);
 ;   ALTER TABLE public.wishlists ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    270    271    271                       2604    44222    wishlists__games id    DEFAULT     z   ALTER TABLE ONLY public.wishlists__games ALTER COLUMN id SET DEFAULT nextval('public.wishlists__games_id_seq'::regclass);
 B   ALTER TABLE public.wishlists__games ALTER COLUMN id DROP DEFAULT;
       public          wongames    false    273    272    273            =          0    44038    banners 
   TABLE DATA           t   COPY public.banners (id, title, subtitle, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    247   �~      ?          0    44051    banners_components 
   TABLE DATA           i   COPY public.banners_components (id, field, "order", component_type, component_id, banner_id) FROM stdin;
    public          wongames    false    249   �      )          0    43837 
   categories 
   TABLE DATA           r   COPY public.categories (id, name, slug, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    227   M�      3          0    43925 "   categories_games__games_categories 
   TABLE DATA           V   COPY public.categories_games__games_categories (id, game_id, category_id) FROM stdin;
    public          wongames    false    237   �      9          0    44016    components_page_buttons 
   TABLE DATA           B   COPY public.components_page_buttons (id, label, link) FROM stdin;
    public          wongames    false    243   Æ      A          0    44082    components_page_highlights 
   TABLE DATA           q   COPY public.components_page_highlights (id, title, subtitle, "buttonLabel", "buttonLink", alignment) FROM stdin;
    public          wongames    false    251   )�      C          0    44093    components_page_popular_games 
   TABLE DATA           B   COPY public.components_page_popular_games (id, title) FROM stdin;
    public          wongames    false    253   !�      E          0    44101 $   components_page_popular_games__games 
   TABLE DATA           l   COPY public.components_page_popular_games__games (id, components_page_popular_game_id, game_id) FROM stdin;
    public          wongames    false    255   k�      G          0    44109 (   components_page_popular_games_components 
   TABLE DATA           �   COPY public.components_page_popular_games_components (id, field, "order", component_type, component_id, components_page_popular_game_id) FROM stdin;
    public          wongames    false    257   ˈ      ;          0    44027    components_page_ribbons 
   TABLE DATA           O   COPY public.components_page_ribbons (id, text, color, sizes, size) FROM stdin;
    public          wongames    false    245   �      I          0    44125    components_page_sections 
   TABLE DATA           =   COPY public.components_page_sections (id, title) FROM stdin;
    public          wongames    false    259   I�      K          0    44133 #   components_page_sections_components 
   TABLE DATA           �   COPY public.components_page_sections_components (id, field, "order", component_type, component_id, components_page_section_id) FROM stdin;
    public          wongames    false    261   ��                0    43685 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          wongames    false    203   Ή      -          0    43871 
   developers 
   TABLE DATA           r   COPY public.developers (id, name, slug, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    231   -�      5          0    43933 "   developers_games__games_developers 
   TABLE DATA           W   COPY public.developers_games__games_developers (id, game_id, developer_id) FROM stdin;
    public          wongames    false    239   �      ]          0    44265    email_templates 
   TABLE DATA           �   COPY public.email_templates (id, design, name, subject, "bodyHtml", "bodyText", enabled, tags, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    279   s�      1          0    43907    games 
   TABLE DATA           �   COPY public.games (id, name, slug, short_description, description, price, release_date, rating, published_at, created_by, updated_by, created_at, updated_at, publisher) FROM stdin;
    public          wongames    false    235   N�      7          0    43941     games_platforms__platforms_games 
   TABLE DATA           T   COPY public.games_platforms__platforms_games (id, game_id, platform_id) FROM stdin;
    public          wongames    false    241   ��      M          0    44149    homes 
   TABLE DATA           a   COPY public.homes (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    263   2�      O          0    44159    homes_components 
   TABLE DATA           e   COPY public.homes_components (id, field, "order", component_type, component_id, home_id) FROM stdin;
    public          wongames    false    265   ��      '          0    43821    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    225   ��      Y          0    44232    orders 
   TABLE DATA           �   COPY public.orders (id, "user", total_in_cents, payment_intent_id, card_brand, card_last4, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    275   >�      [          0    44245    orders__games 
   TABLE DATA           >   COPY public.orders__games (id, order_id, game_id) FROM stdin;
    public          wongames    false    277   �      +          0    43854 	   platforms 
   TABLE DATA           q   COPY public.platforms (id, name, slug, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    229   {�      /          0    43888 
   publishers 
   TABLE DATA           r   COPY public.publishers (id, name, slug, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    233   ��      Q          0    44176    recommendeds 
   TABLE DATA           h   COPY public.recommendeds (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    267   �      S          0    44186    recommendeds_components 
   TABLE DATA           s   COPY public.recommendeds_components (id, field, "order", component_type, component_id, recommended_id) FROM stdin;
    public          wongames    false    269   d�                0    43737    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          wongames    false    211   ��                0    43707    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          wongames    false    207   Z�                0    43720    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          wongames    false    209   �                0    43750    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          wongames    false    213   �                0    43696    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          wongames    false    205   �      #          0    43797    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    221   	      %          0    43810    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          wongames    false    223   6�                0    43758    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          wongames    false    215   �                0    43769    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          wongames    false    217   {�      !          0    43782    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    219   ��      U          0    44209 	   wishlists 
   TABLE DATA           _   COPY public.wishlists (id, "user", created_by, updated_by, created_at, updated_at) FROM stdin;
    public          wongames    false    271   ?�      W          0    44219    wishlists__games 
   TABLE DATA           D   COPY public.wishlists__games (id, wishlist_id, game_id) FROM stdin;
    public          wongames    false    273   ��      �           0    0    banners_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.banners_components_id_seq', 4, true);
          public          wongames    false    248            �           0    0    banners_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.banners_id_seq', 2, true);
          public          wongames    false    246            �           0    0 )   categories_games__games_categories_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.categories_games__games_categories_id_seq', 260, true);
          public          wongames    false    236            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 40, true);
          public          wongames    false    226            �           0    0    components_page_buttons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 2, true);
          public          wongames    false    242            �           0    0 !   components_page_highlights_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_page_highlights_id_seq', 4, true);
          public          wongames    false    250            �           0    0 +   components_page_popular_games__games_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_page_popular_games__games_id_seq', 16, true);
          public          wongames    false    254            �           0    0 /   components_page_popular_games_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_page_popular_games_components_id_seq', 2, true);
          public          wongames    false    256            �           0    0 $   components_page_popular_games_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_page_popular_games_id_seq', 2, true);
          public          wongames    false    252            �           0    0    components_page_ribbons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_ribbons_id_seq', 2, true);
          public          wongames    false    244            �           0    0 *   components_page_sections_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_page_sections_components_id_seq', 2, true);
          public          wongames    false    260            �           0    0    components_page_sections_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_page_sections_id_seq', 3, true);
          public          wongames    false    258            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 56, true);
          public          wongames    false    202            �           0    0 )   developers_games__games_developers_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.developers_games__games_developers_id_seq', 86, true);
          public          wongames    false    238            �           0    0    developers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.developers_id_seq', 110, true);
          public          wongames    false    230            �           0    0    email_templates_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.email_templates_id_seq', 1, true);
          public          wongames    false    278            �           0    0    games_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.games_id_seq', 94, true);
          public          wongames    false    234            �           0    0 '   games_platforms__platforms_games_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.games_platforms__platforms_games_id_seq', 122, true);
          public          wongames    false    240            �           0    0    homes_components_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.homes_components_id_seq', 4, true);
          public          wongames    false    264            �           0    0    homes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.homes_id_seq', 1, true);
          public          wongames    false    262            �           0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);
          public          wongames    false    224            �           0    0    orders__games_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.orders__games_id_seq', 36, true);
          public          wongames    false    276            �           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 28, true);
          public          wongames    false    274            �           0    0    platforms_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.platforms_id_seq', 4, true);
          public          wongames    false    228            �           0    0    publishers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.publishers_id_seq', 77, true);
          public          wongames    false    232            �           0    0    recommendeds_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.recommendeds_components_id_seq', 1, true);
          public          wongames    false    268            �           0    0    recommendeds_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.recommendeds_id_seq', 1, true);
          public          wongames    false    266            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          wongames    false    210            �           0    0    strapi_permission_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 2957, true);
          public          wongames    false    206            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          wongames    false    208            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          wongames    false    212            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          wongames    false    204            �           0    0    upload_file_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.upload_file_id_seq', 463, true);
          public          wongames    false    220            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 496, true);
          public          wongames    false    222            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 304, true);
          public          wongames    false    214            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          wongames    false    216            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 28, true);
          public          wongames    false    218            �           0    0    wishlists__games_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.wishlists__games_id_seq', 49, true);
          public          wongames    false    272            �           0    0    wishlists_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.wishlists_id_seq', 7, true);
          public          wongames    false    270            n           2606    44059 *   banners_components banners_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.banners_components
    ADD CONSTRAINT banners_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.banners_components DROP CONSTRAINT banners_components_pkey;
       public            wongames    false    249            l           2606    44048    banners banners_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.banners DROP CONSTRAINT banners_pkey;
       public            wongames    false    247            b           2606    43930 J   categories_games__games_categories categories_games__games_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.categories_games__games_categories
    ADD CONSTRAINT categories_games__games_categories_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.categories_games__games_categories DROP CONSTRAINT categories_games__games_categories_pkey;
       public            wongames    false    237            D           2606    43849 !   categories categories_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_unique;
       public            wongames    false    227            F           2606    43847    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            wongames    false    227            H           2606    43851 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            wongames    false    227            h           2606    44024 4   components_page_buttons components_page_buttons_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_buttons DROP CONSTRAINT components_page_buttons_pkey;
       public            wongames    false    243            p           2606    44090 :   components_page_highlights components_page_highlights_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_page_highlights
    ADD CONSTRAINT components_page_highlights_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_page_highlights DROP CONSTRAINT components_page_highlights_pkey;
       public            wongames    false    251            t           2606    44106 N   components_page_popular_games__games components_page_popular_games__games_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_popular_games__games
    ADD CONSTRAINT components_page_popular_games__games_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_page_popular_games__games DROP CONSTRAINT components_page_popular_games__games_pkey;
       public            wongames    false    255            v           2606    44117 V   components_page_popular_games_components components_page_popular_games_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_popular_games_components
    ADD CONSTRAINT components_page_popular_games_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_popular_games_components DROP CONSTRAINT components_page_popular_games_components_pkey;
       public            wongames    false    257            r           2606    44098 @   components_page_popular_games components_page_popular_games_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_page_popular_games
    ADD CONSTRAINT components_page_popular_games_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_page_popular_games DROP CONSTRAINT components_page_popular_games_pkey;
       public            wongames    false    253            j           2606    44035 4   components_page_ribbons components_page_ribbons_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_ribbons
    ADD CONSTRAINT components_page_ribbons_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_ribbons DROP CONSTRAINT components_page_ribbons_pkey;
       public            wongames    false    245            z           2606    44141 L   components_page_sections_components components_page_sections_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_sections_components
    ADD CONSTRAINT components_page_sections_components_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_page_sections_components DROP CONSTRAINT components_page_sections_components_pkey;
       public            wongames    false    261            x           2606    44130 6   components_page_sections components_page_sections_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_page_sections
    ADD CONSTRAINT components_page_sections_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_page_sections DROP CONSTRAINT components_page_sections_pkey;
       public            wongames    false    259                        2606    43693    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            wongames    false    203            d           2606    43938 J   developers_games__games_developers developers_games__games_developers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.developers_games__games_developers
    ADD CONSTRAINT developers_games__games_developers_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.developers_games__games_developers DROP CONSTRAINT developers_games__games_developers_pkey;
       public            wongames    false    239            P           2606    43883 !   developers developers_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.developers DROP CONSTRAINT developers_name_unique;
       public            wongames    false    231            R           2606    43881    developers developers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.developers DROP CONSTRAINT developers_pkey;
       public            wongames    false    231            T           2606    43885 !   developers developers_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.developers
    ADD CONSTRAINT developers_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.developers DROP CONSTRAINT developers_slug_unique;
       public            wongames    false    231            �           2606    44275 $   email_templates email_templates_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.email_templates DROP CONSTRAINT email_templates_pkey;
       public            wongames    false    279            \           2606    43919    games games_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.games DROP CONSTRAINT games_name_unique;
       public            wongames    false    235            ^           2606    43917    games games_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public            wongames    false    235            f           2606    43946 F   games_platforms__platforms_games games_platforms__platforms_games_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.games_platforms__platforms_games
    ADD CONSTRAINT games_platforms__platforms_games_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.games_platforms__platforms_games DROP CONSTRAINT games_platforms__platforms_games_pkey;
       public            wongames    false    241            `           2606    43921    games games_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.games DROP CONSTRAINT games_slug_unique;
       public            wongames    false    235            ~           2606    44167 &   homes_components homes_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT homes_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.homes_components DROP CONSTRAINT homes_components_pkey;
       public            wongames    false    265            |           2606    44156    homes homes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.homes
    ADD CONSTRAINT homes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.homes DROP CONSTRAINT homes_pkey;
       public            wongames    false    263            @           2606    43833 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            wongames    false    225            B           2606    43831    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            wongames    false    225            �           2606    44250     orders__games orders__games_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.orders__games
    ADD CONSTRAINT orders__games_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.orders__games DROP CONSTRAINT orders__games_pkey;
       public            wongames    false    277            �           2606    44242    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            wongames    false    275            J           2606    43866    platforms platforms_name_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_name_unique UNIQUE (name);
 I   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_name_unique;
       public            wongames    false    229            L           2606    43864    platforms platforms_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_pkey;
       public            wongames    false    229            N           2606    43868    platforms platforms_slug_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_slug_unique UNIQUE (slug);
 I   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_slug_unique;
       public            wongames    false    229            V           2606    43900 !   publishers publishers_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.publishers DROP CONSTRAINT publishers_name_unique;
       public            wongames    false    233            X           2606    43898    publishers publishers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.publishers DROP CONSTRAINT publishers_pkey;
       public            wongames    false    233            Z           2606    43904 !   publishers publishers_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.publishers DROP CONSTRAINT publishers_slug_unique;
       public            wongames    false    233            �           2606    44194 4   recommendeds_components recommendeds_components_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.recommendeds_components
    ADD CONSTRAINT recommendeds_components_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.recommendeds_components DROP CONSTRAINT recommendeds_components_pkey;
       public            wongames    false    269            �           2606    44183    recommendeds recommendeds_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.recommendeds
    ADD CONSTRAINT recommendeds_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.recommendeds DROP CONSTRAINT recommendeds_pkey;
       public            wongames    false    267            ,           2606    43747 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            wongames    false    211            .           2606    43745 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            wongames    false    211            $           2606    43717 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            wongames    false    207            &           2606    43734 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            wongames    false    209            (           2606    43732 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            wongames    false    209            *           2606    43730    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            wongames    false    209            0           2606    43755 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            wongames    false    213            "           2606    43704 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            wongames    false    205            >           2606    43818 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            wongames    false    223            <           2606    43807    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            wongames    false    221            2           2606    43766 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            wongames    false    215            4           2606    43777 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            wongames    false    217            6           2606    43779 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            wongames    false    217            8           2606    43792 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            wongames    false    219            :           2606    43794 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            wongames    false    219            �           2606    44224 &   wishlists__games wishlists__games_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wishlists__games
    ADD CONSTRAINT wishlists__games_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wishlists__games DROP CONSTRAINT wishlists__games_pkey;
       public            wongames    false    273            �           2606    44216    wishlists wishlists_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.wishlists
    ADD CONSTRAINT wishlists_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.wishlists DROP CONSTRAINT wishlists_pkey;
       public            wongames    false    271            �           2606    44060    banners_components banner_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.banners_components
    ADD CONSTRAINT banner_id_fk FOREIGN KEY (banner_id) REFERENCES public.banners(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.banners_components DROP CONSTRAINT banner_id_fk;
       public          wongames    false    249    3180    247            �           2606    44118 K   components_page_popular_games_components components_page_popular_game_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_popular_games_components
    ADD CONSTRAINT components_page_popular_game_id_fk FOREIGN KEY (components_page_popular_game_id) REFERENCES public.components_page_popular_games(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.components_page_popular_games_components DROP CONSTRAINT components_page_popular_game_id_fk;
       public          wongames    false    3186    253    257            �           2606    44142 A   components_page_sections_components components_page_section_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_sections_components
    ADD CONSTRAINT components_page_section_id_fk FOREIGN KEY (components_page_section_id) REFERENCES public.components_page_sections(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.components_page_sections_components DROP CONSTRAINT components_page_section_id_fk;
       public          wongames    false    259    261    3192            �           2606    44168    homes_components home_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homes_components
    ADD CONSTRAINT home_id_fk FOREIGN KEY (home_id) REFERENCES public.homes(id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.homes_components DROP CONSTRAINT home_id_fk;
       public          wongames    false    3196    263    265            �           2606    44195 )   recommendeds_components recommended_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.recommendeds_components
    ADD CONSTRAINT recommended_id_fk FOREIGN KEY (recommended_id) REFERENCES public.recommendeds(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.recommendeds_components DROP CONSTRAINT recommended_id_fk;
       public          wongames    false    3200    269    267            =     x�u�=N�0����C,�I6?Z	!
���q�h׀���H�i@��#�bLҀ�"~����o�d{�э�<f������'D-a�|����0 ��c~�@bB�[u4�I�@��Yr����n`��!\���L��/:Ѳ�hN8Or:����ʮL4����,����d�"��N�X���j��-��\F0��+�=��r����C�qVQϞ���C	Z>�g=��N����[C��N�)�:Hh��(��̊�E�榫8+��8f��Z0�X����6~�      ?   G   x�3�L*-)���4�L��-��K�+)�/HLO��He��8�2���*�H@�6͈ӈ˄�i e1z\\\ R�5O      )   �  x��V�n�0<����BI�}KS$A��Fl��\���H�@Q*��/%��D���cx����F�(r�V9��r��@!.�.
'8����^��/��C�y��� �?0S`����]SJ�9��(�1��G���/!��������Qm�� �x���i@�A��ۿ>�S����c��UֲR5�= [���f6�UU]X�(5*��C<꺻��]V��\��;�L�R����eΗ/P�9��j$��ϳ�)=�%�nh�h���.���L�|����B�fݑ�ˆ��a��[*�2���F!����ƒ�>�y#[���=Պ�3ZAj��)Ǐ�~���J�3J�9��rR����.�"Qh~�a�#���/�k�#����~5P���=SR�%�P�,�#�/���P���!,t/V�^�y�=�����n�d�6�F��3�Y�-��|#�~SP��ҙB}`ʄ0˩Z	Yh��/s2�N���u�R�*���%jl�k���5gP�Ҡ���J����P�-C��х�:a}�vVQ��iI�Lr��#����:���-�=�l���hd:��,�y�5x�vL�Z,��rv�x?�{�1YB1������d[G��Gf�)�����&�To�K��55���6�O^74�<��������b�����~����������>�'�q���98�      3   �  x�%�[�$!D�u1>�����cNfELLS�GE��j�oܹZ�s==�od�7w��Ν����kd*�G.����}娹An@�97�ˊ���o�O�k����X�|D&��H2>d�cd�y�|�Y�ɷ�������^!2�-#��-�'��O�Z!�<)H�Y`�#T]��X[��U��*jV;���X�t�5��� ��!r[6�#DϾF�f�5����O���'ƛ/�X���݀�5�n����|GK��Z�������{^�f�~Z[a�+�8܃N���;r��+�ŨA78�c�]������1���]�����0^{������5_�o $�Y�m@,��\�ry�A;l� �5��%u
Z��gi�4\��ޟ+}\Yk5B�v4��H���$(��nūבg9���aH������F��}-�G�����Q7fk`�{hO��=α�M�'B��i��\t��@���-8�Q���ՂT��E��Z�'�BYi��@.��?�%�����*�ϕ�e^_e^�ʼ�Ҽ�}�M����� �$�AV�����G�Q��e��V6� Q����IQ�u���p�r
�&B��Igp����r�X�K ��iȵ<�����`��K���n�f5�����d�n���<�r�&�.�D��!�HWW�H�ز%x�$�-�D�*F�2���0��H�<��biK�[� |�:�n�>�r�9D�ߺ�X-KART�D����i!�!r5��˾E]��T)�����S�$=KA�te(�e����ρ�N%2n��DŽm<yHF�x��+�/�V
�l� =<�P�0���[0_ZS:5Տ�ZC�$&N{P&��ω���(�gɏ�Q]�>�o�s���`����~���
Όh?3��7��Q��tž�;���9���4;      9   V   x�3�t*�T��/��())�����ON���/.�2466�O�LJ-*(���5207�2"�<#�(�*?O7-�()3%%5O�<���+F��� da"�      A   �   x����N�0D��W,�^���R.��
�\@��ŵ�q�㭼v�|N��?FZ.�qF�7�� ��a(���a���F,� �zacܕY�H+g�cY�y�5�C�ml�SQ��[��̭&�V���\��$�ԁ!�N��S<����K�#e.�:�DY�74��1�ssE#BMփ��٣�i,��3�QT��.�-L���<�Q�'�-8��4\3Y��Qwg�׀��R�O���      C   :   x�3���/.Q�/(�I,RpO�M-�2��/U�M�T���NU(�H-NUHK��qqq Ո�      E   P   x���1�7��`�M.�7�J�7�B�f����qWT�&)��^�K��UZ^<ƅoy���f~�����      G   8   x�3���L���NC���܂��Լ�������x�\1�1�!���M8��b���� 2��      ;   &   x�3��K-�,(��M,����/�ḾR\Fx�b���� ~��      I   .   x�3��K-WpO�M-�2�-H����KWHs���B91z\\\ X��      K   7   x�3���L���NC���܂��Լ�������x�\1P҈ˈX�F��\1z\\\ 2}�            x��=i��ƒ��_�'�}Yx�������I��c�El-�%1C�
M���x�����`��њ�@�X��bwu]]]}�ݭeZϒl�Y��j�@����&��@U�khu����)��Q��(���X$eI�#��֗a�����v�;�WU������N��$��Ӫ���4I+\�OJ��hn>Yb�'�$�O��(�^%8�}�2����OQ�V��z~�
���	I��g�_/	.\�U��F����IE�%�4)�_�MpJ��%Bԕ��}I^T]kt
�G��2*�%{ �)��<O9���*)�'���ɥ�@�C'&C�BD�d�J�>�-�|���\
�J�FDNQZ�Pi`�"��y^� �b4�>t��D�·�g���VA���3��*Lh�~��Q������0�3/0Ә�}H��yt�\�B��q{�v����}�3y��abhޗ��U8�
�ô&~/���;����Aȵ�'�b@y]1�Α�N���&�B������l5��-�V@~���O�e]��2ytyG%n	�|G��4D��bd.M}`�<�kBB?_^��'਺u���[�<��<�*�2!f��ǔ���@�)�B~���Vc��Y�ŌN�����$��t��o�wA�'_��2��.+�X��L�4��3U����U�*��#a��G6kq1��P��hR'i6$-QUɤ�0Í"N.!�~ b��I�g�jN�Q�=Ԁ6���IA%�`�f�3:�U�0"�R%�V��RL�z�"�v.%��jJv���gC��2%�.-����(&c1��������#��;<�˽ZC���j,�Zj�7�v���D�<g�'8�b����q�/#��qF��IN�e��y�Dp{ɺ.]%Ț���\�_Z�K�6�0�^rc%�,��BjK�N�E�"�(�#����l.��V����#1�m�H�=�l���#c�ʢΒ?k����&��D��l���jc+�US���"�b_5����^�6�L��I��F�"�\�m� �� ͒��@����x�ܬŲ���B�l).�}*1��p�WlţmZt�"�xˋk6U,W+�k�!�$�����k�܊��YcTWs�HeВ�u���3�Rf�me��N�:MM,�rI�捞�����)I �!@��z����S�u��^�IF�wA�m)��So�o-дz��o�	q��Z�6$�����Oha98Q�X�!�K�gC[H�)�0����(��=����2_�)*v�(��������t��$�_|�]���\�%{�'�<?+kV:,Z�Ic�gF�Ch�}��tҊ�x^�*�t����f���|+.h\@�/�L�ɉ��i��܀$sDgtL�?K��.�R*����e&t6��<&����J�[�O�>�jV �䋱�&i�}%�C�1|L��I�$�X*w�Z� R_�H*����J�	��ȯ�T���* i��X0�|C2�PqP��LQ�ɐ�u� ��֨�޴��@b4�<��0>ܿh��-o��Ӥ�ד�Ny�NYs�S!��?���Ey�O�Ή���Ko"�V:FD�Ǭ��<�*��
�.[��.��/�|#�,�EG?��oO����l��(>!b��ܫ3�nW�8��@4_3���&#�[?�N��Ri���8�:PM|I�/�D�4��j"Mǌ�D����(�eI�w�����'qN������H�"Vt�1KT}��L!>���j!R4h��R�@�C"W������Q:"�����b}���q�e�O�SeZc�×��������"������r�|ᲘZ2��({�-s�M���7�K2~�fL�ah�}hkD��$�h�CPj��MS+�}�s��4)ʪ-uB�h�-D��[�����reE���H9�N*�թ�w�Y ���,!W#Wf@) �`M�頌��l���kV��r:N�;{w��^�]�޻q�E�4)A���({��^��`��'�qX����vT��Ų-وAb�ޒ⃱�Xn���t�K�b�ڻMN��FiN�@��!��1{5��f��,с%",�_�Ӈ��)Jp6���췹�q�p����w��Jj۰pİ�κ���"Hh����:��I�(��P{�һTΡ*
r�J��2�TR�c�pH��J�Ww��æ'2]0�F���ub�XB�����cS�L�5X����G;Z}O%��HK[K@����/݌�M�P5n�c����਄�r&z�(�u�P�Hk�~��(��Y�(Ȫ��Z��v�S{�K�O�Yː��{V��b|���q�w�qV��aP���Y\��;�v�}|��"l�B���Cj��)}�j ��L��D_�asڷ��P�|���z�;�Q�op{�����V�
\w�HX��^4hT��f��[�7��Ĳ�S\��5�f5�İ��h��p:��j3�T+#�hڬ7x����Zp~ȄSa��0WLA�cAz�k�c��������w�ٳ�M�B��*���}�6�Ü!�U�i	(�h$.����l���(\~���C�yWs��� ��ys������!!T��\��V�-�WčS��L�9*�i��>2���K�엁V�K��H`���I �({���jb��y��3G��������r����*��a��jh �T���������J>��ci�t������3�O�x��z'@a�n��O���|a�7�Qm�Π�ۍR��. �,�F���\�W�6W� �j��%���:��d.���,�2���|ei�Ox�CI��%ཎ{���dy��#����������h���g�Q�BY�c�j�4����r�Ci���UC��dl�u��@�m�@�p^U�ӻwy�N��e͎� ������BVD��7��ɫ✲�w�4^�8����<��C{O��=��|ج׉W�őc ]��
l�e�㶢@dl*��F��8��l�K���
���jI%oV3séKI���<k3\5�5f�6�(i�Udk&�&��L�͚Rt}���t��l��h-j���b$��חӬ���B������� #�؇6%N���`ڜ�������:J�\���gb�׵���)��G��-{xTV��N~�A6��(�c]�jg��	P�l��ڴBd�3��(��VI�gV��Wh<w4��6�p����%��NT��z(��0���-��h1~߶�D�?\��_�JBkI7XKa�����u\L��:���F�~��W�~���Mw���"b�Y=��-=�Ѻ�ms�1���Il#�<��}=�6��C+�L960?��ef���:a�Ioۚ44���1.*���]0���.S�2l����'U���������ݷ����~����~��w�m��ە��$$E;�����b���h��G�5�H�;��P�r��v�.�d׷&��c�;�Ml��cf���(�����fD�H-��S��K=\�U�[+ƷrN?�s�њc`��(���դ�ܠ�4w�b�Y=�}���J,c� �`��)�T�$ƌ<��|�١'�bc>�������O�!��k;��@g<\�p;�E��R�}�XA�P���B�7 �y�zDe�%z�w٢�Af�^���p!�G�b���#�oثji��Jb��j><�%�5�������GT��\�HG�9AQ��av������#�WK>��p���MNL�[_WVO��3�pUO��x���rvv[e}�B�{7��q��n̜|*�FD�V�-)�d\�a�gT���Ǽ%pS�Ba\��q^���b�׫~�Q1|^_������l�ˮ�y�"BѤ9D�����)�_�{�S&��U����|��R�G�,���f����tx��b7Z���&�NM��l��lp)�qֶ`�#�?��K��9i=j<AYFt5���Vh�8dsY��v�2�
^�S�i��"7dU���1�<F{����E�#��".�U���Ny��4W�lI��_O�Q�2E���{{I���yl�5����������߷�/�,1���p�;WQ��<߫ J	  �n�)��4�^+��_ �c��b/��C}�8�x'�M�&#��d�����P�9�I�B�F�6��!P���xS �Mx��x�Jk6��E���ߚV�I�5b{��O`��������
�j:�Ѥ��j�k%�U�PY&NH���,���\��A"d�by�����}WI)��N��� �����[�Ӷl�<8i:��d6OiiD۔S�}\n��MD��&.Y������w��
(�͊���_�ȑ���U�Υ �Ι�_�G���Pz�Y���(��xZ�!
q���~Kgp)�	&+�7,0�񁼖���x��6�>@�ܴG
���1�����L0Z$����tVe��5�w�7�*ˬi���u������NQqĢ��z�@>
J�0�/4��9Xn�j�(���t�ZD��/�1��i�f�^*d4%��͙���錍��%����9b�菺��i����s��9p������Z������Ow�`�ao4	�;}�q�mC7)��A��1�{^ng[�pl$\�����y�I~�����*7��&��0�uY�n�Z3��.R�zk�xGܥ砘Z���P�� �X3	 @���bLz��m��l�^�^5kkM6L� w}Y��ߑ�����!�D擇D��U1�f����,�C�y� 6v�vz^�����s�#��?�q�	�����-�zID<��Vr?Z�\����Ӥ-0n%��1h�#��	@�[;�ऺ�A��v�6��,[c�'�	����
j45yY�w~Ǔ�ʹ�[��kd�iٛ����kʹ��gۘ`���t�։(`#͸$�*�p�������i��F7�W�:e�W�C����=��;'�A��H����7↰�l!��n~�*2�F�w�����v���dKga���;/�[kEo׿h=���qT��mp��7��`�WUX^�y����Gw������߿U�z�^�uì*7a���_�qR�UMu�K�fT�-�G��:��"���M�|ark�����Y~Dl���������_��.�V�돩P�_5�5�	��7.K��9|�|�̉ ��U"$i^�?
��h@�mq1@"CXÿ=��|��SF�#8���q�����U�i˿�� �P6 �H^��iN�
��0�''U>`#c�s*��O�`^���>������w������������򄀟���EO-b?�QvV��!���u�
4W��qtvT�Y#v�X��>���[�h��[���,g��=g�$_;�Ϣ(��j� ̚j��l��y1��b�9�g�N��0�$��O�w��PR�oY��AD$�ـ|�f6�DG��#�5E�B6U/~��%tL��]�o(`٨#��
\K���"�� {���;W������&�Vv��nDm����
h9��R�-��Γ�U��3q�j?Ǎ<�u/�2^�[D�?ʼE�P���o?n��"�e���c%�`���u�h�^=�W	>���r��*:.�K�wNe�{�f���t_�Z�nN킕���ߠ�#���)�g`���IX۴w����Ձ���O�?���᷋$���jQ��I�Z���ҭ�l ����%w��x���K��Ĉ�/�},�=�'�x$����YU����_��Ŗ�9T�vab��VN�\�1��B2�n;��ŭ�N�]P��ڼDſ��M��w,����������6^���b7���k�wT�U=�4b<b���� RQ�����k_�҈R�W(��
����d��uWѠ:\��a$1�]��I��0a�2�������os�����X�=$�o�-�5m���g�ɕ>N2��"HVH������r��s��^��Z������ �nM���*� Rˡ�����;n��iC�l�}j�I9���RXPZUd�{��b2��nm�zo�lxg�Gd
�-@��}7N��<��p�j5���Ə�0��O�^�zҵ��2P�����Q�<���Z�3%,�1G�ܗ�-5<�KX(:7��3��-^
P*5n"+4��N�<����	X�؊�����P�J�l�X�n�hB{�q-��3���p�kx�E��T	����u�y���)����`>�t>F:�������w��~[�-��4)�j�&�`d2
j�g�v�$���!��z��EF��3b�-�y�&7w�:3�K�e&Vm�]K��E�8?�g�7gB5S9F�aJ�g��0C�y�b��ݽ�9sh#o��e��cU�����*�Pس��q�.�Ȳcښ�Θ�$ͣ3�od��b�!�Q6�E���"�Q�Fl�!�;�g/͙:�/'[l�u�^��1w
excd��wS�ԩD_��>��fb8F�v��80�0w��wd���'7^��٠�����4�}�����      -   �	  x��Z[s�:~n~�{Ț�1����$3�U�9��:/2(Xc@.q2�~[|0��l�TY�5��u다��l��8�#��h[�2�aٺ�|q�/������ϭ����h0�����O�G1���4ӿ��f��#RH_�.��=��� �ˀ�}�8p6����'��B�t����5�������2�O<�ڥ�����5m�Js�kA�`qL Z�>G�rI�6������~�"������T?Os*r�҄�9�otl4�6�0�-0�r�k"I�Ǽ� V��UbO�>�Ŝ�tEK��A�9�]�� �� 9�)����V�����v���vjKQ�p�_�����/�*N`Z)���`RדELH�h��q���U�
4��;(����+���_�%T?�b��!UFV��`C�h�{�=\��{��L6�e���2'�y1�T���	�	V����FȃU�?�m�sۊ{�t�?s�8�ɢ�YUK1�Kc)58�f�:���ʏ���4c�tC۞�W�G|a���x����R��t�=�������$��*���#�V�2W_V3BŎ��)�<h���J�Y������Pԍ�q5o�Z�Y&<��@������,��nc�TyD��}��`F&��b*p�0*��tt�n� .�ޏ8��9��#��J�43U�T�4/(櫕@-~���u��9U�j�f���N=�����:i�L�Ag�;������:ZV����#x"���`�l^Y�T�A��'-��-��,�؜�k#�,�#p�����faɺ�i�*�CǾ�
�8̯,�9Y7?���f��l���������H�,"Z���97�,2f4��F���s��%y���+�����M﷏�_��4���n@Q�J��uJ�f�p�^q�]I65�T�TB�����f�C&�>O)�Gf�q�K���:�ك�Le4���)�ŋ���2��2ޚK��uy�*�FwFI�?bю(Ƕ����g�J.��,[A���*GE2j�)~.	MX��:E���>_rf��{��C��˄8� (#��O�z'��;��3ê�G�dc��1�u��}^f����6w��A�9�G\N*����<f;��H�y�r�����L�w��p�}��T�:�h���y��2B�����:��VzU=9#�uC��d�bB�����p�̪¬�~O� �Ъ��B������	�Έ~*O�aQJ�:�ӄ���i�9�5��W� I1�2M�J��TW�l��u�վ��Js-,i�(&S�b�߾�lx̉HY�3%�r���^g��\�H�"\LkP�=�p�_Y����E��E��I�k����d贚�Np\t[�,�:����~�<��q;9п�o��HC*�����X+
ET�d�x��^�lSc&5I�m��G�XHA�Z�\�o�Ɵq1�����5I��}<��T�F�p�C�rғ&�̈́:	�!���ZbF"�}�0���k��A��DIFPJ��l�X,U�І����Go�<���!Ci�!ֆ?n���'��a�����:�cZ�v�҆.z�"�'��m��d%�1�mzr�r�gsǻ�\����6xpF���<���澓q4�o�[Q��g��F*��O'vlp���߾ɪkf��i��_u���ޜ���m�Uǯ� n1"1��O_<&\a\`$���}A�E��f��|+��~���J�#
?18"�< !ѧWs'�g�`W��1�/�E
����m��J���9I�X�x�Ꝕlb���,pa,�#�׫���A��s[�F�Ҽ!�3�PX�`О��5�>�E�7Ϫ��NI0�7�N����Gb���6l����r�(%�'�`4�h)x�c��[�lY��V�J����	�6nJB)��j�)s�P}�"����LK�K����i�.ٔbIR�X`���f5d,k�S�0��*m�a}��r.���K�R2�)ko���4��FJ��PP{B�ʿr2l=�*�#�auo���Ww����v�XK�K��>�?��9_�?�s������!�,�����m*ƌ��~�1�uyW|N�Do�4߂����{��fUm�{���Pg6,�i&��(�7*�
���xK�QC�7U���uR��P�}Ӻ�D��\�׍���pC�0t�ޛ�|?����Y���2�)?�Ti&�OオC�:E�"��E�����oul������Ti��'.�#�ooT�SݝH�#��ۄ�|S�&�p�,���W�u.��Hc�,��W��Co�δ_�j8�������T�k��0�}�*?�BKT�{6���O�4��#�T>1
ط�ɇ��J��<�_��ugy�5~�%ҽJ�*a�P'X*a�p��;�R��#,�X@�}Y�z�|�S��s���4�����+�w�5ޕ*���	�|�uI����އ��g�k 5.e�yj������g]��NYK)�z�FC8��v&4cQ
���l����J��s�i�� W�3y      5   N  x��˱$1D�u�1���o�\:�j
�H��X�P9�2���K��QnE8���h��s<��6@��5B�	�֧u���-#,XRJ�`am�0�BN��S����1HOc,�cl�mcl�<0X���e27�2���<*#2�̇Q?�b���,�����o!�T|M��R�Q��"�uǨՊ4l����3ͩ=�ڔNA`���qhU&����]cv���p�k�C��r����-�{C��rS�H�.����}����k�Ë����<��Y���o6&8LC?�������kc��$���zj�Q���{&eƾ�y��C?�<�/��h���z	c�      ]   �  x���W�F���X�K=�O��w	��K� M�!���ֶ�,��
C9��7���V�d��^�	������|�z��o�-rg86|�~���0z����I���٫��w��w>6p�b�+���횺1���1�T<���=:@���]��]E�t,0�1�9�Y#?�1����cAԍ�Զo� ��FPslF�.�!�c3���t8�E e�������hk�q�:����u5�س�}7e9>�!R�C7��55��PTC0�5�A���
�v������g;��=�� ,��ަy�T���O~k�2J���(��b}?����+�dD����h���v��7��
�p���lG���|�yЪV]ߢ�ȏx��l~[��Ԏ`x�_N|�r�;������m�;��*�(��wv�q���P;�����M��^��Ds?��2Q�}^�]\6�%��I�����l��bq�C)�Q�8qw�Oө���Q��Ӭ��9�5k�Z��eߥޕ1�w[��sv#�>��Nl�\��W�3�='���������6��8I]Yh����<�j;'�g�n�#F��l��������~|p�r2Ԛq��(�0����Ћ��1��6 �3�7���ޗEW�����+��X������_�i՘pd�A؀���9�p�dqZn:��7t�2����D�x:ԝ�G(�l��{�8��fD�Ȍ`7!U\�m�����)uq��H�xs}����8���~�3!�v�[�d��/�J��o~	�I�@���4Y��s?H��Z��p0���.lP�Jc2g��w�ȏ��ǯ~uo�I&�rZC0�	H���^\�(�"������:��Kb��
���B^�6	_�:ՠwq���"�o|��'@�����[?��TK�1j�٧�M� =SI�:j&x�[��t\�׉x�{CI�Rφ�՘�}@oǠ݊ � DЩj1/��	�o�G�3G��oi4;��]B|�>�n+C�㐠��H0�D�@;���Ta����7����i���cŹ{K�U�{
E�k��/���p�l�[ED��B����`^��
D�Cj��E��I�'
p�A���
�`�T��*�Uѩ���P�0z�1�;U�#&9�AP��ov,B�`�����7���UA�aL�f��N�Ah�r���b�����l=Vi�b������w|`����Xqo��cl�"�����6�bߔg 8T{�F�m���Ym�\j��
��r��_�S{@���f��-���L�D�bn:'wu�G=�$Oy�?V�\�X53@�5%� d�+CxR>YrX���S�k��Cש�K�xR������v왾jY�E�s>�"���ӽ<h���ɹ���Eֈ��O��4�o��N0�G䜍��9{vϙӳ�������O����'��_�O�Z��ܯV��G1S���9�H���E���ccv`8�L*�f����UoP u�V�&�P+6��҂�������n���ޞD7$P���Zrۑ9v�Џ�7-ܺN��Ep�`�e���l�T�s�4?92䌌#��}�A��U��:(�cKv�8yF=Uc��W���WM�N�2s�SA����t��1Y�- ީJ:k�D��gӔH���d���f_Z�)��������*��M�#ƻ��ߘ��FϮq��I��\C%I�f���)^6��ER׌��e]0�yJ7&��S1 �`k�	��h�qs
KI}D���o���}4߿2��q@���<����l� �9'"�p�A),?qHiF�z�u���EF/��E��$܆"_5*F�ɔ��(cm�4L�Y~(�*Z$N�.`\x�3ۡ���[Y!c�Æ���I���v� t�C%6!��gB ��d������8;����J� �a\vM�!$s8&ԛK�v�?jC�czS�s�m�8��y���o�L���*`!	e9� �h�n6
��ˡ�Z���բ��UX낤I���JP5v0�C����T���}�~#���/Vh"f�<�P�4��-���IvȇK�J��)��/*�+�$Y�a ?,	�GD�Ǡ���	�o$D�LWmB?�BԄ��H?��_c�������Z��e>���,�X{�[-��1�e�Qh����kX.��)FT���#��!s��W7+آ���%��4�vZ��%��v6�eC��!^4!œ������d���2�+���T�+7�"=+�(��.� q�a ��h���n>���M�$%���	ބP��5����w�oT�z�����������~����0q�]*<���T��������hR�G�{c��)�;����q�X7��g�.�漝(�+�LfTS� ��/!J΀����D��RN�sơ�9L�ml,P홓����(r�홺��{�f���"�Z�Xr�'����m�l)�d��g^$D!'8*7ˬ\�M��XJs��$��Q&��T+���hā]��F� ZaT
��9�^�� �j3"hdŐ�"�?f5���nr��b�Yk5Q��qZ�ܬ�EQ6��c;�����Ԏ�*4f�v2 �L�G�qP�*?�E���o�" .ʖ��7��/粙�gi�H�<���6�(cv����b�(�I��Z*Y�'���=ײ�G����7D%����c�MnX�x�x�/z������a����rf$Qm̱ʖ�o�� n���t���wŸ9�m@�;V��X�B�7�a��D�>�T�m*�Im/�4X�jBOvZ��ڕ�Pf �F5j�&��r[����ZOOv���xP��������<X��z��%��E߾�NLe	�mR\x��Da{x��A�>Y�?Ѿ
q�Z�cUi��ʄ�؄���qt��q�A�����zqR���^jK�������eԧmRۚϡ�d�_Ԓ <m�c@���{��"Q��x��^�wj�NU�h�O}Y�fݟ��*�� �����+�̥�/���i7�rt�����Ws���=�rc�1�5>��Fu�q����(A*r�,�t�J��t�� O�.��vcV(ca>Z��l"���C��>�-�d꒬��Ȯ��*/���*/���rI�q��fd���vw���/K���d���g�E_>"E�U� ���1���#��<�K"�r�=w/���%��k)�2KD��(��8\\�|��?�8V��r��4�uR�n5�Z�;�����k���N��ժ7*;�m�z~Qy������      1      x�Խ˒W�%:}���vI��@�RR�H�Km2���+�H��Y����ͪ&5h���G��K�^k�s܁@��R�C$�����ϵ�~���$�L�^=�^��4�]��yԏ����I�i��NlW���_�y?����]��ճ��VESFW֫��q4M�L\��&E�(O��h�������eQ�Utz�,r�e��M�܈��ո�*�Y���J�PE˴�E�b�p9��U4I��Z�T��]~��G����E#W%�YQ&2�h��<����_�??��W(I-�2�9�4��ҍk�ir���z��S~�y�DU��?�f�W�hR��\W�"s��ȳT��K�E�X�sw��˼}9{y�hQ,�r�d|��(�����=*��̏�(촵��aո��Ne���'20�F��L;N��^��b��\�1��!?�gE%��Q#�I�dIU�˹���j��%��D������3WG�L�����L�Q"�8NSc>�M˖H�K�W:u��=��&��<�]��Ta|U�M����y���d�j��a��,*]]g:F�Q4q�2�%�y�6{�R�M�<ѻNS��"<J�4)�$.�\�E&˶§�	{����ʜ`.1a��#�� :�a�ϫ(YȰ���1��Gq)��u+���w��LF��$��ԟ.����ѬX�R���q�e"S&�P,߯�����#��Tn���ÿ́��p�nd=9��54.��Ȅ�ȳU�7�$N7�Ml�_d�Xn�Ţ����l��s9��� ��'AV�:�iˣ)��Ͳ�6�f����a�˦�uh��y@ߕ��Ə�L�X��U����2����h���_��f	d��k��+
���J��q!�aTNG���w�{�˯d�J����ޝŻh7���󫛏��%��I~�)ۿ�5z�N�<uW�]6�	���%��8kbȕj��u��8#��U	�9\;�ѓ�k|D�<f�6i�y��ln����t2�]��"Yu�zѶ%�d��,t�Z���5����.�=}���ƻy���y-�)KʾQ��wǃ��oٱ�ˡ8�1^Zw�`:�4N��H/��R(�@��\w�;Y��?��Je��V}�i�q�:"����S���dUS5s�S�*0�>奌I�ˊ�'��ث��y���;]$�Q!G��虜c��Yg:��EQ�T���z��$)+�W'���������U���a/z�ƽ�E�7��x���#�y�\�����D�E:N��%�A��a�qU��֧�E�t:��bt��ƾ�L��m���.����cQ�<v�.�S��&��@�c(�v�����~�����&M2��^��q�p{�%�Ȃ� 27�P�q�=vG����|}1���C�-�l-���BL��ly�-L�l�i����R���^�X����ql&H�Z�:�N6�>��l�hT6���\U��˛,���{%�������+����|Q�L�P8�/�iO�[�D��%�d���2�0���q]AhF[��k�Cƙ���ߔ	���z��8�Y��+���ꛏ�T��*\�aI���r0/�M6�%;>��$�L�"�4���={!���DVP�B�K/�y���q��RvZ��l��N����[Y�ѯu�X�<],�"�s�zv7�ρ�<]4�;f�M�ȉ�F�?���+�	E�|Tд��9�*W0-�tF�U�Ze��ff*F�!]��N�d�b_�ЦcL�X7��\U��})[].���"�˴Z��I�+����o��e�]Iӳ1/v��Hu
�P��"�!�.�O�I�A�|�y�)k�������Ȟqb�$���R�9"�e�0`�^_m��g����t�5�0�م��B��ՙ�N�$�Q[�Rθh�M��ЕnU�9��zQ����b���R�k�JM����h9$"�*�g�E
���p�~T���%��(����bA,D!��o��#����!���tSٽ��<�gn����/�[�;Id.��S�:H����!��[��Ie�\�?S���2���3(PWb��F�$ݝ��om�c��i��I88�`��%X���W��d��^l}�q�X�,)�.����v�w����բ���I���E��b�5�]�(`�v'(�2��PV�y��ł���;(Kw!����^��??z�����׷�v��n?��������ݝ��GG�ｽ��^o?�~x��ý�����������o�wwoキ_��o�v{o�q&#�N�\��������������$�\~Ywc3�N���F=D��E����q�I�~!w��0����X�d��@8������d�ڇ<Կ�|�x������8<��.�����7gu��޺�\.�b:���Z�C�r�ѧ��׷�#�����8��ܓ�Wbq�4"l�WqS� ( g�D_���i�㩥�i9)5�u��n`k)�x�
щ�8��¬��~��ン_��?������e�0���At�
cz$�F��7�-�o����!�$���*;&i6�F��4ᲊ��E]���k.N���y��@�
�:�~x�0`
�9��F���Q���{I�y�K�6��'���r�NE��+��ܻ�Ct���΋,裵w���gα�����*(/z4e�u�E�ռ�Y��|��/8<D"!`�MY5����x����SxS%�YW���~�0WU��T��oq[ǎn:�Bu�L�Qi��K̢���V���	1��y!�Oމ���-#;\�!m�A�ԍ�TM�b�q��@�$͒�܉r䤚�+d�xc*�j)3E�J��u\�g�؃"��Iٲ���n?zj:O���khQ��9w�f�Mg\�Z�qv's�CX����m �f�pv���8��Gެ�!>��mu��I�*���{xy��␵�ԣs�]J?(*9y�g��
�z�"�J�ڮ%Đ�[ i�~�,��ە!`id7-0�]��GQ������5("e�Z��ћT��J��8�7�H�>]a���I>m�IB���*`pZڛ���L��g=�ϋ,[Q��S�*pډ��G? �܋�@�-�.�^$�yS^$�H���ߪ�F6o*�L�!�^tF��<ՉQ$+�Sk�_�9Hw�g�#"d����ll2�Qr��D�Q^����Rk���0��sZ�a�!i�\�OL��p�N����mI�����4Z�
g��*9�sy�#.z��Io�j�E�Ϸ�/�s��р�I�n�[���ia�N��<S�r�5���_��
���yt�9��D1.h���:���b;u�0���hx����{����m3[��7�{����=�>��M�������'����i���at0�ae�$�����J�{�N�K���W�����p�!�K^�;RX|���

Zv�xX�Qa�6�¿v�!�5�4I�0��A����0��B�SZ�2�n�kU�s����oބ�N�ꚺ�	�����n���o7}��ǭ��W�����QV�/��x8��7}]ip�*ǭ�Qo��Ծթ�5����y����ѧ��׷�G�'�7�7;�{�������`^A��������"�e��d@<9��sD�t��"�0g��t.�/ ��+[��;o��
��>�1��H�!N��\Zm�I�35���1�).A2.�	G�(�����\z��r:'�� m0��s��ejO�M��f5�HS�%K޵�$��lRS�bz�i_�!�wb�&���8��ݔ��x�	�y^���5>��/i N8C�+�Bu�=��~�T3{��1|�w�/��e;1Po���`]�S�R����2�I�(毮�ץG�P���S��b.
/�����/D�&�Nl|�1�6oɉ�h_���e�%�/0F��4�lk��D:#���t�(�c�.�t8��1���)����.$,�,�W2����nſr���l27ZG�Nl�F�eD�`x��k?�_^������ѡ&�����#��F�ac���,(�:�W8pf%�?�{����_��'���m/z3��Ȋ��_Q�n:��SQ��/׿��p��p�/:}���3���d    L�p�����l~��N���mA��x�pwp�A�/vl�����y�m����-�/���ս;�����S}6F"����|Y�����������W#5���i��������W��f�FhzѕG>T��ɽ:�H�C�n��C����$6�@)�}UŸ��szɈ:��1�z�9	��A�(�)�/�f�Ɩ��1�kY�'Ѯ����v�c1%�ya���25p=ġ�{�(�S{@�g�cƫ/ZDޯ�%}S��'�z���|uxZ�� $�0�6D�")�#�5�G`�xV ��'n�a)�q8�^�]c�\��"��-��������DV�({�~��+O��|��N$\�!�D�(�b���%4���&q�}�e��Dꠊ��-�_��t2������Ra��gO�w� ��o�^2"�.�B����ͨ�,��%��I�;OV�9�E���8U�Qxb/�p�K�`V d��_�� �� :0-�>B����2� �w�3��,dt�f�$e_���o:��v�(/�CW������Df��_�j�Ylf��6�˯���i�.�m��!��l9� C@��Oes�t��~J����\��S�T�������
�W�'����m���,�.j%�u���]	4tx����0w)���1�ly�X��B��@��2*�]d,�%�袥�0H�UdI�c̀	c����4T�,��o��S.���]C�h�jf�@�@ tԤY-�T��9RX���L�=z]��xA5�x��0����b�"(�2e��s�,�-�3�_0���@�����1O����xu���S:�@�8*L�4�8]�	b���kt�FQ����6�Q��8�swW�)y�<%�� C�5nJ�[]E��ӹ���*�Tt�X�o[��O`����%��!Ҟn�ڝ�?Idi4�E,�Q#�
�C�L�A2�
G�}R��h���'�spF�����~�{��9T:!1� �t�3����[dP�)"R��|��>���4�($�p�ܥ�����������q�M�!�Qi�4�ށȞr^h���6�|����Hǀe�y��f>.3���P#�񞘄L~u��ߊ&��P��"������j��*:�ł;E'M����^tR�L$����� �8��jk�,K��|u[ծDw��ʥ�!�b�x9�؀!S)�W�8�X?qԗke�#(f�n�ۃ���]-�$�N�KKl��i���$a�/�}uiO���N�#���e:'�LT�H�Zot�AE:�8B�C�v���Ps_�#�Z��Y��]�
������$?�3叾OX��U
���X8�����]��§<��7Nryk�@�x� 1;dM&͠�_��f�]I��rb&T��9rLC��;��k�vd�p����>k�?mӑ�F@�K;��C�K�lB>���A���D!� <�ӌ#7�G�0 �b��fm�wg�<�Щ"����)�a{�Q��T�Y���FD��)��DХA��cْ�Hހ+Zi�	Ew�S���3`�\j���/#�[�4u]�U �o���_}��wg�L����8���`���M纛�;���b��v���Ճ���v���i�=~�Le
�� y�RO�����K�C�[u���<Mx�߸#}u�6���1�r�Ȫ39�P����hb+`��7�B�F��~���Rm���h!R
VTm���&D2?���;�@Ε��h&�N�x�����~�{_�!������G��_r<��D�>}-���cd��s��|���5pZ����"���%�U�Դ�E�´ 
�����C7acF�<h>i�Z$w8N��N�(�d�X��%fW6ϡ,|����ծ�)zZT�&2+�^�쯌>��K.Gє�8W�x��/���V0��R�j9$�;����;��,cP�z5`kϲ2	�	���n�1yU���~�2͐a���W���7ބVt�z]��	��IT�X� J�1TMy�^���#�Q�ZΒA���ăv?o�4�������E�N����P�s"؟02+i����k2ѓ���?�/3�>�@�,+����Im��J����X!�K�J��X�B���*g�(�TVI�����#q�.�%�bz��pUZuo0Ӑj�?Q��Ӵ��"� p���N]oۯ�*ɂ����:3��6&�-���뀈��b�\�%|?���ը�b�����N�v���W��=/�?q�6�'�q���8<��t�.URL���*���C�?��B����/^ɔetc_9`X� {�M��U�����D	1ƈ��>7YcM���'ND
�|����
�fd9~�ӿJ�, �m���o�Vf���ƥb��Wpܴ�]���> #.�ef��}�k������-~��̊�^%E��-��f�XF%B��/����(8�21a��B%��tތ3���=eg�f����z�N|[���Y����$�v"���t
��LQ�/�@�����p��6ӌ�=�]�
�	&���ɻ̖P��|�U�8�+X�V�Ӱ�_#��Oe���ȡ?V��!&'gW��L�aw�j�0 �V&Ky�K8}%uH��V���y����T� c�*��
N��5���C�^�F���<87Z��hyD�:r �R/P��+���9AN4,/"��X�A�&�	��,�7�i��U~��g��7�]O'�j1��P�����~-���6ǔ/��a'��1�}�$��q�l6�N���Jt�,C����ĥU!H��#�Ö�@��l���8z.��G��ny�*��C��$��X�8Vr��L�ϓ,I�R	�5yh��ۻ�;X���\U���H4��rЅ�<�&v銁�~p08��Q$-������.aoP�Ld+���p�ʇP����ƌ1�Dj�L�P#|M�E��=���b��>�����q���v�{әrs�2�M���P�;d8H�_�6�6k򮤊�;����#I�0e+L�!tCE��4��Z詅3�<�:�(�������E�;���	�R�È��T1�x����I:myXu6x���!^�a�u���I�ycX�0H�T�6-��U�"a(�Tl��u�+��&�nX�Clr�?`��v@� �p+꩞O����mY0�#&��F'��xA8�ѡ��h��&�_�I3|]"�i`8�v�e,�ðU���uA���� �8UE|jЋM��wQ�3|���[�C�w��_x��`��w]|h���Ƈ�<�y.�]rR,����=NOD������X���>耏��ȇݠ�z9+�Ֆ!���Y.�E0u��^O�0�775P�\%���Y�j<��Հf�Σ[Vث�l%bT�|?|��!��AV���+�؀��5�+W,8�7@;����+/��21�a��-Qa�
�B]�Z�Z�K�?���E�4W�Ŭ�I\�^�j�����3<Z��� �6������FUD˸ ���t� Z`��oWM��,���KK��H����&�f�M�#W�Dn,�q*�;���6��t���*_��*���5%�Ҟ9�$��O��yD���R/F��MvS����M����[&",g�|U*k����N���^$�l�Y�`a*�����w���)^��O��saF���n�R�P����ݏ�\.���=�ef&��x�F
Ǚ.�|�ir��*Į��&R5��/�[�?V��,U~�=%�<�Ve����S_.b���}RSgOO��?��DS��O�	�����g8 OLS��aȫ�|��~��
��t�)���1�xI�L+3�:�Dg� e1-�m=̇k��Į۸.�����F�5'v�)��?�`E��ib���+"��r���'iA^
�y��S�8��D�k}��:�)�~��(qV�kuz�@�&QY�/6Gq>��������A����N�c'����'��~�с�	P¹����7���\?1')v���[f y���E�8���&�*i��,��46q���F��hkNX��Em�/�&{�IU�X�{�3U��j�z-T�    v_A��5D萈�{������{�U�`��(�?�-:��l�����"�]�<ɲ�칝�����?�k���ZEo_?���S�!��/����+�R����	���~3ʧ�J�����r]ZꕧdL!��b�����V�$�m��t��GW��-�(Dn_�����:w���o�v�l�a����{�2\����/���b�k�?��"�d'�oF�w��J��6�H�,���ͽ�A���U�G6�.�X�cAS�c4|pG6�@�>D�"��ؗ�W���sF2}����!`�E2�=�ו����W>�P����h��s��D����t�|��يA����X�⋲EMz�^U�i��jߧr�׉?�g=[y>9�i\��M5�G�2�[I~Kf*�{ko����Û���� �@�f��P�N��}1:��C��W7�G���cQ[�}���g�@�Z�j ��d��jy�ve�	^�s UV�^�/�9��`t�:�<��#
S�0)e!�y�X6�*\��ny\���7q�$�}$���Ӟ�?*�Y�dN�M���������%���(����t&o�S����R0���}r=�(�>���\6��c�������/��#a�v:g�t��qk@����>����hY2��;��3yq����-�3�JZY�K���0,K7�Xx���Px)��e�_�1魅���{��ӪҨl��=w�؃�v�I�1xqh�-g)�<��JQPwk�unk{_M�s:�I�c�I�^ކ�^V[� ����?�^���f�:�vN豯9�4��n
S3���������A�ˑנs�������u4� ���0c�d�=�pi�������0��R+�i2nsO�����U�:�Ծ�
 x2ߞ�DS��	�K@��i�j���K�'���U�[�C1�!c��� �LG��1�<)�.Zq[���^�Q2���3�g����ڎ+EI���^r�M�^f'd" a�I;w�CS��iĽ�q6Qg/[� .g��Mn��>������Ī�D��md�A�8"3�Ȭ��x2EjT�u{�� EG2����u��{���,!u���o�7W�Xcڊ5W�.%�������畾!q)Q/.z�BQ"]s��R��Nt����Gc�d'�C2O��R�}g��}����SS�FEv�:-�%��0�:��Lp.yq��<�*��P�M�J���`��r3�Gm���,K��Fl�K���L�
35g���j �d�(�.+�ђO�0��k�>�8�<���Ѳ��5��T̶F�gI�h�*���L/��!�s�����*���f=y�E����^�V�}��1	J�g�Sc���Qb�֢�"v��U��qej��b�' �{o7zzr�}��`���r}�v�B���\���*^T�{ͼX3�̵��f���L��������J�yb��6���D���Wq;.2�/�:�2.@g1��%in�3]�n�q�OYB���g1!q��x�er��.I5)"�r�FV2�u� �eY��*�a�irp���(��ǲ��fQ��"��R�r�w�Em�D������f��=M�#y+�P��EON_�iW�|���ɍN�����Y��X)�pWd�S5�+5P���-H<�u���z�ƒ�oҲ��X&�8�$'������[�rM\������Z�����Jr�?����^���߻B��F~�w�Z8��>��g�vwN/f���,)dw�ng�����m�J�����E�h�Ю*�`�ʔ�^��P�F�o�J�0(F� �5ʭ�5\f�V>��L�ҙ�|0��[<\1��ʓ���3��Jrc�����%�+1K�{}�
��%̮�yf���9� nE> �0p��&�a5аq:������@:%N�����ɿ���g� y/J(\��S=�(V���3�����X�t��-�������|$%�bZ�c8��EQ� �l8-@�>j �A/�X~G�h���-Ȩ��X���?if6;[�����H3��@]!�l=��LQZI��p�1U���KJ�h5��2�?�`��,k'�C��,
�ǅOl���??�`��亾&-gU�Ac+��)�9��֨��⃰Ӕ�-N��*f�(Ar�>�� �I;����h���cj>�G�*�f�� 3hѸԻSH q���Kq�VZ�L4�V��}cS��W�`^�b����S��]V���2,��ZPNt[�Ɲ��[Ԙ-�A�C�l��y���D�E��A��n&5\�0������mL��P*�����)�c� 3ϑɢ���/�8tI�P�q����u��'�"��"�Ttr�"Q��eF�Gh�z2�pH��!	��h1��h�.`���|��EfC��M��i/���,_D N_u��T��3ۇIHJdU[I����EP5������z�o���3�@g��/����|��O����3�K�Bj�c�y۶� -���@{#�@�5���T��K/t��%�F�W,Qlr%[G�����֍�g������Q��;���w����Ww��l�����[DG`�k���V�aS��$�'�����c�IgiE��DB�e$�B�fdI(��,�m�M�>h8�n����a"�KV�X ���Qj|O�U0c�؁+/ϚN^��C��' ���Z�"#�]�FyT�#؂�FtS�k܈�_B��ʈ���-j�&��%?�XV�����q�aM��>�f���V�)Co��-�&~p=��uЋW�/@�N�񷻌^�|�*>E-b@~p@a!:�B2��#�:ED��?(1Z[�R�I���Q>����,<c��.��1hI).�D�hU~�LZ��e��2�j�!4ʀ'k)XܶSA#v�YHn�`��mt���_�"�c�H��;�Գ1 ������) �֔��#@�g� 4�H�`OV��݌V��~N��{:ygJ�Y��Y��QiH]o,��dS9�X���uE#Κ�Q9�P���ʜ�n}	?˵�������L���T<n���ex �N*ı���w��fY"�(���"0��(��] ,r�~�ƙ+0]X����&�>���z'���L��M��Fkr���}�E��t�r~u�CY�������n ���������ۥ{�w�e�ƀ��|$_����hiZ���]T<hhTŅ�(�Ï����&"qf��aUި@��w�Ƕ� W�䠒���m~U�d3SoՌ�'��n�hq_N����~w�/�� �����di�/X�uP"���jq5F�V�W��@V��©I�&O^�X�d���ll�y89�rm��z�>
*�XT�b)Uz���2K7�I�#��HF�)�[��{p�hc���N,|[k����y��i��C^�$���fo�G۶�5h�uaL̃o@�c<��8��+=1��Y���
_o��B�[wL�c]ZTD#$V]fR�Z٩V��:D�k��_��6�)݈�|VwDOC��q���7
㵾P9�VE_�+�W�
q�c  K�<���#&z� ��ޅ�5. ���Mj9)����lOj]rأ-hv �%�xY��f��]I�TFe��)�e�(�R�chc�o��k�7%�z~+P�!u'���x�iܾ.l�?x��z2o|�
E�xW����+E������X�W=NY�|(3�?M���Ӄ�@�qaW#��xu�DhT��O���*�c��6�@�R��/���3��r�p��.�sn��� �Tc�I�DQ;C^	�&���|���)��e����QwL_ߒ`~������c���e��p�|{��������O����i/c���!���Y8�j�Y��
�ւ:�W0�$�)���3<���e]'��!SV�h�<�0��`]&�hF.Wt:8��K��d>�NLE��E�EG/�O]�N�*!6�E����G�ؚF�%ߊd<-���K}�L"���Y�FϾ'���G���9�-�-o�dl5�h[�"�q#���?S�b����1f�C�0�p�N|�M6�������o_���H    �N�����ܺ¼�c�]ަ~*4��;��k�0�H�h~I����WL�1!����P�+aE\I�-���S���c�D�Y��X�R��$ ֹ4�dLh��Zy���"���t>G�����i�w��5��''�a���8��.�S�����N��1;a{���Nc��fX{kF�#z�B-3kA�tNk>�w�4Fw��zkh��F��@�V�$6�F�W!t�N�d��}�l�ϼI�)����6������T(y��m8b�(-D���V���i߮��MVu�����"%%�o���3 ���=F�h�T��f�\/pޮT"AMo��A����B_r��8��F���&�� ��V��ڟ��h<�P �&Y�"�,�y.ZPD;_;�B +I(�2oD
@����}P�����>~���I��*�؜Rs��G���dK&y��vww[���|�)�FZD��D��9��@{o��oW�n��v��LA�3�~�7=m2�$Zm�y�X�7Ս���$	F+�h �c��N(e��x��H^�1�T� �sMAd� ��Y:���c"`���bـ�N�ޜ�c����olH3�fr�D� �����G�"y(��nt���<]��c1f��%�ؐ��o��}=�:%k_?N���f���j���^�?tdl��D���`Vp-ix���5�ɵ��ld�?���O�n���'d#����n�j��4x0ؿ��4�T�����휈| +^">��ҩ���wI ���KD_��k^�������D��'�9\�']�k������:\�y�uh�<o7s-%�]~0ZUq�M�	�2�c}��4��he�fA� �>��r�Wɲ���H��n�y"�>*�)�,<"a��`�j.1c$:1�e
|S��ȿ���#��	�ɹK��ߦ!�n÷܆�6-l�['O�޾��v8X&����
��+_���C ]4�"���#�:�L��P�8u�*Z��Q��j��g�qSء�ۻR��L1, ��z�}��y��0��7"/��F��D��z���E�7d_�i1����Ì7j��b*�ƿKҙ�*��j��ޘ��Ήl膒�M����f��;���'��N�����n�T��{�<�@h�]	��N�ɋ��^w=?:}�ӿ�9������(�!;-I���t�6lT�x�E+ [ɈRC�	-�x��o Ԥ�U�p��{�!�O�s���Qm��Υ+�����2��3Q���O�o�C�ȃ���������������篏�z�At�����?}w���Ɉ<W����.�)&�: J۰��1xΓ��8� fz��7�G;���s��bqK�	^ߴ� n�i�M���m��[q0#�n~�I'�7�����ݶ�ѫ�78���������\P�@���6V�I��w�#Q��iy��iʼO���hK�����[P,R�E��r��i��h��� x�@*���&_�'>�^X�2d�a���<ׂ" ��"�ŗ��c��]�4�ĥ0�E������E���Ս��Mro�&yvp.�]���������"ۊ�ᮟ��'�$���
�G�c�ҷv�˦�-�M�<.����8���uP�s<8���JE�"N\�j�!�C������X	�K�B}��.����v�߹�uۢ�8:x"~�Qtx����� �u�YD(}��ĄЁ
lb�V�� ϫ$Ǵ�*�T��B��@���R�.R@3��L�9��D�ʘu�/�/Nd�'@Bł5����[Gť)E��aO�I;���@
�yi��-���-�(��gG��?WQo��5vxͽ�ܬF��C�X�'g|�5�h3���Z��V��: &��v�~k"��.(e�P��Y8Sbײj���(�N�`;�������ؒc�b>^ ��#l��rQ���LF>��Վh/P�=o�y��Lt��Ζb��F�wz㲋��2a�<3�Ն�.W�[���$!1lCѐ���V^�je[�=z�+��pl;�"�5C~�W� G����X�g��׾be�e��5��Ǽ�M�".�h���kϟ8|��_8�1Ē�C�]=��P(�����¤��~�����q�2��1̖܌��I���@�����.��$)�1Ϲ��@����>��틃C��˓}����%^�E��2R�z�ƝZ^&^8��F�֝����u����~k��O�O�q�W�'��d��iZY�O�F�x��AN��[E�A�@>CkҠ�*7Q�R�$��t��$�=�|yc�*ޥ�f=?Q�#"���))R�n��v����џ��/%)Ѵ� 9v��Ξ��p*6	}ՖE.�M%��Z���3iI�M������� ��-��N�t��/� +���b�m�8�� �$�I߉-��Wz�[�{L7� o����zi�F��:Ȏʘi���L�d8�)X{��z+����h5TI?�VM��&ϑӆ��54�dN�9�#k�Ľ�E;쭳�.�I*�1���M[�T����L�g��u�OÓ��F�h ��>fi���N�X� w�M�h�ۏ�C�����U�mv��@Ġ�nf�[�r�W��P�$�եu�6�Ō�Y��d�#��a�Ւ�ۅX�>Gl���7J/i �O8p��T��Κ�B���3�.��/�}�o��Z����k��׌��9e�.�M��2q`��aL� 4���C��I�4K�Č�ߦ�;M5�@�+���S�!��vxP���n��h�A�|?��!l�߹�$�7ڜQ�zݎ߈N�Ѩ�КoĂ_3�ǌ*,m��L
��f�KB�X*��3�j���T�z���5��x�����x����J0���{I^���a�FEv����mR�l�aq��j�fH�E�'M�����Z?��������*`�[4O�2�<)roPR�K����b�Ԡ��W��P
�6���p>���`T�í�00G���}��MbUc��"�����C�(��&�XoUd��e��k�φ`�V^~�	p�n�4��8A��D)�goNͭ�|��+G�އ�ܾ?rtFK@��j�C4��K�6ڦ|����� k�ZWe�d1=t���9Hӂֳ(I���d =2?qZ�С�Z��2[hx�Ӄ�^^�q�>�2�!X��5Z�'�ٕ�d=O��q�8�U�CX�1B�a1�
�s�&^��'R1i�\�]��Z�Vצ(����l�֞��U�P��=Íz^�����t�d�%���r7JF}��+C���E�P �$z�g��[������%��u����c�/_�,������ k�OSt7�w`�w�������p�2D���]�d�fi��\f��2{�������r�.4ծ�ۅ/���v2�>���������ý��8{�����v��Nh��x��?�"��4�OCЧ�\�mv�<)��������Ӎ&*�:d�3��˿�v+{��� ߷bړq�AL�kBHWg�0��|-O哘�ԗp�y��-[�-�[&}�g����u�-�Z�c�Z��ղ
n�ZՕ��V3~��$��/�U����%�<aK�M+4�\�\z��Y&~�d�J֤EB���B������()C�_�UOD��.��|9��!=�m���/nɩd\؆'i]�X��Z/\�c��Qt�Gը)�3��~�du��� �������j.��4&⭪7��X���$�lx�ޗS��Qq�����m�Ym�ÀO�d5�w�{����6���ĊsB�ĵq���"z!����_3�0*�b�T1�E�����Z��gޔ+���Rg�N��²?/e��KIT'�5��D��y��P*.?
�A��k���@��W��zn�;�FGstV�h?/����>�X�������(����a4\�3n�r:r_�����_~僪��Ż�n�#��D�vCΑ�e�9zz�<�"^�q���Ɩ��89퍉��.7B�;��i	��gd�����2��˹y:�4�A�!���Lf:��%��?�}�*D�V36���*	��)Z��[�W������dp48/67�ZM�M��Ԩ�%��~ϋؑD ��    N��^�����ڍ�;ك�K���	d�t��U��X�^��0�N��Ph�e�z|�E�Z:e��V��-d�2c�hk.�,bX��f��(�ڃl]��"P�)�]��dY���NA��pq���vkjr�Xˌ~k[��X����Z��_Qª�(�����K�,�.�m:�&DY���2+���$G8���T�'(Wr�۫�a&�L��=�	��F���|��RY��)�T9�������)n�(����z��/6e��.0tԏX?E���o˺5�|�{�G�:F:v��l9��V2�=PX��9���]t�N�!oW]�^��h@�Ҫ�������lءC_;���8�*e7>g�>̩u5��2�t�\�ؚ0���{�m���������^��%�-�5����Z~��XXcK�#@��
��^�x��`�cY�SֵV<l���i���b������c2��S�����h�SPꋟC['h�R���5����&n�H���Z�Q��D����0��H���7vH5��6�<��G�t�[E������;���==p�����mk�L2��a��Z�?��icQOo��y[�t����TE���Q�tcx�x����q�����1��,/�1��+x�J�'ł��]A[�?ڢ�92Z����K�k��nɠa_�<�	n]�Z&��y�Dϟb�Ny��wr���j+&�?y�@�
͠�'�Ãm7�2�'��W3�q�@,t�>�21���9R�t����D.60�LSIG��W�����ܗ������v\��y�����K�N��Ij^����~��Y�C/���A0X�V8\S�PnT7��|kf~Gi��f��\2�d�Ћ���׌i} �V\l����Gp���:�wm%���`_;<^_I��#�}s��k��#p)br�˿�;Bs'/w|�߯���g�4�ya6��P�z�CH�����M����?!y�`^<.ʩ���ՠ �4���6���[Q����0qb�[*�̽���2q9�9�>��{�4^�y#���]�9������,ɘYi]�Ge{bY�o��kySey��>������ͱg;���G�
�t=?<�u|���ꐶ�Zm�?�HG�,�m�m�5��UWd$j#;E"�u�J�/�k�Dl�-
�m��|!,L��\�tg�v|}H�����N�92��Tȇ�
$��jk+�x�KH+u�Mu�:��>M�'=3�wf��ʘ�����~{_���������>C\S�k��V6��Z����1bB;�8���̼l��޵�ƹ4�#��<%����1Pv a�2��-f.���Ũ���!DR�$�c�F�bP+�OڝI֤���S�y�c&ǾFg�^g��<a[D����z>Z���q��
4&��[��'���n�wp��%h��%c
�,�~�\/�{����<�Y�����T���e/�˟{�dΌ�at"����GOY���!=����qC�N���?��c5V�3TညЁ�z���հ-�@/�Qc���$�5����:U�{��m�YzY˱���}�o� ����&[�I��O�7���at��,����N��ӣo�-d~�I5�z�-Ͳ7�!o�C��;�e������@S��{R����p�P�x��;��7"rsk�x���Y>ۘ���]Ӻ�=�w���H+9��,�RY�qf�Mk�=���P��^!��Z�rZ��]j���)`O���+x���g�R\;�'��Ԃ�r��)z���*�"Uʊ�qmO>?���`������lQ-�#Q����NɌhΠXU�@�t�;]g �07Z�Z�F��a#��~�N������p�P'�|�i��Y�iѕO�� �D�*
XU99�j�?��� ��B.K�,�F-�֌�����!����K  :��X��U<�Ƣe_���opU�ۍ�.���M�mY��OXJ���畢i:٘-|>�pCQ�0�/�<h}�FI���3N��:R���hB*,�+��5'i.LbQۀY傽�0�ƫ[����m���d�j�2n�/?�1�q�tu�@�J�V
�۸�F�F[����7&�r쫫|�0g))ۑ���=$h�� ��7��X��H<J-�
� ��I;��Z���������o������������sq�|"x�������򉘲��?��_�BٹC��U�Mh賮}�A�;�i�~hIĮ
@�MR�l��75Xnh�i0�H��u�a�A��[���g�B97��gY���cq��\d�%��W�BEtX���*�
�Hy�6,7�	��]��?'�q4����FgOQ튋���/ �^���mp��4����c�4{JՑr��Vk/��eIi�16~���Νԕ���ً��Yh��Z�<s^�p�#��?���cuT����	�$�0�E��Z�Y0ť��M][���aٙpЕ����%4�Cnxm�7�:(@l��d]������닼Xf��z�V�3m�;qܺ�H�Zg]"����$AӳXm.\ ��,��Xk*��A{M\��J���Z�k������-R�le+=��h ƌ� �kZي��b��Eq����i�.Zk�cþ*V��� ��h���d�U�+צ��Հ]".[���@�JÅ'՜;t�M��Z�-+FhJ$ �F��i*{
`Y�{�z5r?�K�jmO[u8y5�8�V]��_�~�����%�Ձ@�S��n�@qoJ+"�S��W��ٳ��:j�X+�X�U%�6O�������0�4���f�3kn����jS�=cu������af!EH%�\WZ~Z��6��x�� ��)p�=/N�۔���
3f!���Y��<p�mO,�^��]Pͽ@���W�p���^��6,
�A4�P?���%_F1:*�f��#��8����û����?G��x��G�/�|�ە����xEY�A�-�a�t>j�����!����:kԫ:Sf�F�'^�<f�X�{:O�*R�zVŽ,�[V�ۉ��K�r
.x�^�+�2������r!����LDޢ�FvbW�S?d�<e����(NL/B�gb����}~*f�[�Yƣ���]�+�0���'�v"�*�_��-�K[�Rn*������k1|R��b���~�bi��1_s����� �j�L���LD� �G�H(/@C6�5\��o�7��
�9�ASߏ�m�|�����i�6�P��b$���u��z�(O�E/VՋ��'Zcu7����1�^y|����m^|����`� �Xm�����ߞ�lu�!��k<�����+�J�<��o�T�vwv.�~�w$ol����R!{���@��������q��	�N!���d�x�Ew��RG�
�s�_��0"۾?������w����>pc�n˖�iw�\��,���?u��*u��`�>��;-�:�oW�b�A_�/i�u�!��_"ۖ�j^������lX���;8n�ݲ&c�wi�%yb9�QSi�����9�+�Sp˒@�x�4��+<
2��jxv��kL��jg�a���^͟�����.,�םD�p5���)�7��)�������4� N���lE��1@�!��(������e�����*H�m&@��	uPl�lI��u���d;Ut�7 ��׉�6M��-*�&Y'pR�A#���g�N�`&�Fxդx��O�U �?��f8v�� ����}����WJh�^zF�X�֌�����צ�z߾?=5��vA$Mn�ކVq���	UwJ�vvY[�j��?����+��bmLx���8�����r���m�6F���b2`S� +c��	T܈Y�UK�`��0�h%���vIB��G��f�6�?Q�41�	9}�bְ�Йxy(�/٭�%���#��*2�\(p���כ��MI��8Hs�����I`i���=[�4�*����[V�a:L�ւ2�0�:9_�� 4ɛ��i�e�#��|h8s�����e�CiqR"��c�0��=l�v9��MDk�g�'�t"�<�%d5Ftk%��$V��4���۫�g�l�u����m�k�    s�F���?R��%��%Zgԧ�e��-1���n�[�S0���R�wۛ�ݢZs#��B��~N<������U�I_��O��i�R�8Qd�5HQ�~�D6���ȺJqmD�hH[bH��5gπ�'i�����k�u�nި�#�{��0P[� /�t]PMXaƄ6V��ybY+t����Ge�g�wy�O�a7b�u��d�W�4���9m����qk=�њE�>��;q�}�w�=�U��Z6�s�(a�G<�3�#lK\�Z��p.��=[�ے���-�,�( =��;!���2�ж����D/�^�j�EI�r$��:b��6�De-={`�����oAk��Z�($s�����^o*[{�=��p�Ar(��Z������F	|��}8��3ފ]k>�&�Z�����&�طڤN<{��-���74A�����4�o6R|ɻ�#�P�s�ZwF��,�+-z��1�vI@+tli��!����/�����-���V� ~�OY�1!�L������<'���-��h_���!������r��xL�|n�v�Ғ++����d?�Fk�ڔ/�;�c��
՚�f2��/���=����T{�]4-b倰>�������u� U	ٳR��Ƥ`�(����r����O�4:���{�kr�ӱ(%�TQ���u"�hε�!D�ޫ+��)+��c���� 3��C�dS���3>ʃ�u�U����a��Z#�,��\��==:8����̐[���w�lN��g]�x`k���Ҧ���1����3��[e�5��b�Uڅ��Ph�8���ؤ��ߒmW�	���A�������Xz��%k���.��[u�6���R剻Z:�/Ӳ��Qg�m%)��\�j��Կ����?Kݳ���v��	dgb�&�Z����@Z5�����9^�9I䪳�;��ީ1�G���'Dn3Ā��KeM֟��$�r�����0D��,���6Z�D����r��_8(mV2U2���e��Q�)k�����Xm�)瓝F0dS��N�M��u\Y�NpK��*%V��ܰv]>_�o<���![Ce�	�}T�u�n�"�5�����3>�D[��QsI�Q������z��8gD���kѸ��{]z٦��ȹ�`������Fߩ�-��������s�iTx8$��lU�sj}���9UEK���m3����	�����Q��E�Q-ߍY�ÎNi�*�)c�����w�Ѹ�	 �_�~��/�aw�,�Z�qU�������%��	ѥ�ڠ:Ɠҥ�Y=9��H7�˟�uă#��˟��?{e��������:�}��'�>�ڑ]�{��m�6�PN	�y��d`GMY�f*��[(��y�Gr}Fnqf1�K�f��2�w�m,���b�ڊ4�b�(��7%�o�BJ���]^�����½�C ���u�(��[�ح��h=���$��]�tz|X�	R��-0'"�����%]32AC��rF�}�Ey)3Q��U|��v{���!Z��P�5��ĒlsXǍk�ˬ��.�!�h������W��7���/%e&6B�&o�����O$�J@����X[0(4ԫل�o�l7�u� �dH}�[k����/��x`s���w�c��9�/ĕ@0��G�?.].T���!|���ԁ �l���c2��Yj؂��jJy��JX��u/)���;� �����dJ�|8س��մ���@�c�4L�Y��w�7���l�E�킋�s�O�[�Y�F���d*�,'"A�֡�$}E��kŷ_l��;�r�k�������!ȠE�2,�4Y��le�����VL��o˾�ԭ�n-R�.����ېM����4.���Yv&i�*�מ;lI4YK<h	�h�`0�y6� 4n�~����lկPm��S�
g�;�I��Z�_C$(m�5�U�qo��U��ߩq,�bRxS����7�n��7|F��Q���[^��e����r�{ �;��Q�x.O��,�,��+��E|�|"f��9�v��T�}�(#lW���O�)��b-u�F!bu�����+��!cOZ*�A�/R�	~L4R��6c��HѰ���+rm�O�t��L�Bb�Ƽ�O��W:=����}c��SO$�Ɲ�.ױ�s�#�n�XO;�/�h���4!O�vqE��T3�� g(�4����hj���Q.�tI���3<`"�eiJ�9�ƕ���ӭ��z`Uk�oi`DT��-�<τ�i�$惯�K����cE��hr�hl��y�}0er����^� ��f�a�o�[��h���))�J��~�T]�-ZG{�H��c;�.hղ�۩���m���\�������8�@�8�ip�;w�4���UVGI5�s��� �P�m#��	����t&�4��-���$e�2�6ңro��K26Q����hu�>�Ԯ��
*Q�B���E�0.P-�/4��ks-�ƾ(���N��xY������n�����̌/uČ�VJ4Y/g��a�q������%5M9bϾ6.�k��Y�_�����tڏe]���n��	:�����.\W�?��Z��V���L.���Q�kE��=rv��~zW.�{_��\�w�:Ҏݽ��v���9#�%�����N��ٟ㟇r�s�ɗ�4W�&G��}r�D]�sR2ch�7IF}�\�sC��H=�/x�v�C��'Ne!�_�U��^a��p�����R�����#���9rbc9��%0��
��/�_�[M��B-[�KҿQt���e �����Տ��R9`|����u!�VQ��$z��C���C�b�0�����K��}��Q���Eٌ5S�3@ *Πv��9�`�]&'���^ߓjT�?I�@���߁�g͏N���'���w��Ř�!�朒7D�vexck��(�^�����D�sk^�6�˱�,W
�җ���)�YS�߰FаZ���7�K��̒ &~�B`�G��H��g_a�4)�p�u3
##Z�~��/C�Ԥ(D��S�#.@��  ��J���Fp5�슂�D���Dr���i�|Y��� ��P��H��d$|Uh����q��X,+��\�������T�lk�At�.7���������}�]5�����4ߣd��zmk$��[�?�i	�c�<0����	[A�()���!b�t0��a��L|�Lڊ��r���=n����-��[}��Ɨ}�����{�8^֢e][��;�X�'�*��{��*�(۶���@\-r^���/ON��^��?>x���wx��� ?-�W�w�}�����Hˬ#����dI�!=���
�i��+.Lj�K�z.�9ѳ�%���	T�В�s�U194-BA��KtUMv��w��K+��Yye	�q������"�*��@��ϹV~�����
��� ���$�n�+c8y���U�@�Q�P!~Z}���.:��VQ�:VO�� �}�:����)�Ӆ��-��Z�ᩀ̗B-�Vl���(�\�u�X�>FY�M]��4�i2�~Dr�bHZ�G�bVd��Sv�^��/XR��E��'O'��RVݜQ�>)�!O �	=�a�^n��+��T)�i`�RK���4��<��V�Zt�?���?C��o�6/���|0��L�i��E���瀞}���Ӑ> .��_ �AtcmvA��d�u(1�P],�mhG`ǫ>y֏:��^ə�n�C'�I(g��6oK��R�q�a�Ly�A�1jn��`���gI����cV���f� ?�n��E/��A���[L�V��Սbj����̩M��=�wAx�qm��~J����>é�Ǭ�z��t���=���B��6v������:uhB�pG�����:���ږ�W��-�yˉ�1�N��ub�� _q�<c3�6`�]D��T���w��[�R�?EA��x�2�����92���~�t}����NVk�O�UY�\�<sk.9R�8���K�჻�p�խ��s��*yL�9�N=2�6��N�ޡT1�� 4��s��2�l    ���(5p�|���Qį܂8�%�L���72��<t,4�����)��.�n��.zҜ�:�t��lq�n���@���w����Y����L��XoO^�st�����������Mr0�\˹��qP��/�^���#�Dq�ꤞ�d.�S&��j;}ZO#L�I��m?�u��wږ�F�]w�?��ѽ-!�������̆�{ׅ��n�$r��;Ý��+�H��]hĳA3�ޯG`)c���Y�oд'���Ӵ�O����w����d�������i�hx"S��Gg����n��?�A���]TRk�4q �H2�٨ �l̴`-|��C;&�`F.h�템�Н���������ޭE���o�ֿ��s;4��$���隃ZdA�6��n7x��P��VG�3��E���2�`��/ؚC�0|q����pW-�/?�}ώ��=:�����I��Z^�,Yt_�����G���rs�-�N8[��,A�3}'6�C+v�C����)zLT�J�¸xU������,ʿ�����ק�^�����^��2��X���?�0����0Qz�i����o�lS��{�[���2:3o�Q��"9vHPh�����Y�	ݾa�'����M��E�IR��C�^���y�)`�J_�v��q�b�o	�)��}#�oH
�S�H�e���7��_?e���EMnCyi6u�,(��S�U(�3��$ϲ�m�4�x��z��X�Xv��oxXTs;W꽞�S}�cd�,�?'�y�*�@orC��|���Q��s�����`#���U�`�ж���O\�]j&xP4,D�,�	k�^#[a�O^i������$z�&�:��ܓ$��I����n��C�B���W@�-P/�Yb�<0.�i�u��jx*m����%�~n��9��Rf[e?Q�ŀ�'�5ro�^�!(�Y%`��`NZ���͂ ��x ��E(� ���� \jAj�ث�YF�� ��y�on�p�������h��n|�6y��OY/��wd��-�V&�B����S~WĖTX@t���~=�2e�p��)ĭzE^1w�鴭�����w��m��W�?{M��H䟳֒o}�"]�O18�:�'��=/Jm���+ˁ�e��E���������p��@\-����}�[�9k�t;J��fyD@��w���#���uAhݶ?�sXK�ɨ��5;�2	�:v�n�$�fq$�T{"h��7T[�@�b�v��H0 W"y��I�P�� HL	�]5�� � zFQY��E��)l7�餺�{Ev�-BM��z���1��Ά���.-�[~8��V�gL��"���d��1���2R~����ӓg�v� ���	L��]hk�/���j|�x��&�}^� 2�v�G�&����ku�{�3�z�m��8Y �T��୥N���8���B�ֺā�l��7bA�P��Iְ�<aF`�[7���\��-�:�s� y��\��iԉ���$�ŀX��T�-$K�D;C���� O��f�`s����OڒR�\)#��D��Α΁��cC"�\ k��V�k�A�X6�9B��Q��']��}o݉���wBtF�x ΂e��N$Q?$rRy����G�©I��q�>�+4ԥ�Ui9u��f-Ð�;[Q�O�(�+�����ݠ����1��	:w.c�ʔ�Ѕ�����e(�Y⛵(�GwP[	��׃n�/�],���.<��B�2��*�eE��	���Ώ�l���B?`|�Z�腽*�;2���BBlzd}�@�K�k����U" �%]ʪ$Z�r(�Spxg j�.�z��h��V�b�xtF��@�]Z��f�,]\S�6:M3���c�v�>4ιn,X��2W�J�66��a��>��1��?�{��'X����⇼�o��[��w�6�w:�;��{�w�ؿ����hS6��O�ma6���p�X4|S=�ޔ��W���9�E�N��K|�������Y�IN��vi��-��M6�x�x��~�aϒKTԾ	�� ]�mcf�ȽK�T��@{�}%�a�8>H9��ޞ�?�]h�.�50;ܟU�%cQ>k��Jy$+Eo�õC|UH�n-T���q�~)�5���WNI��,n.�"�=�!���C2Q�|Ӂ8��,]����xv���?�O������C|e���0[�t +2�,�j�U����
�Η_F���ҁ���H�Ѯ�(5�ׇb+��:_�x	ZBӸ��o�`�V��W��wmw�<�
!�f�	�AU7��0*��[��Ή�����PZ��4dپ�8�ei��=oq㵻�m�����c�Í+��7�3O�ecg���T0���ĐIgNI<i���ض���B\Re�:U�@Dz;�ϯ���|����].f��I��?�׍��r(�^�3��[���sz�i��h�0D���5�z�;��gI	�˕���C���n��FRww���n��޹���f��>����t2ёl�Y�v�O�&��V�Y*��\�o	�3R+-� Djݔ:��C�ِ>��������ʏQ
uYl&���A�bC��R����0 �?��~�/��� *�H�D�F�)ђ��P��6���\�EL��1�Fuu3-Z��(f�����Ʈ�D���
z�%��ܨ�6��ME� Ο�m��;�f:=!"��-�[�8��� ����2�EϮ�I��h�SZ��&Vd�s�vcU)7q�H3Vp�W���IV 4�bfB�-
�s-���lX�n�4i�+��4��S��Z��P�i\^ĵ�_�[>�QF �!:ڟb:M,YJ�؃�f$0�X?T|�v�>�Y+��[�K�G �7�+(�բP�����(��?��_���u�_F�	H�R�	��Z��ZO���B�w�
�[!��l������/�;?xu�3Jm�~��?�r�T�(:�꾜Q���q�o�|�����v�mdY���)�Ϊs��_�U�,˶*����tWM� #EF�"���j�s?g���ܜ��M?D���B>ɬ�[k��A���vue�$]i����g������Ր
�ezr���@uP8�d�e��+�cG��OW���G�N��KQ���6����O�-�q�d�#��
�yi8 �����<�8+�gɗ�"$�N-L�S���BcTm��ge��+�M�A���檥s�'E6��p}��/�>�L��E�y͜S�s9��@z@�����m�,�?|H��#���w���7�ћ�і��Ǉ'��σ7��쟅
��Flـ9���٤����I����_�`)f[FV�tT;:�]��)�Q�V\-���r��w6�I,�n�Ru_sұ�%�DCU�DaÎ;��^D�� �H���f���l�G䧐]#L>E��߾y��a��7oO��������o:�ӳ�K��#�pq:TG����TJD0���@�D0�����ڵ��L(�h�0,m|�T�EeO3SD`��Ec�Dx��N�~�"�8r�եlT,>�U= kj��=�?|�a��<̄�y�:��{�x6 |����j�i�ŋ��w�mFnyV>6F�e#���Ϣ�������d������!�3N��XH��e�yk��U����v\r������X��Q5��Fo�Wj�w�����)*@���Q1k��x�!����U\!�$���Ǯ�[�\�W�M������ ���K2/�Ae�	���.gAh�<��jEc���'�O���!�.����pq���A?��͍b���z2��1k���S�0���bk����2�!4�
�$Sh��[>��Do������~{�̚3RR[6��͵���0����+�(�`�(�Rq*Ÿ=C)��h���iR���'(���*���̯��#���a��U���.��tY�Pp���t���6#�-#�nre(�[ӈ��Q�<7�R�-Tk�:�{FG����ۣ''��Do�_G�ޜ�|z{p8(���"RV�R}�u��p��Z
�Q���ab�}����*���    �q�dAj5����$�߁�j��X̱��tl+�VOv�v�"s�Y���!32�s>��/(q��	"	�&�J$!x +�R�n�NPi�2h�ru��R�+C��k�z���;`Qg�@|����.F��A�nw�ￎ޾~{�v�eD�����ً(���u{�����O�仢l�4!���V��)�Zq4@��ҝ~pg����'��G��h1��Ks� ¨d3Sd$���^i�x�n�"{��:$]��NW�
eό1R\��E(B�&ɊR��(X�1sjڍ-k�tU��AX�,�g�l���� f��y�M�R���ѓ��K�|������E����*�i5JϼV�R�3�jZ�PI�� n"ojI��o״�uwv?�����'��_m����d?�r����1f�3(pDGGk�Ɍg�e�⋘�q��8E����z ݗɓþ����ӌ&_Պ��W~Ay�>$�yѵ��n�0B��N�qB+�*��)@7PD����hvev����}�����&�Qp4[�z|��r�TF�$~��(����׳NM�WY
5Z� ��^8W�[�"7v ���ԃmȀ*TWM�T(a��mِ��7Q��F|��f˘�E��ͩx���!:K%J��1�J҇�ɧ�G�����%��J'�W:]z%�t�CR��(LsX�2V���,�2lp/�B@+;��=I��d�Q�*ϡ�0H��ۚ �/�$G2{m
AK�Ŧ�ӎY���"���_����(��K���6�쁝h_I�^� ڙF���(��g�:�z�J_��d��'�r�p;��Kg��e�<�j�絴�3#>7eݗ���6��|9�aHm�W��B6*oK�LE�/R4�^s�����:��p���b�#���8�B��ޛ�?��$��g�n�8zU)o��*p�Ѱ2��?*KW
,GJ�eW��_{>��:vms)���po����x	Cؠ.. �>[��53�F^;$��JR�o�c0�O��T����˂��iZ�	8�(�� $:�Y4���{j�Q��a��C����$ul˷y5�n�^%~6
�v?��;���ɩW��[�������eS-�@]ܾ�G��ͻ�؊7�d����Ҋ�ݍϩ�e�������+�Gϼ�
&�M���}���ZK�Y���o��\.��fFb��V�
����Y0�K67��@WV���'ݕ��%�e�#f��#�_�䬵�-p�j���h	v�9����+�����Gt>�N�x���غ����ۢ�>���{1��k�!�"v�ه�/���v;�C���$Pr�פ�?���'޹J&�?���O��ו�x;4������q�c���q5�}99�b�&�XY�	ϼ�F�������@i$��
1	:��
$�LS�>?�rŞ#�2~$����Y�0b�a���p(�b�|lb�
����dL��(G$�6��[��΢*�L8���H��uc8�Л�j5�J��rh��j f���A�Yn����g�pǗBq>4��.��Gzl�-��BO�W��Y���e�p���Q>!�pyi�ctݝ<���0�"��V5�J@�,�f�~�j���}?�*���tf�Mֈp��*��4�n�$�-�����_)�+�*��`P�Y>':ē�jY�#SnՌ�⭑?r�L̻0�Ӭ g)��l��r�WЫ��RrN��)BQ2<'�R�*˃ZҎM6q7�jjT`^�S䷦�b��V��5\�ȟ���_����� m̳��K�%Q��,ɪCN1)U�͊��z�*<�Mq���W`Z�6X���;dVSeԭ���<���Փ�Yݮ�(�U(���:�s1ϩ����l��Ä��x��)��*3�}���%��,�<B�r�4=Ǝe=��-k�겝�N�:^|�f�)^�Z�R��w�h1���|�&H*�>}�k�\K�f���Y�@�ӝ'�S�<~����,X�H�4�L�I'�G 'Æ�I�iv�p��׏B~Ԑr�z����<P�4ӈ�\��}G���@�czK���w�Y�l(x�>�����6+��jY�y8�5�ʔ�n���������}>�F���D�)^��q}5*�����_X��po���j6�ͭ�ƃ�(-x`D�_�쬽��t�Q���ёs�o�c���̙�����!8��7(����l?gb��V�1�t��ba�%(�=�\	c�~�H���5�"�Py8�rAr�y�#��گ�ٵ�u$�����dJ����K?�����n�?���|�'���������G�e� �o�/�.����jlC�x��� �!o3ɕ<���Ɵ��(�.�O�_��M[w^����E	���Ǎ�C^y����`+��ǽ{Y:��������$oG��0�~��A����[�����w��E��*�Y�������aγ2�s�P�	@���)�=ܑɃ��2��H3?��Ćqk���K���>nX�2�  {����t�̧�� �_�9gl=�����p��84_\cb�аK��ė"�qVǈ��8b��Q6��W}V��}9F�,�7}��t6���~��Ol�/5U�Fs�����pVL�-��P y��|R�<�{ʕ�c+����ݯ\�%
+{!��T��Gp�
���S����E9��e�:硢�oR4��ޗ����;KE�����'I���	:_��Udahw{=��Z|�wt��Q���������8����e���~�1�C�y�
}H�̑Ü�cz]��+#����-B�1��0s�暣1�t���/����}v����͔_��팔@��Թ�g�H�C�D	�qG�m���YW��Z��<��_a�,y̿����wm�쑥;���6���`� �p��}e�8�b(��BD=��+���r����|���T����	Q���9� !�z�6�NҐ�zG��}4o�cW�҈��73���':�9ÞqE�ƠS�oYGtؾ.SO����'�d�}�|��X�c0JW\-ndw�����ӧ���\7��4�=%�Bs�rT>V��#��!�9m��n����1?��zcSoR��|b)��c�z�#�)�o6c�B&�L{���LրE�`F�Uӂ(Gfb&(G�����O�E֕��W��M^j�U1L��EN)Vs���&�%Y�$&h�6�������&�$�����UL$��Mjl���Y{��_�P���.��kwHY�+����OK�Ύ/X&͚�� ���K3ϟ��I��ɼ)�<�	*ֈݢpU�9˓y���°��B���F2b6_��� �m@gZ���S�	6r����Q�#K�p%��/�R\���� <H��y��Q�1��|�wf TL�m���2mRzM��+'� Z��[�Ό�6ڠ
V�pX�2E���;�M���`t���m/����01��Σ�qr#����]̉4u��g媬����r��$q_�h�\b�8x�c�`Lq�����Q�����!F��
���#*�"k���5'`��,j�_��ъX��tV�}t@�3|�U�lqvP4�u��M��2�Aŧ=�^��&�Ҳ����
�TfJ�g�F@�����,&��ֽ9q!�H��8��L�f�V����Z3no�"�A�[37i=W���1)Ǯ��Dio�M�ߘ&��V"-� �aڲ��o�m0��Z�E��ד�{�[��E������{;;q����<���w�ݭ��a���<v�>а,�I���s`�%��S��Ӊ�O���r�hh���cs]�mu7I8�ڛ+	G�����;J�Wp�.�����^{ux��2"l���ˣ���k���_s���<����%Q�FO���h��,Sng��V 1���+�M�
LO�"�!m�V���,�����+���*�Vns�������@��Y639^�!u�˾x$�{u/���4�In�!�L���mhbD\�Uox�C^��i�L:L�<�Uz,�$��J��}#f�\��j�q��[Lu
�;i���RY�g��e��Z_��̏m$�j�����?M���I���k@*��A�r�6"�@}���s̉�\���`�`�y��� ����N2�j    A�V��6⍇��,ǰ���`��A���Ҝl�;��~�`w��¼Ӝ���P?�Z�*�\�Bϐ���/�ʥ��O;���t��?�<�?.� �ʄǳOC�n���KM"v�_<�iOK�aq�iL~�/P*��P���ō�n� ��8pa��GJ�s������d�1�HX.>H���@�&uEO�9.�n��t���D���)��+�c�bw+���e��bM�-U�G�d�p�D<�{<�C�q��y{k�8�'P=սp[xQ_�b���{?ZϵI~�|[����
fMM�*9ED'��&aUo�+ov����/�"/�>M��Ձu��$I�������C�p���}ꄧ����� �c��K�E�<#�۫�Xb���LDM�*YoӨ�*VI������|A|����������jb<�o	�V�06�l֍�/�6�y��䕤�m+G��b�b(O� �j�r-A����d��l��z,�������gD��rtSY����=�Ec�Ѻe���l�P��,�v+�]帺��
ȯ 5�!�b��{���M�E������a۬HZ}�(}q�k+I�%��4kj22=h�������^�Vh��x굻j�p�v����I�	�ڒ@~]ekA4�B��t�������!+\��)�d�Ȑ9���Z;�kp�u��Ʀ������<n��g��O0Ӑ"�?�	���AO�&�s:l��8l���Ӧ�ܞ\6����陌s���Ж��K �ţ��ꓓ̂�
�A�B�K�n�[�љ5Ё�q�V�����L��2u���*L�ם���c��y�Bc��8f�\є��k�LQ.��:bh�5u�:�:���%|��Zqm�Z�ےߌ:�Y���߭����<�6�~/�i�����+��q��^h��)8�ִ�f�^��(��/�1�d�i���(�
0�N>DQ��{ᐙ�-F��dL�c�'�&�*��й���؍���g=�2����1�<��m:i3[�t 
�槩QV�o��"�Ǡy:QF��� ���g~�&˿<�*,u�+�=��#�A��0Ex�A�K�%�,q�V��Z�����l���om,v
4#�h�
��4�V�%�o���C�]�g�:�4��4O*��m%��C�?'�V߻ҵl�*qӞ��<�*�3X����4#>����1k��/g��%%�{w�G� ��rE�ʲ��G��&��}�3<��\kY�P�-X8�>���<���gW�Y����[���v{;[K�67�;D�mm��!�i�em���?�H2I7�ѡO%˘�I���2ފ��Gra�3����_b�6�==g�7�λF~�KI:� Y0����y�t���#�>��wy��`s�#Ji������n+����s��9�z΂_ҟ�v��Zprw��Z�*e̵,�r^��m�#��M'�G�nT��"z]D���q��!B^�,�+���4��˙+���	0S�Mo���*� ������J�i<�遆Fm�~�ё��qiT�� �a��N��� �\��J!�V߂['x�����r��8qH�c=� .<j\Cb~n�N����� >��lϻ��0��l�H-̓_և9�Ѱq�򘶿f8�~��,w$Y�4���S�P!e���-�8b��&�	���S�4�H��O%]Q�h|-�C��ި4!j����qؿ�J�tx+乯.��Y�-�0�9��hɂ$��*8�,a�<7��a�\����q�{�)gh��(����;B-���U;X��%�\18�A��� }}91�Ï|�,�B���i1�~��pТu3���7�z���sT��;��Sq��ҫYt���8�Ǉ�m��v�L���jK| ;���D����6Wo��N����Z{
�F&���`�(��)�g���2Yڅ�K#��^�M*Em�z1�.0��Ԫ(FMA�xOe�z�H������t���X�6�e]���uBŊ>ti^CM_8U�����_�R�9��!�P��<��'X��Ќ $�F���G۽8زwk�h�t�*�29����~2�eu~)��,��?~�O�FFHv�-������!��}����PjF��V-}�V��ߥ�+3G?��iB��-��+eq�P��N�S-y�pX��ā�0驽��[e�n���*;߄���u���"_�����@�f�Z�̣d��A=/�7�U�%���6�j����OX�uu�$��J#��?b,�4���W�5ߘ�Cb.Ͱ��M���x,��O/��+��I��mAN������\2�R�����~f_��"�
j��˷>-�K�~��E�!@J��1��;�:?�2t,^:(jqcy
��>���͍�or�)!m�L�
F���%��
$W�Q�}]�'�%�~v��\0t5)])�f���|�� O�⭿±��+�u�BMG���Oõ��X0x��+���Os�o���ݞ��ˎ�{���y���s�����$�૭�k�+m^���~�}��(&k?�G�y�͍�����[�h2�7���eZ��������3�j���ބ�p�fFa�H`\'a�~�c2�O'%X����-5����(��.�RX�u������z9
M����k��
ಬS�$u��$uմ��N�%�4���~J[A q<ZP��UO#��,}�t(�g@�v=r�Ljm�ƾԹ��W�-b�F[D�)�~��$���ը\).������j�I�iq�J�Xh8D�^�i��0��G�Ѽb���� *�p���f�Vm�3�0�?t���1�S�zKtEs�	R���,r���/���h�,-J�3wYf�MN�?���G�C�B�D+�!ۀ�l쮆�lt�{w��z�+KP���W�[d�J?}�P�����Z���"���@8�₤_�UZ6�r��&ˣ�-�֗w줄�$�A��f��7�U;�q)�kWЄzy������ݕ���9��Y�5;IƧ3�Mb�
Ο�{�Z.���^����ҹ��..K<V���m�31��[�+7��4����ת*�����(���~`����Wa4�N44�4/��t�jV���vAճ#���(�w�=����97|T�i�,m"�����e�L���>���t&@n*���ƺ'r�ˇ��!�Dˬt�����4t��#�oX!���6jߑ�Gw�ݟa���j���1�,�q�"�/:1T>�02��#dO\��t�E��аc��Z������C��k�B���^vou�ˉ/u��@�/g��&hRfҳd5����#1�r�^�x�O���UW���Hk2�),?�3@���Lk��L�Mx��BEpɀ}�����-,)	ilԣ�$m�C�U�S2S����"�Y�+R�F.��������K��a_�h+�RqZ��:%����U@�Ƀ�'���8@��B�1�>�Z��L E
���;!�y�G�Z�2-f�X4ō�N#�%ug��i��;xl��9�+����e:Ȧ:��gL�ȁ.��Z����ѐ[G� )�^X9��hO�Vcqְ��yjȭG�Dd�:1om��zfV��6���$$�dyO6���c{1L�iTAʹO?+g#�39"o�xP�*��!��|vh�xl����#���s���3̝v�!|���'cOŁ��� \���&��b�7HLœ3�.8&��^tJ��?����5���CU'��Q���I�}�+*?�J�C��j4�)������P���DV�����ʳM�ޫ�6�/060vg�+o\<v)��Ly�K($h�V�@RW�݊��B��~� L�p�вΐ���j���S�A����	��3x������V�iūz��V�I��2i4F�eI��m��L�I&�J����;�}�~��g�>h��[�Ak��-e�N�Em*X���R�E_j��?���D��|�M�x���8���m��x��{�Abt�ctra��h[Qt��m`�;�R����ު�5K��&xK�ʬ�Q]h(���w�"�2�ɼ��5BcxE�,S��h���
��$�*`���h$    ��J-��T�������JՄ&�l:�ԃ���b�a
t2V.�'N:=�~�lm�����mO�C�Lh�NHB��͚c0�/`���K-m��Kh����i��FuNe �6u�z��8��������dq��$M��r-U�4|AY]�X����q�vN���W�uK��)��!@��2��r�b��Y�	�Vx���<�
%s�)&q��_d��P!� |Ӣ�]�Ւ�]�֕�-������mhl
#�I��6h۠���1+���phox�J��VeѰ�S:'#قĢ۬���;��&� /����|3x�^o�V���#�K�s~��U�8���^�o�y�����1a�TT�H>Y.�z�˕��⛢���JY������窻�B!q ����4]L�n�(�.C�;��-����[���]�JΘ���W��R��Q=ey:Gډ�.��n�&⇰Fݨ�œM`앚[)������I�I��~��
E�ψ�U�����acT�pˀl�X3f�AÇ����(1���K�ҭ-�hGN�ܑ ���(LqQm����d)9�gbq����Zv7�n�n�,b$���aJLlMY�U@��b�N3=D�l>3Wͻ�dB�Ś��<>�׭�^�r��G�dUjL	��9:�t�"�)�=�52<�L�(�!���4_?�����">ˤ��[������/_?�e�2����m=�{H(�����!��P:�fM�p"9��m�^j&�h��-��;��"/q��mS�0�V�)B�ܵZ�F��ԉ��H�=&�;R*� ��i:\��n-CN���8YR���R�=��������C{�u�*1���6:8�З�a��m:R�!�ҠV���#͘�c���ge+�:�=GGn1�+y�}��Cwм,r�@���E�;=����{.�ҺvR(4鰁\�[1��o���{5=�����bg�:��#�8BJ�`��b���;gV�Q��||�Ȁ�"�a�:E¹�4ċ�)4�w͌GF���l)�^A��E�XEI(���1J��^&y�ߟ��{��Q���������r)s���.C������7���d������8�]��1  �3j������zo��ȣ�#9�{9����:Ko���A�߯�nlĻ�=�M����:�[�|���w��5qƶ�fUxc�9�J��������<��|{��2�;�3�ɺ.����������s����׷���>>�mui�ņ����Rt��J��TQ4�*��z}:X���u�_��`=��� "3D���D��9������N�/&f.޸=�U;�XF�1مl�mGo�Xd����(���ԉ�U����c5.Va�(�^m�%"� 'i$�2X��
=�-��r+"AS���n�O���OtWW����%��/���ƛ�)��_��G� N)�v��I�i��v9�^�0��Y�e
���B�^���ͣ�ƣ���J�-/āw��M�@+>��ʗ�Y"�����4���I���$��)�?���]��1x*GZW�m �[��v��d�St[W����~���'�>�t�L�ަ��U��-��O)�{�67���h��A��blU��1>����A���LVG)ns �g�Xk�B.(�t��ϵ��3L�g��(Pɝ#�^�W�X�i6��Wd�dNO�. sa�|�w�돌��������<��������ݽ�����jSт7�?J(2����G�O�����ׯ������/�!Q�l�S�'1���ۙ"o�J�ٱg�0ہ��|�&��{h��'��P�Z���\��I�C8dK5��X�O�Io�W1Ud}����>�N�>��o�w���nO���������9H����<�H�����Ýd3�{{�ჭ$�-��_��a�X���Ys����Q�	N$F�=��`���hp��v���0~�Zy'-�8΢^`�[GA��׀����K�e`�э�^t~�6���2d�?FI�b��v�5��d�1����B.�Sw�h5jbd[@��o�E��2����x�S�C���#��� (�ir���6,]�:���=��e�n[�%J����� �6A��u�S�uZ�$�e=Ea!B��6U�wǄlMk�]�gs{�!w��J�K�2/��W�����C��3���B���2Ӡ���UVN�3ӍN>y���p�DU�5�Ęɴ
�)���r�Ȕm�������
�F9��P�ٴ�*�U���?'��wy��4�Izs2����kY�I�_�h�o,����P؞wjDO�����Qf�1��f�_s��)��)�=���đ��ZM���(����y�N�n�N��Ά'���U��2�}۳�oi���5�u�k��FF�n=�9�L���0��U��e�wau_�^2����P�)&��u�� ���~s��U(��q�*%��M%�X{x��+��Cv�%� ��F���� ��(���Su���W7��p5k��:��BLU�Se� c����	Bɹ�![�Ay��'2�� ��,B-41®AU��pm:���}��=J���� �l'p���
ruZ6�ERN�l�3{.ڋ���FX�0j����!�{:HfN;@=!5��'&,u:������Z�M�Rzf���\���	G�r]�Q5�}��m�D�R��
*
Z�`�0>��l=��)�x�c��*Z���\w��W���#�d�s�������N��]g��R���7��6�[w���b4��������)S�1�y��a�Ry�@u\�>���R��*l'�ݼ�L�N8��P�� ��t�����);  �<���c5���B��'�M�K�U��B�l�˿a�BvY~���~�� f[��Gߵ	uE{�r�I���q(3�H'Ң yB���I_t�R���zy⑅�WC�}�����no�9��ś�U5�r��g�D�K��Z����S����!�r�JXc���Ԭ���x\�w�:]}0.9V[t�'#�0ģũ9�L�
�X�X�ge/O�.~vt���L!!;�ܙ���c��b��排A4��p���jM��VѢ��_.RMH(ވ[�1fV��1߿]*��
|.[��e������V �B�Wu�}i�,o�S�j#��{��ܾ��ŭ�,�J��P�%ì��5i��=��1t(��U������!�c|^�S�k	m�1���<&�?b�󔤲�+
��Lw�Q�ŏ��5���T��Nt�T	��O�2w�x��AԎ�˽O�c�͢\��}Zexs�	-6��uz��fe6��>� *;n���9�y�ҧ�p��"���j(m]X�R�7$dZ��N˃4!7"b�4�Z}j3_���F�P��J<5:0F�̲�_(͠5u���3I��|�&�aq���H�~)��Jq��ᓉT��ÔRt���������L��D�*����15峯\��S�r:��?{����ҷ]��0��%E�{�c�#=��J֕J�hh����*������s{>��d�;\�����K��t���Q:$������+Z(_�4�S���>���s����g���v�(��h�u�q+�Z�g!�|���tl����j�����/���+��{{k�g�?��2Lg$��w��k�S�%�0�k����I�I��*��f�U��r�LV`A�	(*��Oţ��������Z6ir(�R�`E�ٿtA�8���z��ps}
�v܋�bDs�FjCu7|D�}���`���n�6���RnL��P�����_M�$����e�)@��w�Q��k族�c��u���7�����U='7�7�� �ZvOS��i!�c�֦M&d`����]�����VN��M��jQ=yn[e<��7��z��V�=O�`�L£�;���&�/B-][��K�a]���^Ԛl�t^+�\��6��Zm�(�>���3ٜ���\��lDQW�A����E�d���@-�аYt�ev�����<8���b HŤ�E�7ٰ�P�X�p_�Da�ITֳn,�Y҇����k}���    ���Iǣ?Tl�4��O�5�P����g�<�r�B�Ё�˔���Z)�_�\^n�L=c.�e6���@�שrh u�j飤����j;8�갡NS��QWw"�㘤P8R�{W���6-�q���q�����d� v�]��QyO"�-Җ�,f�l��\���l�H�7�['��*-�����Q��M���N�e}�&y-��W�_vD�{]�(@���J����0�`����>髳��ٱw��󜵜�=-u,
PJ^YA��*�?�u%�.�I1�N��E��9�:������ל#(�=�G��p%I������IƲqą�{-G��2�ξ�R� P�f=A����p��z�

6�Ѷb��nb��SҰ��v �'g=�m��|zv��"�1#��*i�'5��:����� A[��TP,�α�
N���x����M���@%﫜�Y��3��\��)u�q@ͽ���%���B�v�_���k���tsk���u7X�}Ne<�Γ��-��3=FT�?�ioŃ��C6?�6���I��`\�*;��q!��������֑98�(� g��C�"��2�� ��c0T�����7g��Ns����_��� ��FJu��Ӈ�>_
�ix���o���<�lt� ��6�-�
i���>xг�Lo���C=��G[�v��ۻ{ʤ��p����`����z�״�ũ}�\��]� �o���}s��Ů��,�d�t����Tܼ-u*��}t����i&ʑ�)M�W�0#��/�����}�_x� �r���j��)߈�H�0� b��Ӣ©AIm<;�U)W[il����1�4�ݺ�b"�3J��'[�c�9�LXef\l��
�a�㛁���qǋ���ó�fN�u�[�S�k�w%=�:^3�3��+S��LEDd;E����]�@ڷ�x��!x6����i+�������~�/͗7N���X�U��4��"��js�`��;�8ѐ����y��2��1�������sK�oP,�p��(K�f��LbO��ͳ��n��
!;e�>%y��o���Jl��úO~���Uz�V����Ȓ)��g��C�É���
�R�C�A����_[@.0��x�p��_vm�)Sm�J񁍭�ۢ�Ď�����=�{���B��i�Pp`�$���ڱ��{��y0��{���y:�#��LI������.���޳���p����H��X�'N{�<��S�����R��B�bґ���������R��?����/�DU���?���H����_r]V�'r�~���=޿�jZ鐷��䊞֭Ɵ�P�������������y��Ç}����'�z��ǟ2�<���a/K�Vח�p���z����Ȑo�C|������ݏ���s�/�WX���7�7���&e2�ҡ�2.�Z��?E��;2y������4�c_*����K���>�</����K���g>e��E��?G>/�a�9���ދNkܽ!ǚ�i�%�- M��ܜ�^�q&F>!ʿ��h	�I���W��y�%�B@g ћ�T�?o3��e���ZGW��uߤ���҉cŽ�r,"lZ戦�S�7++�Q��NMjL1dc���#F7H։������w�f=e����T�1��CRG��*��20g���:&d=���`=J'�Z-8��5��IK��45t#A���� �a�!X:W�s�@Ǭ
W�����RH�*�����z�sO!���+8P��Û�S��	�v�uM��	|���2�Ɖ�>��:Fs->�����ɼ�w �엗5QYKZ}Qn�#(�s�W�1��c�����h�3�]��d��4�gc�-��c�$_�!\\�Et61Z3�D���3F��:�Y�Gr�������;9N����*s@����P��P�x�k��7���6���"����x�!��������Z\c[C��q6E��Z���>1�!�T �F�ؠހz܌����bN���1S@zؾ2��0WuC~y�6�d1�I.��Ł-3Dcj�9b����am$��'�N���ی$4�k����'�]^*��J�-1g��H��N�N��Q��h����U{4�M¢rn~���atv�����~s��?1|=I�O!E�Q�~JUD=��
e)�)8"�tl�n�1�L�мv��8L�K��G@�ɘG3�UJ�P�IY���x���dT���V/,�R�*��3�^�T8���b#]h����e�$s��(�
XE:2�ruX�˔7����u@�Ķi���;�Vgזe(=���?�5B��?�Z���Ǔi��`�7�!�y��)>�_}���׭:.|�+W���XZ�����;�ʪ&��z[��������t[�M�<��]�b��G��G˷ry!���� P��oZ�ǡNj�)_�������3w�ᨓ#/%i������Fm�Ѝ� ���&Ϳ(Q�+�g��HB���}��&�iS�,+vR�4_�>\�ӂBT�*z]����Mb�U�Z��d:�7�68V���?=;<��^쿎^=q�u@������8@�/�Y7I�`�a�̘T�6�3�W��s܋��CD�g�Q�4��7�
	��i2����8�4��1�"�ʹD ��>�V��CeY�\���Wj+�m#o5ϩ�Dـf o�jrl�7(��H<��O� ���v5!s7�w:�����loĻ��V0׸%�(�6ĀO�̓C	G����Ett�=�{��=x�!<�̖�$�:�&���]���Y�X�D����+�ds��� �
��n�5��M'ŵ7�����<P��c�S��_ΕH��U8>I��n��;ʚ&OS1H�Aj��9+���;X!S��ND�o�Lg�]A�N�g��3(��]�pa�v Wk�ڞ��,4��d�&�8��	�i|O��c\����J��e�e^v��7��WoN�����uB#
��Z0���j ;�ё�yrk��)raL�������m�� �%�PF-�꩓�����!�R;c��P7\��Hº��E}܂gh���Y��:MT�:|
º,��N�-g�T:D��<݊�^��[��0�ɥ�0x�Vea�h�Q����V���e�d�h=����^�m2L���d5���4��HoÝ����J˕���I�)K�֠�;~��{ظ߿y{"��󀡶�I�m�j�n���w\�ޛ>�U�]����b|Ö�noq��*.��(2O��|�Oշji�741�`�׍��R�#�eA���B��IU�m6w��7�U�\�i\��!��t��(�aLH�b@�~fҔ@�5�ܮ�� ���2����=�8fܘvrSۍ�#-�(�����u����0I[��E��a�1�i��/p��krI_�<�tx�4$��׹�Y�uB(Y��jU$q/��ط9$k3�4YV��]��:��Y<{оT��Ϝ��`)L��Fx�+�}����c��N������O2����L�je��Z��<P���0�Bv�{��1+9[76P��|��`�:1�+d���Y"�rm^I�x��N-��Z�9��sj駐Z�u{M@Ze�	 ��Z���{ˤ~�������s�e!!A�w�^Z�F�h�{��Ԇ+O-^����ּZ���\�����lp���7�lA|SfZ�e��t��GF�G����b�2�}�I����}B�N����s�y��F����Ox�>-�,�{ir鐠v�w��T'r�-��_�+��r� �;�	!.N|;�6K����{�Q�t���v|�w�Xh<��]C�"_l��5Q���)a���x$pnޛ�CA����K�z�,� �c~`#b�y���dS\.
�3Rf� ��j�3�b�ȝ���U�u�S�9Ԍ���yq��~�U҈�]
�c��xo5��^�R\��9�h��+y)��7��8�TY�(�� u����~������Y�^<ɮ��=K�'�M�����:_\&�����I��6��9@�"�$�X>�������u�!�th��8r�ù���d��KA    �+i��e��dR����������o�y��A@&�N\9i�v-��
y_ȸ����Y�|�\(O;ק�[]�����T�N�c^}�GO��
g�������\�k1!NT˭9/��0�$��ӖP�ꋽ��|YO_p� E�
��y��A�֯��.�N�/+�W�(�J4����?��������+F�C�@��Ԇ�p,oJ��2^��#J�J�4C���/�������T�,�_Nt;���r�!ad�R��p���
(^Ҥ�F
�������[3�u�|�	���'�9�q歽3;(����l,lӳ$äӭɜ
gS����^�X�m��=��|��·_s˻������g��vm�B�K�>�h-p����)y���;���%�u@�����Ú���2�904M�"�GʔU1Y>���s��=t�u?�U����C�ƩQ�d>��c�oC�2�
�q|Sd�s[�Qw�9��\�FƖ�Rz�ԾT���zs��Ԥ_�����F�s]��G�,��
�,j(�IVO���/D��9�,���uD�OA��60,H%T��ϘZ�F��*(o�����Qe����k{=H_�8���e�s8�6`�.�9ȥaP>m�S�i
��Y(��%�LTp���g5\������} -]�x|)2N���+^e�	�>��!��� E��g���`$6S����՛���7�ob���'�K���������T����uq�^���������ajX���I�z��I����RB�����/Si.���[���mB7�_�4�[ÿd�a^����D m�g͐arU��7�q03�`j�r/o�VW|�҃-�������Ɋ�wl��g<�������c&�puLB�'K��N�K>"���n/c�n7�T�W1�`���V�/�u���HŹ�q�(�a���ɀAOl.l��2�*j��>�^�9T�Je㒑�V��*��/5g�JR�� ͪ�$K�GD�&	�
�y��*l�%w|���B���Ti_F��g�l�3�wU���A�A2�~.���թ>��:�v�"J{���!��Zf��$����=��0�{o��*��������5H�Fgez���o���1��CP���i��O���Z��S|3n�v\�|.��l����� c�P����q�	� g�i�781͇v�x��H�פ�� 0�pvP3f����ԏ|�f�����;v[�q�^$Tj;KǗ��L)j�s��$��+�E+�;A�j�6#0�R�R��O��2:���@KȮ���ךּ�)$��V��l�k�jX���#qG�<�������tO�y�
�&ȩI���\�%3��퍨F3c��sns��z۽ݶ뉆T�'�Y�MǼ�<4xE�����������n�Jc�qv�.'@1G&�������T6��n��!W
k���8h�o��8>�J\i�p��WC����&O�� V��^�ԛWb9�I��J��2����X}�D enPR�=�����P�Q�ˣe7.G�Y�R�p^]mҹ��_��n � iƨnӴW� +�1�Jѳ2������Sm\�b�Ɖr��� N�	���5|��1(��dZ�� �����(�)Ͻ�9@v
t�r���m�|D����a��CϽy,=�9�`��v��g�X��4��qF)�U"'���柾��'*t�Z;�'1{=%c��W���F�=~���jҎ���EV�{4$Y�]���=|����h7�.g�@΅�TM�,���uv7(��Sn}����*&"���{a8>���ýX��!M����"$�p��#�Hpa:᳕�V�<9m�>���Dg'��,�|����֍>��ڼ����<\���uw7>C����m|����B5�z�U���l ~��#����� kc�%7,�*�V��Q�e����^����i��,[�N�9�Ov�'c�$��6b��dF^X,�k�� 
!��7԰�ej^H�\#�jU%�;	#���Ս�]�RE�?���yl�i��	k=��5�i�7؅����ȩ�K�����a���!�
k�G��P��A�)�ar�"��gs�3eG�&
�x<\چ2f1���r�r������a��ϡ3�@�Ȏmi�ü,�k�}G֝��ca�,��@��J�@�-r|�
�t	�h^�Ze0`�4?�8���g3N�m_R١q�o�U��S���t�.H\���d�k��L�ԣ�A���t�W��Ł�7Ԧ(|�*n1��n�n�U�L��N(�%|��������.�Ԣ�k	bj2�ʔ�wJ�Rj���*R{�I6���������/����r�� �3���a�"�&P��`ZfU3�l(@5y/��t����|Fm����E�rԣ�Jr�f�F/�K�nb�2K�e��?��_C�Ra�2����y|��?�
�9!c-A���jc+sx��b0&Z	23�Ҟ��#[���gpi��(+hQVnL���n� ��� �sVp�.mFȚ�� h�w����b��.���;�v�Nṕ�s=�����z������g%j���f�Λoc�U�ߙ���42߂{�âxB�F8=�f�
3��H@�d 乘��|��%GJ�����L��|��	�g�����L7�,�3D��Wh�ؿ��hr|Ƶ��D�����H�~Qv�l<ʃ±(�K,ͧIz9BY��_X:淑Q�P���I=&"�z�' �g�p�o�8B=0]-�I���8ܦ)����5���j ��%wz�I��?Ie�A�3z�8��ё�vJv�r@�$�t��&�R�j��W���mG�)N�4IA4{�0S�4�����w=֮F����0WU�cN��XM��e�3� �H��E�/0l�"�����#s�;��^�	���Vyy_R
��C:���F���GwG���~1 �1�X`kǫ%P���P��u�4��_L��f�%C*/���A�j�9�jW#�WT�量���=�XL���!��3!A�[�D���=/r�KQ"�����6l�7��U]�4D��V�J0¯�a�2���$#�Jc,�в�h��8��r�L���y�|se�p�[��]Ou(�N�������Vڈ:�I<����9-x	�si����U��\�ak幧�C0�V�����ڗ�r�ZK5��
��%ˬ|V�]ϖ��
H\3C6����5@>�S(Vt��ƚ0q�T�Z������}4��N�fjq:]im����U0U�6�N��G,K���:W�q�h���u["@����y���`����&T��q?�d$�����X�@�q�]�$�b�z�XE���Q|�
�p���י�dը�h4Z����>J�%��u�$��uʢ;�ҋ��wܗc�$�@vaћ4�Tw�Q��a�4W��+��y��4�ط����_eD����v�3(m�n�tӑo6?��ȂKS�Vi���Y̯�M��D�Q�+�KS��_B^6��T�h��������U?���l�	znZZ���Zě��|�\.�rIH���l�}�{Zc���Iw-�0:�b�to8<��e.Gga���._�t�r4���B5�b��)a�ŭ�`i�*���We�.���ֺ���	V+��YR6�y��2��qZHr-�s�aI�Z�ُl�+_����`����(/�u��e�tC���к���P�XX�~f�)0L��|=�-'���G^-�sۨ�t�1j?�����n�ph�ڵ�.2�[�I��}H��U��yw����^;M,+)��p������Y�U�V�"����C$��t�~~/zFd:`l��/5Z#�u[#n��^�����f�6{Q�N��`�ß�߬��&A�#�G�0�0�Sk�P�T���Η.�<���_!w����;,�\q��+��=��zf�9�a��6�����;(��e��Y>�����O5��셆��щ�?I��b<o��a�k����L)g�>�ҟ��BF5����X.�ڣ�o������N=ݏ�G fH+�H,7v��T�^��:]Z%��Qhb@�Ex*%t����k*    P�X*Қ\k����8��䰧�u��ǭNOF� r�U�t�=����j��C�6�o:��
��a"sh����c�5K=��#�Y��#���Lk܈N��i�.zeR�O?m��)���J�}�@�y<+b8�H�VG֦�R4@Á�]�ȃ$�FxC�ceWj��)����!/PH�xY$c'�������_�}RT8�N�d\��:��p���_q�l^�=]����"A�ՏY�@�Kj���X}��-a�.����)�� vH�F���v��i��+�;������[��R��q\#0"��8ˬ,�ߴ
�!s+���V�B?�۽��
S(�������oe7�}WN@�Ĳ��?�e�����X͐�l��Rz�X�<�G:z�P���������`��}�F�l����`R
D����,�a�Lu����C�/�?��q������4�����r��r����?u`?�M�o�',�&V������2%�l����U��=��|]�p_�q3�#�=�}>0$�}"��8���Ë`��ή���)q��\��`�%��������~�X�1*J��j0N3��(&ό�����z�5%/+�A��r ��!�?pۮ1��9��ϳ��Iʵ�@r'���rBj���L�g�b���%�n(��� Y�@MP]��,�!� ��t��
\� l�k~�2�Gh����Ȭ��T#���1F={����ay��g���R��p<�#��I9� ����e{vf����ݪݿՆGѻ����3 ��K�l��K8�	0 u��� �B7�{.����4��KM<�8V�섮��*�K��c�/5�{����o3jl��fF�Yh�����z0.�%�����j�����Ia5�����d�B���׉H,H���X��V	|Nx�RvT�5�~�6ݙ�	��q��n�a����-�D�]	0V�u6�N��;ޓ0i+!���3Ï���%�!��&��ݼE�py�un��Ը��,�t��b_���z�6�%�݋��EM%�c�36}�;��&l���\	��B�	����QCu�M���K�2�������r�W͋a`W����H�2��i�� m��ۥHeӀ��l�g+u��$	)�
�z��:RM�_Y��#?�Y��I���Ѫ�Y�N��7/x�jϙ��/q'F%���ש	Q�L�5i�a&�zåw�iZ��ެa�d�YN��e�敔#LVr�J3o2��;u։�֌/�o�K���#�T������6�'u	e0��YR^���������:c�̯�b��f�e.k-?���e�[���[m۷V[��;�0f�qmC�4��LKY8����n�S�m!R��k7�k.��{G8H�5E��5n��H-��%&���H+�硞�Y_�R��n>��L�e���ܤv�oR��	HMtMC�:Z��<���D�(﨡�(�$y~���,�1#��d9a^D�X�ȣ��l  Z-��k�$L�<Qo�i����R��,f��ml�Ȕ���z������՛�HY������戜vLV�L!�9m�7�ԍ>�Fi��͍xc+�\)iH��B#�������3%{�_mfȇ�W����b >$so��F�3��l�?�Q�$�(o'@5�?#�>X���8T�������e2�22��}�$:���S_�ҝ���}��t�KgX0����۪ދ'E�ֳ�q��h�e�17����mkp�������^�4�����6y��r���.�	�D��
u�ӱC*$�ʉy�3B�l�^*�	J7���A�Z�Rբ���9v1��7,�󑚥�\�x�g����]F�:�/�ΪG��?�1�"N�azAjE%�J�i�L*M��?���F���}Q^EgҒ*�����xQC���u��5�v��N������P�!����~	/W,y�-H"��9�W(�q.��B1�C�ǫMu|��qx	��^=m9m�d�|]�Wl/�d����8^u~�-��ށ�%�)\�uX�|~.����f�zk=���L����[�疲�-�����cd2{4c�H���C�����$���;�_z�@�Z*_���ɓ�O{��?{{r��ߓ1`����ֿj���t�{]KW��!�%�N��5]s�E'�CZ��>?���=�g6�~������4�����ɓg�o\�/���>}�cT�{�$x1L}V7z�����褷��7�]�F`��q��/��LY\h �+�Gqtr��*=�,���1��@��"&��T�H\��U��S
G� �3�e9գQsb�#�b�� ���@�8)�r/�?�PH"�IY|�^��d���>)�9�pxH�,`�`�N��2l�a��{mluNvH��X��:x��P:��x���Cш) .��O}+���#{����'�Nհ�J����q6�$a����5�(����t������{�6I�@���Kc�ʵ�&u����������hU�ȥ�V��?@�n_�(X�֜rV�^V�-�'2�T�O~��QK#���`g*�z�Ŝ6�+�O'��C6+4���g?��[��+@=9�nǽ]e�y�D�a���qK�������a��r���\�]��`�[v�݊�����tJ�T����}]�ϧ�O�?��>�N�d۳Ę�����\�^+!fKe��ǝV�1�`�_iB�Yd��F֍K�8�pD���
s���2P�2[ܕ�03��n+~�����==Vk�2�~�pO\����<&|�{r��q�����A��q�O�=�1�ٍ^��2>p�A������yY��Q+nY�g����Fj�QK��Y�Gf
�iՑR*����DLG��$|���m�	A��ۅZ�{b��ױč1��	*K�S+ٕ��ZJ�Ι"S�-�0Ml:L�92��+���ú��"��"Z(0U�::s3֛�w8�	��Q�F�Qx[M�w����sc'��$VB� �nLX^�|cd�i���>@�r�}�d��;�
Ku�>!��fҖ��PTJ�����#�/�0�����G�R�)"-�,�\���lzS��+�ݱ�8��VQ��N77���Q5��q�V;a�.�O��
��L�!�6)�f�G"�W!���QXOtԥ;���M-�D_��F��eoH�D�ow���T\eM��|E�a�������8��\@Dϻ;My���Ӕ��䙎n���]���0�ȹ��X	��% %?�w���ʷ
0�/R')p:C�=��u��Q��o��]	�$	N�	�����������8�y��Ę������Ôɼ	���ƃ�i�{͋�3W�8	<�����@{�am��ެ��D%:Av�7ZIbI���7�퀏�+?��s#��t����`��\ �� (m����U�T|��CR�lG�h��'�-&dE�]T�D޼U���)w�3�'}���̥X{����XW�477�6��{�}����8϶����Q�p��� $Ut����M�V�u��3z�����Z�#͌��u\�oW�<�!����9.G�J�`��*�f=R�J_��n��(��Q ��iry���h�\`2~�\	r����/���IͶ��1�	5�M�v��� U�4�X�k|x���ow�=��RnG�RYiL�*�����A�̌:���Wya�$ %�f���ԝ�-��kD!�T�i�#��b���(��X���Τl�5���(PC���Z��LB#�M�dQ��%˅�H�u�m��Bxoh���V��YIF�X" ��Ɲ���W9��H�YbF>H�����Z�����$J� ')�"�|�F�Jr��z�t��G�C���7C��:�(|���X[K2�3D%�J���^�肊"W�m���7�2�@�c�=#��>��	�{��SEMt9`V�VZ��-(�^&Yٴf_����=��#d��Ѥ�X��������j��ѭm`�
�K.R�孖�JGe����$���s`�� tRjZ�<͆�en^�ҺăyY�l���t):���׭�`՟�����4X�o��n�%�@�_WJ�Y�N|N�B����v_�2��d<�}��f�Z�E�r�3�    qӐ#c)��)����}�IPE��ٞ��2:U��Ŕ��*�W5�TF�sz��ը7e����ER������.Y��[�oy�R.���]1c#c�$[���#0Oű�ՓV3(�"Mi�1�D�`��nJ���'�͊Ce�?=�)9/tP��
�琼q�t��z��E��|���]!7�4I�m����S #2K�s���o3~`�5u"!p����6�G�o[T���=�����%�X�SPWu�4�G�R��|����o\c-����ِ9��ym�7�!Pک���_.�Ƚx���^*����n��xn�y` ]'`�!��sd��v�?V��3�c9'��M&k�G�r�� X~j�M	��J��aG�/�O3ǧ� -&%��@-M�(KW� DF����HA:�g�g��qo�e����9A!�L��#�z�PY�h���k��H��)�5�'B�u����UrR֎E��?��;���j͋P�ѷ� X�;�����JrP�q��؛FoY*�;Y�<��{>�Kn�t+]�}e�ɂW��W?9��c_� p3(Q���U�XV�hw#2jw�zv���g |
�r�íO#0l\��"�(E�\b��nx^֓I6sq1��Lh�?��ȁQ&�3-�VA-���x�ڢ��T�I��?I���f�̬u�VH2s�D: 	"�`�|x��s�fj���������۫r��IGZ:L���@��˗�?���Jދ5����zd�?�s{�,��N�L���;K���Pv%^7��+u�ހ���8�#�i��o�����ЂN����^���)O�����	�=����=~�:�ofz o�.x��WѷX�]i�Mc�؋�џG'�O��I�e�?6�j�oz�q��=!G�tx�H#�`�D�m��d�H3�3�I#��hO���c��X[}(+�	m�{~�RO�Er]\!���W�p(0o{<�W@�jH7|̞�x�^9���^Ά�D+�/�����̠.eE���y��K��>2"�RZ��Ђh�N��?�͓�kv�7[m�
�Qb��*fA�v?�|m9�5~q��W��_�ڧ!�hM�6G�j5�;���$c����]����wG���j�g"i~���v�=��w_v��vO��Pn:քE6�'3�Q���2{�S����=�N����}�V%�(PIh��A
�Z�}#mp �?s���n�s8��,�戬�|G�O��P0���v��f�F��0dCM�22�������j���ϒ��A�I�֔�i<ñX�>>�`�c�o��j]���{}͓��p�o��$��fk��j3`�m�l&3#���@9�M�9�K�9T���qJ�b�����C"�+ƗJ�U�zN�����I�P�Y�.uF-�Ӕ�_�B�T��a[�!>Mܫ�a~B�&`b���b��)��A�T�6�1�ALl���M*lA*j��5���W(0E|�4�%��b`�9R7uӒK���=źQ3��`���� �)塞ݿ>M�����6�Ky<��[����D���q�:�1���̶Y#�#�� �)���z��ĀU*��-��4�)سa�x1�O?�����8�ع�wM����u,s֜/=I���q���R�!)^
��*~�w��}z~z��������K��*1i'�].2Cn[.n5�+��vw7n�q��./w�op����jkc��BY\(&�"�M���{��oN��j�j�3��߀���ɹ͓������3�]n��p�b5��,��r�1t����dtϨ�WX!l#��n-�0KE-"mc6��D�`��|ǘ�ǰ�UҌ�@㢘�R�h���:�J����O��ai��ٌ��!Jޣ!H[�����,�]o2s�����F�ʡiՊ:�\'���!����5Ř��gTݢ<U[�y�$���E�kS�1tG��G��Wt������Š��˱M޽J���M�pP�����&�qt������\��5�dv��P����%�Tz������j�u�9F9�M��M-r��1�/k�<������r�q�c���!n��Cul��2�9,���}�gc��K�Ў2����:K5 �?*`���S�"LQ�@�yi},7J�k���R��=��Ĳ���"�����fAa��ҥ񋎮$-�����'���@ӥ �D�Q���a$����T?���p��|ڥ���Z���ٺo��*,�R=l_���Y}d[NwoPW*l�Ώ��u��T6��l�b:��	D�ݻ�r2� ��$�a�Ƶ�i���T;b�KO�I��h:Ħ�@�qc��D�J�[1��ְ>N�S@#�����<�H�L3����Iv�62~�q��,F�� i�aM�/�sU���Lt��g	y��pd��:�?I)�~'}�j�eM�L1�>�fd3̧5E�*��ě�&YY���Yǔ��K^�P�2�f0(��os�GN�TI�Y���<qD�_6�ݗK�	M&��'b h9���+��Ȝ]�=y��+�$M[�x��`23F)Ml��M�O�2�3���ß���X��H��k� ��^QP��L5�,7���v0|5@AW��]��e���C7�e	4?�Gvital�B�d�.D#�9��A��:b�������$��޺A.���Z�}
y�d�G�fVZAD���U��~��$׋���?�-����Ы;W�n5�Wj���Y���%0�K!r�����,��u�o\R�I2BdÚpϏ��n�% O?�^D�khU���Ԏ|��x��3����(e&��C��
��V;%ph��`8f��n<)ćW����t���8�ߑ
��>�&�m��L�K`�ˏ��˺�������ڎ��2P3@�;Ք���6T������|�Ma�m���Aܖ�[�����<�nŽ^���B����ۻ}�]�l�[]٨\����X{����Cq���9Q�V���"N�]|)�Ŋi���̨Ų}"l�yqs�b�C�]ܨ��d�s"]s&6N��\�Ϗ�V�	g*:	X��Mrix�2���_k�
�✳����������?����8g}�Qn4X��C]�����]oY�%�,��p^��.I�۲��	Y�?:mK-)�]A2HF)�`G���|��y�f��Џ��S������>A����ή
����'��g���JyOl�����ͭ'Ov����R��6��I��)z�����N�����;7_�^��#�] ��= Rf���ݢ����Rc�-���/�/5�L�������E��4,�A?B�ȏ
�ێĬ���&ie�㔓��W#V���W՚��H�!�2���葼�ɫ��d����h�yă�_��+מ3��j@�(o��<;�!����˜�T���4T
�'��D(���ju�ޘ�&o)���%��m��� U����l"�ĉ�C6C�
W�lǯ���v����x��V��[�G�	z�F��h�Dcm�Z\��ks��zE���a �ؽ/h�Y�����y�S�J�v����hO��,�IV8q��tL�v	��p������\�v{sg�Yiq8�v���4���a�>m�Ķij��fX� �A�b^3����2I�xpc���M�k�Mؿ�MZֽ��9^�>���|�e�P�tE�Cb#9�i	�e�c�Mn�03�$$臽~t$e�NP� EEU��!^�9��y�~�"���MV���>U�%,|&j�ь��ʴ�2z���D��
dǦ��y۵x-���Y��I�i|�e=k�s �z1EJ�b.�#�j�V�����YA��c�(����Z͕����#	��N���2����Q���u���z/6�M[�<��w���`��*�AY��ɘR���N#��N�$��l�|eRN�ȗ@Q����ْ���*�~/��VT�eD��-�<�zZire��kBl>��=n�.6��y�x;�l!�\���|o{�d�C��y1����k�e�ҥ��eCI8l)xau[��zx�61%�fZ����%*�u����lߜ��Ƒ��l;��A������&�,���RQ>@��E    ����rƳ���a@ψ a4��a���-yeCX��mR^�4w�8ԧ�d�5��3��3<�a�8%L�l9�8�sm��Gl=����q �-
��'��]���5-�N�V��X,�8�&f�{i&�-zF��nT{wi�'k�q�%�,vb6�	��)�Ԛ?����kQ� ^�
a��f゛Q*�ǩ��p�N9�x�=+�ni��f��3�V`��tː��ik��K5Zn�2�oi->�-��� H(� ����W#��*
��ͦ��5��l��'�Y���xW��щ7��>?9�h�V��M���n�*�=��C�-�N'4�5�ma�k����_�Г�ބa�u!Q��m�����1G5xy2js@i@?���ץ����X!�f����	81ٸ(��������k����X����c&���B���/�?�W�����X�B+\.����5��(���p�0m7g�k� 0z �L:���M��D���*�nTd�I~]�7�ax� ��fV&��(���eڧ7���7���I���^O�����`�������h���V١�ȵf;�WՌ��͇k�E��f�5��)�DB^l�@ģ:џA ��?��!�$b�lM6����vP����$b��B���^j V2�*���pn���n4��'>qCJh�<s�"aA2��9Y��&���댌�s��!�7ݟW��b�y�;�+�!cO��j^�L~�� �+���c=����������-v�M&շz�!�ӭ�]���'`��n���ʷ���C�N67�n�BI����.P8�CdȬ,�^v��U[v���g��i�z�6�(�S�|��/A�m*��$�.u���&�~�Ge�e)����-v�����d�˪ZL�)îr�a�݌�Cl����S��(XD��$=���񀻊�#,�i��~�*���Ǎ���������e��`o�- �k�s�	�:��H�����0=�����Ѐ��$	��v�i!�d��Z���}H�).G4��:a�G 7�����^��]���
�2��>����Q�sPvyL-F�l�PM˴�,�˙���&h�6F�H��D1kVw��� e[����d�ס;9S�F���S��rA��I�
�N��y�l5q�^6[��eP׹����@4^¹l+�mE�Z4W����Lg<��iny���2�KA�.%�)���8�%�_Ek�!_��9� ������	����%�w��J��	Jڗy��X��b_5�8����'�T����hC�%�O�.ΐ���o,Gs�X6"���<�df~k=��fg_�j��[�k0ۏ;���?��i��/��z��h~���VJ������6������]�ߩ
�NU�w�¿S�UP�><^�ur4f̊ ֍��o�?��*5���Pr$��zR�Ԋ� )\F?,�wN�� Q�<�dk�bޕ�-�4��g(�pȫĲ��KM7Y�3�L���1��(���j�g&�����I����X�k�^vSMf�yi�|�yCz��W���Ut�xanC/�|2��$r�|�,y_�S@��	B{O��OX+p�&��F	�f��]�m��B�fZ�*��gdUV��,X��AE\��u���q�$��;�������$�ҭ<!]�`�������u���y�bd��0�8�p�aq�=BOc��0���� �8�|b�����F�o'��1b#��f �>��l�W���������
D.�]�d����k�p%�J�M�e�jS����[
nCMi8�
#K��b�ޏ�� 6�2N�+=��|�˄�c�:a���0�a'��[�U�T�����Av,��"+�l�#�C�Z�OV)��b�8��{�k\���+��	,�C[�ù��I�1��s�?(<�=�������r"Zͧ׬��,��r�Y��"�-����"��2z����]*fZ�ȹ����hgl���sU/0���ǪU�Qӝ͆c#�����e�$ Ik^Q��t��V1Yc�#���Z����F1���;�~#�%kŕ���."n�A�A{�dC#uƴ����ˉS�� d��HS󰰼"r�(�TAK��Q���$����ިh��H��&٤^��Ɣ�EP��Z�i�Q����u����>�u^����֜S����Te�$��cx����#��~w�%�q�1[rw��ڻ�8po�ާ��6��n����c���{�]�K"/�^@axB9�+m.5�z%�ku	�ɣ�|lZ���2���%��s�0o}�\��:l�Xe��J�7�@�[�����Xc��O�;s=��Ҫ�,��T0UZ/��{�\_�	u���b6ZX�!G��)��OܴVY�ùB�i�^%��$��qԇk	�ݑ<���ڍZP�U|�A��6�N(��ik�+�o���<\�c�0z{h��	��~N�s�d=
��HH�Ŝ��fTjyMvY7�	Ǻ!�Ҧ��:�v�t@�hI�Q���k��V�*d��GD�*� Y�WÉA7pr����5�f�5xU�R���G�a.JwnaI9�[���r�Q��+� Ŝ )�ʹk�Pq�CpTvW��q� j�h�ͨ<
�p���R��R��`�Nqfk��}ܯGG\{�G ��U��m�u��"[��A�y�6	�.�����[z�T�����	���M �G�x7;U�WK
S��&j��a-+0-k6.k<�@�;����pM�Y���,��%YȋA½bIp(ה\�~�F e��������
��<[~��9��k�%�~QG����za`5��+�-�ԕl�����n	p�e�|z���l��� ��_L�PF�s�ԥD�n���F�Zs����	���Q��:�@O>�}|yu⠏,H��t���x��J�����S�e��|�����s4[��g�1�,�w�[X�r���@�|���}|	��'h�m�D�-�45'g��>���
U2A#��Ao��3bG���wy?���)@9Gfߊ�3V ��|޼�=@�sh�_�ֲ���l�A1���߉%�%^��^�$�<��etp�����@�����YM���<���IF��l�<x�x�\BR�����ɇB������sy����B��;���]߮yu� Hg*nֽ)�4�Z��ɫcK��BmZ���s�	N2�.g��q�m�i��}��m��r���,S��`��Rw5��I:�_��n�[��)��/��S4�88�rx����t��������db��7H��i9�oX%���9!�͈8��n�L</����+��V�sJ�*w7{�j>�I�tZg$^ҧ�O H-��10z:�їNlZ�՜���Ũ�\ʱ�;��k�$;����/�U�ּ���}�W�珑p"�+�l�v��D��e��d"�Df����ԇ��te~yuE�Ph�Gb��.N�x]���c��12(�kfop��|�T�6I�����G(�D�)v>�\�!����@����Y ��ќpu�\��� ��
��A)7*5=��W�,
Fc)O< �R��J���Z�"���� ��5�<M}<Yg�E,+�_��)�jȊ�,��?�U.v�j��QK�\�֙g��y��,��:{<�8ѹ�C��P�(��h����Ȫ<�׵�2b.�=U��F̭������f�����d;�����,��*���yZ]s��Ѻ���9T�w>��e'>�인����TH����c��v�#HE�E�eh�jO��x>B���9RX	�P헉a8�b���S�:RT<҄+p�!�[��TNը�p3Wu
ELrP��
!)y_�(�'�$'p��Q��qf���Ǐ�W�&�  �g1͖�61� !Q��{�Qk�2e)���)��}xb�1���d9_󛲧� cz�5t�lL���TB0���W�cv]�`�������'1U�Oĩr}D�vH�M��,�x!օ�v��$��vf���ǩ�Y:4���TI�N/
��+�ī!��ٌ��2�b�&�R9��z����д7��U-�����ʮ5۹�����r{�uw1���J�-3�l���y������o�����    �߷=�������1��w>���K�a��~k���w��p�b��s�Y](�rpE�-����-X_Z��ߊ��#�:�֮}��z|�{��y�v���V�^w���=}O6q=_��7�l}�W���o<�ϲL�������Ğ{�*�bk61��Z��b�~��V��{�4��l���<r��6�x��;� �wr�wD�K ���!�Y����L�I�s;ݬ�b3���3�b�\[�p�m��|'���4��Oi��L�	�t���R���
���t)�|F�� ğ-O����v�^���hI$�?�]�z#�6B͡Y#���E����6�tI��3�!2;y�WGoZ��n��S����tG���򺍾�gr����t�R�1��*-�����?�]�i��9����q��}��&����^�*w:Y�G]�@�q"$[��"OS�}M�H�-������pU�X�^YUsC`���=�j-��ݖ��P�W]!���g�m=z�N����N��a�q��;��DUۿZiA<����et�̂k����'*���?9J}[�$�ݧ��:y
�q�`⬊���/�D=-�9c�R�F�m�G@o��>J�5�ưX��������?���2�9��(t��T�x�Zr�1��\����IPϻ
�FXA�8xN����x��l*�T�94M�~�MP�ke���x�N����N��AH��-{��vZ����[Gq��Zj�"5.M��Df��۵�yd��e��R�NyQ����T{��b�B��s�zW>��Z?"���<Y�Z��a�G�
u��B�E��1kc�hih=��m��]�H��{J;��0\?����_�Ң�ܵ%��"�k��ω�
! ?�A&�T���r�u:������~�xd{�+M�] �M���Mp�f��@n�oo�iv�$ֻ��cu�n>$�R�,���G$�m�P8��zN�xb��bs�'	^��C�����^�r��o(��F��"=�oƴR��t�{�=oq��wN"I{/~�Kɷ1�2����!![O�c���{%�c)���� ���l?Y�l��[��`e��vI����`{kCq�ĴH���7P��~����66m�/W�]K��HN�.�^$//���/.�7g�볋SvM;���(Ս���������xy4���{��b-���5O3�&pCX�e��8��k�:Yb�V�T���9bP����У`"��Z����ܛБ�_	���_RWN��I���H��T}:sN�`������z�����f�)Ϣ;��#���>�' ��,S�ל]�E�ex�d5hl��%ڊ�e�
�m��.eLb��� �T�J����i�Ώ���IBm/b~B�噊�A�L�����#zk�/�\	/������Ω(�~k���|Yt�qZ�9e���"�3�89��5V�"yZ���"Z_3U �>{�N���,/�E��yO��x��)͛�/���U�t�7h��x�>:ɇ9�!	�%�>�EF��,M��frYNU��l��X��V��s8�E�vd����?���Z!��?��4Y���	������[����'wKq����r)>�e>l�����a8Ώ�	�g�����v�#D��}�4ԗeކ�r��_��K�<�k�v�uѡL�{P���(��O��-�;$>�ȉ�]�.To�s)�?�����C���r�MR�_a�����@%稓�芮��V���T{�-wc�7D�C>l��=�L�L��6Y ч�n�W�j2+s6��"O�-˼:���f�N����G�����I���7o^�y��=�xu��|���y�����O!ʉ�n�@Z�#9��g*��F���qi�U�J}�s7��D�ܫe�ׅ�z7�)��-'��-�2�v4�N�>ed�6��,bo.W����t
UKx?\a+��@�b�l<��.��ؿQ�7τ���9��1W-_Q�8+���i۰M��u P^�Ϝ#��l�Y�Xs<�6��8���As8/
$�dUHW�gl2c<�X���kB�mf�U��!�8Qj�2���6�_^^�4#���}=۵$�a��Egtn�������6��� %����Ě\e9�(���M�5�͇�=������H���4�TH��X��X1J�Ƣ�'*������}��{�����Waߘ卖��8��؜�$j[IŮ�' 1������ �EI�Yӊ�1��>
=ɦ�<I���P�j�k��[�tX�������ʏL�~���- ~��x(Qu���`��?G��n	���������]��Ag{����y{���������˷GW��a����Ig��&S�CX�-���i&*�IT�{p�βYon�������r�P�����n�g�^�^��QGOش_e�j~�����_6�ے�x�IJN�<4]��Q��W�C�D�<�+.��1��� �ӌj� n��2OU����<���Q>�E��1y�I�M	W�pAV9�bw�F�%|,�@V�rKuc$��o3+u>�;U'�h�5�����3;��e���z���+��03R(�q�W�����+i���xG�Aiv��E+����	�A��J�$o�W�o�c+��k�(H�Ept���W��Z��\K�������'��jf2����r�uT����}�����-�XYQ�Ju�D���:��p9�|��6�]�q���*Vs��j�}	ܵ��rq����f%�%������%ٚ�<�����lm���򎽛��|�E��Ŝ;�;���)�p�o����<Zj���<�=
�fùv����_��j�GA����{@GX{��b9u�X��C�O0i���.�ޖ!eZH�u���ѹ'	T�y˛�X��Y���!���,g\�w(�J]�� "���X�i�k]�5\g��D���p5�l\�w���G��~��.�ޗ�jbP4�6����Iu[�s]�(��Jt�ꝡ�ꉒ�o�y����pk����]������Z��ͭ�&���8����Vh(noL���7.ҏS�1"�&��tڑ�ҳ���]%�c���As�8i�2���G7�5kA�w`��7Xx�]�-�l+�a:1y�����yX�����\����Su� ��[����}l��c$��kHlUv��#�� 
�"���izs��J��'NQ��+�)���`ԙ�+_� �6�Q�7�&k�����GZ��5 �]/�="�9�O�#�E�X��w�o;���VTT�D����+���)��O����2�q�]���C����%x��M��Ks]��9�d�i�g��^q��m��x�U�+U/d���,"�ɍ�ڔ��S�ZFT\CF,���3EQU��c���.���p�5�i����<zN���KW�8��k ���F̉;~7���.߁�M�W�<�O�g�	Pr�� �u��,-�����i�����a���M��l�N6&����?��q���Ǿ���i^Jy�[_!������w+����"3|���8f���p�h ��U�4�ry��l\���C��1��ٙ7��Es=�He͔����)N/�M���o3z�~�{��P��\�`�}�E��[��81e|ͽ�y)Xo�ҥ-=�£ஒ����]+�"�����9A�K����Y�yG����_����:U���UG�su�-ԑ����Rfgg���l+4�Ƀ���;�ZwI�O��m8�3�� p�ok���Obm�~��Ԇ�I�o@�Y�C,����mRҩ�*�@V�����C�^����'�D��w��w�����;?����4���$��w{��w����^�99�x��������������e;&n����do�A޼��f�Y"Ϛ�I���f�{��Ѐ��d%�LO�[�!�=_3�J��\�d'�����\�/zsn-,bR~�����2�/
�sY�{9�^BĦ	C'���iL�C�� ���)��Q�[��a�\��H��/�kƾ���� Y4~��R/ E�����`G�V����&�_G>ş�_X#�w�ۭ%�<|QW�������L}�b��r�l�ݻ�w[���;�J    ��]$�>�&9[̻�_8�X9Q�h���T�SR6U9H��}��R�v��C�7���h�m�?A��7�Y���+fAA��̫���䬊��I&��Tֶ8R�EYf�Xy�Hs�H�沾x� Rg�����ŷ��;:��v���Xq)�*�M_�*��h��+�g`��P0�q���Q���b6��\�B��v8�P3��lN)^q����Ͼ�H^�^���_����Ԓ I	}���v}�-
�E���᫼7����J�y
vm/u��P&��8��������\�v��2��>&Arg��ޮS���"jp���TK�p�����|�ny_�k|vv���pz���������Vr����?}���4��%���vo(92V�R|ۂ吱3u��${8���9v����癋{�/h�6\P������[f��v�_��7�B�I���������{��9}�-�\�%�^>q�z:�� lC�kVԪFu�Z��|p!B�uʢ���DZF�$���q��1vէ�ú�H�Vʹ���A�yYۤ��_�c�����kѬ��}��0S���!��y0ޗPOq��N��{�LX30P��c�����PK~�7�H�Z$�ř=�P�~~tq���ȓH3���y��@�4\��uh�g������E��Y57�cK����B��(u܍�&lQ�I'©oB_E.�R\V��g!�Bn6i:�~M� ��r#T��nQ��;\�^�ӣ�D�kr|���щ7�:���^3>#��>���i�>�f�2�8}��z�(��j�`gQ2Ԏ	���I���E`^XiW!H�s"�`��%q����n���=E�د���	Y-�"���m��U�\��S���^����(WW����0)�[ed����z��%��4�B���ҽ��ʉ|���"��/ ���B�X��4�$G�SM��9XN���~%�b�$
�ֻ�C=Ӟ-��,��(��VY�r�>�3���r+�ㄍs-'�D�U��?\Ny��iq]��G0�P�|��Z�tU�$�:.$�`��=��ϫ9Ͽ�������zu@�C���rɐQX˲i2
[v�7.g�]U������&O��?��7�6�bߞ���.?j{+��@���=�ъ��?U7������~�s/�����ʓ��l��xx��OЙv��t$�˼��X}�-c�,�}�D��O~��j��%�aU�Nr^��5P����[��D�;�b\��L���o�A��E��ǝ��s�¥tل��i��.����h�!]�t��U6��w�wc$��D�ZD�S�o���2��l,6��R�iϩ�ʥ�(W���e�P�u�;�C� *�@+��" q�.͂�t�Hd�n�v(���
�r� 
�1V�T�Hs��n+�S��p+�0myQDe[!�����y@���6�Xu���
>�I:N�|:�;N���\�$�)�ʢ���,�`s2���Ⳳ4��8f��(��'rjd�a��`�����1����,���h�X|���
�to���׎�l�׈�Z�;��dͤ����An�=�F��b��<�Y��M+72/Z��3��ST�}��8;���F<�J�$��H�j��$���X���\a3����BEW�[�Oi(\a2�� U)ý�\^+�=k ,�mM*{�aN����U�u?�3�qpR�j�c��ù�S2������%g�ch����r��	8���B���^���7�������Kc���q/��.�����V�d���U��֍0�}}kj���h�u��۝��Oє�g)�s,����O�ƙx�┦=�y߉e�`c|��킟��x�O΂~4%�j'+
31��d���az~�C@IýV7�m`a�4�M$PQ��A��U%U��^�$�{I�I����\`���l��{�8�2E���s��B�v���S�2�����^b�A�fb�m�"�56�"9���"0�@bղ��`֜���;�SYFਦ^:�p���K�*�;m�?�֕[�{ת��~I+��l������֓'��%V�*�$L�lX�K1����)��-�}��{�O����̾{��D<�0�Sܾ;[�w6.K�8���B���\�zl��q��O�`�>��Ҝ�ܘ9��]������-�j�r�܏������U5��%W�%�}��X�S���E����+��9ry�-��������`�=�#l��b?Сݢu�=������]�����,}��7wO��>c�n�$��H?��7��}H����7�f���?L�Q9�U���7�=�+ކ���1�`o��|�D��HiR�N./N���Vr�I|ܤ�5��F����\I4�@�J&��B#�Ԓi�ȂRkڴ��{d�KۑłH��5*�F��2�_�����GuՏ�X3��5����6�+�nը��՚��E�l�fyfj�l�G��v��,��󥬑ǥ���q�iX��4<C��ۗ@���z�օ2{��t8⾹(U#U.�g9��u�L������0���hG��|۹�]��܋��u˲�wOh������|�~�3�_1�ԫO^���4�x�����!S�+��e�=3/aR����i��5Q��r����5��8�n��,���4�4�h(aݨ�Ǧ|�"Q�b�`� ���T�`��k9�ɸE�?���c~^Sx��Z��͆_�Mj�Ɩ26��\.zZ(8���qC��F��Ŭ�kmT3K��K2�׬�M.�nYE��v���6dӱ+�+G��#F�]��˶}ͼL���jO��i��@W�������#��!
�h��J��jn4�^ac�t�"9�7ro����ȧ篿x�\e�xi�|'��̼�C�%Z�����Ir
�w	�M'�Q��z��!��%St�y Xm/�L��h��2���RЩ��
\A�l(�8<�T6g���I;���(�D��M�E���n�D�(�)w�\v��.�2�y@�ύ�ӛ}���߳�<U^U����^�[M�5nՆE��Z���*��[y��P ��c�Rwk���B��"�>��u�>iR�6]^���ף�2ç�ׯC3�'�[�����N�-e%���j ���r��9���
jE�%�=�13��I�CS���[,R�7w�bO�,�	�9�8d�=(ZK���K�P_"'�r,�p4�
t:�hc#Qލ�1%ꄇ�;s�[�)���z}�a���/�M*�V��E�qP^���"���i7}��@[r�%�	ىBp�2��`����r�l�y�&�$_��'�Ry:g���͜��Wpw�����t�����,�����Y�Q9�J��k
�RI�Dܩ��C�~��E����4�\�<(RMr�I@/u>���9�)A���*���B�D��Q�ĠQ�	&��YW��d"���q m2��@�*��$!��8�3lfT/�gȿ�W]'I�w3���<|��a�:���`fZ�"x���R�K0L�
REƝYbX�!�"��P�c�8�=s`��0"������|s{�����2[��H"Uy,G��9(��mkl��-���
��s�Eg�54	 ���U{\�'(E*m����{~Y�x�N�(�V�J)��9<8�w�M(9�JPe�kF[��λ��ĸ5i������?��q�l�����bkS�0�R�:��M�&L�����^�I�n �\���j����~8"�͋bȫ�zf�2ܬ��L�C�
��ɡk��Sf�*N���^C���"�E7h���syv)��%��_�n��*=�:)�?:	/���4>=�Uy�|�������ZC��Ԥ��������皸���0ȥ+~��. �zޥ\�N���no�����l���J|����Y����RҺ�;;�UA�1g,%���{G��Z��M�M?V�Z�e,������d���э�=��Mf	~&���&����7���1y^e������\;f��q��W�}��e�o��|$�&��I��h+�61�:����
���;9��=��S�d��}�������8P ��M��b��}/��۾i���=�    �0#C���|�-E\J�L��$P�׶�rb�$���$���҄���S��Hr6a�2f��we�ڀ�
����9D>�
b���I&�@qL�8���ij0l����e#�.��L֠�:�И2*QeJ ���PFg,�-�Z�/��I�6�rr\��a��?t�2�gAW3b�u���o�l��K\�M���k�/ا�Z�[��-ac�j@ d�b���Qg
,���0-�)�׼B�,$)�n����Ӂsl�x \�NO�Ǌ�|��;W]�Kj���K,��Z�X�����J����+C�g�y̠��< D|Z�	"��u*�5��X�	DYj��yYd�Z�b�~\	�U�b>	�i�Z:��߆!gik�Tړ^S���X�E����i��k[?t��p����ɴno@)$��v5k]"�`i4-ռۧ�0&�=���[��Ϣq�����U+���^�����)T�o�8L0g�i9[�b��v���곪�bN��0V����X��>f<o�T�O�]�Bs����0.N��(z�(�_(���:j8W7hTc�8�X��{V��>{ĭ���3���#&%5��dO�'���^y���tXp��qΐ7��z'�G>YnziОy�Fv��j�<�π��0���`�3�C�G��/�s��LN���9��$����<�L��;��2+��f{�`=��A�`�S��5������������WLX�O#$o�0���3����oôH? E�I�
��G�t��JO�!m�vXfiԜ��4| Zk�5ŷ�~�� �.?����z�����q�B+Y��8'�[Of�ٔ���9ǟ�voI�<��숌��Q����`y�{B�~ȏ �9tj?�l�\�ޒIUy/��A��j���Ҋ�3��7[ܸ��n+����_;Qu��5#"�B�6�
���i�l��J';�pTX�7�Ԉ��H|Sq�5#9���׎�f�u�EZ�r\Ol�KOҿ�Ȉ�e�<���`�G��|�D�e2�-Tyt4?�`����d�����ѹחg�bC��k�4�����َө#k��,�rK}m�a�%0yft�h]�?zyN�ۓ��ld�����b���پ�ޛ@"�S�UIć�-KvN��d$��VZ�x}�~�N�����'�䷀�n��k+��J8�/�����_N�;���`����N{{]���V�`����������p��nz��r"Kv�%��G��s���~N��}�����+�C3�\U�4�dA	��9�e�p����-t �T��N�]/�iԻIn�x�?y��{= ��30ں�9��Ḇ1�uՖ辦�KUF�l�I�J2VM��s+k�3��<��$鱎J�X;��0�'�c�q��I��4��4Z;��Ɠt�ZSK���Y'^N�ka=��t=6@%U���z��72�ºvI�P�Hkt�VW�.h̳�K�E��PW�9�y�J���G"#5��WY=B%�'�٭{��t���S�h;��&�
Ϋ.O.}�����������O_��!cr��~����Q~uk�����,?x,K�PNe8��_Pd�e�-τ��Lֶ�LV�\����C>�\'M}��_�6��2�T2�'��a��y�
{�A~���<��S-Fa�M\k���ꑤj6���8Nٝo��r�R�b��F����K�3��q���/��Y���4�����(ab�Z�)mQh-�ϼ�QPWi� &H:h��z����f���aKȌ���3 �03�S��ø�z��?����r5��T�]����n:�v�7xMɥ��x���/�aJauc^�R��Κ�J�tV�%1'��=I���<�ј�)u$��L`>�~ś�2�B�q��V�f1I�a�H~*�*�J:3�D&QL6����F�W����Tf�A��j�u{�Y�є�.�m9?��H�C�E5�@�X{v�|/�M"HO:��_��.A���(jե�x���qI�Ϩ	Qd@�.��{4�1�:7�z|US�}eH�Kz�"���pn���$�.8�9�){����r� #j9q"²��c���"s�N'�B'L9==���h�r�H��Ɣ�_dQ�d8N'�D�ޔȂ�X�]Výf*��Aɔ�t� �Wc�=5��(��n�kx��
y�W4���{�ZK"���咲��;�*�E��������e�rub9R�	@�L�1�Vu�(�H���F�J��OXԹJ����`c�/I��`�F�����xGl"���v�Jkx���2:��ˮB�����g�(y�ī<�2ذ#j-("���f6�.�~>Txqͅ�s᭒�Aߣ q�r��Xn�#�%7�r?/���E��y`^iɚ��|�,/��%7,(F	�n�VR0�H GSb�]��1��c��6�WP�a�2Y�N�%�s�|y�	�C#�3�(��T���Z�r��q��&kR���8���~��9��.�FW)���8`i�|�}�J���_��ʏ��Z>�Xv]$�t�5���v8�sQ%��y�	��ΚG �M�����LZ
I�C�c�Z��L��������s��k^�S���^��kFE��~�J<�M���74cR�٬�j�?��*�����b��OF�?���3�C�0[�^� �J:��1Qi������B���S�IB�W	=U`�EuV�������nI� �%�2B|5 6�&l,�>U��V�|K�^^\^%G�W/��vmT��?� ՞A����)�'�/�.�.����������ɭjJ��tD�;z���?�J��^^�<������W<ތ@�(ĺ� ��4����E1�d�_8;�z����sz��Q�:��|.Q�1�}�:v��TP(���c�M�ۏ�b���`��%?vtu��pzq�y>{F���G�OO7�'�{����u[YGJG�a��bVhkgS)���+�����nzl��zTN]s)O�N�Q��-T�������[�`��ݿ��~3���N���v_�z��P�YvsV�T�)��4ӥ� �i9^������M)������e�y��I?���J���9�3o+)p9��U�ɴ�����S61�����~ѵ\5�a�ˈjy�b��4v�I#Ӭ�������i��x��R�5X�%�:ٷ���ݲor�nT�]�h�e�ݭ�{/�oIV�k�� �dO�|�P�I��6�{�ä�b+-w{���K��}�@����g�����}/Дu�:�4�����ym�"��4G�f�՟<\�>��������G��_���^훨8���RfJ(u9 �B+��kT,|I�Q�l6j�Z�(�F������re��Yq�M��_��p'���6�u���,t9���6�)�8�+�����y?���ѹ�՝�U
i�:�����;��&#�C�u��X���GS��l����C��F�s�8� u��_MX����K�Ã����p�ZE�,��[��C�k�� �wN�#�hj���iq�K�C��yw�RP�l9��3�������9X#���j��ZZ,Z�"e�n-�e�s��dƫ���|I�o��Ypv�)�����Rю�#�N!H	�Uxh4�8r����K�6O��d�tk�XB*tvI�x-��ߤ��'���}���.OR��S���2!�FdF���Q�Je��j�į,N�x���Smpfg�[��ו�P!���/��\�>���D�9��Ԙm_�Ѫտ���v5�%� ��౵eV�����#����(�
[�hD&��Ɯ�Z=���ۻ&�~�?��˦�{#�{�h��.�O�
d�x<gN�?g��d7K�\9�Z�na��Xk��U��UX��]�·X^X���$�q�D�����|��K��.�7�h� ���� �����=�	�^�f�����ZB�Q��}p�y�;����wx��M��W���f��3m�J�~�]�-�<������>�왫va�`��"nk6��\�Μ���i�����=�2�y�I����	�j.��$��6j�Z���|�a��Rj�EG������T�����4��ȭ�lg�O�(Xȡ7	��c���-�    s�}a�3pc��*�f^?���п\w)n��?�^�dIf���y�Fx�Y}/�|��w/���,�L�H ��8
TȾ��%�&M�k$���S��^��y���Gd�N��t�=���zJP>��i�P�������< ��1�(�-˵';'g�Yq�'����u6lٔ��^+���{�Z��Z���k�s�0k]e�Y�P��d�uճݪ,h��<	�6��w6��!�:{��̖/X-?������x�"&��Ρ�
���ܻ����N�g��_��W#'ÓD���'��LP�*ʺ&m���
��C
����~�}��\��/	�_}���И��B$�ͲbF!U��1j�f/^���O�Y�Z�g݊���4�z�<�	WN�dP�8Ҽ��8�2'X��#�����&��EH㻯�X˨���	��,�0��V���U(�&�E���RMȄ�l�bSz�+�����T�!��z�K����ˊ	�y:��a^<�x�˳#g���4vݙ�w����2�Z�/ ����InN��\c���JYL5�ݙ����bF	��>9�}�Mkx�h֡	¼�,�����i�@��C�:_���bܱͬv����<��([dy�ᖧ�}ͩ��D@��+�>H��ߘ���.ذ����D�)��w�u�J�t�m����1]#-�/�c��.3�iPiym/ܾn�Vn�x�.��Y@�8����^�e���9:��xBg~����۩̬�I���/��c+�r3�O҃.�S�D�iw	���^i�?���0�<����Ǩ�<�;*����K��O~5��j���N��{�
�%�UX>�Gn����]O��D��B4����=~p���:vod�_��!Y�ՓK}�Y>��u@\g���V�ʊ_�T��u����qF��s˫0?6���)�v��i��kS��>l�&K���$M_�=Q��{�QZ�B�6J��ߎD��;z;��
�t�,�'q�UQ?tX�v�-�4��e�j������-X�,�k���nXH9���J�U�S���}0�iF�B��cRY��7{��N�I_g8Um��?4��c�mpK�G����-�����Q���{�x�yAh���`�y�:�9j�J��� Pc����E績��1{2���$�f��J�[���đ�~��_��8�U~��B�~�K|S�JӤr���&�=�n $ySC5v�d�Ap�ga���7�O�Ɣ@
� �@�I�?%����ż�\�����(/�{���0��s�η����@N�� 3�P�<����d�X�'�	=q2R^�P��Ҟ����X��J£�[l�����z���n�,.ݻ�YWC�;��C�"������I=�d�67�0G��i��NK.��x�:��>o�pC��pqݔr#�)��@9G��f�.�ލ��h
yTi��i�)~��Vxp1O]�����P��T����u4xur6��I��f�[�.�/�=�s�eYg>޾恈�5z���+[�̭^)G4m[437e���6Vð��͘���t"�~�Gs��#��[��hId0���	a�)���-2/��݀_�j}�^}�_�)��ߺ��z�5[�MPX�Za�)����ʩ~՜�y�L>�3U4�mM���	��$�d�Qz"��uHٹ��#:{A\G�4@���}5�1=� �i	H�܊���Z%�S�,2"��H��X��~5g�JF���b^� ټ�2	�����e�f��!~6)'��O�lB�(j;H����YR�4=q�����q�e����ŬF>�;P
}A����n��ϒ#z���������n�;[��w�ݞt��vV�ݶ7;{����6.��.N������H�ɵ��Y���X0�w4.8��l�H�Cr<���z�c��%���8SVx��e��h�E�V(�߰T���OGw����������_z�t�C��y�t��#1�T���)@q�\\�]��Br�F�;��0@K��u��-@�)�h�]X��S�Ȱ��_f��w�_7:K[A��vd�k�[H�H�#T�������Q�"�gr�~^��y�]���AS5��������"D�>C7��� #Ŭ�!��G�B���h����=:AQ@�Ȑ'�Qoa6�6 ��k�]�E���d�WA���j�{P�=@�Ԕm�,�WK��:VW6�q��H��E�s��,��SO(��#"e��eЯy۸P�o�̠y�Ȅ_��� ���c;k�`_妢9��0��I�zŽ��4uCW)���''R\�GW���&3��A�G���d-bֱ���5�[ze�cY�ڗ��:�Kq��nj	�J����ւ�/��D8�8���C��=��N8{�C�Tn�{[�6�fOB�� �Gp&��~����-�����z>	��bt�p��
V�T��O�����ϸ⌦�k���>�+fG����U���.D�x���jTח��⻃	)��ҦE&,�����a._٣xl�V��	NúX8�x�kwf(+���V�](��j�Ƃv�TS�Q^�����˱8_@e��X�ћ�Z=X�t��n�X��m?y�dk�2����|��6�|ܓO������)�Br�E<�32�6Z
`+_���Y�ɥ�ky-tʛ!���w�m�]��6�&�� �x�3��ϗ<Ǵ@/�7�(�����BO���'��<f`FS~T�)�t���}�a���]~�ɡ�=����	\���/��h�]�DH�p3ʫBOm��8S�(�,�S&�h�7�����~���\�p�0����y��I1,ʮcϓ��2
�0��dR���t���Ӭ*�+�/�k
J�����i5ﱿ���Xm�z�g)^�hX|���ϕ���;�����v{��s�6�9��XD�Ěz��E��I��]G��_�	����|�����d=ˏ�E�럺-xTI\�):�F�o{��T���I��v�l�����}p��p�i/<�K����h�y�7�H�.kꘈ��L��tiת�-�/?W��"ro��X���f�tv7o��4�����u�����;Vw7N`1ۇ�Z��)��F�>ko�]!V�rO>15�Cm��գ��ޗ�\
�����#Nq�WT[C8�ԟJ�\�nr2+�?�`璥z��"`�F�'Oٿ�`����%h� $���?�#,��_�#`��Ȫ�C+I�0����1�c9�k<t�X6r�&~��|-����4{��	����RP"�����@��?ŷ���C�x�iwZt?��ui�
�S�QJ��GՄ�Ui�zt��ӽ�c�B�@�@�I�������ЧгYuee���g�=���G�9�?d\��5+��%�
����X�~<�5�f��H&�+�s�m�Ta;�r��RE��L��#D���ڦ��H��<�t��ʢ�V����yXb]xa�P^&��)�bb$�͋��x�*�����|���(8�m?L.�3c��5qY�����C|Q��Q�KI�r�=<���P����L���nx��,ɭ��8Z�ZIG>F5���ل�V	�4h�yU�Q�6�o�5*�6��&g^
	Ck%�ϞC��
PT�6��R$~.����[hw��9_�NY�&Y��n��Z�tǀ\�M�),2Ԫ�bEe]������7v�|4��o��?�%���:⪭�dA����5�h+�רJQ&���{u�������1&�꟔LH�3�19W<�۴���h��Kzb�g=_|�%:�"2T�'�:4b�_-H�\ìH����bn�[���2�=J<"�h\��p*�?xy�������&n�tZV�5U�An?d�n҅e��2��Ҳf�V��*�c�ۏ��Z�Z{9>]� �G�?���_ˏ��P���N��PݝȊE�(� �`^dcLޠ�$r��׍Bw@�$�"��2�'�^���CX��2G|���I�^$L4��ZG?�%<�ǳ�6�#���#H*ȯ���w��^��0;�}�a����hY?nh��މM[&�����M��un��Vg���k��5�-�h�n���';ϫ|�� �  @��J9���t��a�/���Cߐņ5E�OA�B�����>
7���r`��T�'��H���Xi­�m(r�b�����������$�lF-%5aBɲf&����zwκt����d_�â���	�����W� �����g^<�y�_�Զ&���q����!|��C�Q*Ƶ�;�AA����A��HU�}<.��GA|��dJ�D�_��$��2�_}-n#����og�����n |]�+��]�C�v
3��ҡ>9e@Me���c����%��	�%'"�����pK6����U`N��5.��[�,q�Í���e:v;�=V=&e��e
)��C�]a	�dX|s��fQYJ6u]���Z�@mA���JLL�r{�ҧޡ3�(���n���|t�:���ߩ@9iB��I��M�#��'�`{�?�ɷ�R�1�QQ��݋I_"�»�4�Vw��U�+�����_oo�U5��+ܢZ̿���6 �O���pN�V��]�V�1�=I�g����}�0g�ϊJ)M#ay��z��c�}�իce0�T9is���w�����ws�μ����[r�<�}���On��Yɥ�|Aή�F`��eGf�&����,HF5�M��0_ai>C�FS������ӯ~���Z�y�s �zאh����#�]U�)���� _���,Q_}RMܞ��{�w�ď��}���t(7z���U�c¿�Y1nY��� ��3�	�5�y���"'O��ҹ���~��_�&j��s��m�_%�(��2�-�B���v�L��z�Od����$����O����)00����1��j@���F@p�I���Q�x׮;@��[7[o�d��3�s���yr��L$�2F ]�$��6���R�2H�b �r������t���E�t8�l�Έ���9b	��\��8�k�D�"���2f�*7Pډ*hʍ3	�N�m9�Q�O���qp�4�bf&p<?��B������l�:zhxd\����&Ӹ{�͕P��r��uiZY��,aF��-w��&�O$͵�Hx�Dyo�^Q�q�G�����H��J5�f�Jʐ<��dT}ʉ����@͕�]������Lu�v�����ux���D��9?�(����,�(Nj�� +�&B��F�����^Ǉ5\��5vq�EI]�^�B/�$���>R��������MHt2�BF��{gFi��М��@F�2���:2�-,�!W\��"h�jѯ3q���۔H~d\���ċ��
�bT�7�GE�@Ⱥ�}�A�z5�zjS�)�6�j��` ������vH�Meefd_�%:Ft���S�1�_�ݚ
�A����Oq�6�cV٤��������9��o)�����x������'�n�IG{ӹ����Xo'B�Ty��;a�>�����'\p9=���ڮsk�x^�@|��CO�����E+�Z�e7;�n����w!nv�l9����
�O�]ٽ�M�>��).��?u<x���;�2      7   w  x��ۍ1C�M1�!�{��ױi$!>�Fy�~���=P�3P�sP�P�KP�+P�kP�P��ٰ*(��~f�gb�}�o����<kpUl�U���׏_?r�`��2���xr�ŋ�{����g�X9�pr�7	c�u/�'N^$�����E#���_�s��1G��K��V�I�����B0G�s�p�R�>���!�/C�_��|�M*��S�d�j�;�&����"��ǺsC�ӎd�$}{������s��w��c�Y?晇"E�8��	}&YM�P�L�ȝA��߇�Ja+ֲo��s��߉@�D������&A�CB}}�sV�dY�·��B�G��0���K�bo�K�dݧ2G߷2���D��ky#      M   A   x�3�4202�50�52V04�26�20�30��60�4BTi#K+#S=C�46���F@)�=... Kr      O   \   x���K
�  ���a�;t�@D&r���3p��S��.Q>'�Lܪ�V�-f�H��.#DˮG7p�e5�� Y���ߞl�t�熈/�?�      '   ?   x�3�t�K��,�P�H���L���!###]C]cC3+#+S=cKm<R\1z\\\ )hU      Y   �  x���MO�@���Wp�X���~-U��mR%�Ր�~}��4l��-����wF&-����M@t�����%j� 0���� r�HZ��J�����A+/��/u��ͤ���ϡ>���[|�8jD�\O�p�:J$;�x�85nE��g��acKwu��|@-�i)��Ӝ�w�!\f�������4���K�c	�B��@�-3+�3�j3����{��S1\`#=���E*Y&Z����^2���M��و��w�
{˱��;˾�t>��,���,
�Kkq�J�K���̺Ϭ���z>{�TPFc�ٴ��Z�j5��z(7��'��t�g�8�>��k@�l /{�.@�<l���e���μ����MY��mz���I�VQZzql#?��%%�w��Nѿƕ�s)F:���/����p���cŔk�D�Ŷ�m����EQ�}�)�      [   ]   x���0B�0L_Ec�]��%�� bBЗ�ƥ�p���v�
q��>���p��:ګ������f89`Y(1-�8�ٸɴ�n>~���E      +   ]   x�3�,��K�//��FFF����
��V��V�z�F��1~ �!oh�gjV�[�˘371��1�����).Μ̼�
(I;b���� ��?n      /     x��Y�r�6}^~����ʛb;vZ��u����%�$��"9��. J�d�Jq&ca�`r���`����ܼ�|����S���9ĉU���T[%M��]ײ�L'xx��� r�_l�ފ�&8���1Aܧ�ۤ&5�y�g,���Oy<��JV&�	�H\o��DAF���^H�u��C-���!ܗ,���kZB!+S�AJ��Y��I�HnN�&a��T�V՚i�zZ#�@��bN�c���Se^_���u[��m�i�W��fKVa�>�ρ){y!eb^丬5ayF���YZt|#�O��t��%-�s6g5I!iV�::rGz�Hr{p����bP�/.��1�Uд�ݘ�/T�� S��)]�|��vb�_G� �	�w����Wo7��I���M,ML�Z� ��9�	IY�MҺ$��X�6WF���tl�7����X����*������ˌ?���|-�����y[Y�۵q7�0�q#�ªԸ#���V��:p7�X"ΐݵ��4k}4�x�2�ɸ���FGN�� ��`�"�7>�<>�yY� "�(��5���"�ၔ^V��35w��U���:^^�+Ъ��7��x�ui�,q���VP�>�|�u�`��G	nӫ?�[^&�F���
�ſV.mk���1!@���J����<gt�-г�-��b&&L� �)>�(���%v_�#�Hi\�<�7<.�
�ƶ��;1��v�+��l�'%IPl�v ʷ��z���ɿ))j{�J�Q�pܑQ+�
2<.�\�/��U�]��L����h��^u#�"gk]A�����e�'M,�
V�#:���/v&)�.YN��:@���T��GzfY�xܰ��,� [��
�/q�J�0'�� 2�PbaU�{�৹�p���>E��|X��������PV
���R�kC���Ex�?>R�`X/l�n������u	w�HF0.��ҽ��H���f��	���������e�r3���Z6	�����߾X\��7�ˎ���wTX~ ��H��=��41�*X�麂�~�I��}�L� \���f�[ Ѳj*�b�RXʱEŸ�PK([]?�+�<!�Da	iX������)=ɉ�%�/�^S���3�>�A��JD�,m˷X�-����qi��9-�GX�?J�Uo��WE�>A���C�J��xK�������w���O N�\��i >I�� �-,�Q�~����K���\�m�+���7�9��oG��+��{|jD��&Q�[iv�U+
2>Ф�����b�)��KQ�Q�T���[�D��jFd��l}�Y_�\��(�B�@�jV�w����9�G��zCpl�˽��\td	�i������O����ȣ=d#8�{8O�b[�D��Խ�<���E�>Ɔ+<K�\|xz^�3oH��u���y�2V���֪�lebŹV����>b���^�9�?���م˻KT��j9�CW[-�	�(zM��'n�����^�ʁz�s�rzn�H5+��BY�������twk^�o�' �S��jO��:��Im?�6����=��
�-��0�KJ��E����wW�"�a�u�K�/�fԑ�@ճ������Oi�}�?9�І)�"k�^��®���ؗ�o#r�;s�:b�?�V�-I�_Q	CnH>'"�K��p.��?ې1���!Y��ݛ����BQ(ޮ�������.� &ؗ`������9��5�Gi�U-��ױt�ې1aJR�z�����r�+	��;8�6�d�p99Swm2 �W��h�a���u`��2;�      Q   A   x�eɱ !��L�="�A<���� :$�Җ�����EE��3�l{�jc�����{�%SEd޾      S   ;   x�3�,NM.����4�L��-��K�+)�/HLO�/�/(�I,�OO�M-�4�4����� Ӥ�         �   x�ν�   ���� c�ΡR�����;���;�o�0x�����5�%�[�iU�延��+��p#��Z�E��	%�c�3�ʋ��)�lv��F���ٜҠud3�E(*��I�x��6���R4�Ĕ!�u1��,}���1
         w  x��[[s�6~v~EƯ�$����L�Ӈ}���`�84�ɦ;��8\���;��6��˧�s��,�����b�>dq�F΃p�������.肚��L�2�[�)[3ǰ�i�C�%�n؀nP�,�0}N��i���]��u,�i������|T�C�T�p�,�C����8���}���Q�����������c����KǀM0�p`���Ob�`f:&���\$�[f�!Y�k��M��'�j$����&���^� ��h�Q*p�I"�ԯ���}��X�o?/����寷�2*c�P6��͡,�Ĉ������5�6�Z�oe�u�
IZ�E�/_~���ZA��BA�6��m�=@_u�y����u!
������(�ʊ��՗$�Ke�>���Y�>E!�:db��<��p���>��<��
y�|/�����6q�}T�y���-��ߤ.�XP�E|x$,�g��X�C,ʗ��6�(�8:�l�dӊFC(_Fɮx+��#�w�5am�������@3:���'���~�1CɁ��%��5�L\*��Ӳ�����"≘�n��#A����Hz��[d״��z�Y�U��t՚��;�|���iƾ�����F�1�V�R�Ր��LT}L�}�&�K[�8xI�$c�u��%S\��oUt�z9�h3]W�"ӬP{���	�E�!��$+k��F��(V��&��k����H~�?�W%�g���]�I��)<���7w����OA����03�Ueí'�ۈ�(n�i:"�u���/s'f.�|䏼K�E�:��x�]�0���4Ŀ2��).Ѷ�<Ki@����cd5����!M���#Z[�,i�Hc� A��Y��3 ���nCZn���Yn2�u�0���%�ėj#��d"g�]�Hp�^^G�2�q��C����+�̶�T�(轰�Z�6��E���y��e]�HtG�UE�F���N^�E"��Iȫ����m_*�6^[z���h����P��7���]�����s8�t/*�rd\��l���	u�q8�_�P�l�=/�F#%kj�M�`-����>0g��<G��(��a�R�����V�W�<-mS��։@oH�������H��U/H�����" �E�ݶ*ZT�륂\|+�/ٺ�yx�Ƀ��-��T$�-��k���m;C��EhhM�|Ur�B�G5��kvV�*��N�0��)��\��^����S���I��UϮv�u$�Z,�]O�u��dk�7U�ȷ0���t�Q��41���G��[B+P-bx���=�<3���
��1�Q!�i!F*���Y|Bu������m"d���F�[F��rص���q���dase�v�}���aB_/���}2%G�+}� �s�MH>ٲ���b� ��ؠ���Q��Iɟ�{��/@���1�<0��!2�0��Q�y`B'�2���¶�{�3 �nB� 
��.Z�]P&����fu��9�A��	�lC�p@ӺP���0�L�!�ft����y��W �x� 
��.:r]@�g՘h&�aѦ��^�ezkE�!ϯ�L�2t���岵��a��Ẽ��!.���C�߰f�5�(h0�e��ƻ)gT�C1iT���I�4��!ߪk�y	�ORA�S��0�TЅ���i&G��K�i@V7Lט�b�
����\�L)�k@�V�eX�xH��Nx�me�_V{�Ym�����w7�T�L�f�Sc�q��e�r3Gj7AS;�^M��
FA�\�0a ���B���,
���8>]T\�]��5��;w���T������R�wn���m�1�jC�{vr��ϴ�s�l_b��|�'�
�[|RT�Io��^d�O
�L�CJ{��]���ߵ��#������a���^;��� �lnM�c:aM�s�%E?�E�ϰ|Lr�û��R�>���N�\ ����m�����V�m5��8���	�Y�����+�2�3�)`�o3�X�#�����k�t���uҵN���$1���-��ƣB"hK��I�G눌��8P�#�����2�Aŧz������ w/�#���A��f6�98�l
�S�RM�
B" u�(��J�����{���sp�ic����S����R�/�������3         �   x�}�1�� Ek8��+[;�*]�� m�Y��HXD��y�ގy_⿙N��L����qv�P�z�z@c��[���N\	S�T9SJ�߸Ziݨ�Q=t��þ�u�_J�I-N֥W�S��b�.ms���`�O���fʶ@�+�4�-2Sܒ�w�RK${q��?)�S�R�k�y��0⣐XNDv�~ؾ��K+����}w            x�3�4�4����� �X            x������ � �      #      x�Խ��8�-��~���^s���~��7B!Kr���vgf�T���~�t:-��Hgu�==-"VZ�$ |u؟�߻���9t�����ۼ|�6����n�3���o������+������P��u�������������������������S�>������%��%�iW�/��/�l]s͛rk������Md����i�ݿ�O������{Sy�/��������0���������߃[0����k߾=�EQ���߾xȲ��a�S}8``z�&��0L�T��$3|��Q�Pz�������%8�5����3)%Y!GHY�!%J1 ����i{�������%xE)	C6�6�3d��+J�A+���ϊ0����&��`�]�Ȍ�����SS�����(��|S�������0a���������+	�z�n�uB��S�L������?�t��rޘ�1X���&=��49�M!��dJ䢟yàq	���O)��������	�M
�fڈ��}�h-�~�)�]Q��ß�m�����L��|�A���9�;l4�>���1��oR�s�r�����~{�VI?�z�;�����O�6&է�Vf��as�Ƥ��UO�y�u؞�Aɾu�t��ż]и��:g���}귗�}�3g�O�7	��f���د��:���֥�n���Ƥ�ܕeNg��a{��$[��#�x�H���MJ��˞�������ƥ�����إ}��}�a��x�$�o��{��I��벩ˮ�����ۘd_�dv�����a{��$�╷aI����LJ�����%��K���|���w�%3��x�$��&\u�Gk�􃗭*�]�����6&���y���=ScR}�`f�H���MJ��[�ǻ��_<l4.�o�{'�/���{�=| �'�ۄ��K��{�v��x׶Bצ�[�cR}�3��e�35&�'��̴�����W����x�0h\�O����[x����������*?�	��+ˡO��h]�������I�����w|'��Ij���e���ߘ��I�i a8K(����C��D������y��������@Y��/ZS�11�{�(+�q v�C���ug�=ƏּX	ݡ�Λ��|:�7��~�t:�O���v����{���_��c���^X����_X}��^X����ۖ7����4E*�R���43铴A�H��A)8S�3�˴�)8�Jg��&�t�B
�'CV3��F�s7��r�F^�;zi��7��9_����ԃ�����&Y;�4V�+�mL�t���� �Ʋ�����u�sR�P����X��[���U�5���p4����0��$�H��a	
��m���!�&4��̎��s�#�H	��.��\��_�?�?��o�����|UY*���u��� ����C�	�n�R��3���p�1o0W̎�Q��X�C��k����;'�-G���ڄy8�Ni��mX1>v�ُ%�R����h��~�6���������!��k��0���=���X9�b|���r�����a<��4��~��[��.>z�̹[:�d��<y���֕�_����r}���_Wl��-׍ �E#�=|]�Yn�&�r���/,%��4��XX`(�i���űl9� ]��֕P2P�9w�q̕��;r]�8�\��Δk�H�m[�mB���Is�cv|�L�k �L�k�Y9�Թ�}�ȴ�B�lWf�N�j�)~6��6����=�i���%;��8~��������t��ݝO���u�4����K�}M5��^S]_s�x[�U-]?�I�!��R�|��n�;(I-+B����B��#��h�\��2Lg�2.B-R�ubg�����~�v+䍪�x"I\�"�ˣ�(V?�7�O����y#���Hc%*S�f'�j j�FcY�n��ߵdez��Z;?K�xk���kn`8��+͊l�OX��"�o}���,hB��Qu�v$Ip7)/�I��$j�j4߶�.p�LzU�?l�;���ӞDU��5����O��?��9��v�N~U�U�٣�m7�x�aO�E};��>Q�f�h�m&��u�V�����������1+1}���҇e2G�O�>xdZ������,������C��Y��M�>�`�MЇo'�>�K3�Gkٟ�Χw��������oӜ�.:�w����d�:g��fx<�,to|�,}�orh<�@D0��Le�v���fK����x��pD�@37^g&�G���I����m�y04%&��3�ǣ�Cbv;�����jN�C��T���+n^��+*-l�5BB;"�8���&�u�X1^|�]��(�e� y�y�}�!D�G���T�I}W$�n]�������ܔ������C�.�/�|<Z�\y�Ӷޚ����m`ZoU�\z9�<p`��a2g�l<2�q��6��J4@f��pڔ�M��4&�U�)9Y�al'�=����:~�V|����ח��|�M�v����礉ﯩd5���Pbx�-��je7p&%��r�|��^N����P�%��X�;<��I�"�bt�ir!^�g,w��H5�]��e!�i���?1��nDM�E�>�_��-h��NK��R�����-!�r�ʒP�580�I$�@�fp�-��o	7�5���_�Ȱ��No����!n ߦ4q�dZ�7�}���\`���Z�U�{۝��ڈ�vm1}���U��]Yo����c��������	�����i�3,���x41l��6ۦm9B�BL�5㡬pJ��T�vQ��#��,�D�ˣuϐ��ss��#��v����ݖMc���c�|�i�0�uZpv΍���N�X���p��F��Ta��XI�gph<�tпd����LO��V�f���l2ҿVH��.��­�v��pA�׹���Q�<Н^Ӝ�no���r=�~��*D[o��9�kE��P��K��� ��B E׀��eH�2Ks�%PE�@�2����lA�%��i�P�2�I)�le�ǩ�D(��-8�<Z��N�vszꎣn���4��7�ՠ}�_{�^9im���?9^Kγ6�?�"GӜD�X�CDY
��@BE�m(�2���G44i
�F~G�KR��N�Z�ՍE�X��S0m��?|<Z;�V �����ޯ3i�q����Uc�V4��3��Fc��n��U�u��i�X;?�zxk�cE�cXs�ь�7XJ��n�bG���"��Ý��	M��
ƍ_q��D�Pj���Z�Us:��O���ᥟM�Z �ʫ��Hoc���M%� ���u��P#�@�c1hp�ǓSE1�x�%�D>_�O��B&�=b��t�x2��}�V��Q�&���\��p���w�I�񢪪���m�V@t�n��nS��L�o����E�0`���q�D�
Z�Cs¶�{�cc��VAة}�����i
�ݞ�����yH~pp��ˣ�P���>l�)xϧC���oJ�Ai�����*�˶�d�`�c��G8��ouP K-$��_�>U_Y��a	4�ֿ����,�~���H(�~[৙i�3gb��	��M�k�_�E~WTQ�m�xag��O�N�:�pE��ΏN��(E�jXs�3���"��Z�`�K�qE�?��v	�н+��P���l��(����Z���K}n�_���������UV��l�V�D'�4�ñdto�+��ŉ����c��`��Yra��ƣ)�`��saі#D(�D��3�%pJ�{���IL\M��x�V�m���s�����w?��;�_���tn�d<Uo���P���z{C���]��l�F��b���o��<��M�Byq�㧆'd�x��$~����m��e,LtT2����)ĭ�	�S�.��>�b�C��T�2�>Z��o��m�Y#[��R�2��7M_����FZ0���Q��iz?	f�����2m�3{�Ρ¯�u��`L+�:� �Ǥ�D�s��X�T�Jˇ��\��x��|��~��?wo��O���y��u�mޒ�c�����[�~��T��TM��ZmKs(�    �v���r�]\�]v]X���Y��@�M������l��%��i���2��矢r��'2��̍��Xb+���'��h-��y�/����a�.sN��4.�7�ՠ�R�k4��JJ	�vj�C;]@��<g6�M2H1��D�O,r4��"��ûR�XY]�j�S!���&t\���]�℟�2>��`��V65����Gk���ͩ?�~�.�{�ջ�J�=�7e�j�FcY�n�s��N���Ԇ��1������p4}����2�5��KP8�����>E�''t�H��N�s�#y�h�B���Z�����g�o�C��;��t�{+���m��P��Y�~l�"x}���D�1���6�h��y�[$ PB������m�H@`�H�.�����Md pV���1A�@q�O�҄��l�~�|�7I�/\�����u����.�.P�%��`gc�T��x	a]���Ia��a���.׈��������BtB|�(��ii����U�͚��8���ޙ�; 7ޥ�����h-su�t\mו�����W�Z��~�M���Do�Q�M�_�$uk�>x$~W�l�k�U��9;�����6)��X�Ә���`'�>�2^�Gk���+�U��
[�"�a�*]K�����\�K�ɠ��V|Ez��2mhN�����F҉0]��B��>x&B�U"͹w�̉��*v���0ӕ2>�e�������؝��o
���J8Ѵ���=.`0��?O^�+��:����X^F��]�n�H[�G��m��~���Q6(̆��S�骋�ә,W;�D0c7�z� ���h�
�B�����n��_�6�ߑ����jx)��llmx��
�D���-(�
y���a]����M+7~T1�-���.�H��&Cv8?�r�B|�(�n������fM.9����e��
Z�.��J>�a!E�k[e�k��p��Ԃ0Goj����hg.�a�N��h�C���]BB��|����#DH�^�o<\���d�i\�w�~�[n�/��ʬ�s��t��ٜ��o�cn���z�ջ�Jt�-�]mygE�5m|�ѬH�BO2!��+���dh�C�#�&/���`٪�@@�Qx����(&SP�6�e�d|ԫ&�6SK�{�ˣ�r������R_Ҹ��*c���:����H��q<g�����<��a!<�kDY8�5ΰ�83�bD�?�J�_D�:?��YDl�4�I���D����$3�Mيd'�	�G��eO������sj_��g��i�.��LV)MÍ�`�$�}fm�=�S��d�ɐ�%�t��Lf�=	AMoq������4g44i
��X:Jb&zO�F0��Fa��u�����hm��{w>uσ��i�gS��l�m�l�9=�8t���\^8���^X�/��^X����[�k%j�%���˻Tp�_P)�\�4L��Eʰ|�ʡ�zO�2mh�O�pA:۝�D�.VHY �!����SkF�9�Q$E2]:�>Z+�z�~>������Λq��>$��������?v�zW�������}�j�7S��RE�c1���c��	�L�n�� ���0)�d6b�+F-:�a6�����ǵ�:��7ClH	h���h��w���\����n�}=��4��/���EuUBۢn�4/F�L���K�*LJ	��;BBp���X9�S����H�!��}!$\���;Bf�8Q�I2W~����z��*M�Gkmg\ :%9��r}����h�����P��ɡ1�	'�$�ܮX*��1P`	�R��@��#����r��s �@��&�/��e�:�bb�[Z�8�� <�~��Ep}�6z�������8�����yz����:�m���78�R;%vm�vI*�$�3���J��K���_� �/B+F���
��eR_�Z�
�/�0õHS�'q#����xb���N��hm������t��ݯ$���u�����^S��w�Ws��,%���@��Q�ÿ�#�cX*�;�e`q���"�bt�w����!=[�E�E�!�ėa��ݨIS�'qWx$N�����O�J��%kLQԲ(^C��(e��`�:+�z�|A��E��1�T�@�_��+���X.�F5��\%�V�_W��t�BZD2��~%��i�ę��I�Ȫ5>�H?�6`����Z����S���v8n��X�'��L_�k��h,A
��Zfi� ���P����ׄ2�S��KPho��/��)�&4��&{$�~
��؈��#�o��f�r�>?�m�sz>�5���y�j�jy���D��`�	��+~�L�V��12X���/
���7� �B���%`.�ပ����S7��}OM�~6ܵTS]�!LЮX`�u}��b�����==��n�v���n��Zy��IO��|�&�����U�Rv��*d5Xn�C�:J�҇���˩	pe�l�����A�q��X?v1�TQh<��*O1;ل��,w̎�pD����
�\��b�����~�~lĦ=�n=z�K�D�wՕ�.��Au%�����b�0h-*�T�"#�C���H�?��5	�>>F�����|�iTD����2\�&8�{�����b\|P��X�����Gk]�~��/�aH��N�=�p�d[�w�]ջ������\�
^�z7͑xy,Y"����狧!�x���X]���0Iħ� ��v	L�3�m3V�
�.��|��'=qk�01��J�0�3Vfuo�Vub�	�F�)��ߴ�;?:}Th(^�a��570<CTH�~�^ƨlvX"OTH!*�(3-�QPTȷ=����Y}�|�o?��6	�)��՛�J�~�v��k�`i��gk�n��.�b�
`��d6/����b�K�I�f�e6[��`?J��V$$���U3Ӻ�%����9��>�E��Ѻg��t|9�y�K�+��C��//j]쀛�A,���y�_4�E��Ĳ\����Dl�^�~Q���v�-�1�0��>�:�;"�yǒ=��Q�;&dr����h]���Y-�V��Q�=�M ��_��g�L{<��@�=^��3��D����oF�������2��$yw��s)��bf�À[�BP���hͅ��Z��i�����O�B���ꢳ��n[cL�%�񤠭o������fFkQF�Ɠ�H��e*åt��AZ$i��Lf�[�7#C�"!(GE[''5fU�0+���tv 2N���Z�~����V�{�������~�i�������}޷��x݀n�ݡ���䤼�|(^r}�[~��˫��?���/�T�l����P�@1�"� ;fK��e*� w2�Xr�7���)�g�;�f�qY���tɀ{R�5)����S�W3'��9�F���������c�d���C0t�˝iOÌ vY�2�=X�x�Z����d��Ld(�J�;,��i���qw�`�QB����v*��u�m��R>so���Y%HY共�z(sn��v��z(߆��
�_֪,7 ���Y��P��s4�4Q�-���������l�[�!��~��M�oS��Rd���(��ci�:�\�M�=C�-L��]�o^���XV§Qi���r���Ώ�R!E��pyb�G��^��RE3a��."����W��ۄ&�H����mG��Hh�t}�6��`Owù��d�>l��ǍHDI��Uw��.�(a�m�H��YXOS�u��Z���=:X9<�ѡ���MFgT0Ђ��á��	MLvTP(�4�C���Ó���l�cR�`����~L�Z�����?\��6>G��_bD���͡�9�B��L�j��@�H�R�|X�6#�+Rm�/��H�mR�}�JG�}��'��������N�K_�My��|FHcvZu۶��AA����@�tR��qZ���'��U���x�%#\�D��s�3y�Ѹ����ts�23�iޱ�-Ya���0a��`ry�6f������i{跖���[��Nj���2���;����}J�T��gu�A5�`�n�|�w/3x�    �E�Eٖ��N�n*�Xr^�'�>K&��Fs��V;v-ȇ�p�.�z�����+O>���{�%]�r�ҿ�����c�p��TO���L�ʟ���a�%v��K��btٞ���n(r�T��&>�\�W�+���k��w�	���Ȕ��/�p�sG�D�G(B�#�J�Pd#&$\z�wٜ3Q���'$��`���df��t;,�z��{��o��[���n�˶޶�-�� BˢQ�x���D�o��p���w�g���^͜q��ˌ��I�q�O8{
1͉셡�&�����`��ˣ�6H�,v�T�ۂm/���m%>��A�����p�����e���84�����B���-G���z�yhs�g�4�/�����r���t����?��:^�C��Tg����7\O��7T�hW�j�f�J�),d/�Ƕ�����"ѡI��.��&o��D�(���h|�xe2&��F�e�ܱ�`Z�̨/;l��p0���hm�Տ����ӱ~}yN��:�X����F��u�f�%һ�����^����#���%F�����30!���p4�.3��Ś��0�x�D��4�;f2�	b�`?g:��� ���h�����C��ы��3���췫��s7�9���K�`e���ÀaXzA&��.Y�{�2h�I��!�%�-�J!����о�n
��{��8�|�>l���x}�.��"{�k��|�Ήv*��]cOm;c��;$A���q7���g��=Xk�Gc�omdSkn`8�_��~���{
kvX�B:�߶�J?�=Є&۬�����D�4]�K�E�Z4��1@�=�`ֈ���� s��-�5�ȕy�q���K�8
���#�0.$��G����m�wY
�"��ÄdK����Gk�Vߪ�����zޜ�s��u:э]j��op�]�W��W��V�٩]�I`��K�Dd�����-I{T/�q�.,?�;Vf�Ɲ�E��Ğ
J��*Z��]���"$��Y:��3���������#��Ƃ��/��V������O������i�_�!�ǡK�����^S������q�ZӵŎC-�)*����u�HYV�
쪰,n�&���/A+F���5$�eK�Y�Z�
�/�0��l���)S�HԶ���Df 
���>Z�r�?>7��?���H_e��VRK�(��X,�~�9��T�{��-�ι�X���ɍ_"G���f=���6�e/����l���b���L�>K�FیI �|}��^�8���5/��OO�S��_�:�w��ەNt�P��:x<�x&��=���(幠m�ǒ��~�&3d=�
�	�b���M��6#C!'
گ�7��NꞤl�r���1@������h�H�ΨFvz�.����'TBM)g����94}ФTPs����ltP ^$��o����cdH�>ʯ��P���DAn��L5d�/0O��hm��W}n���e�}=��4U~�:���ʔ\��H��cyj�
�/W�n3�͡�X�����ΐ��7:(��)��C��q�<�7#C�)
�>@S�&
�*fF�!@:��ѐ���hm�:��0��V�@�xzlj'S����Q_��scS;�J����9;8���?��ly�8�C�s���߳:�b�M����.��&#��X`?t}�v*ýW�ڝ��8���2&5<��:h0K%øa"߽�2h�=��p��������~�_�r���m
���9i� J�s��њ*�K�x��-9�F����kh�S�$�K����h�3�B)�rF�w8�o��5�K���Ռ�m�5	�W,o�ǗL�w,}۱Nf	���>��f=	�L[�-�[���䧢������scS��l��C8;g�?���l�fq���8	��==�;�Q�i�#�ą6=�Gk�E�M��nEQ��7B��oz��Ѹk�����.��^W670<æGȌ�/�f�%�lz����	��^�j�t$q������?(e�n�K[�-Կ���cK3S]�QMNn���P����)�Ώ=.eF+F�E����m���BS�C�EI3�H�,�(H�>�H��`����ں��I�PRY�24:�fR�o}��v~t�ͤ�RLkn`x�ͤ�XakvX"�f���}o4˴7���H"��]�룵s�&���,�65���#B~�*�ΟM��&%J6��r�otP OM�lr�bʚM��!)�\R��o���C�Y	g��$��Ƌ���Daڶ�����R���U~�L�bi����D(��!
kk`8���Ҝ���RlvX��F�6ӡLLhBզs���ێ8r�R��њs�z�������pب������)	!]TW��J��m�U)-Wjk��Rl�̤�*2H1,{E ��HU���V�mX�g�l�[d@�֋�E�P�Wp�S��Ը]�d��s��Ma:�+�㳜����9?�6��g9?�_�Ώ��A�,�Ga�y��6#����������mR��6�+����d	$�]����
��N�zW�@BKaQ%:�[���rG��Ĳ[\��2�&.�$���zj~�PP�[�0�#{j�Ж1�	�Ԭ,1%n=��a��}��Ѻ�ٽm�ִu��k ���ۦ���Xk�Gg�q�'�������&+�+\F�lvX"��Ͱ������m�e�t���s����ѺTى���Eik�v"��NODF�y��v~t"��C����9�sr��f�%r�Pp�Mh⦑`N@D�ێn��4�<Z��]�;+�Nn����"p8ڿ�o��8K����70��'4��.0O�q���x��o��T'g�q�r��/���2t�CS���R��o��O֌��.��� ߶\����$XR[�u�d�����P�eą`	���ҳ�"�bt��t!^*��sj�j(L�;N!M}��W�xI���dq[��R/��\��K�v\Y^��F���dL(i?ݕ�S,�94ͩ�b�*K?&��A<5�V��2B��cdHG���;Ó�lU,\,�� Y�T'W�s�������������8v���T��.���1tg���wT��u�j���hy,�!����U�1��cyp	F��Rx($�4o.�I�9�D���³K �~��ɪ#�IO�)�y}\���!6`����ۣ�ӫ���v�6?�O����=yQY]TV�h��ֈ�R
G�'�L�O���P$�ObG�'��G7���Ob-���'�6��ٺ+�-G����x�-!��4����vg�G_܂��~Eܬ������t�ڛ�9�om��&o����o��tQ:��rV��X&���9�9��FD�2���b9��E#D�G3��Đ?��9���PAa�%3��9z��U�Jo�H�yr7��qy��¬����i�������o�C�4>����h������n'����_�$�ygm�WZ��Ґn"xI,��!�]�j�1�D���t��� C��pi>ڏvM�(f���1��c�B�gO�{^��4^"���������e������礤:Nn�������R/����~ P�VX��[D^5Q!��c�R���˧O�\�b�XO
�0�O:C��B\�kD/I���?�d��\�o��%%)�6�#u�Y��.�.�sN#��ui���Ź>Z�bXP���� �������jPZ�)�ZŻRJe�
^3����!�NL���_��A��o5Y�T	v�%([p��g�2H�%D�h�QPa֛��}s1ˬ�����K�R�egJ�/���_B*p�	.�Z��e�t�&�w��Á*����;?��E+4��C���S�H�5g<-a�K��H��=X�M�~�Uw�<')h;6y&�ˣ5/L��Av[�=yJ�ht�� l��KOA8;��b��T��P��sv0�w��E�#f6?$���x
���P���&3Q;�{��a��\S�k���):u˛���(�ǒ!{��"G!�Ł�X�!X<��f� �š�h"���ew��r���(�h~���s��/ɂ�9:���    �n8���Ы]������y�ﯩ$�'�ʭ�;�B��H*���3^�
�R\�[V�
,.�[QHđ�Њс�҅xI៲���"�"�Pxx!v���Nq3i���-+G5q�x"�Ax}�.݃j��Xo�H����̥/TA0;(�-�!~K�;,�)P�G�\�H�%�1�Bg�i�G��u1	�a��{���]��#�j{��ns~=]|SX]V��ƕ��n����X��<y��$����HSgc�	mj�l��|HS�G�	m�P�8��isP��B�_4S��ӹ�a��zg�Nv����<v���mM$���n�������@ ��޻�F:K;p2X9�W/���͸�"#B%y���p=���iPz��P� �����h͕X���~���O���y���b�=�N�a��=|˛E��T��T�ٹ�k��L�$E�1Q�Þ���Ӑ������)��曉�u	T*М�,Ճ��~�@��B�����2� �c�(u��%����~�Gk^�U�{۝��ڈ��$���TV�m][Y�ӄǲ�	p���Q�mp`8�D	�� JՓkqh<�	6����2\Ж#D(�F����M&��@S�'+��w��]��2w}�3�W���pE�w\��A��'���������y����'l	�\�v��<��#B�|����S�?a�l���Ãt9�A.�ˣ5��*��t��V��4Q�T`Isi�n��V�+B�X���.��P0lZ1:�仴T�b.[��E�E���B촟Y��6���!�1%H��}<�,Ρm��Q������Z�m�4����A~�����'��kx������8?)U���I���������iy��T���Q&>ѫ��g^����[��~��5�ŗ�?+\Q�\k\;!(���ȺM�/�����^KÑ��$���c !���61��E�1�Ф)�Y�/�D�v��D��dE���c��p����h������I��w@��XR�^0U��)�97Ku�Ҋeh��sv0��������.���x
+��̄ғ�'s�1-�4��}�ƍ�]e�B:��T���c��~�{�2]e��
�\��,���m��a	�Ɗp�����WY`�QB���*K(�33�{Ʋ^!� ��ԁ��h�y�D���;)wV����X¢�(�t�>�680KU�D��ϓ�[�&)J"�c2ۑm9B�BO�����s��D�� m�D��t�V?�7�O����y#��Hc%*��r�Hg�H4KKw�]Ye���Xk�Gc9	omOI6�Qkn`8����"c9��a	
�w�4�{�R��q�}Ҝ�H*r,5sy��R��k�ەMԏcy};Rsf���!M��%!�X���r��u~4����^y���H�������
�3�,�����
)P��5W���Cp��\�9`3�@!���vD(�Ic#!��b95)��S{ȯj��\#���";�*϶�L�o���"--dh�q3k"�*�tZx��>�K�Gk��j�g�?�=�^��� Fwz}�<�~��o��K�����?^Z]^z�a�mu�;��
�~���Β*�=!���)a�"K���.׈�l�Dv��d���$JI.��(˰�w�Y5$�w;s���6Z�G����7��r�ˎ��o�İ+I̕4�_J�z)������3���#��C�u��M��!MF� J�ר������c��i���ÃM!/�
I�G��Bip�y���ɦl��* ��!�����l�H�5$�N���g��v���,NK�Mo�]�m�	��>��R�¿� ��vJ�7
��I�� �.��ޣhF���A���Zm�m�����q����C��q���]ؤL|2-d��O�2a���ch�m����� ��(C�Z�(��)����v��%HE�xk�/ٮ�/�,N�#Yۄ��Q&>�Oc$��},&�C�����ܵ�"2��p�d���+nu_n��:^���;`��ǒu�d��!�J��� ű� ���e�B(�Q��ܼ #a3n����PA��x!����|���^'s<|�J���z'�0��vRo��#�e��z'�_���n"xI,�F�;�̌����;�!!���5����&�wCC���i@�o|K�wr��d�^�I�z'>VH�C	��-�o������6�nkj���>V3��R�"�?f�2�����?d��;&����HE�x�>V1�p{��D�`�Dod}��Y����њ+�'0�N�ζ�H}F�?���a2}]�h���`�ү� &��?������V;�bb�/�1L�1剠�f��3������0TB��h�E��T�.������S4`)yY�ݞ�ӗ�X]���v~-ڇ����P��腅�5�6�K ��B!녟�_7%���m���X�)��},��o�?_�����S�/J�OTU�4|W���kF��{�S�t�d9��a��jЮ�Vi��ߠe�8�63h�*3�Z83��=�6���p���Ռ�{�!	Bj����QO������N��J��X� �tӜ�묢�2
�`>t�N�,h�C��LC�YLgc��
Q
7�2���4�:�AԷ�Ln]�u���!���l$�ֵ�Mb�/me�/��GúX!�e�VF��+h\�kDsy��_{� �o��#--��| ���.������&\��R�#��:)���@W���8Be������	�~���<�0T*�	�_�	�!���8O�����yBo�cqǽ�UT(��+��{��G=k�̵���ܖ��{ci_�U�5�3��M���M|�a�_c�Q{�u~4����Sx��<�� ����CnU`6��Jř�@�a�l,�XR�ۣ�z�\�Rh�-�m�>�gp�:�l�[Mh��3�X��3�Xa�C�s�Xu�1Gm9B$��ղ2T���}o�����ۏf&�({}�3�]=����˹�k������y��/�fw:7]��Po���P���z{C�ˢ�刺��Xi,����F��'�Xph�XʋG�e8���CG�c<@��H��0�5P�t��.����my��)�!�W����Qϼn��|�w׼l�>=mO������uVmkYp���xt���
xɴorh<:*D0�;�B]���� >dC0[~gڈ�x�)�B�@����p	8�����/�� Oi�z�U�lT�+��J�:�]W��N��2�=�E��y���H�cdл<���S�T{; (!�>����lw�i@`�H;5��g2L��f'7�+Ӭwb�⸒q(4p}��x�Sp}~��:�}�,/J��ԅ)��������f��V~���Gڠ�A��a���9���KD�H�+��^2�~�P�Q�������D�ʐ�?u����[j�L{�>����xk��确����,�����^�L,��[/E�_�3qج��X&��o�2�/i����-��TL��缤6Vn	�?V�J��O����zz���0Aqg\�i��>Z�B�8n{޷߆K�OO�����.���ӭS�m�=C�҉o�̹Уι�#�B��!	��EQ��tQ�Pd#8���ee�k1Q��㈓����g�zG���N�h .$�J;}����Z(����n��q���U�	d9��O��3ma��y���Gta������]�~�Pƃ�
%��Lk:yn2r:�����Ӽu}��̜��kK[��F |�r:ѱ8�ai��`,?�swe�s+����hJB++�������t�~0����%3���ۍ�8Cμ�ش��\BM�v�w[�;�@!���6�l�+zؠa]�K�i��rf����0��5��;���a�����D)e�H��a:�%�Y�x�Ww���.9V���њ��\B.����3P50��R��ң-O�3]�]v�Xx��3��A��"T��e`��7��ӣ�1���i�p�2���h#�����Y��-dKd����ᬏGkn��m���@���,���0H5��
d���<U	v�%�x`��k�f������    �y`53!f���}5�L9��`@Җ�%D[�Gk�.�����g�t���V������٪]������o�wsί����P�S�
i�F�a���84�DRH��US@���r�x�o�!f�����^ޥ@��# m9����h�u��4	�ؕ�:Qĺ_o��[�)N�"}L|	Rt�\�����H��|�0T*�yE�7�����nP�8-I��C�	�Q&>Qb�y�GT,�15g�C��QO�|������Fn��0^����[�Q���T�^s�px͇�ֵ��?h�7I*�̍3��<��]V�
,y/�+?&{/B+F���%s�6ƋP�TC����i�p���8����Qsq2���Sܙ�>�9\�A.���ec,P����A�K?�a���A.���/B+Fǣ8��Pm�M�"�"�<�Í_� ��oS��/�o���x"Y�+0���gq�'��V�mut�%�x��g�?��A�"T<�Ņ�$��,���Q,��_���,���,���O���e���4��=<�,n��>�Y\g��u�ɲ����׻aX�E���6O�a�0,;"�6K%��e�84�!l���l�OAg�RX��2ҿ��dOo]�5y���2�*�_�aV��Cw|�|�uqK�NOi��o��Au�.>�^u�tS�Z�,������i�3�~�F)���Ӂ��a`�H��"����б���Q�M	�"B%��qQ�oć�xπ����Q� $#Z�|/�zF����+�Fu�C�.��h��.Ǭ9S��M��Ф���N��+��`��C�j|�s�g�<��9]�e�5&��G�'<Qȉ3[`K���!��q �}�So�o������s�EY~���:���5���WT�WT�WTu�j]Ԫ�����co��P�J6 �8��/�~ɎՑQ�	��h��ƛ��HE����?:�b��19�jǒq;>���>.%X���њ[����-J���B��fe��\b-keX�!՟d?F���VwW~c����a PB��*a��w�'��#mF�_D�f���&6��q=_���IrV���5wz՞�o�㦟��t����
���z�ջ�j�m��my��m�z+9i�\Ѧ?���G����4�{v�r�I�cd�[@����ኴ�>

H1����!0=vCLn��vGk��\�A8��|2��W����c��Þ�t��S�C��;*Y]�1ޘ��V��@wxy,�!���C[��;�x���X�\��P~k�D|Y�I���\�c<X1:(��2��������0Lw�vM�r�k��m�D2�6�`|��"�6����o�	[��ɵ�T9˜�P@�e�l��U�ٙM�0�L��ͦG��fiF��Q+}��q�i��t�lY(Ք�9(H����9s9��h8Ђ�h8����p4xɈ�7�D�|�q!	�Ż)���t>�N�)�dFN�ga¶,2p�"s�o���{w>u�C���`�f�1��7�پ�C����k�\��T�v��5��.��^�;�P�I�Lq�á7Ǌ��4���X�]V��"�bt�Yx!X���\|��H5�^�U�I(SlM��DN���E��DR�P�7j>�EQ|ю�nv��u�w �Yw�J3��/Z0�װ��t8�7�%�[U��I8��W�j��y_�dJ#6�>Lضrn+�/�_5�������(�M*�Ae嶶�ՖC����	�+[�b��IÂh�ñ�G0X�͚��ƣ9�`���dh�"֢��}W�W�S��wԬ��g��V[`0��'&�j�m#��P]x�v'@߮a�N̦?A�
зe�j뎕�����/��R�+R�j��(��}C�_�M�>���o(�Ð���CӲ;>T�N5 y�ʠ����jx' �~��Ȩi�%+3�����3��c��		��ڨ_S����M6��r>-���R��-%���I�jNǗ��y=�����)��]yuU�aP��6@�v� �H9c �b���4p���8��)Bx�%���D��ҞL鸐�I�ըχ�Py�4���j��	SB�������n�v-�N9�"����0'��E[N9�"-|$�N�(�C�I'Wl��l��і#D�gV����/T�t��z�0`�����S׳�fw�����s�2��Mu������tn��H}�a)6�Q~+�4�E)�e� D��H�hd$�rh���BLe�Б!�R�/�~�5�N��`��#&D�L�6L��<Zs#��s�6N׍p���r�i�Dz�ُ�����t�6� %�ρ'�˄�x0X��<���:�n����
V�y��	:JTP�>�I����O�{�����q�P��;��feb���|8��YG�#n&�}���+�: J(:���P����^g���-	��s܂�S�'w�z��B:���$�׭���}��O���v����Ugu�Y����:^:=�m�x,�MX_]��+���x,�Ql�/��"�� ��(f��/���>�x���H�vfC�2xR�2+���� y�t<q^�E�G���y�~
>=�C��{����C}eJ�ӆ�����Ц̄?�ү��z�F � J߶�@���#�|�F@�"����R�铙�tt��q<Fҿ4�ϛ�����cP4\������h-x���OO�/��%	w~h��n'y!x�D��eFo���My��ixc <�r83U!��83MY8#g*��c��h
� ���e�n�&r�A�0;��LE��.@2�<Ze�&��غn���Ŧdr��d��M&�~�L67Y�I9�yI �����D�:dw��@`�r��T�UorSeOd�M�C��8��� �x��F��O���9�~��:����/���7Too��׼���x�[a�:�"������HZ".�D�&���ht���d��2�8�=�*cI,Lt$n�K��;I���N�������a���t}�3�Y��zJz�����:�_~��Ϧ��v�?w���y����5D�9w��~N��������ˇ�������h���+�LѴ����	c�|	��/�h�ww�� w2�ص!ܼ�Y1Ѳ��t�ыMĥc��#d�=�r��|��������7���]�t��Q���rX�f纎7<�rxS��ˡ�~&�/�0���r(>]�����;��]�d���`O��X](������L	�C��N_��=|<Zs+V/�ϧc�=w�_�����k��|��>ti:Sx�x;����z{G�o��-P	/�]�V�K�/��Y��1��c�%��^�x��
Ы���`E���x�btP8~	dڿ<E��IO���W#4)b�فw'.�zb��~!�Ҥ_TU�N���F 4{7˦��������a�0,"���h����-�m==��-������Ɋ���n
�ԡ���e��}�.�[���ۜ_��D�7��Ea�ϸ�B�5�q c9���a·���(�4uv0�EЦ�)3�G�:?�+hk�ʘD��9(@a���P���D�6���׌�H�q%�;�<�Ǯv�������o=ט��>'�����JV�k�Q��5gd���ԭx���^8���+�_@N[V�
,�-K�,WH��͠�Ҋ�l��E�E��p�����e/��'\���#�&�d��D[�w����e*u�V�:��~P���f�e.}A92H1,�Ɣe,Cp�VM�1U�,��6�dD�Ҍ����%	U�nS��O�8+�`U&�tU�\��Y�ۭrrWh\��JcYrA�aE���Ф���N������|� I����I�0Lt�] ���g)�&|_;E��i	�a��i�ǣ5/����ܿ��/�����y܈$�{�]]uW��JTm��o5����$�u0���D��	�>�B�B|J�Hd���$�a�ph���;�,-rC��0�6����T���b��`��#��n��1�캢�;+��t$X]؛������K���}Q�p�h^���ߠ}e�p�H5�^��e��Z��Oz�Ԟ�>�h��    ]�8ԟ�j��-w;Ӕ����X�^��eJ�����1��c	{	FC��x��
�<�(ղ�?6�+F����Z���s�̴t��i�A�de[B���d-
���۲����d8va�/���d)2�7;(�vҒ K��P�:;��a	���b��~�j��:��(!�_��������ܦuGbn�_3SRǇ[��{�룵���8Lw�k��-�i��t�r^0�>$E+��c*?�>��-��cjS���tP(��=���s�Cs��4W0]"�DH�t%ʿ>�	r\�;�_���tn���ߔWoʇ�����(S8 �������@���"� }H���pdpuF�������=�
#�pܶ� �	���>oY1Y�q%duF�8�{m�~Bc������n��_������^:�ex��`�)�⅓@E�
�L:P��[2��5TBX+Ļ?�*>����C��\#�c�١��x��؅��$JiNք([*U�����[�(Y�gH��+W���v:n����g҄�.j�^��i乲�mlS��s"h�Ƥ9��M��@2!��aЌ����}A�#�wZ���¯ϕ�_AA)F�Rа�~�b�C17��� �ʑ�6�G�h/��W����$	�iN�ӹnO�?�&����=�_�Q��Qնk�V��H��ԇ���9��cD��2��D��� ���t	Lá7[�l<X1:(|�2�T��~ғ��=5C$-�@��G=1�����N���]��D�a/���ۅ�1;� [O�$��gm�7�����KbI7���ci�D���.�Ҡ�IS�4 ����"/͆�B�
8���z�T���tj7���9t��������ާa�7�ՠ��h<����dWheK;͞I,{��8p���1��%���wY:��@BE�g(R0�mkM�B�q i���tͬ�D�o������pPa�v)����њ;���Y]�4��D��/�����_�a]���oe�mB\�k���[�F�9�7�$J�0�&C��5�}rA ��;`]���_�Ea��Nm겓�S@�0�4vyYгS3�~��M�J,�٩Y�\�Xt��h�_P�Ų2��?&�
e/����8��m����B0Q`����!O@1�˃��z��~{��y8<o�?7��a�shu�g��;����}V~�A�>�j���� ^�.3x���t�Х|2��cY}1��K��iX?�i�cW�|�=�2$��?�z���� �ߋ%鲕�ϐ��e/#����_6��sݖ͔;�j$��^�E�������׹��+�������y���}�$u��^Z���j��K��K?��z�y�((��@!v͌
v���D�=ӡ�X!v-L���Y�~$�u�F�"�YU�gi{u��7�R��e��L��7k������WU�z}��ά~�O��ߧ��iߦYu.:�w�նsma��@�'x<z͸�b.�R����m�G3:�f!�����-��M�lQ�� ���!�<�	&�p#&�� ���ȱ�w��GT�k������(���G�T���<���UB^P��1��`��
��x��eE6wK<X1:h��%�x��	~�?�_���0Q��;5��P�۲ie	�0	��)�C����7� Eא����9�K��P�Ν0��~���`��$��\��O\7�w%��c��E���.�����Ot�o�]��b)T�%�h'�����aX+�*W��PE+!��5~�+�e����$J��mBW��u��)�e�.pE��+Z�U���#�Q�`۴ۦ,�ӫ^��,�!]�8D�cD�Ǯ�����A�	`��
���&Y�E{Z� +F�˗@�� xL}�ۤ'����b��s}����V�\�����i(A1,�F��6�I�RK�@p��<�۫F+���,�_����a@����E�"�U	N�~�&\�U�����'�s�
�G�T��e��!^�!;U�;U#��#v����
ک� �<f�����ݩ�`��x�NU1�a���w�F3��;UCtg�����Zp����\��6m��CgE��K���Y�|��,�m�6Ke��4E���>��j+�R��}�� ˛��=�q�������$5]��ˣ���Wu�)Za��ۑ��|bi.�Ɛ����"�@b�/���������^ͅ��d���q!	S�1��a"đ�iN0e���2N���+/��B��y�ݯ���c�~'c�^euQY��0ۺ�H7�S�7���/?�;mp`8���������$RC�l�2�9�e9B�J[H�K�6DV�S��h�>E��c�(���]Φ�X}�Χ�yHx&���C=�f�SFT.���o���s��k*}����բm��L�I��p����ihnX*�t�����a/��h*]�4�f���B�K��pWk��'v���Q�2�	��_ I�;݉R[=M���cW�|EI�c.}�)�i�c��|��+�ͰK�b��+c�$��ab�?C�7PV�D��D*�'$�
$�;t�$�m#��6b��ޞ���nӜ���!59������P_�J�5[��P�tg���p��ђ1
�(��M�+��
_(��7	џgƱ�L�o:D�8�7�{�|����>�)x �dU}��3Z=����:y��&���E	j�q!9��CD������6!�4�.�Fa�������A!�e�(l�P~��(�v���4C$)�$�ˣ���j�_^��;�Ǯ߈��A�h�{y��o�Jm��.u����cIa5�rL�g�x���XV^��PLd�ǃDV�&�%0)���A<X1:(ļ���L3~��\2=��a�"f�x���>Z�­�����K}|IB��*^�]#��]˦Fbi՛�ܮ����b,�GbIg!/��p	c��P4���w��/1m�F���)|��W��̓'&2�1��Q��Vl=���]�wP�Go�6M'$��KR�<����ay0X*��!�MM���"�bt<*�C����=`�"�<0�Æ{���~O���{L�d<��(��n���Ob�v��Sɻ6�*��`"}��"�"T<��e���~��h��x�[�����,�
9[IS�g�ߓp��x&�\#���<���x_�I�V���KWv��l�i��Jӓ {Ꮺ��E6�4=ˀ�7L�)'y��xD��~V��m�Rh0�5�%��5���|����'ҥ��S�a�NUاzq��r�c��m��^��q��{��oڮnw�s�9m����>~dҝ�CW?���������Õ��˫��?��_^�v�+��u�V;�b,�/>�	���|z��)ƮY��%�9�.��;�f�R�qU�N��%���T9e�ʂ>�Jy3'N���@b��v1t\��EQ~ans]ּݩ�*i�D��Z�jɊ�]Z�@!��O���Ob�'7èPd#4\ʌ�Q<�ALn��QS��Zm�Ѩ�f.l�����W��E�-�m!�..��&�e�%y<R����d��Q�D�#.������ ͻ��?-J͢����A��E��~��,�ۤ��?я�=4�S8|���B���x�i+�����Tڱ���6�� {�u��x��ڱkI>��Î��q6��գW���!L�5,ן!�(�_�?�c2�Ne��Ȕ�n���TuÔ��v�:[�Rs�� V�!1l��$,��Cb�e�L�Xx�⏉a��J���D����ǰo�'�B15YD6��m/
	��/�֢g��7��������aY6���~�]��W0H1,��4�2Y����ʡ�3��br��xD�+�(�&#pQ~�zB��'�3�;V�|��dD�AF�<Z�G����T�u�6�CĶ���	�U���}��Y��5K�L������'q���r (��#�t��4 �rq{B��`���C�aj�A�n��/��ý���tj7���9t��������ާ������W�_a�^5ܺ�(U	l�0�Xқ��>��Nt�<�$���ٰ��    ̍�� �f�HP�_�'�u�hh���H2�b&zϛ��ob��9� {^�쩾�=;Wp�-ԏ#��=��t���1��%3��b.G�H���S�|��c��I�'O��8zG#��D��vj�+*t!"�t�����X�����\�KW���y�7"	u^uWW�U����E�(��4q�尴9cL�`6���V˘1`ȡFz����DseVe,�F�"K��hJfBљ�$�(R��|GsFX�,�����Z�aȮ�ܵb[�aa����4/A�X`�rd���*i��@f%H�ɖ�D�"�� -�ږ�INd!�0A�a4Ј� �Y=��_6j��th��Xi4��JU�ޏ�r��F	����2� ʹE��V��"�~�:BC��Ng�vL %���!�Å�\�G+G��P���n�����&�
	fFU�Ø�[9�U���5P�(�}�넡�O-��j�Y�L0
҃҄�ު�{1�M��@҃�8��[�$�T���KFĬ	��"si".$�6��a2�%DLs� �d�NE�gqJ�@�g��h�v�+: <���R�;{F�լscƈ*���E7f���~ЍY$�4�.�|m����ޘ����Aa�%�i&C�q����X+��ʬ�!ڙi`g��83�=��N�M?�w��s?�ڪW��wx�ZӪ�*�۬�{9iL����'I�#D��J��g�7@�#��O��Ws���I( �HI� ��yM�_+F:��.WϧC��p7=�:^��������������}}C�{�D'��gt�4���ѕLf8�G�C�F�ۣ�J�帬	Q��H���|=~#a�k ���r,�����݊~%��*�C2�R�f��h-D�z�~>�������o��ڿ4߇�]�����7���Q���j�m�ʺ��xy,�"��X1����1��cYx	F²"C��x��
�\���L)�������Aa�%�Y?J9E��I�Ӳ4����0�� ^~��r���Zɢk:��ML��cS��a���h�nL��cd��(�Q��E�xc %}B^��۬����Ņ��_�7��v��6j�Ƥ	6�4_z0I�ew~�n+d���_!�e���
�3���0"xI,F��1̍W��w~`H�hf��(��Ƀ.���Ф)\{�'XM3щJC�i����c�)0
�.�y�����5���bg��~*�X��W�P�9�r��V;vQȇ>�Y�d�?�z���p������gH��b����	yOR<�hjf]�����[�O�+���Zh��S��u\���+M��P�9Z駈?�r*�M��#��xH�T�x�W�\Te��]C�χ
֧K��ʩ�	O$�{�IGP;lH	灔�<��?��][�Bmk�j[*�_�њ��P�?��?�Pc|��q���O��8�H���5�!���CM�N7k'�3rV�T'��u�mD/]D���Y�������z0�y�,F��p��,0"xɼq��m3�~��� �9΢
��Y`hh���,ƏC��,��N��J�b�J�r�]�5�^_6����g�����ᥟdjKY)��5U����5��5�ł��ٺ�1�
,��̇<��hX*�����Iq�}�"�bt��x!^�2����"�"�P�z!vگ�<�٤�ߓ�tL�y��D{����Gka����[{z:aw��b���_t���w}H����Zw��U�۫>��;�t���8��d5XF�C;��ӻ���	���̐չ�X=h�O�]�/���b���~u�ل{�w�_K��?
_�
�x���h-�[m���ח�����q�V�V���uP	yj$ڭ1�3�-��,<�a!<��@Y؟sd�`L��w;��n`�K�D�:?��F@l�]|�&2q���iB�"��H����Z(�G�G��a�-�c/�%�E���Zzok<FTy,�-�h�f�Y����8��ă��B������n���Jd��4�z��}R��ӡ�|=��a�$L=�*����R8��.u�h`׸@!��c�^��؃&�u�B,�'�U�i6���'�u�F��~˘��}2|�(��1IQ�~������fMҗ�������J\yu�<�=Q��7���5�����.u<���������������u�mY7@�y�.�?������Sd�:��D�=���m��4@.RF�V/�RfKoO��R}���y� g�DS2Q���#0ǖ�O��w��dny)���htEV��@���ć2a�"�<0�9���P�a1r�z���]k1|T=>�9^\D1o&�G��
=Dውb:0��h-��Ŭ[[�]+��8#�F19/����a"<2mSr�|u�0&l����aLcY���0�ΏN�t��\S�o��s�SQL�T$�X:�/��B�?�+�;�Yat�2Nף�F��D��%����:|�Wr���{%���2��R}_�0,�.1Ζ�`k�U���<a_�]�Q��p*ڒT`��w2P���*,�(��V��.��h��@S�B��`�2���B�K����4�;2w�M�%㣉Rj����Z���?�d��v/���=�~�i�������}޷���qE����9M�������C��˫��?�xy���b���n��E`	�p]��~�h'S�]E���4r\�ɀw:��u(�gL|π{R唥,��j�K`��!��`o_��6����H��ʐY}�Χ���M}l�:G59�.~��g���^X�/|��T������h�
� �U"�a�:*8�f^�?�$r�2�*�HY2�!q'�˴�W�dh����y�a�X!e�I�l�L�Li�} �H�G��ܱ����\�GkY�U��;�C�����*�Z^te���01���	�L^�ϿD�20�8�� ��#Ѭ�����ս�r�%�,�|��K=���y��ERU���������Z�Af�By�����$rIZH$�*��P��Ო�c�
�e%K	$ӘH�D\�F쌲�r�?����.��W�15����F���1��]�"��R�R��*��7��+A�J�v�ųn�g���c�H�x�Z�wj�jV�k���j�����o��Ӡ� O���x�����ן�ǡko����/e�:��Φ��V�Q����σ� �V���%��K ��^z�eG-�����^��f��*�}�Am�8����}ntR��e�W��1��A�����=�^�ÿ/����ϗ�������9joF�z�ݾm�}�o�"	�Yg6�����H��P�K��¯� ��.�(��@Q��j[�hp��LȐ%�2�[�t����2�����P.zg�c�{V��y�8�{9<�||n��o��[^�<O�����m,��t��mݎǮt/�A�sƺ�@!��A<P9(e���]X>�a�� ��2]��'�,�&S�1�U�)�\��ci�5��a=�Q�<y�tG7���u˷�˟�Ӱ��&�܎ث�U7��e{c�1.�"�(��O��7��/^�]2�jόbd�
���H@�piJUL�B#�E�q�X�a��o)��%u�쵗��^�3�z�ǡ������Lо���"�Z@1�w���iGl�#�
pSe�:����
�_�r��kH�T\S��v܋*ǬTu腨j��3oSq��K�����T�|����ֵ��v� Rt�+V��i��{S=d�.�V��[�Fu���q ���צbW�5��6=e �ՇYtJ�j�~��W�/��5�)#Ӯ����4�5�NE���j�j��Z��@1֋��WCｘ�q�ѵ�b�)1��� ��l�Ťj�2����b��R���Ř��b�h�����C�wu���>f�X��o	r�SG�S��I�2��G�[��J'�BXf)���(�	��E�8�y��g0���<L���E�8��
Q�8���D---��L\��l'^q����x�9sܩ(��z����z|��?�}�k��\���樺��߻��n.�rF�4�M�Y*�["� �A�=��Y�$�r`ZN�b��J"Q�&�ͩ��!0�rp���I��<    	�߰k�^1���4���Ak2;���#�U āKT���d5@`�^9�t�R�`�1Y�xūA�f�J��ਉ,��b���$�6���w�ǡn�7�����#�],�4M����B��8�Y�V��H�k�q��y�֏�8��o�c���.�Ɩ/$�3���A0?xh��F;b��U��hx���f������d���:�@��Z=ш^��P ����h$��#���4W�}�hɳ�1��F|�\N��`����ێC\�o�30��l��\͊�*�jT��.Q͊�*�����F.UϚ�*��ֻx��`����U
��M��Vq9���-X;�}�h�e{9��GV�De�G��_����#��l�X��p�ME!,���AV�OW�l�w�U���Lv��b�d�
��
q/XW�m�����_��_#�ￆ���^~�Kܡ�jr|G���b����Mk�LߺH�6�<t� X_&TX���:��V��`�u�����Z��s`�{Ѡ�gQfO+E��s 3D\��LQ6|ҷ,�81W�I8�%m:v�rFb�wTY3?~I�'Th�aԪ��@ ��wB9#֪�[�(�T�.'�3b�]���� DQ�.�pB�3�Lq�=k-�3
�)W�H���{{ؾ��lw����0�����B^꨾�7G��Y}������ș)Hʎ�f��FY�$P�P�L����
F̚��KX���$t��M��/�K�f�To�t<I��/��*�)�Q�����Tv�]Q*�,��f�i�ʧ�g���ʾ��l���Yh�� �r&^J�������QKT�a�L�L�x;���e�9�B�P�B<��[ߺ����_~�yo�ߋ��Y[��븥����M=	��`�q��a�s��Xʗ0�V�F[4��3��If���Z+3���Oc�	f�Y�n>5�[���{����3��7�	�V��k�Y�OxQ��O���E��JP��K��p>�V���<B!*�e���fE�P��Ȩ�������";BxB=B������l�^���ah�3>���>�w��?�O�[��q(�������y��5ƀ�C�`u��(��!�t���P������a���V ����VI+E��s ��=�'=�[7�]Վ�a=��V��!�U7w8�gm�pr�4V_�y�OÆeU��@ �j��0bU�@?�T�恾����A�V?��( �/S���J����!>�p��A��v��Z��f��2a�4e`N-v���o[�,e`J.v�A�%#�r�!�e�68�������ڽ��
Q�B�R���"͜�K�8�z�!��ܥ�6o/O��{��/�O��D��K%���|��|zC������G$_(]+흉}X��/��डK@:<܅��J�%�z:@�VLUH�	�C��`���3C'|��޼�J��`W���ws�����ޢ���ag[�s�X�0��a_ºa�8P��a��Qb4"��a�/g�0�e�E����B|��[�����i�w��x�5ɘh5P-Q��{���ǚ�\�(�(B��p���\�0E�(�̉�V�!�UJ/��]�T�6��u؇%	_�] ��o��wz��mm�\/�Ut���ˉU�8@���~4,#Q�!�#��z�G�%	�A�V���r�`q������p���őͱ6��_~�O�	o[����ٿ����o���f3�6���֌j�os������Q��Gn�A����d댗k���`��H��Dxp�`�L�ǻ�sm�ei�RN�� i���B��gQj"Lx(�M˅7���,v$Z��'�Ij���a�h�����ʷ\�i����f�]���2$�����_�vh￶?_���q����C{3j?;�{���	*#�c!�P���1����HS�KB6f��ͅ\�H�`VME(ªmS��Ic�4 M���[�D'��毮W@����G��?���Q���p�ӧ���<>?��w�rx����>m��?N��^�:���g[�JOojNoj��>N�oj�75���w�ܫHE�(łq���l�����i��p>jLY�p.l�j�T��x�X-�,�tM:�Q�D�Xni�����O�L�"N�����Q~'v��RP�C�-�Q�_�kdA��e=��܍��%�Y��$Վ�r�K״.�0�=��/L�[R�Q,��B_	b����N����/��^������������}�����������m���=���8xM/�;O������p���`�[�ܜ�܌on.on�j.on>��Ȟ����Gϑa*����� of�p��gf���xF���]J18x^o!��r̅է�>ű��]L3<_p�������*$^���Q���[�f�Q>��fn����7�;We�}NK��eDH7q\pRǜE'7���z��l�߷��}8<=�/)���/e��_�_՜_�|�j�\�xU#��p�m��`Հ�?`(��g9(���.Qx��DT�s��\��.(;���e�A�f�B�
�x���M��	-��W{�|!�!FÞ�SC~P��/�߷�������]�����r苐����C{���\�7fP;i��w�<��R����.��.��)��%����g�V�ܓ	BL�i������<�4�eGD.�7B&z˥һ�W��P����DO�g�&�y��ڗ_��ix��ʜ|jm�Z�^Y���P�B�sP���%��z��gxc,_���!���Y��=�t���p�M\5��@ �������is���0R�DAK�۷���i8�mť�j���4tŒ?"���iĥX��5��b�g���t(Pڃ��}�Q��hX	*�L�	��Űb�E3�J�&�L�d���,��`�8�WI�7*��F3�h�G�E�Y,mQ��ח���O�?�v��C8�ٽ_�6�j���L	ƅ���s"`GtҜxx_���B�(�x�������Q�Cd��(�~���)D� C9����K�٩M���^���(��=�u����1��zx|�o[�ҧ�f�=�Y?u7�����L��e9(��X��a���r㱀�A)/���|�fsx0��`L�C���R�N�HP0�FL�ƄA�H�υI����8t�`%Hâ�1�	�;޳��\�FGn�լyx�	�pa%�D5k�W��\��U��E���g�q3T�~v/Ә�&L\PTA��$|����m?F<��oH�F0�Ӻc�F$h5kҿ�)V���\��u��ݏ��ȥ�Y�������8������`�_L���r�Y4������v]qtjȯ z���r(~L���:nm��^��>���!�ģ �Fi9�ً���5_��p��%�!���K������ !T4��%K73��rɔ��:��0�hK잆����qպ;j��42E�Y�q5<,���.Q͊��_KE�\�l�R����op� �`���WM�Rڄ��M�kh�5���:⸞��
 6#���~8l���O�U���˟���о�<o_۷2����O�R�ol�ol�76��-\�bY���	X|⫃"�BnD!4�3*��9:V(�\
�Lu��b�JKh5׾��QI���a/��|�D�n�%�&�*U${h�\E���Ѓ`l��8�:j����Y�ʀK	ҌT���� �q��c���m5��8���&�S;5.�PŒ�,��Ը��&.lh��lj\����j�R;yR�+��8��W���H%R3�F��x�H%V�.�:�7"S�Ԥ#bMR�� �Hj&��$���&�;Kj!PR32JjC���&����doa��b�]�*�����%(��"���Z��}��A��|̆�*K�o��/]��� ($��_��]��q�R�a�2?g��8?���\7���rY������%��Ѓ�v����{۷����+�>��d�5a|A3������t���n�2Ʀ��0��������yl�Р�����Xe�<�'B��Sv28��M5�:#�����>BS���2�h�0Cñ���ᐧZ�    �^�����S�W�������&R�f�I(cs�~x΄_�2��0�$��`
��9��3��	f�r�*W�� ��?��!��6��N���Dn�>�^.�J'*rQ�4�w�k�'����h;M0�"��W�@�x�H�CnX��+��Cd�������P�b�R��`��2�ɖq���I�h��NCB�oT6k���^שּ�(Q*�,�Y�ǚ���je��`%���fn�,v�^�lV�`���K�0�v�8j�j0��]9�.y���߲�;%�񄰸7�Q��gqv��ך	��l!�$�����2V�qM�.	%���6<˨^ ;	B̺���ixx��qhp�jMȄ�7� �e��{y7���!V@�db�>���w,B�+��np6�3�J�%��r��\q��@��D�/�{ֽ�G.U��K܃s�^'	��.W�Uf/Q�`����蝬�1�\!���&,Vx�4��_E�'Ͽ��n(��5�6�����;���]��Z���P�c"�F}�l�Հ�?8���p-+�T=p�χN��;�Be��P쟏�w��&L�N$Q����- �o����s�ӿ��_�vh�����7��,3![�͑�2�I(�������P��S�KB	;�I�z�)� D�L���da�FQ�M�'���4�L���bU�D'N-W��X���F�П�<{��":����w��:�"��"(��7���Eč��K��y����TL�X�kC�Xݬ���^�S��1+g�"B<@�戎�z��<������B��y$�"Y�<M)b�^
"pɺ�i��=N�C��|�&x��R)�����0`��'{��-o
K$���ҧ��K��!O��.Mo��{�;+�(%Δ�R[����2S�`*��]��M� �,�z 9"�e�A��bh2�W6%�4��L�"�ߏ��7!DP~T�=�i�Ap���~���h�j_�<)[����������k��k��k΁������i�D��(��80NT��dZ	*����ߤ�
!�,�Rt�98/-+^��B-Q��3��d�>j淹bf��y�n4���1�z�~�yȳ8��}9<����m��z���~�>�e/���y|nN�iN�9I��Z��.�,�Rfq��s���7'��JP��<�8]�R��V�8���%iX�,�砖��ᙿ��� ��O�A4� g���6�!O���������_��������}m��KV���|�����f|Us~ձ��Qͅe4��J�p(���;�ٸ%���{ܘ�R�+�T=`�/��w�d����f�~��.aKY
h&���.�6��� D��F<��q?�����ow�x{�yx/��xAÛ���v=X+"TF�]f�����^'"�F�XҐ��W.��NPIG��t(%#�d�$�F��] g;�m"i2���ٱ)����Ӑ'Z���LP)4�ё6i(�:�:�SD��S�V�
�C��X��B�$�(':/M+M�B-Q�q�) ��F��6�M��VQe&B8A$.s�y�!O�W�����^^GԺ?e2;��@xs��x�� �N����Ζ I(S���8��BX�KoD��P:NC�����u6$Q0禁R3c8�4�W��Q�/%|@&:q��f&��-`dOs�OC�=�7r�e��bLFr�P*Vr��
��.>p�k���ʉaZ):����}�8j�jV�%t��Qs������@y�!� �Dr3��!��f�����i(��'eM�RI���H�ăP潞p|(�����.[}ʔ �8�K]�]�/�$��@ʚ�s�a��5d�F��,&.KP�x%b&�=L�A�yȳ�����{����H{x��B[���܏7�պ=����c������!s�b�7tA��( �#�f��
7dv/K ��˅&���	����D�����iM��vA�Y��e�N�=9=��ҵ����wr�\NX��rY���	+_X�TJpIW�L�~�x,��`�KAc��Z-̇#��¤MX�s��2ɉ�%�,_�
1�0�䑞���߰�,�Z�o�"��j��a�j���
5s�KTv-�K�T�7s�K��M�T�u�� G0Cʽ-��]n��6����)��l/������q��?ۼ����|(��j�m�PLFJ`��]�	C�A'z:�|`�ً`�c�H��v/K�=\��c��j)��AB(g��&��I/6>����9>0 iKG�Q��<m�h�*�3=�tL��B[��(Q�0{Q�m1�+�@ؽ,Q�����ԥ��� �j�%	[,��֭ƃJS0 i�ɨ�u�%6o���1�H�n�:*lF���n��;�#醑��T�e��C.Gd��Q0Sg��T�kt��:�4����Jޱ.�F0�P,�F��&hz:U�����A�3�ޙ.z��n���"��?7���o�: Sd������_��ap���hH1�#�ŧL�+Ǚ͜W"gS<�����1ǟ��1�,s��5�����ҋ��0FĘ���5S�,�s��G�� �R�`qJ�Xt�y�ylѮk�Y�<۱���F�}������ҍ����,�s��7�]���z�?��	���<��HS����о��vOË����.>�6g���R9D3p�$�~Ƥ-3�AX�R�ӗ%�~���$�F{w�� ��3^;��m�0��0n	K�RN���n�V=���l�%,�^����d�!�cj�k��?�1��>l�������ϗ�ס=�Ϸ4�[��������4ܹ�S��7P��wQQ�7]9H�5@i2�1��B�GT	*����Ta&`Q�́,M���Ӌ���yO�q�W,���ڑV:���z�=���_�<��7��5�^i3�a�<�$�k�9��njd�B,�?	�H�����gq!�ęG��3����"����1�3Xv���"���ܐ����Lr��\6��\b�q	�)f��Hcک's�!���0�da.�DV咸�3���^-� b����D�T*dj"��,��D&cg�H��Ӑ��-�?>��a����<:p���8������mh�JK����x�腍�>�ol�o<�l����]$���j��_r���E�
����+�&�a�R��^!83��#�� �T�dZ
�|�� c1l�&i1 �h��*���p�`\i���4ǡ����?����ϗ��O����u�s<oM<u7���ٷ{)��9[D���̋��𠤶����k�0��j�:"�zkpY:bs?�$���$<�ϭ�����C�bGs����K���]|�(�y���K�*۲Rpf���/�B@��LDa��xgB����٠�>�2����=ș��D�8����+e��S�b�|�@�\v�#�|"��E(y�r�Y#�=n���dqwrd��?�AB6D&�/�̴n8�
B�Lr{��$%�ԍӈ�,�Zڰc{�Z�g�]$��,2��h��1}Y�w�2���mcL��}D���W�@�C �B�s( 1K�s�&6Q6q,�0��bd1�q|�<f/��_�����>m��?�ٷ�?�����Y����|Ooj����2?�Ԍoj�0p*�]�N�V��8Ŀ���3�Z�({���n�Bg�\�Հ�78ŉ��ƹ�k°v>���%gk�D~1�E�`b|FD�D�y�3�����wL��)���m�����D�%��y���r�Z�؍Ù���ݱ�o�ܞR��k�O`WU6�{1�6�k����n�=p�Q�F����ʖ8����@˖\�v�;��!�^���4L;�ٍ۽,Q'����n�Vp��n�~�P�Ȯ~A��˴&;b^���)O�.R��4�yKTK�n���u�����˓P����jU�}����P2&,��{�츉3��y��l+����:�4�b`��S���L�f�D멬��V ���{�l"7?���}��y��q����P�y���f|Asy��Y�0Ԛ�td;��В���)#���R"4(a(�%C�UX��%b��3_2:�'M��qO�� C��H-�/��    6��]p��H�VG2�NC�j՝�����uԘ��W��:��A	קZV#;)�t}�����0m#��U�V��9�j/ӽua��� �jC܀�TM�;=ͿQ�\:f�,R�J���8�\�]�Mn�P>�m�[�-dZ):�������=���QKT�!�L��rN j귾2��P]rC<A4�����i�4� ��m��߿��Vz��];��Ϳ��L����4�/h:����Ee ����d�]�M���]'b��Rt26�S��v"68i0!'��)�Պ�$b�V���d�<�.��;�a������Í�n*|�d�6���ǃ�A���_۟/O}���Q{�����ߵ�����4��r쬍�ɗ�^���' ��2k"\[!36�(�P�@�_6e��'@����h@���Ɲ��N�`W�(V ��DEz���<}���?����S���G��<?���C_�>?�7ڛ��梽�vz7����.�I(}��?<�a��2���\J�i��w�+d#�@��g(���E�3�4�>� ��m�)��L��U&h�	�
D��pn���4��S܍>�w{��x��K�V��Pk�g�de�TDT���	B�6}R��\�>����ӧ	�48��Lt"d����ҧ�-�y����ޔ��CW� �E�z�ݝPuZ�B3O���ĪqxV
�Lu`�/X ��[�;ޛ�Ú��\�,��g��%ܛ�4�����{S!�Х�Er+NC~�Qw�}׻��-:N|��'6j�8q�d�8���-:�h�8�˱�'�C���'��E�!��`a�P���iX�>�C�>����WZ�-6�q���Pl��l�@G�d�@���M�L�!Z9�!��C����+e':.��Hip���>%�&'>y�4�����?ޓ��FG��������y~�nFݣ{����kyo����_���uq���B�Ѝ~4P9(e�`�LXݠ�54`A0Y��!DX���4(YM&�j�K�,O�"��a�K��0�dl{~�i�|���wL�{�"9�@a(_�_�D�'�DhP�P�L�e���P�*�4�Ms.��j�g"FhrM��Ix֍��t'n�z�U�kf!n@�5&r?�4�֭Vg��A818kM7#>!C�٦���#�1}Y|��������a:@~�2^["W��� &�:&B��^l�97��[ �(6Wg;��c�NW&8=MW*��3��F�X����Y
���n�� x��*����J���^��MmL���� !�W
o�{fZ��(qr�^������u�C���z�W�:mw��\⟓���_q��ӗ%*�_�F�� �J�ф�띋� &U����/����l"	^��� �s��:yw��9%�������E�z̎}���9/�p�����U����N�~��|I�[/h��`���%zi[���z��څ�A�VG��Ӑ'[���=��IW�T�8M���>r�1� �0�'����rm���e�B9d�a�R����ş��Bi��w{|��ه1����t801������;��ab}#NC�?Է�j3+vt�-�lV��7�����e�q�&�f�6�޸�c͎��(�Ù���.w�~�EqX�5�6����a~F�U��A�{�
L9�C����R��v�f��[��� #�,@��&]���
�n"pI�C�v�Ɔ���Wm� D�>t(U�uR��I���ĒLn�R<d�������6!V �K�F�sNC�>����(g��E�ɺ�i��W>{'�du��QS$�hm�daTy%��C���O���t��Lt�>ip���>e���i�ӧ݀[XgS)��47���*Ҡ�J������z�]�nsQK���|�<%W8��E-Q���q�s�vؕ�^�&��c����c�;�^�S��#,�>y�wߎ�w��p����jY��۾�I�q�Ҵ�H��T����Z��5	��5�\��5�����X�If�P�e�[��}����F��ߨKV�̎Se���	J��t�2�c�Yh%���{n�,Q�f~Z):����%KZ�p1�D56���;�L���d�,�PM�B8A�	7���Cc����7<�j���l�{z�:��������h5y��3��HyR�.QM�����zWU��\��L�����z��2T���(m�`��&b64(�/��e�G�y�ӿ��}9<�[V��z���~�>�eo�|���^Ӝ^s6R��k�RӴ�R�|���8�Fj��V�
(�g��)�.�d���L�xI��m���Z��gb��[l����D�%���O �;+b,~�,�+]J�|0������O<�;�d�;Z��8����$Х.�/���?	��X��ڛ�`��è�إ��9Ӹe7v�����	�5�z�C�?���px��t���t��s��3z춼|���ecV�������e�RF{�����'A��0�ă��(S �dEP,����_!�[ �tM`�-���a�\ �,e/����'�1$�}�D���R�%��C��w��������}�	V�z��v�܎8jiZV��U:���f��iC��q��5���a+��q1`��焣�;BlA�/�/)B��!�'P�(2ܵ��߱A��d�R�Vd����,�T�f�UH��B+E�jaa��3,G-Q͊aa��O_�>q\��x)�F����<��������{�m�}y۵�~�{j���GQ
?��9��9��ld�t�w\���
0��̟?��e��瀕���y`1^�<HZ):�,������k�ʲxj�jP,��� n�vj�7,���$��J��E<N#���7��wn0TPi"�x����p�«�9�q�T�䈏i���Yh��X�_:%���QKT�j~/��q��D]y��(G<����7#O#��Ǜ�o�����co[^��?�?���7�)��B�&�
��߷��?bK��}�R�n�ً��5��E���b�j�����3�r���V�a?H@�|�Y�#�Nk�?��a�Y��%\�j�i���F��tr�v`<r܇R���U�#^������b� 0�py;����.�M��{�QKT�jX]%'�����r��vR��=C<�,nD�ŏC²M�������"d}�����e�VEN妞�Ro0�����J�0�$�/arN\���g��H)+֟��:�4��`jELMd�̛"�_x&fk�� �63���{>F����{s���ē�^X���X@���ac�R�!�`��d��x�S-�
FC{)�Ȱ9�d��I�P����+F�A�GI��\�:y~�+��^;C�m#-%g��h���ًu�}|�`_��e�:�>n+�DC����W�f�u��	F8�	��8 yKE�7��<o�ͮ}��޶?�J9o���ad����|y~{�C"�|K3���x�H�Woi���:&�.R��Ju ��O�߆� �� e�<���҆-�`B�KP���*ʰ9��i�ppp2�m��1�ei&��]X,�������q�Ӷ��C�����k�=肋;?^�W��.G�9c�h�]�0�Df��x�E��I��r�@����B�\NN�'?mIEG���+����Z�l%)��$eB�;qΈeA>&7�j�]$��4�VT��b�sNE�*'��%�l����: ��BId�X:�Fg�e��O��d��5۔-�9�0�|`U��[;NL���o,L�Y	���8q�NC�@��=���}O/�c���O�ӓ�Q�\�7^{�Z��I�S�D�%�a��>�%��x"pIxD1f�Z�C�ES@,��Y�6;�4.���®F�7�g&z{#F{�n�r�TГ)Ruz�}��ܻN��i4F�:J�H�2T9@�5����
W`r�JP�R�r,!W��́,M�zJ��<O�ֵ���� e�%����=���l��i���=�,��F���kM�
W_�f/
�9wĮq�{Y��i�pa
X���� �j��*l�:�Lk"��gg    N�C���b]QNC���Go����ݯ��OO�������k�����}m�ފ��X���U�h�W5㫚��UM����S=�i�C��2�81pZ���KT%��	NL�{1�ȥ��o촩�~<�U/���Nc�P&ܐ���(6�B�\���-ǡa�����n{h{���{��Qg�u6�^X����5.�>f�[+�~0�K�m^z̻��0�P�n�� �2fK�S,ˍ`�!2(�C@`��IZ�Nj�6�rV�1 K�����<�v���E;ŸaN���͋���_�g��#�װZ`�Fm��T��r	j��h�4-kF�㢗y��E�&���5Q�>y֖wN�T�vm��d�'DJ�鉛���DhP�P^N��������qlp�`"NFG~)(�^�f#�����<t��e�\A�&n����֓C,I�4��;��WN�Sfp�Ũ �of��3�59�������E4mV�A+E��3���H�PKT����"�b)�����	�2
��8g���!���nٳ���	7&z�~Y�f��=Kþ��g��%�Iٳ"L���=�!�HNH��0u~���848i\�B��h�*1d��UIX��
�=��ԑ?y�4wc��\+��"G\ɺ�9f~�y� �\�.{r���춇�!Z�=��?���3N�>{j�t�2ω��^1��A�=��Tu:=Hf�i�l��
#w<V�3A�j�4Ȧ���/�����%+�s��C�� ;�_�&0�AP��� ;�c�2�i7:RY�/fL4���� ;�yy��?��~ȩ�᫡����W{h_~m����cs(��Sks��tN(�NS����'m��8sa{�2$�1}YJ�8Ӆ%�Bv.�t��Qq�Y�>���? J�RE�����b�^�.ZDd�2'k\=H�R�k7����E���C)����+��Fm^z�]�٘AX���F/
�Yc�w�U5΂���*�7Ly���'u�9�&H��� DTc�r�8�j�AJ����j��S�d*�
�~^U?WZ�E}X	*�����z��3��3�<�� ���,�ՠ�������>f�Υ"B���xI�LV��zn�֘��vG�������⢴d�b�q���K����
�Fv/K ΐ�K�B�[ n?HwP�*��h:3�[�����]���A�� �!O[�n���j�z*�ȁD��a��,Z��T
"p��麂��	B��a�#���������ūP�yޒ&7�j�az�=c��NC�^���Q�y_�m��_��U���/h�_������U�>�@a�>}�ع�IUs���%�ߕ#�a�T���N:a�GhR/�>"���7(E�R�p��9�"xS��E܀L��I��!ϴl��9�����ݣ�<�}���"T{�������o��1:H�#ɟPi(�.��28��'�������m::̅�B��
R̹� 	��(ʺ�0�5`x7,Mؒs��D=N�U�(;(����{���7?���}���{����~���m�������K�������G�� ����dl<ʉ�����DhP�P�M���`!�M�'f�dt��n"Fh�MFJ������Nx��Ы<Ll �uĲ՞�<Պo�������q��LP��2��B�Ǹ+'���KV��"�I��^;9?�_�&0��I'��"`�R���"`�ŀr�����/�0C��X�4�}�J[z��q��
F��� ɰ��
���Р����J[���[�Ʊ�Ic�͉-R]�έWi+�Z2��Zip�Lw�����Xi+���E�PS��Ր�ګ*/�ǟ�������y;<�j����#~>�<���jN�:�,՝z�T ��?�E��J�d�T�ՠ�,ҁc.,�S:�"�T=�l�t�<�����f�JJ�H�Q�0Φp@M��};��&�90�BW��������]�`ƴ�{�	�R�O�HJ�f4����8T	*��iW2\�:�9h��H�I��a��>MX�NF�D5i)"I����`❌��'6�ł��d�x��������i(]rڻ�����E����W�- _���#�ꞑ�8~�V���j�)p�R�z(},�p��L��1L�A��D�����*�<��!�a�����e"���f� ��R~j� O�D5+x8�����\��5<��j6��V��谀BF|�b�D|�q�$|���.r��4� u��;]�k*{."=���x��]�.�ġA	��7��;&�����868�h���$�Z^c"Fhi������k��N��?���7 �:=�l_=H�7o���q���E��Sa3*l��g;�4���F�r����	ad��d	�u�a(�m+�V��u�i0���JW:m^���rK�R��tn� �y�=b��rm��;}�v�Stg�e|�jV��/������%�Ys�o���N?�\��5w�*l�p��~�U+��Y�[��`�,�&z�G^�s�x��OC������}��xd��c������߶L��O�ͨ{�g�n��n0��v���e9�w�.8��}<P9�� SD^�J��h0��p�6n+vƃ��E��)?��{'�s�m�戺*�Cʎ�E��cȳ#��5��q��z)�y���\ɲ��3��:�p���Ţ��l����\8B�53ڼ(Pegh���DJC����C���#u�h�i�s���;s��^0�3��3��Yqgμ/�*�LE.Q͊[�B���l�R���5׺b��l3T��7��֜�9��0��e�R��y�/p	�� �@Vv>�N(m���M���U΅t�7��ه˟�*W����?]�\Ȇ~��ϸ͋�΅�R,12�	R��Ј�����{�䣾�/j�����G�
�J_��=�_I�sZX	*���{΄�Pֻ�G+E�A3��n)�t��`88��&�0����0��'�t?���,n+��f�tO;�#�"�w!�$�|;
����w!5j m���ix�4�s!�6/
Tq!]�)Zt!/әH-��b��n(��H��Ӑ'��z����L�)a��A	�̵4�װ;l�㗬J�E���*� �/]�x� hq��
���C�*6�b%/f�.�{om�-�g�a��-ǡ��f�>�o۟��w���Èeh�<��m��F�oiƷ4o��z�_͞w��~zI�h�� ���V��ERxP��C��*t�U�
0��5����r Kӂ��<���M�8f��9�W�PX,A�-	5�>y�f��_����{痐���ݯ?��������ͯ�����w�W5��jD3��_՜_Ռ��k�Z���	���p(����$��l��@I� p\�٘��=�T=`�/���ZX%�U�/ �Y���&L��D_q�����p� �sq g��w����y�0�$ys�o��Ǥ�A	�����u*��`��N8�C�#iXrd�� q��
Ҏ�е�|�ӝ��b	��qQ�"Ԋi�=y��k��n�*��������j���:�p��;Ϋ��:�t��;i���KDm^�r~��)`���:��uJf�r��Ӑ�y�:N���s�F�y��>,��+�0��K�È�S*�4��KCg�w[�C"FhH?/)���w�9Ow2]뺹%7(׺��w�\�6��˟������Y[��}k�֊H��ԓP����+�˧�B,�?	e>��L���hb�̣`���Վ� ��?��!����%nj"�CQWU�c��O�%��tb�Q�~Ko�c&�#�R���%%	���'{?V�
|/�E�X8�����V����^^R�u��QKT��K�V�}�eG>�[��8�Ee�xY\�H�iȳ���9ˠ)8�&��"\��ŪuE�A	W?h�މY�s��
-n�fY(��
V9h1������7#�ZB܀\kDt~�\���d;%�V��d���;U�2Q�����G:�!��3Y#��']?�)�2t�Hg#���"�p���k�?����@D�}�H��ϑ)� �  ����p��?�v���5�E�����T۴R�Z*{�MS��H�͉������� (["��J1Q��0"헊�jצP( �0���B�iS<7;��"}�H}a�E<���Td�~�ƾ�E&7+Z&5��<�(f^��rs��Lq���|�y�Ʉy�]d�C��L���DX�q�Lq�Ҵ`�88�/e�c&>�
�E�K m;��w��/V����^^�������~.ț���ko����7��JI(=��_�%���OA.	��4D8�PJWAE@��m(�Y�fS��Ich5 E�{��D'i��R�X��ӐX���O�cy����}����Կmy!��P��zk�m;�Q�F�@g�ykH�U��X��f/
�ia6sUR�v/K �a�pa"wa����k���D֥��i(kŊ���<o����E(��:��n��"s�~JT_f��L�jx0;瞅2�NOJ8	f���`&�Z*lX���}���K�c��E&t)sz2�ֹ��C���#�Ӑ��y�����~8le���l�:��� Z��X�e�y0��Z1�=�|a"��Kσ9a3��V(�	7zQ NH�ǒ4�Nu��CdP���/����i�Ə�ʄ�� �S�D�/NC���:<��i�m�q��<�L�"�p�����S�&���c�ыUxJ谵p]�����S�\�,@<u��-O1K��� O�}5#7�OC���7�<������f�h5	����cU�.d��&aw�Qy�� �\�R���W3*�U+�`����oz�1��C�0Qy̳�@W�. ���p����Ϗ��P��Oʚ��;�]�>�N<���	Ƿ<l�Z���E��)�<N����Ly �J�%5���c�	�m%l)Gyb�G��*c/b'�>��Y���d��s�nǭ��]�In��J�8Y�r�����(Y!�yQ�N8��j���Cd��r/O�'5�33��M�U�D�<M�ͳ������wo��8��-�v/�_���2�����ޜ��HފV0a�4�A����ho�#�r0]��R��IC�/f��&�BL�
R̒� ���9n�0�5`5㷶�� :ቘ�x3�B���+Md�y�ԫ�a����^�A��E͚F�X5�.Q͚FU%�8�T=�F1�2���P�z�Qb�o@&L�%cD(t�1����
�N+����EOEg�XS]�t}�[Z�r��|���I��|ס�Tx��k8ߔ�j�C�0�5��|�0��|_&<Q��s��:�!vP굑4�Ӑ�^{w�5�ޱ�r�l��O�c���'F����S/�	\�z�� �W�^i���7^�:�k��x�Lx�"�x�J�!v�e�O~:�|��{��^�V�AF������\O���DhP�P�M/5I�ڕ&���������V����Z�m�a�-���{˵�W@[z��\!#I�!O�b�$gĞ1�ߵ�$���5�,'�Bl���U�L�Q�ыU�#�ډ�x�L�4�[__7��!\&5Q�L9��b %*)�x�D%�W�`{��.r�*];nU�KE'��v܄��l��� �W؎+Nԝ��q���ڎ�%:�k��S���x�4!���y媖�����N3)9�lB����H�ݕ�'��{6���B��هSN��Y����@/=�x��p0c����ܐ����'�ɠ�'b�B�i�A*Z�i��6W�P��lq�aa��L�s��
L#*t �:�py��?�U|�/=_�i�����0��A�e�d(�L�&O#�iXU�1;��]�{�����F��*�4q;�-�4�J���g��t�*u��/=_�i4�i.���Pql��6�&R��4⩆W���Q>�N�X��gKS͘�Q��_�ιgKS�a�
T7t���T#-Yŧ�ۻ�|��8��2��L
IXĩ	m�2MܫQ'�F�?F�\��ƺA�W���!�Ttp�����]*:H�5B�,lA�f�<
^�Z!r��&:��,
��!� ; �:1�,|��+��M�A�:��E҇�j����>l�ľ�U�8r�j��z&��׽�G.UO�g�|U�^��l.��}�j`���]L�a~�(���z!��%@�矆���n��|�R�W���s�?��º�q;�-S4a��
$7t���1Eމ��yq����S����e2�礖X:MC��@�12rA�4�FoC�퇶�>����|�aT���O4^Y3*k�2���h�d��"�0�j�N|Α��j�h���P���%U�+�(��6@S���Xϭs�����ɋ�.¬�/�c����tn�8b��VΘ��]������(~�v:�ͅr������y$���Ę���?��>�6Vw��<�ٓ�̇�U��c��1󩝍�;=�tI���x���ן��9m>�:�fØ"�M|vS�/}z�߲8w�Y�~p��RB�1�O����������n���uT8�5�?�a������O�ρ��M.'������U����aM�Yf������ǝ�j�kp��H���w fSz��^�" ~vg.b��Eot��%���50�ms	st-�x�<G%�|����u��������0Քȹ���	u�)_�3f�]Ų��^X6���w}���y�D�r�^�v���m˹��n�A����vgm������n���K����#�������f|k3����\��[O�~��QC�˖��Ã5i	K�Y���8�6�8%Rz��������J}[ �<��ǷOs�����wJ�a���r!u4m�%�:�w�K䗇���iz�O��'�(����ED|��|cg�pῥ_^������]����*���>b#�;��uEg�!�������I|Le���y�ӛ�vrt�U�8�����W�|�k�ڲ�N�v?��F:����9?��QƭS*�R���#~_@����
>(��?�^z�"LV��lPns�b8@I8Я8#f�-�'Ꙛ���EQ�5��<��\����GL�������SS�      %   �  x���k�޸F�]LaK�m	�C�A:M3�f�A���{�;��� �1M��(ޤ��.�û��-?���/e~�Sa���\����Vox����/��#�5/���b-�@@�F �k�㍧�TGa���lE����\��)k|>�_��gXgl�ϛ��S�u/����Jk�����Da�'/������܊�x~^JlH��0������y5$ړ���Sq<��x*���x�2b��?����Fp�����)����N��~n�����0֧���,�,O��/��[Za��	\za����`w����ka���
c��wͷ�px����u.������%�>O�/�ў:G����3Lo*��y/��g���:՗ئ���ٷ�0��[-��i�[+�:����/�1�-�����F�__�^!��0�\е��
c}�����/w�)���{_�~�f7�V����x�P7�Q���uL��<��1F,���0b�@����:za�Kaĉ�c/�X��0�y2^N����@�.��9��@�T�N �L����@���O P("(�n!t"�N��p��"�Bd�
��vœ�Z&@��\��@d�a�0�W��O��@�#2�4�����`&o�� ��g�|�mB>��hy�f���bS��pBD6��c�g�C"ׁ�l
��BdT.�&�k!�ʄ��Q��6FB�!3	�r����(Q��m�B a�B.S�����(�{bBQ�e~28��A�]�w!l*r!��ZdB�ה�P�T0o2�%&�Kn�T�l:��!�M�Bd9Dd��B��y��< ��f"�ʄoB�P�$*�_0�g'�����e�Ҿ;
��e2���2B���g�e�<�L�lX&!2�N�f&W���!��m�����]�ʚlK�@Q�,�v�v�l �u����iH�c���TZ "�^�$BB�dh&����C�]޷T�k�����ٔ�uO�6�#M*#!v�I���R�S��g#A�B�28z$IBءTh�X�*�N�6�u��$WB�Z�i��ݺ}ʵD���bU{�YthCFM���/?WR��r�Y�!�4p-b�t� �T| ��95��VϤ����RG2/��_eÍC[8�C�a���KY^�g��e�(9PQhc86�f����~Q� "ꉲ�SS�U��4����e$�v�̾���J%DF�v����;��a�'T[6T��ݔG���ׄ8��F��j6�ZچT���ԆT6^�����R��F��(�J{R)2����2��X	�|��s!�T�"�RGFsQ���N��6�ݨ�� �Мw �(���rB�q\��8]!	!�(���("�.���D'aȆ��5C���]�(;���ѵІ���a�6.��\���a���ya�:���Uk�2k�QC�X1E6І]��Z��=7��]�em�(�*��&��հ��EV)Dz���͘yL�6��6���ђQ�d��6�õlG��B.�g@DE�y� .��
aP�F��I�~\]�����\48d->������L�F��}�C�l��Kj^�:!P���|����������v6�S�4��欺��K9��,`�
�}<9�u5_�;k�q�Dɛ�M�Yf�t�`��`-w���&i]���ܭk��?z���ן~���O���ᗏ������~�ׇ/������IF�f��gd����ݷ7
+7�����Bֿ��?���۟�}�P=��i�px ���@����� �X�����16<�N?塵�]�����uz��������?dj�c���JL�cjm8��������֞���^��C�� ���������lc)��y݂�=���&��sw���q^�<X�G�g�?�3�=Y���]�WB`C!v��m�Y�(�,y�� kY9b��z����j��@�DE�z�M��J�g!J��ͬ�&ƴ�=����2��:D��=���U�5l;o�k���z%}�躓�V�'�c����y��`�D�G���ӱG�[�⍲I��,?�r���z��Nc���7�H���qd��`���2�����#��c3���m��B�0,������q���M5�a�x\���CΨ\�bB�,�:����ۣ藝ާ��X.�rѠ�ڲKѺ�-Q�����@*4�\���~_S&�k��pK֥�~�|b�Z}���e9�B��W?+��WX8���Y�|�a�ޓ	Q.K���kN�Ux��daKR�$w-
] [hP���Իk�d*ݡW%��
.w�f�C`�l�"Tk��(��r�Y�5����sx!l2ߴp!��mq2����tkګO��tpf��a�=�(1�>8�Z�i�c#ʧ^=�O��Β(��=ښRx=�l��o��\F[{���!�G(o\�D��Mz�a�k9�Ae�f�=S�|u$"��^3*8d�88��FXs-������_df�y�"�ee|���z#<�tP�9v��D��l�\�8_&�Z�d|D���G�C�E�u̓̈́^���	}�է�H���9A�Z^tb�{�n��S�?({w[R��b�sO�Tv�`>�Ea�\J6,��D���}PMk�@kiɆ��,�z�%ʲl�	�Jc����w����3?�n��&2�I�$3��ԒT�ȕ:>�hk��:���i�zoh����B��'n�D\�`��0��_FB*Q>���@��G�%�˘�|�2��3`޲��|K�˖JŖ [P�w�قyO2r�eP��S�\��\u�k��Ğ�@a��'p�>{�-�`���с����X�%Ke`K����ߓQ�l6�	K'�T���|c4��u^�� a֢���Bd���L'��hvI_(
�F�@���� [n�~�;�=K����H�I��J�%ʧ�=]�6?�?�"�ܧ���bU�A����ѭ��kb���V,dC�
�������z����b�         ^	  x��[m��8���K����Ğ`�Љ;MM���=��,dI��TmM�D�����$Xu8��h��x���bz{}���X��q���px�_��Ռ��q8��?������7v�_M?�WF[��}'z_�+N�H���Gݜ���.�(e�K۠R�Kn�`J��u����o��wo���ˀ� ���# 3���Z�h� Ĭ��h��7�x�A�n� �ܻ��H* >����t���7�wi�>�˽l�{N�1�yh[|�'��i�ύ�a���p������p@��!��L_ȁ8�l�+��g�ٍ�%�+��f��qk�Ǻ��[�9@�Yn)���l��M�H_�fEq��H�@���6���mO�$����t�D��x�)�7M;�Θ"
��-��a��8A��ɐP<H.nz�ȅ=H����|8}��/�����k�^_��M�n�������v1��86��� ��9'
f7�����^_��e�{1co��sS�0���Nd*�N;�K����/�.��O�����Q̹ٙ$?�����X8�}�f��z?���.~��f.�h�m����䦗�3�;�=bW��lw��w)D!o#M3����p�����[�nla+��l��
�/�l/���^�����q��9{��������0o�..�� ��������������w0��/�y4Z�B�?;��P��9�C{����j�b���^/��`e4[/?ͫ>_��?�v3>���K�O׶:/N�çT8�47fb��Q�u��4KS��.��,����\���}wk��sǢ�:4m��?c����>b�2��l��o���"�h���P��[]0;���axMu?g\<�}��d\��-|���;#[Q־�UV9����`}��� g��]�~�v�p��rb������ͭ��-
�m�A$G�S����1mGUf�)�")���|����&�#ɔ��*�3��.VK�LX���ŪS&b�X1�l�՛��q�w��"�������gmO�A��3~�9䳵�d�^�~:!o��͙������K9�7~��O@��x����ne��1#%�1lW}ۛ��3��C�<���3�˼�S#�I�ӧues�����hY�'�>: �Y�Nz�pr�jo5��VJbh��^�~�5G��I PRG�j�0x���G%��ϳ���jN��u�T*�!~���U��Q�6H���[��Я�1�S�S�h�~���N�fqz��r�>�v�g�O�U?n�r�N^{��Ҙ�R:j�R��U��Σ�)�KQ�D�$���2���:���<�l>8��Q"z՗��H.�;L��jR8��I�x�����K��٬��cW�o�)�S�Ȩ��=m��H2�Ό�M9g�ik�V{uL�M�A����Oh�SA�<�1z&��#,��.灎L�8b���Ӓm�]�	�7�%��NX��]��bS�Ö2�PBM&ӘOHN���`���L-�6[
Nk�����o��E'E,ӛ�]�	�k~�%�$H�L �JT�>��/EU$�f�TkyΓ�p坳8�EjWAt���N)0fq�#: <����f�4�T@[L:��$gޥ�%�,�k���<'0�-CI�]���q��=CD-霐)�xÉ��ƌ#��k�U�
���eS�'����D��P�L,�t���E9ý�������ʢ�	x"�w�%߆�Z�|�g�R�<C�D��a���]�ёQ�!����#��+����ǀ8H8�h�6@Jd��H ���_�ق�{��C�M N8$��"�b�Ţ�x\���@�\"��p��!�A��W� ��w"���ܓ�Nţ�� �x�
@p�����܀꣤f]�݉�+���~�s�@��=��r��\�\�ͬ8��/��܉�����t��Gt,>�bzs�T�o<\�lr�.�J&��*��<j"*��"t�A�������H������*�ȳIެ������օp>���D`�l��l�,��r --�y^��
`W8���zV��VO*ח(@hE<��;S��5��������/}�l#)�tL~�Dd���an
*�:�PK	����>^����,����f3uS�ApT=�d��T�i���Gf�Ȥ��rX�AAY�C�#(T֑�stx����k�Y^��{X�/��@�ڨb��x�F������k��GsvQ���k�4��'X�d����g
�,�Tи�rE|R�Jqb��-���^��1�w�@��>�vG賠w���;��"X2�.s|��H2ez�Q)$�$S&�V4�hĘ�b��qț<�~U\�Q�IY;f�'��&d<^�Mh��|��U�K���.9q��������?�,�         W   x�3�(M��L�tIMK,�)Q(��IUH�,K�S(�W(�K,-�H�+�LN,IMQ(-N-��,�h��".CNGd%8�f�Դ=... ag3O      !   M  x�}�]o�0�k�^x�X�E�1�t��f�)��Q���6�l��9=y{�@?y�����r��h�.XF�ޖ����U���i�Ƹw�&�"S�����\�֖��������͖-� �I+aǱ�)�w�rXUZ5t]0ĸ	�&��H�%I�[@��'�#��aJ�@��jʅ*p�ݗ���e]��xnK�id�:,�?]�}gZؤ�n�ԡ�;��M�^b�F�,����uI��]�Ց�˥���-B(��I�U��]�o�}���&�����v��7�V4rqq�׌#�b��n���i�B���~��F�a`�B��t	j���Փb      U   P   x�m��� @�3Lὑ *Ct�����6M����s��Z�UE<E����/���C|~�"�n�F���_4d����o�      W   @   x�5��� Cѳ=J�%d��?�*��%n7��%�d��$�_֍�������N���o#��n     