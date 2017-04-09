# WordPress MySQL database migration
#
# Generated: Sunday 9. April 2017 19:12 UTC
# Hostname: localhost
# Database: `pinedo_wp`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `vpi17_commentmeta`
#

DROP TABLE IF EXISTS `vpi17_commentmeta`;


#
# Table structure of table `vpi17_commentmeta`
#

CREATE TABLE `vpi17_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_commentmeta`
#

#
# End of data contents of table `vpi17_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_comments`
#

DROP TABLE IF EXISTS `vpi17_comments`;


#
# Table structure of table `vpi17_comments`
#

CREATE TABLE `vpi17_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_comments`
#

#
# End of data contents of table `vpi17_comments`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_links`
#

DROP TABLE IF EXISTS `vpi17_links`;


#
# Table structure of table `vpi17_links`
#

CREATE TABLE `vpi17_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_links`
#

#
# End of data contents of table `vpi17_links`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_certificates`
#

DROP TABLE IF EXISTS `vpi17_namaste_certificates`;


#
# Table structure of table `vpi17_namaste_certificates`
#

CREATE TABLE `vpi17_namaste_certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_ids` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `editor_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_certificates`
#

#
# End of data contents of table `vpi17_namaste_certificates`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_history`
#

DROP TABLE IF EXISTS `vpi17_namaste_history`;


#
# Table structure of table `vpi17_namaste_history`
#

CREATE TABLE `vpi17_namaste_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `datetime` datetime DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `num_value` int(10) unsigned NOT NULL DEFAULT '0',
  `for_item_type` varchar(100) NOT NULL DEFAULT '',
  `for_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `module_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_history`
#
INSERT INTO `vpi17_namaste_history` ( `id`, `user_id`, `date`, `datetime`, `action`, `value`, `num_value`, `for_item_type`, `for_item_id`, `group_id`, `course_id`, `module_id`) VALUES
(1, 1, '2017-04-09', '2017-04-09 11:02:48', 'enrolled_course', 'Ingeschreven voor cursus Het Gesprek. Status: enrolled', 4, '', 0, 0, 4, 0),
(2, 1, '2017-04-09', '2017-04-09 16:24:11', 'started_lesson', 'Gestart met lezen van les "06 Rechten"', 17, '', 0, 0, 4, 0),
(3, 1, '2017-04-09', '2017-04-09 16:24:11', 'completed_lesson', 'Les "06 Rechten" voltooid', 17, '', 0, 0, 4, 0),
(4, 1, '2017-04-09', '2017-04-09 16:24:11', 'completed_course', 'Cursus "Voor gescheiden ouders" voltooid.', 4, '', 0, 0, 4, 0),
(5, 1, '2017-04-09', '2017-04-09 16:24:11', 'started_lesson', 'Gestart met lezen van les "05 Nieuwe partner"', 16, '', 0, 0, 4, 0),
(6, 1, '2017-04-09', '2017-04-09 16:24:11', 'completed_lesson', 'Les "05 Nieuwe partner" voltooid', 16, '', 0, 0, 4, 0),
(7, 1, '2017-04-09', '2017-04-09 16:24:11', 'started_lesson', 'Gestart met lezen van les "04 Communicatie"', 15, '', 0, 0, 4, 0),
(8, 1, '2017-04-09', '2017-04-09 16:24:11', 'completed_lesson', 'Les "04 Communicatie" voltooid', 15, '', 0, 0, 4, 0),
(9, 1, '2017-04-09', '2017-04-09 16:24:11', 'started_lesson', 'Gestart met lezen van les "03 Loyaliteit"', 14, '', 0, 0, 4, 0),
(10, 1, '2017-04-09', '2017-04-09 16:24:11', 'completed_lesson', 'Les "03 Loyaliteit" voltooid', 14, '', 0, 0, 4, 0),
(11, 1, '2017-04-09', '2017-04-09 16:24:12', 'started_lesson', 'Gestart met lezen van les "02 Alles is anders"', 13, '', 0, 0, 4, 0),
(12, 1, '2017-04-09', '2017-04-09 16:24:12', 'completed_lesson', 'Les "02 Alles is anders" voltooid', 13, '', 0, 0, 4, 0),
(13, 1, '2017-04-09', '2017-04-09 16:24:12', 'started_lesson', 'Gestart met lezen van les "01 Het gesprek"', 9, '', 0, 0, 4, 0),
(14, 1, '2017-04-09', '2017-04-09 16:24:12', 'completed_lesson', 'Les "01 Het gesprek" voltooid', 9, '', 0, 0, 4, 0) ;

#
# End of data contents of table `vpi17_namaste_history`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_homework_notes`
#

DROP TABLE IF EXISTS `vpi17_namaste_homework_notes`;


#
# Table structure of table `vpi17_namaste_homework_notes`
#

CREATE TABLE `vpi17_namaste_homework_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `homework_id` int(10) unsigned NOT NULL DEFAULT '0',
  `student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `teacher_id` int(10) unsigned NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_homework_notes`
#

#
# End of data contents of table `vpi17_namaste_homework_notes`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_homeworks`
#

DROP TABLE IF EXISTS `vpi17_namaste_homeworks`;


#
# Table structure of table `vpi17_namaste_homeworks`
#

CREATE TABLE `vpi17_namaste_homeworks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `accept_files` tinyint(4) NOT NULL DEFAULT '0',
  `award_points` int(10) unsigned NOT NULL DEFAULT '0',
  `editor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `limit_by_date` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accept_date_from` date DEFAULT NULL,
  `accept_date_to` date DEFAULT NULL,
  `auto_grade_lesson` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_homeworks`
#
INSERT INTO `vpi17_namaste_homeworks` ( `id`, `course_id`, `lesson_id`, `title`, `description`, `accept_files`, `award_points`, `editor_id`, `limit_by_date`, `accept_date_from`, `accept_date_to`, `auto_grade_lesson`) VALUES
(1, 4, 9, 'Het gesprek voorbereiden', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n&nbsp;\r\n\r\n&lt;iframe width=\\"765\\" height=\\"431\\" src=\\"//player.vimeo.com/video/88083726\\"&gt;&lt;/iframe&gt;\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.', 0, 0, 1, 0, '2017-04-09', '2017-04-09', 0) ;

#
# End of data contents of table `vpi17_namaste_homeworks`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_payments`
#

DROP TABLE IF EXISTS `vpi17_namaste_payments`;


#
# Table structure of table `vpi17_namaste_payments`
#

CREATE TABLE `vpi17_namaste_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `amount` decimal(8,2) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'failed',
  `paycode` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(100) NOT NULL DEFAULT 'paypal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_payments`
#

#
# End of data contents of table `vpi17_namaste_payments`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_student_certificates`
#

DROP TABLE IF EXISTS `vpi17_namaste_student_certificates`;


#
# Table structure of table `vpi17_namaste_student_certificates`
#

CREATE TABLE `vpi17_namaste_student_certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `certificate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2000-01-01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_student_certificates`
#

#
# End of data contents of table `vpi17_namaste_student_certificates`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_student_courses`
#

DROP TABLE IF EXISTS `vpi17_namaste_student_courses`;


#
# Table structure of table `vpi17_namaste_student_courses`
#

CREATE TABLE `vpi17_namaste_student_courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `enrollment_date` date NOT NULL DEFAULT '2000-01-01',
  `completion_date` date NOT NULL DEFAULT '2000-01-01',
  `comments` text NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '',
  `enrollment_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_student_courses`
#
INSERT INTO `vpi17_namaste_student_courses` ( `id`, `course_id`, `user_id`, `status`, `enrollment_date`, `completion_date`, `comments`, `grade`, `enrollment_time`, `completion_time`, `points`) VALUES
(1, 4, 1, 'completed', '2017-04-09', '2017-04-09', '', '', '2017-04-09 11:02:48', '2017-04-09 16:24:11', 0) ;

#
# End of data contents of table `vpi17_namaste_student_courses`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_student_homeworks`
#

DROP TABLE IF EXISTS `vpi17_namaste_student_homeworks`;


#
# Table structure of table `vpi17_namaste_student_homeworks`
#

CREATE TABLE `vpi17_namaste_student_homeworks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `homework_id` int(10) unsigned NOT NULL DEFAULT '0',
  `student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `date_submitted` date NOT NULL DEFAULT '2000-01-01',
  `content` text NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `grade` varchar(100) NOT NULL DEFAULT '',
  `fileblob` longblob,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_student_homeworks`
#

#
# End of data contents of table `vpi17_namaste_student_homeworks`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_student_lessons`
#

DROP TABLE IF EXISTS `vpi17_namaste_student_lessons`;


#
# Table structure of table `vpi17_namaste_student_lessons`
#

CREATE TABLE `vpi17_namaste_student_lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(10) unsigned NOT NULL DEFAULT '0',
  `student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `completion_date` text NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '',
  `start_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `pending_admin_approval` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_student_lessons`
#
INSERT INTO `vpi17_namaste_student_lessons` ( `id`, `lesson_id`, `student_id`, `status`, `completion_date`, `grade`, `start_time`, `completion_time`, `points`, `pending_admin_approval`) VALUES
(1, 17, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(2, 16, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(3, 15, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(4, 14, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(5, 13, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:12', 0, 1),
(6, 9, 1, 1, '2017-04-09', '', '2017-04-09 16:24:12', '2017-04-09 16:24:12', 0, 1) ;

#
# End of data contents of table `vpi17_namaste_student_lessons`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_student_modules`
#

DROP TABLE IF EXISTS `vpi17_namaste_student_modules`;


#
# Table structure of table `vpi17_namaste_student_modules`
#

CREATE TABLE `vpi17_namaste_student_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL DEFAULT '0',
  `student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `enrollment_date` date NOT NULL DEFAULT '2000-01-01',
  `completion_date` date NOT NULL DEFAULT '2000-01-01',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_student_modules`
#

#
# End of data contents of table `vpi17_namaste_student_modules`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_namaste_visits`
#

DROP TABLE IF EXISTS `vpi17_namaste_visits`;


#
# Table structure of table `vpi17_namaste_visits`
#

CREATE TABLE `vpi17_namaste_visits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lesson_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `visits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


#
# Data contents of table `vpi17_namaste_visits`
#
INSERT INTO `vpi17_namaste_visits` ( `id`, `course_id`, `lesson_id`, `user_id`, `date`, `visits`) VALUES
(1, 4, 0, 1, '2017-04-09', 34),
(2, 0, 17, 1, '2017-04-09', 1),
(3, 0, 16, 1, '2017-04-09', 1),
(4, 0, 15, 1, '2017-04-09', 1),
(5, 0, 14, 1, '2017-04-09', 1),
(6, 0, 13, 1, '2017-04-09', 1),
(7, 0, 9, 1, '2017-04-09', 3) ;

#
# End of data contents of table `vpi17_namaste_visits`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_options`
#

DROP TABLE IF EXISTS `vpi17_options`;


#
# Table structure of table `vpi17_options`
#

CREATE TABLE `vpi17_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_options`
#
INSERT INTO `vpi17_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/villapinedo', 'yes'),
(2, 'home', 'http://localhost/villapinedo', 'yes'),
(3, 'blogname', 'Villa Pinedo Workshop', 'yes'),
(4, 'blogdescription', 'Voor gescheiden ouders', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'brian@geusmedia.nl', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:136:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"workshop-overzicht/?$";s:34:"index.php?post_type=namaste_course";s:51:"workshop-overzicht/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=namaste_course&feed=$matches[1]";s:46:"workshop-overzicht/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=namaste_course&feed=$matches[1]";s:38:"workshop-overzicht/page/([0-9]{1,})/?$";s:52:"index.php?post_type=namaste_course&paged=$matches[1]";s:11:"workshop/?$";s:34:"index.php?post_type=namaste_lesson";s:41:"workshop/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=namaste_lesson&feed=$matches[1]";s:36:"workshop/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=namaste_lesson&feed=$matches[1]";s:28:"workshop/page/([0-9]{1,})/?$";s:52:"index.php?post_type=namaste_lesson&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"workshop-overzicht/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"workshop-overzicht/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"workshop-overzicht/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"workshop-overzicht/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"workshop-overzicht/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"workshop-overzicht/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"workshop-overzicht/([^/]+)/embed/?$";s:47:"index.php?namaste_course=$matches[1]&embed=true";s:39:"workshop-overzicht/([^/]+)/trackback/?$";s:41:"index.php?namaste_course=$matches[1]&tb=1";s:59:"workshop-overzicht/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?namaste_course=$matches[1]&feed=$matches[2]";s:54:"workshop-overzicht/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?namaste_course=$matches[1]&feed=$matches[2]";s:47:"workshop-overzicht/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?namaste_course=$matches[1]&paged=$matches[2]";s:54:"workshop-overzicht/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?namaste_course=$matches[1]&cpage=$matches[2]";s:43:"workshop-overzicht/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?namaste_course=$matches[1]&page=$matches[2]";s:35:"workshop-overzicht/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"workshop-overzicht/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"workshop-overzicht/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"workshop-overzicht/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"workshop-overzicht/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"workshop-overzicht/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"workshop/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"workshop/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"workshop/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"workshop/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"workshop/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"workshop/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"workshop/([^/]+)/embed/?$";s:47:"index.php?namaste_lesson=$matches[1]&embed=true";s:29:"workshop/([^/]+)/trackback/?$";s:41:"index.php?namaste_lesson=$matches[1]&tb=1";s:49:"workshop/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?namaste_lesson=$matches[1]&feed=$matches[2]";s:44:"workshop/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?namaste_lesson=$matches[1]&feed=$matches[2]";s:37:"workshop/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?namaste_lesson=$matches[1]&paged=$matches[2]";s:44:"workshop/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?namaste_lesson=$matches[1]&cpage=$matches[2]";s:33:"workshop/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?namaste_lesson=$matches[1]&page=$matches[2]";s:25:"workshop/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"workshop/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"workshop/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"workshop/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"workshop/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"workshop/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:23:"namaste-lms/namaste.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'villapinedo-workshop', 'yes'),
(41, 'stylesheet', 'villapinedo-workshop', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:3:{s:5:"title";s:20:"Lees meer ervaringen";s:4:"text";s:241:"<a target="_blank" href="https://www.youbedo.com/boeken/aan-alle-gescheiden-ouders-9789400503656"><img src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Boekomslag_Pinedo__Vollinga.jpg" border="0" width="216" height="303"></a>";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:18:"Workshop Forumteam";s:4:"text";s:172:"Het forumteam is een luisterend oor en zal je waar mogelijk ondersteunen met tips. Het team bestaat uit 3 mediators en een relatiecoach: Roelfina, Ernee, Nancy en Robbert. ";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:11:"Help en FAQ";s:4:"text";s:50:"Heb je hulp nodig? Kijk bij de veelgestelde vragen";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:22:"Meer over Villa Pinedo";s:4:"text";s:97:"Op de website van Villa Pinedo vind je nog veel meer verhalen van jongeren met gescheiden ouders.";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Amsterdam', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'vpi17_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"namaste_manage";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:7:"student";a:2:{s:4:"name";s:7:"Student";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"namaste";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'nl_NL', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:16:"sidebar-footer-1";a:1:{i:0;s:10:"nav_menu-2";}s:16:"sidebar-footer-2";a:1:{i:0;s:10:"nav_menu-3";}s:16:"sidebar-footer-3";a:1:{i:0;s:10:"nav_menu-4";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `vpi17_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:4:{i:2;a:2:{s:5:"title";s:10:"De Website";s:8:"nav_menu";i:3;}i:3;a:2:{s:5:"title";s:12:"Social Media";s:8:"nav_menu";i:4;}i:4;a:2:{s:5:"title";s:12:"Villa Pinedo";s:8:"nav_menu";i:7;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1491804340;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491813261;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491847554;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491674762;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(132, 'current_theme', 'Sage Starter Theme', 'yes'),
(133, 'theme_mods_villapinedo-workshop', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'namaste_version', '1.42', 'yes'),
(143, 'namaste_need_login_text_lesson', 'U moet zijn <a href=\\"//localhost:3000:3000/villapinedo/wp-login.php\\">ingelogd</a> om deze les in te zien.', 'yes'),
(144, 'namaste_need_login_text_course', 'U kunt u inschrijven voor deze cursus vanaf uw studenten dashboard. U moet zijn <a href=\\"//localhost:3000:3000/villapinedo/wp-login.php\\">ingelogd</a>.', 'yes'),
(162, 'namaste_show_courses_in_blog', '0', 'yes'),
(163, 'namaste_show_lessons_in_blog', '0', 'yes'),
(164, 'namaste_use_modules', '0', 'yes'),
(165, 'namaste_course_slug', 'workshop-overzicht', 'yes'),
(166, 'namaste_lesson_slug', 'workshop', 'yes'),
(167, 'namaste_module_slug', 'namaste-module', 'yes'),
(168, 'namaste_link_to_course', '0', 'yes'),
(169, 'namaste_link_to_course_text', 'Cursus: {{{course-link}}}', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(175, 'category_children', 'a:0:{}', 'yes'),
(219, 'acf_version', '5.5.11', 'yes') ;

#
# End of data contents of table `vpi17_options`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_postmeta`
#

DROP TABLE IF EXISTS `vpi17_postmeta`;


#
# Table structure of table `vpi17_postmeta`
#

CREATE TABLE `vpi17_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_postmeta`
#
INSERT INTO `vpi17_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1491692962:1'),
(3, 4, '_edit_last', '1'),
(4, 4, 'namaste_enroll_mode', 'free'),
(5, 4, 'namaste_required_lessons', NULL),
(6, 4, 'namaste_fee', NULL),
(7, 4, 'namaste_access', NULL),
(8, 4, 'namaste_unenroll', NULL),
(9, 4, '_edit_lock', '1491747863:1'),
(10, 5, '_edit_last', '1'),
(11, 5, 'namaste_enroll_mode', 'free'),
(12, 5, 'namaste_required_lessons', NULL),
(13, 5, 'namaste_fee', NULL),
(14, 5, 'namaste_fee', NULL),
(15, 5, 'namaste_access', NULL),
(16, 5, 'namaste_unenroll', NULL),
(17, 5, '_edit_lock', '1491726739:1'),
(18, 6, '_edit_last', '1'),
(19, 6, '_wp_page_template', 'default'),
(20, 6, '_edit_lock', '1491765081:1'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1491728306'),
(23, 2, '_wp_desired_post_slug', 'voorbeeld-pagina'),
(24, 9, '_edit_last', '1'),
(25, 9, 'namaste_course', '4'),
(26, 9, 'namaste_access', 'a:0:{}'),
(27, 9, 'namaste_completion', NULL),
(28, 9, 'namaste_required_homeworks', 'a:0:{}'),
(29, 9, 'namaste_required_exam', '0'),
(30, 9, 'namaste_required_grade', 'a:0:{}'),
(31, 9, 'namaste_watu_transfer_grade', '0'),
(32, 9, 'namaste_award_points', '0'),
(33, 9, '_edit_lock', '1491749563:1'),
(34, 10, '_menu_item_type', 'post_type'),
(35, 10, '_menu_item_menu_item_parent', '0'),
(36, 10, '_menu_item_object_id', '6'),
(37, 10, '_menu_item_object', 'page'),
(38, 10, '_menu_item_target', ''),
(39, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 10, '_menu_item_xfn', ''),
(41, 10, '_menu_item_url', ''),
(52, 4, '_wp_old_slug', 'week-1'),
(53, 4, '_wp_old_slug', 'workshop'),
(54, 5, '_wp_trash_meta_status', 'publish'),
(55, 5, '_wp_trash_meta_time', '1491728712'),
(56, 5, '_wp_desired_post_slug', 'week-1-2'),
(57, 13, '_edit_last', '1'),
(58, 13, 'namaste_course', '4'),
(59, 13, 'namaste_access', 'a:0:{}'),
(60, 13, 'namaste_completion', NULL),
(61, 13, 'namaste_required_homeworks', 'a:0:{}'),
(62, 13, 'namaste_required_exam', '0'),
(63, 13, 'namaste_required_grade', 'a:0:{}'),
(64, 13, 'namaste_watu_transfer_grade', '0'),
(65, 13, 'namaste_award_points', '0'),
(66, 13, '_edit_lock', '1491728695:1'),
(67, 14, '_edit_last', '1'),
(68, 14, 'namaste_course', '4'),
(69, 14, 'namaste_access', 'a:0:{}'),
(70, 14, 'namaste_completion', NULL),
(71, 14, 'namaste_required_homeworks', 'a:0:{}'),
(72, 14, 'namaste_required_exam', '0'),
(73, 14, 'namaste_required_grade', 'a:0:{}'),
(74, 14, 'namaste_watu_transfer_grade', '0'),
(75, 14, 'namaste_award_points', '0'),
(76, 14, '_edit_lock', '1491728686:1'),
(77, 14, '_wp_old_slug', 'loyaliteit'),
(78, 15, '_edit_last', '1'),
(79, 15, 'namaste_course', '4'),
(80, 15, 'namaste_access', 'a:0:{}'),
(81, 15, 'namaste_completion', NULL),
(82, 15, 'namaste_required_homeworks', 'a:0:{}'),
(83, 15, 'namaste_required_exam', '0'),
(84, 15, 'namaste_required_grade', 'a:0:{}'),
(85, 15, 'namaste_watu_transfer_grade', '0'),
(86, 15, 'namaste_award_points', '0'),
(87, 15, '_edit_lock', '1491728728:1'),
(88, 16, '_edit_last', '1'),
(89, 16, 'namaste_course', '4'),
(90, 16, 'namaste_access', 'a:0:{}'),
(91, 16, 'namaste_completion', NULL),
(92, 16, 'namaste_required_homeworks', 'a:0:{}'),
(93, 16, 'namaste_required_exam', '0'),
(94, 16, 'namaste_required_grade', 'a:0:{}'),
(95, 16, 'namaste_watu_transfer_grade', '0'),
(96, 16, 'namaste_award_points', '0'),
(97, 16, '_edit_lock', '1491728744:1'),
(98, 17, '_edit_last', '1'),
(99, 17, 'namaste_course', '4'),
(100, 17, 'namaste_access', 'a:0:{}'),
(101, 17, 'namaste_completion', NULL),
(102, 17, 'namaste_required_homeworks', 'a:0:{}'),
(103, 17, 'namaste_required_exam', '0'),
(104, 17, 'namaste_required_grade', 'a:0:{}'),
(105, 17, 'namaste_watu_transfer_grade', '0'),
(106, 17, 'namaste_award_points', '0'),
(107, 17, '_edit_lock', '1491728762:1'),
(108, 18, '_wp_attached_file', '2017/04/Crew_V2.jpg'),
(109, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:129;s:4:"file";s:19:"2017/04/Crew_V2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Crew_V2-150x129.jpg";s:5:"width";i:150;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Crew_V2-300x51.jpg";s:5:"width";i:300;s:6:"height";i:51;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(110, 19, '_menu_item_type', 'custom') ;
INSERT INTO `vpi17_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(111, 19, '_menu_item_menu_item_parent', '0'),
(112, 19, '_menu_item_object_id', '19'),
(113, 19, '_menu_item_object', 'custom'),
(114, 19, '_menu_item_target', ''),
(115, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 19, '_menu_item_xfn', ''),
(117, 19, '_menu_item_url', 'http://villapinedo.nl/'),
(119, 20, '_menu_item_type', 'custom'),
(120, 20, '_menu_item_menu_item_parent', '0'),
(121, 20, '_menu_item_object_id', '20'),
(122, 20, '_menu_item_object', 'custom'),
(123, 20, '_menu_item_target', ''),
(124, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 20, '_menu_item_xfn', ''),
(126, 20, '_menu_item_url', 'http://villapinedo.nl/forum/adviesouders/'),
(128, 21, '_menu_item_type', 'custom'),
(129, 21, '_menu_item_menu_item_parent', '0'),
(130, 21, '_menu_item_object_id', '21'),
(131, 21, '_menu_item_object', 'custom'),
(132, 21, '_menu_item_target', ''),
(133, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 21, '_menu_item_xfn', ''),
(135, 21, '_menu_item_url', 'http://villapinedo.nl/onderwerpen/artikelen-en-filmpjes/'),
(137, 22, '_menu_item_type', 'custom'),
(138, 22, '_menu_item_menu_item_parent', '0'),
(139, 22, '_menu_item_object_id', '22'),
(140, 22, '_menu_item_object', 'custom'),
(141, 22, '_menu_item_target', ''),
(142, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 22, '_menu_item_xfn', ''),
(144, 22, '_menu_item_url', 'http://villapinedo.nl/over-ons/'),
(146, 23, '_menu_item_type', 'custom'),
(147, 23, '_menu_item_menu_item_parent', '0'),
(148, 23, '_menu_item_object_id', '23'),
(149, 23, '_menu_item_object', 'custom'),
(150, 23, '_menu_item_target', ''),
(151, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 23, '_menu_item_xfn', ''),
(153, 23, '_menu_item_url', 'http://villapinedo.nl/crew/'),
(155, 24, '_menu_item_type', 'custom'),
(156, 24, '_menu_item_menu_item_parent', '0'),
(157, 24, '_menu_item_object_id', '24'),
(158, 24, '_menu_item_object', 'custom'),
(159, 24, '_menu_item_target', ''),
(160, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(161, 24, '_menu_item_xfn', ''),
(162, 24, '_menu_item_url', 'http://villapinedo.nl/in-de-media/'),
(164, 25, '_menu_item_type', 'custom'),
(165, 25, '_menu_item_menu_item_parent', '0'),
(166, 25, '_menu_item_object_id', '25'),
(167, 25, '_menu_item_object', 'custom'),
(168, 25, '_menu_item_target', ''),
(169, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 25, '_menu_item_xfn', ''),
(171, 25, '_menu_item_url', 'http://villapinedo.nl/contact/'),
(173, 26, '_menu_item_type', 'custom'),
(174, 26, '_menu_item_menu_item_parent', '0'),
(175, 26, '_menu_item_object_id', '26'),
(176, 26, '_menu_item_object', 'custom'),
(177, 26, '_menu_item_target', ''),
(178, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 26, '_menu_item_xfn', ''),
(180, 26, '_menu_item_url', 'https://www.facebook.com/VillaPinedo'),
(182, 27, '_menu_item_type', 'custom'),
(183, 27, '_menu_item_menu_item_parent', '0'),
(184, 27, '_menu_item_object_id', '27'),
(185, 27, '_menu_item_object', 'custom'),
(186, 27, '_menu_item_target', ''),
(187, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 27, '_menu_item_xfn', ''),
(189, 27, '_menu_item_url', 'https://twitter.com/villapinedo'),
(191, 28, '_menu_item_type', 'custom'),
(192, 28, '_menu_item_menu_item_parent', '0'),
(193, 28, '_menu_item_object_id', '28'),
(194, 28, '_menu_item_object', 'custom'),
(195, 28, '_menu_item_target', ''),
(196, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 28, '_menu_item_xfn', ''),
(198, 28, '_menu_item_url', 'http://www.youtube.com/user/VillaPinedo'),
(200, 29, '_menu_item_type', 'custom'),
(201, 29, '_menu_item_menu_item_parent', '0'),
(202, 29, '_menu_item_object_id', '29'),
(203, 29, '_menu_item_object', 'custom'),
(204, 29, '_menu_item_target', ''),
(205, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 29, '_menu_item_xfn', ''),
(207, 29, '_menu_item_url', 'http://villapinedo.nl/'),
(209, 30, '_menu_item_type', 'custom'),
(210, 30, '_menu_item_menu_item_parent', '0'),
(211, 30, '_menu_item_object_id', '30'),
(212, 30, '_menu_item_object', 'custom'),
(213, 30, '_menu_item_target', ''),
(214, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 30, '_menu_item_xfn', ''),
(216, 30, '_menu_item_url', 'http://villapinedo.nl/voor-ouders'),
(218, 31, '_menu_item_type', 'custom'),
(219, 31, '_menu_item_menu_item_parent', '0'),
(220, 31, '_menu_item_object_id', '31'),
(221, 31, '_menu_item_object', 'custom'),
(222, 31, '_menu_item_target', '') ;
INSERT INTO `vpi17_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(223, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 31, '_menu_item_xfn', ''),
(225, 31, '_menu_item_url', 'http://villapinedo.nl/voor-professionals'),
(227, 43, '_menu_item_type', 'post_type'),
(228, 43, '_menu_item_menu_item_parent', '0'),
(229, 43, '_menu_item_object_id', '17'),
(230, 43, '_menu_item_object', 'namaste_lesson'),
(231, 43, '_menu_item_target', ''),
(232, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 43, '_menu_item_xfn', ''),
(234, 43, '_menu_item_url', ''),
(236, 44, '_menu_item_type', 'post_type'),
(237, 44, '_menu_item_menu_item_parent', '0'),
(238, 44, '_menu_item_object_id', '16'),
(239, 44, '_menu_item_object', 'namaste_lesson'),
(240, 44, '_menu_item_target', ''),
(241, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 44, '_menu_item_xfn', ''),
(243, 44, '_menu_item_url', ''),
(245, 45, '_menu_item_type', 'post_type'),
(246, 45, '_menu_item_menu_item_parent', '0'),
(247, 45, '_menu_item_object_id', '15'),
(248, 45, '_menu_item_object', 'namaste_lesson'),
(249, 45, '_menu_item_target', ''),
(250, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 45, '_menu_item_xfn', ''),
(252, 45, '_menu_item_url', ''),
(254, 46, '_menu_item_type', 'post_type'),
(255, 46, '_menu_item_menu_item_parent', '0'),
(256, 46, '_menu_item_object_id', '14'),
(257, 46, '_menu_item_object', 'namaste_lesson'),
(258, 46, '_menu_item_target', ''),
(259, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 46, '_menu_item_xfn', ''),
(261, 46, '_menu_item_url', ''),
(263, 47, '_menu_item_type', 'post_type'),
(264, 47, '_menu_item_menu_item_parent', '0'),
(265, 47, '_menu_item_object_id', '13'),
(266, 47, '_menu_item_object', 'namaste_lesson'),
(267, 47, '_menu_item_target', ''),
(268, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 47, '_menu_item_xfn', ''),
(270, 47, '_menu_item_url', ''),
(272, 48, '_menu_item_type', 'post_type'),
(273, 48, '_menu_item_menu_item_parent', '0'),
(274, 48, '_menu_item_object_id', '9'),
(275, 48, '_menu_item_object', 'namaste_lesson'),
(276, 48, '_menu_item_target', ''),
(277, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 48, '_menu_item_xfn', ''),
(279, 48, '_menu_item_url', '') ;

#
# End of data contents of table `vpi17_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_posts`
#

DROP TABLE IF EXISTS `vpi17_posts`;


#
# Table structure of table `vpi17_posts`
#

CREATE TABLE `vpi17_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_posts`
#
INSERT INTO `vpi17_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-08 20:05:40', '2017-04-08 18:05:40', 'Welkom bij WordPress. Dit is je eerste bericht. Pas het aan of verwijder het en start met bloggen.', 'Hallo wereld.', '', 'publish', 'open', 'open', '', 'hallo-wereld', '', '', '2017-04-08 20:05:40', '2017-04-08 18:05:40', '', 0, 'http://localhost/villapinedo/?p=1', 0, 'post', '', 0),
(2, 1, '2017-04-08 20:05:40', '2017-04-08 18:05:40', 'Dit is een voorbeeldpagina. Het verschilt van een bericht omdat het een vaste plek heeft en in de sitenavigatie getoond wordt (in de meeste thema\'s). De meeste gebruikers beginnen met een \'Over mij\' pagina om zich voor te stellen aan potenti&#235;le bezoekers. Bijvoorbeeld:\n\n<blockquote>Hallo. Overdag ben ik postbode, maar \'s avonds timmer ik aan de weg als acteur. Dit is mijn blog. Ik woon in Hilversum, samen met Vlekkie, m\'n trouwe viervoeter. Ik hou van cocktails en, af en toe, een zomerse bui op m\'n hoofd.</blockquote>\n\n...of zoiets:\n\n<blockquote>XYZ Dingetjes BV levert al sinds 1971 talloze dingetjes van hoge kwaliteit aan een groot publiek. XYZ is gevestigd in Bolsward, heeft ca. 2.000 medewerkers en doet allerlei geweldige dingen voor de Friese gemeenschap.</blockquote>\n\nAls nieuwe WordPress gebruiker kun je naar <a href="http://localhost/villapinedo/wp-admin/">het dashboard</a> gaan om deze voorbeeldpagina te verwijderen en nieuwe pagina\'s aan te maken voor je site. Veel plezier!', 'Voorbeeld pagina', '', 'trash', 'closed', 'open', '', 'voorbeeld-pagina__trashed', '', '', '2017-04-09 10:58:26', '2017-04-09 08:58:26', '', 0, 'http://localhost/villapinedo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-04-08 20:05:55', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-08 20:05:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?p=3', 0, 'post', '', 0),
(4, 1, '2017-04-09 10:34:36', '2017-04-09 08:34:36', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video\'s kan bekijken. Het wachtwoord is voor alle video\'s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).', 'Voor gescheiden ouders', '', 'publish', 'open', 'closed', '', 'voor-gescheiden-ouders', '', '', '2017-04-09 16:11:43', '2017-04-09 14:11:43', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&#038;p=4', 0, 'namaste_course', '', 0),
(5, 1, '2017-04-09 10:34:41', '2017-04-09 08:34:41', '', 'Week 1', '', 'trash', 'open', 'closed', '', 'week-1-2__trashed', '', '', '2017-04-09 11:05:12', '2017-04-09 09:05:12', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&#038;p=5', 0, 'namaste_course', '', 0),
(6, 1, '2017-04-09 10:57:36', '2017-04-09 08:57:36', 'Start de workshop <a href="//localhost/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'publish', 'closed', 'closed', '', 'workshop', '', '', '2017-04-09 16:39:38', '2017-04-09 14:39:38', '', 0, 'http://localhost/villapinedo/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-04-09 10:57:36', '2017-04-09 08:57:36', '', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 10:57:36', '2017-04-09 08:57:36', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-04-09 10:58:26', '2017-04-09 08:58:26', 'Dit is een voorbeeldpagina. Het verschilt van een bericht omdat het een vaste plek heeft en in de sitenavigatie getoond wordt (in de meeste thema\'s). De meeste gebruikers beginnen met een \'Over mij\' pagina om zich voor te stellen aan potenti&#235;le bezoekers. Bijvoorbeeld:\n\n<blockquote>Hallo. Overdag ben ik postbode, maar \'s avonds timmer ik aan de weg als acteur. Dit is mijn blog. Ik woon in Hilversum, samen met Vlekkie, m\'n trouwe viervoeter. Ik hou van cocktails en, af en toe, een zomerse bui op m\'n hoofd.</blockquote>\n\n...of zoiets:\n\n<blockquote>XYZ Dingetjes BV levert al sinds 1971 talloze dingetjes van hoge kwaliteit aan een groot publiek. XYZ is gevestigd in Bolsward, heeft ca. 2.000 medewerkers en doet allerlei geweldige dingen voor de Friese gemeenschap.</blockquote>\n\nAls nieuwe WordPress gebruiker kun je naar <a href="http://localhost/villapinedo/wp-admin/">het dashboard</a> gaan om deze voorbeeldpagina te verwijderen en nieuwe pagina\'s aan te maken voor je site. Veel plezier!', 'Voorbeeld pagina', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-09 10:58:26', '2017-04-09 08:58:26', '', 2, 'http://localhost/villapinedo/2017/04/09/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-04-09 11:02:57', '2017-04-09 09:02:57', '', '01 Het gesprek', '', 'publish', 'open', 'closed', '', 'week-1', '', '', '2017-04-09 11:07:28', '2017-04-09 09:07:28', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=9', 0, 'namaste_lesson', '', 0),
(10, 1, '2017-04-09 11:03:25', '2017-04-09 09:03:25', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=10', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-04-09 11:06:07', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-09 11:06:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&p=12', 0, 'namaste_course', '', 0),
(13, 1, '2017-04-09 11:06:41', '2017-04-09 09:06:41', '', '02 Alles is anders', '', 'publish', 'open', 'closed', '', 'week-2', '', '', '2017-04-09 11:07:15', '2017-04-09 09:07:15', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=13', 0, 'namaste_lesson', '', 0),
(14, 1, '2017-04-09 11:06:53', '2017-04-09 09:06:53', '', '03 Loyaliteit', '', 'publish', 'open', 'closed', '', 'week-3', '', '', '2017-04-09 11:07:08', '2017-04-09 09:07:08', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=14', 0, 'namaste_lesson', '', 0),
(15, 1, '2017-04-09 11:07:50', '2017-04-09 09:07:50', '', '04 Communicatie', '', 'publish', 'open', 'closed', '', 'week-4', '', '', '2017-04-09 11:07:50', '2017-04-09 09:07:50', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=15', 0, 'namaste_lesson', '', 0),
(16, 1, '2017-04-09 11:08:05', '2017-04-09 09:08:05', '', '05 Nieuwe partner', '', 'publish', 'open', 'closed', '', 'week-5', '', '', '2017-04-09 11:08:05', '2017-04-09 09:08:05', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=16', 0, 'namaste_lesson', '', 0),
(17, 1, '2017-04-09 11:08:24', '2017-04-09 09:08:24', '', '06 Rechten', '', 'publish', 'open', 'closed', '', 'week-6', '', '', '2017-04-09 11:08:24', '2017-04-09 09:08:24', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=17', 0, 'namaste_lesson', '', 0),
(18, 1, '2017-04-09 11:09:41', '2017-04-09 09:09:41', '', 'Crew_V2', '', 'inherit', 'open', 'closed', '', 'crew_v2', '', '', '2017-04-09 11:09:41', '2017-04-09 09:09:41', '', 4, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Crew_V2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2017-04-09 11:13:19', '2017-04-09 09:13:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-04-09 11:13:19', '2017-04-09 09:13:19', '', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2017-04-09 11:13:19', '2017-04-09 09:13:19', '', 'Artikelen en filmpjes', '', 'publish', 'closed', 'closed', '', 'artikelen-en-filmpjes', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2017-04-09 11:13:19', '2017-04-09 09:13:19', '', 'Over ons', '', 'publish', 'closed', 'closed', '', 'over-ons', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 'Crew', '', 'publish', 'closed', 'closed', '', 'crew', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 'In de media', '', 'publish', 'closed', 'closed', '', 'in-de-media', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=24', 6, 'nav_menu_item', '', 0),
(25, 1, '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-04-09 11:13:52', '2017-04-09 09:13:52', '', 0, 'http://localhost/villapinedo/?p=25', 7, 'nav_menu_item', '', 0),
(26, 1, '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 'Volg ons op Facebook', '', 'publish', 'closed', 'closed', '', 'volg-ons-op-facebook', '', '', '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 0, 'http://localhost/villapinedo/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 'Volg ons op Twitter', '', 'publish', 'closed', 'closed', '', 'volg-ons-op-twitter', '', '', '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 0, 'http://localhost/villapinedo/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 'Volg ons op YouTube', '', 'publish', 'closed', 'closed', '', 'volg-ons-op-youtube', '', '', '2017-04-09 11:14:38', '2017-04-09 09:14:38', '', 0, 'http://localhost/villapinedo/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 'Voor jongeren', '', 'publish', 'closed', 'closed', '', 'voor-jongeren', '', '', '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 0, 'http://localhost/villapinedo/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 'Voor ouders', '', 'publish', 'closed', 'closed', '', 'voor-ouders', '', '', '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 0, 'http://localhost/villapinedo/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 'Voor professionals', '', 'publish', 'closed', 'closed', '', 'voor-professionals', '', '', '2017-04-09 11:16:13', '2017-04-09 09:16:13', '', 0, 'http://localhost/villapinedo/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2017-04-09 16:11:08', '2017-04-09 14:11:08', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video\'s kan bekijken. Het wachtwoord is voor alle video\'s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).\r\n\r\n<img class="alignnone size-medium wp-image-18" src="//localhost:3000/villapinedo/wp-content/uploads/2017/04/Crew_V2-300x51.jpg" alt="" width="300" height="51" />', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:11:08', '2017-04-09 14:11:08', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-04-09 16:11:45', '2017-04-09 14:11:45', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video\'s kan bekijken. Het wachtwoord is voor alle video\'s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).<img class="alignnone size-medium wp-image-18" src="//localhost:3000:3000/villapinedo/wp-content/uploads/2017/04/Crew_V2-300x51.jpg" alt="" width="300" height="51" />', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:11:45', '2017-04-09 14:11:45', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-04-09 16:25:26', '2017-04-09 14:25:26', 'Start de workshop <a href="http://localhost/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:25:26', '2017-04-09 14:25:26', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-04-09 16:26:35', '2017-04-09 14:26:35', 'Start de workshop <a href="//localhost:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:26:35', '2017-04-09 14:26:35', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-04-09 16:26:43', '2017-04-09 14:26:43', 'Start de workshop <a href="//localhost:3000:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:26:43', '2017-04-09 14:26:43', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-04-09 16:34:42', '2017-04-09 14:34:42', 'Start de workshop <a href="//localhost:3000:3000:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:34:42', '2017-04-09 14:34:42', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-04-09 16:34:46', '2017-04-09 14:34:46', 'Start de workshop <a href="//localhost:3000:3000:3000:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:34:46', '2017-04-09 14:34:46', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-04-09 16:36:40', '2017-04-09 14:36:40', 'Start de workshop <a href="//localhost:3000:3000:3000:3000:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:36:40', '2017-04-09 14:36:40', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-04-09 16:36:52', '2017-04-09 14:36:52', 'Start de workshop <a href="//localhost:3000:3000:3000:3000:3000:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:36:52', '2017-04-09 14:36:52', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-04-09 16:39:03', '2017-04-09 14:39:03', 'Start de workshop <a href="//localhost:3000/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:39:03', '2017-04-09 14:39:03', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-04-09 16:39:33', '2017-04-09 14:39:33', 'Start de workshop <a href="//localhost/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:39:33', '2017-04-09 14:39:33', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 6', '', 'publish', 'closed', 'closed', '', '43', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=43', 7, 'nav_menu_item', '', 0),
(44, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 5', '', 'publish', 'closed', 'closed', '', '44', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=44', 6, 'nav_menu_item', '', 0),
(45, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 4', '', 'publish', 'closed', 'closed', '', '45', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 3', '', 'publish', 'closed', 'closed', '', '46', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 2', '', 'publish', 'closed', 'closed', '', '47', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2017-04-09 16:42:00', '2017-04-09 14:42:00', '', 'Week 1', '', 'publish', 'closed', 'closed', '', 'week-1', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=48', 2, 'nav_menu_item', '', 0),
(50, 1, '2017-04-09 16:55:12', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-09 16:55:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=acf-field-group&p=50', 0, 'acf-field-group', '', 0) ;

#
# End of data contents of table `vpi17_posts`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_term_relationships`
#

DROP TABLE IF EXISTS `vpi17_term_relationships`;


#
# Table structure of table `vpi17_term_relationships`
#

CREATE TABLE `vpi17_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_term_relationships`
#
INSERT INTO `vpi17_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 7, 0),
(30, 7, 0),
(31, 7, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0) ;

#
# End of data contents of table `vpi17_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_term_taxonomy`
#

DROP TABLE IF EXISTS `vpi17_term_taxonomy`;


#
# Table structure of table `vpi17_term_taxonomy`
#

CREATE TABLE `vpi17_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_term_taxonomy`
#
INSERT INTO `vpi17_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `vpi17_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_termmeta`
#

DROP TABLE IF EXISTS `vpi17_termmeta`;


#
# Table structure of table `vpi17_termmeta`
#

CREATE TABLE `vpi17_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_termmeta`
#

#
# End of data contents of table `vpi17_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_terms`
#

DROP TABLE IF EXISTS `vpi17_terms`;


#
# Table structure of table `vpi17_terms`
#

CREATE TABLE `vpi17_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_terms`
#
INSERT INTO `vpi17_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geen categorie', 'geen-categorie', 0),
(2, 'Hoofdmenu', 'hoofdmenu', 0),
(3, 'De Website', 'de-website', 0),
(4, 'Social Media', 'social-media', 0),
(7, 'Villa Pinedo', 'villa-pinedo', 0) ;

#
# End of data contents of table `vpi17_terms`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_usermeta`
#

DROP TABLE IF EXISTS `vpi17_usermeta`;


#
# Table structure of table `vpi17_usermeta`
#

CREATE TABLE `vpi17_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_usermeta`
#
INSERT INTO `vpi17_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'pinedoadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'vpi17_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'vpi17_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:3:{s:64:"7e159d8f51484e9c0e93854ea069f6cefcf38974e54692a4974f3ac739c643ba";a:4:{s:10:"expiration";i:1492884342;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36";s:5:"login";i:1491674742;}s:64:"b69fd8fdd4dcce11839427f0c1fd75dc432f7c4dedd199b99eb2ca93023404d7";a:4:{s:10:"expiration";i:1492884354;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36";s:5:"login";i:1491674754;}s:64:"7cb730b1782ac18da4421d8022d1eb1b7d85beaae238b748b610db77f032acb9";a:4:{s:10:"expiration";i:1491917490;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491744690;}}'),
(16, 1, 'vpi17_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(20, 1, 'vpi17_user-settings', 'libraryContent=browse'),
(21, 1, 'vpi17_user-settings-time', '1491728987'),
(22, 1, 'nav_menu_recently_edited', '2') ;

#
# End of data contents of table `vpi17_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `vpi17_users`
#

DROP TABLE IF EXISTS `vpi17_users`;


#
# Table structure of table `vpi17_users`
#

CREATE TABLE `vpi17_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `vpi17_users`
#
INSERT INTO `vpi17_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pinedoadmin', '$P$B.kEFblij39QoszD2IRzZhlFbrkvJK/', 'pinedoadmin', 'brian@geusmedia.nl', '', '2017-04-08 18:05:40', '', 0, 'pinedoadmin') ;

#
# End of data contents of table `vpi17_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

