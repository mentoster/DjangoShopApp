--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _address_country; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._address_country (
    iso_3166_1_a2 character varying(2) DEFAULT NULL::character varying,
    iso_3166_1_a3 character varying(3) DEFAULT NULL::character varying,
    iso_3166_1_numeric smallint,
    name character varying(52) DEFAULT NULL::character varying,
    display_order smallint,
    is_shipping_country smallint,
    printable_name character varying(44) DEFAULT NULL::character varying
);


ALTER TABLE public._address_country OWNER TO rebasedata;

--
-- Name: _address_useraddress; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._address_useraddress (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    line1 character varying(1) DEFAULT NULL::character varying,
    line2 character varying(1) DEFAULT NULL::character varying,
    line3 character varying(1) DEFAULT NULL::character varying,
    line4 character varying(1) DEFAULT NULL::character varying,
    state character varying(1) DEFAULT NULL::character varying,
    postcode character varying(1) DEFAULT NULL::character varying,
    search_text character varying(1) DEFAULT NULL::character varying,
    phone_number character varying(1) DEFAULT NULL::character varying,
    notes character varying(1) DEFAULT NULL::character varying,
    is_default_for_shipping character varying(1) DEFAULT NULL::character varying,
    is_default_for_billing character varying(1) DEFAULT NULL::character varying,
    hash character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    num_orders_as_billing_address character varying(1) DEFAULT NULL::character varying,
    num_orders_as_shipping_address character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._address_useraddress OWNER TO rebasedata;

--
-- Name: _analytics_productrecord; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._analytics_productrecord (
    id character varying(1) DEFAULT NULL::character varying,
    num_views character varying(1) DEFAULT NULL::character varying,
    num_basket_additions character varying(1) DEFAULT NULL::character varying,
    num_purchases character varying(1) DEFAULT NULL::character varying,
    score character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._analytics_productrecord OWNER TO rebasedata;

--
-- Name: _analytics_userproductview; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._analytics_userproductview (
    id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._analytics_userproductview OWNER TO rebasedata;

--
-- Name: _analytics_userrecord; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._analytics_userrecord (
    id character varying(1) DEFAULT NULL::character varying,
    num_product_views character varying(1) DEFAULT NULL::character varying,
    num_basket_additions character varying(1) DEFAULT NULL::character varying,
    num_orders character varying(1) DEFAULT NULL::character varying,
    num_order_lines character varying(1) DEFAULT NULL::character varying,
    num_order_items character varying(1) DEFAULT NULL::character varying,
    total_spent character varying(1) DEFAULT NULL::character varying,
    date_last_order character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._analytics_userrecord OWNER TO rebasedata;

--
-- Name: _analytics_usersearch; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._analytics_usersearch (
    id character varying(1) DEFAULT NULL::character varying,
    query character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._analytics_usersearch OWNER TO rebasedata;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(40) DEFAULT NULL::character varying,
    name character varying(47) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    last_login character varying(1) DEFAULT NULL::character varying,
    is_superuser character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    is_staff character varying(1) DEFAULT NULL::character varying,
    is_active character varying(1) DEFAULT NULL::character varying,
    date_joined character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _basket_basket; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._basket_basket (
    id character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    date_merged character varying(1) DEFAULT NULL::character varying,
    date_submitted character varying(1) DEFAULT NULL::character varying,
    owner_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._basket_basket OWNER TO rebasedata;

--
-- Name: _basket_basket_vouchers; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._basket_basket_vouchers (
    id character varying(1) DEFAULT NULL::character varying,
    basket_id character varying(1) DEFAULT NULL::character varying,
    voucher_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._basket_basket_vouchers OWNER TO rebasedata;

--
-- Name: _basket_line; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._basket_line (
    id character varying(1) DEFAULT NULL::character varying,
    line_reference character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    price_currency character varying(1) DEFAULT NULL::character varying,
    price_excl_tax character varying(1) DEFAULT NULL::character varying,
    price_incl_tax character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    basket_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    stockrecord_id character varying(1) DEFAULT NULL::character varying,
    date_updated character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._basket_line OWNER TO rebasedata;

--
-- Name: _basket_lineattribute; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._basket_lineattribute (
    id character varying(1) DEFAULT NULL::character varying,
    value character varying(1) DEFAULT NULL::character varying,
    line_id character varying(1) DEFAULT NULL::character varying,
    option_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._basket_lineattribute OWNER TO rebasedata;

--
-- Name: _catalogue_attributeoption; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_attributeoption (
    id character varying(1) DEFAULT NULL::character varying,
    option character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_attributeoption OWNER TO rebasedata;

--
-- Name: _catalogue_attributeoptiongroup; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_attributeoptiongroup (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_attributeoptiongroup OWNER TO rebasedata;

--
-- Name: _catalogue_category; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_category (
    id character varying(1) DEFAULT NULL::character varying,
    path character varying(1) DEFAULT NULL::character varying,
    depth character varying(1) DEFAULT NULL::character varying,
    numchild character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    image character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    ancestors_are_public character varying(1) DEFAULT NULL::character varying,
    is_public character varying(1) DEFAULT NULL::character varying,
    meta_description character varying(1) DEFAULT NULL::character varying,
    meta_title character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_category OWNER TO rebasedata;

--
-- Name: _catalogue_option; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_option (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    required character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_option OWNER TO rebasedata;

--
-- Name: _catalogue_product; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_product (
    id character varying(1) DEFAULT NULL::character varying,
    structure character varying(1) DEFAULT NULL::character varying,
    upc character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    rating character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    date_updated character varying(1) DEFAULT NULL::character varying,
    is_discountable character varying(1) DEFAULT NULL::character varying,
    product_class_id character varying(1) DEFAULT NULL::character varying,
    is_public character varying(1) DEFAULT NULL::character varying,
    meta_description character varying(1) DEFAULT NULL::character varying,
    meta_title character varying(1) DEFAULT NULL::character varying,
    parent_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_product OWNER TO rebasedata;

--
-- Name: _catalogue_product_product_options; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_product_product_options (
    id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    option_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_product_product_options OWNER TO rebasedata;

--
-- Name: _catalogue_productattribute; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productattribute (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    required character varying(1) DEFAULT NULL::character varying,
    product_class_id character varying(1) DEFAULT NULL::character varying,
    option_group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productattribute OWNER TO rebasedata;

--
-- Name: _catalogue_productattributevalue; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productattributevalue (
    id character varying(1) DEFAULT NULL::character varying,
    value_text character varying(1) DEFAULT NULL::character varying,
    value_integer character varying(1) DEFAULT NULL::character varying,
    value_boolean character varying(1) DEFAULT NULL::character varying,
    value_float character varying(1) DEFAULT NULL::character varying,
    value_richtext character varying(1) DEFAULT NULL::character varying,
    value_date character varying(1) DEFAULT NULL::character varying,
    value_file character varying(1) DEFAULT NULL::character varying,
    entity_object_id character varying(1) DEFAULT NULL::character varying,
    attribute_id character varying(1) DEFAULT NULL::character varying,
    entity_content_type_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    value_option_id character varying(1) DEFAULT NULL::character varying,
    value_datetime character varying(1) DEFAULT NULL::character varying,
    value_image character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productattributevalue OWNER TO rebasedata;

--
-- Name: _catalogue_productattributevalue_value_multi_option; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productattributevalue_value_multi_option (
    id character varying(1) DEFAULT NULL::character varying,
    productattributevalue_id character varying(1) DEFAULT NULL::character varying,
    attributeoption_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productattributevalue_value_multi_option OWNER TO rebasedata;

--
-- Name: _catalogue_productcategory; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productcategory (
    id character varying(1) DEFAULT NULL::character varying,
    category_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productcategory OWNER TO rebasedata;

--
-- Name: _catalogue_productclass; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productclass (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    requires_shipping character varying(1) DEFAULT NULL::character varying,
    track_stock character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productclass OWNER TO rebasedata;

--
-- Name: _catalogue_productclass_options; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productclass_options (
    id character varying(1) DEFAULT NULL::character varying,
    productclass_id character varying(1) DEFAULT NULL::character varying,
    option_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productclass_options OWNER TO rebasedata;

--
-- Name: _catalogue_productimage; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productimage (
    id character varying(1) DEFAULT NULL::character varying,
    caption character varying(1) DEFAULT NULL::character varying,
    display_order character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    original character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productimage OWNER TO rebasedata;

--
-- Name: _catalogue_productrecommendation; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._catalogue_productrecommendation (
    id character varying(1) DEFAULT NULL::character varying,
    primary_id character varying(1) DEFAULT NULL::character varying,
    recommendation_id character varying(1) DEFAULT NULL::character varying,
    ranking character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._catalogue_productrecommendation OWNER TO rebasedata;

--
-- Name: _communication_communicationeventtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._communication_communicationeventtype (
    id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    category character varying(1) DEFAULT NULL::character varying,
    email_subject_template character varying(1) DEFAULT NULL::character varying,
    email_body_template character varying(1) DEFAULT NULL::character varying,
    email_body_html_template character varying(1) DEFAULT NULL::character varying,
    sms_template character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    date_updated character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._communication_communicationeventtype OWNER TO rebasedata;

--
-- Name: _communication_email; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._communication_email (
    id character varying(1) DEFAULT NULL::character varying,
    subject character varying(1) DEFAULT NULL::character varying,
    body_text character varying(1) DEFAULT NULL::character varying,
    body_html character varying(1) DEFAULT NULL::character varying,
    date_sent character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._communication_email OWNER TO rebasedata;

--
-- Name: _communication_notification; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._communication_notification (
    id character varying(1) DEFAULT NULL::character varying,
    subject character varying(1) DEFAULT NULL::character varying,
    body character varying(1) DEFAULT NULL::character varying,
    location character varying(1) DEFAULT NULL::character varying,
    date_sent character varying(1) DEFAULT NULL::character varying,
    date_read character varying(1) DEFAULT NULL::character varying,
    recipient_id character varying(1) DEFAULT NULL::character varying,
    sender_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._communication_notification OWNER TO rebasedata;

--
-- Name: _customer_productalert; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._customer_productalert (
    id character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    key character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    date_confirmed character varying(1) DEFAULT NULL::character varying,
    date_cancelled character varying(1) DEFAULT NULL::character varying,
    date_closed character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._customer_productalert OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id character varying(1) DEFAULT NULL::character varying,
    action_time character varying(1) DEFAULT NULL::character varying,
    object_id character varying(1) DEFAULT NULL::character varying,
    object_repr character varying(1) DEFAULT NULL::character varying,
    change_message character varying(1) DEFAULT NULL::character varying,
    content_type_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    action_flag character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(13) DEFAULT NULL::character varying,
    model character varying(33) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_flatpage; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_flatpage (
    id character varying(1) DEFAULT NULL::character varying,
    url character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    content character varying(1) DEFAULT NULL::character varying,
    enable_comments character varying(1) DEFAULT NULL::character varying,
    template_name character varying(1) DEFAULT NULL::character varying,
    registration_required character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_flatpage OWNER TO rebasedata;

--
-- Name: _django_flatpage_sites; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_flatpage_sites (
    id character varying(1) DEFAULT NULL::character varying,
    flatpage_id character varying(1) DEFAULT NULL::character varying,
    site_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_flatpage_sites OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(13) DEFAULT NULL::character varying,
    name character varying(53) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(1) DEFAULT NULL::character varying,
    session_data character varying(1) DEFAULT NULL::character varying,
    expire_date character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _django_site; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_site (
    id smallint,
    name character varying(11) DEFAULT NULL::character varying,
    domain character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._django_site OWNER TO rebasedata;

--
-- Name: _offer_benefit; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_benefit (
    id character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    value character varying(1) DEFAULT NULL::character varying,
    max_affected_items character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    proxy_class character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_benefit OWNER TO rebasedata;

--
-- Name: _offer_condition; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_condition (
    id character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    value character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    proxy_class character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_condition OWNER TO rebasedata;

--
-- Name: _offer_conditionaloffer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_conditionaloffer (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    offer_type character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    start_datetime character varying(1) DEFAULT NULL::character varying,
    end_datetime character varying(1) DEFAULT NULL::character varying,
    max_global_applications character varying(1) DEFAULT NULL::character varying,
    max_user_applications character varying(1) DEFAULT NULL::character varying,
    max_basket_applications character varying(1) DEFAULT NULL::character varying,
    max_discount character varying(1) DEFAULT NULL::character varying,
    total_discount character varying(1) DEFAULT NULL::character varying,
    num_applications character varying(1) DEFAULT NULL::character varying,
    num_orders character varying(1) DEFAULT NULL::character varying,
    redirect_url character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    benefit_id character varying(1) DEFAULT NULL::character varying,
    condition_id character varying(1) DEFAULT NULL::character varying,
    exclusive character varying(1) DEFAULT NULL::character varying,
    priority character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_conditionaloffer OWNER TO rebasedata;

--
-- Name: _offer_conditionaloffer_combinations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_conditionaloffer_combinations (
    id character varying(1) DEFAULT NULL::character varying,
    from_conditionaloffer_id character varying(1) DEFAULT NULL::character varying,
    to_conditionaloffer_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_conditionaloffer_combinations OWNER TO rebasedata;

--
-- Name: _offer_range; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_range (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    is_public character varying(1) DEFAULT NULL::character varying,
    includes_all_products character varying(1) DEFAULT NULL::character varying,
    proxy_class character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_range OWNER TO rebasedata;

--
-- Name: _offer_range_classes; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_range_classes (
    id character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    productclass_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_range_classes OWNER TO rebasedata;

--
-- Name: _offer_range_excluded_products; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_range_excluded_products (
    id character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_range_excluded_products OWNER TO rebasedata;

--
-- Name: _offer_range_included_categories; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_range_included_categories (
    id character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    category_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_range_included_categories OWNER TO rebasedata;

--
-- Name: _offer_rangeproduct; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_rangeproduct (
    id character varying(1) DEFAULT NULL::character varying,
    display_order character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_rangeproduct OWNER TO rebasedata;

--
-- Name: _offer_rangeproductfileupload; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_rangeproductfileupload (
    id character varying(1) DEFAULT NULL::character varying,
    filepath character varying(1) DEFAULT NULL::character varying,
    size character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    error_message character varying(1) DEFAULT NULL::character varying,
    date_processed character varying(1) DEFAULT NULL::character varying,
    num_new_skus character varying(1) DEFAULT NULL::character varying,
    num_unknown_skus character varying(1) DEFAULT NULL::character varying,
    num_duplicate_skus character varying(1) DEFAULT NULL::character varying,
    range_id character varying(1) DEFAULT NULL::character varying,
    uploaded_by_id character varying(1) DEFAULT NULL::character varying,
    date_uploaded character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_rangeproductfileupload OWNER TO rebasedata;

--
-- Name: _order_billingaddress; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_billingaddress (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    line1 character varying(1) DEFAULT NULL::character varying,
    line2 character varying(1) DEFAULT NULL::character varying,
    line3 character varying(1) DEFAULT NULL::character varying,
    line4 character varying(1) DEFAULT NULL::character varying,
    state character varying(1) DEFAULT NULL::character varying,
    postcode character varying(1) DEFAULT NULL::character varying,
    search_text character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_billingaddress OWNER TO rebasedata;

--
-- Name: _order_communicationevent; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_communicationevent (
    id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    event_type_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_communicationevent OWNER TO rebasedata;

--
-- Name: _order_line; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_line (
    id character varying(1) DEFAULT NULL::character varying,
    partner_name character varying(1) DEFAULT NULL::character varying,
    partner_sku character varying(1) DEFAULT NULL::character varying,
    partner_line_reference character varying(1) DEFAULT NULL::character varying,
    partner_line_notes character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    upc character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    line_price_incl_tax character varying(1) DEFAULT NULL::character varying,
    line_price_excl_tax character varying(1) DEFAULT NULL::character varying,
    line_price_before_discounts_incl_tax character varying(1) DEFAULT NULL::character varying,
    line_price_before_discounts_excl_tax character varying(1) DEFAULT NULL::character varying,
    unit_price_incl_tax character varying(1) DEFAULT NULL::character varying,
    unit_price_excl_tax character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    partner_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    stockrecord_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_line OWNER TO rebasedata;

--
-- Name: _order_lineattribute; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_lineattribute (
    id character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    value character varying(1) DEFAULT NULL::character varying,
    line_id character varying(1) DEFAULT NULL::character varying,
    option_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_lineattribute OWNER TO rebasedata;

--
-- Name: _order_lineprice; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_lineprice (
    id character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    price_incl_tax character varying(1) DEFAULT NULL::character varying,
    price_excl_tax character varying(1) DEFAULT NULL::character varying,
    shipping_incl_tax character varying(1) DEFAULT NULL::character varying,
    shipping_excl_tax character varying(1) DEFAULT NULL::character varying,
    line_id character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_lineprice OWNER TO rebasedata;

--
-- Name: _order_order; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_order (
    id character varying(1) DEFAULT NULL::character varying,
    number character varying(1) DEFAULT NULL::character varying,
    currency character varying(1) DEFAULT NULL::character varying,
    total_incl_tax character varying(1) DEFAULT NULL::character varying,
    total_excl_tax character varying(1) DEFAULT NULL::character varying,
    shipping_incl_tax character varying(1) DEFAULT NULL::character varying,
    shipping_excl_tax character varying(1) DEFAULT NULL::character varying,
    shipping_method character varying(1) DEFAULT NULL::character varying,
    shipping_code character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    date_placed character varying(1) DEFAULT NULL::character varying,
    basket_id character varying(1) DEFAULT NULL::character varying,
    billing_address_id character varying(1) DEFAULT NULL::character varying,
    shipping_address_id character varying(1) DEFAULT NULL::character varying,
    site_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    guest_email character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_order OWNER TO rebasedata;

--
-- Name: _order_orderdiscount; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_orderdiscount (
    id character varying(1) DEFAULT NULL::character varying,
    category character varying(1) DEFAULT NULL::character varying,
    offer_id character varying(1) DEFAULT NULL::character varying,
    offer_name character varying(1) DEFAULT NULL::character varying,
    voucher_id character varying(1) DEFAULT NULL::character varying,
    voucher_code character varying(1) DEFAULT NULL::character varying,
    frequency character varying(1) DEFAULT NULL::character varying,
    amount character varying(1) DEFAULT NULL::character varying,
    message character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_orderdiscount OWNER TO rebasedata;

--
-- Name: _order_ordernote; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_ordernote (
    id character varying(1) DEFAULT NULL::character varying,
    note_type character varying(1) DEFAULT NULL::character varying,
    message character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    date_updated character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_ordernote OWNER TO rebasedata;

--
-- Name: _order_orderstatuschange; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_orderstatuschange (
    id character varying(1) DEFAULT NULL::character varying,
    old_status character varying(1) DEFAULT NULL::character varying,
    new_status character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_orderstatuschange OWNER TO rebasedata;

--
-- Name: _order_paymentevent; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_paymentevent (
    id character varying(1) DEFAULT NULL::character varying,
    amount character varying(1) DEFAULT NULL::character varying,
    reference character varying(1) DEFAULT NULL::character varying,
    event_type_id character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    shipping_event_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_paymentevent OWNER TO rebasedata;

--
-- Name: _order_paymenteventquantity; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_paymenteventquantity (
    id character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    event_id character varying(1) DEFAULT NULL::character varying,
    line_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_paymenteventquantity OWNER TO rebasedata;

--
-- Name: _order_paymenteventtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_paymenteventtype (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_paymenteventtype OWNER TO rebasedata;

--
-- Name: _order_shippingaddress; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_shippingaddress (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    line1 character varying(1) DEFAULT NULL::character varying,
    line2 character varying(1) DEFAULT NULL::character varying,
    line3 character varying(1) DEFAULT NULL::character varying,
    line4 character varying(1) DEFAULT NULL::character varying,
    state character varying(1) DEFAULT NULL::character varying,
    postcode character varying(1) DEFAULT NULL::character varying,
    search_text character varying(1) DEFAULT NULL::character varying,
    phone_number character varying(1) DEFAULT NULL::character varying,
    notes character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_shippingaddress OWNER TO rebasedata;

--
-- Name: _order_shippingevent; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_shippingevent (
    id character varying(1) DEFAULT NULL::character varying,
    notes character varying(1) DEFAULT NULL::character varying,
    event_type_id character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_shippingevent OWNER TO rebasedata;

--
-- Name: _order_shippingeventquantity; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_shippingeventquantity (
    id character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    event_id character varying(1) DEFAULT NULL::character varying,
    line_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_shippingeventquantity OWNER TO rebasedata;

--
-- Name: _order_shippingeventtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_shippingeventtype (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_shippingeventtype OWNER TO rebasedata;

--
-- Name: _order_surcharge; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_surcharge (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    incl_tax character varying(1) DEFAULT NULL::character varying,
    excl_tax character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._order_surcharge OWNER TO rebasedata;

--
-- Name: _partner_partner; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._partner_partner (
    id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._partner_partner OWNER TO rebasedata;

--
-- Name: _partner_partner_users; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._partner_partner_users (
    id character varying(1) DEFAULT NULL::character varying,
    partner_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._partner_partner_users OWNER TO rebasedata;

--
-- Name: _partner_partneraddress; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._partner_partneraddress (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    line1 character varying(1) DEFAULT NULL::character varying,
    line2 character varying(1) DEFAULT NULL::character varying,
    line3 character varying(1) DEFAULT NULL::character varying,
    line4 character varying(1) DEFAULT NULL::character varying,
    state character varying(1) DEFAULT NULL::character varying,
    postcode character varying(1) DEFAULT NULL::character varying,
    search_text character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying,
    partner_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._partner_partneraddress OWNER TO rebasedata;

--
-- Name: _partner_stockalert; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._partner_stockalert (
    id character varying(1) DEFAULT NULL::character varying,
    threshold character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    date_closed character varying(1) DEFAULT NULL::character varying,
    stockrecord_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._partner_stockalert OWNER TO rebasedata;

--
-- Name: _partner_stockrecord; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._partner_stockrecord (
    id character varying(1) DEFAULT NULL::character varying,
    partner_sku character varying(1) DEFAULT NULL::character varying,
    price_currency character varying(1) DEFAULT NULL::character varying,
    num_in_stock character varying(1) DEFAULT NULL::character varying,
    num_allocated character varying(1) DEFAULT NULL::character varying,
    low_stock_threshold character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    date_updated character varying(1) DEFAULT NULL::character varying,
    partner_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    price character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._partner_stockrecord OWNER TO rebasedata;

--
-- Name: _payment_bankcard; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._payment_bankcard (
    id character varying(1) DEFAULT NULL::character varying,
    card_type character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    number character varying(1) DEFAULT NULL::character varying,
    expiry_date character varying(1) DEFAULT NULL::character varying,
    partner_reference character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._payment_bankcard OWNER TO rebasedata;

--
-- Name: _payment_source; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._payment_source (
    id character varying(1) DEFAULT NULL::character varying,
    currency character varying(1) DEFAULT NULL::character varying,
    amount_allocated character varying(1) DEFAULT NULL::character varying,
    amount_debited character varying(1) DEFAULT NULL::character varying,
    amount_refunded character varying(1) DEFAULT NULL::character varying,
    label character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    source_type_id character varying(1) DEFAULT NULL::character varying,
    reference character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._payment_source OWNER TO rebasedata;

--
-- Name: _payment_sourcetype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._payment_sourcetype (
    id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._payment_sourcetype OWNER TO rebasedata;

--
-- Name: _payment_transaction; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._payment_transaction (
    id character varying(1) DEFAULT NULL::character varying,
    txn_type character varying(1) DEFAULT NULL::character varying,
    amount character varying(1) DEFAULT NULL::character varying,
    reference character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    source_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._payment_transaction OWNER TO rebasedata;

--
-- Name: _reviews_productreview; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._reviews_productreview (
    id character varying(1) DEFAULT NULL::character varying,
    score character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    body character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    homepage character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    total_votes character varying(1) DEFAULT NULL::character varying,
    delta_votes character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._reviews_productreview OWNER TO rebasedata;

--
-- Name: _reviews_vote; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._reviews_vote (
    id character varying(1) DEFAULT NULL::character varying,
    delta character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying,
    review_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._reviews_vote OWNER TO rebasedata;

--
-- Name: _shipping_orderanditemcharges; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shipping_orderanditemcharges (
    id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    price_per_order character varying(1) DEFAULT NULL::character varying,
    price_per_item character varying(1) DEFAULT NULL::character varying,
    free_shipping_threshold character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shipping_orderanditemcharges OWNER TO rebasedata;

--
-- Name: _shipping_orderanditemcharges_countries; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shipping_orderanditemcharges_countries (
    id character varying(1) DEFAULT NULL::character varying,
    orderanditemcharges_id character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shipping_orderanditemcharges_countries OWNER TO rebasedata;

--
-- Name: _shipping_weightband; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shipping_weightband (
    id character varying(1) DEFAULT NULL::character varying,
    charge character varying(1) DEFAULT NULL::character varying,
    method_id character varying(1) DEFAULT NULL::character varying,
    upper_limit character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shipping_weightband OWNER TO rebasedata;

--
-- Name: _shipping_weightbased; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shipping_weightbased (
    id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    default_weight character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shipping_weightbased OWNER TO rebasedata;

--
-- Name: _shipping_weightbased_countries; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shipping_weightbased_countries (
    id character varying(1) DEFAULT NULL::character varying,
    weightbased_id character varying(1) DEFAULT NULL::character varying,
    country_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shipping_weightbased_countries OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(38) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Name: _thumbnail_kvstore; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._thumbnail_kvstore (
    key character varying(1) DEFAULT NULL::character varying,
    value character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._thumbnail_kvstore OWNER TO rebasedata;

--
-- Name: _voucher_voucher; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._voucher_voucher (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    usage character varying(1) DEFAULT NULL::character varying,
    start_datetime character varying(1) DEFAULT NULL::character varying,
    end_datetime character varying(1) DEFAULT NULL::character varying,
    num_basket_additions character varying(1) DEFAULT NULL::character varying,
    num_orders character varying(1) DEFAULT NULL::character varying,
    total_discount character varying(1) DEFAULT NULL::character varying,
    voucher_set_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._voucher_voucher OWNER TO rebasedata;

--
-- Name: _voucher_voucher_offers; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._voucher_voucher_offers (
    id character varying(1) DEFAULT NULL::character varying,
    voucher_id character varying(1) DEFAULT NULL::character varying,
    conditionaloffer_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._voucher_voucher_offers OWNER TO rebasedata;

--
-- Name: _voucher_voucherapplication; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._voucher_voucherapplication (
    id character varying(1) DEFAULT NULL::character varying,
    order_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    voucher_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._voucher_voucherapplication OWNER TO rebasedata;

--
-- Name: _voucher_voucherset; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._voucher_voucherset (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    count character varying(1) DEFAULT NULL::character varying,
    code_length character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    start_datetime character varying(1) DEFAULT NULL::character varying,
    end_datetime character varying(1) DEFAULT NULL::character varying,
    offer_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._voucher_voucherset OWNER TO rebasedata;

--
-- Name: _wishlists_line; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._wishlists_line (
    id character varying(1) DEFAULT NULL::character varying,
    quantity character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    product_id character varying(1) DEFAULT NULL::character varying,
    wishlist_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._wishlists_line OWNER TO rebasedata;

--
-- Name: _wishlists_wishlist; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._wishlists_wishlist (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    key character varying(1) DEFAULT NULL::character varying,
    visibility character varying(1) DEFAULT NULL::character varying,
    owner_id character varying(1) DEFAULT NULL::character varying,
    date_created character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._wishlists_wishlist OWNER TO rebasedata;

--
-- Data for Name: _address_country; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._address_country (iso_3166_1_a2, iso_3166_1_a3, iso_3166_1_numeric, name, display_order, is_shipping_country, printable_name) FROM stdin;
AW	ABW	533		0	1	Aruba
AF	AFG	4	Islamic Republic of Afghanistan	0	1	Afghanistan
AO	AGO	24	Republic of Angola	0	1	Angola
AI	AIA	660		0	1	Anguilla
AX	ALA	248		0	1	Åland Islands
AL	ALB	8	Republic of Albania	0	1	Albania
AD	AND	20	Principality of Andorra	0	1	Andorra
AE	ARE	784		0	1	United Arab Emirates
AR	ARG	32	Argentine Republic	0	1	Argentina
AM	ARM	51	Republic of Armenia	0	1	Armenia
AS	ASM	16		0	1	American Samoa
AQ	ATA	10		0	1	Antarctica
TF	ATF	260		0	1	French Southern Territories
AG	ATG	28		0	1	Antigua and Barbuda
AU	AUS	36		0	1	Australia
AT	AUT	40	Republic of Austria	0	1	Austria
AZ	AZE	31	Republic of Azerbaijan	0	1	Azerbaijan
BI	BDI	108	Republic of Burundi	0	1	Burundi
BE	BEL	56	Kingdom of Belgium	0	1	Belgium
BJ	BEN	204	Republic of Benin	0	1	Benin
BQ	BES	535	Bonaire, Sint Eustatius and Saba	0	1	Bonaire, Sint Eustatius and Saba
BF	BFA	854		0	1	Burkina Faso
BD	BGD	50	People's Republic of Bangladesh	0	1	Bangladesh
BG	BGR	100	Republic of Bulgaria	0	1	Bulgaria
BH	BHR	48	Kingdom of Bahrain	0	1	Bahrain
BS	BHS	44	Commonwealth of the Bahamas	0	1	Bahamas
BA	BIH	70	Republic of Bosnia and Herzegovina	0	1	Bosnia and Herzegovina
BL	BLM	652		0	1	Saint Barthélemy
BY	BLR	112	Republic of Belarus	0	1	Belarus
BZ	BLZ	84		0	1	Belize
BM	BMU	60		0	1	Bermuda
BO	BOL	68	Plurinational State of Bolivia	0	1	Bolivia, Plurinational State of
BR	BRA	76	Federative Republic of Brazil	0	1	Brazil
BB	BRB	52		0	1	Barbados
BN	BRN	96		0	1	Brunei Darussalam
BT	BTN	64	Kingdom of Bhutan	0	1	Bhutan
BV	BVT	74		0	1	Bouvet Island
BW	BWA	72	Republic of Botswana	0	1	Botswana
CF	CAF	140		0	1	Central African Republic
CA	CAN	124		0	1	Canada
CC	CCK	166		0	1	Cocos (Keeling) Islands
CH	CHE	756	Swiss Confederation	0	1	Switzerland
CL	CHL	152	Republic of Chile	0	1	Chile
CN	CHN	156	People's Republic of China	0	1	China
CI	CIV	384	Republic of Côte d'Ivoire	0	1	Côte d'Ivoire
CM	CMR	120	Republic of Cameroon	0	1	Cameroon
CD	COD	180		0	1	Congo, The Democratic Republic of the
CG	COG	178	Republic of the Congo	0	1	Congo
CK	COK	184		0	1	Cook Islands
CO	COL	170	Republic of Colombia	0	1	Colombia
KM	COM	174	Union of the Comoros	0	1	Comoros
CV	CPV	132	Republic of Cabo Verde	0	1	Cabo Verde
CR	CRI	188	Republic of Costa Rica	0	1	Costa Rica
CU	CUB	192	Republic of Cuba	0	1	Cuba
CW	CUW	531	Curaçao	0	1	Curaçao
CX	CXR	162		0	1	Christmas Island
KY	CYM	136		0	1	Cayman Islands
CY	CYP	196	Republic of Cyprus	0	1	Cyprus
CZ	CZE	203	Czech Republic	0	1	Czechia
DE	DEU	276	Federal Republic of Germany	0	1	Germany
DJ	DJI	262	Republic of Djibouti	0	1	Djibouti
DM	DMA	212	Commonwealth of Dominica	0	1	Dominica
DK	DNK	208	Kingdom of Denmark	0	1	Denmark
DO	DOM	214		0	1	Dominican Republic
DZ	DZA	12	People's Democratic Republic of Algeria	0	1	Algeria
EC	ECU	218	Republic of Ecuador	0	1	Ecuador
EG	EGY	818	Arab Republic of Egypt	0	1	Egypt
ER	ERI	232	the State of Eritrea	0	1	Eritrea
EH	ESH	732		0	1	Western Sahara
ES	ESP	724	Kingdom of Spain	0	1	Spain
EE	EST	233	Republic of Estonia	0	1	Estonia
ET	ETH	231	Federal Democratic Republic of Ethiopia	0	1	Ethiopia
FI	FIN	246	Republic of Finland	0	1	Finland
FJ	FJI	242	Republic of Fiji	0	1	Fiji
FK	FLK	238		0	1	Falkland Islands (Malvinas)
FR	FRA	250	French Republic	0	1	France
FO	FRO	234		0	1	Faroe Islands
FM	FSM	583	Federated States of Micronesia	0	1	Micronesia, Federated States of
GA	GAB	266	Gabonese Republic	0	1	Gabon
GB	GBR	826	United Kingdom of Great Britain and Northern Ireland	0	1	United Kingdom
GE	GEO	268		0	1	Georgia
GG	GGY	831		0	1	Guernsey
GH	GHA	288	Republic of Ghana	0	1	Ghana
GI	GIB	292		0	1	Gibraltar
GN	GIN	324	Republic of Guinea	0	1	Guinea
GP	GLP	312		0	1	Guadeloupe
GM	GMB	270	Republic of the Gambia	0	1	Gambia
GW	GNB	624	Republic of Guinea-Bissau	0	1	Guinea-Bissau
GQ	GNQ	226	Republic of Equatorial Guinea	0	1	Equatorial Guinea
GR	GRC	300	Hellenic Republic	0	1	Greece
GD	GRD	308		0	1	Grenada
GL	GRL	304		0	1	Greenland
GT	GTM	320	Republic of Guatemala	0	1	Guatemala
GF	GUF	254		0	1	French Guiana
GU	GUM	316		0	1	Guam
GY	GUY	328	Republic of Guyana	0	1	Guyana
HK	HKG	344	Hong Kong Special Administrative Region of China	0	1	Hong Kong
HM	HMD	334		0	1	Heard Island and McDonald Islands
HN	HND	340	Republic of Honduras	0	1	Honduras
HR	HRV	191	Republic of Croatia	0	1	Croatia
HT	HTI	332	Republic of Haiti	0	1	Haiti
HU	HUN	348	Hungary	0	1	Hungary
ID	IDN	360	Republic of Indonesia	0	1	Indonesia
IM	IMN	833		0	1	Isle of Man
IN	IND	356	Republic of India	0	1	India
IO	IOT	86		0	1	British Indian Ocean Territory
IE	IRL	372		0	1	Ireland
IR	IRN	364	Islamic Republic of Iran	0	1	Iran, Islamic Republic of
IQ	IRQ	368	Republic of Iraq	0	1	Iraq
IS	ISL	352	Republic of Iceland	0	1	Iceland
IL	ISR	376	State of Israel	0	1	Israel
IT	ITA	380	Italian Republic	0	1	Italy
JM	JAM	388		0	1	Jamaica
JE	JEY	832		0	1	Jersey
JO	JOR	400	Hashemite Kingdom of Jordan	0	1	Jordan
JP	JPN	392		0	1	Japan
KZ	KAZ	398	Republic of Kazakhstan	0	1	Kazakhstan
KE	KEN	404	Republic of Kenya	0	1	Kenya
KG	KGZ	417	Kyrgyz Republic	0	1	Kyrgyzstan
KH	KHM	116	Kingdom of Cambodia	0	1	Cambodia
KI	KIR	296	Republic of Kiribati	0	1	Kiribati
KN	KNA	659		0	1	Saint Kitts and Nevis
KR	KOR	410		0	1	Korea, Republic of
KW	KWT	414	State of Kuwait	0	1	Kuwait
LA	LAO	418		0	1	Lao People's Democratic Republic
LB	LBN	422	Lebanese Republic	0	1	Lebanon
LR	LBR	430	Republic of Liberia	0	1	Liberia
LY	LBY	434	Libya	0	1	Libya
LC	LCA	662		0	1	Saint Lucia
LI	LIE	438	Principality of Liechtenstein	0	1	Liechtenstein
LK	LKA	144	Democratic Socialist Republic of Sri Lanka	0	1	Sri Lanka
LS	LSO	426	Kingdom of Lesotho	0	1	Lesotho
LT	LTU	440	Republic of Lithuania	0	1	Lithuania
LU	LUX	442	Grand Duchy of Luxembourg	0	1	Luxembourg
LV	LVA	428	Republic of Latvia	0	1	Latvia
MO	MAC	446	Macao Special Administrative Region of China	0	1	Macao
MF	MAF	663		0	1	Saint Martin (French part)
MA	MAR	504	Kingdom of Morocco	0	1	Morocco
MC	MCO	492	Principality of Monaco	0	1	Monaco
MD	MDA	498	Republic of Moldova	0	1	Moldova, Republic of
MG	MDG	450	Republic of Madagascar	0	1	Madagascar
MV	MDV	462	Republic of Maldives	0	1	Maldives
MX	MEX	484	United Mexican States	0	1	Mexico
MH	MHL	584	Republic of the Marshall Islands	0	1	Marshall Islands
MK	MKD	807	Republic of North Macedonia	0	1	North Macedonia
ML	MLI	466	Republic of Mali	0	1	Mali
MT	MLT	470	Republic of Malta	0	1	Malta
MM	MMR	104	Republic of Myanmar	0	1	Myanmar
ME	MNE	499	Montenegro	0	1	Montenegro
MN	MNG	496		0	1	Mongolia
MP	MNP	580	Commonwealth of the Northern Mariana Islands	0	1	Northern Mariana Islands
MZ	MOZ	508	Republic of Mozambique	0	1	Mozambique
MR	MRT	478	Islamic Republic of Mauritania	0	1	Mauritania
MS	MSR	500		0	1	Montserrat
MQ	MTQ	474		0	1	Martinique
MU	MUS	480	Republic of Mauritius	0	1	Mauritius
MW	MWI	454	Republic of Malawi	0	1	Malawi
MY	MYS	458		0	1	Malaysia
YT	MYT	175		0	1	Mayotte
NA	NAM	516	Republic of Namibia	0	1	Namibia
NC	NCL	540		0	1	New Caledonia
NE	NER	562	Republic of the Niger	0	1	Niger
NF	NFK	574		0	1	Norfolk Island
NG	NGA	566	Federal Republic of Nigeria	0	1	Nigeria
NI	NIC	558	Republic of Nicaragua	0	1	Nicaragua
NU	NIU	570	Niue	0	1	Niue
NL	NLD	528	Kingdom of the Netherlands	0	1	Netherlands
NO	NOR	578	Kingdom of Norway	0	1	Norway
NP	NPL	524	Federal Democratic Republic of Nepal	0	1	Nepal
NR	NRU	520	Republic of Nauru	0	1	Nauru
NZ	NZL	554		0	1	New Zealand
OM	OMN	512	Sultanate of Oman	0	1	Oman
PK	PAK	586	Islamic Republic of Pakistan	0	1	Pakistan
PA	PAN	591	Republic of Panama	0	1	Panama
PN	PCN	612		0	1	Pitcairn
PE	PER	604	Republic of Peru	0	1	Peru
PH	PHL	608	Republic of the Philippines	0	1	Philippines
PW	PLW	585	Republic of Palau	0	1	Palau
PG	PNG	598	Independent State of Papua New Guinea	0	1	Papua New Guinea
PL	POL	616	Republic of Poland	0	1	Poland
PR	PRI	630		0	1	Puerto Rico
KP	PRK	408	Democratic People's Republic of Korea	0	1	Korea, Democratic People's Republic of
PT	PRT	620	Portuguese Republic	0	1	Portugal
PY	PRY	600	Republic of Paraguay	0	1	Paraguay
PS	PSE	275	the State of Palestine	0	1	Palestine, State of
PF	PYF	258		0	1	French Polynesia
QA	QAT	634	State of Qatar	0	1	Qatar
RE	REU	638		0	1	Réunion
RO	ROU	642		0	1	Romania
RU	RUS	643		0	1	Russian Federation
RW	RWA	646	Rwandese Republic	0	1	Rwanda
SA	SAU	682	Kingdom of Saudi Arabia	0	1	Saudi Arabia
SD	SDN	729	Republic of the Sudan	0	1	Sudan
SN	SEN	686	Republic of Senegal	0	1	Senegal
SG	SGP	702	Republic of Singapore	0	1	Singapore
GS	SGS	239		0	1	South Georgia and the South Sandwich Islands
SH	SHN	654		0	1	Saint Helena, Ascension and Tristan da Cunha
SJ	SJM	744		0	1	Svalbard and Jan Mayen
SB	SLB	90		0	1	Solomon Islands
SL	SLE	694	Republic of Sierra Leone	0	1	Sierra Leone
SV	SLV	222	Republic of El Salvador	0	1	El Salvador
SM	SMR	674	Republic of San Marino	0	1	San Marino
SO	SOM	706	Federal Republic of Somalia	0	1	Somalia
PM	SPM	666		0	1	Saint Pierre and Miquelon
RS	SRB	688	Republic of Serbia	0	1	Serbia
SS	SSD	728	Republic of South Sudan	0	1	South Sudan
ST	STP	678	Democratic Republic of Sao Tome and Principe	0	1	Sao Tome and Principe
SR	SUR	740	Republic of Suriname	0	1	Suriname
SK	SVK	703	Slovak Republic	0	1	Slovakia
SI	SVN	705	Republic of Slovenia	0	1	Slovenia
SE	SWE	752	Kingdom of Sweden	0	1	Sweden
SZ	SWZ	748	Kingdom of Eswatini	0	1	Eswatini
SX	SXM	534	Sint Maarten (Dutch part)	0	1	Sint Maarten (Dutch part)
SC	SYC	690	Republic of Seychelles	0	1	Seychelles
SY	SYR	760		0	1	Syrian Arab Republic
TC	TCA	796		0	1	Turks and Caicos Islands
TD	TCD	148	Republic of Chad	0	1	Chad
TG	TGO	768	Togolese Republic	0	1	Togo
TH	THA	764	Kingdom of Thailand	0	1	Thailand
TJ	TJK	762	Republic of Tajikistan	0	1	Tajikistan
TK	TKL	772		0	1	Tokelau
TM	TKM	795		0	1	Turkmenistan
TL	TLS	626	Democratic Republic of Timor-Leste	0	1	Timor-Leste
TO	TON	776	Kingdom of Tonga	0	1	Tonga
TT	TTO	780	Republic of Trinidad and Tobago	0	1	Trinidad and Tobago
TN	TUN	788	Republic of Tunisia	0	1	Tunisia
TR	TUR	792	Republic of Turkey	0	1	Turkey
TV	TUV	798		0	1	Tuvalu
TW	TWN	158	Taiwan, Province of China	0	1	Taiwan, Province of China
TZ	TZA	834	United Republic of Tanzania	0	1	Tanzania, United Republic of
UG	UGA	800	Republic of Uganda	0	1	Uganda
UA	UKR	804		0	1	Ukraine
UM	UMI	581		0	1	United States Minor Outlying Islands
UY	URY	858	Eastern Republic of Uruguay	0	1	Uruguay
US	USA	840	United States of America	0	1	United States
UZ	UZB	860	Republic of Uzbekistan	0	1	Uzbekistan
VA	VAT	336		0	1	Holy See (Vatican City State)
VC	VCT	670		0	1	Saint Vincent and the Grenadines
VE	VEN	862	Bolivarian Republic of Venezuela	0	1	Venezuela, Bolivarian Republic of
VG	VGB	92	British Virgin Islands	0	1	Virgin Islands, British
VI	VIR	850	Virgin Islands of the United States	0	1	Virgin Islands, U.S.
VN	VNM	704	Socialist Republic of Viet Nam	0	1	Viet Nam
VU	VUT	548	Republic of Vanuatu	0	1	Vanuatu
WF	WLF	876		0	1	Wallis and Futuna
WS	WSM	882	Independent State of Samoa	0	1	Samoa
YE	YEM	887	Republic of Yemen	0	1	Yemen
ZA	ZAF	710	Republic of South Africa	0	1	South Africa
ZM	ZMB	894	Republic of Zambia	0	1	Zambia
ZW	ZWE	716	Republic of Zimbabwe	0	1	Zimbabwe
\.


--
-- Data for Name: _address_useraddress; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._address_useraddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, phone_number, notes, is_default_for_shipping, is_default_for_billing, hash, date_created, country_id, user_id, num_orders_as_billing_address, num_orders_as_shipping_address) FROM stdin;
\.


--
-- Data for Name: _analytics_productrecord; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._analytics_productrecord (id, num_views, num_basket_additions, num_purchases, score, product_id) FROM stdin;
\.


--
-- Data for Name: _analytics_userproductview; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._analytics_userproductview (id, date_created, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: _analytics_userrecord; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._analytics_userrecord (id, num_product_views, num_basket_additions, num_orders, num_order_lines, num_order_items, total_spent, date_last_order, user_id) FROM stdin;
\.


--
-- Data for Name: _analytics_usersearch; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._analytics_usersearch (id, query, date_created, user_id) FROM stdin;
\.


--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_site	Can add site
26	7	change_site	Can change site
27	7	delete_site	Can delete site
28	7	view_site	Can view site
29	8	add_flatpage	Can add flat page
30	8	change_flatpage	Can change flat page
31	8	delete_flatpage	Can delete flat page
32	8	view_flatpage	Can view flat page
33	9	add_productrecord	Can add Product record
34	9	change_productrecord	Can change Product record
35	9	delete_productrecord	Can delete Product record
36	9	view_productrecord	Can view Product record
37	10	add_userproductview	Can add User product view
38	10	change_userproductview	Can change User product view
39	10	delete_userproductview	Can delete User product view
40	10	view_userproductview	Can view User product view
41	11	add_userrecord	Can add User record
42	11	change_userrecord	Can change User record
43	11	delete_userrecord	Can delete User record
44	11	view_userrecord	Can view User record
45	12	add_usersearch	Can add User search query
46	12	change_usersearch	Can change User search query
47	12	delete_usersearch	Can delete User search query
48	12	view_usersearch	Can view User search query
49	13	add_country	Can add Country
50	13	change_country	Can change Country
51	13	delete_country	Can delete Country
52	13	view_country	Can view Country
53	14	add_useraddress	Can add User address
54	14	change_useraddress	Can change User address
55	14	delete_useraddress	Can delete User address
56	14	view_useraddress	Can view User address
57	15	add_orderanditemcharges	Can add Order and Item Charge
58	15	change_orderanditemcharges	Can change Order and Item Charge
59	15	delete_orderanditemcharges	Can delete Order and Item Charge
60	15	view_orderanditemcharges	Can view Order and Item Charge
61	16	add_weightband	Can add Weight Band
62	16	change_weightband	Can change Weight Band
63	16	delete_weightband	Can delete Weight Band
64	16	view_weightband	Can view Weight Band
65	17	add_weightbased	Can add Weight-based Shipping Method
66	17	change_weightbased	Can change Weight-based Shipping Method
67	17	delete_weightbased	Can delete Weight-based Shipping Method
68	17	view_weightbased	Can view Weight-based Shipping Method
69	18	add_attributeoption	Can add Attribute option
70	18	change_attributeoption	Can change Attribute option
71	18	delete_attributeoption	Can delete Attribute option
72	18	view_attributeoption	Can view Attribute option
73	19	add_attributeoptiongroup	Can add Attribute option group
74	19	change_attributeoptiongroup	Can change Attribute option group
75	19	delete_attributeoptiongroup	Can delete Attribute option group
76	19	view_attributeoptiongroup	Can view Attribute option group
77	20	add_category	Can add Category
78	20	change_category	Can change Category
79	20	delete_category	Can delete Category
80	20	view_category	Can view Category
81	21	add_option	Can add Option
82	21	change_option	Can change Option
83	21	delete_option	Can delete Option
84	21	view_option	Can view Option
85	22	add_product	Can add Product
86	22	change_product	Can change Product
87	22	delete_product	Can delete Product
88	22	view_product	Can view Product
89	23	add_productattribute	Can add Product attribute
90	23	change_productattribute	Can change Product attribute
91	23	delete_productattribute	Can delete Product attribute
92	23	view_productattribute	Can view Product attribute
93	24	add_productattributevalue	Can add Product attribute value
94	24	change_productattributevalue	Can change Product attribute value
95	24	delete_productattributevalue	Can delete Product attribute value
96	24	view_productattributevalue	Can view Product attribute value
97	25	add_productcategory	Can add Product category
98	25	change_productcategory	Can change Product category
99	25	delete_productcategory	Can delete Product category
100	25	view_productcategory	Can view Product category
101	26	add_productclass	Can add Product class
102	26	change_productclass	Can change Product class
103	26	delete_productclass	Can delete Product class
104	26	view_productclass	Can view Product class
105	27	add_productimage	Can add Product image
106	27	change_productimage	Can change Product image
107	27	delete_productimage	Can delete Product image
108	27	view_productimage	Can view Product image
109	28	add_productrecommendation	Can add Product recommendation
110	28	change_productrecommendation	Can change Product recommendation
111	28	delete_productrecommendation	Can delete Product recommendation
112	28	view_productrecommendation	Can view Product recommendation
113	29	add_productreview	Can add Product review
114	29	change_productreview	Can change Product review
115	29	delete_productreview	Can delete Product review
116	29	view_productreview	Can view Product review
117	30	add_vote	Can add Vote
118	30	change_vote	Can change Vote
119	30	delete_vote	Can delete Vote
120	30	view_vote	Can view Vote
121	31	add_communicationeventtype	Can add Communication event type
122	31	change_communicationeventtype	Can change Communication event type
123	31	delete_communicationeventtype	Can delete Communication event type
124	31	view_communicationeventtype	Can view Communication event type
125	32	add_email	Can add Email
126	32	change_email	Can change Email
127	32	delete_email	Can delete Email
128	32	view_email	Can view Email
129	33	add_notification	Can add Notification
130	33	change_notification	Can change Notification
131	33	delete_notification	Can delete Notification
132	33	view_notification	Can view Notification
133	34	add_partner	Can add Fulfillment partner
134	34	change_partner	Can change Fulfillment partner
135	34	delete_partner	Can delete Fulfillment partner
136	34	view_partner	Can view Fulfillment partner
137	34	dashboard_access	Can access dashboard
138	35	add_partneraddress	Can add Partner address
139	35	change_partneraddress	Can change Partner address
140	35	delete_partneraddress	Can delete Partner address
141	35	view_partneraddress	Can view Partner address
142	36	add_stockalert	Can add Stock alert
143	36	change_stockalert	Can change Stock alert
144	36	delete_stockalert	Can delete Stock alert
145	36	view_stockalert	Can view Stock alert
146	37	add_stockrecord	Can add Stock record
147	37	change_stockrecord	Can change Stock record
148	37	delete_stockrecord	Can delete Stock record
149	37	view_stockrecord	Can view Stock record
150	38	add_basket	Can add Basket
151	38	change_basket	Can change Basket
152	38	delete_basket	Can delete Basket
153	38	view_basket	Can view Basket
154	39	add_line	Can add Basket line
155	39	change_line	Can change Basket line
156	39	delete_line	Can delete Basket line
157	39	view_line	Can view Basket line
158	40	add_lineattribute	Can add Line attribute
159	40	change_lineattribute	Can change Line attribute
160	40	delete_lineattribute	Can delete Line attribute
161	40	view_lineattribute	Can view Line attribute
162	41	add_bankcard	Can add Bankcard
163	41	change_bankcard	Can change Bankcard
164	41	delete_bankcard	Can delete Bankcard
165	41	view_bankcard	Can view Bankcard
166	42	add_source	Can add Source
167	42	change_source	Can change Source
168	42	delete_source	Can delete Source
169	42	view_source	Can view Source
170	43	add_sourcetype	Can add Source Type
171	43	change_sourcetype	Can change Source Type
172	43	delete_sourcetype	Can delete Source Type
173	43	view_sourcetype	Can view Source Type
174	44	add_transaction	Can add Transaction
175	44	change_transaction	Can change Transaction
176	44	delete_transaction	Can delete Transaction
177	44	view_transaction	Can view Transaction
178	45	add_benefit	Can add Benefit
179	45	change_benefit	Can change Benefit
180	45	delete_benefit	Can delete Benefit
181	45	view_benefit	Can view Benefit
182	46	add_condition	Can add Condition
183	46	change_condition	Can change Condition
184	46	delete_condition	Can delete Condition
185	46	view_condition	Can view Condition
186	47	add_conditionaloffer	Can add Conditional offer
187	47	change_conditionaloffer	Can change Conditional offer
188	47	delete_conditionaloffer	Can delete Conditional offer
189	47	view_conditionaloffer	Can view Conditional offer
190	48	add_range	Can add Range
191	48	change_range	Can change Range
192	48	delete_range	Can delete Range
193	48	view_range	Can view Range
194	49	add_rangeproduct	Can add range product
195	49	change_rangeproduct	Can change range product
196	49	delete_rangeproduct	Can delete range product
197	49	view_rangeproduct	Can view range product
198	50	add_rangeproductfileupload	Can add Range Product Uploaded File
199	50	change_rangeproductfileupload	Can change Range Product Uploaded File
200	50	delete_rangeproductfileupload	Can delete Range Product Uploaded File
201	50	view_rangeproductfileupload	Can view Range Product Uploaded File
202	51	add_absolutediscountbenefit	Can add Absolute discount benefit
203	51	change_absolutediscountbenefit	Can change Absolute discount benefit
204	51	delete_absolutediscountbenefit	Can delete Absolute discount benefit
205	51	view_absolutediscountbenefit	Can view Absolute discount benefit
206	52	add_countcondition	Can add Count condition
207	52	change_countcondition	Can change Count condition
208	52	delete_countcondition	Can delete Count condition
209	52	view_countcondition	Can view Count condition
210	53	add_coveragecondition	Can add Coverage Condition
211	53	change_coveragecondition	Can change Coverage Condition
212	53	delete_coveragecondition	Can delete Coverage Condition
213	53	view_coveragecondition	Can view Coverage Condition
214	54	add_fixedpricebenefit	Can add Fixed price benefit
215	54	change_fixedpricebenefit	Can change Fixed price benefit
216	54	delete_fixedpricebenefit	Can delete Fixed price benefit
217	54	view_fixedpricebenefit	Can view Fixed price benefit
218	55	add_multibuydiscountbenefit	Can add Multibuy discount benefit
219	55	change_multibuydiscountbenefit	Can change Multibuy discount benefit
220	55	delete_multibuydiscountbenefit	Can delete Multibuy discount benefit
221	55	view_multibuydiscountbenefit	Can view Multibuy discount benefit
222	56	add_percentagediscountbenefit	Can add Percentage discount benefit
223	56	change_percentagediscountbenefit	Can change Percentage discount benefit
224	56	delete_percentagediscountbenefit	Can delete Percentage discount benefit
225	56	view_percentagediscountbenefit	Can view Percentage discount benefit
226	57	add_shippingbenefit	Can add shipping benefit
227	57	change_shippingbenefit	Can change shipping benefit
228	57	delete_shippingbenefit	Can delete shipping benefit
229	57	view_shippingbenefit	Can view shipping benefit
230	58	add_shippingabsolutediscountbenefit	Can add Shipping absolute discount benefit
231	58	change_shippingabsolutediscountbenefit	Can change Shipping absolute discount benefit
232	58	delete_shippingabsolutediscountbenefit	Can delete Shipping absolute discount benefit
233	58	view_shippingabsolutediscountbenefit	Can view Shipping absolute discount benefit
234	59	add_shippingfixedpricebenefit	Can add Fixed price shipping benefit
235	59	change_shippingfixedpricebenefit	Can change Fixed price shipping benefit
236	59	delete_shippingfixedpricebenefit	Can delete Fixed price shipping benefit
237	59	view_shippingfixedpricebenefit	Can view Fixed price shipping benefit
238	60	add_shippingpercentagediscountbenefit	Can add Shipping percentage discount benefit
239	60	change_shippingpercentagediscountbenefit	Can change Shipping percentage discount benefit
240	60	delete_shippingpercentagediscountbenefit	Can delete Shipping percentage discount benefit
241	60	view_shippingpercentagediscountbenefit	Can view Shipping percentage discount benefit
242	61	add_valuecondition	Can add Value condition
243	61	change_valuecondition	Can change Value condition
244	61	delete_valuecondition	Can delete Value condition
245	61	view_valuecondition	Can view Value condition
246	62	add_billingaddress	Can add Billing address
247	62	change_billingaddress	Can change Billing address
248	62	delete_billingaddress	Can delete Billing address
249	62	view_billingaddress	Can view Billing address
250	63	add_communicationevent	Can add Communication Event
251	63	change_communicationevent	Can change Communication Event
252	63	delete_communicationevent	Can delete Communication Event
253	63	view_communicationevent	Can view Communication Event
254	64	add_line	Can add Order Line
255	64	change_line	Can change Order Line
256	64	delete_line	Can delete Order Line
257	64	view_line	Can view Order Line
258	65	add_lineattribute	Can add Line Attribute
259	65	change_lineattribute	Can change Line Attribute
260	65	delete_lineattribute	Can delete Line Attribute
261	65	view_lineattribute	Can view Line Attribute
262	66	add_lineprice	Can add Line Price
263	66	change_lineprice	Can change Line Price
264	66	delete_lineprice	Can delete Line Price
265	66	view_lineprice	Can view Line Price
266	67	add_order	Can add Order
267	67	change_order	Can change Order
268	67	delete_order	Can delete Order
269	67	view_order	Can view Order
270	68	add_orderdiscount	Can add Order Discount
271	68	change_orderdiscount	Can change Order Discount
272	68	delete_orderdiscount	Can delete Order Discount
273	68	view_orderdiscount	Can view Order Discount
274	69	add_ordernote	Can add Order Note
275	69	change_ordernote	Can change Order Note
276	69	delete_ordernote	Can delete Order Note
277	69	view_ordernote	Can view Order Note
278	70	add_paymentevent	Can add Payment Event
279	70	change_paymentevent	Can change Payment Event
280	70	delete_paymentevent	Can delete Payment Event
281	70	view_paymentevent	Can view Payment Event
282	71	add_paymenteventquantity	Can add Payment Event Quantity
283	71	change_paymenteventquantity	Can change Payment Event Quantity
284	71	delete_paymenteventquantity	Can delete Payment Event Quantity
285	71	view_paymenteventquantity	Can view Payment Event Quantity
286	72	add_paymenteventtype	Can add Payment Event Type
287	72	change_paymenteventtype	Can change Payment Event Type
288	72	delete_paymenteventtype	Can delete Payment Event Type
289	72	view_paymenteventtype	Can view Payment Event Type
290	73	add_shippingaddress	Can add Shipping address
291	73	change_shippingaddress	Can change Shipping address
292	73	delete_shippingaddress	Can delete Shipping address
293	73	view_shippingaddress	Can view Shipping address
294	74	add_shippingevent	Can add Shipping Event
295	74	change_shippingevent	Can change Shipping Event
296	74	delete_shippingevent	Can delete Shipping Event
297	74	view_shippingevent	Can view Shipping Event
298	75	add_shippingeventquantity	Can add Shipping Event Quantity
299	75	change_shippingeventquantity	Can change Shipping Event Quantity
300	75	delete_shippingeventquantity	Can delete Shipping Event Quantity
301	75	view_shippingeventquantity	Can view Shipping Event Quantity
302	76	add_shippingeventtype	Can add Shipping Event Type
303	76	change_shippingeventtype	Can change Shipping Event Type
304	76	delete_shippingeventtype	Can delete Shipping Event Type
305	76	view_shippingeventtype	Can view Shipping Event Type
306	77	add_orderstatuschange	Can add Order Status Change
307	77	change_orderstatuschange	Can change Order Status Change
308	77	delete_orderstatuschange	Can delete Order Status Change
309	77	view_orderstatuschange	Can view Order Status Change
310	78	add_surcharge	Can add surcharge
311	78	change_surcharge	Can change surcharge
312	78	delete_surcharge	Can delete surcharge
313	78	view_surcharge	Can view surcharge
314	79	add_productalert	Can add Product alert
315	79	change_productalert	Can change Product alert
316	79	delete_productalert	Can delete Product alert
317	79	view_productalert	Can view Product alert
318	80	add_voucher	Can add Voucher
319	80	change_voucher	Can change Voucher
320	80	delete_voucher	Can delete Voucher
321	80	view_voucher	Can view Voucher
322	81	add_voucherapplication	Can add Voucher Application
323	81	change_voucherapplication	Can change Voucher Application
324	81	delete_voucherapplication	Can delete Voucher Application
325	81	view_voucherapplication	Can view Voucher Application
326	82	add_voucherset	Can add VoucherSet
327	82	change_voucherset	Can change VoucherSet
328	82	delete_voucherset	Can delete VoucherSet
329	82	view_voucherset	Can view VoucherSet
330	83	add_line	Can add Wish list line
331	83	change_line	Can change Wish list line
332	83	delete_line	Can delete Wish list line
333	83	view_line	Can view Wish list line
334	84	add_wishlist	Can add Wish List
335	84	change_wishlist	Can change Wish List
336	84	delete_wishlist	Can delete Wish List
337	84	view_wishlist	Can view Wish List
338	85	add_kvstore	Can add kv store
339	85	change_kvstore	Can change kv store
340	85	delete_kvstore	Can delete kv store
341	85	view_kvstore	Can view kv store
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _basket_basket; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._basket_basket (id, status, date_created, date_merged, date_submitted, owner_id) FROM stdin;
\.


--
-- Data for Name: _basket_basket_vouchers; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._basket_basket_vouchers (id, basket_id, voucher_id) FROM stdin;
\.


--
-- Data for Name: _basket_line; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._basket_line (id, line_reference, quantity, price_currency, price_excl_tax, price_incl_tax, date_created, basket_id, product_id, stockrecord_id, date_updated) FROM stdin;
\.


--
-- Data for Name: _basket_lineattribute; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._basket_lineattribute (id, value, line_id, option_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_attributeoption; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_attributeoption (id, option, group_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_attributeoptiongroup; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_attributeoptiongroup (id, name) FROM stdin;
\.


--
-- Data for Name: _catalogue_category; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_category (id, path, depth, numchild, name, description, image, slug, ancestors_are_public, is_public, meta_description, meta_title) FROM stdin;
\.


--
-- Data for Name: _catalogue_option; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_option (id, name, code, type, required) FROM stdin;
\.


--
-- Data for Name: _catalogue_product; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_product (id, structure, upc, title, slug, description, rating, date_created, date_updated, is_discountable, product_class_id, is_public, meta_description, meta_title, parent_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_product_product_options; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_product_product_options (id, product_id, option_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_productattribute; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productattribute (id, name, code, type, required, product_class_id, option_group_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_productattributevalue; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productattributevalue (id, value_text, value_integer, value_boolean, value_float, value_richtext, value_date, value_file, entity_object_id, attribute_id, entity_content_type_id, product_id, value_option_id, value_datetime, value_image) FROM stdin;
\.


--
-- Data for Name: _catalogue_productattributevalue_value_multi_option; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productattributevalue_value_multi_option (id, productattributevalue_id, attributeoption_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_productcategory; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productcategory (id, category_id, product_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_productclass; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productclass (id, name, slug, requires_shipping, track_stock) FROM stdin;
\.


--
-- Data for Name: _catalogue_productclass_options; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productclass_options (id, productclass_id, option_id) FROM stdin;
\.


--
-- Data for Name: _catalogue_productimage; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productimage (id, caption, display_order, date_created, product_id, original) FROM stdin;
\.


--
-- Data for Name: _catalogue_productrecommendation; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._catalogue_productrecommendation (id, primary_id, recommendation_id, ranking) FROM stdin;
\.


--
-- Data for Name: _communication_communicationeventtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._communication_communicationeventtype (id, code, category, email_subject_template, email_body_template, email_body_html_template, sms_template, date_created, date_updated, name) FROM stdin;
\.


--
-- Data for Name: _communication_email; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._communication_email (id, subject, body_text, body_html, date_sent, email, user_id) FROM stdin;
\.


--
-- Data for Name: _communication_notification; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._communication_notification (id, subject, body, location, date_sent, date_read, recipient_id, sender_id) FROM stdin;
\.


--
-- Data for Name: _customer_productalert; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._customer_productalert (id, email, key, status, date_confirmed, date_cancelled, date_closed, product_id, user_id, date_created) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
13	address	country
14	address	useraddress
1	admin	logentry
9	analytics	productrecord
10	analytics	userproductview
11	analytics	userrecord
12	analytics	usersearch
3	auth	group
2	auth	permission
4	auth	user
38	basket	basket
39	basket	line
40	basket	lineattribute
18	catalogue	attributeoption
19	catalogue	attributeoptiongroup
20	catalogue	category
21	catalogue	option
22	catalogue	product
23	catalogue	productattribute
24	catalogue	productattributevalue
25	catalogue	productcategory
26	catalogue	productclass
27	catalogue	productimage
28	catalogue	productrecommendation
31	communication	communicationeventtype
32	communication	email
33	communication	notification
5	contenttypes	contenttype
79	customer	productalert
8	flatpages	flatpage
51	offer	absolutediscountbenefit
45	offer	benefit
46	offer	condition
47	offer	conditionaloffer
52	offer	countcondition
53	offer	coveragecondition
54	offer	fixedpricebenefit
55	offer	multibuydiscountbenefit
56	offer	percentagediscountbenefit
48	offer	range
49	offer	rangeproduct
50	offer	rangeproductfileupload
58	offer	shippingabsolutediscountbenefit
57	offer	shippingbenefit
59	offer	shippingfixedpricebenefit
60	offer	shippingpercentagediscountbenefit
61	offer	valuecondition
62	order	billingaddress
63	order	communicationevent
64	order	line
65	order	lineattribute
66	order	lineprice
67	order	order
68	order	orderdiscount
69	order	ordernote
77	order	orderstatuschange
70	order	paymentevent
71	order	paymenteventquantity
72	order	paymenteventtype
73	order	shippingaddress
74	order	shippingevent
75	order	shippingeventquantity
76	order	shippingeventtype
78	order	surcharge
34	partner	partner
35	partner	partneraddress
36	partner	stockalert
37	partner	stockrecord
41	payment	bankcard
42	payment	source
43	payment	sourcetype
44	payment	transaction
29	reviews	productreview
30	reviews	vote
6	sessions	session
15	shipping	orderanditemcharges
16	shipping	weightband
17	shipping	weightbased
7	sites	site
85	thumbnail	kvstore
80	voucher	voucher
81	voucher	voucherapplication
82	voucher	voucherset
83	wishlists	line
84	wishlists	wishlist
\.


--
-- Data for Name: _django_flatpage; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
\.


--
-- Data for Name: _django_flatpage_sites; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-02-23
2	auth	0001_initial	2021-02-23
3	address	0001_initial	2021-02-23
4	address	0002_auto_20150927_1547	2021-02-23
5	address	0003_auto_20150927_1551	2021-02-23
6	address	0004_auto_20170226_1122	2021-02-23
7	address	0005_regenerate_user_address_hashes	2021-02-23
8	address	0006_auto_20181115_1953	2021-02-23
9	admin	0001_initial	2021-02-23
10	admin	0002_logentry_remove_auto_add	2021-02-23
11	admin	0003_logentry_add_action_flag_choices	2021-02-23
12	catalogue	0001_initial	2021-02-23
13	analytics	0001_initial	2021-02-23
14	analytics	0002_auto_20140827_1705	2021-02-23
15	analytics	0003_auto_20200801_0817	2021-02-23
16	contenttypes	0002_remove_content_type_name	2021-02-23
17	auth	0002_alter_permission_name_max_length	2021-02-23
18	auth	0003_alter_user_email_max_length	2021-02-23
19	auth	0004_alter_user_username_opts	2021-02-23
20	auth	0005_alter_user_last_login_null	2021-02-23
21	auth	0006_require_contenttypes_0002	2021-02-23
22	auth	0007_alter_validators_add_error_messages	2021-02-23
23	auth	0008_alter_user_username_max_length	2021-02-23
24	auth	0009_alter_user_last_name_max_length	2021-02-23
25	auth	0010_alter_group_name_max_length	2021-02-23
26	auth	0011_update_proxy_permissions	2021-02-23
27	auth	0012_alter_user_first_name_max_length	2021-02-23
28	sites	0001_initial	2021-02-23
29	partner	0001_initial	2021-02-23
30	customer	0001_initial	2021-02-23
31	basket	0001_initial	2021-02-23
32	basket	0002_auto_20140827_1705	2021-02-23
33	order	0001_initial	2021-02-23
34	offer	0001_initial	2021-02-23
35	voucher	0001_initial	2021-02-23
36	basket	0003_basket_vouchers	2021-02-23
37	basket	0004_auto_20141007_2032	2021-02-23
38	basket	0005_auto_20150604_1450	2021-02-23
39	basket	0006_auto_20160111_1108	2021-02-23
40	basket	0007_slugfield_noop	2021-02-23
41	basket	0008_auto_20181115_1953	2021-02-23
42	basket	0009_line_date_updated	2021-02-23
43	catalogue	0002_auto_20150217_1221	2021-02-23
44	catalogue	0003_data_migration_slugs	2021-02-23
45	catalogue	0004_auto_20150217_1710	2021-02-23
46	catalogue	0005_auto_20150604_1450	2021-02-23
47	catalogue	0006_auto_20150807_1725	2021-02-23
48	catalogue	0007_auto_20151207_1440	2021-02-23
49	catalogue	0008_auto_20160304_1652	2021-02-23
50	catalogue	0009_slugfield_noop	2021-02-23
51	catalogue	0010_auto_20170420_0439	2021-02-23
52	catalogue	0011_auto_20170422_1355	2021-02-23
53	catalogue	0012_auto_20170609_1902	2021-02-23
54	catalogue	0013_auto_20170821_1548	2021-02-23
55	catalogue	0014_auto_20181115_1953	2021-02-23
56	catalogue	0015_product_is_public	2021-02-23
57	catalogue	0016_auto_20190327_0757	2021-02-23
58	catalogue	0017_auto_20190816_0938	2021-02-23
59	catalogue	0018_auto_20191220_0920	2021-02-23
60	catalogue	0019_option_required	2021-02-23
61	catalogue	0020_auto_20200801_0817	2021-02-23
62	catalogue	0021_auto_20201005_0844	2021-02-23
63	order	0002_auto_20141007_2032	2021-02-23
64	order	0003_auto_20150113_1629	2021-02-23
65	order	0004_auto_20160111_1108	2021-02-23
66	order	0005_update_email_length	2021-02-23
67	order	0006_orderstatuschange	2021-02-23
68	order	0007_auto_20181115_1953	2021-02-23
69	customer	0002_auto_20150807_1725	2021-02-23
70	customer	0003_update_email_length	2021-02-23
71	customer	0004_email_save	2021-02-23
72	customer	0005_auto_20181115_1953	2021-02-23
73	communication	0001_initial	2021-02-23
74	order	0008_auto_20190301_1035	2021-02-23
75	communication	0002_reset_table_names	2021-02-23
76	communication	0003_remove_notification_category_make_code_uppercase	2021-02-23
77	communication	0004_auto_20200801_0817	2021-02-23
78	customer	0006_auto_20190430_1736	2021-02-23
79	customer	0007_auto_20200801_0817	2021-02-23
80	flatpages	0001_initial	2021-02-23
81	offer	0002_auto_20151210_1053	2021-02-23
82	offer	0003_auto_20161120_1707	2021-02-23
83	offer	0004_auto_20170415_1518	2021-02-23
84	offer	0005_auto_20170423_1217	2021-02-23
85	offer	0006_auto_20170504_0616	2021-02-23
86	offer	0007_conditionaloffer_exclusive	2021-02-23
87	offer	0008_auto_20181115_1953	2021-02-23
88	offer	0009_auto_20200801_0817	2021-02-23
89	offer	0010_conditionaloffer_combinations	2021-02-23
90	order	0008_surcharge	2021-02-23
91	order	0010_auto_20200724_0909	2021-02-23
92	order	0011_auto_20200801_0817	2021-02-23
93	partner	0002_auto_20141007_2032	2021-02-23
94	partner	0003_auto_20150604_1450	2021-02-23
95	partner	0004_auto_20160107_1755	2021-02-23
96	partner	0005_auto_20181115_1953	2021-02-23
97	partner	0006_auto_20200724_0909	2021-02-23
98	payment	0001_initial	2021-02-23
99	payment	0002_auto_20141007_2032	2021-02-23
100	payment	0003_auto_20160323_1520	2021-02-23
101	payment	0004_auto_20181115_1953	2021-02-23
102	payment	0005_auto_20200801_0817	2021-02-23
103	reviews	0001_initial	2021-02-23
104	reviews	0002_update_email_length	2021-02-23
105	reviews	0003_auto_20160802_1358	2021-02-23
106	reviews	0004_auto_20170429_0941	2021-02-23
107	sessions	0001_initial	2021-02-23
108	shipping	0001_initial	2021-02-23
109	shipping	0002_auto_20150604_1450	2021-02-23
110	shipping	0003_auto_20181115_1953	2021-02-23
111	sites	0002_alter_domain_unique	2021-02-23
112	thumbnail	0001_initial	2021-02-23
113	voucher	0002_auto_20170418_2132	2021-02-23
114	voucher	0003_auto_20171212_0411	2021-02-23
115	voucher	0004_auto_20180228_0940	2021-02-23
116	voucher	0005_auto_20180402_1425	2021-02-23
117	voucher	0006_auto_20180413_0911	2021-02-23
118	voucher	0007_auto_20181115_1953	2021-02-23
119	voucher	0008_auto_20200801_0817	2021-02-23
120	wishlists	0001_initial	2021-02-23
121	wishlists	0002_auto_20160111_1108	2021-02-23
122	wishlists	0003_auto_20181115_1953	2021-02-23
123	order	0009_surcharge	2021-02-23
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: _django_site; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_site (id, name, domain) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: _offer_benefit; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_benefit (id, type, value, max_affected_items, range_id, proxy_class) FROM stdin;
\.


--
-- Data for Name: _offer_condition; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_condition (id, type, value, range_id, proxy_class) FROM stdin;
\.


--
-- Data for Name: _offer_conditionaloffer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_conditionaloffer (id, name, slug, description, offer_type, status, start_datetime, end_datetime, max_global_applications, max_user_applications, max_basket_applications, max_discount, total_discount, num_applications, num_orders, redirect_url, date_created, benefit_id, condition_id, exclusive, priority) FROM stdin;
\.


--
-- Data for Name: _offer_conditionaloffer_combinations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_conditionaloffer_combinations (id, from_conditionaloffer_id, to_conditionaloffer_id) FROM stdin;
\.


--
-- Data for Name: _offer_range; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_range (id, name, slug, description, is_public, includes_all_products, proxy_class, date_created) FROM stdin;
\.


--
-- Data for Name: _offer_range_classes; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_range_classes (id, range_id, productclass_id) FROM stdin;
\.


--
-- Data for Name: _offer_range_excluded_products; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_range_excluded_products (id, range_id, product_id) FROM stdin;
\.


--
-- Data for Name: _offer_range_included_categories; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_range_included_categories (id, range_id, category_id) FROM stdin;
\.


--
-- Data for Name: _offer_rangeproduct; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_rangeproduct (id, display_order, product_id, range_id) FROM stdin;
\.


--
-- Data for Name: _offer_rangeproductfileupload; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_rangeproductfileupload (id, filepath, size, status, error_message, date_processed, num_new_skus, num_unknown_skus, num_duplicate_skus, range_id, uploaded_by_id, date_uploaded) FROM stdin;
\.


--
-- Data for Name: _order_billingaddress; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_billingaddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, country_id) FROM stdin;
\.


--
-- Data for Name: _order_communicationevent; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_communicationevent (id, date_created, order_id, event_type_id) FROM stdin;
\.


--
-- Data for Name: _order_line; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_line (id, partner_name, partner_sku, partner_line_reference, partner_line_notes, title, upc, quantity, line_price_incl_tax, line_price_excl_tax, line_price_before_discounts_incl_tax, line_price_before_discounts_excl_tax, unit_price_incl_tax, unit_price_excl_tax, status, order_id, partner_id, product_id, stockrecord_id) FROM stdin;
\.


--
-- Data for Name: _order_lineattribute; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_lineattribute (id, type, value, line_id, option_id) FROM stdin;
\.


--
-- Data for Name: _order_lineprice; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_lineprice (id, quantity, price_incl_tax, price_excl_tax, shipping_incl_tax, shipping_excl_tax, line_id, order_id) FROM stdin;
\.


--
-- Data for Name: _order_order; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_order (id, number, currency, total_incl_tax, total_excl_tax, shipping_incl_tax, shipping_excl_tax, shipping_method, shipping_code, status, date_placed, basket_id, billing_address_id, shipping_address_id, site_id, user_id, guest_email) FROM stdin;
\.


--
-- Data for Name: _order_orderdiscount; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_orderdiscount (id, category, offer_id, offer_name, voucher_id, voucher_code, frequency, amount, message, order_id) FROM stdin;
\.


--
-- Data for Name: _order_ordernote; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_ordernote (id, note_type, message, date_created, date_updated, order_id, user_id) FROM stdin;
\.


--
-- Data for Name: _order_orderstatuschange; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_orderstatuschange (id, old_status, new_status, order_id, date_created) FROM stdin;
\.


--
-- Data for Name: _order_paymentevent; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_paymentevent (id, amount, reference, event_type_id, order_id, shipping_event_id, date_created) FROM stdin;
\.


--
-- Data for Name: _order_paymenteventquantity; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_paymenteventquantity (id, quantity, event_id, line_id) FROM stdin;
\.


--
-- Data for Name: _order_paymenteventtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_paymenteventtype (id, name, code) FROM stdin;
\.


--
-- Data for Name: _order_shippingaddress; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_shippingaddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, phone_number, notes, country_id) FROM stdin;
\.


--
-- Data for Name: _order_shippingevent; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_shippingevent (id, notes, event_type_id, order_id, date_created) FROM stdin;
\.


--
-- Data for Name: _order_shippingeventquantity; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_shippingeventquantity (id, quantity, event_id, line_id) FROM stdin;
\.


--
-- Data for Name: _order_shippingeventtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_shippingeventtype (id, name, code) FROM stdin;
\.


--
-- Data for Name: _order_surcharge; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_surcharge (id, name, code, incl_tax, excl_tax, order_id) FROM stdin;
\.


--
-- Data for Name: _partner_partner; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._partner_partner (id, code, name) FROM stdin;
\.


--
-- Data for Name: _partner_partner_users; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._partner_partner_users (id, partner_id, user_id) FROM stdin;
\.


--
-- Data for Name: _partner_partneraddress; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._partner_partneraddress (id, title, first_name, last_name, line1, line2, line3, line4, state, postcode, search_text, country_id, partner_id) FROM stdin;
\.


--
-- Data for Name: _partner_stockalert; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._partner_stockalert (id, threshold, status, date_closed, stockrecord_id, date_created) FROM stdin;
\.


--
-- Data for Name: _partner_stockrecord; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._partner_stockrecord (id, partner_sku, price_currency, num_in_stock, num_allocated, low_stock_threshold, date_created, date_updated, partner_id, product_id, price) FROM stdin;
\.


--
-- Data for Name: _payment_bankcard; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._payment_bankcard (id, card_type, name, number, expiry_date, partner_reference, user_id) FROM stdin;
\.


--
-- Data for Name: _payment_source; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._payment_source (id, currency, amount_allocated, amount_debited, amount_refunded, label, order_id, source_type_id, reference) FROM stdin;
\.


--
-- Data for Name: _payment_sourcetype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._payment_sourcetype (id, code, name) FROM stdin;
\.


--
-- Data for Name: _payment_transaction; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._payment_transaction (id, txn_type, amount, reference, status, source_id, date_created) FROM stdin;
\.


--
-- Data for Name: _reviews_productreview; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._reviews_productreview (id, score, title, body, name, email, homepage, status, total_votes, delta_votes, date_created, user_id, product_id) FROM stdin;
\.


--
-- Data for Name: _reviews_vote; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._reviews_vote (id, delta, date_created, review_id, user_id) FROM stdin;
\.


--
-- Data for Name: _shipping_orderanditemcharges; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shipping_orderanditemcharges (id, code, description, price_per_order, price_per_item, free_shipping_threshold, name) FROM stdin;
\.


--
-- Data for Name: _shipping_orderanditemcharges_countries; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shipping_orderanditemcharges_countries (id, orderanditemcharges_id, country_id) FROM stdin;
\.


--
-- Data for Name: _shipping_weightband; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shipping_weightband (id, charge, method_id, upper_limit) FROM stdin;
\.


--
-- Data for Name: _shipping_weightbased; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shipping_weightbased (id, code, description, default_weight, name) FROM stdin;
\.


--
-- Data for Name: _shipping_weightbased_countries; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shipping_weightbased_countries (id, weightbased_id, country_id) FROM stdin;
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	123
address_useraddress	0
django_admin_log	0
catalogue_attributeoption	0
analytics_userproductview	0
analytics_productrecord	0
django_content_type	85
auth_permission	341
auth_group	0
auth_user	0
basket_lineattribute	0
basket_basket	0
order_lineprice	0
offer_range	0
basket_basket_vouchers	0
basket_line	0
catalogue_productattribute	0
catalogue_productrecommendation	0
catalogue_productattributevalue	0
catalogue_productimage	0
catalogue_option	0
catalogue_category	0
catalogue_product	0
order_order	0
order_orderstatuschange	0
order_paymentevent	0
order_shippingevent	0
communication_email	0
order_communicationevent	0
communication_notification	0
communication_communicationeventtype	0
customer_productalert	0
offer_benefit	0
offer_condition	0
offer_conditionaloffer	0
offer_rangeproductfileupload	0
order_line	0
partner_partner_users	0
partner_partner	0
partner_stockalert	0
partner_stockrecord	0
payment_source	0
payment_transaction	0
payment_sourcetype	0
reviews_productreview	0
shipping_orderanditemcharges_countries	0
shipping_weightbased_countries	0
shipping_orderanditemcharges	0
shipping_weightband	0
shipping_weightbased	0
django_site	1
voucher_voucher_offers	0
voucher_voucher	0
voucher_voucherapplication	0
voucher_voucherset	0
wishlists_line	0
wishlists_wishlist	0
\.


--
-- Data for Name: _thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Data for Name: _voucher_voucher; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._voucher_voucher (id, name, code, usage, start_datetime, end_datetime, num_basket_additions, num_orders, total_discount, voucher_set_id, date_created) FROM stdin;
\.


--
-- Data for Name: _voucher_voucher_offers; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._voucher_voucher_offers (id, voucher_id, conditionaloffer_id) FROM stdin;
\.


--
-- Data for Name: _voucher_voucherapplication; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._voucher_voucherapplication (id, order_id, user_id, voucher_id, date_created) FROM stdin;
\.


--
-- Data for Name: _voucher_voucherset; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._voucher_voucherset (id, name, count, code_length, description, start_datetime, end_datetime, offer_id, date_created) FROM stdin;
\.


--
-- Data for Name: _wishlists_line; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._wishlists_line (id, quantity, title, product_id, wishlist_id) FROM stdin;
\.


--
-- Data for Name: _wishlists_wishlist; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._wishlists_wishlist (id, name, key, visibility, owner_id, date_created) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

