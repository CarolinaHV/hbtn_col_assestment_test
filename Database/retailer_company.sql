-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2021 a las 01:46:17
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `retailer_company`
--
CREATE DATABASE IF NOT EXISTS `retailer_company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `retailer_company`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_order`
--

DROP TABLE IF EXISTS `api_order`;
CREATE TABLE IF NOT EXISTS `api_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `subtotal` decimal(9,2) NOT NULL,
  `taxes` decimal(9,2) NOT NULL,
  `paid` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `api_order`:
--

--
-- Volcado de datos para la tabla `api_order`
--

INSERT INTO `api_order` (`id`, `date`, `total`, `subtotal`, `taxes`, `paid`) VALUES
(1, '2021-07-31', '125.99', '124.00', '1.99', '125.99'),
(2, '2021-08-02', '520.00', '457.60', '62.40', '300.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_payment`
--

DROP TABLE IF EXISTS `api_payment`;
CREATE TABLE IF NOT EXISTS `api_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_payment` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `api_payment`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_shipping`
--

DROP TABLE IF EXISTS `api_shipping`;
CREATE TABLE IF NOT EXISTS `api_shipping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `cost` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `api_shipping`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_user`
--

DROP TABLE IF EXISTS `api_user`;
CREATE TABLE IF NOT EXISTS `api_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `api_user`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_group`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_group_permissions`:
--   `permission_id`
--       `auth_permission` -> `id`
--   `group_id`
--       `auth_group` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_permission`:
--   `content_type_id`
--       `django_content_type` -> `id`
--

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add order', 7, 'add_order'),
(26, 'Can change order', 7, 'change_order'),
(27, 'Can delete order', 7, 'delete_order'),
(28, 'Can view order', 7, 'view_order'),
(29, 'Can add shipping', 8, 'add_shipping'),
(30, 'Can change shipping', 8, 'change_shipping'),
(31, 'Can delete shipping', 8, 'delete_shipping'),
(32, 'Can view shipping', 8, 'view_shipping'),
(33, 'Can add payment', 9, 'add_payment'),
(34, 'Can change payment', 9, 'change_payment'),
(35, 'Can delete payment', 9, 'delete_payment'),
(36, 'Can view payment', 9, 'view_payment'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_user`:
--

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$OV54dH8dATBBj1m1s5HV37$tceKOninNGIlDdf3GHAQ//vEcEi2vDbkYF2K7fI7Fkc=', '2021-08-01 04:32:57.736383', 1, 'carolina', '', '', 'carolina.hv02@gmail.com', 1, 1, '2021-08-01 04:29:50.106125');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_user_groups`:
--   `group_id`
--       `auth_group` -> `id`
--   `user_id`
--       `auth_user` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `auth_user_user_permissions`:
--   `permission_id`
--       `auth_permission` -> `id`
--   `user_id`
--       `auth_user` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `django_admin_log`:
--   `content_type_id`
--       `django_content_type` -> `id`
--   `user_id`
--       `auth_user` -> `id`
--

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-01 04:36:59.904346', '1', 'order object (1)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `django_content_type`:
--

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'API', 'order'),
(9, 'API', 'payment'),
(8, 'API', 'shipping'),
(10, 'API', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `django_migrations`:
--

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-01 04:23:02.687582'),
(2, 'auth', '0001_initial', '2021-08-01 04:23:03.829548'),
(3, 'admin', '0001_initial', '2021-08-01 04:23:04.101172'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-01 04:23:04.135137'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-01 04:23:04.151136'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-01 04:23:04.285075'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-01 04:23:04.421571'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-01 04:23:04.470931'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-01 04:23:04.494895'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-01 04:23:04.619140'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-01 04:23:04.635917'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-01 04:23:04.659915'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-01 04:23:04.707916'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-01 04:23:04.767245'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-01 04:23:04.815617'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-01 04:23:04.839618'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-01 04:23:04.895624'),
(18, 'sessions', '0001_initial', '2021-08-01 04:23:04.983629'),
(19, 'API', '0001_initial', '2021-08-01 04:24:13.164610'),
(20, 'API', '0002_shipping', '2021-08-02 18:11:01.954714'),
(21, 'API', '0003_payment_user', '2021-08-02 18:43:05.367773'),
(22, 'API', '0004_delete_user', '2021-08-02 18:43:56.499141'),
(23, 'API', '0005_user', '2021-08-02 18:44:24.396677');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `django_session`:
--

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ktbiprssdnc50vagvrmophdsniuehb6u', '.eJxVjEEOwiAQRe_C2hCwQyku3XsGMgODVA0kpV0Z7y5NutDtf--_t_C4rdlvjRc_R3ERWpx-N8Lw5LKD-MByrzLUsi4zyV2RB23yViO_rof7F8jYcn8zI47WJhdGq1MCIpzMAAmG3lCEGhRDTOhMFwKcWcFkjHUhEtBgk_h8AQ-JOMY:1mA39l:HGVKGa_g0lhY0kPIPAtJHHvLAD8r7iCkgU0DHxpZXcQ', '2021-08-15 04:32:57.744387');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
