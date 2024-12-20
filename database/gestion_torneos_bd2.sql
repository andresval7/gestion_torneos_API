-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 04:01 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_torneos_bd2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-24 23:27:32.736118', '2', '', 1, '[{\"added\": {}}]', 6, 1),
(2, '2024-10-29 04:05:20.741841', '1', 'Torneo object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-10-29 04:07:10.185757', '1', 'Equipo object (1)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-10-29 04:07:43.041151', '2', 'Equipo object (2)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-10-29 04:37:34.177454', '2', 'Torneo object (2)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-10-29 04:45:12.201970', '1', 'Fases object (1)', 1, '[{\"added\": {}}]', 10, 1),
(7, '2024-10-29 04:45:31.318459', '2', 'Fases object (2)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-10-29 04:45:50.209710', '3', 'Fases object (3)', 1, '[{\"added\": {}}]', 10, 1),
(9, '2024-10-29 04:46:04.092713', '4', 'Fases object (4)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2024-10-29 04:46:17.577891', '5', 'Fases object (5)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-10-29 04:46:33.932460', '6', 'Fases object (6)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-10-29 04:47:09.631703', '1', 'Tiene object (1)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2024-10-30 00:13:13.280058', '4', 'Equipo object (4)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-10-31 03:46:04.100146', '1', 'Equipo object (1)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-10-31 03:46:23.668315', '2', 'Equipo object (2)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-10-31 03:47:47.774582', '1', 'Torneo object (1)', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-10-31 03:50:21.470856', '1', 'Encuentro object (1)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2024-10-31 03:50:49.600972', '1', 'Participa object (1)', 1, '[{\"added\": {}}]', 12, 1),
(19, '2024-10-31 03:50:59.657558', '2', 'Participa object (2)', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(11, 'encuentros', 'encuentro'),
(7, 'equipos', 'equipo'),
(10, 'fases', 'fases'),
(12, 'participan', 'participa'),
(5, 'sessions', 'session'),
(9, 'tiene', 'tiene'),
(8, 'torneos', 'torneo'),
(6, 'users', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-23 00:38:19.278292'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-10-23 00:38:19.398486'),
(3, 'auth', '0001_initial', '2024-10-23 00:38:19.564552'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-10-23 00:38:19.615193'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-10-23 00:38:19.630307'),
(6, 'auth', '0004_alter_user_username_opts', '2024-10-23 00:38:19.645267'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-10-23 00:38:19.657243'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-10-23 00:38:19.660600'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-10-23 00:38:19.670691'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-10-23 00:38:19.681141'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-10-23 00:38:19.693261'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-10-23 00:38:19.764405'),
(13, 'auth', '0011_update_proxy_permissions', '2024-10-23 00:38:19.777836'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-10-23 00:38:19.790198'),
(15, 'users', '0001_initial', '2024-10-23 00:38:20.093238'),
(16, 'admin', '0001_initial', '2024-10-23 00:38:20.219726'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-10-23 00:38:20.227810'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-23 00:38:20.245520'),
(19, 'sessions', '0001_initial', '2024-10-23 00:38:20.278605');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dwkjfu9weimdsmh9vl6cnffeg5cp5q40', '.eJxVjDsOwjAQBe_iGln-sP5Q0ucM1tq7wQHkSHFSIe4OkVJA-2bmvUTCba1p67ykicRFaHH63TKWB7cd0B3bbZZlbusyZbkr8qBdDjPx83q4fwcVe_3WUTPaUWfMzloO5qwArQ-eSIGHseQYDYIqToMCQyESgYai0RlGb5R4fwDZmzdi:1t9yyE:SSv-CMI3H-fP-4nBW2Rtfyy69NVzyjRLxx0FgXr1Am8', '2024-11-24 03:50:38.617081');

-- --------------------------------------------------------

--
-- Table structure for table `encuentro`
--

CREATE TABLE `encuentro` (
  `id_encuentro` int(15) NOT NULL,
  `id_torneo_fke` int(15) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `fase_encuentro` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `encuentro`
--

INSERT INTO `encuentro` (`id_encuentro`, `id_torneo_fke`, `fecha`, `hora`, `ubicacion`, `fase_encuentro`) VALUES
(1, 2, '2024-11-01', '10:00:00', 'Evangelista Mora', 'Ronda 1'),
(2, 1, '2024-11-02', '10:00:00', 'Canchas Panamericanas', 'Ronda 1'),
(3, 1, '2024-11-12', '08:00:00', 'Canchas Panamericanas', 'Ronda 1'),
(4, 1, '2024-11-12', '08:00:00', 'Canchas Panamericanas', 'Ronda 1'),
(5, 2, '2024-11-02', '10:00:00', 'Evangelista Mora', 'Ronda 1');

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(15) NOT NULL,
  `nombre_equipo` varchar(100) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(100) NOT NULL,
  `tamano_equipo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre_equipo`, `ciudad`, `pais`, `tamano_equipo`) VALUES
(1, 'Deportivo Tapita', 'Cali', 'Colombia', 22),
(2, 'Furano FC', 'Palmira', 'Colombia', 22),
(3, 'Real Valledupar', 'Valledupar', 'Colombia', 23),
(4, 'Los petacos', 'Manizales', 'Colombia', 18),
(5, 'Cebollitas FC', 'Medellín', 'Colombia', 20);

-- --------------------------------------------------------

--
-- Table structure for table `participa`
--

CREATE TABLE `participa` (
  `id_participa` int(15) NOT NULL,
  `id_encuentro_fk` int(15) DEFAULT NULL,
  `id_equipo_fk` int(15) DEFAULT NULL,
  `anotaciones` int(5) DEFAULT NULL,
  `resultado` varchar(50) DEFAULT NULL,
  `puntuacion` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `participa`
--

INSERT INTO `participa` (`id_participa`, `id_encuentro_fk`, `id_equipo_fk`, `anotaciones`, `resultado`, `puntuacion`) VALUES
(1, 1, 1, 3, 'Ganó', 0),
(2, 1, 2, 0, 'Perdió', 0);

-- --------------------------------------------------------

--
-- Table structure for table `torneo`
--

CREATE TABLE `torneo` (
  `id_torneo` int(15) NOT NULL,
  `nombre_torneo` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `deporte` varchar(60) DEFAULT NULL,
  `tipo_torneo` varchar(60) DEFAULT NULL,
  `fk_organizador` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `torneo`
--

INSERT INTO `torneo` (`id_torneo`, `nombre_torneo`, `fecha_inicio`, `fecha_fin`, `ubicacion`, `deporte`, `tipo_torneo`, `fk_organizador`) VALUES
(1, 'Copa amigos 2', '2024-10-31', '2024-12-26', 'Cali', 'Fútbol', 'Copa', 1),
(2, 'Copa Tiernos', '2024-11-01', '2024-11-30', 'La playita', 'Fútbol', 'Copa', 1),
(5, 'Liga atmos', '2024-11-12', '2024-11-30', 'Cali', 'Baloncesto', 'Liga', 1),
(6, 'La liga esp', '2024-11-11', '2024-11-22', 'Medellín', 'Fútbol', 'Liga', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$GELQmP6xrUrChhcZG8rBWC$PGdZZ3UBKvL5Pnulja4JbGmrrW2PjjAnIZASY4P8zOE=', '2024-11-10 03:50:38.617081', 1, 'andresval', 'Andres', 'Vallejo', 'andreolv@gmail.com', 1, 1, '2024-10-23 00:42:39.000840'),
(4, 'pbkdf2_sha256$870000$WTaz92GReOT3Gi0mGCVtpF$cY39VvbRTFlLXYO1myiZqfZKk6BT6gSJUMq2GhM7BaI=', NULL, 0, 'pachito', 'Francisco', 'Ospina', 'micorreo1@correo.com', 0, 1, '2024-10-25 00:36:31.579703'),
(5, 'pbkdf2_sha256$870000$M3oXcpcuJrpVlpPwNs2v2f$ydxaoNlFOYo6Fzx0EC60ix05YlwUUuKdYW21dmTl7YA=', NULL, 0, '', 'Camilo', 'Rojas', 'micorreo2@correo.com', 1, 1, '2024-11-10 13:09:16.666453');

-- --------------------------------------------------------

--
-- Table structure for table `users_user_groups`
--

CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_user_permissions`
--

CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `encuentro`
--
ALTER TABLE `encuentro`
  ADD PRIMARY KEY (`id_encuentro`),
  ADD KEY `id_torneo_fke` (`id_torneo_fke`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indexes for table `participa`
--
ALTER TABLE `participa`
  ADD PRIMARY KEY (`id_participa`),
  ADD KEY `id_encuentro_fk` (`id_encuentro_fk`),
  ADD KEY `id_equipo_fk` (`id_equipo_fk`);

--
-- Indexes for table `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`id_torneo`),
  ADD KEY `fk_organizador` (`fk_organizador`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  ADD KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `encuentro`
--
ALTER TABLE `encuentro`
  MODIFY `id_encuentro` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `participa`
--
ALTER TABLE `participa`
  MODIFY `id_participa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `torneo`
--
ALTER TABLE `torneo`
  MODIFY `id_torneo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `encuentro`
--
ALTER TABLE `encuentro`
  ADD CONSTRAINT `encuentro_ibfk_1` FOREIGN KEY (`id_torneo_fke`) REFERENCES `torneo` (`id_torneo`) ON DELETE CASCADE;

--
-- Constraints for table `participa`
--
ALTER TABLE `participa`
  ADD CONSTRAINT `participa_ibfk_1` FOREIGN KEY (`id_encuentro_fk`) REFERENCES `encuentro` (`id_encuentro`) ON DELETE CASCADE,
  ADD CONSTRAINT `participa_ibfk_2` FOREIGN KEY (`id_equipo_fk`) REFERENCES `equipo` (`id_equipo`) ON DELETE CASCADE;

--
-- Constraints for table `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_ibfk_1` FOREIGN KEY (`fk_organizador`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_groups`
--
ALTER TABLE `users_user_groups`
  ADD CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);

--
-- Constraints for table `users_user_user_permissions`
--
ALTER TABLE `users_user_user_permissions`
  ADD CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
