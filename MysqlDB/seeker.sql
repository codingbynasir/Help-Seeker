-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 07:18 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seeker`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add payment', 7, 'add_payment'),
(26, 'Can change payment', 7, 'change_payment'),
(27, 'Can delete payment', 7, 'delete_payment'),
(28, 'Can view payment', 7, 'view_payment'),
(29, 'Can add people', 8, 'add_people'),
(30, 'Can change people', 8, 'change_people'),
(31, 'Can delete people', 8, 'delete_people'),
(32, 'Can view people', 8, 'view_people'),
(33, 'Can add post', 9, 'add_post'),
(34, 'Can change post', 9, 'change_post'),
(35, 'Can delete post', 9, 'delete_post'),
(36, 'Can view post', 9, 'view_post'),
(37, 'Can add account', 10, 'add_account'),
(38, 'Can change account', 10, 'change_account'),
(39, 'Can delete account', 10, 'delete_account'),
(40, 'Can view account', 10, 'view_account');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$l6j6ncnCfYOo$mkqf1YBRq+zhR1XR9d+QzKxKC734+aM9fqY65ecWQvk=', '2019-04-14 16:15:43.583449', 1, 'nasir', 'Nasir', 'Khan', 'nasirkhancse@gmail.com', 1, 1, '2019-04-13 04:31:07.000000'),
(2, 'pbkdf2_sha256$150000$3fRYQhJHWEk4$SSlewzrc5tsBcxO7h2iaJUphIdOB1TS23tpaK3Jl8uw=', '2019-04-14 11:08:48.087312', 0, 'taru', 'Taru', 'taru', 'taru@gmail.com', 0, 1, '2019-04-13 10:10:07.092007'),
(3, 'pbkdf2_sha256$150000$L5uaQ4UnNOcJ$bRgJd5mD165ZOVlEKaqQlLPMqZp5FGLgHaz5pRPSrfk=', '2019-04-14 11:07:15.642329', 0, 'tomal', 'tomal', 'hasan', 'tomal@gmail.com', 0, 1, '2019-04-14 10:42:46.445262');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-13 04:32:04.818309', '1', 'nasir', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(2, '2019-04-13 10:12:33.864320', '2', 'taru', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(3, '2019-04-14 10:49:02.554400', '4', 'tomal', 3, '', 8, 1),
(4, '2019-04-14 10:49:02.558515', '2', 'taru', 3, '', 8, 1),
(5, '2019-04-14 11:05:27.873032', '1', 'taru', 2, '[{\"changed\": {\"fields\": [\"nid\", \"date_of_birth\", \"phone\", \"image\"]}}]', 8, 1),
(6, '2019-04-14 16:17:09.304741', '1', 'Help for building a tin shade house', 1, '[{\"added\": {}}]', 9, 1),
(7, '2019-04-14 17:02:46.202404', '2', 'Help for Rouhingya tribal', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'SeekerApp', 'account'),
(7, 'SeekerApp', 'payment'),
(8, 'SeekerApp', 'people'),
(9, 'SeekerApp', 'post'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-12 08:13:41.628093'),
(2, 'auth', '0001_initial', '2019-04-12 08:13:41.946726'),
(3, 'SeekerApp', '0001_initial', '2019-04-12 08:13:43.191352'),
(4, 'SeekerApp', '0002_account', '2019-04-12 08:13:43.888510'),
(5, 'admin', '0001_initial', '2019-04-12 08:13:44.119288'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-04-12 08:13:44.326951'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-12 08:13:44.349140'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-04-12 08:13:44.543283'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-04-12 08:13:44.633808'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-04-12 08:13:44.755856'),
(11, 'auth', '0004_alter_user_username_opts', '2019-04-12 08:13:44.771091'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-04-12 08:13:44.863565'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-04-12 08:13:44.871563'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-04-12 08:13:44.891420'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-04-12 08:13:45.012544'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-04-12 08:13:45.141539'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-04-12 08:13:45.264094'),
(18, 'auth', '0011_update_proxy_permissions', '2019-04-12 08:13:45.291324'),
(19, 'sessions', '0001_initial', '2019-04-12 08:13:45.338539'),
(20, 'SeekerApp', '0003_auto_20190413_1136', '2019-04-13 05:36:57.737827');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('exjc5xnfclwo4so5vvqojp96qufzli5o', 'ZjNlMzhlMTg3NTM0NzEzMzY4YzBmN2Y3N2E1NDY0YzUxN2Y5ODhiNjp7fQ==', '2019-04-28 09:45:53.696567'),
('ycad8j963hjvwnq59qj1nhk3j63xngis', 'Y2I4MTYzMmJjMjYwNTZmZDdlZjc0M2EwZTg5ZDdiZWRkZDRmZTNjNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYzk5NWI3MDU3NmMyMGU1NmM1ZDQ0OGExYmRlNjI1NmZhMTlmNDM1IiwidHlwZSI6bnVsbH0=', '2019-04-28 16:15:43.601803');

-- --------------------------------------------------------

--
-- Table structure for table `seekerapp_account`
--

CREATE TABLE `seekerapp_account` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `depositor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seekerapp_payment`
--

CREATE TABLE `seekerapp_payment` (
  `id` int(11) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seekerapp_people`
--

CREATE TABLE `seekerapp_people` (
  `id` int(11) NOT NULL,
  `nid` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seekerapp_people`
--

INSERT INTO `seekerapp_people` (`id`, `nid`, `date_of_birth`, `phone`, `type`, `image`, `name_id`) VALUES
(1, '654654', '2019-04-14', '6546546', 'donor', 'profile_picture/ybf_TLnv13X.jpg', 2),
(3, NULL, NULL, NULL, 'donor', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `seekerapp_post`
--

CREATE TABLE `seekerapp_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `is_aproved` tinyint(1) DEFAULT NULL,
  `update` varchar(200) NOT NULL,
  `nid` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `posted_on` datetime(6) NOT NULL,
  `name_id` int(11) NOT NULL,
  `verified_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seekerapp_post`
--

INSERT INTO `seekerapp_post` (`id`, `title`, `description`, `is_aproved`, `update`, `nid`, `image`, `amount`, `posted_on`, `name_id`, `verified_by_id`) VALUES
(1, 'Help for building a tin shade house', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ipsa pariatur eveniet repellat beatae similique voluptates atque dignissimos vitae eius incidunt error porro, libero, maiores aliquam, harum dicta quas fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ipsa pariatur eveniet repellat beatae similique voluptates atque dignissimos vitae eius incidunt error porro, libero, maiores aliquam, harum dicta quas fuga.', 0, 'No', '0125487565', 'post/ybf.jpg', '1200.00', '2019-04-14 16:17:09.301571', 1, 1),
(2, 'Help for Rouhingya tribal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ipsa pariatur eveniet repellat beatae similique voluptates atque dignissimos vitae eius incidunt error porro, libero, maiores aliquam, harum dicta quas fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ipsa pariatur eveniet repellat beatae similique voluptates atque dignissimos vitae eius incidunt error porro, libero, maiores aliquam, harum dicta quas fuga.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero ipsa pariatur eveniet repellat beatae similique voluptates atque dignissimos vitae eius incidunt error porro, libero, maiores aliquam, harum dicta quas fuga.', 1, 'Partially get help', '478596', 'post/56403719_10213716986391047_5747054270868357120_n.jpg', '4000.00', '2019-04-14 17:02:46.201407', 1, 1);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `seekerapp_account`
--
ALTER TABLE `seekerapp_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SeekerApp_account_depositor_id_79631168_fk_SeekerApp_people_id` (`depositor_id`);

--
-- Indexes for table `seekerapp_payment`
--
ALTER TABLE `seekerapp_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SeekerApp_payment_donor_id_d5bb6cc2_fk_SeekerApp_people_id` (`donor_id`),
  ADD KEY `SeekerApp_payment_post_id_d4a15c3b_fk_SeekerApp_post_id` (`post_id`);

--
-- Indexes for table `seekerapp_people`
--
ALTER TABLE `seekerapp_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SeekerApp_people_name_id_54995898_fk_auth_user_id` (`name_id`);

--
-- Indexes for table `seekerapp_post`
--
ALTER TABLE `seekerapp_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SeekerApp_post_name_id_6dfd8cfe_fk_SeekerApp_people_id` (`name_id`),
  ADD KEY `SeekerApp_post_verified_by_id_60fdf697_fk_SeekerApp_people_id` (`verified_by_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seekerapp_account`
--
ALTER TABLE `seekerapp_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seekerapp_payment`
--
ALTER TABLE `seekerapp_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seekerapp_people`
--
ALTER TABLE `seekerapp_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seekerapp_post`
--
ALTER TABLE `seekerapp_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `seekerapp_account`
--
ALTER TABLE `seekerapp_account`
  ADD CONSTRAINT `SeekerApp_account_depositor_id_79631168_fk_SeekerApp_people_id` FOREIGN KEY (`depositor_id`) REFERENCES `seekerapp_people` (`id`);

--
-- Constraints for table `seekerapp_payment`
--
ALTER TABLE `seekerapp_payment`
  ADD CONSTRAINT `SeekerApp_payment_donor_id_d5bb6cc2_fk_SeekerApp_people_id` FOREIGN KEY (`donor_id`) REFERENCES `seekerapp_people` (`id`),
  ADD CONSTRAINT `SeekerApp_payment_post_id_d4a15c3b_fk_SeekerApp_post_id` FOREIGN KEY (`post_id`) REFERENCES `seekerapp_post` (`id`);

--
-- Constraints for table `seekerapp_people`
--
ALTER TABLE `seekerapp_people`
  ADD CONSTRAINT `SeekerApp_people_name_id_54995898_fk_auth_user_id` FOREIGN KEY (`name_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `seekerapp_post`
--
ALTER TABLE `seekerapp_post`
  ADD CONSTRAINT `SeekerApp_post_name_id_6dfd8cfe_fk_SeekerApp_people_id` FOREIGN KEY (`name_id`) REFERENCES `seekerapp_people` (`id`),
  ADD CONSTRAINT `SeekerApp_post_verified_by_id_60fdf697_fk_SeekerApp_people_id` FOREIGN KEY (`verified_by_id`) REFERENCES `seekerapp_people` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
