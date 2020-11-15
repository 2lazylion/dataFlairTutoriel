-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 15 Novembre 2020 à 23:23
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `dataflairtutoriel`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `auth_permission`
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
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add teacher', 8, 'add_teacher'),
(30, 'Can change teacher', 8, 'change_teacher'),
(31, 'Can delete teacher', 8, 'delete_teacher'),
(32, 'Can view teacher', 8, 'view_teacher');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$0193vNZ2EODo$Ch06hh2qexMApnTmM+ApJ7astailsh+/aw73L/W4bj8=', '2020-09-18 04:25:24.053684', 1, 'ted', '', '', 'e_cadet22@hotmail.com', 1, 1, '2020-09-18 04:24:03.187278');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-18 04:38:57.257560', '3', 'Student object (3)', 1, '[{"added": {}}]', 7, 1),
(2, '2020-09-18 04:39:11.974070', '3', 'Student object (3)', 2, '[{"changed": {"fields": ["Roll no"]}}]', 7, 1),
(3, '2020-09-18 04:39:15.406322', '3', 'Student object (3)', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'student', 'student'),
(8, 'student', 'teacher');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-16 04:27:20.527031'),
(2, 'auth', '0001_initial', '2020-09-16 04:27:20.605029'),
(3, 'admin', '0001_initial', '2020-09-16 04:27:20.837040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-16 04:27:20.891040'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-16 04:27:20.903041'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-16 04:27:20.937040'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-16 04:27:20.953041'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-16 04:27:20.971042'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-16 04:27:20.976042'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-16 04:27:20.995041'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-16 04:27:20.996043'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-16 04:27:21.002040'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-16 04:27:21.020041'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-16 04:27:21.037041'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-16 04:27:21.055042'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-16 04:27:21.061041'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-16 04:27:21.079054'),
(18, 'sessions', '0001_initial', '2020-09-16 04:27:21.089054'),
(19, 'student', '0001_initial', '2020-09-16 04:27:21.115055'),
(20, 'student', '0002_teacher', '2020-09-21 14:44:44.542787');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qc6m4jwhroagjb7zv5c3y7fb1de848up', '.eJxVjEEOwiAQRe_C2pAp0AFduvcMZKYMUjU0Ke3KeHfbpAvdvvf-f6tI61Li2mSOY1IX1anTL2ManlJ3kR5U75MeprrMI-s90Ydt-jYleV2P9u-gUCvbWsCwQ2YrLmdjhMgFBuQNAzhASZa8C-I9BDqDWO7AEjJC32fEoD5f6Xg3gQ:1kJmlk:seCMz10iKWtAt0O3gxp0zDf7vaoQf9szI4emZad30yE', '2020-10-03 23:59:52.764115');

-- --------------------------------------------------------

--
-- Structure de la table `student_student`
--

CREATE TABLE IF NOT EXISTS `student_student` (
`id` int(11) NOT NULL,
  `roll_no` longtext NOT NULL,
  `name` longtext NOT NULL,
  `stud_class` longtext NOT NULL,
  `department` longtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `student_student`
--

INSERT INTO `student_student` (`id`, `roll_no`, `name`, `stud_class`, `department`) VALUES
(1, '001', 'Edward Cadet', 'django', 'Computer Science'),
(2, '002', 'Dominic Tardif', 'java', 'Computer Science'),
(3, '003', 'Lokman Boukhoulda', 'Java spring', 'Computer science');

-- --------------------------------------------------------

--
-- Structure de la table `student_teacher`
--

CREATE TABLE IF NOT EXISTS `student_teacher` (
`id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `department` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`), ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`), ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`), ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`), ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `student_student`
--
ALTER TABLE `student_student`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student_teacher`
--
ALTER TABLE `student_teacher`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `student_student`
--
ALTER TABLE `student_student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `student_teacher`
--
ALTER TABLE `student_teacher`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
