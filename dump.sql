-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 14 mai 2025 à 10:19
-- Version du serveur : 8.0.42
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inventory`
--

-- --------------------------------------------------------

--
-- Structure de la table `ab_permission`
--

CREATE TABLE `ab_permission` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_permission`
--

INSERT INTO `ab_permission` (`id`, `name`) VALUES
(3, 'can_create'),
(4, 'can_delete'),
(1, 'can_edit'),
(2, 'can_read'),
(5, 'menu_access');

-- --------------------------------------------------------

--
-- Structure de la table `ab_permission_view`
--

CREATE TABLE `ab_permission_view` (
  `id` int NOT NULL,
  `permission_id` int DEFAULT NULL,
  `view_menu_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_permission_view`
--

INSERT INTO `ab_permission_view` (`id`, `permission_id`, `view_menu_id`) VALUES
(1, 1, 4),
(3, 1, 5),
(5, 1, 6),
(9, 1, 8),
(15, 1, 11),
(28, 1, 23),
(38, 1, 27),
(44, 1, 29),
(55, 1, 33),
(61, 1, 34),
(68, 1, 37),
(82, 1, 44),
(95, 1, 54),
(96, 1, 55),
(2, 2, 4),
(4, 2, 5),
(6, 2, 6),
(8, 2, 8),
(14, 2, 11),
(18, 2, 13),
(20, 2, 15),
(22, 2, 17),
(24, 2, 19),
(27, 2, 23),
(32, 2, 25),
(34, 2, 26),
(37, 2, 27),
(43, 2, 29),
(47, 2, 30),
(49, 2, 31),
(51, 2, 32),
(54, 2, 33),
(58, 2, 34),
(62, 2, 35),
(64, 2, 36),
(67, 2, 37),
(71, 2, 38),
(83, 2, 40),
(81, 2, 44),
(86, 2, 45),
(85, 2, 46),
(84, 2, 49),
(87, 2, 50),
(88, 2, 51),
(89, 2, 52),
(90, 2, 53),
(94, 2, 54),
(98, 2, 55),
(7, 3, 8),
(13, 3, 11),
(26, 3, 23),
(36, 3, 27),
(42, 3, 29),
(53, 3, 33),
(66, 3, 37),
(91, 3, 46),
(10, 4, 8),
(16, 4, 11),
(29, 4, 23),
(39, 4, 27),
(45, 4, 29),
(56, 4, 33),
(60, 4, 34),
(69, 4, 37),
(72, 4, 38),
(80, 4, 44),
(92, 4, 46),
(93, 4, 54),
(97, 4, 55),
(11, 5, 9),
(12, 5, 10),
(17, 5, 12),
(19, 5, 14),
(21, 5, 16),
(23, 5, 18),
(25, 5, 20),
(30, 5, 23),
(31, 5, 24),
(33, 5, 25),
(35, 5, 26),
(40, 5, 27),
(41, 5, 28),
(46, 5, 29),
(48, 5, 30),
(50, 5, 31),
(52, 5, 32),
(57, 5, 33),
(59, 5, 34),
(63, 5, 35),
(65, 5, 36),
(70, 5, 37),
(73, 5, 38),
(74, 5, 40),
(75, 5, 44),
(76, 5, 45),
(77, 5, 46),
(78, 5, 47),
(79, 5, 48);

-- --------------------------------------------------------

--
-- Structure de la table `ab_permission_view_role`
--

CREATE TABLE `ab_permission_view_role` (
  `id` int NOT NULL,
  `permission_view_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_permission_view_role`
--

INSERT INTO `ab_permission_view_role` (`id`, `permission_view_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(91, 3, 3),
(123, 3, 4),
(164, 3, 5),
(4, 4, 1),
(90, 4, 3),
(122, 4, 4),
(163, 4, 5),
(5, 5, 1),
(93, 5, 3),
(125, 5, 4),
(166, 5, 5),
(6, 6, 1),
(92, 6, 3),
(124, 6, 4),
(165, 6, 5),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(149, 26, 4),
(190, 26, 5),
(27, 27, 1),
(83, 27, 3),
(115, 27, 4),
(156, 27, 5),
(28, 28, 1),
(150, 28, 4),
(191, 28, 5),
(29, 29, 1),
(151, 29, 4),
(192, 29, 5),
(30, 30, 1),
(103, 30, 3),
(135, 30, 4),
(176, 30, 5),
(31, 31, 1),
(100, 31, 3),
(132, 31, 4),
(173, 31, 5),
(32, 32, 1),
(89, 32, 3),
(121, 32, 4),
(162, 32, 5),
(33, 33, 1),
(108, 33, 3),
(140, 33, 4),
(181, 33, 5),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(210, 36, 5),
(37, 37, 1),
(211, 37, 5),
(38, 38, 1),
(212, 38, 5),
(39, 39, 1),
(213, 39, 5),
(40, 40, 1),
(199, 40, 5),
(41, 41, 1),
(195, 41, 5),
(42, 42, 1),
(146, 42, 4),
(187, 42, 5),
(43, 43, 1),
(96, 43, 3),
(128, 43, 4),
(169, 43, 5),
(44, 44, 1),
(147, 44, 4),
(188, 44, 5),
(45, 45, 1),
(148, 45, 4),
(189, 45, 5),
(46, 46, 1),
(111, 46, 3),
(143, 46, 4),
(184, 46, 5),
(47, 47, 1),
(48, 48, 1),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(194, 51, 5),
(52, 52, 1),
(196, 52, 5),
(53, 53, 1),
(202, 53, 5),
(54, 54, 1),
(203, 54, 5),
(55, 55, 1),
(204, 55, 5),
(56, 56, 1),
(205, 56, 5),
(57, 57, 1),
(197, 57, 5),
(58, 58, 1),
(95, 58, 3),
(127, 58, 4),
(168, 58, 5),
(59, 59, 1),
(110, 59, 3),
(142, 59, 4),
(183, 59, 5),
(60, 60, 1),
(61, 61, 1),
(62, 62, 1),
(94, 62, 3),
(126, 62, 4),
(167, 62, 5),
(63, 63, 1),
(109, 63, 3),
(141, 63, 4),
(182, 63, 5),
(64, 64, 1),
(209, 64, 5),
(65, 65, 1),
(200, 65, 5),
(66, 66, 1),
(206, 66, 5),
(67, 67, 1),
(86, 67, 3),
(118, 67, 4),
(159, 67, 5),
(68, 68, 1),
(207, 68, 5),
(69, 69, 1),
(208, 69, 5),
(70, 70, 1),
(198, 70, 5),
(71, 71, 1),
(98, 71, 3),
(130, 71, 4),
(171, 71, 5),
(72, 72, 1),
(214, 72, 5),
(73, 73, 1),
(201, 73, 5),
(74, 74, 1),
(102, 74, 3),
(134, 74, 4),
(175, 74, 5),
(75, 75, 1),
(101, 75, 3),
(133, 75, 4),
(174, 75, 5),
(76, 76, 1),
(105, 76, 3),
(137, 76, 4),
(178, 76, 5),
(77, 77, 1),
(104, 77, 3),
(136, 77, 4),
(177, 77, 5),
(78, 78, 1),
(106, 78, 3),
(138, 78, 4),
(179, 78, 5),
(79, 79, 1),
(107, 79, 3),
(139, 79, 4),
(180, 79, 5),
(226, 80, 1),
(145, 80, 4),
(186, 80, 5),
(216, 81, 1),
(80, 81, 3),
(112, 81, 4),
(153, 81, 5),
(225, 82, 1),
(144, 82, 4),
(185, 82, 5),
(217, 83, 1),
(81, 83, 3),
(113, 83, 4),
(154, 83, 5),
(218, 84, 1),
(82, 84, 3),
(114, 84, 4),
(155, 84, 5),
(219, 85, 1),
(84, 85, 3),
(116, 85, 4),
(157, 85, 5),
(220, 86, 1),
(85, 86, 3),
(117, 86, 4),
(158, 86, 5),
(221, 87, 1),
(87, 87, 3),
(119, 87, 4),
(160, 87, 5),
(222, 88, 1),
(88, 88, 3),
(120, 88, 4),
(161, 88, 5),
(223, 89, 1),
(97, 89, 3),
(129, 89, 4),
(170, 89, 5),
(224, 90, 1),
(99, 90, 3),
(131, 90, 4),
(172, 90, 5),
(227, 91, 1),
(152, 91, 4),
(193, 91, 5),
(228, 92, 1),
(215, 92, 5);

-- --------------------------------------------------------

--
-- Structure de la table `ab_register_user`
--

CREATE TABLE `ab_register_user` (
  `id` int NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `username` varchar(512) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(512) NOT NULL,
  `registration_date` datetime DEFAULT NULL,
  `registration_hash` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ab_role`
--

CREATE TABLE `ab_role` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_role`
--

INSERT INTO `ab_role` (`id`, `name`) VALUES
(1, 'Admin'),
(5, 'Op'),
(2, 'Public'),
(4, 'User'),
(3, 'Viewer');

-- --------------------------------------------------------

--
-- Structure de la table `ab_user`
--

CREATE TABLE `ab_user` (
  `id` int NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `username` varchar(512) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `email` varchar(512) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_count` int DEFAULT NULL,
  `fail_login_count` int DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `changed_on` datetime DEFAULT NULL,
  `created_by_fk` int DEFAULT NULL,
  `changed_by_fk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_user`
--

INSERT INTO `ab_user` (`id`, `first_name`, `last_name`, `username`, `password`, `active`, `email`, `last_login`, `login_count`, `fail_login_count`, `created_on`, `changed_on`, `created_by_fk`, `changed_by_fk`) VALUES
(1, 'Admin', 'User', 'admin', 'pbkdf2:sha256:260000$UvpMJNKYUmzQyjrX$b6472bed6473a50dbf11735a6c3388906bf32729396fd4b37b3eccccf57bfec7', 1, 'admin@example.com', '2025-05-07 01:29:31', 1, 0, '2025-05-07 01:28:38', '2025-05-07 01:28:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ab_user_role`
--

CREATE TABLE `ab_user_role` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_user_role`
--

INSERT INTO `ab_user_role` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ab_view_menu`
--

CREATE TABLE `ab_view_menu` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ab_view_menu`
--

INSERT INTO `ab_view_menu` (`id`, `name`) VALUES
(16, 'Actions'),
(28, 'Admin'),
(22, 'Airflow'),
(26, 'Audit Logs'),
(7, 'AuthDBView'),
(21, 'AutocompleteView'),
(24, 'Browse'),
(45, 'Cluster Activity'),
(32, 'Configurations'),
(33, 'Connections'),
(49, 'DAG Code'),
(40, 'DAG Dependencies'),
(23, 'DAG Runs'),
(51, 'DAG Warnings'),
(55, 'DAG:7days_predictions'),
(54, 'DAG:make_prediction'),
(39, 'DagDependenciesView'),
(44, 'DAGs'),
(46, 'Datasets'),
(42, 'DevView'),
(48, 'Docs'),
(43, 'DocsView'),
(47, 'Documentation'),
(50, 'ImportError'),
(1, 'IndexView'),
(25, 'Jobs'),
(12, 'List Roles'),
(9, 'List Users'),
(3, 'LocaleView'),
(5, 'My Password'),
(6, 'My Profile'),
(4, 'Passwords'),
(20, 'Permission Pairs'),
(19, 'Permission Views'),
(15, 'Permissions'),
(35, 'Plugins'),
(37, 'Pools'),
(36, 'Providers'),
(41, 'RedocView'),
(18, 'Resources'),
(11, 'Roles'),
(10, 'Security'),
(34, 'SLA Misses'),
(29, 'Task Instances'),
(52, 'Task Logs'),
(30, 'Task Reschedules'),
(31, 'Triggers'),
(13, 'User Stats Chart'),
(14, 'User\'s Statistics'),
(8, 'Users'),
(2, 'UtilView'),
(27, 'Variables'),
(17, 'View Menus'),
(53, 'Website'),
(38, 'XComs');

-- --------------------------------------------------------

--
-- Structure de la table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('1949afb29106');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add stock', 8, 'add_stock'),
(30, 'Can change stock', 8, 'change_stock'),
(31, 'Can delete stock', 8, 'delete_stock'),
(32, 'Can view stock', 8, 'view_stock'),
(33, 'Can add supplier', 9, 'add_supplier'),
(34, 'Can change supplier', 9, 'change_supplier'),
(35, 'Can delete supplier', 9, 'delete_supplier'),
(36, 'Can view supplier', 9, 'view_supplier'),
(37, 'Can add purchase bill', 10, 'add_purchasebill'),
(38, 'Can change purchase bill', 10, 'change_purchasebill'),
(39, 'Can delete purchase bill', 10, 'delete_purchasebill'),
(40, 'Can view purchase bill', 10, 'view_purchasebill'),
(41, 'Can add purchase item', 11, 'add_purchaseitem'),
(42, 'Can change purchase item', 11, 'change_purchaseitem'),
(43, 'Can delete purchase item', 11, 'delete_purchaseitem'),
(44, 'Can view purchase item', 11, 'view_purchaseitem'),
(45, 'Can add purchase bill details', 12, 'add_purchasebilldetails'),
(46, 'Can change purchase bill details', 12, 'change_purchasebilldetails'),
(47, 'Can delete purchase bill details', 12, 'delete_purchasebilldetails'),
(48, 'Can view purchase bill details', 12, 'view_purchasebilldetails'),
(49, 'Can add sale bill', 13, 'add_salebill'),
(50, 'Can change sale bill', 13, 'change_salebill'),
(51, 'Can delete sale bill', 13, 'delete_salebill'),
(52, 'Can view sale bill', 13, 'view_salebill'),
(53, 'Can add sale item', 14, 'add_saleitem'),
(54, 'Can change sale item', 14, 'change_saleitem'),
(55, 'Can delete sale item', 14, 'delete_saleitem'),
(56, 'Can view sale item', 14, 'view_saleitem'),
(57, 'Can add sale bill details', 15, 'add_salebilldetails'),
(58, 'Can change sale bill details', 15, 'change_salebilldetails'),
(59, 'Can delete sale bill details', 15, 'delete_salebilldetails'),
(60, 'Can view sale bill details', 15, 'view_salebilldetails'),
(61, 'Can add sales prediction', 16, 'add_salesprediction'),
(62, 'Can change sales prediction', 16, 'change_salesprediction'),
(63, 'Can delete sales prediction', 16, 'delete_salesprediction'),
(64, 'Can view sales prediction', 16, 'view_salesprediction'),
(65, 'Can add sales forecast', 17, 'add_salesforecast'),
(66, 'Can change sales forecast', 17, 'change_salesforecast'),
(67, 'Can delete sales forecast', 17, 'delete_salesforecast'),
(68, 'Can view sales forecast', 17, 'view_salesforecast');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$nIq79NmbdQqy6LP37LA1Dt$TKENDww0MtVEOpncnozbSlV3ek6mtk2CIotdCid5+RY=', '2025-05-13 21:50:50.533057', 1, 'ali', '', '', '', 1, 1, '2025-04-12 18:47:54.173498');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `callback_request`
--

CREATE TABLE `callback_request` (
  `id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `priority_weight` int NOT NULL,
  `callback_data` json NOT NULL,
  `callback_type` varchar(20) NOT NULL,
  `processor_subdir` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `connection`
--

CREATE TABLE `connection` (
  `id` int NOT NULL,
  `conn_id` varchar(250) NOT NULL,
  `conn_type` varchar(500) NOT NULL,
  `description` text,
  `host` varchar(500) DEFAULT NULL,
  `schema` varchar(500) DEFAULT NULL,
  `login` text,
  `password` text,
  `port` int DEFAULT NULL,
  `is_encrypted` tinyint(1) DEFAULT NULL,
  `is_extra_encrypted` tinyint(1) DEFAULT NULL,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag`
--

CREATE TABLE `dag` (
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `root_dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `is_paused` tinyint(1) DEFAULT NULL,
  `is_subdag` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `last_parsed_time` timestamp(6) NULL DEFAULT NULL,
  `last_pickled` timestamp(6) NULL DEFAULT NULL,
  `last_expired` timestamp(6) NULL DEFAULT NULL,
  `scheduler_lock` tinyint(1) DEFAULT NULL,
  `pickle_id` int DEFAULT NULL,
  `fileloc` varchar(2000) DEFAULT NULL,
  `processor_subdir` varchar(2000) DEFAULT NULL,
  `owners` varchar(2000) DEFAULT NULL,
  `dag_display_name` varchar(2000) DEFAULT NULL,
  `description` text,
  `default_view` varchar(25) DEFAULT NULL,
  `schedule_interval` text,
  `timetable_description` varchar(1000) DEFAULT NULL,
  `dataset_expression` json DEFAULT NULL,
  `max_active_tasks` int NOT NULL,
  `max_active_runs` int DEFAULT NULL,
  `max_consecutive_failed_dag_runs` int NOT NULL,
  `has_task_concurrency_limits` tinyint(1) NOT NULL,
  `has_import_errors` tinyint(1) DEFAULT '0',
  `next_dagrun` timestamp(6) NULL DEFAULT NULL,
  `next_dagrun_data_interval_start` timestamp(6) NULL DEFAULT NULL,
  `next_dagrun_data_interval_end` timestamp(6) NULL DEFAULT NULL,
  `next_dagrun_create_after` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `dag`
--

INSERT INTO `dag` (`dag_id`, `root_dag_id`, `is_paused`, `is_subdag`, `is_active`, `last_parsed_time`, `last_pickled`, `last_expired`, `scheduler_lock`, `pickle_id`, `fileloc`, `processor_subdir`, `owners`, `dag_display_name`, `description`, `default_view`, `schedule_interval`, `timetable_description`, `dataset_expression`, `max_active_tasks`, `max_active_runs`, `max_consecutive_failed_dag_runs`, `has_task_concurrency_limits`, `has_import_errors`, `next_dagrun`, `next_dagrun_data_interval_start`, `next_dagrun_data_interval_end`, `next_dagrun_create_after`) VALUES
('7days_predictions', NULL, 0, 0, 1, '2025-05-14 10:19:21.788599', NULL, NULL, NULL, NULL, '/opt/airflow/airflow/dags/next_7days_dag.py', '/opt/airflow/airflow/dags', 'airflow', NULL, 'Prévision des ventes des 7 prochaines jours', 'grid', '{\"type\": \"timedelta\", \"attrs\": {\"days\": 1, \"seconds\": 0, \"microseconds\": 0}}', '', 'null', 16, 16, 0, 0, 0, '2025-05-14 00:00:00.000000', '2025-05-14 00:00:00.000000', '2025-05-15 00:00:00.000000', '2025-05-15 00:00:00.000000'),
('make_prediction', NULL, 0, 0, 1, '2025-05-14 10:19:21.804545', NULL, NULL, NULL, NULL, '/opt/airflow/airflow/dags/predict_dag.py', '/opt/airflow/airflow/dags', 'airflow', NULL, 'Prévision journalière des ventes par produit', 'grid', '{\"type\": \"timedelta\", \"attrs\": {\"days\": 1, \"seconds\": 0, \"microseconds\": 0}}', '', 'null', 16, 16, 0, 0, 0, '2025-05-14 03:55:00.000000', '2025-05-14 03:55:00.000000', '2025-05-15 03:55:00.000000', '2025-05-15 03:55:00.000000');

-- --------------------------------------------------------

--
-- Structure de la table `dagrun_dataset_event`
--

CREATE TABLE `dagrun_dataset_event` (
  `dag_run_id` int NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_code`
--

CREATE TABLE `dag_code` (
  `fileloc_hash` bigint NOT NULL,
  `fileloc` varchar(2000) NOT NULL,
  `last_updated` timestamp(6) NOT NULL,
  `source_code` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `dag_code`
--

INSERT INTO `dag_code` (`fileloc_hash`, `fileloc`, `last_updated`, `source_code`) VALUES
(50571813428714785, '/opt/airflow/airflow/dags/predict_dag.py', '2025-05-07 03:59:28.990143', 'from airflow import DAG\nfrom datetime import datetime, timedelta\nimport sys\nsys.path.append(\'/opt/airflow\')\nfrom include.functions import get_weather_condition, get_season, isHoliday, generate_prediction\nfrom airflow.operators.python import PythonOperator\nimport json\n\nwith DAG (\n    dag_id= \"make_prediction\",\n    start_date = datetime(2025,5,1,8,0,0),\n    description=\'Prévision journalière des ventes par produit\',\n    schedule_interval = timedelta(hours=24),\n    catchup=False,\n    dagrun_timeout= timedelta(minutes=2)\n) as dag:  \n    def fetch_weather():\n        data = {\n            \"weather\": get_weather_condition(\"Casablanca,MA\", 1),\n            \"season\": get_season(datetime.today().date()),\n            \"holiday\": isHoliday(datetime.today().date())\n        }\n        with open(\'/opt/airflow/include/weather.json\', \'w\') as f:\n            json.dump(data, f)\n        \n\n    def predict():\n        with open(\'/opt/airflow/include/weather.json\', \'r\') as f:    \n            context = json.load(f)\n        generate_prediction(context)  \n    fetch_weather_task = PythonOperator(\n        task_id=\'fetch_weather\',\n        python_callable=fetch_weather,\n    )\n\n    predict_sales_task = PythonOperator(\n        task_id=\'predict_sales\',\n        python_callable=predict,\n    )\n\n    fetch_weather_task >> predict_sales_task\n'),
(66224232360759892, '/opt/airflow/airflow/dags/next_7days_dag.py', '2025-05-10 23:39:39.977919', 'from airflow import DAG\nfrom datetime import datetime, timedelta\nimport sys\nsys.path.append(\'/opt/airflow\')\nfrom include.functions import next_7days_predictions\nfrom airflow.operators.python import PythonOperator\n\nwith DAG (\n    dag_id= \"7days_predictions\",\n    start_date = datetime(2025,5,1,23,0,0),\n    description=\'Prévision des ventes des 7 prochaines jours\',\n    schedule_interval = timedelta(hours=24),\n    catchup=False,\n    dagrun_timeout= timedelta(minutes=2)\n) as dag:  \n    \n    def predict():\n        next_7days_predictions() \n\n    predict_sales_task = PythonOperator(\n        task_id=\'predict_sales\',\n        python_callable=predict,\n    )\n\n');

-- --------------------------------------------------------

--
-- Structure de la table `dag_owner_attributes`
--

CREATE TABLE `dag_owner_attributes` (
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `owner` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_pickle`
--

CREATE TABLE `dag_pickle` (
  `id` int NOT NULL,
  `pickle` blob,
  `created_dttm` timestamp(6) NULL DEFAULT NULL,
  `pickle_hash` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_run`
--

CREATE TABLE `dag_run` (
  `id` int NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `queued_at` timestamp(6) NULL DEFAULT NULL,
  `execution_date` timestamp(6) NOT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `creating_job_id` int DEFAULT NULL,
  `external_trigger` tinyint(1) DEFAULT NULL,
  `run_type` varchar(50) NOT NULL,
  `conf` blob,
  `data_interval_start` timestamp(6) NULL DEFAULT NULL,
  `data_interval_end` timestamp(6) NULL DEFAULT NULL,
  `last_scheduling_decision` timestamp(6) NULL DEFAULT NULL,
  `dag_hash` varchar(32) DEFAULT NULL,
  `log_template_id` int DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `clear_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `dag_run`
--

INSERT INTO `dag_run` (`id`, `dag_id`, `queued_at`, `execution_date`, `start_date`, `end_date`, `state`, `run_id`, `creating_job_id`, `external_trigger`, `run_type`, `conf`, `data_interval_start`, `data_interval_end`, `last_scheduling_decision`, `dag_hash`, `log_template_id`, `updated_at`, `clear_number`) VALUES
(1, 'make_prediction', '2025-05-07 01:36:28.362299', '2025-05-07 01:30:00.000000', '2025-05-07 01:36:28.417539', '2025-05-07 01:36:31.421920', 'failed', 'scheduled__2025-05-07T01:30:00+00:00', 2, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:30:00.000000', '2025-05-07 01:35:00.000000', '2025-05-07 01:36:31.418593', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:36:31.423231', 0),
(2, 'make_prediction', '2025-05-07 01:40:00.595392', '2025-05-07 01:35:00.000000', '2025-05-07 01:40:00.624096', '2025-05-07 01:40:02.952540', 'failed', 'scheduled__2025-05-07T01:35:00+00:00', 2, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:35:00.000000', '2025-05-07 01:40:00.000000', '2025-05-07 01:40:02.950442', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:40:02.953146', 0),
(3, 'make_prediction', '2025-05-07 01:45:00.160412', '2025-05-07 01:40:00.000000', '2025-05-07 01:45:00.239643', '2025-05-07 01:45:03.533329', 'failed', 'scheduled__2025-05-07T01:40:00+00:00', 6, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:40:00.000000', '2025-05-07 01:45:00.000000', '2025-05-07 01:45:03.530381', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:45:03.534467', 0),
(4, 'make_prediction', '2025-05-07 01:50:01.025911', '2025-05-07 01:45:00.000000', '2025-05-07 01:50:01.070979', '2025-05-07 01:50:03.299515', 'failed', 'scheduled__2025-05-07T01:45:00+00:00', 8, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:45:00.000000', '2025-05-07 01:50:00.000000', '2025-05-07 01:50:03.297292', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:50:03.300567', 0),
(5, 'make_prediction', '2025-05-07 01:50:39.344864', '2025-05-07 01:50:39.328010', '2025-05-07 01:50:40.517046', '2025-05-07 01:50:42.763105', 'failed', 'manual__2025-05-07T01:50:39.328010+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 01:45:39.328010', '2025-05-07 01:50:39.328010', '2025-05-07 01:50:42.760753', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:50:42.763801', 0),
(6, 'make_prediction', '2025-05-07 01:50:53.859023', '2025-05-07 01:50:53.838373', '2025-05-07 01:50:54.690784', '2025-05-07 01:50:57.941142', 'failed', 'manual__2025-05-07T01:50:53.838373+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 01:45:53.838373', '2025-05-07 01:50:53.838373', '2025-05-07 01:50:57.938820', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:50:57.941733', 0),
(7, 'make_prediction', '2025-05-07 01:55:00.995053', '2025-05-07 01:50:00.000000', '2025-05-07 01:55:01.020265', '2025-05-07 01:55:03.219787', 'failed', 'scheduled__2025-05-07T01:50:00+00:00', 8, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:50:00.000000', '2025-05-07 01:55:00.000000', '2025-05-07 01:55:03.217608', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 01:55:03.220413', 0),
(8, 'make_prediction', '2025-05-07 02:00:00.340772', '2025-05-07 01:55:00.000000', '2025-05-07 02:00:00.365618', '2025-05-07 02:00:02.293552', 'failed', 'scheduled__2025-05-07T01:55:00+00:00', 8, 0, 'scheduled', 0x80057d942e, '2025-05-07 01:55:00.000000', '2025-05-07 02:00:00.000000', '2025-05-07 02:00:02.291622', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:00:02.294117', 0),
(9, 'make_prediction', '2025-05-07 02:05:00.593826', '2025-05-07 02:00:00.000000', '2025-05-07 02:05:00.619581', '2025-05-07 02:05:03.026447', 'failed', 'scheduled__2025-05-07T02:00:00+00:00', 8, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:00:00.000000', '2025-05-07 02:05:00.000000', '2025-05-07 02:05:03.024540', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:05:03.027005', 0),
(10, 'make_prediction', '2025-05-07 02:07:26.012337', '2025-05-07 02:07:25.990591', '2025-05-07 02:07:26.345326', '2025-05-07 02:07:29.352667', 'failed', 'manual__2025-05-07T02:07:25.990591+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 02:02:25.990591', '2025-05-07 02:07:25.990591', '2025-05-07 02:07:29.350675', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:07:29.353611', 0),
(11, 'make_prediction', '2025-05-07 02:10:01.079465', '2025-05-07 02:05:00.000000', '2025-05-07 02:10:01.113234', '2025-05-07 02:10:03.339112', 'failed', 'scheduled__2025-05-07T02:05:00+00:00', 15, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:05:00.000000', '2025-05-07 02:10:00.000000', '2025-05-07 02:10:03.336642', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:10:03.339999', 0),
(12, 'make_prediction', '2025-05-07 02:15:00.629330', '2025-05-07 02:10:00.000000', '2025-05-07 02:15:00.698252', '2025-05-07 02:15:02.905533', 'failed', 'scheduled__2025-05-07T02:10:00+00:00', 15, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:10:00.000000', '2025-05-07 02:15:00.000000', '2025-05-07 02:15:02.902985', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:15:02.906020', 0),
(13, 'make_prediction', '2025-05-07 02:19:15.785852', '2025-05-07 02:19:15.777607', '2025-05-07 02:19:16.469781', '2025-05-07 02:19:19.771728', 'failed', 'manual__2025-05-07T02:19:15.777607+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 02:14:15.777607', '2025-05-07 02:19:15.777607', '2025-05-07 02:19:19.769521', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:19:19.772343', 0),
(14, 'make_prediction', '2025-05-07 02:20:00.164096', '2025-05-07 02:15:00.000000', '2025-05-07 02:20:00.187687', '2025-05-07 02:20:03.179578', 'failed', 'scheduled__2025-05-07T02:15:00+00:00', 15, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:15:00.000000', '2025-05-07 02:20:00.000000', '2025-05-07 02:20:03.176953', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:20:03.180271', 0),
(15, 'make_prediction', '2025-05-07 02:22:58.629103', '2025-05-07 02:22:58.615831', '2025-05-07 02:22:59.205223', '2025-05-07 02:23:03.659015', 'failed', 'manual__2025-05-07T02:22:58.615831+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 02:17:58.615831', '2025-05-07 02:22:58.615831', '2025-05-07 02:23:03.657268', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:23:03.659589', 0),
(16, 'make_prediction', '2025-05-07 02:25:00.660073', '2025-05-07 02:20:00.000000', '2025-05-07 02:25:00.717664', '2025-05-07 02:25:05.126061', 'failed', 'scheduled__2025-05-07T02:20:00+00:00', 15, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:20:00.000000', '2025-05-07 02:25:00.000000', '2025-05-07 02:25:05.124080', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:25:05.126654', 0),
(17, 'make_prediction', '2025-05-07 02:25:37.400424', '2025-05-07 02:25:37.391229', '2025-05-07 02:25:38.729673', '2025-05-07 02:25:43.503475', 'failed', 'manual__2025-05-07T02:25:37.391229+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 02:20:37.391229', '2025-05-07 02:25:37.391229', '2025-05-07 02:25:43.501407', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:25:43.504112', 0),
(18, 'make_prediction', '2025-05-07 02:29:18.439598', '2025-05-07 02:29:18.429339', '2025-05-07 02:29:19.934622', '2025-05-07 02:29:25.811321', 'failed', 'manual__2025-05-07T02:29:18.429339+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 02:24:18.429339', '2025-05-07 02:29:18.429339', '2025-05-07 02:29:25.808822', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:29:25.812093', 0),
(19, 'make_prediction', '2025-05-07 02:30:00.499675', '2025-05-07 02:25:00.000000', '2025-05-07 02:30:00.521545', '2025-05-07 02:30:05.579649', 'failed', 'scheduled__2025-05-07T02:25:00+00:00', 15, 0, 'scheduled', 0x80057d942e, '2025-05-07 02:25:00.000000', '2025-05-07 02:30:00.000000', '2025-05-07 02:30:05.577807', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 02:30:05.580258', 0),
(20, 'make_prediction', '2025-05-07 03:18:01.641836', '2025-05-07 03:10:00.000000', '2025-05-07 03:18:01.700950', '2025-05-07 03:18:08.726700', 'failed', 'scheduled__2025-05-07T03:10:00+00:00', 31, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:10:00.000000', '2025-05-07 03:15:00.000000', '2025-05-07 03:18:08.722623', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:18:08.728973', 0),
(21, 'make_prediction', '2025-05-07 03:18:48.124702', '2025-05-07 03:18:48.100846', '2025-05-07 03:18:49.094242', '2025-05-07 03:18:56.378484', 'failed', 'manual__2025-05-07T03:18:48.100846+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 03:13:48.100846', '2025-05-07 03:18:48.100846', '2025-05-07 03:18:56.376310', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:18:56.378989', 0),
(22, 'make_prediction', '2025-05-07 03:20:00.851520', '2025-05-07 03:15:00.000000', '2025-05-07 03:20:00.936317', '2025-05-07 03:20:06.076528', 'failed', 'scheduled__2025-05-07T03:15:00+00:00', 31, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:15:00.000000', '2025-05-07 03:20:00.000000', '2025-05-07 03:20:06.074076', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:20:06.077273', 0),
(23, 'make_prediction', '2025-05-07 03:25:00.308541', '2025-05-07 03:20:00.000000', '2025-05-07 03:25:00.389618', '2025-05-07 03:25:05.285448', 'failed', 'scheduled__2025-05-07T03:20:00+00:00', 31, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:20:00.000000', '2025-05-07 03:25:00.000000', '2025-05-07 03:25:05.283333', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:25:05.285973', 0),
(24, 'make_prediction', '2025-05-07 03:30:00.462930', '2025-05-07 03:25:00.000000', '2025-05-07 03:30:00.555086', '2025-05-07 03:30:06.754266', 'failed', 'scheduled__2025-05-07T03:25:00+00:00', 31, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:25:00.000000', '2025-05-07 03:30:00.000000', '2025-05-07 03:30:06.752440', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:30:06.754875', 0),
(25, 'make_prediction', '2025-05-07 03:35:00.064106', '2025-05-07 03:30:00.000000', '2025-05-07 03:35:00.089656', '2025-05-07 03:35:06.123454', 'failed', 'scheduled__2025-05-07T03:30:00+00:00', 31, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:30:00.000000', '2025-05-07 03:35:00.000000', '2025-05-07 03:35:06.120817', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:35:06.124206', 0),
(26, 'make_prediction', '2025-05-07 03:40:00.276970', '2025-05-07 03:35:00.000000', '2025-05-07 03:40:00.326651', '2025-05-07 03:40:07.044926', 'failed', 'scheduled__2025-05-07T03:35:00+00:00', 44, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:35:00.000000', '2025-05-07 03:40:00.000000', '2025-05-07 03:40:07.042456', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:40:07.045884', 0),
(27, 'make_prediction', '2025-05-07 03:45:00.018839', '2025-05-07 03:40:00.000000', '2025-05-07 03:45:00.048143', '2025-05-07 03:45:04.055158', 'failed', 'scheduled__2025-05-07T03:40:00+00:00', 44, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:40:00.000000', '2025-05-07 03:45:00.000000', '2025-05-07 03:45:04.052727', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:45:04.055728', 0),
(28, 'make_prediction', '2025-05-07 03:50:00.521434', '2025-05-07 03:45:00.000000', '2025-05-07 03:50:00.562427', '2025-05-07 03:50:06.427384', 'failed', 'scheduled__2025-05-07T03:45:00+00:00', 49, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:45:00.000000', '2025-05-07 03:50:00.000000', '2025-05-07 03:50:06.425217', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:50:06.428234', 0),
(29, 'make_prediction', '2025-05-07 03:50:48.350166', '2025-05-07 03:50:48.329117', '2025-05-07 03:50:50.039986', '2025-05-07 03:50:55.330033', 'failed', 'manual__2025-05-07T03:50:48.329117+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 03:45:48.329117', '2025-05-07 03:50:48.329117', '2025-05-07 03:50:55.328100', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:50:55.330529', 0),
(30, 'make_prediction', '2025-05-07 03:53:27.639042', '2025-05-07 03:53:27.623730', '2025-05-07 03:53:28.143336', '2025-05-07 03:53:32.963297', 'success', 'manual__2025-05-07T03:53:27.623730+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 03:48:27.623730', '2025-05-07 03:53:27.623730', '2025-05-07 03:53:32.960548', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:53:32.964008', 0),
(31, 'make_prediction', '2025-05-07 03:55:00.088616', '2025-05-07 03:50:00.000000', '2025-05-07 03:55:00.113996', '2025-05-07 03:55:05.247397', 'success', 'scheduled__2025-05-07T03:50:00+00:00', 49, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:50:00.000000', '2025-05-07 03:55:00.000000', '2025-05-07 03:55:05.243777', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:55:05.248787', 0),
(32, 'make_prediction', '2025-05-07 03:55:03.298871', '2025-05-07 03:55:03.283638', '2025-05-07 03:55:04.328207', '2025-05-07 03:55:10.344172', 'success', 'manual__2025-05-07T03:55:03.283638+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-07 03:50:03.283638', '2025-05-07 03:55:03.283638', '2025-05-07 03:55:10.341995', '9c7c14a9c0bed1501db2f9eb96f110d3', 2, '2025-05-07 03:55:10.344906', 0),
(33, 'make_prediction', '2025-05-07 14:13:40.197512', '2025-05-07 14:13:40.175294', '2025-05-07 14:13:41.564517', '2025-05-07 14:13:47.707346', 'success', 'manual__2025-05-07T14:13:40.175294+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-06 14:13:40.175294', '2025-05-07 14:13:40.175294', '2025-05-07 14:13:47.704861', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-07 14:13:47.708329', 0),
(34, 'make_prediction', '2025-05-07 14:19:56.329539', '2025-05-07 14:19:56.320384', '2025-05-07 14:19:57.139479', '2025-05-07 14:20:02.852043', 'success', 'manual__2025-05-07T14:19:56.320384+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-06 14:19:56.320384', '2025-05-07 14:19:56.320384', '2025-05-07 14:20:02.849653', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-07 14:20:02.852906', 0),
(35, 'make_prediction', '2025-05-07 14:21:19.664586', '2025-05-07 14:21:19.655687', '2025-05-07 14:21:20.920707', '2025-05-07 14:21:26.412717', 'success', 'manual__2025-05-07T14:21:19.655687+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-06 14:21:19.655687', '2025-05-07 14:21:19.655687', '2025-05-07 14:21:26.410601', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-07 14:21:26.413221', 0),
(36, 'make_prediction', '2025-05-07 14:21:45.245509', '2025-05-07 14:21:45.226145', '2025-05-07 14:21:46.472452', '2025-05-07 14:21:51.289146', 'success', 'manual__2025-05-07T14:21:45.226145+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-06 14:21:45.226145', '2025-05-07 14:21:45.226145', '2025-05-07 14:21:51.286478', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-07 14:21:51.289720', 0),
(37, 'make_prediction', '2025-05-07 14:22:14.505592', '2025-05-07 14:22:14.496622', '2025-05-07 14:22:15.482916', '2025-05-07 14:22:20.600222', 'success', 'manual__2025-05-07T14:22:14.496622+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-06 14:22:14.496622', '2025-05-07 14:22:14.496622', '2025-05-07 14:22:20.598004', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-07 14:22:20.600743', 0),
(38, 'make_prediction', '2025-05-09 22:49:53.128032', '2025-05-07 03:55:00.000000', '2025-05-09 22:49:53.180433', '2025-05-09 22:50:06.422260', 'success', 'scheduled__2025-05-07T03:55:00+00:00', 72, 0, 'scheduled', 0x80057d942e, '2025-05-07 03:55:00.000000', '2025-05-08 03:55:00.000000', '2025-05-09 22:50:06.419625', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-09 22:50:06.423283', 0),
(39, 'make_prediction', '2025-05-09 22:49:53.300761', '2025-05-08 03:55:00.000000', '2025-05-09 22:49:53.348625', '2025-05-09 22:50:06.413109', 'success', 'scheduled__2025-05-08T03:55:00+00:00', 72, 0, 'scheduled', 0x80057d942e, '2025-05-08 03:55:00.000000', '2025-05-09 03:55:00.000000', '2025-05-09 22:50:06.410374', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-09 22:50:06.414123', 0),
(40, 'make_prediction', '2025-05-10 03:55:00.269264', '2025-05-09 03:55:00.000000', '2025-05-10 03:55:00.316432', '2025-05-10 03:55:07.864612', 'success', 'scheduled__2025-05-09T03:55:00+00:00', 78, 0, 'scheduled', 0x80057d942e, '2025-05-09 03:55:00.000000', '2025-05-10 03:55:00.000000', '2025-05-10 03:55:07.862357', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-10 03:55:07.865424', 0),
(41, 'make_prediction', '2025-05-10 19:47:58.268596', '2025-05-10 19:47:58.242113', '2025-05-10 19:47:59.064083', '2025-05-10 19:48:08.128072', 'success', 'manual__2025-05-10T19:47:58.242113+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-09 19:47:58.242113', '2025-05-10 19:47:58.242113', '2025-05-10 19:48:08.125166', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-10 19:48:08.129159', 0),
(42, '7days_predictions', '2025-05-10 23:39:54.999791', '2025-05-09 00:00:00.000000', '2025-05-10 23:39:55.025949', '2025-05-10 23:39:57.267022', 'failed', 'scheduled__2025-05-09T00:00:00+00:00', 82, 0, 'scheduled', 0x80057d942e, '2025-05-09 00:00:00.000000', '2025-05-10 00:00:00.000000', '2025-05-10 23:39:57.264768', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-10 23:39:57.267606', 0),
(43, '7days_predictions', '2025-05-11 00:31:55.636871', '2025-05-10 00:00:00.000000', '2025-05-11 00:31:55.704930', '2025-05-11 00:32:04.844339', 'failed', 'scheduled__2025-05-10T00:00:00+00:00', 86, 0, 'scheduled', 0x80057d942e, '2025-05-10 00:00:00.000000', '2025-05-11 00:00:00.000000', '2025-05-11 00:32:04.841890', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 00:32:04.845250', 0),
(44, '7days_predictions', '2025-05-11 00:32:40.586381', '2025-05-11 00:32:40.561023', '2025-05-11 00:32:41.688713', '2025-05-11 00:32:46.796704', 'failed', 'manual__2025-05-11T00:32:40.561023+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 00:32:40.561023', '2025-05-11 00:32:40.561023', '2025-05-11 00:32:46.794566', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 00:32:46.797331', 0),
(45, '7days_predictions', '2025-05-11 00:35:15.645819', '2025-05-11 00:35:15.631833', '2025-05-11 00:35:16.103117', '2025-05-11 00:35:21.218784', 'failed', 'manual__2025-05-11T00:35:15.631833+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 00:35:15.631833', '2025-05-11 00:35:15.631833', '2025-05-11 00:35:21.216915', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 00:35:21.219353', 0),
(46, '7days_predictions', '2025-05-11 00:39:26.505471', '2025-05-11 00:39:26.480227', '2025-05-11 00:39:27.124552', '2025-05-11 00:39:33.089390', 'failed', 'manual__2025-05-11T00:39:26.480227+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 00:39:26.480227', '2025-05-11 00:39:26.480227', '2025-05-11 00:39:33.087278', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 00:39:33.089891', 0),
(47, '7days_predictions', '2025-05-11 01:23:39.582608', '2025-05-11 01:23:39.572376', '2025-05-11 01:23:40.596180', '2025-05-11 01:23:45.759425', 'failed', 'manual__2025-05-11T01:23:39.572376+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 01:23:39.572376', '2025-05-11 01:23:39.572376', '2025-05-11 01:23:45.757700', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 01:23:45.759980', 0),
(48, '7days_predictions', '2025-05-11 01:26:01.160212', '2025-05-11 01:26:01.145823', '2025-05-11 01:26:02.023062', '2025-05-11 01:26:06.358160', 'failed', 'manual__2025-05-11T01:26:01.145823+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 01:26:01.145823', '2025-05-11 01:26:01.145823', '2025-05-11 01:26:06.355217', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 01:26:06.358695', 0),
(49, '7days_predictions', '2025-05-11 01:33:57.698463', '2025-05-11 01:33:57.689314', '2025-05-11 01:33:58.887749', '2025-05-11 01:34:04.183657', 'failed', 'manual__2025-05-11T01:33:57.689314+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 01:33:57.689314', '2025-05-11 01:33:57.689314', '2025-05-11 01:34:04.181416', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 01:34:04.184216', 0),
(50, '7days_predictions', '2025-05-11 02:27:10.039402', '2025-05-11 02:27:10.029659', '2025-05-11 02:27:11.855778', '2025-05-11 02:27:17.117803', 'failed', 'manual__2025-05-11T02:27:10.029659+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:27:10.029659', '2025-05-11 02:27:10.029659', '2025-05-11 02:27:17.114808', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:27:17.118424', 0),
(51, '7days_predictions', '2025-05-11 02:29:18.978911', '2025-05-11 02:29:18.968972', '2025-05-11 02:29:19.423509', '2025-05-11 02:29:25.094658', 'failed', 'manual__2025-05-11T02:29:18.968972+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:29:18.968972', '2025-05-11 02:29:18.968972', '2025-05-11 02:29:25.091994', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:29:25.095425', 0),
(52, '7days_predictions', '2025-05-11 02:30:27.119845', '2025-05-11 02:30:27.104891', '2025-05-11 02:30:28.626370', '2025-05-11 02:30:33.081563', 'failed', 'manual__2025-05-11T02:30:27.104891+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:30:27.104891', '2025-05-11 02:30:27.104891', '2025-05-11 02:30:33.079200', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:30:33.082224', 0),
(53, '7days_predictions', '2025-05-11 02:38:31.581141', '2025-05-11 02:38:31.557226', '2025-05-11 02:38:32.572175', '2025-05-11 02:38:37.752809', 'failed', 'manual__2025-05-11T02:38:31.557226+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:38:31.557226', '2025-05-11 02:38:31.557226', '2025-05-11 02:38:37.750528', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:38:37.753885', 0),
(54, '7days_predictions', '2025-05-11 02:40:54.784675', '2025-05-11 02:40:54.776045', '2025-05-11 02:40:55.459246', '2025-05-11 02:41:00.559502', 'failed', 'manual__2025-05-11T02:40:54.776045+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:40:54.776045', '2025-05-11 02:40:54.776045', '2025-05-11 02:41:00.557291', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:41:00.560209', 0),
(55, '7days_predictions', '2025-05-11 02:48:14.202271', '2025-05-11 02:48:14.193352', '2025-05-11 02:48:15.669800', '2025-05-11 02:48:20.751665', 'success', 'manual__2025-05-11T02:48:14.193352+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:48:14.193352', '2025-05-11 02:48:14.193352', '2025-05-11 02:48:20.749773', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:48:20.752359', 0),
(56, '7days_predictions', '2025-05-11 02:51:39.782296', '2025-05-11 02:51:39.773715', '2025-05-11 02:51:40.801329', '2025-05-11 02:51:45.988499', 'success', 'manual__2025-05-11T02:51:39.773715+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 02:51:39.773715', '2025-05-11 02:51:39.773715', '2025-05-11 02:51:45.985612', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 02:51:45.989206', 0),
(57, '7days_predictions', '2025-05-11 03:04:11.335099', '2025-05-11 03:04:11.320817', '2025-05-11 03:04:12.246349', '2025-05-11 03:04:17.793320', 'failed', 'manual__2025-05-11T03:04:11.320817+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 03:04:11.320817', '2025-05-11 03:04:11.320817', '2025-05-11 03:04:17.789957', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 03:04:17.794067', 0),
(58, '7days_predictions', '2025-05-11 03:06:45.442141', '2025-05-11 03:06:45.424320', '2025-05-11 03:06:46.795128', '2025-05-11 03:06:52.739411', 'success', 'manual__2025-05-11T03:06:45.424320+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 03:06:45.424320', '2025-05-11 03:06:45.424320', '2025-05-11 03:06:52.736324', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 03:06:52.740049', 0),
(59, '7days_predictions', '2025-05-11 03:08:48.817631', '2025-05-11 03:08:48.800610', '2025-05-11 03:08:49.077855', '2025-05-11 03:08:55.286050', 'success', 'manual__2025-05-11T03:08:48.800610+00:00', NULL, 1, 'manual', 0x80057d942e, '2025-05-10 03:08:48.800610', '2025-05-11 03:08:48.800610', '2025-05-11 03:08:55.283706', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-11 03:08:55.286668', 0),
(60, 'make_prediction', '2025-05-11 11:48:55.884513', '2025-05-10 03:55:00.000000', '2025-05-11 11:48:55.936367', '2025-05-11 11:49:04.076891', 'success', 'scheduled__2025-05-10T03:55:00+00:00', 105, 0, 'scheduled', 0x80057d942e, '2025-05-10 03:55:00.000000', '2025-05-11 03:55:00.000000', '2025-05-11 11:49:04.074368', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-11 11:49:04.077911', 0),
(61, 'make_prediction', '2025-05-12 14:04:13.732792', '2025-05-11 03:55:00.000000', '2025-05-12 14:04:13.790585', '2025-05-12 14:04:22.799617', 'success', 'scheduled__2025-05-11T03:55:00+00:00', 108, 0, 'scheduled', 0x80057d942e, '2025-05-11 03:55:00.000000', '2025-05-12 03:55:00.000000', '2025-05-12 14:04:22.794794', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-12 14:04:22.801850', 0),
(62, '7days_predictions', '2025-05-12 14:04:13.756158', '2025-05-11 00:00:00.000000', '2025-05-12 14:04:13.790306', '2025-05-12 14:04:27.815938', 'failed', 'scheduled__2025-05-11T00:00:00+00:00', 108, 0, 'scheduled', 0x80057d942e, '2025-05-11 00:00:00.000000', '2025-05-12 00:00:00.000000', '2025-05-12 14:04:27.812939', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-12 14:04:27.816595', 0),
(63, '7days_predictions', '2025-05-13 21:48:59.321784', '2025-05-12 00:00:00.000000', '2025-05-13 21:48:59.382401', '2025-05-13 21:49:11.420821', 'failed', 'scheduled__2025-05-12T00:00:00+00:00', 112, 0, 'scheduled', 0x80057d942e, '2025-05-12 00:00:00.000000', '2025-05-13 00:00:00.000000', '2025-05-13 21:49:11.418524', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-13 21:49:11.421466', 0),
(64, 'make_prediction', '2025-05-13 21:48:59.345302', '2025-05-12 03:55:00.000000', '2025-05-13 21:48:59.382677', '2025-05-13 21:49:07.396300', 'success', 'scheduled__2025-05-12T03:55:00+00:00', 112, 0, 'scheduled', 0x80057d942e, '2025-05-12 03:55:00.000000', '2025-05-13 03:55:00.000000', '2025-05-13 21:49:07.393683', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-13 21:49:07.397464', 0),
(65, '7days_predictions', '2025-05-14 00:00:01.013867', '2025-05-13 00:00:00.000000', '2025-05-14 00:00:01.051928', '2025-05-14 00:00:08.085768', 'failed', 'scheduled__2025-05-13T00:00:00+00:00', 112, 0, 'scheduled', 0x80057d942e, '2025-05-13 00:00:00.000000', '2025-05-14 00:00:00.000000', '2025-05-14 00:00:08.084022', '1a6f51dd45cff8089ef4ce5c4f73dc33', 2, '2025-05-14 00:00:08.086284', 0),
(66, 'make_prediction', '2025-05-14 10:04:28.177882', '2025-05-13 03:55:00.000000', '2025-05-14 10:04:28.235262', '2025-05-14 10:04:46.409014', 'success', 'scheduled__2025-05-13T03:55:00+00:00', 117, 0, 'scheduled', 0x80057d942e, '2025-05-13 03:55:00.000000', '2025-05-14 03:55:00.000000', '2025-05-14 10:04:46.406776', '1864fab217910879c20dacc3df2e9397', 2, '2025-05-14 10:04:46.409846', 0);

-- --------------------------------------------------------

--
-- Structure de la table `dag_run_note`
--

CREATE TABLE `dag_run_note` (
  `user_id` int DEFAULT NULL,
  `dag_run_id` int NOT NULL,
  `content` text,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_schedule_dataset_reference`
--

CREATE TABLE `dag_schedule_dataset_reference` (
  `dataset_id` int NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_tag`
--

CREATE TABLE `dag_tag` (
  `name` varchar(100) NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dag_warning`
--

CREATE TABLE `dag_warning` (
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `warning_type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dataset`
--

CREATE TABLE `dataset` (
  `id` int NOT NULL,
  `uri` varchar(3000) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `extra` json NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `is_orphaned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dataset_dag_run_queue`
--

CREATE TABLE `dataset_dag_run_queue` (
  `dataset_id` int NOT NULL,
  `target_dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dataset_event`
--

CREATE TABLE `dataset_event` (
  `id` int NOT NULL,
  `dataset_id` int NOT NULL,
  `extra` json NOT NULL,
  `source_task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `source_dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `source_run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `source_map_index` int DEFAULT '-1',
  `timestamp` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'inventory', 'category'),
(17, 'inventory', 'salesforecast'),
(16, 'inventory', 'salesprediction'),
(8, 'inventory', 'stock'),
(6, 'sessions', 'session'),
(10, 'transactions', 'purchasebill'),
(12, 'transactions', 'purchasebilldetails'),
(11, 'transactions', 'purchaseitem'),
(13, 'transactions', 'salebill'),
(15, 'transactions', 'salebilldetails'),
(14, 'transactions', 'saleitem'),
(9, 'transactions', 'supplier');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-12 18:43:35.471858'),
(2, 'auth', '0001_initial', '2025-04-12 18:43:43.999611'),
(3, 'admin', '0001_initial', '2025-04-12 18:43:46.253567'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-12 18:43:46.297574'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-12 18:43:46.318575'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-12 18:43:47.334820'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-12 18:43:47.934025'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-12 18:43:48.757964'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-12 18:43:48.798176'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-12 18:43:49.690304'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-12 18:43:49.720568'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-12 18:43:49.755098'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-12 18:43:50.223220'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-12 18:43:50.635980'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-12 18:43:51.039553'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-12 18:43:51.065536'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-12 18:43:51.515121'),
(18, 'sessions', '0001_initial', '2025-04-12 18:43:52.267534'),
(19, 'inventory', '0001_initial', '2025-04-12 18:46:39.339045'),
(20, 'transactions', '0001_initial', '2025-04-12 18:47:01.424231'),
(21, 'inventory', '0002_stock_discount_stock_price', '2025-04-12 20:56:56.494963'),
(22, 'inventory', '0003_salesprediction', '2025-04-29 18:41:54.241233'),
(23, 'inventory', '0004_salesforecast', '2025-05-10 23:26:37.403512');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4dpdaognt10xuczael7jt033huyu9ck7', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7ccf:IZAvWJ0wgq94aaQPeOfltf2YOvuCz74VoCVFm8Z1D2o', '2025-05-07 16:06:53.355507'),
('5julf96j8jfosnbha7anumpr8a9h9zke', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uA2rY:RRuYcJEPgSWfjrMdbkDMmjqJrYoDpMzBlYoZsYs651U', '2025-05-14 08:32:16.900346'),
('630hlglediepp1g7jyg1928anqd27s50', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7YzV:wdpZ4ZrKU5Be3JUH6aIJPZXfo0mSoCxGX8lrWkTqZNY', '2025-05-07 12:14:13.524565'),
('94l7i7c4y4eshk5y9de7gn68ltzh4g6j', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uExWU:-D_k2gdej6VzBG0UTvurXRZNwNNaS3grOkRIfW3glCY', '2025-05-27 21:50:50.550092'),
('9oaxxdygwhsxmv78lo36szeqi7vlqtgp', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uAGyQ:robFhTQWGHYDw3KPBSTnlETtkVNjrjQkk7I5KkPfSFA', '2025-05-14 23:36:18.810259'),
('auz8miwq18ycwcadt3o93s5hjpd4bosk', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uAWId:MF54RGEBRiI_Z8l3PnugLFqtpCG1nMj3fbEApkp2_8o', '2025-05-15 15:58:11.412003'),
('blma8w5v9sqydbwbt5szy2nwxm9kikmu', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7azw:Qc-QTE0jUrhbp8qYkMYjW9RdQT7AD9ul3jsPehIeLvk', '2025-05-07 14:22:48.884540'),
('cyf0ioxn9vvpe8cgd2rmsgy4ljajqo9f', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7NWK:feR7Ehqqe5HkMSeebQB0iUZdS5gomHdYRxruU0BgKc8', '2025-05-06 23:59:20.691531'),
('dsjmlwjkpgicb5camu6zxx0zitic94vb', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7cum:QKHFQVf4PlXa_EE83eN6KYkoHE5CyL-wHcmdhE-lqns', '2025-05-07 16:25:36.692787'),
('f05yb683lk8a5nqna1yqqhewqqiflgbt', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7Ykd:VwLj0VEjkP_qs_eS47o6EUs1qp-qqH0cIJImRHtNTQU', '2025-05-07 11:58:51.871386'),
('h23non2bdy7tk62u0c39az1oys4520wo', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u3fta:cerYF2zfGikVne7ylWLbEPxrvdgOLL_X5B0XFgAFueo', '2025-04-26 18:48:02.552109'),
('hrmsusmdmzd1jcyszix56qzlxt036ngu', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uA2l4:CRwvsJM4Y8y_Jpb7nzVuAgEwS8_rI_Bu0ORxDh59b24', '2025-05-14 08:25:34.902605'),
('hsszjfhm6zf6cg9ofbxdwea6fakfcnmt', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7Yke:vAGBR3OT9QftqHMrRgcHNDg4YdVD8FNM6kQgQB8KMBg', '2025-05-07 11:58:52.443437'),
('hubyce4cz7j0azpkvbb7fnnhs00xnplg', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7NiH:HWXZBsOqrg0zZxPStvLyKpeeiyRmUejJfRE91GK3MSQ', '2025-05-07 00:11:41.444912'),
('i1j26klqoi19ycdb3ltven5nt2kejq7y', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uA2rY:RRuYcJEPgSWfjrMdbkDMmjqJrYoDpMzBlYoZsYs651U', '2025-05-14 08:32:16.527857'),
('iebjp2759rsq393f8s4gkbq087s24y1n', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u9LHr:sjIiScRIlfcoDkJjNRrCnff9U7aWYb7m6XoEtSAWTyo', '2025-05-12 10:00:31.797515'),
('ixs6y6xjjjh06pkbnpnv1bny4wmdv1a5', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uAWfA:T4MTyqn-ozamZFUD5hpJOtB3LQm9tdVTbho9wmBOtDw', '2025-05-15 16:21:28.117602'),
('j5pwi90k59xxdn9j697xfc7tmrvfp7bt', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7b1R:04wmgS8rW9dVjLZl3bYlIsAqX7vIYoBPMfzPIR33xyY', '2025-05-07 14:24:21.974732'),
('lb1cms20m7u134xply4397tct73ykb6v', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uA30E:nYNJYAy9SLuuuKGDyJSKcBdkq3L_fFTy4WleALEqGSU', '2025-05-14 08:41:14.238006'),
('o1bp3gvlnkggq6wjs1n278o8mi6yovep', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7Ycg:ZxpBgpdTJlhb6Cp8aD8OL9oAHz_Cyhc-fPLNsjBRhPc', '2025-05-07 11:50:38.065997'),
('oqswjzwu6cfbk6wa472b2kysvka5dwwz', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uAFho:aMZ8qslCNsTWdV4Lc7MPXviXIpwR7T6EXQqzmiJewRE', '2025-05-14 22:15:04.862350'),
('puvqwbv9rmt2voj80c8eyahcim7obwxe', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u8OkE:bXb1noltJDelA9MMZq8Xsrmic_vVcO_KXB0i37UpG8s', '2025-05-09 19:29:54.479048'),
('qv5278vi06ynylollnh4votqk53q32x6', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uCThY:Vyjb1azIUoaAG70zCY9D2T4jAaZWieO9DXYarK2paFk', '2025-05-21 01:36:00.894789'),
('r5h04i3omv874zu9kwnuo5k9xo97j3eo', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u91yE:V7js_Q7OmlV2oUSZgjnUs0vaaKMSSZH01oqMB7nq00M', '2025-05-11 13:22:58.947257'),
('sjqi6kgr486d6o1rx55yh9fjkm5qp5lc', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7LT6:MFqZZhsTytaGH17v1xYKK6Tr1Eb6EcExIHh-SShImQA', '2025-05-06 21:47:52.341463'),
('tcqrqyx00or50y9mkdv819e293jurffi', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1uAWDE:mPIkldJXr98Tf43BeBjNduLfCBW7LH9fkK7FO9R4ddg', '2025-05-15 15:52:36.284307'),
('x89doutazspwmhh04spt76p9u5kahh4p', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7YfL:ZgSCJ551B0BZY2C0byacDAp8anWMWShfHYuHnmIAjU4', '2025-05-07 11:53:23.604182'),
('zsmdbs4p7trhwiddbj2tu35qrcjkkgb8', '.eJxVjMEOwiAQRP-FsyFZWhbw6N1vIAsLUjWQlPbU-O-2SQ96m8x7M5vwtC7Frz3NfmJxFSAuv12g-Er1APyk-mgytrrMU5CHIk_a5b1xet9O9--gUC_7erCOnVYuxzxGp5EgQw4mmMSKEDlYxj0z4hgt2YExg9EIFJnV6EB8vvw6OIQ:1u7Ng3:39JiF1vQiDUn6tep8RAAQuYNGa3QD8U9PG9ajx-sftg', '2025-05-07 00:09:23.539461');

-- --------------------------------------------------------

--
-- Structure de la table `import_error`
--

CREATE TABLE `import_error` (
  `id` int NOT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `filename` varchar(1024) DEFAULT NULL,
  `stacktrace` text,
  `processor_subdir` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_category`
--

CREATE TABLE `inventory_category` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inventory_category`
--

INSERT INTO `inventory_category` (`id`, `name`, `is_deleted`) VALUES
(1, 'Toys', 0),
(2, 'Groceries', 0),
(3, 'Furniture', 0),
(4, 'Electronics', 0),
(5, 'Clothing', 0);

-- --------------------------------------------------------

--
-- Structure de la table `inventory_salesforecast`
--

CREATE TABLE `inventory_salesforecast` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `predictions` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inventory_salesforecast`
--

INSERT INTO `inventory_salesforecast` (`id`, `date`, `predictions`) VALUES
(2, '2025-05-11', '[10822, 10773, 10734, 10691, 10649, 10618, 10588]');

-- --------------------------------------------------------

--
-- Structure de la table `inventory_salesprediction`
--

CREATE TABLE `inventory_salesprediction` (
  `id` int NOT NULL,
  `predicted_units` double NOT NULL,
  `weather_condition` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `seasonality` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `holiday` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `day_offset` int NOT NULL,
  `stock_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inventory_salesprediction`
--

INSERT INTO `inventory_salesprediction` (`id`, `predicted_units`, `weather_condition`, `seasonality`, `holiday`, `date`, `day_offset`, `stock_id`) VALUES
(292, 33.822547912597656, 'Sunny', 'Spring', 0, '2025-05-10', 1, 1),
(293, 108.48384857177734, 'Sunny', 'Spring', 0, '2025-05-10', 1, 2),
(294, 108.10821533203125, 'Sunny', 'Spring', 0, '2025-05-10', 1, 3),
(295, 34.311546325683594, 'Sunny', 'Spring', 0, '2025-05-10', 1, 4),
(296, 32.87593460083008, 'Sunny', 'Spring', 0, '2025-05-10', 1, 5),
(297, 141.32723999023438, 'Sunny', 'Spring', 0, '2025-05-10', 1, 6),
(298, 39.35878372192383, 'Sunny', 'Spring', 0, '2025-05-10', 1, 7),
(299, 101.2689437866211, 'Sunny', 'Spring', 0, '2025-05-10', 1, 8),
(300, 32.38435363769531, 'Sunny', 'Spring', 0, '2025-05-10', 1, 9),
(301, 167.5865936279297, 'Sunny', 'Spring', 0, '2025-05-10', 1, 10),
(302, 16.578704833984375, 'Sunny', 'Spring', 0, '2025-05-10', 1, 11),
(303, 232.607666015625, 'Sunny', 'Spring', 0, '2025-05-10', 1, 12),
(304, 167.42401123046875, 'Sunny', 'Spring', 0, '2025-05-10', 1, 13),
(305, 60.018882751464844, 'Sunny', 'Spring', 0, '2025-05-10', 1, 14),
(306, 53.00961685180664, 'Sunny', 'Spring', 0, '2025-05-10', 1, 15),
(307, 46.6361083984375, 'Sunny', 'Spring', 0, '2025-05-10', 1, 16),
(308, 54.95582580566406, 'Sunny', 'Spring', 0, '2025-05-10', 1, 17),
(309, 215.806640625, 'Sunny', 'Spring', 0, '2025-05-10', 1, 18),
(310, 138.59576416015625, 'Sunny', 'Spring', 0, '2025-05-10', 1, 19),
(311, 40.961551666259766, 'Sunny', 'Spring', 0, '2025-05-10', 1, 20),
(312, 80.96896362304688, 'Sunny', 'Spring', 0, '2025-05-10', 1, 21),
(313, 117.91837310791016, 'Sunny', 'Spring', 1, '2025-05-11', 1, 1),
(314, 255.6389923095703, 'Sunny', 'Spring', 1, '2025-05-11', 1, 2),
(315, 263.4286193847656, 'Sunny', 'Spring', 1, '2025-05-11', 1, 3),
(316, 120.70051574707031, 'Sunny', 'Spring', 1, '2025-05-11', 1, 4),
(317, 120.81700897216797, 'Sunny', 'Spring', 1, '2025-05-11', 1, 5),
(318, 315.39678955078125, 'Sunny', 'Spring', 1, '2025-05-11', 1, 6),
(319, 129.34646606445312, 'Sunny', 'Spring', 1, '2025-05-11', 1, 7),
(320, 261.91961669921875, 'Sunny', 'Spring', 1, '2025-05-11', 1, 8),
(321, 123.42371368408203, 'Sunny', 'Spring', 1, '2025-05-11', 1, 9),
(322, 339.0953674316406, 'Sunny', 'Spring', 1, '2025-05-11', 1, 10),
(323, 84.8804931640625, 'Sunny', 'Spring', 1, '2025-05-11', 1, 11),
(324, 408.7140808105469, 'Sunny', 'Spring', 1, '2025-05-11', 1, 12),
(325, 329.47119140625, 'Sunny', 'Spring', 1, '2025-05-11', 1, 13),
(326, 198.95684814453125, 'Sunny', 'Spring', 1, '2025-05-11', 1, 14),
(327, 168.6061248779297, 'Sunny', 'Spring', 1, '2025-05-11', 1, 15),
(328, 152.38970947265625, 'Sunny', 'Spring', 1, '2025-05-11', 1, 16),
(329, 165.63446044921875, 'Sunny', 'Spring', 1, '2025-05-11', 1, 17),
(330, 399.18505859375, 'Sunny', 'Spring', 1, '2025-05-11', 1, 18),
(331, 304.9940490722656, 'Sunny', 'Spring', 1, '2025-05-11', 1, 19),
(332, 148.5878143310547, 'Sunny', 'Spring', 1, '2025-05-11', 1, 20),
(333, 221.634521484375, 'Sunny', 'Spring', 1, '2025-05-11', 1, 21),
(334, 33.822547912597656, 'Sunny', 'Spring', 0, '2025-05-12', 1, 1),
(335, 108.48384857177734, 'Sunny', 'Spring', 0, '2025-05-12', 1, 2),
(336, 108.10821533203125, 'Sunny', 'Spring', 0, '2025-05-12', 1, 3),
(337, 34.311546325683594, 'Sunny', 'Spring', 0, '2025-05-12', 1, 4),
(338, 32.87593460083008, 'Sunny', 'Spring', 0, '2025-05-12', 1, 5),
(339, 141.32723999023438, 'Sunny', 'Spring', 0, '2025-05-12', 1, 6),
(340, 39.35878372192383, 'Sunny', 'Spring', 0, '2025-05-12', 1, 7),
(341, 101.2689437866211, 'Sunny', 'Spring', 0, '2025-05-12', 1, 8),
(342, 32.38435363769531, 'Sunny', 'Spring', 0, '2025-05-12', 1, 9),
(343, 167.5865936279297, 'Sunny', 'Spring', 0, '2025-05-12', 1, 10),
(344, 16.578704833984375, 'Sunny', 'Spring', 0, '2025-05-12', 1, 11),
(345, 232.607666015625, 'Sunny', 'Spring', 0, '2025-05-12', 1, 12),
(346, 167.42401123046875, 'Sunny', 'Spring', 0, '2025-05-12', 1, 13),
(347, 60.018882751464844, 'Sunny', 'Spring', 0, '2025-05-12', 1, 14),
(348, 53.00961685180664, 'Sunny', 'Spring', 0, '2025-05-12', 1, 15),
(349, 46.6361083984375, 'Sunny', 'Spring', 0, '2025-05-12', 1, 16),
(350, 54.95582580566406, 'Sunny', 'Spring', 0, '2025-05-12', 1, 17),
(351, 215.806640625, 'Sunny', 'Spring', 0, '2025-05-12', 1, 18),
(352, 138.59576416015625, 'Sunny', 'Spring', 0, '2025-05-12', 1, 19),
(353, 40.961551666259766, 'Sunny', 'Spring', 0, '2025-05-12', 1, 20),
(354, 80.96896362304688, 'Sunny', 'Spring', 0, '2025-05-12', 1, 21),
(355, 33.822547912597656, 'Sunny', 'Spring', 0, '2025-05-13', 1, 1),
(356, 108.48384857177734, 'Sunny', 'Spring', 0, '2025-05-13', 1, 2),
(357, 108.10821533203125, 'Sunny', 'Spring', 0, '2025-05-13', 1, 3),
(358, 34.311546325683594, 'Sunny', 'Spring', 0, '2025-05-13', 1, 4),
(359, 34.38141632080078, 'Sunny', 'Spring', 0, '2025-05-13', 1, 5),
(360, 141.32723999023438, 'Sunny', 'Spring', 0, '2025-05-13', 1, 6),
(361, 39.35878372192383, 'Sunny', 'Spring', 0, '2025-05-13', 1, 7),
(362, 101.2689437866211, 'Sunny', 'Spring', 0, '2025-05-13', 1, 8),
(363, 27.7065486907959, 'Sunny', 'Spring', 0, '2025-05-13', 1, 9),
(364, 167.5865936279297, 'Sunny', 'Spring', 0, '2025-05-13', 1, 10),
(365, 16.578704833984375, 'Sunny', 'Spring', 0, '2025-05-13', 1, 11),
(366, 227.4138641357422, 'Sunny', 'Spring', 0, '2025-05-13', 1, 12),
(367, 167.42401123046875, 'Sunny', 'Spring', 0, '2025-05-13', 1, 13),
(368, 60.018882751464844, 'Sunny', 'Spring', 0, '2025-05-13', 1, 14),
(369, 53.00961685180664, 'Sunny', 'Spring', 0, '2025-05-13', 1, 15),
(370, 46.6361083984375, 'Sunny', 'Spring', 0, '2025-05-13', 1, 16),
(371, 54.95582580566406, 'Sunny', 'Spring', 0, '2025-05-13', 1, 17),
(372, 201.99093627929688, 'Sunny', 'Spring', 0, '2025-05-13', 1, 18),
(373, 121.03648376464844, 'Sunny', 'Spring', 0, '2025-05-13', 1, 19),
(374, 37.14186477661133, 'Sunny', 'Spring', 0, '2025-05-13', 1, 20),
(375, 80.96896362304688, 'Sunny', 'Spring', 0, '2025-05-13', 1, 21),
(376, 23.02964973449707, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 1),
(377, 84.8720703125, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 2),
(378, 81.3604736328125, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 3),
(379, 25.472562789916992, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 4),
(380, 23.989662170410156, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 5),
(381, 116.09656524658203, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 6),
(382, 26.399898529052734, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 7),
(383, 84.55264282226562, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 8),
(384, 22.330678939819336, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 9),
(385, 144.35601806640625, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 10),
(386, 12.452980041503906, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 11),
(387, 188.95803833007812, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 12),
(388, 131.664306640625, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 13),
(389, 51.614078521728516, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 14),
(390, 39.175331115722656, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 15),
(391, 35.555870056152344, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 16),
(392, 43.437591552734375, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 17),
(393, 170.3102569580078, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 18),
(394, 96.97908020019531, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 19),
(395, 26.811059951782227, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 20),
(396, 57.614070892333984, 'Cloudy', 'Spring', 0, '2025-05-14', 1, 21);

-- --------------------------------------------------------

--
-- Structure de la table `inventory_stock`
--

CREATE TABLE `inventory_stock` (
  `id` int NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `category_id` int DEFAULT NULL,
  `discount` decimal(5,2) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inventory_stock`
--

INSERT INTO `inventory_stock` (`id`, `name`, `quantity`, `is_deleted`, `category_id`, `discount`, `price`) VALUES
(1, 'Remote Control Robot', 300, 0, 1, 10.00, 99.33),
(2, 'Organic Cereal Pack', 253, 0, 2, 0.00, 34.96),
(3, 'Solid Wood Coffee Table', 98, 0, 3, 5.00, 24.17),
(4, '1000-Piece Jigsaw Puzzle', 156, 0, 1, 10.00, 77.29),
(5, 'RC Toy Car', 362, 0, 1, 0.00, 96.72),
(6, '3-Seater Sofa', 471, 0, 3, 20.00, 71.30),
(7, 'Orange Juice Pack', 19, 0, 2, 10.00, 62.12),
(8, 'Bluetooth Headphones', 409, 0, 4, 5.00, 63.42),
(9, 'Ergonomic Office Chair', 269, 0, 3, 0.00, 87.70),
(10, 'Light-Up Spinning Top', 308, 0, 1, 0.00, 19.20),
(11, 'Basmati Rice (1kg)', 155, 0, 2, 0.00, 86.09),
(12, 'Wireless Keyboard', 474, 0, 4, 10.00, 36.94),
(13, 'RGB Gaming Mouse', 389, 0, 4, 0.00, 32.05),
(14, 'Lego Building Set', 320, 0, 1, 0.00, 66.50),
(15, 'Wall-Mounted Bookshelf', 408, 0, 3, 0.00, 83.26),
(16, 'Extendable Dining Table', 96, 0, 3, 20.00, 73.73),
(17, 'Action Figure', 313, 0, 1, 10.00, 82.57),
(18, 'Organic Cotton T-Shirt', 248, 0, 5, 10.00, 11.11),
(19, 'Kids Mini Drone', 254, 0, 1, 20.00, 53.14),
(20, 'Semi-Skimmed Milk (1L)', 84, 0, 2, 20.00, 78.39),
(21, 'ahmedwxcwxcwx', 1, 1, 1, 0.00, 10.00);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int NOT NULL,
  `dag_id` varchar(250) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `job_type` varchar(30) DEFAULT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `latest_heartbeat` timestamp(6) NULL DEFAULT NULL,
  `executor_class` varchar(500) DEFAULT NULL,
  `hostname` varchar(500) DEFAULT NULL,
  `unixname` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `dag_id`, `state`, `job_type`, `start_date`, `end_date`, `latest_heartbeat`, `executor_class`, `hostname`, `unixname`) VALUES
(1, NULL, 'success', 'SchedulerJob', '2025-05-07 01:28:40.075059', '2025-05-07 01:31:49.738846', '2025-05-07 01:31:47.619856', NULL, '4b1f4b5000db', 'airflow'),
(2, NULL, 'success', 'SchedulerJob', '2025-05-07 01:32:44.568085', '2025-05-07 01:40:20.088817', '2025-05-07 01:40:14.746888', NULL, '0305dcc8baa6', 'airflow'),
(3, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:36:29.486833', '2025-05-07 01:36:30.524449', '2025-05-07 01:36:29.470747', NULL, '0305dcc8baa6', 'airflow'),
(4, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:40:01.748302', '2025-05-07 01:40:02.939036', '2025-05-07 01:40:01.726284', NULL, '0305dcc8baa6', 'airflow'),
(5, NULL, 'success', 'SchedulerJob', '2025-05-07 01:41:14.015872', '2025-05-07 01:42:05.083704', '2025-05-07 01:41:59.872513', NULL, 'dc6e2290321e', 'airflow'),
(6, NULL, 'success', 'SchedulerJob', '2025-05-07 01:42:50.152482', '2025-05-07 01:47:55.251822', '2025-05-07 01:47:51.051440', NULL, 'bd25331bc90c', 'airflow'),
(7, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:45:01.372658', '2025-05-07 01:45:02.463095', '2025-05-07 01:45:01.357858', NULL, 'bd25331bc90c', 'airflow'),
(8, NULL, 'success', 'SchedulerJob', '2025-05-07 01:49:23.754927', '2025-05-07 02:05:56.964869', '2025-05-07 02:05:51.529199', NULL, '3d330f40ffae', 'airflow'),
(9, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:50:02.136872', '2025-05-07 01:50:03.176291', '2025-05-07 01:50:02.122051', NULL, '3d330f40ffae', 'airflow'),
(10, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:50:41.638182', '2025-05-07 01:50:42.607614', '2025-05-07 01:50:41.624869', NULL, '3d330f40ffae', 'airflow'),
(11, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:50:55.751396', '2025-05-07 01:50:57.158716', '2025-05-07 01:50:55.737054', NULL, '3d330f40ffae', 'airflow'),
(12, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 01:55:02.046771', '2025-05-07 01:55:02.918949', '2025-05-07 01:55:02.031572', NULL, '3d330f40ffae', 'airflow'),
(13, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:00:01.438448', '2025-05-07 02:00:02.270293', '2025-05-07 02:00:01.423917', NULL, '3d330f40ffae', 'airflow'),
(14, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:05:01.653440', '2025-05-07 02:05:02.510217', '2025-05-07 02:05:01.638164', NULL, '3d330f40ffae', 'airflow'),
(15, NULL, 'success', 'SchedulerJob', '2025-05-07 02:06:52.677647', '2025-05-07 02:31:02.043819', '2025-05-07 02:31:00.203115', NULL, '714db10dd7d4', 'airflow'),
(16, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:07:27.651558', '2025-05-07 02:07:28.468947', '2025-05-07 02:07:27.637268', NULL, '714db10dd7d4', 'airflow'),
(17, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:10:02.255451', '2025-05-07 02:10:03.135990', '2025-05-07 02:10:02.239770', NULL, '714db10dd7d4', 'airflow'),
(18, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:15:01.729727', '2025-05-07 02:15:02.693983', '2025-05-07 02:15:01.716209', NULL, '714db10dd7d4', 'airflow'),
(19, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:19:17.552226', '2025-05-07 02:19:18.810504', '2025-05-07 02:19:17.539034', NULL, '714db10dd7d4', 'airflow'),
(20, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:20:01.220568', '2025-05-07 02:20:02.295778', '2025-05-07 02:20:01.207007', NULL, '714db10dd7d4', 'airflow'),
(21, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:23:00.318383', '2025-05-07 02:23:01.475640', '2025-05-07 02:23:00.304591', NULL, '714db10dd7d4', 'airflow'),
(22, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:23:02.488315', '2025-05-07 02:23:02.858901', '2025-05-07 02:23:02.473677', NULL, '714db10dd7d4', 'airflow'),
(23, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:25:01.760149', '2025-05-07 02:25:02.918162', '2025-05-07 02:25:01.746044', NULL, '714db10dd7d4', 'airflow'),
(24, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:25:03.960298', '2025-05-07 02:25:04.288797', '2025-05-07 02:25:03.943197', NULL, '714db10dd7d4', 'airflow'),
(25, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:25:39.818467', '2025-05-07 02:25:40.814091', '2025-05-07 02:25:39.802675', NULL, '714db10dd7d4', 'airflow'),
(26, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:25:42.332076', '2025-05-07 02:25:42.703284', '2025-05-07 02:25:42.318068', NULL, '714db10dd7d4', 'airflow'),
(27, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:29:21.095632', '2025-05-07 02:29:22.254691', '2025-05-07 02:29:21.079244', NULL, '714db10dd7d4', 'airflow'),
(28, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:29:24.382181', '2025-05-07 02:29:25.403748', '2025-05-07 02:29:24.367534', NULL, '714db10dd7d4', 'airflow'),
(29, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:30:01.590637', '2025-05-07 02:30:02.639937', '2025-05-07 02:30:01.574894', NULL, '714db10dd7d4', 'airflow'),
(30, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 02:30:03.759562', '2025-05-07 02:30:04.858476', '2025-05-07 02:30:03.746873', NULL, '714db10dd7d4', 'airflow'),
(31, NULL, 'success', 'SchedulerJob', '2025-05-07 03:18:01.176665', '2025-05-07 03:36:07.799745', '2025-05-07 03:36:04.936903', NULL, 'd4048300ef8e', 'airflow'),
(32, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:18:03.325278', '2025-05-07 03:18:04.693024', '2025-05-07 03:18:03.309842', NULL, 'd4048300ef8e', 'airflow'),
(33, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:18:06.479457', '2025-05-07 03:18:08.550600', '2025-05-07 03:18:06.459206', NULL, 'd4048300ef8e', 'airflow'),
(34, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:18:51.587638', '2025-05-07 03:18:52.665875', '2025-05-07 03:18:51.570247', NULL, 'd4048300ef8e', 'airflow'),
(35, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:18:54.230647', '2025-05-07 03:18:55.652485', '2025-05-07 03:18:54.215492', NULL, 'd4048300ef8e', 'airflow'),
(36, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:20:02.004053', '2025-05-07 03:20:02.920584', '2025-05-07 03:20:01.989609', NULL, 'd4048300ef8e', 'airflow'),
(37, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:20:04.866696', '2025-05-07 03:20:05.991886', '2025-05-07 03:20:04.852662', NULL, 'd4048300ef8e', 'airflow'),
(38, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:25:01.448039', '2025-05-07 03:25:02.359295', '2025-05-07 03:25:01.432858', NULL, 'd4048300ef8e', 'airflow'),
(39, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:25:03.521470', '2025-05-07 03:25:04.659620', '2025-05-07 03:25:03.507212', NULL, 'd4048300ef8e', 'airflow'),
(40, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:30:01.612973', '2025-05-07 03:30:02.545198', '2025-05-07 03:30:01.596838', NULL, 'd4048300ef8e', 'airflow'),
(41, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:30:04.089526', '2025-05-07 03:30:05.822865', '2025-05-07 03:30:04.076809', NULL, 'd4048300ef8e', 'airflow'),
(42, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:35:01.178359', '2025-05-07 03:35:02.108447', '2025-05-07 03:35:01.164862', NULL, 'd4048300ef8e', 'airflow'),
(43, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:35:03.214050', '2025-05-07 03:35:05.206173', '2025-05-07 03:35:03.198468', NULL, 'd4048300ef8e', 'airflow'),
(44, NULL, 'success', 'SchedulerJob', '2025-05-07 03:36:55.032772', '2025-05-07 03:48:46.918372', '2025-05-07 03:48:43.514425', NULL, '1c8eaf58deee', 'airflow'),
(45, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:40:01.678978', '2025-05-07 03:40:03.297539', '2025-05-07 03:40:01.663642', NULL, '1c8eaf58deee', 'airflow'),
(46, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:40:04.400330', '2025-05-07 03:40:06.429933', '2025-05-07 03:40:04.383752', NULL, '1c8eaf58deee', 'airflow'),
(47, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:45:01.077923', '2025-05-07 03:45:01.862946', '2025-05-07 03:45:01.064930', NULL, '1c8eaf58deee', 'airflow'),
(48, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:45:02.867205', '2025-05-07 03:45:03.886640', '2025-05-07 03:45:02.853798', NULL, '1c8eaf58deee', 'airflow'),
(49, NULL, 'success', 'SchedulerJob', '2025-05-07 03:49:46.006822', '2025-05-07 03:59:36.123527', '2025-05-07 03:59:33.517818', NULL, 'b4c589584d23', 'airflow'),
(50, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:50:01.848294', '2025-05-07 03:50:02.777638', '2025-05-07 03:50:01.832103', NULL, 'b4c589584d23', 'airflow'),
(51, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:50:04.543365', '2025-05-07 03:50:06.235506', '2025-05-07 03:50:04.530086', NULL, 'b4c589584d23', 'airflow'),
(52, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:50:51.212635', '2025-05-07 03:50:52.035682', '2025-05-07 03:50:51.198523', NULL, 'b4c589584d23', 'airflow'),
(53, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:50:53.227750', '2025-05-07 03:50:54.302650', '2025-05-07 03:50:53.213308', NULL, 'b4c589584d23', 'airflow'),
(54, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:53:29.305247', '2025-05-07 03:53:30.052858', '2025-05-07 03:53:29.290387', NULL, 'b4c589584d23', 'airflow'),
(55, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:53:31.140789', '2025-05-07 03:53:32.719465', '2025-05-07 03:53:31.127928', NULL, 'b4c589584d23', 'airflow'),
(56, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:55:01.255302', '2025-05-07 03:55:02.118372', '2025-05-07 03:55:01.240225', NULL, 'b4c589584d23', 'airflow'),
(57, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:55:03.159538', '2025-05-07 03:55:05.224647', '2025-05-07 03:55:03.145300', NULL, 'b4c589584d23', 'airflow'),
(58, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:55:05.618224', '2025-05-07 03:55:06.413592', '2025-05-07 03:55:05.598224', NULL, 'b4c589584d23', 'airflow'),
(59, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 03:55:08.455932', '2025-05-07 03:55:09.940189', '2025-05-07 03:55:08.436663', NULL, 'b4c589584d23', 'airflow'),
(60, NULL, 'success', 'SchedulerJob', '2025-05-07 13:44:03.290110', '2025-05-07 13:57:51.765801', '2025-05-07 13:57:48.503323', NULL, 'b4c589584d23', 'airflow'),
(61, NULL, 'failed', 'SchedulerJob', '2025-05-07 14:12:43.563007', NULL, '2025-05-08 02:34:19.313366', NULL, 'b4c589584d23', 'airflow'),
(62, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:13:42.684430', '2025-05-07 14:13:43.600118', '2025-05-07 14:13:42.666880', NULL, 'b4c589584d23', 'airflow'),
(63, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:13:44.760038', '2025-05-07 14:13:47.205031', '2025-05-07 14:13:44.744143', NULL, 'b4c589584d23', 'airflow'),
(64, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:19:58.218595', '2025-05-07 14:19:59.089684', '2025-05-07 14:19:58.201114', NULL, 'b4c589584d23', 'airflow'),
(65, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:20:00.624925', '2025-05-07 14:20:02.150476', '2025-05-07 14:20:00.606374', NULL, 'b4c589584d23', 'airflow'),
(66, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:21:22.001350', '2025-05-07 14:21:22.828393', '2025-05-07 14:21:21.984378', NULL, 'b4c589584d23', 'airflow'),
(67, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:21:24.158689', '2025-05-07 14:21:25.642877', '2025-05-07 14:21:24.141621', NULL, 'b4c589584d23', 'airflow'),
(68, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:21:47.584885', '2025-05-07 14:21:48.335637', '2025-05-07 14:21:47.566611', NULL, 'b4c589584d23', 'airflow'),
(69, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:21:49.720391', '2025-05-07 14:21:51.251369', '2025-05-07 14:21:49.696065', NULL, 'b4c589584d23', 'airflow'),
(70, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:22:16.477159', '2025-05-07 14:22:17.506469', '2025-05-07 14:22:16.459279', NULL, 'b4c589584d23', 'airflow'),
(71, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-07 14:22:18.675071', '2025-05-07 14:22:20.131791', '2025-05-07 14:22:18.658416', NULL, 'b4c589584d23', 'airflow'),
(72, NULL, 'failed', 'SchedulerJob', '2025-05-09 22:49:52.830871', NULL, '2025-05-09 22:54:16.277661', NULL, 'b4c589584d23', 'airflow'),
(73, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-09 22:49:55.965208', '2025-05-09 22:49:57.027455', '2025-05-09 22:49:55.945373', NULL, 'b4c589584d23', 'airflow'),
(74, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-09 22:49:55.965245', '2025-05-09 22:49:57.084100', '2025-05-09 22:49:55.945244', NULL, 'b4c589584d23', 'airflow'),
(75, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-09 22:49:58.738901', '2025-05-09 22:50:05.889331', '2025-05-09 22:50:03.970162', NULL, 'b4c589584d23', 'airflow'),
(76, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-09 22:49:58.738898', '2025-05-09 22:50:05.999311', '2025-05-09 22:50:03.939424', NULL, 'b4c589584d23', 'airflow'),
(77, NULL, 'success', 'SchedulerJob', '2025-05-09 22:54:35.577192', '2025-05-09 23:15:22.372493', '2025-05-09 23:15:20.675623', NULL, 'b4c589584d23', 'airflow'),
(78, NULL, 'success', 'SchedulerJob', '2025-05-09 23:17:23.747764', '2025-05-10 04:56:48.923015', '2025-05-10 04:56:45.189631', NULL, '794180b3542f', 'airflow'),
(79, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-10 03:55:02.019624', '2025-05-10 03:55:03.269786', '2025-05-10 03:55:01.999346', NULL, '794180b3542f', 'airflow'),
(80, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-10 03:55:05.843784', '2025-05-10 03:55:07.482923', '2025-05-10 03:55:05.823975', NULL, '794180b3542f', 'airflow'),
(81, NULL, 'success', 'SchedulerJob', '2025-05-10 19:29:45.853671', '2025-05-10 19:45:05.355294', '2025-05-10 19:45:01.737687', NULL, '794180b3542f', 'airflow'),
(82, NULL, 'success', 'SchedulerJob', '2025-05-10 19:46:06.420602', '2025-05-10 23:43:31.228723', '2025-05-10 23:43:26.278801', NULL, '665f87e3b166', 'airflow'),
(83, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-10 19:48:00.671836', '2025-05-10 19:48:03.394310', '2025-05-10 19:48:00.649625', NULL, '665f87e3b166', 'airflow'),
(84, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-10 19:48:05.746319', '2025-05-10 19:48:07.851079', '2025-05-10 19:48:05.727806', NULL, '665f87e3b166', 'airflow'),
(85, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-10 23:39:56.692909', '2025-05-10 23:39:57.264539', '2025-05-10 23:39:56.678245', NULL, '665f87e3b166', 'airflow'),
(86, NULL, 'success', 'SchedulerJob', '2025-05-11 00:31:55.190130', '2025-05-11 02:33:22.046687', '2025-05-11 02:33:17.921727', NULL, 'a9a27228ff5d', 'airflow'),
(87, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 00:31:58.185876', '2025-05-11 00:32:04.514786', '2025-05-11 00:32:03.665008', NULL, 'a9a27228ff5d', 'airflow'),
(88, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 00:32:43.330576', '2025-05-11 00:32:46.612044', '2025-05-11 00:32:43.314021', NULL, 'a9a27228ff5d', 'airflow'),
(89, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 00:35:17.840750', '2025-05-11 00:35:20.573269', '2025-05-11 00:35:17.826450', NULL, 'a9a27228ff5d', 'airflow'),
(90, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 00:39:29.365457', '2025-05-11 00:39:32.378800', '2025-05-11 00:39:29.351403', NULL, 'a9a27228ff5d', 'airflow'),
(91, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 01:23:42.309177', '2025-05-11 01:23:45.157998', '2025-05-11 01:23:42.294145', NULL, 'a9a27228ff5d', 'airflow'),
(92, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 01:26:03.588181', '2025-05-11 01:26:06.282615', '2025-05-11 01:26:03.574772', NULL, 'a9a27228ff5d', 'airflow'),
(93, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 01:34:00.382534', '2025-05-11 01:34:03.661952', '2025-05-11 01:34:00.368177', NULL, 'a9a27228ff5d', 'airflow'),
(94, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:27:13.362589', '2025-05-11 02:27:16.208198', '2025-05-11 02:27:13.347972', NULL, 'a9a27228ff5d', 'airflow'),
(95, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:29:21.141644', '2025-05-11 02:29:24.863953', '2025-05-11 02:29:21.126890', NULL, 'a9a27228ff5d', 'airflow'),
(96, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:30:30.411711', '2025-05-11 02:30:33.115218', '2025-05-11 02:30:30.395768', NULL, 'a9a27228ff5d', 'airflow'),
(97, NULL, 'failed', 'SchedulerJob', '2025-05-11 02:37:26.672028', NULL, '2025-05-11 03:40:31.124356', NULL, '28f90455743b', 'airflow'),
(98, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:38:34.658820', '2025-05-11 02:38:37.722109', '2025-05-11 02:38:34.638639', NULL, '28f90455743b', 'airflow'),
(99, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:40:57.036668', '2025-05-11 02:41:00.067671', '2025-05-11 02:40:57.020054', NULL, '28f90455743b', 'airflow'),
(100, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:48:17.288553', '2025-05-11 02:48:20.237951', '2025-05-11 02:48:17.269395', NULL, '28f90455743b', 'airflow'),
(101, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 02:51:42.271972', '2025-05-11 02:51:45.184299', '2025-05-11 02:51:42.253011', NULL, '28f90455743b', 'airflow'),
(102, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 03:04:13.762167', '2025-05-11 03:04:17.420574', '2025-05-11 03:04:13.742681', NULL, '28f90455743b', 'airflow'),
(103, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 03:06:48.610348', '2025-05-11 03:06:52.110430', '2025-05-11 03:06:48.589404', NULL, '28f90455743b', 'airflow'),
(104, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-11 03:08:50.949330', '2025-05-11 03:08:54.724633', '2025-05-11 03:08:50.931223', NULL, '28f90455743b', 'airflow'),
(105, NULL, 'success', 'SchedulerJob', '2025-05-11 11:48:55.531515', '2025-05-11 23:29:48.294897', '2025-05-11 23:29:42.098774', NULL, '28f90455743b', 'airflow'),
(106, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-11 11:48:58.825144', '2025-05-11 11:49:00.564475', '2025-05-11 11:48:58.799724', NULL, '28f90455743b', 'airflow'),
(107, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-11 11:49:02.248214', '2025-05-11 11:49:03.742257', '2025-05-11 11:49:02.228345', NULL, '28f90455743b', 'airflow'),
(108, NULL, 'success', 'SchedulerJob', '2025-05-12 14:04:13.372329', '2025-05-12 22:39:36.082712', '2025-05-12 22:39:31.655629', NULL, '3db1da171586', 'airflow'),
(109, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-12 14:04:15.839493', '2025-05-12 14:04:27.146793', '2025-05-12 14:04:26.250629', NULL, '3db1da171586', 'airflow'),
(110, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-12 14:04:15.848827', '2025-05-12 14:04:16.896048', '2025-05-12 14:04:15.825047', NULL, '3db1da171586', 'airflow'),
(111, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-12 14:04:19.009227', '2025-05-12 14:04:22.044712', '2025-05-12 14:04:18.990432', NULL, '3db1da171586', 'airflow'),
(112, NULL, 'failed', 'SchedulerJob', '2025-05-13 21:48:59.001744', NULL, '2025-05-14 01:00:47.575142', NULL, '655c443c6945', 'airflow'),
(113, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-13 21:49:01.433292', '2025-05-13 21:49:11.460244', '2025-05-13 21:49:06.830058', NULL, '655c443c6945', 'airflow'),
(114, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-13 21:49:01.475772', '2025-05-13 21:49:02.728195', '2025-05-13 21:49:01.450283', NULL, '655c443c6945', 'airflow'),
(115, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-13 21:49:04.250992', '2025-05-13 21:49:07.262859', '2025-05-13 21:49:04.231009', NULL, '655c443c6945', 'airflow'),
(116, '7days_predictions', 'success', 'LocalTaskJob', '2025-05-14 00:00:02.747885', '2025-05-14 00:00:07.709935', '2025-05-14 00:00:02.727280', NULL, '655c443c6945', 'airflow'),
(117, NULL, 'running', 'SchedulerJob', '2025-05-14 10:04:27.843766', NULL, '2025-05-14 10:19:23.501903', NULL, '655c443c6945', 'airflow'),
(118, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-14 10:04:31.776382', '2025-05-14 10:04:41.973602', '2025-05-14 10:04:37.144603', NULL, '655c443c6945', 'airflow'),
(119, 'make_prediction', 'success', 'LocalTaskJob', '2025-05-14 10:04:43.964941', '2025-05-14 10:04:45.846774', '2025-05-14 10:04:43.942388', NULL, '655c443c6945', 'airflow');

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `dttm` timestamp(6) NULL DEFAULT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `map_index` int DEFAULT NULL,
  `event` varchar(60) DEFAULT NULL,
  `execution_date` timestamp(6) NULL DEFAULT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `owner` varchar(500) DEFAULT NULL,
  `owner_display_name` varchar(500) DEFAULT NULL,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id`, `dttm`, `dag_id`, `task_id`, `map_index`, `event`, `execution_date`, `run_id`, `owner`, `owner_display_name`, `extra`) VALUES
(1, '2025-05-07 01:28:26.289251', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7192bed99206\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(2, '2025-05-07 01:28:29.218693', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"4b1f4b5000db\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(3, '2025-05-07 01:28:31.597070', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7192bed99206\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(4, '2025-05-07 01:28:33.372402', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"4b1f4b5000db\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(5, '2025-05-07 01:28:34.318586', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7192bed99206\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(6, '2025-05-07 01:28:34.965815', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"9f08cb393e56\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(7, '2025-05-07 01:28:39.017655', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"4b1f4b5000db\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(8, '2025-05-07 01:32:36.859307', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"9d8a49f69ea5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(9, '2025-05-07 01:32:37.325392', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fb124b1add69\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(10, '2025-05-07 01:32:37.584953', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(11, '2025-05-07 01:32:40.246177', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fb124b1add69\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(12, '2025-05-07 01:32:43.128168', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"9d8a49f69ea5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(13, '2025-05-07 01:32:43.225357', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(14, '2025-05-07 01:33:40.346506', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(15, '2025-05-07 01:36:27.604147', 'make_prediction', NULL, NULL, 'paused', NULL, NULL, 'admin', 'Admin User', '{\"is_paused\": false}'),
(16, '2025-05-07 01:36:28.526125', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(17, '2025-05-07 01:36:29.578991', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:30:00.000000', 'scheduled__2025-05-07T01:30:00+00:00', 'airflow', NULL, NULL),
(18, '2025-05-07 01:36:29.627817', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(19, '2025-05-07 01:36:30.427906', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:30:00.000000', 'scheduled__2025-05-07T01:30:00+00:00', 'airflow', NULL, NULL),
(20, '2025-05-07 01:36:30.595675', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(21, '2025-05-07 01:36:57.426630', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(22, '2025-05-07 01:40:00.711686', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(23, '2025-05-07 01:40:01.845681', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:35:00.000000', 'scheduled__2025-05-07T01:35:00+00:00', 'airflow', NULL, NULL),
(24, '2025-05-07 01:40:01.881505', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0305dcc8baa6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(25, '2025-05-07 01:40:02.800364', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:35:00.000000', 'scheduled__2025-05-07T01:35:00+00:00', 'airflow', NULL, NULL),
(26, '2025-05-07 01:41:05.714282', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0b7e6035bec5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(27, '2025-05-07 01:41:06.548442', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7e2842982186\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(28, '2025-05-07 01:41:06.943644', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"dc6e2290321e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(29, '2025-05-07 01:41:09.593645', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7e2842982186\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(30, '2025-05-07 01:41:09.977435', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0b7e6035bec5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(31, '2025-05-07 01:41:12.545361', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"dc6e2290321e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(32, '2025-05-07 01:41:46.136510', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(33, '2025-05-07 01:42:42.154024', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"19ba2fefec0b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(34, '2025-05-07 01:42:42.656157', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1071bf070c89\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(35, '2025-05-07 01:42:43.208330', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"bd25331bc90c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(36, '2025-05-07 01:42:45.657550', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1071bf070c89\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(37, '2025-05-07 01:42:47.959633', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"19ba2fefec0b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(38, '2025-05-07 01:42:48.788023', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"bd25331bc90c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(39, '2025-05-07 01:43:09.662048', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(40, '2025-05-07 01:43:45.253072', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(41, '2025-05-07 01:43:55.568830', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(42, '2025-05-07 01:44:28.288054', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(43, '2025-05-07 01:44:54.549353', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(44, '2025-05-07 01:45:00.350061', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"bd25331bc90c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(45, '2025-05-07 01:45:01.482127', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:40:00.000000', 'scheduled__2025-05-07T01:40:00+00:00', 'airflow', NULL, NULL),
(46, '2025-05-07 01:45:01.517078', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"bd25331bc90c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(47, '2025-05-07 01:45:02.391870', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:40:00.000000', 'scheduled__2025-05-07T01:40:00+00:00', 'airflow', NULL, NULL),
(48, '2025-05-07 01:45:46.432461', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(49, '2025-05-07 01:49:15.869471', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ca477cfb1e71\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(50, '2025-05-07 01:49:16.522857', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"74f24b2564ec\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(51, '2025-05-07 01:49:17.010858', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(52, '2025-05-07 01:49:19.480545', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"74f24b2564ec\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(53, '2025-05-07 01:49:21.459637', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ca477cfb1e71\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(54, '2025-05-07 01:49:22.495311', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(55, '2025-05-07 01:49:58.507797', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(56, '2025-05-07 01:50:01.187712', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(57, '2025-05-07 01:50:02.208886', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:45:00.000000', 'scheduled__2025-05-07T01:45:00+00:00', 'airflow', NULL, NULL),
(58, '2025-05-07 01:50:02.244104', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(59, '2025-05-07 01:50:03.017546', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:45:00.000000', 'scheduled__2025-05-07T01:45:00+00:00', 'airflow', NULL, NULL),
(60, '2025-05-07 01:50:12.252123', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(61, '2025-05-07 01:50:26.690106', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(62, '2025-05-07 01:50:32.975183', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(63, '2025-05-07 01:50:34.424350', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(64, '2025-05-07 01:50:39.313815', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(65, '2025-05-07 01:50:40.077592', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(66, '2025-05-07 01:50:40.610560', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(67, '2025-05-07 01:50:41.712972', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:50:39.328010', 'manual__2025-05-07T01:50:39.328010+00:00', 'airflow', NULL, NULL),
(68, '2025-05-07 01:50:41.754117', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(69, '2025-05-07 01:50:42.510855', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:50:39.328010', 'manual__2025-05-07T01:50:39.328010+00:00', 'airflow', NULL, NULL),
(70, '2025-05-07 01:50:44.135622', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(71, '2025-05-07 01:50:47.099502', 'make_prediction', NULL, NULL, 'paused', NULL, NULL, 'admin', 'Admin User', '{\"is_paused\": true}'),
(72, '2025-05-07 01:50:48.001842', 'make_prediction', NULL, NULL, 'paused', NULL, NULL, 'admin', 'Admin User', '{\"is_paused\": false}'),
(73, '2025-05-07 01:50:51.514336', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(74, '2025-05-07 01:50:53.820467', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(75, '2025-05-07 01:50:54.619473', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(76, '2025-05-07 01:50:54.774619', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(77, '2025-05-07 01:50:55.863631', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:50:53.838373', 'manual__2025-05-07T01:50:53.838373+00:00', 'airflow', NULL, NULL),
(78, '2025-05-07 01:50:55.901312', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(79, '2025-05-07 01:50:57.059595', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:50:53.838373', 'manual__2025-05-07T01:50:53.838373+00:00', 'airflow', NULL, NULL),
(80, '2025-05-07 01:55:01.101218', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(81, '2025-05-07 01:55:02.112712', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:50:00.000000', 'scheduled__2025-05-07T01:50:00+00:00', 'airflow', NULL, NULL),
(82, '2025-05-07 01:55:02.144703', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(83, '2025-05-07 01:55:02.819055', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:50:00.000000', 'scheduled__2025-05-07T01:50:00+00:00', 'airflow', NULL, NULL),
(84, '2025-05-07 02:00:00.446591', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(85, '2025-05-07 02:00:01.503927', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 01:55:00.000000', 'scheduled__2025-05-07T01:55:00+00:00', 'airflow', NULL, NULL),
(86, '2025-05-07 02:00:01.537344', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(87, '2025-05-07 02:00:02.167672', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 01:55:00.000000', 'scheduled__2025-05-07T01:55:00+00:00', 'airflow', NULL, NULL),
(88, '2025-05-07 02:03:58.443221', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(89, '2025-05-07 02:05:00.702862', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(90, '2025-05-07 02:05:01.739642', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:00:00.000000', 'scheduled__2025-05-07T02:00:00+00:00', 'airflow', NULL, NULL),
(91, '2025-05-07 02:05:01.775327', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3d330f40ffae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(92, '2025-05-07 02:05:02.431088', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:00:00.000000', 'scheduled__2025-05-07T02:00:00+00:00', 'airflow', NULL, NULL),
(93, '2025-05-07 02:06:45.190492', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(94, '2025-05-07 02:06:45.190495', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7cf26af537ca\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(95, '2025-05-07 02:06:45.190958', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7772477b8bbd\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(96, '2025-05-07 02:06:48.413343', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7cf26af537ca\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(97, '2025-05-07 02:06:51.244394', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(98, '2025-05-07 02:06:51.864696', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"7772477b8bbd\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(99, '2025-05-07 02:07:17.535788', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(100, '2025-05-07 02:07:25.784343', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(101, '2025-05-07 02:07:26.485664', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(102, '2025-05-07 02:07:27.106468', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(103, '2025-05-07 02:07:27.738579', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:07:25.990591', 'manual__2025-05-07T02:07:25.990591+00:00', 'airflow', NULL, NULL),
(104, '2025-05-07 02:07:27.777951', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(105, '2025-05-07 02:07:28.400038', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:07:25.990591', 'manual__2025-05-07T02:07:25.990591+00:00', 'airflow', NULL, NULL),
(106, '2025-05-07 02:08:27.931582', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(107, '2025-05-07 02:08:38.025342', NULL, NULL, NULL, 'dagrun.edit', NULL, NULL, 'admin', 'Admin User', '{\"pk\": \"10\"}'),
(108, '2025-05-07 02:10:01.210948', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(109, '2025-05-07 02:10:02.324855', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:05:00.000000', 'scheduled__2025-05-07T02:05:00+00:00', 'airflow', NULL, NULL),
(110, '2025-05-07 02:10:02.364253', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(111, '2025-05-07 02:10:03.058734', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:05:00.000000', 'scheduled__2025-05-07T02:05:00+00:00', 'airflow', NULL, NULL),
(112, '2025-05-07 02:12:35.343849', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(113, '2025-05-07 02:12:46.217990', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(114, '2025-05-07 02:15:00.777813', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(115, '2025-05-07 02:15:01.794331', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:10:00.000000', 'scheduled__2025-05-07T02:10:00+00:00', 'airflow', NULL, NULL),
(116, '2025-05-07 02:15:01.835842', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(117, '2025-05-07 02:15:02.558649', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:10:00.000000', 'scheduled__2025-05-07T02:10:00+00:00', 'airflow', NULL, NULL),
(118, '2025-05-07 02:19:13.312810', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(119, '2025-05-07 02:19:15.761361', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(120, '2025-05-07 02:19:16.483689', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(121, '2025-05-07 02:19:16.568571', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(122, '2025-05-07 02:19:17.643009', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:19:15.777607', 'manual__2025-05-07T02:19:15.777607+00:00', 'airflow', NULL, NULL),
(123, '2025-05-07 02:19:17.677871', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(124, '2025-05-07 02:19:18.717459', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:19:15.777607', 'manual__2025-05-07T02:19:15.777607+00:00', 'airflow', NULL, NULL),
(125, '2025-05-07 02:20:00.269337', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(126, '2025-05-07 02:20:01.286517', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:15:00.000000', 'scheduled__2025-05-07T02:15:00+00:00', 'airflow', NULL, NULL),
(127, '2025-05-07 02:20:01.321539', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(128, '2025-05-07 02:20:02.189737', 'make_prediction', 'fetch_weather', -1, 'failed', '2025-05-07 02:15:00.000000', 'scheduled__2025-05-07T02:15:00+00:00', 'airflow', NULL, NULL),
(129, '2025-05-07 02:22:53.871594', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(130, '2025-05-07 02:22:58.601150', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(131, '2025-05-07 02:22:59.309086', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(132, '2025-05-07 02:22:59.335808', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(133, '2025-05-07 02:23:00.418691', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:22:58.615831', 'manual__2025-05-07T02:22:58.615831+00:00', 'airflow', NULL, NULL),
(134, '2025-05-07 02:23:00.459034', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(135, '2025-05-07 02:23:01.387510', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 02:22:58.615831', 'manual__2025-05-07T02:22:58.615831+00:00', 'airflow', NULL, NULL),
(136, '2025-05-07 02:23:01.547987', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(137, '2025-05-07 02:23:02.551769', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 02:22:58.615831', 'manual__2025-05-07T02:22:58.615831+00:00', 'airflow', NULL, NULL),
(138, '2025-05-07 02:23:02.589228', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(139, '2025-05-07 02:23:02.774013', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 02:22:58.615831', 'manual__2025-05-07T02:22:58.615831+00:00', 'airflow', NULL, NULL),
(140, '2025-05-07 02:23:40.553162', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(141, '2025-05-07 02:25:00.803912', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(142, '2025-05-07 02:25:01.832813', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:20:00.000000', 'scheduled__2025-05-07T02:20:00+00:00', 'airflow', NULL, NULL),
(143, '2025-05-07 02:25:01.865289', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(144, '2025-05-07 02:25:02.791208', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 02:20:00.000000', 'scheduled__2025-05-07T02:20:00+00:00', 'airflow', NULL, NULL),
(145, '2025-05-07 02:25:03.007430', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(146, '2025-05-07 02:25:04.027594', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 02:20:00.000000', 'scheduled__2025-05-07T02:20:00+00:00', 'airflow', NULL, NULL),
(147, '2025-05-07 02:25:04.061250', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(148, '2025-05-07 02:25:04.231815', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 02:20:00.000000', 'scheduled__2025-05-07T02:20:00+00:00', 'airflow', NULL, NULL),
(149, '2025-05-07 02:25:34.624168', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(150, '2025-05-07 02:25:35.446288', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(151, '2025-05-07 02:25:37.370469', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(152, '2025-05-07 02:25:38.119065', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(153, '2025-05-07 02:25:38.820688', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(154, '2025-05-07 02:25:39.885954', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:25:37.391229', 'manual__2025-05-07T02:25:37.391229+00:00', 'airflow', NULL, NULL),
(155, '2025-05-07 02:25:39.920334', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(156, '2025-05-07 02:25:40.704285', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 02:25:37.391229', 'manual__2025-05-07T02:25:37.391229+00:00', 'airflow', NULL, NULL),
(157, '2025-05-07 02:25:41.360620', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(158, '2025-05-07 02:25:42.396444', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 02:25:37.391229', 'manual__2025-05-07T02:25:37.391229+00:00', 'airflow', NULL, NULL),
(159, '2025-05-07 02:25:42.434351', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(160, '2025-05-07 02:25:42.626654', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 02:25:37.391229', 'manual__2025-05-07T02:25:37.391229+00:00', 'airflow', NULL, NULL),
(161, '2025-05-07 02:25:42.981742', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(162, '2025-05-07 02:29:16.539085', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(163, '2025-05-07 02:29:18.411668', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(164, '2025-05-07 02:29:19.152342', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(165, '2025-05-07 02:29:20.094599', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(166, '2025-05-07 02:29:21.175955', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:29:18.429339', 'manual__2025-05-07T02:29:18.429339+00:00', 'airflow', NULL, NULL),
(167, '2025-05-07 02:29:21.242918', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(168, '2025-05-07 02:29:21.620478', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(169, '2025-05-07 02:29:22.154527', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 02:29:18.429339', 'manual__2025-05-07T02:29:18.429339+00:00', 'airflow', NULL, NULL),
(170, '2025-05-07 02:29:23.355626', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(171, '2025-05-07 02:29:24.448539', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 02:29:18.429339', 'manual__2025-05-07T02:29:18.429339+00:00', 'airflow', NULL, NULL),
(172, '2025-05-07 02:29:24.492638', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(173, '2025-05-07 02:29:25.336033', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 02:29:18.429339', 'manual__2025-05-07T02:29:18.429339+00:00', 'airflow', NULL, NULL),
(174, '2025-05-07 02:30:00.600971', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(175, '2025-05-07 02:30:01.659534', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 02:25:00.000000', 'scheduled__2025-05-07T02:25:00+00:00', 'airflow', NULL, NULL),
(176, '2025-05-07 02:30:01.701152', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(177, '2025-05-07 02:30:02.532345', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 02:25:00.000000', 'scheduled__2025-05-07T02:25:00+00:00', 'airflow', NULL, NULL),
(178, '2025-05-07 02:30:02.803634', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(179, '2025-05-07 02:30:03.871215', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 02:25:00.000000', 'scheduled__2025-05-07T02:25:00+00:00', 'airflow', NULL, NULL),
(180, '2025-05-07 02:30:03.907905', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"714db10dd7d4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(181, '2025-05-07 02:30:04.763118', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 02:25:00.000000', 'scheduled__2025-05-07T02:25:00+00:00', 'airflow', NULL, NULL),
(182, '2025-05-07 03:17:53.336568', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"709d1fd01e1c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(183, '2025-05-07 03:17:53.336570', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"cb2f038f3049\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(184, '2025-05-07 03:17:53.336527', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(185, '2025-05-07 03:17:56.744944', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"709d1fd01e1c\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(186, '2025-05-07 03:17:59.564383', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(187, '2025-05-07 03:18:00.951508', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"cb2f038f3049\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(188, '2025-05-07 03:18:01.872460', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(189, '2025-05-07 03:18:03.411921', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:10:00.000000', 'scheduled__2025-05-07T03:10:00+00:00', 'airflow', NULL, NULL),
(190, '2025-05-07 03:18:03.450808', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(191, '2025-05-07 03:18:04.434401', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:10:00.000000', 'scheduled__2025-05-07T03:10:00+00:00', 'airflow', NULL, NULL),
(192, '2025-05-07 03:18:05.333952', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(193, '2025-05-07 03:18:06.557601', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:10:00.000000', 'scheduled__2025-05-07T03:10:00+00:00', 'airflow', NULL, NULL),
(194, '2025-05-07 03:18:06.597314', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(195, '2025-05-07 03:18:08.432627', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:10:00.000000', 'scheduled__2025-05-07T03:10:00+00:00', 'airflow', NULL, NULL),
(196, '2025-05-07 03:18:30.671321', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(197, '2025-05-07 03:18:48.083814', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(198, '2025-05-07 03:18:49.782384', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(199, '2025-05-07 03:18:51.243248', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(200, '2025-05-07 03:18:51.747204', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:18:48.100846', 'manual__2025-05-07T03:18:48.100846+00:00', 'airflow', NULL, NULL),
(201, '2025-05-07 03:18:51.943646', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(202, '2025-05-07 03:18:52.588699', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:18:48.100846', 'manual__2025-05-07T03:18:48.100846+00:00', 'airflow', NULL, NULL),
(203, '2025-05-07 03:18:53.203531', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(204, '2025-05-07 03:18:54.297095', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:18:48.100846', 'manual__2025-05-07T03:18:48.100846+00:00', 'airflow', NULL, NULL),
(205, '2025-05-07 03:18:54.332580', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(206, '2025-05-07 03:18:55.585227', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:18:48.100846', 'manual__2025-05-07T03:18:48.100846+00:00', 'airflow', NULL, NULL),
(207, '2025-05-07 03:20:01.037080', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(208, '2025-05-07 03:20:02.070304', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:15:00.000000', 'scheduled__2025-05-07T03:15:00+00:00', 'airflow', NULL, NULL),
(209, '2025-05-07 03:20:02.107377', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(210, '2025-05-07 03:20:02.823467', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:15:00.000000', 'scheduled__2025-05-07T03:15:00+00:00', 'airflow', NULL, NULL),
(211, '2025-05-07 03:20:03.942921', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(212, '2025-05-07 03:20:04.929290', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:15:00.000000', 'scheduled__2025-05-07T03:15:00+00:00', 'airflow', NULL, NULL),
(213, '2025-05-07 03:20:04.961613', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(214, '2025-05-07 03:20:05.913401', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:15:00.000000', 'scheduled__2025-05-07T03:15:00+00:00', 'airflow', NULL, NULL),
(215, '2025-05-07 03:25:00.470899', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(216, '2025-05-07 03:25:01.547175', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:20:00.000000', 'scheduled__2025-05-07T03:20:00+00:00', 'airflow', NULL, NULL),
(217, '2025-05-07 03:25:01.586627', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(218, '2025-05-07 03:25:02.233415', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:20:00.000000', 'scheduled__2025-05-07T03:20:00+00:00', 'airflow', NULL, NULL),
(219, '2025-05-07 03:25:02.561662', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(220, '2025-05-07 03:25:03.635946', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:20:00.000000', 'scheduled__2025-05-07T03:20:00+00:00', 'airflow', NULL, NULL),
(221, '2025-05-07 03:25:03.669444', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(222, '2025-05-07 03:25:04.582371', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:20:00.000000', 'scheduled__2025-05-07T03:20:00+00:00', 'airflow', NULL, NULL),
(223, '2025-05-07 03:30:00.644339', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(224, '2025-05-07 03:30:01.700998', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:25:00.000000', 'scheduled__2025-05-07T03:25:00+00:00', 'airflow', NULL, NULL),
(225, '2025-05-07 03:30:01.734860', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(226, '2025-05-07 03:30:02.479970', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:25:00.000000', 'scheduled__2025-05-07T03:25:00+00:00', 'airflow', NULL, NULL),
(227, '2025-05-07 03:30:03.128990', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(228, '2025-05-07 03:30:04.155500', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:25:00.000000', 'scheduled__2025-05-07T03:25:00+00:00', 'airflow', NULL, NULL),
(229, '2025-05-07 03:30:04.189041', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(230, '2025-05-07 03:30:05.755932', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:25:00.000000', 'scheduled__2025-05-07T03:25:00+00:00', 'airflow', NULL, NULL),
(231, '2025-05-07 03:35:00.180774', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(232, '2025-05-07 03:35:01.266858', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:30:00.000000', 'scheduled__2025-05-07T03:30:00+00:00', 'airflow', NULL, NULL),
(233, '2025-05-07 03:35:01.299637', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(234, '2025-05-07 03:35:01.997566', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:30:00.000000', 'scheduled__2025-05-07T03:30:00+00:00', 'airflow', NULL, NULL),
(235, '2025-05-07 03:35:02.220394', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(236, '2025-05-07 03:35:03.284690', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:30:00.000000', 'scheduled__2025-05-07T03:30:00+00:00', 'airflow', NULL, NULL),
(237, '2025-05-07 03:35:03.325166', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"d4048300ef8e\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(238, '2025-05-07 03:35:05.131595', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:30:00.000000', 'scheduled__2025-05-07T03:30:00+00:00', 'airflow', NULL, NULL),
(239, '2025-05-07 03:36:47.801313', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"e9d3ec8948ae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(240, '2025-05-07 03:36:47.801408', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655a5c85af64\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(241, '2025-05-07 03:36:47.801598', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(242, '2025-05-07 03:36:51.066191', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"e9d3ec8948ae\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(243, '2025-05-07 03:36:53.628640', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(244, '2025-05-07 03:36:54.160453', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655a5c85af64\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(245, '2025-05-07 03:40:00.462525', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(246, '2025-05-07 03:40:01.756291', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:35:00.000000', 'scheduled__2025-05-07T03:35:00+00:00', 'airflow', NULL, NULL),
(247, '2025-05-07 03:40:01.789138', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(248, '2025-05-07 03:40:03.220198', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:35:00.000000', 'scheduled__2025-05-07T03:35:00+00:00', 'airflow', NULL, NULL);
INSERT INTO `log` (`id`, `dttm`, `dag_id`, `task_id`, `map_index`, `event`, `execution_date`, `run_id`, `owner`, `owner_display_name`, `extra`) VALUES
(249, '2025-05-07 03:40:03.358316', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(250, '2025-05-07 03:40:04.477609', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:35:00.000000', 'scheduled__2025-05-07T03:35:00+00:00', 'airflow', NULL, NULL),
(251, '2025-05-07 03:40:04.515860', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(252, '2025-05-07 03:40:06.351215', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:35:00.000000', 'scheduled__2025-05-07T03:35:00+00:00', 'airflow', NULL, NULL),
(253, '2025-05-07 03:45:00.139612', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(254, '2025-05-07 03:45:01.140507', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:40:00.000000', 'scheduled__2025-05-07T03:40:00+00:00', 'airflow', NULL, NULL),
(255, '2025-05-07 03:45:01.173439', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(256, '2025-05-07 03:45:01.789069', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:40:00.000000', 'scheduled__2025-05-07T03:40:00+00:00', 'airflow', NULL, NULL),
(257, '2025-05-07 03:45:01.935713', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(258, '2025-05-07 03:45:02.937113', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:40:00.000000', 'scheduled__2025-05-07T03:40:00+00:00', 'airflow', NULL, NULL),
(259, '2025-05-07 03:45:02.977232', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"1c8eaf58deee\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(260, '2025-05-07 03:45:03.804600', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:40:00.000000', 'scheduled__2025-05-07T03:40:00+00:00', 'airflow', NULL, NULL),
(261, '2025-05-07 03:49:38.720111', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(262, '2025-05-07 03:49:38.720673', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(263, '2025-05-07 03:49:38.720089', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(264, '2025-05-07 03:49:41.953169', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(265, '2025-05-07 03:49:44.656847', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(266, '2025-05-07 03:49:45.194204', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(267, '2025-05-07 03:50:00.673118', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(268, '2025-05-07 03:50:01.934448', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:45:00.000000', 'scheduled__2025-05-07T03:45:00+00:00', 'airflow', NULL, NULL),
(269, '2025-05-07 03:50:01.967654', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(270, '2025-05-07 03:50:02.711353', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:45:00.000000', 'scheduled__2025-05-07T03:45:00+00:00', 'airflow', NULL, NULL),
(271, '2025-05-07 03:50:03.590005', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(272, '2025-05-07 03:50:04.607953', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:45:00.000000', 'scheduled__2025-05-07T03:45:00+00:00', 'airflow', NULL, NULL),
(273, '2025-05-07 03:50:04.642339', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(274, '2025-05-07 03:50:06.144748', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:45:00.000000', 'scheduled__2025-05-07T03:45:00+00:00', 'airflow', NULL, NULL),
(275, '2025-05-07 03:50:39.037445', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(276, '2025-05-07 03:50:46.852700', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(277, '2025-05-07 03:50:48.311964', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(278, '2025-05-07 03:50:49.419194', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(279, '2025-05-07 03:50:50.235476', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(280, '2025-05-07 03:50:51.312888', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:50:48.329117', 'manual__2025-05-07T03:50:48.329117+00:00', 'airflow', NULL, NULL),
(281, '2025-05-07 03:50:51.352953', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(282, '2025-05-07 03:50:51.958401', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:50:48.329117', 'manual__2025-05-07T03:50:48.329117+00:00', 'airflow', NULL, NULL),
(283, '2025-05-07 03:50:52.069404', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(284, '2025-05-07 03:50:52.767216', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(285, '2025-05-07 03:50:53.313195', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:50:48.329117', 'manual__2025-05-07T03:50:48.329117+00:00', 'airflow', NULL, NULL),
(286, '2025-05-07 03:50:53.352988', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(287, '2025-05-07 03:50:54.213172', 'make_prediction', 'predict_sales', -1, 'failed', '2025-05-07 03:50:48.329117', 'manual__2025-05-07T03:50:48.329117+00:00', 'airflow', NULL, NULL),
(288, '2025-05-07 03:53:22.028574', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(289, '2025-05-07 03:53:27.609345', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(290, '2025-05-07 03:53:28.249383', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(291, '2025-05-07 03:53:28.443769', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(292, '2025-05-07 03:53:29.370065', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:53:27.623730', 'manual__2025-05-07T03:53:27.623730+00:00', 'airflow', NULL, NULL),
(293, '2025-05-07 03:53:29.403937', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(294, '2025-05-07 03:53:29.962775', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:53:27.623730', 'manual__2025-05-07T03:53:27.623730+00:00', 'airflow', NULL, NULL),
(295, '2025-05-07 03:53:30.199202', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(296, '2025-05-07 03:53:31.211601', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:53:27.623730', 'manual__2025-05-07T03:53:27.623730+00:00', 'airflow', NULL, NULL),
(297, '2025-05-07 03:53:31.247201', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(298, '2025-05-07 03:53:32.649179', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 03:53:27.623730', 'manual__2025-05-07T03:53:27.623730+00:00', 'airflow', NULL, NULL),
(299, '2025-05-07 03:55:00.211563', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(300, '2025-05-07 03:55:01.334676', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:50:00.000000', 'scheduled__2025-05-07T03:50:00+00:00', 'airflow', NULL, NULL),
(301, '2025-05-07 03:55:01.374945', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(302, '2025-05-07 03:55:02.079476', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:50:00.000000', 'scheduled__2025-05-07T03:50:00+00:00', 'airflow', NULL, NULL),
(303, '2025-05-07 03:55:02.186936', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(304, '2025-05-07 03:55:03.269048', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(305, '2025-05-07 03:55:03.266076', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:50:00.000000', 'scheduled__2025-05-07T03:50:00+00:00', 'airflow', NULL, NULL),
(306, '2025-05-07 03:55:03.303787', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(307, '2025-05-07 03:55:04.126227', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(308, '2025-05-07 03:55:04.435577', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(309, '2025-05-07 03:55:05.137109', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 03:50:00.000000', 'scheduled__2025-05-07T03:50:00+00:00', 'airflow', NULL, NULL),
(310, '2025-05-07 03:55:05.685815', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:55:03.283638', 'manual__2025-05-07T03:55:03.283638+00:00', 'airflow', NULL, NULL),
(311, '2025-05-07 03:55:05.722415', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(312, '2025-05-07 03:55:06.342621', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:55:03.283638', 'manual__2025-05-07T03:55:03.283638+00:00', 'airflow', NULL, NULL),
(313, '2025-05-07 03:55:07.460080', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(314, '2025-05-07 03:55:08.553224', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:55:03.283638', 'manual__2025-05-07T03:55:03.283638+00:00', 'airflow', NULL, NULL),
(315, '2025-05-07 03:55:08.590445', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(316, '2025-05-07 03:55:09.874455', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 03:55:03.283638', 'manual__2025-05-07T03:55:03.283638+00:00', 'airflow', NULL, NULL),
(317, '2025-05-07 13:43:57.223635', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(318, '2025-05-07 13:43:57.223619', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(319, '2025-05-07 13:43:59.981539', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(320, '2025-05-07 13:44:02.402747', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(321, '2025-05-07 13:57:40.621449', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(322, '2025-05-07 14:12:36.552183', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(323, '2025-05-07 14:12:36.554950', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(324, '2025-05-07 14:12:36.770236', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(325, '2025-05-07 14:12:40.068286', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(326, '2025-05-07 14:12:42.740567', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(327, '2025-05-07 14:12:43.126182', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(328, '2025-05-07 14:13:37.335415', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(329, '2025-05-07 14:13:40.159985', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(330, '2025-05-07 14:13:40.907442', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(331, '2025-05-07 14:13:41.674254', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(332, '2025-05-07 14:13:42.754961', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 14:13:40.175294', 'manual__2025-05-07T14:13:40.175294+00:00', 'airflow', NULL, NULL),
(333, '2025-05-07 14:13:42.788577', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(334, '2025-05-07 14:13:43.486184', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 14:13:40.175294', 'manual__2025-05-07T14:13:40.175294+00:00', 'airflow', NULL, NULL),
(335, '2025-05-07 14:13:43.848783', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(336, '2025-05-07 14:13:44.818987', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 14:13:40.175294', 'manual__2025-05-07T14:13:40.175294+00:00', 'airflow', NULL, NULL),
(337, '2025-05-07 14:13:44.849000', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(338, '2025-05-07 14:13:47.147618', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 14:13:40.175294', 'manual__2025-05-07T14:13:40.175294+00:00', 'airflow', NULL, NULL),
(339, '2025-05-07 14:19:56.304737', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(340, '2025-05-07 14:19:57.001874', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(341, '2025-05-07 14:19:57.215979', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(342, '2025-05-07 14:19:58.282851', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 14:19:56.320384', 'manual__2025-05-07T14:19:56.320384+00:00', 'airflow', NULL, NULL),
(343, '2025-05-07 14:19:58.321573', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(344, '2025-05-07 14:19:59.008334', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 14:19:56.320384', 'manual__2025-05-07T14:19:56.320384+00:00', 'airflow', NULL, NULL),
(345, '2025-05-07 14:19:59.675834', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(346, '2025-05-07 14:20:00.691464', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 14:19:56.320384', 'manual__2025-05-07T14:19:56.320384+00:00', 'airflow', NULL, NULL),
(347, '2025-05-07 14:20:00.720634', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(348, '2025-05-07 14:20:02.058005', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 14:19:56.320384', 'manual__2025-05-07T14:19:56.320384+00:00', 'airflow', NULL, NULL),
(349, '2025-05-07 14:20:03.831444', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(350, '2025-05-07 14:21:19.639360', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(351, '2025-05-07 14:21:20.331259', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(352, '2025-05-07 14:21:21.028642', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(353, '2025-05-07 14:21:22.062807', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 14:21:19.655687', 'manual__2025-05-07T14:21:19.655687+00:00', 'airflow', NULL, NULL),
(354, '2025-05-07 14:21:22.097494', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(355, '2025-05-07 14:21:22.690100', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 14:21:19.655687', 'manual__2025-05-07T14:21:19.655687+00:00', 'airflow', NULL, NULL),
(356, '2025-05-07 14:21:23.217080', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(357, '2025-05-07 14:21:24.219728', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 14:21:19.655687', 'manual__2025-05-07T14:21:19.655687+00:00', 'airflow', NULL, NULL),
(358, '2025-05-07 14:21:24.251823', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(359, '2025-05-07 14:21:25.549726', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 14:21:19.655687', 'manual__2025-05-07T14:21:19.655687+00:00', 'airflow', NULL, NULL),
(360, '2025-05-07 14:21:43.234167', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(361, '2025-05-07 14:21:45.213011', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(362, '2025-05-07 14:21:45.925539', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(363, '2025-05-07 14:21:46.590147', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(364, '2025-05-07 14:21:47.651285', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 14:21:45.226145', 'manual__2025-05-07T14:21:45.226145+00:00', 'airflow', NULL, NULL),
(365, '2025-05-07 14:21:47.687744', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(366, '2025-05-07 14:21:48.259482', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 14:21:45.226145', 'manual__2025-05-07T14:21:45.226145+00:00', 'airflow', NULL, NULL),
(367, '2025-05-07 14:21:48.790454', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(368, '2025-05-07 14:21:49.784621', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 14:21:45.226145', 'manual__2025-05-07T14:21:45.226145+00:00', 'airflow', NULL, NULL),
(369, '2025-05-07 14:21:49.813982', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(370, '2025-05-07 14:21:51.161985', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 14:21:45.226145', 'manual__2025-05-07T14:21:45.226145+00:00', 'airflow', NULL, NULL),
(371, '2025-05-07 14:22:10.518566', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(372, '2025-05-07 14:22:14.484046', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(373, '2025-05-07 14:22:15.179653', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(374, '2025-05-07 14:22:15.567379', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(375, '2025-05-07 14:22:16.544432', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 14:22:14.496622', 'manual__2025-05-07T14:22:14.496622+00:00', 'airflow', NULL, NULL),
(376, '2025-05-07 14:22:16.580273', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(377, '2025-05-07 14:22:17.412609', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 14:22:14.496622', 'manual__2025-05-07T14:22:14.496622+00:00', 'airflow', NULL, NULL),
(378, '2025-05-07 14:22:17.756098', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(379, '2025-05-07 14:22:18.741314', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 14:22:14.496622', 'manual__2025-05-07T14:22:14.496622+00:00', 'airflow', NULL, NULL),
(380, '2025-05-07 14:22:18.779912', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(381, '2025-05-07 14:22:20.043033', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 14:22:14.496622', 'manual__2025-05-07T14:22:14.496622+00:00', 'airflow', NULL, NULL),
(382, '2025-05-07 14:34:25.212571', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(383, '2025-05-09 22:49:46.867525', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(384, '2025-05-09 22:49:46.867998', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(385, '2025-05-09 22:49:49.552129', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(386, '2025-05-09 22:49:51.939644', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(387, '2025-05-09 22:49:53.299785', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(388, '2025-05-09 22:49:53.451926', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(389, '2025-05-09 22:49:56.053115', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-07 03:55:00.000000', 'scheduled__2025-05-07T03:55:00+00:00', 'airflow', NULL, NULL),
(390, '2025-05-09 22:49:56.053795', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-08 03:55:00.000000', 'scheduled__2025-05-08T03:55:00+00:00', 'airflow', NULL, NULL),
(391, '2025-05-09 22:49:56.092903', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(392, '2025-05-09 22:49:56.105745', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(393, '2025-05-09 22:49:56.936093', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-07 03:55:00.000000', 'scheduled__2025-05-07T03:55:00+00:00', 'airflow', NULL, NULL),
(394, '2025-05-09 22:49:56.979481', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-08 03:55:00.000000', 'scheduled__2025-05-08T03:55:00+00:00', 'airflow', NULL, NULL),
(395, '2025-05-09 22:49:57.814124', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(396, '2025-05-09 22:49:57.813957', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(397, '2025-05-09 22:49:58.817130', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-07 03:55:00.000000', 'scheduled__2025-05-07T03:55:00+00:00', 'airflow', NULL, NULL),
(398, '2025-05-09 22:49:58.824697', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-08 03:55:00.000000', 'scheduled__2025-05-08T03:55:00+00:00', 'airflow', NULL, NULL),
(399, '2025-05-09 22:49:58.921664', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(400, '2025-05-09 22:49:58.928587', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(401, '2025-05-09 22:50:05.769222', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-07 03:55:00.000000', 'scheduled__2025-05-07T03:55:00+00:00', 'airflow', NULL, NULL),
(402, '2025-05-09 22:50:05.932684', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-08 03:55:00.000000', 'scheduled__2025-05-08T03:55:00+00:00', 'airflow', NULL, NULL),
(403, '2025-05-09 22:52:08.358260', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(404, '2025-05-09 22:52:39.782597', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(405, '2025-05-09 22:54:27.472874', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(406, '2025-05-09 22:54:27.982421', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(407, '2025-05-09 22:54:30.255478', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(408, '2025-05-09 22:54:33.938445', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fd25d6ebea05\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(409, '2025-05-09 22:54:34.533640', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"0f7a5a73ca16\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(410, '2025-05-09 22:54:34.743809', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"b4c589584d23\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(411, '2025-05-09 22:56:41.478843', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(412, '2025-05-09 22:56:43.972836', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(413, '2025-05-09 23:17:15.960833', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"429a667b6367\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(414, '2025-05-09 23:17:15.960836', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(415, '2025-05-09 23:17:15.960925', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"5e1d24baadc3\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(416, '2025-05-09 23:17:19.528841', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"429a667b6367\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(417, '2025-05-09 23:17:22.327310', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(418, '2025-05-09 23:17:23.719291', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"5e1d24baadc3\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(419, '2025-05-10 03:55:00.527020', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(420, '2025-05-10 03:55:02.131143', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-09 03:55:00.000000', 'scheduled__2025-05-09T03:55:00+00:00', 'airflow', NULL, NULL),
(421, '2025-05-10 03:55:02.176260', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(422, '2025-05-10 03:55:03.040531', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-09 03:55:00.000000', 'scheduled__2025-05-09T03:55:00+00:00', 'airflow', NULL, NULL),
(423, '2025-05-10 03:55:04.376724', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(424, '2025-05-10 03:55:05.917060', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-09 03:55:00.000000', 'scheduled__2025-05-09T03:55:00+00:00', 'airflow', NULL, NULL),
(425, '2025-05-10 03:55:05.961708', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(426, '2025-05-10 03:55:07.292321', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-09 03:55:00.000000', 'scheduled__2025-05-09T03:55:00+00:00', 'airflow', NULL, NULL),
(427, '2025-05-10 19:29:39.331038', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(428, '2025-05-10 19:29:39.331035', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"429a667b6367\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(429, '2025-05-10 19:29:42.220107', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"429a667b6367\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(430, '2025-05-10 19:29:44.842862', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"794180b3542f\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(431, '2025-05-10 19:30:15.283653', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"5e1d24baadc3\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(432, '2025-05-10 19:30:20.956652', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"5e1d24baadc3\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(433, '2025-05-10 19:30:24.604874', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(434, '2025-05-10 19:45:59.076605', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(435, '2025-05-10 19:45:59.076437', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"11d6ffb1b703\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(436, '2025-05-10 19:45:59.076507', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"69c829576c81\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(437, '2025-05-10 19:46:02.226354', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"11d6ffb1b703\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(438, '2025-05-10 19:46:04.890521', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(439, '2025-05-10 19:46:06.035458', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"69c829576c81\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(440, '2025-05-10 19:47:33.761042', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(441, '2025-05-10 19:47:58.225955', 'make_prediction', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(442, '2025-05-10 19:47:59.175135', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(443, '2025-05-10 19:47:59.311953', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(444, '2025-05-10 19:48:00.777926', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-10 19:47:58.242113', 'manual__2025-05-10T19:47:58.242113+00:00', 'airflow', NULL, NULL),
(445, '2025-05-10 19:48:00.813361', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(446, '2025-05-10 19:48:03.181508', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-10 19:47:58.242113', 'manual__2025-05-10T19:47:58.242113+00:00', 'airflow', NULL, NULL),
(447, '2025-05-10 19:48:04.188308', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(448, '2025-05-10 19:48:05.811491', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-10 19:47:58.242113', 'manual__2025-05-10T19:47:58.242113+00:00', 'airflow', NULL, NULL),
(449, '2025-05-10 19:48:05.855771', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(450, '2025-05-10 19:48:07.662070', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-10 19:47:58.242113', 'manual__2025-05-10T19:47:58.242113+00:00', 'airflow', NULL, NULL),
(451, '2025-05-10 23:38:25.455855', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(452, '2025-05-10 23:39:02.199634', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(453, '2025-05-10 23:39:15.716444', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(454, '2025-05-10 23:39:19.943366', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(455, '2025-05-10 23:39:50.092191', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(456, '2025-05-10 23:39:52.458402', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(457, '2025-05-10 23:39:54.611774', '7days_predictions', NULL, NULL, 'paused', NULL, NULL, 'admin', 'Admin User', '{\"is_paused\": false}'),
(458, '2025-05-10 23:39:55.117516', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(459, '2025-05-10 23:39:56.758150', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-09 00:00:00.000000', 'scheduled__2025-05-09T00:00:00+00:00', 'airflow', NULL, NULL),
(460, '2025-05-10 23:39:56.791862', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"665f87e3b166\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(461, '2025-05-10 23:39:57.187176', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-09 00:00:00.000000', 'scheduled__2025-05-09T00:00:00+00:00', 'airflow', NULL, NULL),
(462, '2025-05-10 23:39:58.488654', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(463, '2025-05-11 00:31:46.478683', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(464, '2025-05-11 00:31:46.478684', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4eb74a34077\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(465, '2025-05-11 00:31:46.478615', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"e60d0defd9a6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(466, '2025-05-11 00:31:49.985126', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4eb74a34077\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(467, '2025-05-11 00:31:53.552759', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(468, '2025-05-11 00:31:55.542922', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"e60d0defd9a6\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(469, '2025-05-11 00:31:55.935982', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(470, '2025-05-11 00:31:58.314502', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-10 00:00:00.000000', 'scheduled__2025-05-10T00:00:00+00:00', 'airflow', NULL, NULL),
(471, '2025-05-11 00:31:58.364097', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(472, '2025-05-11 00:32:04.401363', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-10 00:00:00.000000', 'scheduled__2025-05-10T00:00:00+00:00', 'airflow', NULL, NULL),
(473, '2025-05-11 00:32:37.723720', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(474, '2025-05-11 00:32:40.547499', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(475, '2025-05-11 00:32:41.852269', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(476, '2025-05-11 00:32:42.005563', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(477, '2025-05-11 00:32:43.438107', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 00:32:40.561023', 'manual__2025-05-11T00:32:40.561023+00:00', 'airflow', NULL, NULL),
(478, '2025-05-11 00:32:43.479018', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(479, '2025-05-11 00:32:46.505009', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 00:32:40.561023', 'manual__2025-05-11T00:32:40.561023+00:00', 'airflow', NULL, NULL),
(480, '2025-05-11 00:35:13.167733', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(481, '2025-05-11 00:35:15.609665', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(482, '2025-05-11 00:35:16.258574', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(483, '2025-05-11 00:35:16.404212', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(484, '2025-05-11 00:35:17.912140', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 00:35:15.631833', 'manual__2025-05-11T00:35:15.631833+00:00', 'airflow', NULL, NULL),
(485, '2025-05-11 00:35:17.950543', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(486, '2025-05-11 00:35:20.464202', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 00:35:15.631833', 'manual__2025-05-11T00:35:15.631833+00:00', 'airflow', NULL, NULL),
(487, '2025-05-11 00:39:25.393540', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(488, '2025-05-11 00:39:26.467228', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(489, '2025-05-11 00:39:27.318478', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(490, '2025-05-11 00:39:27.629899', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(491, '2025-05-11 00:39:29.432047', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 00:39:26.480227', 'manual__2025-05-11T00:39:26.480227+00:00', 'airflow', NULL, NULL),
(492, '2025-05-11 00:39:29.471907', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(493, '2025-05-11 00:39:32.265032', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 00:39:26.480227', 'manual__2025-05-11T00:39:26.480227+00:00', 'airflow', NULL, NULL),
(494, '2025-05-11 01:23:37.697569', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(495, '2025-05-11 01:23:39.559071', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(496, '2025-05-11 01:23:40.327227', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(497, '2025-05-11 01:23:40.749147', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}');
INSERT INTO `log` (`id`, `dttm`, `dag_id`, `task_id`, `map_index`, `event`, `execution_date`, `run_id`, `owner`, `owner_display_name`, `extra`) VALUES
(498, '2025-05-11 01:23:42.379243', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 01:23:39.572376', 'manual__2025-05-11T01:23:39.572376+00:00', 'airflow', NULL, NULL),
(499, '2025-05-11 01:23:42.419507', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(500, '2025-05-11 01:23:45.016336', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 01:23:39.572376', 'manual__2025-05-11T01:23:39.572376+00:00', 'airflow', NULL, NULL),
(501, '2025-05-11 01:25:58.029190', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(502, '2025-05-11 01:25:59.955490', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(503, '2025-05-11 01:26:01.129064', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(504, '2025-05-11 01:26:01.897469', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(505, '2025-05-11 01:26:02.168092', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(506, '2025-05-11 01:26:03.680020', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 01:26:01.145823', 'manual__2025-05-11T01:26:01.145823+00:00', 'airflow', NULL, NULL),
(507, '2025-05-11 01:26:03.718626', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(508, '2025-05-11 01:26:06.165927', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 01:26:01.145823', 'manual__2025-05-11T01:26:01.145823+00:00', 'airflow', NULL, NULL),
(509, '2025-05-11 01:33:56.725673', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(510, '2025-05-11 01:33:57.674225', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(511, '2025-05-11 01:33:58.502633', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(512, '2025-05-11 01:33:58.992305', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(513, '2025-05-11 01:34:00.446470', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 01:33:57.689314', 'manual__2025-05-11T01:33:57.689314+00:00', 'airflow', NULL, NULL),
(514, '2025-05-11 01:34:00.485048', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(515, '2025-05-11 01:34:03.546549', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 01:33:57.689314', 'manual__2025-05-11T01:33:57.689314+00:00', 'airflow', NULL, NULL),
(516, '2025-05-11 02:27:08.132721', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(517, '2025-05-11 02:27:10.010510', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(518, '2025-05-11 02:27:11.122844', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(519, '2025-05-11 02:27:11.970574', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(520, '2025-05-11 02:27:13.429151', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:27:10.029659', 'manual__2025-05-11T02:27:10.029659+00:00', 'airflow', NULL, NULL),
(521, '2025-05-11 02:27:13.469435', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(522, '2025-05-11 02:27:16.101387', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 02:27:10.029659', 'manual__2025-05-11T02:27:10.029659+00:00', 'airflow', NULL, NULL),
(523, '2025-05-11 02:29:17.959793', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(524, '2025-05-11 02:29:18.955974', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(525, '2025-05-11 02:29:19.562237', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(526, '2025-05-11 02:29:19.760575', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(527, '2025-05-11 02:29:21.214272', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:29:18.968972', 'manual__2025-05-11T02:29:18.968972+00:00', 'airflow', NULL, NULL),
(528, '2025-05-11 02:29:21.261560', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(529, '2025-05-11 02:29:24.742376', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 02:29:18.968972', 'manual__2025-05-11T02:29:18.968972+00:00', 'airflow', NULL, NULL),
(530, '2025-05-11 02:30:25.675872', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(531, '2025-05-11 02:30:27.086728', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(532, '2025-05-11 02:30:27.882034', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(533, '2025-05-11 02:30:28.752143', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(534, '2025-05-11 02:30:30.473431', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:30:27.104891', 'manual__2025-05-11T02:30:27.104891+00:00', 'airflow', NULL, NULL),
(535, '2025-05-11 02:30:30.513313', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"a9a27228ff5d\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(536, '2025-05-11 02:30:32.985215', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 02:30:27.104891', 'manual__2025-05-11T02:30:27.104891+00:00', 'airflow', NULL, NULL),
(537, '2025-05-11 02:37:19.584889', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(538, '2025-05-11 02:37:19.584880', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ebc7136862bf\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(539, '2025-05-11 02:37:19.584888', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4fc8d55bf31\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(540, '2025-05-11 02:37:22.632252', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4fc8d55bf31\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(541, '2025-05-11 02:37:25.341288', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(542, '2025-05-11 02:37:26.069413', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ebc7136862bf\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(543, '2025-05-11 02:38:30.157015', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(544, '2025-05-11 02:38:31.539167', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(545, '2025-05-11 02:38:32.749919', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(546, '2025-05-11 02:38:33.341214', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(547, '2025-05-11 02:38:34.753366', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:38:31.557226', 'manual__2025-05-11T02:38:31.557226+00:00', 'airflow', NULL, NULL),
(548, '2025-05-11 02:38:34.789437', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(549, '2025-05-11 02:38:37.625040', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 02:38:31.557226', 'manual__2025-05-11T02:38:31.557226+00:00', 'airflow', NULL, NULL),
(550, '2025-05-11 02:40:53.230401', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(551, '2025-05-11 02:40:54.759471', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(552, '2025-05-11 02:40:55.511400', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(553, '2025-05-11 02:40:55.562798', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(554, '2025-05-11 02:40:57.143345', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:40:54.776045', 'manual__2025-05-11T02:40:54.776045+00:00', 'airflow', NULL, NULL),
(555, '2025-05-11 02:40:57.189612', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(556, '2025-05-11 02:40:59.960825', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 02:40:54.776045', 'manual__2025-05-11T02:40:54.776045+00:00', 'airflow', NULL, NULL),
(557, '2025-05-11 02:48:12.727810', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(558, '2025-05-11 02:48:14.175901', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(559, '2025-05-11 02:48:15.209258', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(560, '2025-05-11 02:48:15.765692', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(561, '2025-05-11 02:48:17.365405', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:48:14.193352', 'manual__2025-05-11T02:48:14.193352+00:00', 'airflow', NULL, NULL),
(562, '2025-05-11 02:48:17.407055', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(563, '2025-05-11 02:48:20.139392', '7days_predictions', 'predict_sales', -1, 'success', '2025-05-11 02:48:14.193352', 'manual__2025-05-11T02:48:14.193352+00:00', 'airflow', NULL, NULL),
(564, '2025-05-11 02:51:38.024956', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(565, '2025-05-11 02:51:39.760345', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(566, '2025-05-11 02:51:40.552958', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(567, '2025-05-11 02:51:40.892519', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(568, '2025-05-11 02:51:42.355036', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 02:51:39.773715', 'manual__2025-05-11T02:51:39.773715+00:00', 'airflow', NULL, NULL),
(569, '2025-05-11 02:51:42.546223', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(570, '2025-05-11 02:51:45.072426', '7days_predictions', 'predict_sales', -1, 'success', '2025-05-11 02:51:39.773715', 'manual__2025-05-11T02:51:39.773715+00:00', 'airflow', NULL, NULL),
(571, '2025-05-11 03:04:10.026834', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(572, '2025-05-11 03:04:11.308577', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(573, '2025-05-11 03:04:12.131854', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(574, '2025-05-11 03:04:12.347627', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(575, '2025-05-11 03:04:13.831312', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 03:04:11.320817', 'manual__2025-05-11T03:04:11.320817+00:00', 'airflow', NULL, NULL),
(576, '2025-05-11 03:04:13.977771', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(577, '2025-05-11 03:04:17.320773', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 03:04:11.320817', 'manual__2025-05-11T03:04:11.320817+00:00', 'airflow', NULL, NULL),
(578, '2025-05-11 03:06:43.907585', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(579, '2025-05-11 03:06:45.409695', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(580, '2025-05-11 03:06:46.448660', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(581, '2025-05-11 03:06:47.091359', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(582, '2025-05-11 03:06:48.705744', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 03:06:45.424320', 'manual__2025-05-11T03:06:45.424320+00:00', 'airflow', NULL, NULL),
(583, '2025-05-11 03:06:48.868551', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(584, '2025-05-11 03:06:52.007273', '7days_predictions', 'predict_sales', -1, 'success', '2025-05-11 03:06:45.424320', 'manual__2025-05-11T03:06:45.424320+00:00', 'airflow', NULL, NULL),
(585, '2025-05-11 03:08:48.783438', '7days_predictions', NULL, NULL, 'trigger', NULL, NULL, 'admin', 'Admin User', '{\"redirect_url\": \"/home\"}'),
(586, '2025-05-11 03:08:49.188892', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(587, '2025-05-11 03:08:49.664180', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(588, '2025-05-11 03:08:51.044412', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 03:08:48.800610', 'manual__2025-05-11T03:08:48.800610+00:00', 'airflow', NULL, NULL),
(589, '2025-05-11 03:08:51.202117', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(590, '2025-05-11 03:08:54.622462', '7days_predictions', 'predict_sales', -1, 'success', '2025-05-11 03:08:48.800610', 'manual__2025-05-11T03:08:48.800610+00:00', 'airflow', NULL, NULL),
(591, '2025-05-11 11:48:49.461599', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4fc8d55bf31\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(592, '2025-05-11 11:48:49.461656', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(593, '2025-05-11 11:48:52.254136', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"f4fc8d55bf31\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(594, '2025-05-11 11:48:54.624576', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(595, '2025-05-11 11:48:56.045213', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(596, '2025-05-11 11:48:59.035581', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-10 03:55:00.000000', 'scheduled__2025-05-10T03:55:00+00:00', 'airflow', NULL, NULL),
(597, '2025-05-11 11:48:59.069270', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(598, '2025-05-11 11:49:00.486622', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-10 03:55:00.000000', 'scheduled__2025-05-10T03:55:00+00:00', 'airflow', NULL, NULL),
(599, '2025-05-11 11:49:00.889203', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(600, '2025-05-11 11:49:02.430969', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-10 03:55:00.000000', 'scheduled__2025-05-10T03:55:00+00:00', 'airflow', NULL, NULL),
(601, '2025-05-11 11:49:02.470742', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"28f90455743b\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(602, '2025-05-11 11:49:03.653024', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-10 03:55:00.000000', 'scheduled__2025-05-10T03:55:00+00:00', 'airflow', NULL, NULL),
(603, '2025-05-11 11:53:46.957560', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ebc7136862bf\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(604, '2025-05-11 11:53:52.311001', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"ebc7136862bf\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(605, '2025-05-12 14:04:06.323798', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(606, '2025-05-12 14:04:06.323629', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"c642269e2267\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(607, '2025-05-12 14:04:06.323611', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"dc233bfa75f4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(608, '2025-05-12 14:04:09.426499', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"c642269e2267\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(609, '2025-05-12 14:04:12.075908', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(610, '2025-05-12 14:04:13.966646', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(611, '2025-05-12 14:04:13.966674', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(612, '2025-05-12 14:04:14.758079', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"dc233bfa75f4\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(613, '2025-05-12 14:04:15.937684', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-11 00:00:00.000000', 'scheduled__2025-05-11T00:00:00+00:00', 'airflow', NULL, NULL),
(614, '2025-05-12 14:04:15.977593', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(615, '2025-05-12 14:04:15.945971', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-11 03:55:00.000000', 'scheduled__2025-05-11T03:55:00+00:00', 'airflow', NULL, NULL),
(616, '2025-05-12 14:04:16.111581', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(617, '2025-05-12 14:04:16.797288', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-11 03:55:00.000000', 'scheduled__2025-05-11T03:55:00+00:00', 'airflow', NULL, NULL),
(618, '2025-05-12 14:04:17.319547', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(619, '2025-05-12 14:04:19.737559', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-11 03:55:00.000000', 'scheduled__2025-05-11T03:55:00+00:00', 'airflow', NULL, NULL),
(620, '2025-05-12 14:04:20.127522', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"3db1da171586\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(621, '2025-05-12 14:04:21.960072', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-11 03:55:00.000000', 'scheduled__2025-05-11T03:55:00+00:00', 'airflow', NULL, NULL),
(622, '2025-05-12 14:04:27.011582', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-11 00:00:00.000000', 'scheduled__2025-05-11T00:00:00+00:00', 'airflow', NULL, NULL),
(623, '2025-05-12 22:37:57.426204', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(624, '2025-05-13 21:48:51.991498', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"6d8ab0bbe2d5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(625, '2025-05-13 21:48:51.991512', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(626, '2025-05-13 21:48:51.991499', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fa8c315f68da\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(627, '2025-05-13 21:48:55.089756', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"6d8ab0bbe2d5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(628, '2025-05-13 21:48:57.684257', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(629, '2025-05-13 21:48:59.557516', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(630, '2025-05-13 21:48:59.557035', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(631, '2025-05-13 21:49:00.566094', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fa8c315f68da\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(632, '2025-05-13 21:49:01.538337', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-12 00:00:00.000000', 'scheduled__2025-05-12T00:00:00+00:00', 'airflow', NULL, NULL),
(633, '2025-05-13 21:49:01.559680', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-12 03:55:00.000000', 'scheduled__2025-05-12T03:55:00+00:00', 'airflow', NULL, NULL),
(634, '2025-05-13 21:49:01.588482', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(635, '2025-05-13 21:49:01.637360', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(636, '2025-05-13 21:49:02.656127', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-12 03:55:00.000000', 'scheduled__2025-05-12T03:55:00+00:00', 'airflow', NULL, NULL),
(637, '2025-05-13 21:49:02.881039', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(638, '2025-05-13 21:49:05.331480', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-12 03:55:00.000000', 'scheduled__2025-05-12T03:55:00+00:00', 'airflow', NULL, NULL),
(639, '2025-05-13 21:49:05.509467', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(640, '2025-05-13 21:49:07.207696', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-12 03:55:00.000000', 'scheduled__2025-05-12T03:55:00+00:00', 'airflow', NULL, NULL),
(641, '2025-05-13 21:49:11.363700', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-12 00:00:00.000000', 'scheduled__2025-05-12T00:00:00+00:00', 'airflow', NULL, NULL),
(642, '2025-05-14 00:00:01.224434', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(643, '2025-05-14 00:00:02.869199', '7days_predictions', 'predict_sales', -1, 'running', '2025-05-13 00:00:00.000000', 'scheduled__2025-05-13T00:00:00+00:00', 'airflow', NULL, NULL),
(644, '2025-05-14 00:00:03.021057', '7days_predictions', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(645, '2025-05-14 00:00:07.576024', '7days_predictions', 'predict_sales', -1, 'failed', '2025-05-13 00:00:00.000000', 'scheduled__2025-05-13T00:00:00+00:00', 'airflow', NULL, NULL),
(646, '2025-05-14 10:04:21.037081', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(647, '2025-05-14 10:04:21.137288', NULL, NULL, NULL, 'cli_check', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"6d8ab0bbe2d5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'check\']\"}'),
(648, '2025-05-14 10:04:24.042485', NULL, NULL, NULL, 'cli_webserver', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"6d8ab0bbe2d5\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'webserver\']\"}'),
(649, '2025-05-14 10:04:26.685752', NULL, NULL, NULL, 'cli_scheduler', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(650, '2025-05-14 10:04:28.387473', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(651, '2025-05-14 10:04:32.032839', 'make_prediction', 'fetch_weather', -1, 'running', '2025-05-13 03:55:00.000000', 'scheduled__2025-05-13T03:55:00+00:00', 'airflow', NULL, NULL),
(652, '2025-05-14 10:04:32.099647', 'make_prediction', 'fetch_weather', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(653, '2025-05-14 10:04:41.841007', 'make_prediction', 'fetch_weather', -1, 'success', '2025-05-13 03:55:00.000000', 'scheduled__2025-05-13T03:55:00+00:00', 'airflow', NULL, NULL),
(654, '2025-05-14 10:04:42.557326', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(655, '2025-05-14 10:04:44.333350', 'make_prediction', 'predict_sales', -1, 'running', '2025-05-13 03:55:00.000000', 'scheduled__2025-05-13T03:55:00+00:00', 'airflow', NULL, NULL),
(656, '2025-05-14 10:04:44.373539', 'make_prediction', 'predict_sales', NULL, 'cli_task_run', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"655c443c6945\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'scheduler\']\"}'),
(657, '2025-05-14 10:04:45.779723', 'make_prediction', 'predict_sales', -1, 'success', '2025-05-13 03:55:00.000000', 'scheduled__2025-05-13T03:55:00+00:00', 'airflow', NULL, NULL),
(658, '2025-05-14 10:07:44.899317', NULL, NULL, NULL, 'cli_migratedb', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fa8c315f68da\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'db\', \'migrate\']\"}'),
(659, '2025-05-14 10:07:50.036679', NULL, NULL, NULL, 'cli_users_create', NULL, NULL, 'airflow', NULL, '{\"host_name\": \"fa8c315f68da\", \"full_command\": \"[\'/home/airflow/.local/bin/airflow\', \'users\', \'create\', \'--username\', \'admin\', \'--password\', \'********\', \'--firstname\', \'Admin\', \'--lastname\', \'User\', \'--role\', \'Admin\', \'--email\', \'admin@example.com\']\"}'),
(660, '2025-05-14 10:17:48.531025', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}'),
(661, '2025-05-14 10:18:38.260729', NULL, NULL, NULL, 'blocked', NULL, NULL, 'admin', 'Admin User', '{\"dag_ids\": \"make_prediction\"}');

-- --------------------------------------------------------

--
-- Structure de la table `log_template`
--

CREATE TABLE `log_template` (
  `id` int NOT NULL,
  `filename` text NOT NULL,
  `elasticsearch_id` text NOT NULL,
  `created_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `log_template`
--

INSERT INTO `log_template` (`id`, `filename`, `elasticsearch_id`, `created_at`) VALUES
(1, '{{ ti.dag_id }}/{{ ti.task_id }}/{{ ts }}/{{ try_number }}.log', '{dag_id}-{task_id}-{execution_date}-{try_number}', '2025-05-07 01:28:32.348268'),
(2, 'dag_id={{ ti.dag_id }}/run_id={{ ti.run_id }}/task_id={{ ti.task_id }}/{% if ti.map_index >= 0 %}map_index={{ ti.map_index }}/{% endif %}attempt={{ try_number }}.log', '{dag_id}-{task_id}-{run_id}-{map_index}-{try_number}', '2025-05-07 01:28:32.349005');

-- --------------------------------------------------------

--
-- Structure de la table `rendered_task_instance_fields`
--

CREATE TABLE `rendered_task_instance_fields` (
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL DEFAULT '-1',
  `rendered_fields` json NOT NULL,
  `k8s_pod_yaml` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rendered_task_instance_fields`
--

INSERT INTO `rendered_task_instance_fields` (`dag_id`, `task_id`, `run_id`, `map_index`, `rendered_fields`, `k8s_pod_yaml`) VALUES
('7days_predictions', 'predict_sales', 'manual__2025-05-11T00:32:40.561023+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T00:35:15.631833+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T00:39:26.480227+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T01:23:39.572376+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T01:26:01.145823+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T01:33:57.689314+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:27:10.029659+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:29:18.968972+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:30:27.104891+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:38:31.557226+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:40:54.776045+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:48:14.193352+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T02:51:39.773715+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T03:04:11.320817+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T03:06:45.424320+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'manual__2025-05-11T03:08:48.800610+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'scheduled__2025-05-09T00:00:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'scheduled__2025-05-10T00:00:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'scheduled__2025-05-11T00:00:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'scheduled__2025-05-12T00:00:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('7days_predictions', 'predict_sales', 'scheduled__2025-05-13T00:00:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T02:22:58.615831+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T02:25:37.391229+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T02:29:18.429339+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T03:18:48.100846+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T03:50:48.329117+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T03:53:27.623730+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T03:55:03.283638+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T14:13:40.175294+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T14:19:56.320384+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T14:21:19.655687+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T14:21:45.226145+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-07T14:22:14.496622+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'manual__2025-05-10T19:47:58.242113+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T02:25:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:10:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:15:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:20:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:25:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:30:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:35:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:40:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:45:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:50:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-07T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-08T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-09T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-10T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-11T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-12T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'fetch_weather', 'scheduled__2025-05-13T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T02:22:58.615831+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T02:25:37.391229+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T02:29:18.429339+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T03:18:48.100846+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T03:50:48.329117+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T03:53:27.623730+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T03:55:03.283638+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T14:13:40.175294+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T14:19:56.320384+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T14:21:19.655687+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T14:21:45.226145+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-07T14:22:14.496622+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'manual__2025-05-10T19:47:58.242113+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T02:25:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:10:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:15:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:20:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:25:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:30:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:35:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:40:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:45:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:50:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-07T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-08T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-09T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-10T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-11T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-12T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null'),
('make_prediction', 'predict_sales', 'scheduled__2025-05-13T03:55:00+00:00', -1, '{\"op_args\": [], \"op_kwargs\": {}, \"templates_dict\": null}', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `serialized_dag`
--

CREATE TABLE `serialized_dag` (
  `dag_id` varchar(250) NOT NULL,
  `fileloc` varchar(2000) NOT NULL,
  `fileloc_hash` bigint NOT NULL,
  `data` json DEFAULT NULL,
  `data_compressed` blob,
  `last_updated` timestamp(6) NOT NULL,
  `dag_hash` varchar(32) NOT NULL,
  `processor_subdir` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `serialized_dag`
--

INSERT INTO `serialized_dag` (`dag_id`, `fileloc`, `fileloc_hash`, `data`, `data_compressed`, `last_updated`, `dag_hash`, `processor_subdir`) VALUES
('7days_predictions', '/opt/airflow/airflow/dags/next_7days_dag.py', 66224232360759892, '{\"dag\": {\"tasks\": [{\"pool\": \"default_pool\", \"op_args\": [], \"task_id\": \"predict_sales\", \"is_setup\": false, \"ui_color\": \"#ffefeb\", \"_is_empty\": false, \"op_kwargs\": {}, \"_task_type\": \"PythonOperator\", \"ui_fgcolor\": \"#000\", \"is_teardown\": false, \"weight_rule\": \"downstream\", \"_task_module\": \"airflow.operators.python\", \"template_ext\": [], \"template_fields\": [\"templates_dict\", \"op_args\", \"op_kwargs\"], \"downstream_task_ids\": [], \"on_failure_fail_dagrun\": false, \"_log_config_logger_name\": \"airflow.task.operators\", \"template_fields_renderers\": {\"op_args\": \"py\", \"op_kwargs\": \"py\", \"templates_dict\": \"json\"}}], \"params\": {}, \"_dag_id\": \"7days_predictions\", \"catchup\": false, \"fileloc\": \"/opt/airflow/airflow/dags/next_7days_dag.py\", \"timezone\": \"UTC\", \"edge_info\": {}, \"start_date\": 1746140400.0, \"_task_group\": {\"tooltip\": \"\", \"children\": {\"predict_sales\": [\"operator\", \"predict_sales\"]}, \"ui_color\": \"CornflowerBlue\", \"_group_id\": null, \"ui_fgcolor\": \"#000\", \"prefix_group_id\": true, \"upstream_task_ids\": [], \"upstream_group_ids\": [], \"downstream_task_ids\": [], \"downstream_group_ids\": []}, \"_description\": \"Prévision des ventes des 7 prochaines jours\", \"dagrun_timeout\": 120.0, \"dag_dependencies\": [], \"schedule_interval\": {\"__var\": 86400.0, \"__type\": \"timedelta\"}, \"_processor_dags_folder\": \"/opt/airflow/airflow/dags\"}, \"__version\": 1}', NULL, '2025-05-14 10:08:46.205316', '1a6f51dd45cff8089ef4ce5c4f73dc33', '/opt/airflow/airflow/dags'),
('make_prediction', '/opt/airflow/airflow/dags/predict_dag.py', 50571813428714785, '{\"dag\": {\"tasks\": [{\"pool\": \"default_pool\", \"op_args\": [], \"task_id\": \"fetch_weather\", \"is_setup\": false, \"ui_color\": \"#ffefeb\", \"_is_empty\": false, \"op_kwargs\": {}, \"_task_type\": \"PythonOperator\", \"ui_fgcolor\": \"#000\", \"is_teardown\": false, \"weight_rule\": \"downstream\", \"_task_module\": \"airflow.operators.python\", \"template_ext\": [], \"template_fields\": [\"templates_dict\", \"op_args\", \"op_kwargs\"], \"downstream_task_ids\": [\"predict_sales\"], \"on_failure_fail_dagrun\": false, \"_log_config_logger_name\": \"airflow.task.operators\", \"template_fields_renderers\": {\"op_args\": \"py\", \"op_kwargs\": \"py\", \"templates_dict\": \"json\"}}, {\"pool\": \"default_pool\", \"op_args\": [], \"task_id\": \"predict_sales\", \"is_setup\": false, \"ui_color\": \"#ffefeb\", \"_is_empty\": false, \"op_kwargs\": {}, \"_task_type\": \"PythonOperator\", \"ui_fgcolor\": \"#000\", \"is_teardown\": false, \"weight_rule\": \"downstream\", \"_task_module\": \"airflow.operators.python\", \"template_ext\": [], \"template_fields\": [\"templates_dict\", \"op_args\", \"op_kwargs\"], \"downstream_task_ids\": [], \"on_failure_fail_dagrun\": false, \"_log_config_logger_name\": \"airflow.task.operators\", \"template_fields_renderers\": {\"op_args\": \"py\", \"op_kwargs\": \"py\", \"templates_dict\": \"json\"}}], \"params\": {}, \"_dag_id\": \"make_prediction\", \"catchup\": false, \"fileloc\": \"/opt/airflow/airflow/dags/predict_dag.py\", \"timezone\": \"UTC\", \"edge_info\": {}, \"start_date\": 1746086400.0, \"_task_group\": {\"tooltip\": \"\", \"children\": {\"fetch_weather\": [\"operator\", \"fetch_weather\"], \"predict_sales\": [\"operator\", \"predict_sales\"]}, \"ui_color\": \"CornflowerBlue\", \"_group_id\": null, \"ui_fgcolor\": \"#000\", \"prefix_group_id\": true, \"upstream_task_ids\": [], \"upstream_group_ids\": [], \"downstream_task_ids\": [], \"downstream_group_ids\": []}, \"_description\": \"Prévision journalière des ventes par produit\", \"dagrun_timeout\": 120.0, \"dag_dependencies\": [], \"schedule_interval\": {\"__var\": 86400.0, \"__type\": \"timedelta\"}, \"_processor_dags_folder\": \"/opt/airflow/airflow/dags\"}, \"__version\": 1}', NULL, '2025-05-14 10:08:46.186010', '1864fab217910879c20dacc3df2e9397', '/opt/airflow/airflow/dags');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` int NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `data` blob,
  `expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `session_id`, `data`, `expiry`) VALUES
(1, '9392749b-0117-4096-b6bd-d13e42ac4ff3', 0x80049563000000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2866326565623265643437303263663636623465376666343864383362613535363438393064376337948c066c6f63616c65948c02656e94752e, '2025-06-06 01:29:24'),
(2, '127b714f-6b4b-4564-9ebf-23aad78d6627', 0x800495e0020000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2866326565623265643437303263663636623465376666343864383362613535363438393064376337948c066c6f63616c65948c02656e948c085f757365725f6964944b018c035f6964948c803535303531346632626335353635363235663863343165303466653136303763643838313262383761616631356539313266336533346266383436626335643562663534333164363239323738666233333134643061306435386166376361386432623136613130386361343765363639663036323736343535336563633831948c116461675f7374617475735f66696c746572948c03616c6c948c0c706167655f686973746f7279945d94288c54687474703a2f2f6c6f63616c686f73743a383038312f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d6d616b655f70726564696374696f6e265f666c745f335f73746174653d6661696c6564948c56687474703a2f2f6c6f63616c686f73743a383038312f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d37646179735f70726564696374696f6e73265f666c745f335f73746174653d6661696c6564948c57687474703a2f2f6c6f63616c686f73743a383038312f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d37646179735f70726564696374696f6e73265f666c745f335f73746174653d73756363657373948c56687474703a2f2f6c6f63616c686f73743a383038312f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d37646179735f70726564696374696f6e73265f666c745f335f73746174653d6661696c6564948c54687474703a2f2f6c6f63616c686f73743a383038312f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d6d616b655f70726564696374696f6e265f666c745f335f73746174653d6661696c65649465752e, '2025-06-13 10:18:44');

-- --------------------------------------------------------

--
-- Structure de la table `sla_miss`
--

CREATE TABLE `sla_miss` (
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `execution_date` timestamp(6) NOT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `description` text,
  `notification_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `slot_pool`
--

CREATE TABLE `slot_pool` (
  `id` int NOT NULL,
  `pool` varchar(256) DEFAULT NULL,
  `slots` int DEFAULT NULL,
  `description` text,
  `include_deferred` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `slot_pool`
--

INSERT INTO `slot_pool` (`id`, `pool`, `slots`, `description`, `include_deferred`) VALUES
(1, 'default_pool', 128, 'Default pool', 0);

-- --------------------------------------------------------

--
-- Structure de la table `task_fail`
--

CREATE TABLE `task_fail` (
  `id` int NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL DEFAULT '-1',
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `duration` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `task_fail`
--

INSERT INTO `task_fail` (`id`, `task_id`, `dag_id`, `run_id`, `map_index`, `start_date`, `end_date`, `duration`) VALUES
(1, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:30:00+00:00', -1, '2025-05-07 01:36:29.569546', '2025-05-07 01:36:30.427788', 0),
(2, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:35:00+00:00', -1, '2025-05-07 01:40:01.836800', '2025-05-07 01:40:02.800260', 0),
(3, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:40:00+00:00', -1, '2025-05-07 01:45:01.473889', '2025-05-07 01:45:02.391764', 0),
(4, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:45:00+00:00', -1, '2025-05-07 01:50:02.201700', '2025-05-07 01:50:03.017437', 0),
(5, 'fetch_weather', 'make_prediction', 'manual__2025-05-07T01:50:39.328010+00:00', -1, '2025-05-07 01:50:41.705560', '2025-05-07 01:50:42.510740', 0),
(6, 'fetch_weather', 'make_prediction', 'manual__2025-05-07T01:50:53.838373+00:00', -1, '2025-05-07 01:50:55.856215', '2025-05-07 01:50:57.059499', 1),
(7, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:50:00+00:00', -1, '2025-05-07 01:55:02.104230', '2025-05-07 01:55:02.818946', 0),
(8, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:55:00+00:00', -1, '2025-05-07 02:00:01.496084', '2025-05-07 02:00:02.167561', 0),
(9, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:00:00+00:00', -1, '2025-05-07 02:05:01.731591', '2025-05-07 02:05:02.430983', 0),
(10, 'fetch_weather', 'make_prediction', 'manual__2025-05-07T02:07:25.990591+00:00', -1, '2025-05-07 02:07:27.730954', '2025-05-07 02:07:28.399868', 0),
(11, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:05:00+00:00', -1, '2025-05-07 02:10:02.316261', '2025-05-07 02:10:03.058617', 0),
(12, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:10:00+00:00', -1, '2025-05-07 02:15:01.785994', '2025-05-07 02:15:02.558541', 0),
(13, 'fetch_weather', 'make_prediction', 'manual__2025-05-07T02:19:15.777607+00:00', -1, '2025-05-07 02:19:17.636309', '2025-05-07 02:19:18.717354', 1),
(14, 'fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:15:00+00:00', -1, '2025-05-07 02:20:01.279444', '2025-05-07 02:20:02.189268', 0),
(15, 'predict_sales', 'make_prediction', 'manual__2025-05-07T02:22:58.615831+00:00', -1, '2025-05-07 02:23:02.544161', '2025-05-07 02:23:02.773906', 0),
(16, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:20:00+00:00', -1, '2025-05-07 02:25:04.019087', '2025-05-07 02:25:04.231707', 0),
(17, 'predict_sales', 'make_prediction', 'manual__2025-05-07T02:25:37.391229+00:00', -1, '2025-05-07 02:25:42.388624', '2025-05-07 02:25:42.626529', 0),
(18, 'predict_sales', 'make_prediction', 'manual__2025-05-07T02:29:18.429339+00:00', -1, '2025-05-07 02:29:24.440352', '2025-05-07 02:29:25.335917', 0),
(19, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:25:00+00:00', -1, '2025-05-07 02:30:03.862902', '2025-05-07 02:30:04.762978', 0),
(20, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:10:00+00:00', -1, '2025-05-07 03:18:06.547521', '2025-05-07 03:18:08.432520', 1),
(21, 'predict_sales', 'make_prediction', 'manual__2025-05-07T03:18:48.100846+00:00', -1, '2025-05-07 03:18:54.289084', '2025-05-07 03:18:55.585115', 1),
(22, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:15:00+00:00', -1, '2025-05-07 03:20:04.921912', '2025-05-07 03:20:05.913278', 0),
(23, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:20:00+00:00', -1, '2025-05-07 03:25:03.627428', '2025-05-07 03:25:04.582267', 0),
(24, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:25:00+00:00', -1, '2025-05-07 03:30:04.147424', '2025-05-07 03:30:05.755830', 1),
(25, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:30:00+00:00', -1, '2025-05-07 03:35:03.276016', '2025-05-07 03:35:05.131442', 1),
(26, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:35:00+00:00', -1, '2025-05-07 03:40:04.466239', '2025-05-07 03:40:06.351081', 1),
(27, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:40:00+00:00', -1, '2025-05-07 03:45:02.929653', '2025-05-07 03:45:03.804480', 0),
(28, 'predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:45:00+00:00', -1, '2025-05-07 03:50:04.600705', '2025-05-07 03:50:06.144617', 1),
(29, 'predict_sales', 'make_prediction', 'manual__2025-05-07T03:50:48.329117+00:00', -1, '2025-05-07 03:50:53.306141', '2025-05-07 03:50:54.213042', 0),
(30, 'predict_sales', '7days_predictions', 'scheduled__2025-05-09T00:00:00+00:00', -1, '2025-05-10 23:39:56.749919', '2025-05-10 23:39:57.187087', 0),
(31, 'predict_sales', '7days_predictions', 'scheduled__2025-05-10T00:00:00+00:00', -1, '2025-05-11 00:31:58.300725', '2025-05-11 00:32:04.401236', 6),
(32, 'predict_sales', '7days_predictions', 'manual__2025-05-11T00:32:40.561023+00:00', -1, '2025-05-11 00:32:43.430021', '2025-05-11 00:32:46.504900', 3),
(33, 'predict_sales', '7days_predictions', 'manual__2025-05-11T00:35:15.631833+00:00', -1, '2025-05-11 00:35:17.904125', '2025-05-11 00:35:20.464099', 2),
(34, 'predict_sales', '7days_predictions', 'manual__2025-05-11T00:39:26.480227+00:00', -1, '2025-05-11 00:39:29.422846', '2025-05-11 00:39:32.264922', 2),
(35, 'predict_sales', '7days_predictions', 'manual__2025-05-11T01:23:39.572376+00:00', -1, '2025-05-11 01:23:42.370448', '2025-05-11 01:23:45.016191', 2),
(36, 'predict_sales', '7days_predictions', 'manual__2025-05-11T01:26:01.145823+00:00', -1, '2025-05-11 01:26:03.671960', '2025-05-11 01:26:06.165816', 2),
(37, 'predict_sales', '7days_predictions', 'manual__2025-05-11T01:33:57.689314+00:00', -1, '2025-05-11 01:34:00.439734', '2025-05-11 01:34:03.546442', 3),
(38, 'predict_sales', '7days_predictions', 'manual__2025-05-11T02:27:10.029659+00:00', -1, '2025-05-11 02:27:13.420254', '2025-05-11 02:27:16.101252', 2),
(39, 'predict_sales', '7days_predictions', 'manual__2025-05-11T02:29:18.968972+00:00', -1, '2025-05-11 02:29:21.204363', '2025-05-11 02:29:24.742264', 3),
(40, 'predict_sales', '7days_predictions', 'manual__2025-05-11T02:30:27.104891+00:00', -1, '2025-05-11 02:30:30.465076', '2025-05-11 02:30:32.985115', 2),
(41, 'predict_sales', '7days_predictions', 'manual__2025-05-11T02:38:31.557226+00:00', -1, '2025-05-11 02:38:34.743208', '2025-05-11 02:38:37.624925', 2),
(42, 'predict_sales', '7days_predictions', 'manual__2025-05-11T02:40:54.776045+00:00', -1, '2025-05-11 02:40:57.133694', '2025-05-11 02:40:59.960692', 2),
(43, 'predict_sales', '7days_predictions', 'manual__2025-05-11T03:04:11.320817+00:00', -1, '2025-05-11 03:04:13.821951', '2025-05-11 03:04:17.320645', 3),
(44, 'predict_sales', '7days_predictions', 'scheduled__2025-05-11T00:00:00+00:00', -1, '2025-05-12 14:04:15.929124', '2025-05-12 14:04:27.011390', 11),
(45, 'predict_sales', '7days_predictions', 'scheduled__2025-05-12T00:00:00+00:00', -1, '2025-05-13 21:49:01.529747', '2025-05-13 21:49:11.363603', 9),
(46, 'predict_sales', '7days_predictions', 'scheduled__2025-05-13T00:00:00+00:00', -1, '2025-05-14 00:00:02.862001', '2025-05-14 00:00:07.575919', 4);

-- --------------------------------------------------------

--
-- Structure de la table `task_instance`
--

CREATE TABLE `task_instance` (
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL DEFAULT '-1',
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `try_number` int DEFAULT NULL,
  `max_tries` int DEFAULT '-1',
  `hostname` varchar(1000) DEFAULT NULL,
  `unixname` varchar(1000) DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `pool` varchar(256) NOT NULL,
  `pool_slots` int NOT NULL,
  `queue` varchar(256) DEFAULT NULL,
  `priority_weight` int DEFAULT NULL,
  `operator` varchar(1000) DEFAULT NULL,
  `custom_operator_name` varchar(1000) DEFAULT NULL,
  `queued_dttm` timestamp(6) NULL DEFAULT NULL,
  `queued_by_job_id` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `executor_config` blob,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `rendered_map_index` varchar(250) DEFAULT NULL,
  `external_executor_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `trigger_id` int DEFAULT NULL,
  `trigger_timeout` datetime DEFAULT NULL,
  `next_method` varchar(1000) DEFAULT NULL,
  `next_kwargs` json DEFAULT NULL,
  `task_display_name` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `task_instance`
--

INSERT INTO `task_instance` (`task_id`, `dag_id`, `run_id`, `map_index`, `start_date`, `end_date`, `duration`, `state`, `try_number`, `max_tries`, `hostname`, `unixname`, `job_id`, `pool`, `pool_slots`, `queue`, `priority_weight`, `operator`, `custom_operator_name`, `queued_dttm`, `queued_by_job_id`, `pid`, `executor_config`, `updated_at`, `rendered_map_index`, `external_executor_id`, `trigger_id`, `trigger_timeout`, `next_method`, `next_kwargs`, `task_display_name`) VALUES
('predict_sales', '7days_predictions', 'manual__2025-05-11T00:32:40.561023+00:00', -1, '2025-05-11 00:32:43.430021', '2025-05-11 00:32:46.504900', 3.07488, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 88, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 00:32:41.748684', 86, 325, 0x80057d942e, '2025-05-11 00:32:43.449736', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T00:35:15.631833+00:00', -1, '2025-05-11 00:35:17.904125', '2025-05-11 00:35:20.464099', 2.55997, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 89, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 00:35:16.183823', 86, 587, 0x80057d942e, '2025-05-11 00:35:17.921672', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T00:39:26.480227+00:00', -1, '2025-05-11 00:39:29.422846', '2025-05-11 00:39:32.264922', 2.84208, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 90, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 00:39:27.573692', 86, 975, 0x80057d942e, '2025-05-11 00:39:29.442451', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T01:23:39.572376+00:00', -1, '2025-05-11 01:23:42.370448', '2025-05-11 01:23:45.016191', 2.64574, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 91, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 01:23:40.672678', 86, 4513, 0x80057d942e, '2025-05-11 01:23:42.389787', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T01:26:01.145823+00:00', -1, '2025-05-11 01:26:03.671960', '2025-05-11 01:26:06.165816', 2.49386, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 92, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 01:26:02.087727', 86, 4733, 0x80057d942e, '2025-05-11 01:26:03.689816', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T01:33:57.689314+00:00', -1, '2025-05-11 01:34:00.439734', '2025-05-11 01:34:03.546442', 3.10671, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 93, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 01:33:58.960309', 86, 5415, 0x80057d942e, '2025-05-11 01:34:00.456264', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:27:10.029659+00:00', -1, '2025-05-11 02:27:13.420254', '2025-05-11 02:27:16.101252', 2.681, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 94, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:27:11.931615', 86, 9667, 0x80057d942e, '2025-05-11 02:27:13.438747', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:29:18.968972+00:00', -1, '2025-05-11 02:29:21.204363', '2025-05-11 02:29:24.742264', 3.5379, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 95, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:29:19.511951', 86, 9887, 0x80057d942e, '2025-05-11 02:29:21.225757', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:30:27.104891+00:00', -1, '2025-05-11 02:30:30.465076', '2025-05-11 02:30:32.985115', 2.52004, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 96, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:30:28.704816', 86, 10065, 0x80057d942e, '2025-05-11 02:30:30.483699', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:38:31.557226+00:00', -1, '2025-05-11 02:38:34.743208', '2025-05-11 02:38:37.624925', 2.88172, 'failed', 1, 0, '28f90455743b', 'airflow', 98, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:38:32.669469', 97, 315, 0x80057d942e, '2025-05-11 02:38:34.763440', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:40:54.776045+00:00', -1, '2025-05-11 02:40:57.133694', '2025-05-11 02:40:59.960692', 2.827, 'failed', 1, 0, '28f90455743b', 'airflow', 99, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:40:55.523495', 97, 535, 0x80057d942e, '2025-05-11 02:40:57.153473', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:48:14.193352+00:00', -1, '2025-05-11 02:48:17.357070', '2025-05-11 02:48:20.138857', 2.78179, 'success', 1, 0, '28f90455743b', 'airflow', 100, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:48:15.728098', 97, 1175, 0x80057d942e, '2025-05-11 02:48:17.376726', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T02:51:39.773715+00:00', -1, '2025-05-11 02:51:42.343452', '2025-05-11 02:51:45.072013', 2.72856, 'success', 1, 0, '28f90455743b', 'airflow', 101, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 02:51:40.859413', 97, 1479, 0x80057d942e, '2025-05-11 02:51:42.472580', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T03:04:11.320817+00:00', -1, '2025-05-11 03:04:13.821951', '2025-05-11 03:04:17.320645', 3.49869, 'failed', 1, 0, '28f90455743b', 'airflow', 102, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 03:04:12.300004', 97, 2539, 0x80057d942e, '2025-05-11 03:04:13.950931', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T03:06:45.424320+00:00', -1, '2025-05-11 03:06:48.696097', '2025-05-11 03:06:52.006844', 3.31075, 'success', 1, 0, '28f90455743b', 'airflow', 103, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 03:06:46.911055', 97, 3054, 0x80057d942e, '2025-05-11 03:06:48.840583', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'manual__2025-05-11T03:08:48.800610+00:00', -1, '2025-05-11 03:08:51.035540', '2025-05-11 03:08:54.621978', 3.58644, 'success', 1, 0, '28f90455743b', 'airflow', 104, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 03:08:49.140681', 97, 3485, 0x80057d942e, '2025-05-11 03:08:51.167772', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'scheduled__2025-05-09T00:00:00+00:00', -1, '2025-05-10 23:39:56.749919', '2025-05-10 23:39:57.187087', 0.437168, 'failed', 1, 0, '665f87e3b166', 'airflow', 85, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-10 23:39:55.075582', 82, 9988, 0x80057d942e, '2025-05-10 23:39:56.766425', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'scheduled__2025-05-10T00:00:00+00:00', -1, '2025-05-11 00:31:58.300725', '2025-05-11 00:32:04.401236', 6.10051, 'failed', 1, 0, 'a9a27228ff5d', 'airflow', 87, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 00:31:55.808031', 86, 231, 0x80057d942e, '2025-05-11 00:31:58.327367', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'scheduled__2025-05-11T00:00:00+00:00', -1, '2025-05-12 14:04:15.929124', '2025-05-12 14:04:27.011390', 11.0823, 'failed', 1, 0, '3db1da171586', 'airflow', 109, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-12 14:04:13.905180', 108, 248, 0x80057d942e, '2025-05-12 14:04:15.946096', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'scheduled__2025-05-12T00:00:00+00:00', -1, '2025-05-13 21:49:01.529747', '2025-05-13 21:49:11.363603', 9.83386, 'failed', 1, 0, '655c443c6945', 'airflow', 113, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-13 21:48:59.484888', 112, 248, 0x80057d942e, '2025-05-13 21:49:01.549795', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', '7days_predictions', 'scheduled__2025-05-13T00:00:00+00:00', -1, '2025-05-14 00:00:02.862001', '2025-05-14 00:00:07.575919', 4.71392, 'failed', 1, 0, '655c443c6945', 'airflow', 116, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-14 00:00:01.105717', 112, 10624, 0x80057d942e, '2025-05-14 00:00:02.991048', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T01:50:39.328010+00:00', -1, '2025-05-07 01:50:41.705560', '2025-05-07 01:50:42.510740', 0.80518, 'failed', 1, 0, '3d330f40ffae', 'airflow', 10, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:50:40.570790', 8, 201, 0x80057d942e, '2025-05-07 01:50:41.721160', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T01:50:53.838373+00:00', -1, '2025-05-07 01:50:55.856215', '2025-05-07 01:50:57.059499', 1.20328, 'failed', 1, 0, '3d330f40ffae', 'airflow', 11, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:50:54.742542', 8, 204, 0x80057d942e, '2025-05-07 01:50:55.872755', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T02:07:25.990591+00:00', -1, '2025-05-07 02:07:27.730954', '2025-05-07 02:07:28.399868', 0.668914, 'failed', 1, 0, '714db10dd7d4', 'airflow', 16, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:07:26.420384', 15, 186, 0x80057d942e, '2025-05-07 02:07:27.747476', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T02:19:15.777607+00:00', -1, '2025-05-07 02:19:17.636309', '2025-05-07 02:19:18.717354', 1.08105, 'failed', 1, 0, '714db10dd7d4', 'airflow', 19, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:19:16.527341', 15, 326, 0x80057d942e, '2025-05-07 02:19:17.651726', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T02:22:58.615831+00:00', -1, '2025-05-07 02:23:00.408857', '2025-05-07 02:23:01.386959', 0.978102, 'success', 1, 0, '714db10dd7d4', 'airflow', 21, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:22:59.267880', 15, 380, 0x80057d942e, '2025-05-07 02:23:00.428414', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T02:25:37.391229+00:00', -1, '2025-05-07 02:25:39.877701', '2025-05-07 02:25:40.703828', 0.826127, 'success', 1, 0, '714db10dd7d4', 'airflow', 25, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:25:38.784929', 15, 422, 0x80057d942e, '2025-05-07 02:25:39.894224', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T02:29:18.429339+00:00', -1, '2025-05-07 02:29:21.163376', '2025-05-07 02:29:22.154025', 0.990649, 'success', 1, 0, '714db10dd7d4', 'airflow', 27, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:29:20.058168', 15, 548, 0x80057d942e, '2025-05-07 02:29:21.186463', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T03:18:48.100846+00:00', -1, '2025-05-07 03:18:51.730205', '2025-05-07 03:18:52.588305', 0.8581, 'success', 1, 0, 'd4048300ef8e', 'airflow', 34, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:18:49.272934', 31, 222, 0x80057d942e, '2025-05-07 03:18:51.765149', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T03:50:48.329117+00:00', -1, '2025-05-07 03:50:51.304480', '2025-05-07 03:50:51.957432', 0.652952, 'success', 1, 0, 'b4c589584d23', 'airflow', 52, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:50:50.198000', 49, 225, 0x80057d942e, '2025-05-07 03:50:51.321498', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T03:53:27.623730+00:00', -1, '2025-05-07 03:53:29.363100', '2025-05-07 03:53:29.961828', 0.598728, 'success', 1, 0, 'b4c589584d23', 'airflow', 54, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:53:28.206637', 49, 294, 0x80057d942e, '2025-05-07 03:53:29.378384', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T03:55:03.283638+00:00', -1, '2025-05-07 03:55:05.676848', '2025-05-07 03:55:06.342092', 0.665244, 'success', 1, 0, 'b4c589584d23', 'airflow', 58, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:55:04.393472', 49, 384, 0x80057d942e, '2025-05-07 03:55:05.693897', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T14:13:40.175294+00:00', -1, '2025-05-07 14:13:42.746682', '2025-05-07 14:13:43.485781', 0.739099, 'success', 1, 0, 'b4c589584d23', 'airflow', 62, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 14:13:41.638157', 61, 187, 0x80057d942e, '2025-05-07 14:13:42.764007', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T14:19:56.320384+00:00', -1, '2025-05-07 14:19:58.274247', '2025-05-07 14:19:59.007859', 0.733612, 'success', 1, 0, 'b4c589584d23', 'airflow', 64, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 14:19:57.190927', 61, 295, 0x80057d942e, '2025-05-07 14:19:58.290850', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T14:21:19.655687+00:00', -1, '2025-05-07 14:21:22.055389', '2025-05-07 14:21:22.689675', 0.634286, 'success', 1, 0, 'b4c589584d23', 'airflow', 66, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 14:21:21.000114', 61, 349, 0x80057d942e, '2025-05-07 14:21:22.070859', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T14:21:45.226145+00:00', -1, '2025-05-07 14:21:47.641931', '2025-05-07 14:21:48.258657', 0.616726, 'success', 1, 0, 'b4c589584d23', 'airflow', 68, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 14:21:46.562136', 61, 391, 0x80057d942e, '2025-05-07 14:21:47.659776', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-07T14:22:14.496622+00:00', -1, '2025-05-07 14:22:16.537320', '2025-05-07 14:22:17.412166', 0.874846, 'success', 1, 0, 'b4c589584d23', 'airflow', 70, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 14:22:15.535332', 61, 433, 0x80057d942e, '2025-05-07 14:22:16.552126', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'manual__2025-05-10T19:47:58.242113+00:00', -1, '2025-05-10 19:48:00.770005', '2025-05-10 19:48:03.181105', 2.4111, 'success', 1, 0, '665f87e3b166', 'airflow', 83, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-10 19:47:59.128315', 82, 273, 0x80057d942e, '2025-05-10 19:48:00.786439', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:30:00+00:00', -1, '2025-05-07 01:36:29.569546', '2025-05-07 01:36:30.427788', 0.858242, 'failed', 1, 0, '0305dcc8baa6', 'airflow', 3, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:36:28.482615', 2, 222, 0x80057d942e, '2025-05-07 01:36:29.587962', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:35:00+00:00', -1, '2025-05-07 01:40:01.836800', '2025-05-07 01:40:02.800260', 0.96346, 'failed', 1, 0, '0305dcc8baa6', 'airflow', 4, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:40:00.676855', 2, 261, 0x80057d942e, '2025-05-07 01:40:01.854038', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:40:00+00:00', -1, '2025-05-07 01:45:01.473889', '2025-05-07 01:45:02.391764', 0.917875, 'failed', 1, 0, 'bd25331bc90c', 'airflow', 7, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:45:00.311377', 6, 204, 0x80057d942e, '2025-05-07 01:45:01.491139', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:45:00+00:00', -1, '2025-05-07 01:50:02.201700', '2025-05-07 01:50:03.017437', 0.815737, 'failed', 1, 0, '3d330f40ffae', 'airflow', 9, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:50:01.148644', 8, 186, 0x80057d942e, '2025-05-07 01:50:02.216887', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:50:00+00:00', -1, '2025-05-07 01:55:02.104230', '2025-05-07 01:55:02.818946', 0.714716, 'failed', 1, 0, '3d330f40ffae', 'airflow', 12, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 01:55:01.072784', 8, 255, 0x80057d942e, '2025-05-07 01:55:02.120981', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T01:55:00+00:00', -1, '2025-05-07 02:00:01.496084', '2025-05-07 02:00:02.167561', 0.671477, 'failed', 1, 0, '3d330f40ffae', 'airflow', 13, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:00:00.415928', 8, 318, 0x80057d942e, '2025-05-07 02:00:01.511945', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:00:00+00:00', -1, '2025-05-07 02:05:01.731591', '2025-05-07 02:05:02.430983', 0.699392, 'failed', 1, 0, '3d330f40ffae', 'airflow', 14, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:05:00.672525', 8, 374, 0x80057d942e, '2025-05-07 02:05:01.748122', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:05:00+00:00', -1, '2025-05-07 02:10:02.316261', '2025-05-07 02:10:03.058617', 0.742356, 'failed', 1, 0, '714db10dd7d4', 'airflow', 17, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:10:01.166227', 15, 216, 0x80057d942e, '2025-05-07 02:10:02.334945', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:10:00+00:00', -1, '2025-05-07 02:15:01.785994', '2025-05-07 02:15:02.558541', 0.772547, 'failed', 1, 0, '714db10dd7d4', 'airflow', 18, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:15:00.750294', 15, 276, 0x80057d942e, '2025-05-07 02:15:01.802861', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:15:00+00:00', -1, '2025-05-07 02:20:01.279444', '2025-05-07 02:20:02.189268', 0.909824, 'failed', 1, 0, '714db10dd7d4', 'airflow', 20, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:20:00.242026', 15, 341, 0x80057d942e, '2025-05-07 02:20:01.294546', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:20:00+00:00', -1, '2025-05-07 02:25:01.824436', '2025-05-07 02:25:02.790660', 0.966224, 'success', 1, 0, '714db10dd7d4', 'airflow', 23, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:25:00.771389', 15, 410, 0x80057d942e, '2025-05-07 02:25:01.841157', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T02:25:00+00:00', -1, '2025-05-07 02:30:01.650441', '2025-05-07 02:30:02.531927', 0.881486, 'success', 1, 0, '714db10dd7d4', 'airflow', 29, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 02:30:00.570672', 15, 581, 0x80057d942e, '2025-05-07 02:30:01.670007', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:10:00+00:00', -1, '2025-05-07 03:18:03.401716', '2025-05-07 03:18:04.433562', 1.03185, 'success', 1, 0, 'd4048300ef8e', 'airflow', 32, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:18:01.804776', 31, 180, 0x80057d942e, '2025-05-07 03:18:03.424100', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:15:00+00:00', -1, '2025-05-07 03:20:02.061393', '2025-05-07 03:20:02.822904', 0.761511, 'success', 1, 0, 'd4048300ef8e', 'airflow', 36, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:20:01.002459', 31, 270, 0x80057d942e, '2025-05-07 03:20:02.078873', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:20:00+00:00', -1, '2025-05-07 03:25:01.538189', '2025-05-07 03:25:02.233015', 0.694826, 'success', 1, 0, 'd4048300ef8e', 'airflow', 38, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:25:00.439386', 31, 372, 0x80057d942e, '2025-05-07 03:25:01.555591', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:25:00+00:00', -1, '2025-05-07 03:30:01.693251', '2025-05-07 03:30:02.479557', 0.786306, 'success', 1, 0, 'd4048300ef8e', 'airflow', 40, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:30:00.605958', 31, 468, 0x80057d942e, '2025-05-07 03:30:01.708896', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:30:00+00:00', -1, '2025-05-07 03:35:01.259218', '2025-05-07 03:35:01.997128', 0.73791, 'success', 1, 0, 'd4048300ef8e', 'airflow', 42, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:35:00.142920', 31, 558, 0x80057d942e, '2025-05-07 03:35:01.275385', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:35:00+00:00', -1, '2025-05-07 03:40:01.748363', '2025-05-07 03:40:03.219399', 1.47104, 'success', 1, 0, '1c8eaf58deee', 'airflow', 45, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:40:00.416074', 44, 210, 0x80057d942e, '2025-05-07 03:40:01.764346', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:40:00+00:00', -1, '2025-05-07 03:45:01.133614', '2025-05-07 03:45:01.788649', 0.655035, 'success', 1, 0, '1c8eaf58deee', 'airflow', 47, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:45:00.097604', 44, 306, 0x80057d942e, '2025-05-07 03:45:01.148164', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:45:00+00:00', -1, '2025-05-07 03:50:01.924405', '2025-05-07 03:50:02.710839', 0.786434, 'success', 1, 0, 'b4c589584d23', 'airflow', 50, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:50:00.626715', 49, 180, 0x80057d942e, '2025-05-07 03:50:01.943660', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:50:00+00:00', -1, '2025-05-07 03:55:01.325451', '2025-05-07 03:55:02.078828', 0.753377, 'success', 1, 0, 'b4c589584d23', 'airflow', 56, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-07 03:55:00.169984', 49, 346, 0x80057d942e, '2025-05-07 03:55:01.344472', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-07T03:55:00+00:00', -1, '2025-05-09 22:49:56.045323', '2025-05-09 22:49:56.935608', 0.890285, 'success', 1, 0, 'b4c589584d23', 'airflow', 73, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-09 22:49:53.260886', 72, 182, 0x80057d942e, '2025-05-09 22:49:56.061054', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-08T03:55:00+00:00', -1, '2025-05-09 22:49:56.045317', '2025-05-09 22:49:56.979067', 0.93375, 'success', 1, 0, 'b4c589584d23', 'airflow', 74, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-09 22:49:53.415549', 72, 183, 0x80057d942e, '2025-05-09 22:49:56.061497', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-09T03:55:00+00:00', -1, '2025-05-10 03:55:02.122428', '2025-05-10 03:55:03.040005', 0.917577, 'success', 1, 0, '794180b3542f', 'airflow', 79, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-10 03:55:00.383904', 78, 4878, 0x80057d942e, '2025-05-10 03:55:02.139464', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-10T03:55:00+00:00', -1, '2025-05-11 11:48:58.899684', '2025-05-11 11:49:00.486057', 1.58637, 'success', 1, 0, '28f90455743b', 'airflow', 106, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-11 11:48:56.007530', 105, 231, 0x80057d942e, '2025-05-11 11:48:59.043377', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-11T03:55:00+00:00', -1, '2025-05-12 14:04:15.936951', '2025-05-12 14:04:16.796747', 0.859796, 'success', 1, 0, '3db1da171586', 'airflow', 110, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-12 14:04:13.905180', 108, 249, 0x80057d942e, '2025-05-12 14:04:16.080240', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-12T03:55:00+00:00', -1, '2025-05-13 21:49:01.551540', '2025-05-13 21:49:02.655681', 1.10414, 'success', 1, 0, '655c443c6945', 'airflow', 114, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-13 21:48:59.484888', 112, 249, 0x80057d942e, '2025-05-13 21:49:01.568152', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('fetch_weather', 'make_prediction', 'scheduled__2025-05-13T03:55:00+00:00', -1, '2025-05-14 10:04:31.854175', '2025-05-14 10:04:41.840041', 9.98587, 'success', 1, 0, '655c443c6945', 'airflow', 118, 'default_pool', 1, 'default', 2, 'PythonOperator', NULL, '2025-05-14 10:04:28.332955', 117, 231, 0x80057d942e, '2025-05-14 10:04:32.040925', NULL, NULL, NULL, NULL, NULL, NULL, 'fetch_weather'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T01:50:39.328010+00:00', -1, '2025-05-07 01:50:42.585976', '2025-05-07 01:50:42.585976', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:50:42.591740', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T01:50:53.838373+00:00', -1, '2025-05-07 01:50:57.135115', '2025-05-07 01:50:57.135115', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:50:57.140123', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T02:07:25.990591+00:00', -1, '2025-05-07 02:07:28.446039', '2025-05-07 02:07:28.446039', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:07:28.451169', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T02:19:15.777607+00:00', -1, '2025-05-07 02:19:18.789289', '2025-05-07 02:19:18.789289', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:19:18.794562', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T02:22:58.615831+00:00', -1, '2025-05-07 02:23:02.544161', '2025-05-07 02:23:02.773906', 0.229745, 'failed', 1, 0, '714db10dd7d4', 'airflow', 22, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 02:23:01.516310', 15, 383, 0x80057d942e, '2025-05-07 02:23:02.559479', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T02:25:37.391229+00:00', -1, '2025-05-07 02:25:42.388624', '2025-05-07 02:25:42.626529', 0.237905, 'failed', 1, 0, '714db10dd7d4', 'airflow', 26, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 02:25:41.324744', 15, 425, 0x80057d942e, '2025-05-07 02:25:42.404707', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T02:29:18.429339+00:00', -1, '2025-05-07 02:29:24.440352', '2025-05-07 02:29:25.335917', 0.895565, 'failed', 1, 0, '714db10dd7d4', 'airflow', 28, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 02:29:23.320356', 15, 555, 0x80057d942e, '2025-05-07 02:29:24.457903', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T03:18:48.100846+00:00', -1, '2025-05-07 03:18:54.289084', '2025-05-07 03:18:55.585115', 1.29603, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 35, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:18:53.167607', 31, 225, 0x80057d942e, '2025-05-07 03:18:54.305300', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T03:50:48.329117+00:00', -1, '2025-05-07 03:50:53.306141', '2025-05-07 03:50:54.213042', 0.906901, 'failed', 1, 0, 'b4c589584d23', 'airflow', 53, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:50:52.028487', 49, 231, 0x80057d942e, '2025-05-07 03:50:53.321740', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T03:53:27.623730+00:00', -1, '2025-05-07 03:53:31.203810', '2025-05-07 03:53:32.648687', 1.44488, 'success', 1, 0, 'b4c589584d23', 'airflow', 55, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:53:30.163084', 49, 297, 0x80057d942e, '2025-05-07 03:53:31.219765', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T03:55:03.283638+00:00', -1, '2025-05-07 03:55:08.544390', '2025-05-07 03:55:09.873848', 1.32946, 'success', 1, 0, 'b4c589584d23', 'airflow', 59, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:55:07.427785', 49, 387, 0x80057d942e, '2025-05-07 03:55:08.561519', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T14:13:40.175294+00:00', -1, '2025-05-07 14:13:44.811314', '2025-05-07 14:13:47.147149', 2.33583, 'success', 1, 0, 'b4c589584d23', 'airflow', 63, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 14:13:43.810993', 61, 190, 0x80057d942e, '2025-05-07 14:13:44.826787', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T14:19:56.320384+00:00', -1, '2025-05-07 14:20:00.682113', '2025-05-07 14:20:02.057461', 1.37535, 'success', 1, 0, 'b4c589584d23', 'airflow', 65, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 14:19:59.647175', 61, 301, 0x80057d942e, '2025-05-07 14:20:00.699824', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T14:21:19.655687+00:00', -1, '2025-05-07 14:21:24.212364', '2025-05-07 14:21:25.549182', 1.33682, 'success', 1, 0, 'b4c589584d23', 'airflow', 67, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 14:21:23.187112', 61, 352, 0x80057d942e, '2025-05-07 14:21:24.227428', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T14:21:45.226145+00:00', -1, '2025-05-07 14:21:49.776113', '2025-05-07 14:21:51.161368', 1.38525, 'success', 1, 0, 'b4c589584d23', 'airflow', 69, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 14:21:48.763861', 61, 394, 0x80057d942e, '2025-05-07 14:21:49.792847', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-07T14:22:14.496622+00:00', -1, '2025-05-07 14:22:18.732746', '2025-05-07 14:22:20.042556', 1.30981, 'success', 1, 0, 'b4c589584d23', 'airflow', 71, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 14:22:17.730037', 61, 436, 0x80057d942e, '2025-05-07 14:22:18.749254', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'manual__2025-05-10T19:47:58.242113+00:00', -1, '2025-05-10 19:48:05.804262', '2025-05-10 19:48:07.661653', 1.85739, 'success', 1, 0, '665f87e3b166', 'airflow', 84, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-10 19:48:04.157793', 82, 291, 0x80057d942e, '2025-05-10 19:48:05.819912', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:30:00+00:00', -1, '2025-05-07 01:36:30.498770', '2025-05-07 01:36:30.498770', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:36:30.506930', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:35:00+00:00', -1, '2025-05-07 01:40:02.915823', '2025-05-07 01:40:02.915823', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:40:02.921574', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:40:00+00:00', -1, '2025-05-07 01:45:02.466426', '2025-05-07 01:45:02.466426', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:45:02.470209', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:45:00+00:00', -1, '2025-05-07 01:50:03.155277', '2025-05-07 01:50:03.155277', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:50:03.160501', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:50:00+00:00', -1, '2025-05-07 01:55:02.895307', '2025-05-07 01:55:02.895307', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 01:55:02.900878', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T01:55:00+00:00', -1, '2025-05-07 02:00:02.247139', '2025-05-07 02:00:02.247139', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:00:02.252897', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:00:00+00:00', -1, '2025-05-07 02:05:02.486155', '2025-05-07 02:05:02.486155', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:05:02.491714', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:05:00+00:00', -1, '2025-05-07 02:10:03.112580', '2025-05-07 02:10:03.112580', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:10:03.118180', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:10:00+00:00', -1, '2025-05-07 02:15:02.668157', '2025-05-07 02:15:02.668157', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:15:02.673507', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:15:00+00:00', -1, '2025-05-07 02:20:02.271927', '2025-05-07 02:20:02.271927', 0, 'upstream_failed', 0, 0, '', 'airflow', NULL, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, NULL, NULL, NULL, 0x80057d942e, '2025-05-07 02:20:02.278353', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:20:00+00:00', -1, '2025-05-07 02:25:04.019087', '2025-05-07 02:25:04.231707', 0.21262, 'failed', 1, 0, '714db10dd7d4', 'airflow', 24, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 02:25:02.974666', 15, 413, 0x80057d942e, '2025-05-07 02:25:04.036365', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T02:25:00+00:00', -1, '2025-05-07 02:30:03.862902', '2025-05-07 02:30:04.762978', 0.900076, 'failed', 1, 0, '714db10dd7d4', 'airflow', 30, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 02:30:02.774208', 15, 584, 0x80057d942e, '2025-05-07 02:30:03.879172', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:10:00+00:00', -1, '2025-05-07 03:18:06.547521', '2025-05-07 03:18:08.432520', 1.885, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 33, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:18:05.222243', 31, 183, 0x80057d942e, '2025-05-07 03:18:06.567632', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:15:00+00:00', -1, '2025-05-07 03:20:04.921912', '2025-05-07 03:20:05.913278', 0.991366, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 37, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:20:03.914431', 31, 273, 0x80057d942e, '2025-05-07 03:20:04.936700', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:20:00+00:00', -1, '2025-05-07 03:25:03.627428', '2025-05-07 03:25:04.582267', 0.954839, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 39, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:25:02.532864', 31, 375, 0x80057d942e, '2025-05-07 03:25:03.644233', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:25:00+00:00', -1, '2025-05-07 03:30:04.147424', '2025-05-07 03:30:05.755830', 1.60841, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 41, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:30:03.098827', 31, 471, 0x80057d942e, '2025-05-07 03:30:04.163393', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:30:00+00:00', -1, '2025-05-07 03:35:03.276016', '2025-05-07 03:35:05.131442', 1.85543, 'failed', 1, 0, 'd4048300ef8e', 'airflow', 43, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:35:02.184695', 31, 567, 0x80057d942e, '2025-05-07 03:35:03.292858', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:35:00+00:00', -1, '2025-05-07 03:40:04.466239', '2025-05-07 03:40:06.351081', 1.88484, 'failed', 1, 0, '1c8eaf58deee', 'airflow', 46, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:40:03.317954', 44, 213, 0x80057d942e, '2025-05-07 03:40:04.490287', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:40:00+00:00', -1, '2025-05-07 03:45:02.929653', '2025-05-07 03:45:03.804480', 0.874827, 'failed', 1, 0, '1c8eaf58deee', 'airflow', 48, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:45:01.906778', 44, 309, 0x80057d942e, '2025-05-07 03:45:02.944816', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:45:00+00:00', -1, '2025-05-07 03:50:04.600705', '2025-05-07 03:50:06.144617', 1.54391, 'failed', 1, 0, 'b4c589584d23', 'airflow', 51, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:50:03.556908', 49, 183, 0x80057d942e, '2025-05-07 03:50:04.617169', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:50:00+00:00', -1, '2025-05-07 03:55:03.255939', '2025-05-07 03:55:05.136621', 1.88068, 'success', 1, 0, 'b4c589584d23', 'airflow', 57, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-07 03:55:02.151019', 49, 351, 0x80057d942e, '2025-05-07 03:55:03.275219', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-07T03:55:00+00:00', -1, '2025-05-09 22:49:58.808783', '2025-05-09 22:50:05.768807', 6.96002, 'success', 1, 0, 'b4c589584d23', 'airflow', 75, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-09 22:49:57.773968', 72, 188, 0x80057d942e, '2025-05-09 22:49:58.825734', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-08T03:55:00+00:00', -1, '2025-05-09 22:49:58.815688', '2025-05-09 22:50:05.932243', 7.11656, 'success', 1, 0, 'b4c589584d23', 'airflow', 76, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-09 22:49:57.773968', 72, 189, 0x80057d942e, '2025-05-09 22:49:58.832943', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-09T03:55:00+00:00', -1, '2025-05-10 03:55:05.907261', '2025-05-10 03:55:07.291859', 1.3846, 'success', 1, 0, '794180b3542f', 'airflow', 80, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-10 03:55:04.309907', 78, 4917, 0x80057d942e, '2025-05-10 03:55:05.926416', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-10T03:55:00+00:00', -1, '2025-05-11 11:49:02.309753', '2025-05-11 11:49:03.652540', 1.34279, 'success', 1, 0, '28f90455743b', 'airflow', 107, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-11 11:49:00.863202', 105, 249, 0x80057d942e, '2025-05-11 11:49:02.439544', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-11T03:55:00+00:00', -1, '2025-05-12 14:04:19.730513', '2025-05-12 14:04:21.959600', 2.22909, 'success', 1, 0, '3db1da171586', 'airflow', 111, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-12 14:04:17.281244', 108, 267, 0x80057d942e, '2025-05-12 14:04:19.863075', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-12T03:55:00+00:00', -1, '2025-05-13 21:49:05.320108', '2025-05-13 21:49:07.206869', 1.88676, 'success', 1, 0, '655c443c6945', 'airflow', 115, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-13 21:49:02.827720', 112, 267, 0x80057d942e, '2025-05-13 21:49:05.475538', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales'),
('predict_sales', 'make_prediction', 'scheduled__2025-05-13T03:55:00+00:00', -1, '2025-05-14 10:04:44.212204', '2025-05-14 10:04:45.779240', 1.56704, 'success', 1, 0, '655c443c6945', 'airflow', 119, 'default_pool', 1, 'default', 1, 'PythonOperator', NULL, '2025-05-14 10:04:42.513078', 117, 249, 0x80057d942e, '2025-05-14 10:04:44.341464', NULL, NULL, NULL, NULL, NULL, NULL, 'predict_sales');

-- --------------------------------------------------------

--
-- Structure de la table `task_instance_note`
--

CREATE TABLE `task_instance_note` (
  `user_id` int DEFAULT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL,
  `content` text,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `task_map`
--

CREATE TABLE `task_map` (
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL,
  `length` int NOT NULL,
  `keys` json DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Structure de la table `task_outlet_dataset_reference`
--

CREATE TABLE `task_outlet_dataset_reference` (
  `dataset_id` int NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `task_reschedule`
--

CREATE TABLE `task_reschedule` (
  `id` int NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL DEFAULT '-1',
  `try_number` int NOT NULL,
  `start_date` timestamp(6) NOT NULL,
  `end_date` timestamp(6) NOT NULL,
  `duration` int NOT NULL,
  `reschedule_date` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions_purchasebill`
--

CREATE TABLE `transactions_purchasebill` (
  `billno` int NOT NULL,
  `time` datetime(6) NOT NULL,
  `supplier_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions_purchasebilldetails`
--

CREATE TABLE `transactions_purchasebilldetails` (
  `id` int NOT NULL,
  `eway` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `veh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `po` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cgst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `igst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cess` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tcs` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` int NOT NULL,
  `billno_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions_purchaseitem`
--

CREATE TABLE `transactions_purchaseitem` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `perprice` int NOT NULL,
  `totalprice` int NOT NULL,
  `billno_id` int NOT NULL,
  `stock_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions_salebill`
--

CREATE TABLE `transactions_salebill` (
  `billno` int NOT NULL,
  `time` datetime(6) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions_salebill`
--

INSERT INTO `transactions_salebill` (`billno`, `time`, `name`, `phone`, `address`, `email`, `gstin`) VALUES
(1, '2025-05-10 16:01:44.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(2, '2025-05-09 14:30:22.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(3, '2025-05-08 11:45:15.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(4, '2025-05-07 09:20:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(5, '2025-05-06 17:55:47.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(6, '2025-05-05 13:10:28.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(7, '2025-05-04 10:25:19.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(8, '2025-05-03 15:40:52.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(9, '2025-05-02 12:05:37.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(10, '2025-05-01 18:30:44.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(11, '2025-04-30 14:55:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(12, '2025-04-29 11:20:13.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(13, '2025-04-28 09:45:29.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(14, '2025-04-27 16:10:58.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(15, '2025-04-26 13:35:42.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(16, '2025-04-25 10:00:31.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(17, '2025-04-24 17:25:19.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(18, '2025-04-23 14:50:07.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(19, '2025-04-22 12:15:53.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(20, '2025-04-21 09:40:38.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(21, '2025-04-20 17:05:24.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(22, '2025-04-19 14:30:12.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(23, '2025-04-18 11:55:46.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(24, '2025-04-17 09:20:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(25, '2025-04-16 16:45:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(26, '2025-04-15 14:10:09.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(27, '2025-04-14 11:35:57.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(28, '2025-04-13 09:00:45.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(29, '2025-04-12 16:25:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(30, '2025-04-11 13:50:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(31, '2025-04-02 15:46:31.962915', 'Ali El Ouankrimi', '0606967940', 'HAY TAJZIAT NAIT EL KOLEA AIT MELLOUL', 'alielouankrimi@gmail.com', '456456456645456');

-- --------------------------------------------------------

--
-- Structure de la table `transactions_salebilldetails`
--

CREATE TABLE `transactions_salebilldetails` (
  `id` int NOT NULL,
  `eway` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `veh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `destination` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `po` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cgst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `igst` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cess` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tcs` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` int NOT NULL,
  `billno_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions_salebilldetails`
--

INSERT INTO `transactions_salebilldetails` (`id`, `eway`, `veh`, `destination`, `po`, `cgst`, `sgst`, `igst`, `cess`, `tcs`, `total`, `billno_id`) VALUES
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10712, 1),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10679, 2),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11027, 3),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10618, 4),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11040, 5),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10881, 6),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10647, 7),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11119, 8),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11048, 9),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11565, 10),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10704, 11),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10850, 12),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11204, 13),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10787, 14),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10895, 15),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10512, 16),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10414, 17),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11013, 18),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10747, 19),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10687, 20),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10923, 21),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10549, 22),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10844, 23),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11008, 24),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10381, 25),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10294, 26),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10732, 27),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10379, 28),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10051, 29),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10149, 30),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10350, 31);

-- --------------------------------------------------------

--
-- Structure de la table `transactions_saleitem`
--

CREATE TABLE `transactions_saleitem` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `perprice` int NOT NULL,
  `totalprice` int NOT NULL,
  `billno_id` int NOT NULL,
  `stock_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions_saleitem`
--

INSERT INTO `transactions_saleitem` (`id`, `quantity`, `perprice`, `totalprice`, `billno_id`, `stock_id`) VALUES
(12, 50, 70, 3500, 31, 9),
(13, 50, 25, 1250, 31, 19),
(14, 30, 50, 1500, 31, 7),
(15, 30, 30, 900, 31, 20),
(16, 10, 10, 100, 31, 5),
(17, 30, 70, 2100, 31, 18),
(18, 10, 100, 1000, 31, 12);

-- --------------------------------------------------------

--
-- Structure de la table `transactions_supplier`
--

CREATE TABLE `transactions_supplier` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `gstin` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions_supplier`
--

INSERT INTO `transactions_supplier` (`id`, `name`, `phone`, `address`, `email`, `gstin`, `is_deleted`) VALUES
(1, 'Ali El Ouankrimi', '0606967940', 'HAY TAJZIAT NAIT EL KOLEA AIT MELLOUL', 'alielouankrimi@gmail.com', '456456456645456', 0);

-- --------------------------------------------------------

--
-- Structure de la table `trigger`
--

CREATE TABLE `trigger` (
  `id` int NOT NULL,
  `classpath` varchar(1000) NOT NULL,
  `kwargs` text NOT NULL,
  `created_date` timestamp(6) NOT NULL,
  `triggerer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `variable`
--

CREATE TABLE `variable` (
  `id` int NOT NULL,
  `key` varchar(250) DEFAULT NULL,
  `val` mediumtext,
  `description` text,
  `is_encrypted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `xcom`
--

CREATE TABLE `xcom` (
  `dag_run_id` int NOT NULL,
  `task_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `map_index` int NOT NULL DEFAULT '-1',
  `key` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dag_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `run_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `value` longblob,
  `timestamp` timestamp(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ab_permission`
--
ALTER TABLE `ab_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_permission_name_uq` (`name`);

--
-- Index pour la table `ab_permission_view`
--
ALTER TABLE `ab_permission_view`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_permission_view_permission_id_view_menu_id_uq` (`permission_id`,`view_menu_id`),
  ADD KEY `ab_permission_view_view_menu_id_fkey` (`view_menu_id`);

--
-- Index pour la table `ab_permission_view_role`
--
ALTER TABLE `ab_permission_view_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_permission_view_role_permission_view_id_role_id_uq` (`permission_view_id`,`role_id`),
  ADD KEY `ab_permission_view_role_role_id_fkey` (`role_id`);

--
-- Index pour la table `ab_register_user`
--
ALTER TABLE `ab_register_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_register_user_username_uq` (`username`);

--
-- Index pour la table `ab_role`
--
ALTER TABLE `ab_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_role_name_uq` (`name`);

--
-- Index pour la table `ab_user`
--
ALTER TABLE `ab_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_user_username_uq` (`username`),
  ADD UNIQUE KEY `ab_user_email_uq` (`email`),
  ADD KEY `ab_user_created_by_fk_fkey` (`created_by_fk`),
  ADD KEY `ab_user_changed_by_fk_fkey` (`changed_by_fk`);

--
-- Index pour la table `ab_user_role`
--
ALTER TABLE `ab_user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_user_role_user_id_role_id_uq` (`user_id`,`role_id`),
  ADD KEY `ab_user_role_role_id_fkey` (`role_id`);

--
-- Index pour la table `ab_view_menu`
--
ALTER TABLE `ab_view_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ab_view_menu_name_uq` (`name`);

--
-- Index pour la table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `callback_request`
--
ALTER TABLE `callback_request`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `connection_conn_id_uq` (`conn_id`);

--
-- Index pour la table `dag`
--
ALTER TABLE `dag`
  ADD PRIMARY KEY (`dag_id`),
  ADD KEY `idx_root_dag_id` (`root_dag_id`),
  ADD KEY `idx_next_dagrun_create_after` (`next_dagrun_create_after`);

--
-- Index pour la table `dagrun_dataset_event`
--
ALTER TABLE `dagrun_dataset_event`
  ADD PRIMARY KEY (`dag_run_id`,`event_id`),
  ADD KEY `idx_dagrun_dataset_events_event_id` (`event_id`),
  ADD KEY `idx_dagrun_dataset_events_dag_run_id` (`dag_run_id`);

--
-- Index pour la table `dag_code`
--
ALTER TABLE `dag_code`
  ADD PRIMARY KEY (`fileloc_hash`);

--
-- Index pour la table `dag_owner_attributes`
--
ALTER TABLE `dag_owner_attributes`
  ADD PRIMARY KEY (`dag_id`,`owner`);

--
-- Index pour la table `dag_pickle`
--
ALTER TABLE `dag_pickle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dag_run`
--
ALTER TABLE `dag_run`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dag_run_dag_id_execution_date_key` (`dag_id`,`execution_date`),
  ADD UNIQUE KEY `dag_run_dag_id_run_id_key` (`dag_id`,`run_id`),
  ADD KEY `task_instance_log_template_id_fkey` (`log_template_id`),
  ADD KEY `dag_id_state` (`dag_id`,`state`),
  ADD KEY `idx_dag_run_dag_id` (`dag_id`),
  ADD KEY `idx_dag_run_running_dags` (`state`,`dag_id`),
  ADD KEY `idx_last_scheduling_decision` (`last_scheduling_decision`),
  ADD KEY `idx_dag_run_queued_dags` (`state`,`dag_id`);

--
-- Index pour la table `dag_run_note`
--
ALTER TABLE `dag_run_note`
  ADD PRIMARY KEY (`dag_run_id`),
  ADD KEY `dag_run_note_user_fkey` (`user_id`);

--
-- Index pour la table `dag_schedule_dataset_reference`
--
ALTER TABLE `dag_schedule_dataset_reference`
  ADD PRIMARY KEY (`dataset_id`,`dag_id`),
  ADD KEY `dsdr_dag_id_fkey` (`dag_id`);

--
-- Index pour la table `dag_tag`
--
ALTER TABLE `dag_tag`
  ADD PRIMARY KEY (`name`,`dag_id`),
  ADD KEY `dag_tag_dag_id_fkey` (`dag_id`);

--
-- Index pour la table `dag_warning`
--
ALTER TABLE `dag_warning`
  ADD PRIMARY KEY (`dag_id`,`warning_type`);

--
-- Index pour la table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uri_unique` (`uri`);

--
-- Index pour la table `dataset_dag_run_queue`
--
ALTER TABLE `dataset_dag_run_queue`
  ADD PRIMARY KEY (`dataset_id`,`target_dag_id`),
  ADD KEY `ddrq_dag_fkey` (`target_dag_id`);

--
-- Index pour la table `dataset_event`
--
ALTER TABLE `dataset_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dataset_id_timestamp` (`dataset_id`,`timestamp`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `import_error`
--
ALTER TABLE `import_error`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventory_category`
--
ALTER TABLE `inventory_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `inventory_salesforecast`
--
ALTER TABLE `inventory_salesforecast`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventory_salesprediction`
--
ALTER TABLE `inventory_salesprediction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_salespredi_stock_id_b3551980_fk_inventory` (`stock_id`);

--
-- Index pour la table `inventory_stock`
--
ALTER TABLE `inventory_stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `inventory_stock_category_id_55a07129_fk_inventory_category_id` (`category_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_state_heartbeat` (`state`,`latest_heartbeat`),
  ADD KEY `job_type_heart` (`job_type`,`latest_heartbeat`),
  ADD KEY `idx_job_dag_id` (`dag_id`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_dag` (`dag_id`),
  ADD KEY `idx_log_dttm` (`dttm`),
  ADD KEY `idx_log_event` (`event`);

--
-- Index pour la table `log_template`
--
ALTER TABLE `log_template`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rendered_task_instance_fields`
--
ALTER TABLE `rendered_task_instance_fields`
  ADD PRIMARY KEY (`dag_id`,`task_id`,`run_id`,`map_index`);

--
-- Index pour la table `serialized_dag`
--
ALTER TABLE `serialized_dag`
  ADD PRIMARY KEY (`dag_id`),
  ADD KEY `idx_fileloc_hash` (`fileloc_hash`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Index pour la table `sla_miss`
--
ALTER TABLE `sla_miss`
  ADD PRIMARY KEY (`task_id`,`dag_id`,`execution_date`),
  ADD KEY `sm_dag` (`dag_id`);

--
-- Index pour la table `slot_pool`
--
ALTER TABLE `slot_pool`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot_pool_pool_uq` (`pool`);

--
-- Index pour la table `task_fail`
--
ALTER TABLE `task_fail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_task_fail_task_instance` (`dag_id`,`task_id`,`run_id`,`map_index`);

--
-- Index pour la table `task_instance`
--
ALTER TABLE `task_instance`
  ADD PRIMARY KEY (`dag_id`,`task_id`,`run_id`,`map_index`),
  ADD KEY `ti_state` (`state`),
  ADD KEY `ti_dag_run` (`dag_id`,`run_id`),
  ADD KEY `ti_state_lkp` (`dag_id`,`task_id`,`run_id`,`state`),
  ADD KEY `ti_trigger_id` (`trigger_id`),
  ADD KEY `ti_pool` (`pool`,`state`,`priority_weight`),
  ADD KEY `ti_job_id` (`job_id`),
  ADD KEY `ti_dag_state` (`dag_id`,`state`);

--
-- Index pour la table `task_instance_note`
--
ALTER TABLE `task_instance_note`
  ADD PRIMARY KEY (`task_id`,`dag_id`,`run_id`,`map_index`),
  ADD KEY `task_instance_note_ti_fkey` (`dag_id`,`task_id`,`run_id`,`map_index`),
  ADD KEY `task_instance_note_user_fkey` (`user_id`);

--
-- Index pour la table `task_map`
--
ALTER TABLE `task_map`
  ADD PRIMARY KEY (`dag_id`,`task_id`,`run_id`,`map_index`);

--
-- Index pour la table `task_outlet_dataset_reference`
--
ALTER TABLE `task_outlet_dataset_reference`
  ADD PRIMARY KEY (`dataset_id`,`dag_id`,`task_id`),
  ADD KEY `todr_dag_id_fkey` (`dag_id`);

--
-- Index pour la table `task_reschedule`
--
ALTER TABLE `task_reschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_task_reschedule_dag_task_run` (`dag_id`,`task_id`,`run_id`,`map_index`),
  ADD KEY `idx_task_reschedule_dag_run` (`dag_id`,`run_id`);

--
-- Index pour la table `transactions_purchasebill`
--
ALTER TABLE `transactions_purchasebill`
  ADD PRIMARY KEY (`billno`),
  ADD KEY `transactions_purchas_supplier_id_ab6d7429_fk_transacti` (`supplier_id`);

--
-- Index pour la table `transactions_purchasebilldetails`
--
ALTER TABLE `transactions_purchasebilldetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_purchas_billno_id_68bce76e_fk_transacti` (`billno_id`);

--
-- Index pour la table `transactions_purchaseitem`
--
ALTER TABLE `transactions_purchaseitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_purchas_billno_id_1c37095c_fk_transacti` (`billno_id`),
  ADD KEY `transactions_purchas_stock_id_7cdd5bf7_fk_inventory` (`stock_id`);

--
-- Index pour la table `transactions_salebill`
--
ALTER TABLE `transactions_salebill`
  ADD PRIMARY KEY (`billno`);

--
-- Index pour la table `transactions_salebilldetails`
--
ALTER TABLE `transactions_salebilldetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_salebil_billno_id_29bdca68_fk_transacti` (`billno_id`);

--
-- Index pour la table `transactions_saleitem`
--
ALTER TABLE `transactions_saleitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_saleite_billno_id_eb219925_fk_transacti` (`billno_id`),
  ADD KEY `transactions_saleitem_stock_id_4b17b3fd_fk_inventory_stock_id` (`stock_id`);

--
-- Index pour la table `transactions_supplier`
--
ALTER TABLE `transactions_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `gstin` (`gstin`);

--
-- Index pour la table `trigger`
--
ALTER TABLE `trigger`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variable_key_uq` (`key`);

--
-- Index pour la table `xcom`
--
ALTER TABLE `xcom`
  ADD PRIMARY KEY (`dag_run_id`,`task_id`,`map_index`,`key`),
  ADD KEY `idx_xcom_task_instance` (`dag_id`,`task_id`,`run_id`,`map_index`),
  ADD KEY `idx_xcom_key` (`key`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ab_permission`
--
ALTER TABLE `ab_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ab_permission_view`
--
ALTER TABLE `ab_permission_view`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `ab_permission_view_role`
--
ALTER TABLE `ab_permission_view_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT pour la table `ab_register_user`
--
ALTER TABLE `ab_register_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ab_role`
--
ALTER TABLE `ab_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ab_user`
--
ALTER TABLE `ab_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ab_user_role`
--
ALTER TABLE `ab_user_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ab_view_menu`
--
ALTER TABLE `ab_view_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `callback_request`
--
ALTER TABLE `callback_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dag_pickle`
--
ALTER TABLE `dag_pickle`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dag_run`
--
ALTER TABLE `dag_run`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dataset_event`
--
ALTER TABLE `dataset_event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `import_error`
--
ALTER TABLE `import_error`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `inventory_category`
--
ALTER TABLE `inventory_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `inventory_salesforecast`
--
ALTER TABLE `inventory_salesforecast`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inventory_salesprediction`
--
ALTER TABLE `inventory_salesprediction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT pour la table `inventory_stock`
--
ALTER TABLE `inventory_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT pour la table `log_template`
--
ALTER TABLE `log_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `slot_pool`
--
ALTER TABLE `slot_pool`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `task_fail`
--
ALTER TABLE `task_fail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `task_reschedule`
--
ALTER TABLE `task_reschedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions_purchasebill`
--
ALTER TABLE `transactions_purchasebill`
  MODIFY `billno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions_purchasebilldetails`
--
ALTER TABLE `transactions_purchasebilldetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions_purchaseitem`
--
ALTER TABLE `transactions_purchaseitem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions_salebill`
--
ALTER TABLE `transactions_salebill`
  MODIFY `billno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `transactions_salebilldetails`
--
ALTER TABLE `transactions_salebilldetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT pour la table `transactions_saleitem`
--
ALTER TABLE `transactions_saleitem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `transactions_supplier`
--
ALTER TABLE `transactions_supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `trigger`
--
ALTER TABLE `trigger`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `variable`
--
ALTER TABLE `variable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ab_permission_view`
--
ALTER TABLE `ab_permission_view`
  ADD CONSTRAINT `ab_permission_view_permission_id_fkey` FOREIGN KEY (`permission_id`) REFERENCES `ab_permission` (`id`),
  ADD CONSTRAINT `ab_permission_view_view_menu_id_fkey` FOREIGN KEY (`view_menu_id`) REFERENCES `ab_view_menu` (`id`);

--
-- Contraintes pour la table `ab_permission_view_role`
--
ALTER TABLE `ab_permission_view_role`
  ADD CONSTRAINT `ab_permission_view_role_permission_view_id_fkey` FOREIGN KEY (`permission_view_id`) REFERENCES `ab_permission_view` (`id`),
  ADD CONSTRAINT `ab_permission_view_role_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `ab_role` (`id`);

--
-- Contraintes pour la table `ab_user`
--
ALTER TABLE `ab_user`
  ADD CONSTRAINT `ab_user_changed_by_fk_fkey` FOREIGN KEY (`changed_by_fk`) REFERENCES `ab_user` (`id`),
  ADD CONSTRAINT `ab_user_created_by_fk_fkey` FOREIGN KEY (`created_by_fk`) REFERENCES `ab_user` (`id`);

--
-- Contraintes pour la table `ab_user_role`
--
ALTER TABLE `ab_user_role`
  ADD CONSTRAINT `ab_user_role_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `ab_role` (`id`),
  ADD CONSTRAINT `ab_user_role_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `ab_user` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `dagrun_dataset_event`
--
ALTER TABLE `dagrun_dataset_event`
  ADD CONSTRAINT `dagrun_dataset_event_dag_run_id_fkey` FOREIGN KEY (`dag_run_id`) REFERENCES `dag_run` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dagrun_dataset_event_event_id_fkey` FOREIGN KEY (`event_id`) REFERENCES `dataset_event` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dag_owner_attributes`
--
ALTER TABLE `dag_owner_attributes`
  ADD CONSTRAINT `dag.dag_id` FOREIGN KEY (`dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dag_run`
--
ALTER TABLE `dag_run`
  ADD CONSTRAINT `task_instance_log_template_id_fkey` FOREIGN KEY (`log_template_id`) REFERENCES `log_template` (`id`);

--
-- Contraintes pour la table `dag_run_note`
--
ALTER TABLE `dag_run_note`
  ADD CONSTRAINT `dag_run_note_dr_fkey` FOREIGN KEY (`dag_run_id`) REFERENCES `dag_run` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dag_run_note_user_fkey` FOREIGN KEY (`user_id`) REFERENCES `ab_user` (`id`);

--
-- Contraintes pour la table `dag_schedule_dataset_reference`
--
ALTER TABLE `dag_schedule_dataset_reference`
  ADD CONSTRAINT `dsdr_dag_id_fkey` FOREIGN KEY (`dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dsdr_dataset_fkey` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dag_tag`
--
ALTER TABLE `dag_tag`
  ADD CONSTRAINT `dag_tag_dag_id_fkey` FOREIGN KEY (`dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dag_warning`
--
ALTER TABLE `dag_warning`
  ADD CONSTRAINT `dcw_dag_id_fkey` FOREIGN KEY (`dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dataset_dag_run_queue`
--
ALTER TABLE `dataset_dag_run_queue`
  ADD CONSTRAINT `ddrq_dag_fkey` FOREIGN KEY (`target_dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ddrq_dataset_fkey` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `inventory_salesprediction`
--
ALTER TABLE `inventory_salesprediction`
  ADD CONSTRAINT `inventory_salespredi_stock_id_b3551980_fk_inventory` FOREIGN KEY (`stock_id`) REFERENCES `inventory_stock` (`id`);

--
-- Contraintes pour la table `inventory_stock`
--
ALTER TABLE `inventory_stock`
  ADD CONSTRAINT `inventory_stock_category_id_55a07129_fk_inventory_category_id` FOREIGN KEY (`category_id`) REFERENCES `inventory_category` (`id`);

--
-- Contraintes pour la table `rendered_task_instance_fields`
--
ALTER TABLE `rendered_task_instance_fields`
  ADD CONSTRAINT `rtif_ti_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_fail`
--
ALTER TABLE `task_fail`
  ADD CONSTRAINT `task_fail_ti_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_instance`
--
ALTER TABLE `task_instance`
  ADD CONSTRAINT `task_instance_dag_run_fkey` FOREIGN KEY (`dag_id`,`run_id`) REFERENCES `dag_run` (`dag_id`, `run_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_instance_trigger_id_fkey` FOREIGN KEY (`trigger_id`) REFERENCES `trigger` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_instance_note`
--
ALTER TABLE `task_instance_note`
  ADD CONSTRAINT `task_instance_note_ti_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_instance_note_user_fkey` FOREIGN KEY (`user_id`) REFERENCES `ab_user` (`id`);

--
-- Contraintes pour la table `task_map`
--
ALTER TABLE `task_map`
  ADD CONSTRAINT `task_map_task_instance_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `task_outlet_dataset_reference`
--
ALTER TABLE `task_outlet_dataset_reference`
  ADD CONSTRAINT `todr_dag_id_fkey` FOREIGN KEY (`dag_id`) REFERENCES `dag` (`dag_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `todr_dataset_fkey` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `task_reschedule`
--
ALTER TABLE `task_reschedule`
  ADD CONSTRAINT `task_reschedule_dr_fkey` FOREIGN KEY (`dag_id`,`run_id`) REFERENCES `dag_run` (`dag_id`, `run_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_reschedule_ti_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transactions_purchasebill`
--
ALTER TABLE `transactions_purchasebill`
  ADD CONSTRAINT `transactions_purchas_supplier_id_ab6d7429_fk_transacti` FOREIGN KEY (`supplier_id`) REFERENCES `transactions_supplier` (`id`);

--
-- Contraintes pour la table `transactions_purchasebilldetails`
--
ALTER TABLE `transactions_purchasebilldetails`
  ADD CONSTRAINT `transactions_purchas_billno_id_68bce76e_fk_transacti` FOREIGN KEY (`billno_id`) REFERENCES `transactions_purchasebill` (`billno`);

--
-- Contraintes pour la table `transactions_purchaseitem`
--
ALTER TABLE `transactions_purchaseitem`
  ADD CONSTRAINT `transactions_purchas_billno_id_1c37095c_fk_transacti` FOREIGN KEY (`billno_id`) REFERENCES `transactions_purchasebill` (`billno`),
  ADD CONSTRAINT `transactions_purchas_stock_id_7cdd5bf7_fk_inventory` FOREIGN KEY (`stock_id`) REFERENCES `inventory_stock` (`id`);

--
-- Contraintes pour la table `transactions_salebilldetails`
--
ALTER TABLE `transactions_salebilldetails`
  ADD CONSTRAINT `transactions_salebil_billno_id_29bdca68_fk_transacti` FOREIGN KEY (`billno_id`) REFERENCES `transactions_salebill` (`billno`);

--
-- Contraintes pour la table `transactions_saleitem`
--
ALTER TABLE `transactions_saleitem`
  ADD CONSTRAINT `transactions_saleite_billno_id_eb219925_fk_transacti` FOREIGN KEY (`billno_id`) REFERENCES `transactions_salebill` (`billno`),
  ADD CONSTRAINT `transactions_saleitem_stock_id_4b17b3fd_fk_inventory_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `inventory_stock` (`id`);

--
-- Contraintes pour la table `xcom`
--
ALTER TABLE `xcom`
  ADD CONSTRAINT `xcom_task_instance_fkey` FOREIGN KEY (`dag_id`,`task_id`,`run_id`,`map_index`) REFERENCES `task_instance` (`dag_id`, `task_id`, `run_id`, `map_index`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
