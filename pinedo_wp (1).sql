-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 apr 2017 om 09:33
-- Serverversie: 10.1.19-MariaDB
-- PHP-versie: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinedo_wp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_commentmeta`
--

CREATE TABLE `vpi17_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_comments`
--

CREATE TABLE `vpi17_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_links`
--

CREATE TABLE `vpi17_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_certificates`
--

CREATE TABLE `vpi17_namaste_certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_ids` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `editor_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_history`
--

CREATE TABLE `vpi17_namaste_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `datetime` datetime DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `num_value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `for_item_type` varchar(100) NOT NULL DEFAULT '',
  `for_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_history`
--

INSERT INTO `vpi17_namaste_history` (`id`, `user_id`, `date`, `datetime`, `action`, `value`, `num_value`, `for_item_type`, `for_item_id`, `group_id`, `course_id`, `module_id`) VALUES
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
(14, 1, '2017-04-09', '2017-04-09 16:24:12', 'completed_lesson', 'Les "01 Het gesprek" voltooid', 9, '', 0, 0, 4, 0),
(15, 2, '2017-04-13', '2017-04-13 21:06:57', 'enrolled_course', 'Ingeschreven voor cursus Voor gescheiden ouders. Status: enrolled', 4, '', 0, 0, 4, 0),
(16, 2, '2017-04-13', '2017-04-13 21:07:03', 'started_lesson', 'Gestart met lezen van les "01 Het gesprek"', 9, '', 0, 0, 4, 0),
(17, 2, '2017-04-13', '2017-04-13 21:31:04', 'submitted_solution', 'Verzonden antwoorden "Opdracht 1" om te beoordelen.', 1, '', 0, 0, 4, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_homeworks`
--

CREATE TABLE `vpi17_namaste_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lesson_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `accept_files` tinyint(4) NOT NULL DEFAULT '0',
  `award_points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `limit_by_date` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `accept_date_from` date DEFAULT NULL,
  `accept_date_to` date DEFAULT NULL,
  `auto_grade_lesson` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_homeworks`
--

INSERT INTO `vpi17_namaste_homeworks` (`id`, `course_id`, `lesson_id`, `title`, `description`, `accept_files`, `award_points`, `editor_id`, `limit_by_date`, `accept_date_from`, `accept_date_to`, `auto_grade_lesson`) VALUES
(1, 4, 9, 'Opdracht 1', '<strong>Handig om vooraf te bedenken</strong>\r\n\r\nHet gesprek waarin ouders aankondigen dat ze uit elkaar gaan is voor kinderen een belangrijk moment. Zoals je van de kinderen in het filmpje hebt kunnen horen, is het een gesprek wat zij zich heel goed kunnen herinneren. Bereid het gesprek daarom goed voor. Mochten ze omiddellijk vragen stellen en hun onzekerheid tonen, dan kun jij in elk geval direct antwoord geven. Bedenk alvast wat je kunt antwoorden als je kind met een van deze vragen komt. Ook al weet je sommige antwoorden nog niet, bedenk dan in ieder geval hoe jullie leven er de komende maand uit zal zien.\r\n\r\nVerplaats het schuifje naar links als jullie er, als ouders, nog niet uit zijn en naar rechts als jullie het eens zijn.', 0, 0, 1, 0, '2017-04-09', '2017-04-09', 0),
(2, 4, 9, 'Opdracht 2', '<strong>Het verhaal</strong>\r\n\r\nBeschrijf hieronder waarom jullie gaan scheiden of (al lang) gescheiden zijn. Verbeter het zo vaak als je wilt totdat je een verhaal hebt dat je kinderen begrijpen en aan hun vrienden zouden kunnen vertellen. Laat het verhaal lezen aan iemand die je vertrouwt en vraag om eerlijke feedback op onderstaande punten. Enkele tips:\r\n<ul>\r\n 	<li>Leg uit dat jullie als partners uit elkaar gaan, niet als ouders.</li>\r\n 	<li>Vertel wat er gaat veranderen en wat hetzelfde blijft.</li>\r\n 	<li>Probeer je emoties te beheersen, zodat je kind(eren) de ruimte krijgen om hun eigen gevoelens te uiten. En jij je kind(eren) kan troosten en niet omgekeerd.</li>\r\n 	<li>Maak elkaar geen verwijten, dat is pijnlijk voor je kind(eren). Dus niet: \\''Vraag maar aan je moeder waarom ze wil scheiden\\''.</li>\r\n 	<li>Je kan schuldgevoelens bij je kind(eren) voorkomen door uit te leggen dat het niet zijn of haar schuld is.</li>\r\n</ul>\r\nSchrijf je eigen verhaal in het grijze veld. Het wordt automatisch opgeslagen zodra je op verder drukt. En je kunt het altijd teruglezen en aanpassen vanuit je weekoverzicht.', 0, 0, 1, 0, '2017-04-09', '2017-04-09', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_homework_notes`
--

CREATE TABLE `vpi17_namaste_homework_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `teacher_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_payments`
--

CREATE TABLE `vpi17_namaste_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `amount` decimal(8,2) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'failed',
  `paycode` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(100) NOT NULL DEFAULT 'paypal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_student_certificates`
--

CREATE TABLE `vpi17_namaste_student_certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2000-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_student_courses`
--

CREATE TABLE `vpi17_namaste_student_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `enrollment_date` date NOT NULL DEFAULT '2000-01-01',
  `completion_date` date NOT NULL DEFAULT '2000-01-01',
  `comments` text NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '',
  `enrollment_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_student_courses`
--

INSERT INTO `vpi17_namaste_student_courses` (`id`, `course_id`, `user_id`, `status`, `enrollment_date`, `completion_date`, `comments`, `grade`, `enrollment_time`, `completion_time`, `points`) VALUES
(1, 4, 1, 'completed', '2017-04-09', '2017-04-09', '', '', '2017-04-09 11:02:48', '2017-04-09 16:24:11', 0),
(2, 4, 2, 'enrolled', '2017-04-13', '1900-01-01', '', '', '2017-04-13 21:06:57', NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_student_homeworks`
--

CREATE TABLE `vpi17_namaste_student_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `date_submitted` date NOT NULL DEFAULT '2000-01-01',
  `content` text NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `grade` varchar(100) NOT NULL DEFAULT '',
  `fileblob` longblob,
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_student_homeworks`
--

INSERT INTO `vpi17_namaste_student_homeworks` (`id`, `homework_id`, `student_id`, `status`, `date_submitted`, `content`, `file`, `grade`, `fileblob`, `points`) VALUES
(1, 1, 2, 'pending', '2017-04-13', 'Test', '', '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_student_lessons`
--

CREATE TABLE `vpi17_namaste_student_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `completion_date` text NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '',
  `start_time` datetime DEFAULT NULL,
  `completion_time` datetime DEFAULT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pending_admin_approval` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_student_lessons`
--

INSERT INTO `vpi17_namaste_student_lessons` (`id`, `lesson_id`, `student_id`, `status`, `completion_date`, `grade`, `start_time`, `completion_time`, `points`, `pending_admin_approval`) VALUES
(1, 17, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(2, 16, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(3, 15, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(4, 14, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:11', 0, 1),
(5, 13, 1, 1, '2017-04-09', '', '2017-04-09 16:24:11', '2017-04-09 16:24:12', 0, 1),
(6, 9, 1, 1, '2017-04-09', '', '2017-04-09 16:24:12', '2017-04-09 16:24:12', 0, 1),
(7, 9, 2, 0, '2017-04-13', '', '2017-04-13 21:07:03', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_student_modules`
--

CREATE TABLE `vpi17_namaste_student_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `student_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  `enrollment_date` date NOT NULL DEFAULT '2000-01-01',
  `completion_date` date NOT NULL DEFAULT '2000-01-01',
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_namaste_visits`
--

CREATE TABLE `vpi17_namaste_visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lesson_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2001-01-01',
  `visits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_namaste_visits`
--

INSERT INTO `vpi17_namaste_visits` (`id`, `course_id`, `lesson_id`, `user_id`, `date`, `visits`) VALUES
(1, 4, 0, 1, '2017-04-09', 38),
(2, 0, 17, 1, '2017-04-09', 1),
(3, 0, 16, 1, '2017-04-09', 1),
(4, 0, 15, 1, '2017-04-09', 2),
(5, 0, 14, 1, '2017-04-09', 3),
(6, 0, 13, 1, '2017-04-09', 4),
(7, 0, 9, 1, '2017-04-09', 160),
(8, 0, 9, 1, '2017-04-10', 23),
(9, 0, 9, 1, '2017-04-10', 1),
(10, 4, 0, 1, '2017-04-10', 1),
(11, 0, 13, 1, '2017-04-10', 9),
(12, 0, 14, 1, '2017-04-10', 3),
(13, 0, 15, 1, '2017-04-10', 3),
(14, 0, 16, 1, '2017-04-10', 3),
(15, 0, 17, 1, '2017-04-10', 2),
(16, 0, 9, 1, '2017-04-13', 2),
(17, 4, 0, 1, '2017-04-13', 1),
(18, 4, 0, 2, '2017-04-13', 6),
(19, 0, 9, 2, '2017-04-13', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_options`
--

CREATE TABLE `vpi17_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_options`
--

INSERT INTO `vpi17_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"module-[^/]+/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"module-[^/]+/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"module-[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"module-[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"module-[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"module-[^/]+/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"(module-[^/]+)/([^/]+)/embed/?$";s:70:"index.php?module_number=$matches[1]&course_unit=$matches[2]&embed=true";s:35:"(module-[^/]+)/([^/]+)/trackback/?$";s:64:"index.php?module_number=$matches[1]&course_unit=$matches[2]&tb=1";s:55:"(module-[^/]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:76:"index.php?module_number=$matches[1]&course_unit=$matches[2]&feed=$matches[3]";s:50:"(module-[^/]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:76:"index.php?module_number=$matches[1]&course_unit=$matches[2]&feed=$matches[3]";s:43:"(module-[^/]+)/([^/]+)/page/?([0-9]{1,})/?$";s:77:"index.php?module_number=$matches[1]&course_unit=$matches[2]&paged=$matches[3]";s:39:"(module-[^/]+)/([^/]+)(?:/([0-9]+))?/?$";s:76:"index.php?module_number=$matches[1]&course_unit=$matches[2]&page=$matches[3]";s:29:"module-[^/]+/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"module-[^/]+/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"module-[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"module-[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"module-[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"module-[^/]+/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"(module-[^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?module_number=$matches[1]&feed=$matches[2]";s:42:"(module-[^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?module_number=$matches[1]&feed=$matches[2]";s:23:"(module-[^/]+)/embed/?$";s:46:"index.php?module_number=$matches[1]&embed=true";s:35:"(module-[^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?module_number=$matches[1]&paged=$matches[2]";s:17:"(module-[^/]+)/?$";s:35:"index.php?module_number=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:31:"wp-courseware/wp-courseware.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
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
(100, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:16:"sidebar-footer-1";a:1:{i:0;s:10:"nav_menu-2";}s:16:"sidebar-footer-2";a:1:{i:0;s:10:"nav_menu-3";}s:16:"sidebar-footer-3";a:1:{i:0;s:10:"nav_menu-4";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:4:{i:2;a:2:{s:5:"title";s:10:"De Website";s:8:"nav_menu";i:3;}i:3;a:2:{s:5:"title";s:12:"Social Media";s:8:"nav_menu";i:4;}i:4;a:2:{s:5:"title";s:12:"Villa Pinedo";s:8:"nav_menu";i:7;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:5:{i:1492149940;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1492158861;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1492159821;a:1:{s:32:"wpcw-cron-notifications-dripfeed";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1492193154;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491674762;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(132, 'current_theme', 'Sage Starter Theme', 'yes'),
(133, 'theme_mods_villapinedo-workshop', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:2;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, 'recently_activated', 'a:1:{s:23:"namaste-lms/namaste.php";i:1492113018;}', 'yes'),
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
(219, 'acf_version', '5.5.11', 'yes'),
(229, 'wpmdb_settings', 'a:11:{s:3:"key";s:40:"HjgMxTzNx8Tt2EMPu2LCncMYKFUrcspnr/QDSs8U";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;}', 'no'),
(230, 'wpmdb_schema_version', '1', 'no'),
(231, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/nl_NL/wordpress-4.7.3.zip";s:6:"locale";s:5:"nl_NL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/nl_NL/wordpress-4.7.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1492108979;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(232, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1492113017;s:7:"checked";a:6:{s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.5.11";s:19:"akismet/akismet.php";s:3:"3.3";s:9:"hello.php";s:3:"1.6";s:23:"namaste-lms/namaste.php";s:3:"2.0";s:31:"wp-courseware/wp-courseware.php";s:3:"3.9";s:31:"wp-migrate-db/wp-migrate-db.php";s:5:"0.9.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:23:"namaste-lms/namaste.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/namaste-lms";s:4:"slug";s:11:"namaste-lms";s:6:"plugin";s:23:"namaste-lms/namaste.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:42:"https://wordpress.org/plugins/namaste-lms/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/namaste-lms.zip";}s:31:"wp-migrate-db/wp-migrate-db.php";O:8:"stdClass":6:{s:2:"id";s:27:"w.org/plugins/wp-migrate-db";s:4:"slug";s:13:"wp-migrate-db";s:6:"plugin";s:31:"wp-migrate-db/wp-migrate-db.php";s:11:"new_version";s:5:"0.9.2";s:3:"url";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-migrate-db.0.9.2.zip";}}}', 'no'),
(237, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1492108987;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";s:20:"villapinedo-workshop";s:5:"8.4.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(238, '_site_transient_timeout_browser_1112e7da2c1e2ca5eb7e4651881e05db', '1492370476', 'no'),
(239, '_site_transient_browser_1112e7da2c1e2ca5eb7e4651881e05db', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(254, '_transient_timeout_acf_get_remote_plugin_info', '1492195381', 'no'),
(255, '_transient_acf_get_remote_plugin_info', 'a:13:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.11";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.8.0";s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:9:"changelog";s:300:"<h4>5.5.11</h4><ul><li>Google Map field: Added new <code>google_map_init</code> JS action</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>";s:14:"upgrade_notice";s:0:"";s:7:"banners";a:2:{s:3:"low";s:65:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.png";s:4:"high";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.png";}}', 'no'),
(256, '_site_transient_timeout_theme_roots', '1492110782', 'no'),
(257, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:20:"villapinedo-workshop";s:7:"/themes";}', 'no'),
(258, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1492153386', 'no'),
(259, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1492153386', 'no'),
(260, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1492110186', 'no'),
(261, '_transient_timeout_feed_26b0d8e18ed25a5313e8c7eb9c687d1b', '1492153387', 'no'),
(262, '_transient_timeout_feed_mod_26b0d8e18ed25a5313e8c7eb9c687d1b', '1492153387', 'no'),
(263, '_transient_feed_mod_26b0d8e18ed25a5313e8c7eb9c687d1b', '1492110187', 'no'),
(264, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1492153391', 'no'),
(265, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1492153391', 'no'),
(266, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1492110191', 'no'),
(267, '_transient_timeout_plugin_slugs', '1492199422', 'no'),
(268, '_transient_plugin_slugs', 'a:6:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:23:"namaste-lms/namaste.php";i:4;s:31:"wp-courseware/wp-courseware.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'no'),
(269, '_transient_timeout_dash_12fb51b99c5dfec05835445e04f970a4', '1492153391', 'no'),
(270, '_transient_dash_12fb51b99c5dfec05835445e04f970a4', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/''>WordPress 4.7.3 Security and Maintenance Release</a> <span class="rss-date">6 maart 2017</span><div class="rssSummary">WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six security issues: Cross-site scripting (XSS) via media file metadata.  Reported by Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Control characters can trick redirect [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://nl.wordpress.org/2017/03/30/het-einde-van-wordcamp-the-netherlands/''>Het einde van WordCamp The Netherlands</a></li><li><a class=''rsswidget'' href=''https://nl.wordpress.org/2017/02/17/wordcamp-the-netherlands-2017/''>WordCamp The Netherlands 2017</a></li><li><a class=''rsswidget'' href=''https://nl.wordpress.org/2017/02/08/wordcamp-nijmegen-zoekt-organisatoren/''>WordCamp Nijmegen zoekt organisatoren!</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Populaire plugin:</span> Jetpack by WordPress.com&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=jetpack&amp;_wpnonce=92ff8032d7&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Jetpack by WordPress.com installeren">(Installeren)</a></li></ul></div>', 'no'),
(271, '_site_transient_timeout_available_translations', '1492121051', 'no');
INSERT INTO `vpi17_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(272, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-27 04:32:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-23 04:36:52";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.3/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 09:18:57";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 11:34:47";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-05 09:50:06";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 13:57:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 13:57:53";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-30 00:08:09";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-15 12:53:17";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 16:05:09";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-05 06:59:58";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-03 12:18:25";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 13:34:22";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-12 07:41:54";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-08 04:57:54";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-29 14:23:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-05 06:17:00";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-04 05:43:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-30 09:46:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-24 06:52:11";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.16/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-03 14:07:21";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-21 11:39:51";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-07 09:27:09";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.16/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-16 03:50:08";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-07 00:19:52";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-13 07:00:13";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-13 19:43:03";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-24 12:22:25";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 18:17:50";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-03 00:34:10";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-17 11:46:52";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 21:21:58";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-27 07:08:07";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-04 05:03:16";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-10 15:33:37";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-11 04:43:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 12:03:30";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(273, 'widget_wpcw_course_progress', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'WPCW_Settings', 's:488:"a:11:{s:18:"license_activation";s:16:"activate_license";s:11:"license_key";s:9:"Unlimited";s:15:"show_powered_by";s:9:"show_link";s:24:"course_enrollment_method";s:4:"sync";s:15:"use_default_css";s:8:"show_css";s:18:"cron_time_dripfeed";s:10:"twicedaily";s:20:"enable_unit_comments";s:16:"disable_comments";s:20:"cert_background_type";s:11:"use_default";s:17:"cert_logo_enabled";s:12:"no_cert_logo";s:19:"cert_signature_type";s:4:"text";s:13:"cert_sig_text";s:21:"Villa Pinedo Workshop";}";', 'yes'),
(275, 'WPCW_Version', '3.9000', 'yes'),
(276, 'wpcw_flush_rules', 'done', 'yes'),
(279, '_transient_timeout_feed_948c2862c5d501f04f61cea3c4d2b866', '1492156845', 'no');
INSERT INTO `vpi17_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(280, '_transient_feed_948c2862c5d501f04f61cea3c4d2b866', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Fly Plugin News – Fly Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:21:"http://flyplugins.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:30:"Premium plugins for WordPress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Apr 2017 21:03:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:30:"https://wordpress.org/?v=4.7.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Introducing Notes for WP Courseware!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/AsjfWkzG5j8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"http://flyplugins.com/notes-for-wp-courseware/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2016 22:14:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=80985";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:567:"<p>Today we’re very excited to announce another long-awaited feature addition for WP Courseware! Our friends at WisdmLabs have just released Notes for WP Courseware as a premium extension…and we think you’re going to love it! What is Notes? Once you install and activate the extension, Notes for WP Courseware adds a rich HTML text editor&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/notes-for-wp-courseware/">Introducing Notes for WP Courseware!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7835:"<p><img class="aligncenter size-full wp-image-80986" src="http://flyplugins.com/wp-content/uploads/2016/12/its-a.png" alt="its-a" width="784" height="295" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/its-a.png 784w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/its-a-300x113.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/its-a-768x289.png 768w" sizes="(max-width: 784px) 100vw, 784px" /></p>\n<p>Today we’re very excited to announce another long-awaited feature addition for WP Courseware!</p>\n<p>Our friends at WisdmLabs have just released <span style="text-decoration: underline; color: #ff9900;"><a style="color: #ff9900; text-decoration: underline;" href="http://flyplugins.com/wp-courseware-notes">Notes for WP Courseware</a></span> as a premium extension…and we think you’re going to love it!</p>\n<h1 style="text-align: center;"><strong>What is Notes?</strong></h1>\n<p>Once you install and activate the extension, Notes for WP Courseware adds a rich HTML text editor to each of your existing course units. Your students will notice a new “Add Note” icon and once clicked, the note taking editor will display.</p>\n<p><a href="http://flyplugins.com/wp-content/uploads/2016/12/Add_Note.png"><img class="aligncenter size-full wp-image-81090" src="http://flyplugins.com/wp-content/uploads/2016/12/Add_Note.png" alt="add_note" width="831" height="540" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Add_Note.png 831w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Add_Note-300x195.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Add_Note-768x499.png 768w" sizes="(max-width: 831px) 100vw, 831px" /></a></p>\n<p>As you can see in the screenshot below, students can choose from several formatting options, including bulleted lists, block quotes, anchor text links, and more.</p>\n<p>Once a student enters content into the note for a particular unit, they will see an option to mark the note as either public or private.</p>\n<p><a href="http://flyplugins.com/wp-content/uploads/2016/12/Unit_1_Notes.png"><img class="aligncenter size-full wp-image-81091" src="http://flyplugins.com/wp-content/uploads/2016/12/Unit_1_Notes.png" alt="unit_1_notes" width="1093" height="713" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Unit_1_Notes.png 1093w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Unit_1_Notes-300x196.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Unit_1_Notes-768x501.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Unit_1_Notes-1024x668.png 1024w" sizes="(max-width: 1093px) 100vw, 1093px" /></a></p>\n<p>While adding note taking to WP Courseware course units may sound quite simple, this is where the implementation of this extension really begins to offer some unique possibilities.</p>\n<p>When the extension is installed and activated, two new pages are automatically created. You don’t need to display either of them publicly, but they can be linked to within member dashboard or course outlines pages.</p>\n<p><strong>My Notes Page:</strong> This page is created as a private repository for a student to be able to access and review their own notes without sharing them publicly.</p>\n<p>As you can see in the screenshot below, your student will see the note title in this list, as well as a breadcrumb indicating which point in the course it belongs to.</p>\n<p>To view or edit a note, they simply click on its title. There are also options to print the note, delete it, or download the note as a document file.</p>\n<p><a href="http://flyplugins.com/wp-content/uploads/2016/12/My_Notes.png"><img class="aligncenter size-full wp-image-81092" src="http://flyplugins.com/wp-content/uploads/2016/12/My_Notes.png" alt="my_notes" width="731" height="385" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/My_Notes.png 731w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/My_Notes-300x158.png 300w" sizes="(max-width: 731px) 100vw, 731px" /></a></p>\n<p><strong>Public Notes Page:</strong> The extension also creates a repository page for any notes which your students choose to mark as public.</p>\n<p>The “Public Notes” page functions very similarly to the “My Notes” page, with the obvious distinction that when a student clicks on their own notes the notes are editable while clicking on notes created by other students will cause them to be read only.</p>\n<p>And while public notes aren’t meant to be a substitute for student-to-student interaction, such as you could create with the <a href="http://flyplugins.com/buddypress">BuddyPress for WP Courseware extension</a>, there are quite a few uses you might be able to implement.</p>\n<p>For example, we have one WP Courseware user who teaches creative writing courses and he has been waiting for this functionality to allow students to publicly share writing samples with other members of the class.</p>\n<p><a href="http://flyplugins.com/wp-content/uploads/2016/12/Public_Notes.png"><img class="aligncenter size-full wp-image-81093" src="http://flyplugins.com/wp-content/uploads/2016/12/Public_Notes.png" alt="public_notes" width="735" height="315" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Public_Notes.png 735w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Public_Notes-300x129.png 300w" sizes="(max-width: 735px) 100vw, 735px" /></a></p>\n<h1 style="text-align: center;"><strong>And We’re Celebrating the Notes Release With a Special Offer!</strong></h1>\n<p>While the WisdmLabs team has done their best to ensure that the Notes extension is as affordable as possible to WP Courseware users, we were also able to secure an <del><strong>additional 10% discount on the plugin through Saturday, December 17th</strong></del>.</p>\n<p>If you think this is a tool which can enhance your WP Courseware courses now or in the future, we would urge you to purchase the extension <del><strong>prior to midnight on Saturday, December 17th to lock in your 10% discount</strong></del>!</p>\n<p>Simply click on the button below and <del><strong>enter the discount code COURSEWARE10 at checkout to receive 10% off</strong></del> on the Notes extension for WP Courseware. This discount can also be applied to the WP Courseware + BuddyPress extension from WisdmLabs.</p>\n<p><a href="http://flyplugins.com/wp-courseware-notes"><img class="aligncenter wp-image-81094 size-medium" src="http://flyplugins.com/wp-content/uploads/2016/12/Get_Notes_Now-300x77.png" alt="get_notes_now" width="300" height="77" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Get_Notes_Now-300x77.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Get_Notes_Now-768x198.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/12/Get_Notes_Now.png 775w" sizes="(max-width: 300px) 100vw, 300px" /></a></p>\n<p>As always, thanks for your support and please let us know if there is anything we can do for you!</p>\n<p><img class="alignleft size-full wp-image-1527" src="http://flyplugins.com/wp-content/uploads/2014/07/BenandNate2.png" alt="Ben and Nate" width="167" height="100" /></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/notes-for-wp-courseware/">Introducing Notes for WP Courseware!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:51:"http://flyplugins.com/notes-for-wp-courseware/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:46:"http://flyplugins.com/notes-for-wp-courseware/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"Welcome to an All New Fly Plugins…and We Have a Couple of Gifts for You!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/cAGunVERIPk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:54:"http://flyplugins.com/welcome-new-fly-plugins/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 Nov 2016 18:29:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=78819";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:614:"<p>Today we''re thrilled to announce a project we''ve been working on over the last couple of months which we''ve been keeping under wraps... ...until now! We''re very excited to share that we have an entirely redesigned Fly Plugins website. After countless hours and several hundred cups of coffee, it''s finally live! So what does this mean for you?&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/welcome-new-fly-plugins/">Welcome to an All New Fly Plugins&#8230;and We Have a Couple of Gifts for You!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:14219:"<div class="fl-builder-content fl-builder-content-78819 fl-builder-content-primary fl-builder-global-templates-locked" data-post-id="78819"><div class="fl-row fl-row-fixed-width fl-row-bg-none fl-node-5829fc4857c9a" data-node="5829fc4857c9a">\n	<div class="fl-row-content-wrap">\n				<div class="fl-row-content fl-row-fixed-width fl-node-content">\n		\n<div class="fl-col-group fl-node-5829fc4859a85" data-node="5829fc4859a85">\n			<div class="fl-col fl-node-5829fc4859d99" data-node="5829fc4859d99" style="width: 100%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-photo fl-node-5829fc4e18f1e" data-node="5829fc4e18f1e" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78821 size-full" src="http://flyplugins.com/wp-content/uploads/2016/11/New_Fly_Plugins.png" alt="new_fly_plugins" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/New_Fly_Plugins.png 750w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/New_Fly_Plugins-300x148.png 300w" sizes="(max-width: 750px) 100vw, 750px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829fc5c991db" data-node="5829fc5c991db" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p>Today we''re thrilled to announce a project we''ve been working on over the last couple of months which we''ve been keeping under wraps...</p>\n<p><strong>...until now!</strong></p>\n<p>We''re very excited to share that we have an entirely redesigned Fly Plugins website. After countless hours and several hundred cups of coffee, it''s finally live!</p>\n<p style="text-align: center;"><span style="font-size: 22px;"><strong>So what does this mean for you?</strong></span></p>\n<p>YOU are the main reason we decided to take on this project. Most of what we focused on involved making the site faster, easier to navigate, and provide better access to resources like our documentation, video tutorials, and support desk.</p>\n<p><em>These are the main areas we focused on:</em></p>\n</div>	</div>\n</div>	</div>\n</div>	</div>\n\n<div class="fl-col-group fl-node-5829fc7ae2b32" data-node="5829fc7ae2b32">\n			<div class="fl-col fl-node-5829fc7ae2e9b fl-col-small" data-node="5829fc7ae2e9b" style="width: 25%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-photo fl-node-5829fc7f490f2" data-node="5829fc7f490f2" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78822" src="http://flyplugins.com/wp-content/uploads/2016/11/afb34ef4e64346c29216513676a5ce88-150x150.png" alt="afb34ef4e64346c29216513676a5ce88" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/afb34ef4e64346c29216513676a5ce88-150x150.png 150w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/afb34ef4e64346c29216513676a5ce88-300x300.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/afb34ef4e64346c29216513676a5ce88.png 573w" sizes="(max-width: 150px) 100vw, 150px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829fcec9f828" data-node="5829fcec9f828" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><span style="font-size: 16px;"><strong>Updated Member Portal Access</strong></span></p>\n</div>	</div>\n</div>	</div>\n</div>			<div class="fl-col fl-node-5829fc7ae2f4a fl-col-small" data-node="5829fc7ae2f4a" style="width: 25%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-photo fl-node-5829fc9256b23" data-node="5829fc9256b23" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78823" src="http://flyplugins.com/wp-content/uploads/2016/11/e3ea08d03cd8428c8669ec26087fdbec-150x150.png" alt="e3ea08d03cd8428c8669ec26087fdbec" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/e3ea08d03cd8428c8669ec26087fdbec-150x150.png 150w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/e3ea08d03cd8428c8669ec26087fdbec-300x300.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/e3ea08d03cd8428c8669ec26087fdbec.png 572w" sizes="(max-width: 150px) 100vw, 150px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829fd3cf2890" data-node="5829fd3cf2890" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><span style="font-size: 14px;"><strong><span style="font-size: 16px;">Improved Site Performanc</span>e</strong></span></p>\n</div>	</div>\n</div>	</div>\n</div>			<div class="fl-col fl-node-5829fc7ae2ff3 fl-col-small" data-node="5829fc7ae2ff3" style="width: 25%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-photo fl-node-5829fc9e6b437" data-node="5829fc9e6b437" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78824" src="http://flyplugins.com/wp-content/uploads/2016/11/922d717bca5f4e05ae62824c6051ae33-150x150.png" alt="922d717bca5f4e05ae62824c6051ae33" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/922d717bca5f4e05ae62824c6051ae33-150x150.png 150w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/922d717bca5f4e05ae62824c6051ae33-300x300.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/922d717bca5f4e05ae62824c6051ae33.png 574w" sizes="(max-width: 150px) 100vw, 150px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829fe4b24920" data-node="5829fe4b24920" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><strong><span style="font-size: 16px;">More Accessible Resources</span></strong></p>\n</div>	</div>\n</div>	</div>\n</div>			<div class="fl-col fl-node-5829fc7ae309d fl-col-small" data-node="5829fc7ae309d" style="width: 25%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-photo fl-node-5829fcde2aa2a" data-node="5829fcde2aa2a" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78825" src="http://flyplugins.com/wp-content/uploads/2016/11/d65a5135ef3f464fbb3f88b0450385f5-150x150.png" alt="d65a5135ef3f464fbb3f88b0450385f5" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/d65a5135ef3f464fbb3f88b0450385f5-150x150.png 150w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/d65a5135ef3f464fbb3f88b0450385f5-300x300.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/d65a5135ef3f464fbb3f88b0450385f5.png 573w" sizes="(max-width: 150px) 100vw, 150px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829fe70d6088" data-node="5829fe70d6088" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><strong><span style="font-size: 16px;">Better Mobile Responsiveness</span></strong></p>\n</div>	</div>\n</div>	</div>\n</div>	</div>\n\n<div class="fl-col-group fl-node-5829fead3b3bb" data-node="5829fead3b3bb">\n			<div class="fl-col fl-node-5829fead3b6c2" data-node="5829fead3b6c2" style="width: 100%;">\n	<div class="fl-col-content fl-node-content">\n	<div class="fl-module fl-module-rich-text fl-node-5829fead3b189" data-node="5829fead3b189" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><span style="font-size: 22px;"><strong>We Need Your Help...and There''s Something In It For You!</strong></span></p>\n<p>Again, the primary reason for making these changes was to better serve YOU as a member of the Fly Plugins community.</p>\n<p><strong>So we have a small favor to ask!</strong></p>\n<p>If you would be so kind as to take just a few minutes to review the new site design and simply submit your feedback through our <span style="text-decoration: underline;"><span style="color: #ff6600;"><a style="color: #ff6600; text-decoration: underline;" href="http://flyplugins.com/questions/">questions page</a></span></span>, <strong>we''ll put your name in a drawing for a $50 Amazon gift card</strong>!</p>\n<p>That''s right...all you have to do is take a look around the new Fly Plugins and <strong>submit your feedback through our <span style="text-decoration: underline;"><span style="color: #ff6600;"><a style="color: #ff6600; text-decoration: underline;" href="http://flyplugins.com/questions/">questions page</a></span></span> by Monday, November 21st</strong> and we''ll enter you into the drawing. The winner will be notified immediately and announced in our next newsletter.</p>\n</div>	</div>\n</div><div class="fl-module fl-module-photo fl-node-5829ff4e1f46f" data-node="5829ff4e1f46f" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78826 size-full" src="http://flyplugins.com/wp-content/uploads/2016/11/e837a1dafb974103b85e03929884098e.png" alt="e837a1dafb974103b85e03929884098e" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/e837a1dafb974103b85e03929884098e.png 600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/e837a1dafb974103b85e03929884098e-300x80.png 300w" sizes="(max-width: 600px) 100vw, 600px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829ff60bce26" data-node="5829ff60bce26" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p style="text-align: center;"><span style="font-size: 22px;"><strong>And Take 25% Off of Any New License or License Upgrade!</strong></span></p>\n<p>We''re very excited for the release of the new Fly Plugins website, but...</p>\n<p>...we wouldn''t have gotten this far without YOU!</p>\n<p>As our way of saying "thank you" for being a part of the Fly Plugins community, please feel free to <strong>use the discount code NEWFLY25</strong> to take 25% off of the purchase price of any new license or license upgrade!</p>\n<p>This offer will only be <strong>valid through Friday, November 18th at 11:59PM EST</strong>, so please don''t miss this opportunity to save big on any product we have to offer!</p>\n</div>	</div>\n</div><div class="fl-module fl-module-photo fl-node-5829ff766f7de" data-node="5829ff766f7de" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-center" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-78827 size-full" src="http://flyplugins.com/wp-content/uploads/2016/11/92f53aa3b99f402a9767358ad8a0f469.png" alt="92f53aa3b99f402a9767358ad8a0f469" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/92f53aa3b99f402a9767358ad8a0f469.png 600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/11/92f53aa3b99f402a9767358ad8a0f469-300x90.png 300w" sizes="(max-width: 600px) 100vw, 600px" />\n		    \n			</div>\n	</div>	</div>\n</div><div class="fl-module fl-module-rich-text fl-node-5829ff8a24476" data-node="5829ff8a24476" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-rich-text">\n	<p>As always, please let us know let us know if there is anything we can do for you!</p>\n<p>With gratitude,</p>\n</div>	</div>\n</div><div class="fl-module fl-module-photo fl-node-5829ff9e22fc9" data-node="5829ff9e22fc9" data-animation-delay="0.0">\n	<div class="fl-module-content fl-node-content">\n		<div class="fl-photo fl-photo-align-left" itemscope itemtype="http://schema.org/ImageObject">\n	<div class="fl-photo-content fl-photo-img-png">\n				<img class="fl-photo-img wp-image-63237" src="http://flyplugins.com/wp-content/uploads/2016/05/BenandNatewithSigs-300x204.png" alt="BenandNatewithSigs" itemprop="image" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/05/BenandNatewithSigs-300x204.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/05/BenandNatewithSigs.png 339w" sizes="(max-width: 300px) 100vw, 300px" />\n		    \n			</div>\n	</div>	</div>\n</div>	</div>\n</div>	</div>\n		</div>\n	</div>\n</div></div><p>The post <a rel="nofollow" href="http://flyplugins.com/welcome-new-fly-plugins/">Welcome to an All New Fly Plugins&#8230;and We Have a Couple of Gifts for You!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:51:"http://flyplugins.com/welcome-new-fly-plugins/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:46:"http://flyplugins.com/welcome-new-fly-plugins/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Introducing WP Courseware Version 4.0 with Instructor Roles and More!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/uvaI8FkuSag/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:85:"http://flyplugins.com/introducing-wp-courseware-version-4-0-instructor-roles/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 29 Aug 2016 16:00:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=71969";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:607:"<p>It’s been a busy summer here at Fly Plugins! After receiving an incredible response from our 2016 WP Courseware user survey and hiring a very talented new development team, we’ve been hard at work on the features our customers would like to see rolled out. Today, we’re thrilled to announce a major update to WP&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/introducing-wp-courseware-version-4-0-instructor-roles/">Introducing WP Courseware Version 4.0 with Instructor Roles and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:10184:"<p><img class="aligncenter size-full wp-image-71970" src="http://flyplugins.com/wp-content/uploads/2016/08/WPCW_Version_4_0.png" alt="WPCW_Version_4_0" width="3240" height="1141" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0.png 3240w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-300x106.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-768x270.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-1024x361.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-1600x563.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-1200x423.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-800x282.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCW_Version_4_0-400x141.png 400w" sizes="(max-width: 3240px) 100vw, 3240px" /></p>\n<p>It’s been a busy summer here at Fly Plugins! After receiving an incredible response from our <a href="http://flyplugins.com/need-inspiration-6-lessons-learned-wp-courseware-user-survey/">2016 WP Courseware user survey</a> and hiring a very talented new development team, we’ve been hard at work on the features our customers would like to see rolled out.</p>\n<p>Today, we’re thrilled to announce a major update to WP Courseware with version 4.0. You’ve been asking for this one and now it’s finally here…</p>\n<h4 style="text-align: center;">Introducing Instructor Roles for WP Courseware</h4>\n<p>When we reviewed the submissions from our user survey, this was near the top of the list. And we’re very excited to have added a new instructor role to WP Courseware which will provide much more flexibility in the creation and deployment of courses, while also giving us many more options for extending the functionality of the plugin.</p>\n<h4 style="text-align: center;">So How Do Instructor Roles Work?</h4>\n<p><span id="more-71969"></span></p>\n<p>In the past, it’s been necessary for users to have an “administrator” role within WordPress to be able to create courses, edit courses, add or modify course content, grade quizzes, and manage student enrollments.</p>\n<p><strong>But not anymore!</strong></p>\n<p>With WP Courseware version 4.0, you’ll be able to go into specific user accounts and assign the instructor role.</p>\n<p><a href="http://flyplugins.com/wp-content/uploads/2016/08/Instructor_User.png"><img class="aligncenter wp-image-71985" src="http://flyplugins.com/wp-content/uploads/2016/08/Instructor_User-1024x665.png" alt="Instructor_User" width="601" height="390" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-1024x665.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-300x195.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-768x499.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-1540x1000.png 1540w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-1155x750.png 1155w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-770x500.png 770w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Instructor_User-385x250.png 385w" sizes="(max-width: 601px) 100vw, 601px" /></a></p>\n<p>Once a user has been assigned this role, they will log into WordPress and find a new back-end menu which allows them to create, edit, and manage courses, while also allowing access to the “Users” screen and media uploads.</p>\n<h4 style="text-align: center;">So What Will Instructors Have Access To?</h4>\n<p>Instructors <em><strong>will</strong></em> be able to:</p>\n<p>*Create a course and add content<br />\n*Create quizzes and quiz questions<br />\n*View or edit their courses only<br />\n*View or edit their quizzes only<br />\n*View or edit the question pool containing questions they authored<br />\n*Access the grade book for their courses only<br />\n*View user progress in the “Users” screen for their courses<br />\n*Add users to any courses they have created</p>\n<p>Instructors <em><strong>will not</strong></em> be able to:</p>\n<p>*Access non-necessary WordPress back-end functionality<br />\n*View or edit courses not authored by them<br />\n*Access grade books for courses not authored by them<br />\n*View or edit quizzes not authored by them<br />\n*View or edit questions in the question pool not authored by them<br />\n*View any other instructor’s courses a student is enrolled in within the “Users” screen<br />\n*Add students to courses not authored by them</p>\n<h4 style="text-align: center;">How Does This Help You?</h4>\n<p>We’ve been receiving requests for this functionality for quite some time, and for good reason. Adding the instructor role has quite a few possible use cases and we’ve heard from many WP Courseware users who requested the functionality for one of these scenarios.</p>\n<p><img class="alignright wp-image-71984" src="http://flyplugins.com/wp-content/uploads/2016/08/IDEA-300x300.png" alt="IDEA" width="160" height="160" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/IDEA-300x300.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/IDEA-150x150.png 150w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/IDEA-500x500.png 500w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/IDEA-250x250.png 250w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/IDEA.png 512w" sizes="(max-width: 160px) 100vw, 160px" />*Site owners who run a user-curated resource, such as <a href="http://www.lynda.com">lynda.com</a><br />\n*Corporate users who want to allow department heads to create their own training portal<br />\n*Universities which give professors the latitude to create their own online material<br />\n*Entrepreneurs who have virtual assistants updating course content</p>\n<p>The list goes on, but these are just a few of the possibilities with this new role.</p>\n<h4 style="text-align: center;"> And Finally&#8230;Custom Certificates for Each Course!</h4>\n<p style="text-align: left;">Again, this is functionality which many of you have been asking for and until this update, we didn&#8217;t have other new features which we could tie this to. However, since we now have the ability for instructors to create their own courses, we&#8217;ve moved all of the certificate creation options out of the main WP Courseware menu and into each individual course&#8217;s settings options.</p>\n<p style="text-align: left;">This means that you can finally <strong>customize a certificate&#8217;s logo image, signature, and background for each individual course</strong>!</p>\n<h4 style="text-align: center;">Already a WP Courseware License Holder?</h4>\n<p>Great! You’ll be happy to know that version 4.0 is waiting for you within the “Installed Plugins” panel of your WordPress admin dashboard.</p>\n<p>Just scroll down to WP Courseware in your plugins list and click on “Update”. It’s that simple!</p>\n<h4 style="text-align: center;">And Since We’re So Excited…a Gift for You!</h4>\n<p><img class="aligncenter wp-image-71983" src="http://flyplugins.com/wp-content/uploads/2016/08/WPCWFOUR-1024x260.png" alt="WPCWFOUR" width="552" height="140" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-1024x260.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-300x76.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-768x195.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-1600x406.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-1200x305.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-800x203.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/WPCWFOUR-400x102.png 400w" sizes="(max-width: 552px) 100vw, 552px" /></p>\n<p>This update has been a long time in the making and took quite a bit of work to execute successfully to ensure that it would be beneficial to our users but also not affect any existing functionality for those users who don’t need to implement it.</p>\n<p><strong>And you’ve been patient with us!</strong></p>\n<p>So as our way of saying “thank you” and to celebrate our latest “dot zero” version, we’d like to extend a discount code for <strong>20% off on any new license level or any upgrade for an existing license</strong>.</p>\n<p>Simply enter discount code <strong>WPCWFOUR</strong> to take 20% off on any Fly Plugins purchase!</p>\n<p>This discount will <strong>expire at 11:59PM EST on Thursday, September 1st</strong> so if you haven’t yet purchased WP Courseware or have been considering a license upgrade, please don’t miss out!</p>\n<p>As always, thank you for being a part of the Fly Plugins community…we wouldn’t be here without you!</p>\n<p><img class="size-full wp-image-1527 alignleft" src="http://flyplugins.com/wp-content/uploads/2014/07/BenandNate2.png" alt="Ben and Nate" width="167" height="100" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Ben &amp; Nate</p>\n<p>The Fly Plugins Guys</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/introducing-wp-courseware-version-4-0-instructor-roles/">Introducing WP Courseware Version 4.0 with Instructor Roles and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"http://flyplugins.com/introducing-wp-courseware-version-4-0-instructor-roles/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:77:"http://flyplugins.com/introducing-wp-courseware-version-4-0-instructor-roles/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"We’re Turning 4…and Giving You a Reason to Celebrate! Plus a Few Lessons Learned.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/rKar9T82-8s/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:56:"http://flyplugins.com/fly-plugins-is-turning-4/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 02 Aug 2016 05:25:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=70015";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:566:"<p>&#160; Wow. Just…wow. Four years of Fly Plugins. It’s a little surreal for us, so we wanted to share a little about what this journey has taught us and of course, because we are where we are, give back something to you as an integral part of our success during the past four years. From&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/fly-plugins-is-turning-4/">We’re Turning 4…and Giving You a Reason to Celebrate! Plus a Few Lessons Learned.</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:14109:"<p>&nbsp;</p>\n<p><img class="aligncenter size-full wp-image-70021" src="http://flyplugins.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount.png" alt="FlyTurnsFour-1024x269_Discount" width="1024" height="269" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount-300x79.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount-768x202.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount-800x210.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/FlyTurnsFour-1024x269_Discount-400x105.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Wow. Just…wow.</p>\n<p><em><strong>Four years</strong></em> of Fly Plugins. It’s a little surreal for us, so we wanted to share a little about what this journey has taught us and of course, because we are where we are, give back something to you as an integral part of our success during the past four years.</p>\n<h4>From There to Here</h4>\n<p>It’s hard to believe, but a little over four years ago Ben and I were in a very different place. We’d recently finished launching a massive online course which we’d each spent hundreds of hours creating.</p>\n<p>As many of our WP Courseware customers know, creating a paid training course doesn’t just involve the content. Yes, we likely each spent at least 200 hours recording, re-recording, and editing video content for our students. But we also spent as much or more time building and structuring the site, marketing the course, answering pre-sales questions about the content, and helping to guide our paying students along to meet their goals as if our lives depended on it.</p>\n<p><strong>Because, well, it actually did.</strong></p>\n<p>But after that course was launched and Ben had spent massive amounts of time structuring our content to be efficient and effective for our students, we realized we had a bigger mission to accomplish beyond what our training content had to offer.</p>\n<p><strong>And what was it?</strong></p>\n<p><span id="more-70015"></span></p>\n<p>We realized that, as we say very often now, everyone is an expert at something! And it can be life changing for them to take their knowledge of a subject and offer it as an online course for others. And it doesn’t matter what it is. We recently published a <a href="http://flyplugins.com/need-inspiration-6-lessons-learned-wp-courseware-user-survey/">blog post</a> on several lessons we learned from our 2016 WP Courseware user survey and we were astonished at what people will pay a premium price to learn online.</p>\n<p><img class="aligncenter wp-image-70017" src="http://flyplugins.com/wp-content/uploads/2016/08/Everyone_Expert.png" alt="Everyone_Expert" width="675" height="90" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert.png 1500w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-300x40.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-768x102.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-1024x137.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-1200x160.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-800x107.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Everyone_Expert-400x53.png 400w" sizes="(max-width: 675px) 100vw, 675px" /></p>\n<p><strong>Never give up on your idea!</strong></p>\n<p>So we realized that our larger mission was this…empower people with the ability to use WordPress to easily get up and running with their online training courses and in the process, possibly transform the income generating aspect of their lives leading to the ability to live out the most rewarding lifestyle possible.</p>\n<p>In our content, we very often refer to one of our favorite customers, <a href="http://flyplugins.com/how-wp-courseware-helped-caitlin-pyle-break-free-and-work-anywhere-anytime/">Caitlin Pyle</a>, who has gone from a 9-5 marketing gig to earning enough money from her courses to travel around the world full-time with her husband and work along the way. These types of stories are the reason we wake up each day to work so hard on our products.</p>\n<p>As our good friend Cory Miller from <a href="https://ithemes.com/">iThemes</a> always tells his employees, the goal is to make our customers’ lives awesome.</p>\n<h4>And We’ve Learned a Few Lessons Along the Way</h4>\n<p>Since many of you are entrepreneurs yourselves, we thought it was worth sharing a few of the lessons we’ve learned throughout this journey.</p>\n<p><strong>1. Just because you were the best yesterday, that doesn’t meant you’re the best today.</strong></p>\n<p>When we first developed WP Courseware, there were no “learning management system” plugins available for WordPress. That’s why Ben invested blood, sweat, and tears for hour upon hour structuring our course content all those years ago.</p>\n<p>I’ve never really written about this before but after launching WP Courseware, competitors quickly started to spring up realizing that we were on to something. And some of these competitors have deep pockets to launch features quickly, whereas our beginnings involved eating ramen noodles for weeks at a time so that we could hire the best development talent we could find and invest large amounts of cash to create the product we thought could help transform other folks’ business models.</p>\n<p>We’re fortunate to be in a different position today, but the commitment to offering what will help our customers succeed remains the same. We recently hired a completely new development team with absolutely incredible talent to focus on adding the most highly requested features from our 2016 user survey.</p>\n<p>We receive dozen of feature requests each week…and we review and evaluate each and every single one of them. Our products are no longer ours. They’re yours. And we want everything we do to improve them help make your life easier.</p>\n<p><img class="aligncenter wp-image-70018" src="http://flyplugins.com/wp-content/uploads/2016/08/Make_Life_Easier.png" alt="Make_Life_Easier" width="675" height="90" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier.png 1500w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-300x40.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-768x102.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-1024x137.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-1200x160.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-800x107.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Make_Life_Easier-400x53.png 400w" sizes="(max-width: 675px) 100vw, 675px" /></p>\n<p><strong>2. Do your best to lead, not just follow.</strong></p>\n<p>Following up on what I spoke about above, one of the most important lessons we’ve learned is to not just blindly chart our development path and add features based on what those competitors who sprung up around us do.</p>\n<p>Our primary jobs are to ask and think. We constantly ask what you want and we will constantly evaluate how beneficial new features will be to the majority of our users.</p>\n<p>We do this <strong><em>every</em></strong> day, and will continue to.</p>\n<p><strong>3. Every one of our customers has a story, not just a credit card.</strong></p>\n<p>Again, one of the most rewarding aspects of this journey has been personally connecting with thousands of customers over the last four years. We don’t hear from everyone, but with tens of thousands of plugin activations, we’ve been able to communicate with many of you, and understanding where you’ve been, what you’re working on, and where you want to be is absolutely critical to our business.</p>\n<p>We create solutions to problems…plain and simple. That’s what plugins do for website owners.</p>\n<p>If we don’t know what our customers are doing with our products, we can never succeed at offering what they need. I have personally had conversations with hundreds and hundreds of customers over the last four years gaining a tremendous amount of motivation and insight along the way.</p>\n<p>And we’ve been able to develop relationships with some of the most successful entrepreneurs and consultants in the WordPress ecosystem, many of whom you are very familiar with, to share stories and feedback to help better serve our customers and become a part of the entrepreneurial narrative associated with them.</p>\n<p><img class="aligncenter wp-image-70019" src="http://flyplugins.com/wp-content/uploads/2016/08/Product_Success.png" alt="Product_Success" width="675" height="90" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success.png 1500w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-300x40.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-768x102.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-1024x137.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-1200x160.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-800x107.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Product_Success-400x53.png 400w" sizes="(max-width: 675px) 100vw, 675px" /></p>\n<h4>But Again It’s Not About Us…It’s About You!</h4>\n<p>If you’ve read this far, we love you. If you ever run into us at a WordCamp or other event, tap us on the shoulder and let us know that we owe you lunch. Seriously.</p>\n<p>We wanted to provide a special offer to the Fly Plugins community to say “thank you” for helping us achieve our goals.</p>\n<p>Our job is to serve you, so <strong>for the next 72 hours we’ve created a special discount code to allow you to receive 40% off on absolutely anything</strong>!</p>\n<p><em>*If you haven’t yet purchased WP Courseware or S3 Media Maestro, take the discount on any license level.</em></p>\n<p><em>*If you’re an existing customer thinking of upgrading your license, apply the discount to an upgrade by logging into the member portal, going to the “Licenses” tab, and clicking “View Upgrades”.</em></p>\n<p>Do we lose out by doing this? Nope…if you’re reading this we’re beyond fortunate and grateful.</p>\n<p>We sat around thinking of clever ways to incorporate our 4th birthday into some sort of financially palatable promotion. And conversations were going something like this&#8230;</p>\n<p>Us: <em>“What about 40% off? That would be cool. But 40% off on anything and everything is too much, right?”</em></p>\n<p>Our Accountant: <em>“Why would you do that if you don&#8217;t need to? Don&#8217;t do that.”</em></p>\n<p><strong>Well, forget it.</strong></p>\n<p>He’s not the one who wakes up every day trying to create better solutions for more WordPress site owners. He’s not the one who has seen the money and time invested lead to people quitting their jobs and changing their lives with our products. He&#8217;s not the one who feels incredibly fortunate to have a crazy idea become, well, a <em>real</em> business.</p>\n<p>Our customers are the ones who make things happen with these plugins. So if we can offer something big to get more of you on board and working toward achieving your goals, let’s do it!</p>\n<p><strong>This offer will be valid through August 4th at 11:59PM Eastern Standard Time and simply enter discount code FLYFOUR to take 40% off of anything you purchase from us.</strong></p>\n<p><img class="aligncenter size-full wp-image-70020" src="http://flyplugins.com/wp-content/uploads/2016/08/Fly_Four_Discount.png" alt="Fly_Four_Discount" width="575" height="316" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Fly_Four_Discount.png 575w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Fly_Four_Discount-300x165.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/08/Fly_Four_Discount-400x220.png 400w" sizes="(max-width: 575px) 100vw, 575px" /></p>\n<h5><a href="http://flyplugins.com/wp-courseware/">&gt;&gt;&gt;Click here to get WP Courseware now!&lt;&lt;&lt;</a></h5>\n<h5><a href="http://flyplugins.com/s3-media-maestro/">&gt;&gt;&gt;Click here to get S3 Media Maestro now!&lt;&lt;&lt;</a></h5>\n<h4>And a Message From All of Us Here at Fly Plugins</h4>\n<p>Again, thank you for being a part of this journey. It’s difficult to express in an email or blog post just how much everyone who has had interest in our products, purchased a product, or offered suggestions means to us.</p>\n<p><strong>Just know that we appreciate you and if there is ever anything we can do to help you on your journey, you know where to find us.</strong></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/fly-plugins-is-turning-4/">We’re Turning 4…and Giving You a Reason to Celebrate! Plus a Few Lessons Learned.</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"http://flyplugins.com/fly-plugins-is-turning-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"http://flyplugins.com/fly-plugins-is-turning-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WP Courseware Version 3.9 is Here With Course Prerequisites, Question Importing, and More!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/08WVgiVtHuU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:96:"http://flyplugins.com/wp-courseware-version-3-9-course-prerequisites-question-importing/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Jul 2016 16:19:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=67170";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:653:"<p>We’re on a roll here at Fly Plugins! After receiving such tremendous feedback from our 2016 WP Courseware user survey and hiring an entirely new development team, we’re looking forward to several exciting updates in the coming weeks. Again, after the hundreds of user survey submissions we received, we were able to take a look&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/wp-courseware-version-3-9-course-prerequisites-question-importing/">WP Courseware Version 3.9 is Here With Course Prerequisites, Question Importing, and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:11253:"<p><img class="aligncenter size-large wp-image-67173" src="http://flyplugins.com/wp-content/uploads/2016/06/Introducing-1-1024x361.png" alt="Introducing (1)" width="1024" height="361" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-1024x361.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-300x106.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-768x270.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-1600x563.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-1200x423.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-800x282.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Introducing-1-400x141.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>We’re on a roll here at Fly Plugins! After receiving such tremendous feedback from our 2016 WP Courseware user survey and hiring an entirely new development team, we’re looking forward to several exciting updates in the coming weeks.</p>\n<p><img class="aligncenter size-large wp-image-67172" src="http://flyplugins.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1024x126.png" alt="INTRODUCING WP COURSEWARE VERSION 3.9!" width="1024" height="126" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1024x126.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-300x37.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-768x95.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1600x198.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1200x148.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-800x99.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-400x49.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Again, after the hundreds of user survey submissions we received, we were able to take a look at the most commonly requested features and start implementing those first.</p>\n<p>WP Courseware version 3.9 focuses on four of those most common requests, as well as a few other minor updates and fixes.</p>\n<p><span id="more-67170"></span></p>\n<h5 style="text-align: center;"><strong>Course Prerequisites</strong></h5>\n<p>This has by far been one of the most common feature requests we receive. And now it’s here! With version 3.9, you can now require students to complete one or more courses before they can access another course.</p>\n<p>And it’s very simple to set up! Just go into a training course’s settings, click on the “Prerequisites” tab, and select the other WP Courseware courses that you want a user to complete before accessing that course. Cool, huh?</p>\n<h5 style="text-align: center;"><strong>Add Questions Directly to Question Pool</strong></h5>\n<p>In the past, the only way to add a question to the question pool, or bank, was by adding it to an existing quiz and saving it. But now you can add questions directly to the question pool, including any question type, for use in your WP Courseware quizzes.</p>\n<h5 style="text-align: center;"><strong>New Question Import Functionality</strong></h5>\n<p>We hear from several new users every week who are transitioning over to WP Courseware from other web-based or WordPress LMS solutions. And some of these users have hundreds or even thousands of quiz questions.</p>\n<p>Many of you have asked for manual quiz question entry to be a thing of the past…and now it is! With version 3.9 of WP Courseware, you’ll be able to add all of your questions to a CSV file and import them straight to the question pool. Within the plugin, you’ll find documentation on how to format that document, as well as an example CSV template to work from.</p>\n<p>And of course, you can still continue to manually add smaller quantities of questions to the question pool or a quiz.</p>\n<h5 style="text-align: center;"><strong>Filter Units by Course</strong></h5>\n<p>We also have some users who have hundreds of course units across multiple courses. In the past, locating units associated with a certain course for editing or adding new content hasn’t been easy. You could search the course units listing screen for part or all of a particular unit title, but that was it. However, we’ve now added a feature to allow you to filter your course units by the associated course so that you can more easily find what you’re looking for.</p>\n<p><img class="aligncenter size-large wp-image-67174" src="http://flyplugins.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-1024x126.png" alt="INTRODUCING WP COURSEWARE VERSION 3.9! (1)" width="1024" height="126" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-1024x126.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-300x37.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-768x95.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-1600x198.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-1200x148.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-800x99.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-1-400x49.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>To celebrate the release of WP Courseware version 3.9, <strong>we’d like to extend a special, limited-time offer to all of you</strong>!</p>\n<p>If you haven’t yet purchased a WP Courseware license, or if you’d like to upgrade your existing license, <del><strong>enter the discount code THREEDOTNINE at checkout to receive 20% off of your purchase</strong></del>.</p>\n<p>If you’re an existing WP Courseware license holder, you can upgrade your license from within the Fly Plugins member portal under the “Licenses” tab.</p>\n<p>This discount code will <strong>expire on Sunday, July 3rd at 11:59PM EST</strong>, so don’t miss out!</p>\n<p><img class="aligncenter size-large wp-image-67175" src="http://flyplugins.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-1024x126.png" alt="INTRODUCING WP COURSEWARE VERSION 3.9! (2)" width="1024" height="126" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-1024x126.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-300x37.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-768x95.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-1600x198.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-1200x148.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-800x99.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-2-400x49.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>You’ll be happy to know that WP Courseware version 3.9 has been released and it’s waiting for you in your “Installed Plugins” panel.</p>\n<p>Simply click the “Update Now” option and you’re ready to go!</p>\n<p><img class="aligncenter size-large wp-image-67176" src="http://flyplugins.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-1024x126.png" alt="INTRODUCING WP COURSEWARE VERSION 3.9! (3)" width="1024" height="126" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-1024x126.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-300x37.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-768x95.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-1600x198.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-1200x148.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-800x99.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/INTRODUCING-WP-COURSEWARE-VERSION-3.9-3-400x49.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Not a problem…We have you covered! Simply click on the image below to be taken to our YouTube channel where you’ll find dozens of tutorial videos, including two new videos covering course prerequisites and importing quiz questions. And as always, you can search our channel for any other specific functionality you need help with!</p>\n<p><a href="https://www.youtube.com/user/flyplugins"><img class="aligncenter size-medium wp-image-67177" src="http://flyplugins.com/wp-content/uploads/2016/06/WPCWYouTube-300x272.png" alt="WPCWYouTube" width="300" height="272" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/WPCWYouTube-300x272.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/WPCWYouTube-552x500.png 552w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/WPCWYouTube-276x250.png 276w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/WPCWYouTube.png 673w" sizes="(max-width: 300px) 100vw, 300px" /></a></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/wp-courseware-version-3-9-course-prerequisites-question-importing/">WP Courseware Version 3.9 is Here With Course Prerequisites, Question Importing, and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:93:"http://flyplugins.com/wp-courseware-version-3-9-course-prerequisites-question-importing/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:88:"http://flyplugins.com/wp-courseware-version-3-9-course-prerequisites-question-importing/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"S3 Media Maestro Version 2.0 Brings CloudFront Integration and More!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/z7WtFjPzMLU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:70:"http://flyplugins.com/s3-media-maestro-cloudfront-integration/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 29 Apr 2016 20:23:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=61822";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:575:"<p>Today we’re very excited to announce a new S3 Media Maestro update with the release of version 2.0! While this update includes a few new features (see below), it also boasts a major addition to functionality which many of you have been asking for over the last few months. But, the price of S3 Media&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/s3-media-maestro-cloudfront-integration/">S3 Media Maestro Version 2.0 Brings CloudFront Integration and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:10546:"<p><img class="aligncenter size-large wp-image-61823" src="http://flyplugins.com/wp-content/uploads/2016/04/S3MM_CloudFront-1024x272.png" alt="S3 Media Maestro and CloudFront" width="1024" height="272" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-1024x272.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-300x80.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-768x204.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-1200x319.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-800x213.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront-400x106.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/S3MM_CloudFront.png 1400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Today we’re very excited to announce a new <a href="http://flyplugins.com/s3-media-maestro/">S3 Media Maestro</a> update with the release of version 2.0! While this update includes a few new features (<em>see below</em>), it also boasts a major addition to functionality which many of you have been asking for over the last few months. But, the <strong>price of S3 Media Maestro will be going up on Monday, May 2nd at 11:59PM</strong>&#8230;more on that in a moment.</p>\n<h3 style="text-align: center;">You Asked for It…Now You Have It! S3 Media Maestro Now Supports CloudFront!</h3>\n<p>S3 Media Maestro has become the leading WordPress plugin for delivering Amazon S3-hosted media securely, offering a great viewing experience for your customers while preventing your valuable content from being shared with others. But now it&#8217;s gotten even better!</p>\n<p>We’ve had hundreds of people contact us to request the addition of CloudFront support for their Amazon S3-hosted media files.</p>\n<p><strong>Well, now it’s here!</strong></p>\n<p><span id="more-61822"></span></p>\n<h3 style="text-align: center;">What Is CloudFront?</h3>\n<p>Many of our S3 Media Maestro users will be familiar with Amazon Web Service’s CloudFront platform. However, if you haven’t taken a look at it, CloudFront is a global content delivery network (CDN) of servers which are designed to create cached versions of your media files and deliver them from a location which will provide your end users with an efficient and optimized media delivery experience.</p>\n<p><strong>This translates into faster media downloads no matter where in the world your customers are located!</strong></p>\n<h3 style="text-align: center;">How Does CloudFront Work?</h3>\n<p>In previous versions of S3 Media Maestro, the only way to optimize your end user’s media experience was through the use of Amazon S3 “regions”. Basically, you’d select a single location somewhere in the world which was geographically closest to the the <em>majority</em> of your customers.</p>\n<p>This provides an optimal media delivery experience for those end users fortunate enough to be near the region you select through Amazon S3.</p>\n<p><strong><em>But what about everyone else?</em></strong></p>\n<p><img class="aligncenter size-large wp-image-61840" src="http://flyplugins.com/wp-content/uploads/2016/04/Regions_Map-1024x466.png" alt="Regions Map" width="1024" height="466" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-1024x466.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-300x137.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-768x349.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-1600x728.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-1200x546.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-800x364.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Regions_Map-400x182.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>With CloudFront, your media files are stored on a network of servers based all around the world! No matter where your customers are located, CloudFront will deliver your media from the sever that&#8217;s closest and improve your end user experience!</p>\n<p><strong><em>Everyone is happy!</em></strong></p>\n<p><img class="aligncenter size-large wp-image-61841" src="http://flyplugins.com/wp-content/uploads/2016/04/CloudFront_Map-1024x471.png" alt="CloudFront Map" width="1024" height="471" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-1024x471.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-300x138.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-768x353.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-1600x736.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-1200x552.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-800x368.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CloudFront_Map-400x184.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<h3 style="text-align: center;">Integrating CloudFront is Simple!</h3>\n<p>If you already have an Amazon S3 account, setting up CloudFront and adding it to the S3 Media Maestro plugin is a simple process. Once you&#8217;ve set up CloudFront within Amazon Web Services, you&#8217;ll just add your new CloudFront credentials to the S3 Media Maestro &#8220;Settings&#8221; panel and you can start taking advantage of the power that this content delivery network has to offer!</p>\n<p><img class="aligncenter size-large wp-image-61842" src="http://flyplugins.com/wp-content/uploads/2016/04/Settings-1024x401.png" alt="S3MM CloudFront Settings" width="1024" height="401" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings-1024x401.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings-300x117.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings-768x301.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings-800x313.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings-400x157.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Settings.png 1150w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>We&#8217;ve even created a new documentation section with detailed configuration steps to get you up and running as quickly as possible. You can access that from the <a href="http://support.s3mediamaestro.com/category/203-cloudfront">S3 Media Maestro knowledgebase</a>.</p>\n<h3 style="text-align: center;">And Other Cool New Features Are Now Available!</h3>\n<p>Within the S3 Media Maestro 2.0 release, we&#8217;ve also included:</p>\n<p><em>*A new option to create titles for your video or audio playlists in the shortcode generator</em></p>\n<p><em>*Vimeo is now supported by S3 Media Maestro&#8217;s shortcode builder</em></p>\n<p><em>*Ability to turn off the native media player CSS and use your own styling</em></p>\n<h3 style="text-align: center;">Already Have a License for S3 Media Maestro?</h3>\n<p>Great! You&#8217;ll be happy to know that version 2.0 is waiting for you right within the &#8220;Installed Plugins&#8221; page of your WordPress admin dashboard. You can also download the latest version of S3 Media Maestro from within our <a href="http://flyplugins.com/member-portal/">Member Portal</a>.</p>\n<p><img class="aligncenter size-full wp-image-17151" src="http://flyplugins.com/wp-content/uploads/2014/10/5206d7e684c49f050d583159.png" alt="Price Increase Alert" width="600" height="66" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2014/10/5206d7e684c49f050d583159.png 600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2014/10/5206d7e684c49f050d583159-300x33.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2014/10/5206d7e684c49f050d583159-400x44.png 400w" sizes="(max-width: 600px) 100vw, 600px" /></p>\n<p>If you haven&#8217;t yet purchased S3 Media Maestro and started delivering fast and protected media content, don&#8217;t waste any time purchasing a license.</p>\n<p><strong>As of May 2nd, 2016 at 11:59PM EST, the price of S3 Media Maestro will be increasing!</strong> So please act now if you feel that this would be a useful tool for your current or future projects. S3 Media Maestro includes these powerful features:</p>\n<ul>\n<li>Protect all Amazon S3-hosted content (video, audio, and other files) with encrypted links</li>\n<li>Customize link expiration time</li>\n<li>Built-in media player with HTML5 support for iDevices</li>\n<li>Flash “fall-forward” support for non-HTML5 compatible browsers</li>\n<li>Customize player dimensions</li>\n<li>Responsive player</li>\n<li>Customize player skin</li>\n<li>Pre-load and auto-play media files</li>\n<li>Loop audio and video media</li>\n<li>Easily place media with [shortcode]</li>\n<li>Built-in [shortcode] generator to easily set all parameters</li>\n<li>Display custom anchor text for document links</li>\n<li>Set default Amazon S3 bucket to quickly grab file links</li>\n</ul>\n<p><strong>So what are you waiting for?</strong></p>\n<p style="text-align: center;"><a href="http://flyplugins.com/s3-media-maestro/"><strong>&gt;&gt;&gt;Click here to get it now!&lt;&lt;&lt;</strong></a></p>\n<p><strong>Remember, the price of S3 Media Maestro goes up after May 2nd, 2016. Please don&#8217;t miss out!</strong></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/s3-media-maestro-cloudfront-integration/">S3 Media Maestro Version 2.0 Brings CloudFront Integration and More!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:67:"http://flyplugins.com/s3-media-maestro-cloudfront-integration/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:62:"http://flyplugins.com/s3-media-maestro-cloudfront-integration/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"5 Plugins for Better Communication with Your WP Courseware Students";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/oxWhnZsjIlc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:85:"http://flyplugins.com/5-plugins-better-communication-wp-courseware-students/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 15 Apr 2016 20:25:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=61261";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:654:"<p>As we mentioned in a recent post, it’s often difficult to facilitate discussions within an online learning environment which replicate the face-to-face interactions of in-person training sessions. Many of our WP Courseware customers are teaching content which is either completely new to their course enrollees or which includes material which may be too complex to&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/5-plugins-better-communication-wp-courseware-students/">5 Plugins for Better Communication with Your WP Courseware Students</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:22931:"<p><img class="aligncenter size-large wp-image-61271" src="http://flyplugins.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-1024x320.jpg" alt="WP_Courseware_Communication_Plugins" width="1024" height="320" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-1024x320.jpg 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-300x94.jpg 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-768x240.jpg 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-1600x500.jpg 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-1200x375.jpg 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-800x250.jpg 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WP_Courseware_Communication_Plugins-400x125.jpg 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>As we mentioned in a <a href="http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/">recent post</a>, it’s often difficult to facilitate discussions within an online learning environment which replicate the face-to-face interactions of in-person training sessions.</p>\n<p>Many of our WP Courseware customers are teaching content which is either completely new to their course enrollees or which includes material which may be too complex to simply digest and assimilate by watching a video.</p>\n<p>The good news is that there are several ways to facilitate in-depth discussions in order to enhance your WP Courseware course content and better ensure learning retention and eventual success for your students.</p>\n<p>Today we’ll take a look at five different types of discussion-related options for building stronger communication with your students. In this article, we’ll present what we feel are currently the best solutions for these five methods of interaction.</p>\n<p><span id="more-61261"></span></p>\n<h4 style="text-align: center;">1. Social Network: BuddyPress</h4>\n<p>It’s now estimated that 1 out of every 5 minutes an internet user spends online is dedicated to viewing content on social media platforms. And this number tends to trend even higher for younger web users. So it’s no surprise that social network integrations have become a handy way for course instructors to facilitate discussion. Let’s face it…it’s familiar and easy for nearly a billion people around the world who already have Facebook accounts.</p>\n<p>So how can you create your own social network for your WP Courseware course? Recently we were very proud to announce a premium integration between the leading WordPress social networking plugin, BuddyPress, and WP Courseware. This integration allows you to utilize BuddyPress’s powerful functionality by creating user groups around your WP Courseware courses.</p>\n<p>Using BuddyPress and WP Courseware, you can allow course members to “friend” one another, send messages related to a specific course, display their course accomplishments publicly with other students, see recent events/announcements, and contact the course leader directly. This all creates a self-contained social ecosystem right on your site so that students are always up to date on current course evolutions, while also being able to easily reach out when they need help.</p>\n<p>To learn more about the BuddyPress integration for WP Courseware, you can check out <a href="http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/">this recent post</a>. And best of all, BuddyPress itself is available to download for free <a href="https://buddypress.org/download/">here</a>.</p>\n<div id="attachment_61337" style="width: 560px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM.png" rel="attachment wp-att-61337"><img class="wp-image-61337" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM.png" alt="Creating course-related discussion groups with BuddyPress" width="550" height="339" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM.png 1016w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM-300x185.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM-768x473.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM-800x493.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.00.19-PM-400x246.png 400w" sizes="(max-width: 550px) 100vw, 550px" /></a><p class="wp-caption-text">Creating course-related discussion groups with BuddyPress</p></div>\n<h4 style="text-align: center;">2. Live Chat: WP Live Chat Support</h4>\n<p>Live chat is another great option for communicating with your course enrollees. While it may not be feasible to respond immediately all hours of the day, think of live chat as “office hours” for your WP Courseware course. You might even post a schedule on your course outline page notifying students of what hours you’ll be available each week for live discussions so that they know there are several time slots each week when they can have their questions answered.</p>\n<p>In this category, we would recommend a free plugin called <a href="https://wordpress.org/plugins/wp-live-chat-support/">WP Live Chat Support</a>. Currently, this plugin boasts an impressive feature list and has over 20,000 active installs with a 4.5/5.0 star rating in the WordPress plugin repository. And to be honest, we absolutely love this one! They do offer a premium Pro version which will allow for extended functionality and add-ons, but for most users even the free version is robust enough to allow for a great course contact point.</p>\n<p>Once you install and activate WP Live Chat Support, you can configure messaging, chat box layout, and many other features. The following screenshots will give you an idea of what a chat might look like for the instructor and the student when accessed from a course outline page. The admin UI has some great options which can be extended further with the Pro version.</p>\n<div id="attachment_61346" style="width: 561px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM.png" rel="attachment wp-att-61346"><img class="wp-image-61346" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-1024x218.png" alt="This is what a chat may look like on the front end to a student." width="551" height="117" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-1024x218.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-300x64.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-768x163.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-1200x255.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-800x170.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM-400x85.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-12.46.17-PM.png 1450w" sizes="(max-width: 551px) 100vw, 551px" /></a><p class="wp-caption-text">This is what a chat may look like on the front end to a student.</p></div>\n<div id="attachment_61358" style="width: 559px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Live_Chat_Back_End.jpg" rel="attachment wp-att-61358"><img class="wp-image-61358" src="http://flyplugins.com/wp-content/uploads/2016/04/Live_Chat_Back_End-1024x308.jpg" alt="And here''s a look at how instructors or agents can manage conversations." width="549" height="165" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-1024x308.jpg 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-300x90.jpg 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-768x231.jpg 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-1600x481.jpg 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-1200x361.jpg 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-800x240.jpg 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Live_Chat_Back_End-400x120.jpg 400w" sizes="(max-width: 549px) 100vw, 549px" /></a><p class="wp-caption-text">And here&#8217;s a look at how instructors or agents can manage conversations.</p></div>\n<h4 style="text-align: center;">3. Question and Answer: DW Question &amp; Answer</h4>\n<p>Question and answer plugins have become very popular over the last couple of years as a visitor-curated resource often used to replace forums. Forums are great, but sometimes when a solution needs to be found it&#8217;s difficult to sift through dozens or hundreds of forum thread entries to find precisely the information you need. Question and answer modules are a great way to keep discussions relevant to a topic and they operate almost like a tiny search engine. Obviously Google works hard tweaking its search algorithm to ensure that the results they deliver to you are accurate and from authoritative sources.</p>\n<p>Q&amp;A plugins work in a somewhat similar fashion, allowing users to vote for certain answers thus ensuring that they are more relevant and useful and making the process of getting the right solution much easier.</p>\n<p>In this space, we&#8217;ve tested a few of the Q&amp;A plugins in the WordPress plugin repository and it&#8217;s pretty hard to beat <a href="https://wordpress.org/plugins/dw-question-answer/">DW Question &amp; Answer</a>. This plugin has over 10,000 active installs and a 4.4/5.0 star rating at the time of this article. If you&#8217;ve ever needed to find an answer to a technical or code-related issue, you&#8217;re probably already familiar with <a href="http://stackoverflow.com/">Stack Overflow</a>. DW Question &amp; Answer pretty much adds the same functionality to your course.</p>\n<p>Again, this is a free plugin with premium extensions and some of them may be very useful depending on your needs. They include things like Captcha functionality, Leaderboards, Widgets, and most importantly, a paid embed plugin so that you can embed questions right within your course units. For the purpose of this article, however, we&#8217;ll assume you&#8217;re not using the premium embed extension and just want to have one single Q&amp;A page with all of your students&#8217; questions.</p>\n<p>One of the most useful features of this plugin is that you can categorize and tag questions just as you would your WordPress posts, all through a very familiar editor. This allows you to keep all questions on a page outside of your course units if you choose, while also keeping questions related to specific content.</p>\n<div id="attachment_61352" style="width: 561px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM.png" rel="attachment wp-att-61352"><img class="wp-image-61352" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM.png" alt="Creating categories for your unit lessons, modules, or courses is simple." width="551" height="224" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM.png 900w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM-300x122.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM-768x312.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM-800x325.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.10.02-PM-400x163.png 400w" sizes="(max-width: 551px) 100vw, 551px" /></a><p class="wp-caption-text">Creating categories for your unit lessons, modules, or courses is simple.</p></div>\n<p>On the front end, students can view quite a bit of information right from the question and answer page. Again, with the premium embed extension you could do this right within your course unit but it gets a little cluttered so we&#8217;d probably recommend making this a separate page like a forum. You students can ask a new question or search and view older questions including who the question was submitted by, the subject, question status, question category, views, number of answers, and up or down votes.</p>\n<div id="attachment_61353" style="width: 561px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM.png" rel="attachment wp-att-61353"><img class="wp-image-61353" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM.png" alt="DW provides a very efficient way to find answers." width="551" height="186" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM.png 992w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM-300x101.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM-768x259.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM-800x270.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.13.41-PM-400x135.png 400w" sizes="(max-width: 551px) 100vw, 551px" /></a><p class="wp-caption-text">DW provides a very efficient way to find answers.</p></div>\n<h4 style="text-align: center;">4. Forums: bbPress</h4>\n<p>Forums are, of course, another great option for allowing your students to interact and help one another answer their own questions while also providing the instructor an opportunity to chime in. If you haven&#8217;t heard of <a href="https://wordpress.org/plugins/bbpress/">bbPress</a>, you may have been living in a cave for the last several years. With Matt Mullenweg, or Mr. <a href="https://automattic.com/">Automattic</a>, as a contributor this plugin has over 300,000 active installs.</p>\n<div id="attachment_61356" style="width: 557px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/bbPress_and_WPCW.jpg" rel="attachment wp-att-61356"><img class="wp-image-61356" src="http://flyplugins.com/wp-content/uploads/2016/04/bbPress_and_WPCW.jpg" alt="Ok, so that''s not how the conversation actually went." width="547" height="233" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/bbPress_and_WPCW.jpg 958w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/bbPress_and_WPCW-300x128.jpg 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/bbPress_and_WPCW-768x327.jpg 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/bbPress_and_WPCW-800x341.jpg 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/bbPress_and_WPCW-400x170.jpg 400w" sizes="(max-width: 547px) 100vw, 547px" /></a><p class="wp-caption-text">Ok, so that&#8217;s not how the conversation actually went.</p></div>\n<p>Getting started with bbPress and creating forums is incredibly simple. In this case, we&#8217;ve created one forum for Course 1 and we&#8217;ve created &#8220;topics&#8221; for each of our course modules as a way to keep discussions relevantly grouped.</p>\n<p>You could break this up even further and create topics for each course unit if you want more granularity in your discussions. Creating the forums and topics is similar to creating a post within the admin UI and by default each forum is given its own URL so that you can keep them separate from your course outline and unit pages.</p>\n<div id="attachment_61355" style="width: 561px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM.png" rel="attachment wp-att-61355"><img class="wp-image-61355" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM.png" alt="A look at the Course 1 forum using bbPress." width="551" height="232" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM.png 990w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM-300x126.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM-768x323.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM-800x337.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.26.50-PM-400x168.png 400w" sizes="(max-width: 551px) 100vw, 551px" /></a><p class="wp-caption-text">A look at the Course 1 forum using bbPress.</p></div>\n<h4 style="text-align: center;">5. Comments: Yoast Comment Hacks</h4>\n<p>Since we recently added native comment support for WP Courseware course units with version 3.8.4 (you can read more about the release <a href="http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/">here</a>), you really don&#8217;t need to search much further than the built-in WordPress commenting system to add this functionality to your learning experience.</p>\n<p>There are probably hundreds of comment enhancement plugins in the WordPress ecosystem and several really useful plugins, such as <a href="https://disqus.com/">Disqus</a> and <a href="https://intensedebate.com/">IntenseDebate</a>, which allow you to host comments through a third-party service (and to be honest we really like both of those even though they&#8217;re overkill for most course developers). But since WordPress already features its own commenting system, it&#8217;s much less complicated to deploy the already existing comment functionality within your units and enhance them as needed.</p>\n<p>Comments are a great way to keep discussions related strictly to the content within a specific unit and focus conversation on those topics. However, in some cases you may need to make some tweaks to the WordPress comment functionality and the team at Yoast has put together a great plugin which includes some code snippets to keep you from having to manually hack the WP commenting functionality. It&#8217;s called <a href="https://wordpress.org/plugins/yoast-comment-hacks/">Yoast Comment Hacks</a>.</p>\n<p>The plugin doesn&#8217;t knock it out of the park with functionality, but that&#8217;s not what it&#8217;s intended to do. It&#8217;s meant to be a lightweight plugin which adds a few nice features to your existing comment functionality to encourage thoughtful discussion and communicate with your commenters.</p>\n<p>Once installed the Comment Hacks settings panel has a few options for you to configure:</p>\n<ul>\n<li>You can set a minimum comment length to encourage insightful responses</li>\n<li>It adds an email button to comments to allow you to send a message to all commenters as a &#8220;thank you&#8221; or update</li>\n<li>You can redirect first-time commenters to a specific page</li>\n</ul>\n<p>While these may sound like minor tweaks, they&#8217;d be challenging to code in for the average WordPress user and provide some great opportunities for encouraging discussions or providing additional resources around a discussion topic.</p>\n<div id="attachment_61357" style="width: 560px" class="wp-caption aligncenter"><a href="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM.png" rel="attachment wp-att-61357"><img class="wp-image-61357" src="http://flyplugins.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM.png" alt="A look at the Yoast Comment Hacks settings panel." width="550" height="236" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM.png 974w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM-300x129.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM-768x330.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM-800x343.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Screen-Shot-2016-04-15-at-1.51.46-PM-400x172.png 400w" sizes="(max-width: 550px) 100vw, 550px" /></a><p class="wp-caption-text">A look at the Yoast Comment Hacks settings panel.</p></div>\n<p>Hopefully this list can provide you with some ideas on how to improve communication with your WP Courseware students.</p>\n<p><strong>Do you have other plugins you use to facilitate discussion for your course? We&#8217;d love to hear about them in the comments below!</strong></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/5-plugins-better-communication-wp-courseware-students/">5 Plugins for Better Communication with Your WP Courseware Students</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:81:"http://flyplugins.com/5-plugins-better-communication-wp-courseware-students/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:76:"http://flyplugins.com/5-plugins-better-communication-wp-courseware-students/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"Social Learning Has Arrived. Introducing BuddyPress for WP Courseware!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/UaBW6iTeHCQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:92:"http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 11 Apr 2016 15:00:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=60058";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:679:"<p>Today we&#8217;re thrilled to announce another great addition to our library of WP Courseware integrations&#8230; Introducing BuddyPress for WP Courseware Let&#8217;s face it, learning retention is enhanced by social interaction. And when your learning environment is virtual, it can be difficult to provide the interactions which a student might benefit from in an offline setting.&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/">Social Learning Has Arrived. Introducing BuddyPress for WP Courseware!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:13318:"<p><img class="aligncenter size-large wp-image-60059" src="http://flyplugins.com/wp-content/uploads/2016/04/WPCW_Buddy-1024x292.png" alt="WPCW_Buddy" width="1024" height="292" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-1024x292.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-300x85.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-768x219.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-1600x456.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-1200x342.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-800x228.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/WPCW_Buddy-400x114.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Today we&#8217;re thrilled to announce another great addition to our library of WP Courseware integrations&#8230;</p>\n<h2>Introducing BuddyPress for WP Courseware</h2>\n<p>Let&#8217;s face it, learning retention is enhanced by social interaction. And when your learning environment is virtual, it can be difficult to provide the interactions which a student might benefit from in an offline setting.</p>\n<p>This is why we recently chose to work with one of the leading WordPress LMS implementation and consulting firms around to develop an integration between WP Courseware and the most feature-rich social networking WordPress plugin out there, BuddyPress.</p>\n<p>BuddyPress has an incredible feature lineup with many options to benefit moderators of an online course and best of all, it&#8217;s free.</p>\n<p>While this integration add-on between WP Courseware and BuddyPress will be our first foray into premium extensions, we truly feel that any WP Courseware user will quickly see the value it provides.</p>\n<h2>How Can the WP Courseware + BuddyPress Integration Enhance Your Course?</h2>\n<p><span id="more-60058"></span></p>\n<p><img class="aligncenter wp-image-60060" src="http://flyplugins.com/wp-content/uploads/2016/04/Course_Groups.png" alt="Social_Learning" width="402" height="67" /></p>\n<p>The WP Courseware + BuddyPress integration all starts with Groups. This add-on connects WP Courseware courses to the Users Groups built into BuddyPress. When a student is enrolled within a course, they automatically become part of the associated group to begin sharing and communicating with other students!</p>\n<div id="attachment_60063" style="width: 428px" class="wp-caption aligncenter"><img class="wp-image-60063 size-full" src="http://flyplugins.com/wp-content/uploads/2016/04/CourseGroups.png" alt="CourseGroups" width="418" height="267" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CourseGroups.png 418w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CourseGroups-300x192.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/CourseGroups-391x250.png 391w" sizes="(max-width: 418px) 100vw, 418px" /><p class="wp-caption-text">Easily associate courses and groups!</p></div>\n<p>&nbsp;</p>\n<p><img class="aligncenter wp-image-60064" src="http://flyplugins.com/wp-content/uploads/2016/04/Activity_Streams.png" alt="Activity_Streams" width="399" height="63" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Activity_Streams.png 950w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Activity_Streams-300x47.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Activity_Streams-768x121.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Activity_Streams-800x126.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Activity_Streams-400x63.png 400w" sizes="(max-width: 399px) 100vw, 399px" /></p>\n<p>Once your students are associated with their course group, it&#8217;s time to start having some fun! You can begin building a motivating community learning environment by publishing various student accomplishments publicly within the group. It&#8217;s simple to select which accomplishments you want to publicly display, including:</p>\n<ul>\n<li>Course completion</li>\n<li>Module completion</li>\n<li>Unit completion</li>\n<li>Quiz completion</li>\n<li>Perfect quiz scores</li>\n<li>Certificates awarded</li>\n</ul>\n<div id="attachment_60066" style="width: 391px" class="wp-caption aligncenter"><img class="size-full wp-image-60066" src="http://flyplugins.com/wp-content/uploads/2016/04/Stream.png" alt="Notify your group of recent updates!" width="381" height="189" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Stream.png 381w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Stream-300x149.png 300w" sizes="(max-width: 381px) 100vw, 381px" /><p class="wp-caption-text">Notify your group of recent updates!</p></div>\n<p>&nbsp;</p>\n<p><img class="aligncenter wp-image-60067" src="http://flyplugins.com/wp-content/uploads/2016/04/Course_Messaging.png" alt="Course_Messaging" width="400" height="60" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Course_Messaging.png 1000w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Course_Messaging-300x45.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Course_Messaging-768x115.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Course_Messaging-800x120.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Course_Messaging-400x60.png 400w" sizes="(max-width: 400px) 100vw, 400px" /></p>\n<p>When social connections are made, your students will be able to filter their member list to find other members of their courses to easily communicate with them when they have questions! This is also a great way for them to be able to directly communicate with a course instructor.</p>\n<div id="attachment_60068" style="width: 410px" class="wp-caption aligncenter"><img class="wp-image-60068" src="http://flyplugins.com/wp-content/uploads/2016/04/Members.png" alt="Find your classmates or instructor when you need help!" width="400" height="248" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Members.png 753w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Members-300x186.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Members-400x248.png 400w" sizes="(max-width: 400px) 100vw, 400px" /><p class="wp-caption-text">Find your classmates or instructor when you need help!</p></div>\n<p>&nbsp;</p>\n<p><img class="aligncenter wp-image-60069" src="http://flyplugins.com/wp-content/uploads/2016/04/Enhanced_Profiles.png" alt="Enhanced_Profiles" width="400" height="60" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Enhanced_Profiles.png 1000w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Enhanced_Profiles-300x45.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Enhanced_Profiles-768x115.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Enhanced_Profiles-800x120.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Enhanced_Profiles-400x60.png 400w" sizes="(max-width: 400px) 100vw, 400px" /></p>\n<p>With the WP Courseware + BuddyPress integration, user profiles are greatly enhanced with features like course-related notifications, course-related messages, and even a WP Courseware course outline right within the user&#8217;s profile dashboard!</p>\n<div id="attachment_60070" style="width: 410px" class="wp-caption aligncenter"><img class="wp-image-60070" src="http://flyplugins.com/wp-content/uploads/2016/04/Profile.png" alt="Profiles become a learning communication hub!" width="400" height="253" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Profile.png 752w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Profile-300x190.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Profile-395x250.png 395w" sizes="(max-width: 400px) 100vw, 400px" /><p class="wp-caption-text">Profiles become a learning communication hub!</p></div>\n<p>&nbsp;</p>\n<p><img class="aligncenter wp-image-60071" src="http://flyplugins.com/wp-content/uploads/2016/04/Social_Sharing.png" alt="Social_Sharing" width="402" height="71" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Social_Sharing.png 850w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Social_Sharing-300x53.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Social_Sharing-768x136.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Social_Sharing-800x141.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Social_Sharing-400x71.png 400w" sizes="(max-width: 402px) 100vw, 402px" /></p>\n<p>Your students can also publish their course achievements to Facebook and Twitter at the click of a button to share their learning journey and success with others. Just think how proud mom and dad will be!</p>\n<p><strong>And many other features!</strong></p>\n<h2>So How Do I Get Started?!</h2>\n<p>You&#8217;ll need three separate plugins to take full advantage of the power this integration has to offer:</p>\n<ol>\n<li><a href="http://flyplugins.com/wp-courseware/">WP Courseware</a></li>\n<li><a href="https://buddypress.org/">BuddyPress</a></li>\n<li><a href="http://flyplugins.com/buddypress">WP Courseware + BuddyPress Integration</a></li>\n</ol>\n<p>As we mentioned before, this premium integration was developed by our friends at WisdmLabs and this joint project has taken months to put together to ensure that we were able to offer an incredibly useful, feature-rich product.</p>\n<p>WisdmLabs will be handling the delivery and support of this integration. However, we were able to negotiate <em><strong>a special limited-time price for this powerful integration</strong></em>, so if you&#8217;re serious about enhancing the learning experience for your online students please don&#8217;t wait to take advantage of this amazing add-on.</p>\n<p><strong>Ready to make your course fun and engaging?</strong></p>\n<p><a href="http://flyplugins.com/buddypress" rel="attachment wp-att-60077"><img class="aligncenter wp-image-60077" src="http://flyplugins.com/wp-content/uploads/2016/04/Click_Here_Now-1024x171.png" alt="Click_Here_Now" width="402" height="67" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-1024x171.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-300x50.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-768x128.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-1200x200.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-800x133.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now-400x67.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/Click_Here_Now.png 1500w" sizes="(max-width: 402px) 100vw, 402px" /></a></p>\n<h2>Still Not a WP Courseware Customer?</h2>\n<p>If you haven&#8217;t yet purchased <a href="http://flyplugins.com/wp-courseware/">WP Courseware</a>, we&#8217;d like to extend a special discount code to you to get started building courses with the leading WordPress learning management system plugin. And if you are an existing license holder, feel free to use this discount code to upgrade your existing license.</p>\n<p><strong>This discount code will only be valid for 72 hours, so be sure to act now! Simply enter BUDDY15 at checkout to receive 15% off on any new license purchase or license upgrade!</strong></p>\n<p>As always, thank you for your support! We wouldn&#8217;t be here without you!</p>\n<p><img class="alignleft size-full wp-image-1527" src="http://flyplugins.com/wp-content/uploads/2014/07/BenandNate2.png" alt="Ben and Nate" width="167" height="100" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Ben &amp; Nate</p>\n<p>The Fly Plugins Guys</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/">Social Learning Has Arrived. Introducing BuddyPress for WP Courseware!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:88:"http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:83:"http://flyplugins.com/social-learning-arrived-introducing-buddypress-wp-courseware/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"WP Courseware Version 3.8.4 is Here! And We’re Celebrating with a Special Gift for You!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/sQf6KDWfZbE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:84:"http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Mar 2016 17:45:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=58994";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:693:"<p>Today we&#8217;re thrilled to announce another update to WP Courseware! If you&#8217;re a current license holder, WP Courseware version 3.8.4 will be waiting for you in your &#8220;Installed Plugins&#8221; screen within your WordPress admin dashboard. So What&#8217;s New in Version 3.8.4? New Shortcode for Student Self-Enrollment One of the feature requests we receive very often&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/">WP Courseware Version 3.8.4 is Here! And We&#8217;re Celebrating with a Special Gift for You!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Nate Johnson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8831:"<p><img class="aligncenter size-large wp-image-58995" src="http://flyplugins.com/wp-content/uploads/2016/03/WPCW384-1024x470.png" alt="WPCW384" width="1024" height="470" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-1024x470.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-300x138.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-768x352.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-1600x734.png 1600w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-1200x550.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-800x367.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/WPCW384-400x183.png 400w" sizes="(max-width: 1024px) 100vw, 1024px" /></p>\n<p>Today we&#8217;re thrilled to announce another update to WP Courseware!</p>\n<p>If you&#8217;re a current license holder, WP Courseware version 3.8.4 will be waiting for you in your &#8220;Installed Plugins&#8221; screen within your WordPress admin dashboard.</p>\n<h1 style="text-align: center;">So What&#8217;s New in Version 3.8.4?</h1>\n<p><span id="more-58994"></span></p>\n<p><em><strong>New Shortcode for Student Self-Enrollment</strong></em></p>\n<p>One of the feature requests we receive very often is from customers looking for the ability to allow students to register themselves from a menu of courses. We&#8217;re excited to announce a new shortcode which can be displayed on any page which provides enrollment buttons for any course you&#8217;re offering. Students can simply click the button, register on your site, and they&#8217;ll automatically be enrolled for the course. If there are multiple courses, a logged in student can also sign up for a new course on this page and be notified of which courses they&#8217;re already registered in.</p>\n<p><img class="aligncenter wp-image-59751" src="http://flyplugins.com/wp-content/uploads/2016/03/Enrollment_Buttons.png" alt="Enrollment_Buttons" width="522" height="307" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enrollment_Buttons.png 845w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enrollment_Buttons-300x176.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enrollment_Buttons-768x452.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enrollment_Buttons-800x471.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enrollment_Buttons-400x235.png 400w" sizes="(max-width: 522px) 100vw, 522px" /></p>\n<p><em><strong>Enable/Disable Course Unit Comments</strong></em></p>\n<p>In the past, it&#8217;s been necessary to add custom code for comment support in the WP Courseware course units. However, we&#8217;ve now added an option to the WP Courseware &#8220;Settings&#8221; screen which will allow you to turn comments on easily without any tinkering. Simply enable this option and then within your course units you can choose which ones you want to allow comments in. No more editing code!</p>\n<p><img class="aligncenter wp-image-59752" src="http://flyplugins.com/wp-content/uploads/2016/03/Enable_Comments-1024x185.png" alt="Enable_Comments" width="607" height="110" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments-1024x185.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments-300x54.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments-768x139.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments-800x145.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments-400x72.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Enable_Comments.png 1027w" sizes="(max-width: 607px) 100vw, 607px" /></p>\n<p><em><strong>Option to Turn Quiz Results Downloadable PDF On/Off</strong></em></p>\n<p>This release also includes a quiz-specific setting in a quiz&#8217;s &#8220;Results Settings&#8221; tab to choose whether or not you want students to be able to download their quiz results.</p>\n<p><img class="aligncenter wp-image-59753" src="http://flyplugins.com/wp-content/uploads/2016/03/PDF_Results.png" alt="PDF_Results" width="609" height="35" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/PDF_Results.png 905w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/PDF_Results-300x17.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/PDF_Results-768x44.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/PDF_Results-800x46.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/PDF_Results-400x23.png 400w" sizes="(max-width: 609px) 100vw, 609px" /></p>\n<p><em><strong>Course Search Option</strong></em></p>\n<p>We have quite a few customers with dozens and sometimes hundreds of training courses. Users now have the ability to search the course listings screen for specific courses and save time when it comes to editing them. It&#8217;s a small tweak, but for some users this will make a big difference in productivity.</p>\n<p><img class="aligncenter wp-image-59754" src="http://flyplugins.com/wp-content/uploads/2016/03/Course_Search-1024x213.png" alt="Course_Search" width="610" height="127" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-1024x213.png 1024w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-300x62.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-768x160.png 768w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-1200x250.png 1200w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-800x167.png 800w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search-400x83.png 400w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/Course_Search.png 1359w" sizes="(max-width: 610px) 100vw, 610px" /></p>\n<p>There are a few other minor changes in this release, so feel free to view the &#8220;Read Me&#8221; file to see all of the tweaks we&#8217;ve made in version 3.8.4!</p>\n<h1 style="text-align: center;">Still Not a WP Courseware License Holder?</h1>\n<p>Well, there&#8217;s no better time to get started creating your online courses with WordPress!</p>\n<p>WP Courseware was the first WordPress learning management system plugin on the market and we&#8217;ve been very fortunate to earn the support of thousands of customers from around the globe.</p>\n<p>If you haven&#8217;t yet purchased a WP Courseware license or you are a current customer and want to upgrade your existing license, <strong>enter code WPCW384 at checkout to receive 20% off on any purchase or upgrade</strong>.</p>\n<p style="text-align: center;"><strong><a href="http://flyplugins.com/wp-courseware/">&gt;&gt;&gt;Click here to get WP Courseware NOW!&lt;&lt;&lt;</a></strong></p>\n<p><strong>This discount code will only be valid through Sunday, April 3rd at midnight ET.</strong></p>\n<p>It&#8217;s the least we can do to say &#8220;thank you&#8221; for all of your support over the last 4 years!</p>\n<p>With gratitude,</p>\n<p><img class="alignleft size-full wp-image-1527" src="http://flyplugins.com/wp-content/uploads/2014/07/BenandNate2.png" alt="Ben and Nate" width="167" height="100" /></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Ben &amp; Nate</p>\n<p>The Fly Plugins Guys</p>\n<p><strong>P.S. Remember, this limited-time 20% discount to celebrate the release of WP Courseware version 3.8.4 will expire <strong>soon</strong>. Please don&#8217;t miss out! And if you&#8217;re already a WP Courseware license holder, this is a great opportunity to upgrade your existing license from within the Member Portal.</strong></p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/">WP Courseware Version 3.8.4 is Here! And We&#8217;re Celebrating with a Special Gift for You!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:80:"http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:75:"http://flyplugins.com/wp-courseware-version-3-8-4-celebrating-special-gift/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:6:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"How to Create an eLearning Presentation That Doesn’t Suck!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://feedproxy.google.com/~r/FlyPlugins/~3/ovvaHCTQzo8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:88:"http://flyplugins.com/how-to-create-an-elearning-presentation-that-doesnt-suck/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Mar 2016 23:38:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"Fly Plugin News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://flyplugins.com/?p=57260";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:658:"<p>In this video I will cover several aspects of creating an eLearning presentation. We will cover everything from planning a presentation, creating a slide deck, recording your presentation and delivering your presentation. I hope that this video will help you create great eLearning presentations. Remember, to follow the steps in creating the eLearning presentation. Plan&#8230;</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/how-to-create-an-elearning-presentation-that-doesnt-suck/">How to Create an eLearning Presentation That Doesn&#8217;t Suck!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Ben Arellano";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5111:"<p><img class="size-full wp-image-59306 aligncenter" src="http://flyplugins.com/wp-content/uploads/2016/03/elearning-presentation-739x250.png" alt="elearning-presentation-739x250" width="739" height="250" srcset="http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/elearning-presentation-739x250.png 739w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/elearning-presentation-739x250-300x101.png 300w, http://2dek8p1j6c413imjiuu01xn8.wpengine.netdna-cdn.com/wp-content/uploads/2016/03/elearning-presentation-739x250-400x135.png 400w" sizes="(max-width: 739px) 100vw, 739px" /></p>\n<p>In this video I will cover several aspects of creating an eLearning presentation. We will cover everything from planning a presentation, creating a slide deck, recording your presentation and delivering your presentation. I hope that this video will help you create great eLearning presentations.</p>\n<p><span id="more-57260"></span></p>\n<p><iframe width="640" height="360" src="https://www.youtube.com/embed/0FQVNoURgDo?feature=oembed" frameborder="0" allowfullscreen></iframe></p>\n<p>Remember, to follow the steps in creating the eLearning presentation.</p>\n<ol>\n<li>Plan &#8211; This is the most vital important step in the process</li>\n<li>Build Slide Deck &#8211; Be sure to use all the tips and tricks mentioned in the video when building out your slide deck.</li>\n<li>Record Slide Deck with Narration &#8211; This can be the fun part but be sure to practice the presentation so you don&#8217;t experience stage fright. Talking into a mic and recording into a camera will get easier in time as you continue to record more and more.</li>\n<li>Delivery &#8211; Make sure you use a platform in which you are comfortable with the security and cost of the hosting service.</li>\n</ol>\n<p>When creating your presentation be sure to allow yourself plenty of time for each of the steps above. This is not something you want to conquer in a single day.</p>\n<p>Here is a list of resources that I spoke about in the video.</p>\n<p><strong>Planning</strong></p>\n<ul>\n<li><a href="https://www.mindmeister.com" target="_blank">MindMeister</a></li>\n</ul>\n<p><strong>Slide Deck Tools</strong></p>\n<ul>\n<li>PowerPoint</li>\n<li>KeyNote</li>\n<li><a href="https://prezi.com/" target="_blank">Prezi</a></li>\n<li><a href="https://animoto.com/" target="_blank">Animoto</a></li>\n</ul>\n<p><strong>Screen capture software</strong></p>\n<ul>\n<li><a href="https://www.techsmith.com/camtasia.html" target="_blank">Camtasia</a></li>\n<li><a href="https://www.telestream.net/screenflow/" target="_blank">Screenflow</a></li>\n</ul>\n<p><strong>RF Images</strong></p>\n<ul>\n<li><a href="http://www.123rf.com/" target="_blank">123RF</a></li>\n<li>Pixabay</li>\n<li><a href="http://www.pond5.com/" target="_blank">Pond5</a></li>\n<li><a href="http://graphicriver.net/" target="_blank">Graphic River</a></li>\n<li><a href="http://www.shutterstock.com/" target="_blank">ShutterStock</a></li>\n</ul>\n<p><strong>Video Intro/Outro</strong></p>\n<ul>\n<li><a href="http://www.intromaker.net/" target="_blank">IntroMaker.net</a></li>\n<li><a href="http://videohive.net/" target="_blank">Video Hive</a></li>\n</ul>\n<p><strong>Background Music</strong></p>\n<ul>\n<li><a href="http://www.pond5.com/" target="_blank">Pond5</a></li>\n<li><a href="http://audiojungle.net/" target="_blank">AudioJungle</a></li>\n</ul>\n<p><strong>Video Delivery</strong></p>\n<ul>\n<li><a href="https://www.youtube.com/" target="_blank">YouTube</a></li>\n<li><a href="https://vimeo.com/" target="_blank">Vimeo</a></li>\n<li><a href="https://aws.amazon.com/s3" target="_blank">AWS S3</a></li>\n<li><a href="http://s3mediamaestro.com" target="_blank">S3 Media Maestro</a></li>\n</ul>\n<p><strong>Microphones</strong></p>\n<ul>\n<li><a href="http://www.bluemic.com/desktop/" target="_blank">Blue</a></li>\n<li><a href="http://www.heilsound.com/amateur/products/microphones" target="_blank">Heil</a></li>\n</ul>\n<p><strong>Digital Audio Recorder</strong></p>\n<ul>\n<li><a href="http://www.rolandus.com/products/r-05/" target="_blank">Roland</a>-05</li>\n<li><a href="http://tascam.com/products/handheld_recorder/" target="_blank">Tascam</a></li>\n</ul>\n<p><strong>Cameras</strong></p>\n<ul>\n<li><a href="http://www.amazon.com/Digital-SLRs-Cameras-Photo/b?ie=UTF8&amp;node=3017941" target="_blank">DSLR Cameras</a></li>\n<li><a href="http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Delectronics&amp;field-keywords=webcam&amp;rh=n%3A172282%2Ck%3Awebcam&amp;ajr=0" target="_blank">Webcam</a></li>\n</ul>\n<p><strong>Best Sans-Serif Fonts</strong></p>\n<ul>\n<li>Arial</li>\n<li>Helvetica</li>\n<li>Calibri</li>\n<li>Gill Sans</li>\n</ul>\n<p>Do you have any favorite tools that you use to create your eLearning presentations? Leave us your feedback and suggestions in the comments below.</p>\n<p>The post <a rel="nofollow" href="http://flyplugins.com/how-to-create-an-elearning-presentation-that-doesnt-suck/">How to Create an eLearning Presentation That Doesn&#8217;t Suck!</a> appeared first on <a rel="nofollow" href="http://flyplugins.com">Fly Plugins</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:84:"http://flyplugins.com/how-to-create-an-elearning-presentation-that-doesnt-suck/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:79:"http://flyplugins.com/how-to-create-an-elearning-presentation-that-doesnt-suck/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:38:"http://feeds.feedburner.com/FlyPlugins";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:3:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:10:"flyplugins";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:10:"FlyPlugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:13:"last-modified";s:29:"Thu, 13 Apr 2017 20:00:44 GMT";s:4:"etag";s:27:"uo27mEVYrMNHFPWu0MXG4HLbdQ8";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 13 Apr 2017 20:00:44 GMT";s:7:"expires";s:29:"Thu, 13 Apr 2017 20:00:44 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:14:"content-length";s:5:"27989";s:6:"server";s:3:"GSE";}}s:5:"build";s:14:"20170408132935";}', 'no');
INSERT INTO `vpi17_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(281, '_transient_timeout_feed_mod_948c2862c5d501f04f61cea3c4d2b866', '1492156845', 'no'),
(282, '_transient_feed_mod_948c2862c5d501f04f61cea3c4d2b866', '1492113645', 'no'),
(283, '_transient_doing_cron', '1492116723.1035540103912353515625', 'yes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_postmeta`
--

CREATE TABLE `vpi17_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_postmeta`
--

INSERT INTO `vpi17_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1491692962:1'),
(3, 4, '_edit_last', '1'),
(4, 4, 'namaste_enroll_mode', 'free'),
(5, 4, 'namaste_required_lessons', NULL),
(6, 4, 'namaste_fee', NULL),
(7, 4, 'namaste_access', NULL),
(8, 4, 'namaste_unenroll', NULL),
(9, 4, '_edit_lock', '1492111673:1'),
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
(28, 9, 'namaste_required_homeworks', 'a:1:{i:0;s:1:"1";}'),
(29, 9, 'namaste_required_exam', '0'),
(30, 9, 'namaste_required_grade', 'a:0:{}'),
(31, 9, 'namaste_watu_transfer_grade', '0'),
(32, 9, 'namaste_award_points', '0'),
(33, 9, '_edit_lock', '1491779376:1'),
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
(59, 13, 'namaste_access', 'a:1:{i:0;s:1:"9";}'),
(60, 13, 'namaste_completion', NULL),
(61, 13, 'namaste_required_homeworks', 'a:0:{}'),
(62, 13, 'namaste_required_exam', '0'),
(63, 13, 'namaste_required_grade', 'a:0:{}'),
(64, 13, 'namaste_watu_transfer_grade', '0'),
(65, 13, 'namaste_award_points', '0'),
(66, 13, '_edit_lock', '1491779990:1'),
(67, 14, '_edit_last', '1'),
(68, 14, 'namaste_course', '4'),
(69, 14, 'namaste_access', 'a:2:{i:0;s:1:"9";i:1;s:2:"13";}'),
(70, 14, 'namaste_completion', NULL),
(71, 14, 'namaste_required_homeworks', 'a:0:{}'),
(72, 14, 'namaste_required_exam', '0'),
(73, 14, 'namaste_required_grade', 'a:0:{}'),
(74, 14, 'namaste_watu_transfer_grade', '0'),
(75, 14, 'namaste_award_points', '0'),
(76, 14, '_edit_lock', '1491778632:1'),
(77, 14, '_wp_old_slug', 'loyaliteit'),
(78, 15, '_edit_last', '1'),
(79, 15, 'namaste_course', '4'),
(80, 15, 'namaste_access', 'a:3:{i:0;s:1:"9";i:1;s:2:"13";i:2;s:2:"14";}'),
(81, 15, 'namaste_completion', NULL),
(82, 15, 'namaste_required_homeworks', 'a:0:{}'),
(83, 15, 'namaste_required_exam', '0'),
(84, 15, 'namaste_required_grade', 'a:0:{}'),
(85, 15, 'namaste_watu_transfer_grade', '0'),
(86, 15, 'namaste_award_points', '0'),
(87, 15, '_edit_lock', '1491778862:1'),
(88, 16, '_edit_last', '1'),
(89, 16, 'namaste_course', '4'),
(90, 16, 'namaste_access', 'a:4:{i:0;s:1:"9";i:1;s:2:"13";i:2;s:2:"14";i:3;s:2:"15";}'),
(91, 16, 'namaste_completion', NULL),
(92, 16, 'namaste_required_homeworks', 'a:0:{}'),
(93, 16, 'namaste_required_exam', '0'),
(94, 16, 'namaste_required_grade', 'a:0:{}'),
(95, 16, 'namaste_watu_transfer_grade', '0'),
(96, 16, 'namaste_award_points', '0'),
(97, 16, '_edit_lock', '1491779104:1'),
(98, 17, '_edit_last', '1'),
(99, 17, 'namaste_course', '4'),
(100, 17, 'namaste_access', 'a:0:{}'),
(101, 17, 'namaste_completion', NULL),
(102, 17, 'namaste_required_homeworks', 'a:0:{}'),
(103, 17, 'namaste_required_exam', '0'),
(104, 17, 'namaste_required_grade', 'a:0:{}'),
(105, 17, 'namaste_watu_transfer_grade', '0'),
(106, 17, 'namaste_award_points', '0'),
(107, 17, '_edit_lock', '1491779375:1'),
(108, 18, '_wp_attached_file', '2017/04/Crew_V2.jpg'),
(109, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:129;s:4:"file";s:19:"2017/04/Crew_V2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Crew_V2-150x129.jpg";s:5:"width";i:150;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Crew_V2-300x51.jpg";s:5:"width";i:300;s:6:"height";i:51;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(110, 19, '_menu_item_type', 'custom'),
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
(222, 31, '_menu_item_target', ''),
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
(279, 48, '_menu_item_url', ''),
(280, 51, '_edit_last', '1'),
(281, 51, '_edit_lock', '1491779776:1'),
(282, 9, 'opdrachten', '2'),
(283, 9, '_opdrachten', 'field_58ea8b4a2331b'),
(284, 9, 'blokken', '9'),
(285, 9, '_blokken', 'field_58ea8c3b2331d'),
(286, 13, 'opdrachten', ''),
(287, 13, '_opdrachten', 'field_58ea8b4a2331b'),
(288, 13, 'blokken', '7'),
(289, 13, '_blokken', 'field_58ea8c3b2331d'),
(290, 14, 'opdrachten', ''),
(291, 14, '_opdrachten', 'field_58ea8b4a2331b'),
(292, 14, 'blokken', '7'),
(293, 14, '_blokken', 'field_58ea8c3b2331d'),
(294, 58, '_edit_last', '1'),
(295, 58, '_wp_page_template', 'default'),
(296, 58, '_edit_lock', '1491766598:1'),
(297, 61, '_edit_last', '1'),
(298, 61, '_edit_lock', '1491780924:1'),
(299, 61, '_wp_page_template', 'default'),
(300, 15, 'opdrachten', ''),
(301, 15, '_opdrachten', 'field_58ea8b4a2331b'),
(302, 15, 'blokken', '7'),
(303, 15, '_blokken', 'field_58ea8c3b2331d'),
(304, 16, 'opdrachten', ''),
(305, 16, '_opdrachten', 'field_58ea8b4a2331b'),
(306, 16, 'blokken', '5'),
(307, 16, '_blokken', 'field_58ea8c3b2331d'),
(308, 67, '_wp_attached_file', '2017/04/Villa_Pinedo-Alleen_Op_De_Aarde.jpg'),
(309, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:734;s:4:"file";s:43:"2017/04/Villa_Pinedo-Alleen_Op_De_Aarde.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"Villa_Pinedo-Alleen_Op_De_Aarde-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"Villa_Pinedo-Alleen_Op_De_Aarde-300x288.jpg";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(310, 9, 'blokken_0_titel', 'Gedicht van Liselot (15)'),
(311, 9, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(312, 9, 'blokken_0_inhoud', '<img class="alignnone size-medium wp-image-67" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Alleen_Op_De_Aarde-300x288.jpg" alt="" width="300" height="288" />'),
(313, 9, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(318, 9, 'opdrachten_0_opdracht', '61'),
(319, 9, '_opdrachten_0_opdracht', 'field_58ea8bc62331c'),
(320, 68, '_wp_attached_file', '2017/04/large-4_copy.jpg'),
(321, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:24:"2017/04/large-4_copy.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"large-4_copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"large-4_copy-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 69, '_wp_attached_file', '2017/04/Weekoverzicht-Week2.jpg'),
(323, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:612;s:6:"height";i:612;s:4:"file";s:31:"2017/04/Weekoverzicht-Week2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Weekoverzicht-Week2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Weekoverzicht-Week2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(324, 9, 'blokken_1_titel', 'In een huwelijk heb je twee rollen: de rol van partner en de rol van ouder. na een scheiding heb je de rol van ex-partner en blijf je mede-ouder.'),
(325, 9, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(326, 9, 'blokken_1_inhoud', ''),
(327, 9, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(328, 9, 'blokken_2_titel', 'Mijn focus deze week<br>IK HEB BEGRIP VOOR MIJN EX'),
(329, 9, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(330, 9, 'blokken_2_inhoud', ''),
(331, 9, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(332, 9, 'blokken_3_titel', 'Tips van kinderen voor het gesprek'),
(333, 9, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(334, 9, 'blokken_3_inhoud', '<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n<img class="alignnone size-medium wp-image-68" src="http://localhost/villapinedo/wp-content/uploads/2017/04/large-4_copy-300x200.jpg" alt="" width="300" height="200" />'),
(335, 9, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(336, 9, 'blokken_4_titel', 'Advies van de kindertherapeut'),
(337, 9, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(338, 9, 'blokken_4_inhoud', 'Vaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen.\r\n\r\n<img class="alignleft" src="http://workshop.villapinedo.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="100" height="139" border="0" />\r\n\r\n<strong>\r\nLees meer ervaringen van kinderen</strong>\r\n\r\nIn het eerste hoofdstuk van het boek vertellen kinderen over het moment waarop hun ouders vertelden dat ze uit elkaar gaan.'),
(339, 9, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(340, 9, 'blokken_5_titel', 'Social media advies'),
(341, 9, '_blokken_5_titel', 'field_58ea8c7c2331f'),
(342, 9, 'blokken_5_inhoud', 'Let op: Er wordt dagelijks tientallen keren door kinderen op Twitter gedeeld dat hun ouders gaan scheiden. Als je dat niet wilt, praat erover met je kind(eren).'),
(343, 9, '_blokken_5_inhoud', 'field_58ea8c9123320'),
(344, 9, 'blokken_6_titel', 'Om uit je hoofd te leren'),
(345, 9, '_blokken_6_titel', 'field_58ea8c7c2331f'),
(346, 9, 'blokken_6_inhoud', '<ul>\r\n 	<li>Ook als jullie gescheiden zijn, blijven jullie als ouders verbonden.</li>\r\n 	<li>Je kind heeft recht op contact, zorg en liefde van beide ouders.</li>\r\n 	<li>Je kind heeft geen invloed op de scheiding. Het is een besluit tussen julllie als partners. Zeg dat dus ook hardop.</li>\r\n 	<li>Je kind heeft jullie allebei heel hard nodig.\r\nVooral nu.</li>\r\n</ul>'),
(347, 9, '_blokken_6_inhoud', 'field_58ea8c9123320'),
(348, 9, 'blokken_7_titel', 'Hoe hebben andere ouders het gesprek gevoerd?'),
(349, 9, '_blokken_7_titel', 'field_58ea8c7c2331f'),
(350, 9, 'blokken_7_inhoud', 'Neem een kijkje op het forum van deze workshop. Je kunt zelf onderwerpen aandragen of reageren op andere ouders.\r\n\r\n<a href="http://workshop.villapinedo.nl/forum/viewforum.php?f=1">Bekijk het forum</a>\r\n\r\n<img class="alignnone size-medium wp-image-69" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Weekoverzicht-Week2-300x300.jpg" alt="" width="300" height="300" />'),
(351, 9, '_blokken_7_inhoud', 'field_58ea8c9123320'),
(352, 9, 'blokken_8_titel', 'Liefdevolle tips'),
(353, 9, '_blokken_8_titel', 'field_58ea8c7c2331f'),
(354, 9, 'blokken_8_inhoud', '<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>'),
(355, 9, '_blokken_8_inhoud', 'field_58ea8c9123320'),
(356, 9, 'opdrachten_1_opdracht', '70'),
(357, 9, '_opdrachten_1_opdracht', 'field_58ea8bc62331c'),
(358, 70, '_edit_last', '1'),
(359, 70, '_edit_lock', '1491779993:1'),
(360, 70, '_wp_page_template', 'default'),
(361, 9, 'volgende_week', '13'),
(362, 9, '_volgende_week', 'field_58eaae64f5719'),
(363, 79, '_wp_attached_file', '2017/04/Villa_Pinedo_Ik_Ben_def.jpg'),
(364, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:826;s:4:"file";s:35:"2017/04/Villa_Pinedo_Ik_Ben_def.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Villa_Pinedo_Ik_Ben_def-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Villa_Pinedo_Ik_Ben_def-278x300.jpg";s:5:"width";i:278;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(365, 13, 'blokken_0_titel', 'Gedicht van kim (21)'),
(366, 13, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(367, 13, 'blokken_0_inhoud', '<img class="alignnone size-medium wp-image-79" src="//localhost:3000/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo_Ik_Ben_def-278x300.jpg" alt="" width="278" height="300" />'),
(368, 13, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(369, 13, 'blokken_1_titel', 'Leg uit dat veranderingen bij een scheiding horen en dat dat iets is waar jullie allemaal aan moeten wennen. En dat kost tijd.'),
(370, 13, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(371, 13, 'blokken_1_inhoud', ''),
(372, 13, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(373, 13, 'blokken_2_titel', 'Mijn focus deze week:<br>Ik stel mij flexibel op'),
(374, 13, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(375, 13, 'blokken_2_inhoud', ''),
(376, 13, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(377, 13, 'blokken_3_titel', 'Advies van de kindertherapeut'),
(378, 13, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(379, 13, 'blokken_3_inhoud', 'Voor een kind is na de scheiding de illusie van eindeloosheid en onkwetsbaarheid weg. Dingen kunnen blijkbaar zomaar stoppen of veranderen. Ineens heb je als kind niet meer ‘alle tijd'' om groot te worden. Ook het veilige gevoel van papa en mama die er ‘altijd'' zijn en je beschermen, krijgt een deuk.\r\n\r\nHet is belangrijk voor ouders zich te realiseren dat sommige kinderen flexibel zijn en goed tegen veranderingen kunnen. Andere kinderen kunnen dat juist helemaal niet, voor hen is het extra zwaar. Kijk goed naar de reacties van je kind(eren) op alle veranderingen en houd hier rekening mee. Leg de nadruk op wat hetzelfde blijft en beperk de veranderingen waar mogelijk.\r\n\r\n<img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" />\r\n\r\n<strong>Lees meer over wat er verandert\r\n\r\n</strong>Op pagina 36-59 in het boek ''Aan alle gescheiden ouders'' lees je meer over wat er verandert in het leven van je kind als je gaat scheiden.'),
(380, 13, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(381, 13, 'blokken_4_titel', 'Vier tips van kinderen'),
(382, 13, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(383, 13, 'blokken_4_inhoud', '<ul>\r\n 	<li><strong>Heb begrip en denk mee</strong>. Realiseer je dat we door de veranderingen van een scheiding veel moeten onthouden, bijvoorbeeld wanneer woon ik waar?</li>\r\n 	<li><strong>Zet je eigen belang opzij</strong>. Veel ouders beseffen niet dat ze veel met zichzelf bezig zijn sinds ze gescheiden zijn. Wij worden dan vaak vergeten.</li>\r\n 	<li><strong>Neem ons serieus</strong>. Als je naar ons luistert, voelen we dat we belangrijk  voor je zijn</li>\r\n 	<li><strong>Respecteer ons DNA</strong>. Elke keer als je iets slechts zegt over de andere ouder, voelt dat alsof je een stukje van ons niet goed vindt.</li>\r\n</ul>'),
(384, 13, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(385, 13, 'blokken_5_titel', 'Deel je verhaal'),
(386, 13, '_blokken_5_titel', 'field_58ea8c7c2331f'),
(387, 13, 'blokken_5_inhoud', 'Heb je tips of behoefte je verhaal te delen, kijk dan op het <a href="http://workshop.villapinedo.nl/forum/">forum</a>. Hier kun je lezen hoe andere ouders omgaan met alle veranderingen.'),
(388, 13, '_blokken_5_inhoud', 'field_58ea8c9123320'),
(389, 13, 'blokken_6_titel', 'Logistieke tips'),
(390, 13, '_blokken_6_titel', 'field_58ea8c7c2331f'),
(391, 13, 'blokken_6_inhoud', '<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>'),
(392, 13, '_blokken_6_inhoud', 'field_58ea8c9123320'),
(393, 13, 'volgende_week', '14'),
(394, 13, '_volgende_week', 'field_58eaae64f5719'),
(395, 80, '_wp_attached_file', '2017/04/Villa_Pinedo-Ik_Wilde_Niet_Scheiden.jpg'),
(396, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:1050;s:4:"file";s:47:"2017/04/Villa_Pinedo-Ik_Wilde_Niet_Scheiden.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"Villa_Pinedo-Ik_Wilde_Niet_Scheiden-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"Villa_Pinedo-Ik_Wilde_Niet_Scheiden-219x300.jpg";s:5:"width";i:219;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:48:"Villa_Pinedo-Ik_Wilde_Niet_Scheiden-746x1024.jpg";s:5:"width";i:746;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(397, 81, '_wp_attached_file', '2017/04/Open_brief-Villa_Pinedo.jpg'),
(398, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1098;s:6:"height";i:775;s:4:"file";s:35:"2017/04/Open_brief-Villa_Pinedo.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Open_brief-Villa_Pinedo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Open_brief-Villa_Pinedo-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"Open_brief-Villa_Pinedo-768x542.jpg";s:5:"width";i:768;s:6:"height";i:542;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"Open_brief-Villa_Pinedo-1024x723.jpg";s:5:"width";i:1024;s:6:"height";i:723;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(399, 14, 'blokken_0_titel', 'Gedicht van martine (17)'),
(400, 14, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(401, 14, 'blokken_0_inhoud', '<img class="alignnone size-medium wp-image-80" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Ik_Wilde_Niet_Scheiden-219x300.jpg" alt="" width="219" height="300" />'),
(402, 14, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(403, 14, 'blokken_1_titel', 'Als je kind voelt dat hij openlijk van jullie allebei mag houden, maak je zijn leven een stuk makkelijker. '),
(404, 14, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(405, 14, 'blokken_1_inhoud', ''),
(406, 14, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(407, 14, 'blokken_2_titel', 'Mijn focus deze week:'),
(408, 14, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(409, 14, 'blokken_2_inhoud', ''),
(410, 14, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(411, 14, 'blokken_3_titel', 'Advies van de kindertherapeut'),
(412, 14, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(413, 14, 'blokken_3_inhoud', 'Kiezen tussen je ouders doet pijn. Als een kind voelt dat het openlijk van jullie allebei mag houden, maak je haar/zijn leven een stuk gemakkelijker. Ouders beseffen vaak niet wat het voor hun kind betekent als ze elkaar over en weer beschuldigen. Hoe dubbel het is om aan de ene kant steeds te horen hoe slecht de andere ouder is en het aan de andere kant nou juist bij diegene leuk te hebben in het weekend.\r\n\r\nDit soort tegenstrijdigheden kunnen je kind emotioneel verscheuren. Kinderen hebben een extra gevoeligheid voor deze bewuste en onbewuste signalen van hun ouders. Een kind is dan vaak meer met de gevoelens van de ouders bezig dan met zijn eigen gevoelens. Dit brengt de emotionele ontwikkeling in gevaar.\r\n\r\n<img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" />\r\n\r\n<strong>Lees meer over loyaliteit\r\n\r\n</strong>Meer lezen over het loyaliteitsconflict van je kind als je gaat scheiden? Kijk op pagina 60-75 in het boek ''Aan alle gescheiden ouders''.'),
(414, 14, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(415, 14, 'blokken_4_titel', 'Zes tips van kinderen'),
(416, 14, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(417, 14, 'blokken_4_inhoud', '<ul>\r\n 	<li>Laat ons alsjeblieft geen kant kiezen.</li>\r\n 	<li>Maak geen ruzie waar wij bij zijn.</li>\r\n 	<li>Zeg geen slechte dingen over elkaar tegen ons.</li>\r\n 	<li>Geef ons de tijd om te wennen aan de nieuwe situatie.</li>\r\n 	<li>Luister echt naar wat we te zeggen hebben.</li>\r\n 	<li>Geef ons de ruimte om van jullie allebei te houden.</li>\r\n 	<li>Vergeet niet dat jullie samen voor ons gekozen hebben.</li>\r\n</ul>\r\n<img src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/houvast.jpg" width="335" height="241" border="0" />'),
(418, 14, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(419, 14, 'blokken_5_titel', 'Open brief aan alle gescheiden ouders van nederland'),
(420, 14, '_blokken_5_titel', 'field_58ea8c7c2331f'),
(421, 14, 'blokken_5_inhoud', '<img class="alignnone size-medium wp-image-81" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Open_brief-Villa_Pinedo-300x212.jpg" alt="" width="300" height="212" />'),
(422, 14, '_blokken_5_inhoud', 'field_58ea8c9123320'),
(423, 14, 'blokken_6_titel', 'Loyaliteit door de ogen van je kind'),
(424, 14, '_blokken_6_titel', 'field_58ea8c7c2331f'),
(425, 14, 'blokken_6_inhoud', '<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>'),
(426, 14, '_blokken_6_inhoud', 'field_58ea8c9123320'),
(427, 14, 'volgende_week', '15'),
(428, 14, '_volgende_week', 'field_58eaae64f5719'),
(429, 82, '_wp_attached_file', '2017/04/Villa_Pinedo-Word_Dan_Gelukkig.jpg'),
(430, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:765;s:6:"height";i:1150;s:4:"file";s:42:"2017/04/Villa_Pinedo-Word_Dan_Gelukkig.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"Villa_Pinedo-Word_Dan_Gelukkig-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"Villa_Pinedo-Word_Dan_Gelukkig-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"Villa_Pinedo-Word_Dan_Gelukkig-681x1024.jpg";s:5:"width";i:681;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(431, 15, 'blokken_0_titel', 'Gedicht van joy (13)'),
(432, 15, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(433, 15, 'blokken_0_inhoud', '<img class="alignnone size-medium wp-image-82" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Word_Dan_Gelukkig-200x300.jpg" alt="" width="200" height="300" />'),
(434, 15, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(435, 15, 'blokken_1_titel', 'Mijn focus deze week:'),
(436, 15, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(437, 15, 'blokken_1_inhoud', ''),
(438, 15, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(439, 15, 'blokken_2_titel', 'Advies van de kindertherapeut'),
(440, 15, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(441, 15, 'blokken_2_inhoud', 'Er is een verschil tussen de band als ‘ex'' en als ‘ouder''. Probeer geen oud zeer uit de partnerrelatie mee te nemen in de nieuwe relatie als mede-ouders. Bedenk dat je ex jullie kind niet op dezelfde manier behandelt, als hij/zij jou behandeld heeft. Hou de ouderlijn zuiver, je bent ouders voor de rest van je kind zijn leven. Probeer in het bijzijn van je kind alleen hun papa of mama in je ex te zien en je daarnaar te gedragen. Het is een hele grote uitdaging, misschien wel de allergrootste ooit, maar het loont. Accepteer elkaar als ouders en denk bij alles: wat is het beste voor mijn kind?\r\n\r\n\r\n<img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /> <strong>Lees meer over communicatie</strong>\r\nWil je meer weten over goede communicatie tussen jou, je ex en jullie kind(eren)? Kijk dan op pagina 76-91 in het boek.'),
(442, 15, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(443, 15, 'blokken_3_titel', '4 x niet doen'),
(444, 15, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(445, 15, 'blokken_3_inhoud', '<ul>\r\n 	<li>''Vertel ons niet dat we te jong zijn en toch niets begrijpen van al die "volwassenen"-zaken over de scheiding. Maar ondertussen horen wij wel van alles.'' Lara (16)</li>\r\n 	<li>''Betrek ons niet bij jullie ruzies. Jij hoeft de ruzie met mijn vrienden ook niet op te lossen.'' Mike (14)</li>\r\n 	<li>''Alle aandacht geven aan je nieuwe partner. P.S. Je kinderen spullen of geld geven in plaats van tijd is geen oplossing.'' Floris (17)</li>\r\n 	<li>''Praat met ons maar zonder negatief over onze andere ouder te praten. Je kwetst ons hiermee.'' Fien (15)</li>\r\n</ul>'),
(446, 15, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(447, 15, 'blokken_4_titel', 'Er komen nog zoveel gelegenheden waarbij het voor je kind heel makkelijk en fijn is als jullie als ouders gewoon met elkaar praten.'),
(448, 15, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(449, 15, 'blokken_4_inhoud', ''),
(450, 15, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(451, 15, 'blokken_5_titel', 'Zet je kind centraal'),
(452, 15, '_blokken_5_titel', 'field_58ea8c7c2331f'),
(453, 15, 'blokken_5_inhoud', 'Vraag je regelmatig af of je ‘ja'' kunt zeggen op deze vragen:\r\n\r\nMag je kind openlijk van je mede-ouder houden?\r\nKijk jij je ex aan?\r\nPraat je positief over je mede-ouder, of in ieder geval neutraal?\r\nNeem je echt belangrijke beslissingen samen?\r\nBen je opgehouden met ruzie maken waar de kinderen bij zijn?\r\nMag je kind echt onpartijdig zijn?\r\nKom je de afspraken met je mede-ouder na?'),
(454, 15, '_blokken_5_inhoud', 'field_58ea8c9123320'),
(455, 15, 'blokken_6_titel', 'Communicatietips'),
(456, 15, '_blokken_6_titel', 'field_58ea8c7c2331f'),
(457, 15, 'blokken_6_inhoud', '<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>'),
(458, 15, '_blokken_6_inhoud', 'field_58ea8c9123320'),
(459, 15, 'volgende_week', '16'),
(460, 15, '_volgende_week', 'field_58eaae64f5719'),
(461, 83, '_wp_attached_file', '2017/04/Tips_voor_Stiefouders-week5.jpg'),
(462, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:3500;s:4:"file";s:39:"2017/04/Tips_voor_Stiefouders-week5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Tips_voor_Stiefouders-week5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Tips_voor_Stiefouders-week5-214x300.jpg";s:5:"width";i:214;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Tips_voor_Stiefouders-week5-768x1075.jpg";s:5:"width";i:768;s:6:"height";i:1075;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"Tips_voor_Stiefouders-week5-731x1024.jpg";s:5:"width";i:731;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(463, 16, 'blokken_0_titel', 'Tips voor stiefouders'),
(464, 16, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(465, 16, 'blokken_0_inhoud', '<img class="alignnone size-medium wp-image-83" src="http://localhost/villapinedo/wp-content/uploads/2017/04/Tips_voor_Stiefouders-week5-214x300.jpg" alt="" width="214" height="300" />'),
(466, 16, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(467, 16, 'blokken_1_titel', 'Je kunt niet verwachten dat je kind erkenning geeft aan zijn stiefouder. Geef zelf die erkenning aan je nieuwe partner, want stiefouder zijn is vaak geen dankbare rol.'),
(468, 16, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(469, 16, 'blokken_1_inhoud', ''),
(470, 16, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(471, 16, 'blokken_2_titel', 'Tips van de kindertherapeut'),
(472, 16, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(473, 16, 'blokken_2_inhoud', '<ul>\r\n 	<li>Als je je nieuwe partner op de eerste plek zet en je het niet opneemt voor je kind als er onenigheid is tussen je partner en je kind, kan je kind dit ervaren als een enorme persoonlijke afwijzing. Soms is het gewoon fijn als je het voor hem opneemt en niet altijd de andere wolwassene gelijk geeft. Maak hierover afspraken met je nieuwe partner, hoe de rollen verdeeld zijn bij grote en kleine onenigheden. Bedenk daarbij steeds: wij zijn de volwassenen en dit is mijn kind.</li>\r\n 	<li>Vraag niet van je kind de stiefouder papa of mama te noemen. Als je kind daar zelf zonder druk voor kiest, dan is het natuurlijk prima. Maar stimuleer het niet uit jezelf. Daar kun je als kind namelijk ontzettend mee worstelen en dan komt meteen het loyaliteitsprobleem weer om de hoek kijken.</li>\r\n 	<li>Hou alles even zoals het is, zeker als je snel bij elkaar intrekt. Ga bijvoorbeeld niet meteen de inrichting of regels veranderen. Kijk eerst hoe het gaat en hoe het voor de kinderen is, het leven met een stiefouder.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Meer lezen over stiefouders\r\n</strong>\r\n\r\nKijk op pagina 92-109 in het boek als je meer inzicht wilt krijgen hoe kinderen het ervaren als er een van hun ouders een nieuwe partner krijgt.'),
(474, 16, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(475, 16, 'blokken_3_titel', '3 x doen volgens kinderen'),
(476, 16, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(477, 16, 'blokken_3_inhoud', '<ul>\r\n 	<li>''Wees duidelijk, open en eerlijk! Dan kan ik je gaan vertrouwen en het voorkomt een hoop misverstanden.'' Sanne (13)</li>\r\n 	<li>''Volgens mij kun je het opvoeden beter aan mijn ouders overlaten. Natuurlijk: als ik te ver ga en er zijn geen ouders in de buurt, dan is het ook wel logisch dat je er wat van zegt. Maar als je zegt dat ik mijn bord leeg moet eten, voelt dat heel gek.'' Tim (15)</li>\r\n 	<li>''Kun je je soms proberen te verplaatsen in mijn positie? Misschien snap je dan beter waarom ik mij gedraag zoals ik mij gedraag.'' Loes (14)</li>\r\n</ul>'),
(478, 16, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(479, 16, 'blokken_4_titel', ''),
(480, 16, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(481, 16, 'blokken_4_inhoud', '<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<div class="col-left">\r\n<div class="block">\r\n\r\nWachtwoord: ogenvankinderen\r\n\r\n</div>\r\n</div>'),
(482, 16, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(483, 16, 'volgende_week', '17'),
(484, 16, '_volgende_week', 'field_58eaae64f5719'),
(485, 17, 'opdrachten', ''),
(486, 17, '_opdrachten', 'field_58ea8b4a2331b'),
(487, 17, 'blokken_0_titel', 'Vragen van kinderen'),
(488, 17, '_blokken_0_titel', 'field_58ea8c7c2331f'),
(489, 17, 'blokken_0_inhoud', 'Wil je meer inzicht krijgen wat kinderen bezig houdt met betrekking tot hun rechten? Op het <a href="http://www.villapinedo.nl/onderwerpen/forum/rechten/" target="_blank">forum voor jongeren</a> kun je hun vragen en de reacties van andere kinderen lezen.'),
(490, 17, '_blokken_0_inhoud', 'field_58ea8c9123320'),
(491, 17, 'blokken_1_titel', 'Kinderen mogen niet zelf bepalen bij wie ze gaan wonen. Hier moeten ouders over beslissen. Als ouders er samen niet uit kunnen komen, dan zal de rechter de beslissing nemen.'),
(492, 17, '_blokken_1_titel', 'field_58ea8c7c2331f'),
(493, 17, 'blokken_1_inhoud', ''),
(494, 17, '_blokken_1_inhoud', 'field_58ea8c9123320'),
(495, 17, 'blokken_2_titel', 'Mijn focus deze week:'),
(496, 17, '_blokken_2_titel', 'field_58ea8c7c2331f'),
(497, 17, 'blokken_2_inhoud', ''),
(498, 17, '_blokken_2_inhoud', 'field_58ea8c9123320'),
(499, 17, 'blokken_3_titel', 'Advies van de kindertherapeut'),
(500, 17, '_blokken_3_titel', 'field_58ea8c7c2331f'),
(501, 17, 'blokken_3_inhoud', 'Ga voor jezelf eens na wat voor een advocaat of mediator jij hebt. Gaat hij/zij voor jouw belang? Of jullie gezamenlijk belang, namelijk het welzijn van je kind(eren)? Heeft hij/zij het wel eens over jouw kinderen? Probeert hij/zij te overleggen met de advocaat van je mede-ouder?\r\n\r\nAls je moet constateren dat jouw advocaat ‘voor de zaak’ gaat, of voor jouw belang, overweeg dan om een andere advocaat te nemen die jou kan helpen om de kinderen centraal te houden. Vaak wordt er misbruik gemaakt van de term: ‘In het belang van het kind’. En wordt deze term een wapen in de strijd. Weet dat jouw kinderen maar één belang hebben en dat is dat jullie de dingen als ouders goed voor ze regelen zonder strijd.\r\n\r\n<strong>Lees meer over rechten\r\n</strong>\r\n\r\nOp pagina 110-124 in het boek ''Aan alle gescheiden ouders'' kan je meer lezen over rechten en ervaringen van kinderen.'),
(502, 17, '_blokken_3_inhoud', 'field_58ea8c9123320'),
(503, 17, 'blokken_4_titel', 'Het kinderverhoor'),
(504, 17, '_blokken_4_titel', 'field_58ea8c7c2331f'),
(505, 17, 'blokken_4_inhoud', 'VillaPinedo-ambassadrice Tatum Dagelet interviewt jongeren bij de Raad voor Rechtsbijstand in Rotterdam over de scheiding van hun ouders en hoe ze hun mening mochten geven bij de rechter.\r\n<iframe src="https://www.youtube.com/embed/rCD7ysWVl9c" width="400" height="225" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'),
(506, 17, '_blokken_4_inhoud', 'field_58ea8c9123320'),
(507, 17, 'blokken_5_titel', 'Advies van de kindertherapeut'),
(508, 17, '_blokken_5_titel', 'field_58ea8c7c2331f'),
(509, 17, 'blokken_5_inhoud', 'Ga voor jezelf eens na wat voor een advocaat of mediator jij hebt. Gaat hij/zij voor jouw belang? Of jullie gezamenlijk belang, namelijk het welzijn van je kind(eren)? Heeft hij/zij het wel eens over jouw kinderen? Probeert hij/zij te overleggen met de advocaat van je mede-ouder?\r\n\r\nAls je moet constateren dat jouw advocaat ‘voor de zaak’ gaat, of voor jouw belang, overweeg dan om een andere advocaat te nemen die jou kan helpen om de kinderen centraal te houden. Vaak wordt er misbruik gemaakt van de term: ‘In het belang van het kind’. En wordt deze term een wapen in de strijd. Weet dat jouw kinderen maar één belang hebben en dat is dat jullie de dingen als ouders goed voor ze regelen zonder strijd.\r\n\r\n<strong>Lees meer over rechten\r\n</strong>\r\n\r\nOp pagina 110-124 in het boek ''Aan alle gescheiden ouders'' kan je meer lezen over rechten en ervaringen van kinderen.'),
(510, 17, '_blokken_5_inhoud', 'field_58ea8c9123320'),
(511, 17, 'blokken_6_titel', 'Hulp bij hoorrecht'),
(512, 17, '_blokken_6_titel', 'field_58ea8c7c2331f'),
(513, 17, 'blokken_6_inhoud', '<div class="col-left">\r\n<div class="block">\r\n\r\nOp de <a title="Raad voor Rechtsbijstand" href="http://www.ouders-uit-elkaar.nl/articles/16-18/hoorrecht" target="_blank">site van de Raad voor Rechtsbijstand</a> staat een heleboel informatie voor kinderen die handig is als je ouders uit elkaar gaan. Bijvoorbeeld bij het schrijven van een brief aan de rechter. Je beantwoordt gewoon de vragen op de site en dan maken zij de brief helemaal af.\r\n\r\n</div>\r\n</div>'),
(514, 17, '_blokken_6_inhoud', 'field_58ea8c9123320'),
(515, 17, 'blokken_7_titel', 'Deel je ervaring'),
(516, 17, '_blokken_7_titel', 'field_58ea8c7c2331f'),
(517, 17, 'blokken_7_inhoud', 'Deel deze workshop dan op je eigen social media (#villapinedo) of post je ervaringen op onze <a href="https://www.facebook.com/VillaPinedo" target="_blank">Facebookpagina</a> of volg ons op Twitter! De kinderen zullen je dankbaar zijn.'),
(518, 17, '_blokken_7_inhoud', 'field_58ea8c9123320'),
(519, 17, 'blokken', '8'),
(520, 17, '_blokken', 'field_58ea8c3b2331d'),
(521, 17, 'volgende_week', ''),
(522, 17, '_volgende_week', 'field_58eaae64f5719'),
(523, 89, '_edit_last', '1'),
(524, 89, '_edit_lock', '1491781023:1'),
(525, 89, '_wp_page_template', 'default'),
(526, 92, '_edit_last', '1'),
(527, 92, '_edit_lock', '1491780343:1'),
(528, 92, '_wp_page_template', 'default'),
(529, 104, '_wpcw_template_to_use', ''),
(530, 104, '_edit_last', '1'),
(531, 104, '_edit_lock', '1492114345:1'),
(532, 104, 'wpcw_associated_module', '1'),
(533, 106, '_edit_lock', '1492114270:1'),
(534, 106, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_posts`
--

CREATE TABLE `vpi17_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_posts`
--

INSERT INTO `vpi17_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-08 20:05:40', '2017-04-08 18:05:40', 'Welkom bij WordPress. Dit is je eerste bericht. Pas het aan of verwijder het en start met bloggen.', 'Hallo wereld.', '', 'publish', 'open', 'open', '', 'hallo-wereld', '', '', '2017-04-08 20:05:40', '2017-04-08 18:05:40', '', 0, 'http://localhost/villapinedo/?p=1', 0, 'post', '', 0),
(2, 1, '2017-04-08 20:05:40', '2017-04-08 18:05:40', 'Dit is een voorbeeldpagina. Het verschilt van een bericht omdat het een vaste plek heeft en in de sitenavigatie getoond wordt (in de meeste thema''s). De meeste gebruikers beginnen met een ''Over mij'' pagina om zich voor te stellen aan potenti&#235;le bezoekers. Bijvoorbeeld:\n\n<blockquote>Hallo. Overdag ben ik postbode, maar ''s avonds timmer ik aan de weg als acteur. Dit is mijn blog. Ik woon in Hilversum, samen met Vlekkie, m''n trouwe viervoeter. Ik hou van cocktails en, af en toe, een zomerse bui op m''n hoofd.</blockquote>\n\n...of zoiets:\n\n<blockquote>XYZ Dingetjes BV levert al sinds 1971 talloze dingetjes van hoge kwaliteit aan een groot publiek. XYZ is gevestigd in Bolsward, heeft ca. 2.000 medewerkers en doet allerlei geweldige dingen voor de Friese gemeenschap.</blockquote>\n\nAls nieuwe WordPress gebruiker kun je naar <a href="http://localhost/villapinedo/wp-admin/">het dashboard</a> gaan om deze voorbeeldpagina te verwijderen en nieuwe pagina''s aan te maken voor je site. Veel plezier!', 'Voorbeeld pagina', '', 'trash', 'closed', 'open', '', 'voorbeeld-pagina__trashed', '', '', '2017-04-09 10:58:26', '2017-04-09 08:58:26', '', 0, 'http://localhost/villapinedo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-04-08 20:05:55', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-08 20:05:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?p=3', 0, 'post', '', 0),
(4, 1, '2017-04-09 10:34:36', '2017-04-09 08:34:36', '[namaste-enroll]\r\n\r\nWat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video''s kan bekijken. Het wachtwoord is voor alle video''s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).', 'Voor gescheiden ouders', '', 'publish', 'open', 'closed', '', 'voor-gescheiden-ouders', '', '', '2017-04-13 21:06:51', '2017-04-13 19:06:51', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&#038;p=4', 0, 'namaste_course', '', 0),
(5, 1, '2017-04-09 10:34:41', '2017-04-09 08:34:41', '', 'Week 1', '', 'trash', 'open', 'closed', '', 'week-1-2__trashed', '', '', '2017-04-09 11:05:12', '2017-04-09 09:05:12', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&#038;p=5', 0, 'namaste_course', '', 0),
(6, 1, '2017-04-09 10:57:36', '2017-04-09 08:57:36', 'Start de workshop <a href="//localhost/villapinedo/workshop-overzicht/voor-gescheiden-ouders/">hier</a>.', 'Home', '', 'publish', 'closed', 'closed', '', 'workshop', '', '', '2017-04-09 16:39:38', '2017-04-09 14:39:38', '', 0, 'http://localhost/villapinedo/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-04-09 10:57:36', '2017-04-09 08:57:36', '', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 10:57:36', '2017-04-09 08:57:36', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-04-09 10:58:26', '2017-04-09 08:58:26', 'Dit is een voorbeeldpagina. Het verschilt van een bericht omdat het een vaste plek heeft en in de sitenavigatie getoond wordt (in de meeste thema''s). De meeste gebruikers beginnen met een ''Over mij'' pagina om zich voor te stellen aan potenti&#235;le bezoekers. Bijvoorbeeld:\n\n<blockquote>Hallo. Overdag ben ik postbode, maar ''s avonds timmer ik aan de weg als acteur. Dit is mijn blog. Ik woon in Hilversum, samen met Vlekkie, m''n trouwe viervoeter. Ik hou van cocktails en, af en toe, een zomerse bui op m''n hoofd.</blockquote>\n\n...of zoiets:\n\n<blockquote>XYZ Dingetjes BV levert al sinds 1971 talloze dingetjes van hoge kwaliteit aan een groot publiek. XYZ is gevestigd in Bolsward, heeft ca. 2.000 medewerkers en doet allerlei geweldige dingen voor de Friese gemeenschap.</blockquote>\n\nAls nieuwe WordPress gebruiker kun je naar <a href="http://localhost/villapinedo/wp-admin/">het dashboard</a> gaan om deze voorbeeldpagina te verwijderen en nieuwe pagina''s aan te maken voor je site. Veel plezier!', 'Voorbeeld pagina', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-09 10:58:26', '2017-04-09 08:58:26', '', 2, 'http://localhost/villapinedo/2017/04/09/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-04-09 11:02:57', '2017-04-09 09:02:57', '', '01 Het gesprek', '', 'publish', 'open', 'closed', '', 'week-1', '', '', '2017-04-10 00:48:34', '2017-04-09 22:48:34', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=9', 0, 'namaste_lesson', '', 0),
(10, 1, '2017-04-09 11:03:25', '2017-04-09 09:03:25', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-04-09 16:42:37', '2017-04-09 14:42:37', '', 0, 'http://localhost/villapinedo/?p=10', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-04-09 11:06:07', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-09 11:06:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=namaste_course&p=12', 0, 'namaste_course', '', 0),
(13, 1, '2017-04-09 11:06:41', '2017-04-09 09:06:41', '', '02 Alles is anders', '', 'publish', 'open', 'closed', '', 'week-2', '', '', '2017-04-10 00:46:59', '2017-04-09 22:46:59', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=13', 0, 'namaste_lesson', '', 0),
(14, 1, '2017-04-09 11:06:53', '2017-04-09 09:06:53', '', '03 Loyaliteit', '', 'publish', 'open', 'closed', '', 'week-3', '', '', '2017-04-10 00:59:02', '2017-04-09 22:59:02', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=14', 0, 'namaste_lesson', '', 0),
(15, 1, '2017-04-09 11:07:50', '2017-04-09 09:07:50', '', '04 Communicatie', '', 'publish', 'open', 'closed', '', 'week-4', '', '', '2017-04-10 01:02:48', '2017-04-09 23:02:48', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=15', 0, 'namaste_lesson', '', 0),
(16, 1, '2017-04-09 11:08:05', '2017-04-09 09:08:05', '', '05 Nieuwe partner', '', 'publish', 'open', 'closed', '', 'week-5', '', '', '2017-04-10 01:07:23', '2017-04-09 23:07:23', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=16', 0, 'namaste_lesson', '', 0),
(17, 1, '2017-04-09 11:08:24', '2017-04-09 09:08:24', '', '06 Rechten', '', 'publish', 'open', 'closed', '', 'week-6', '', '', '2017-04-10 01:11:49', '2017-04-09 23:11:49', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&#038;p=17', 0, 'namaste_lesson', '', 0),
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
(32, 1, '2017-04-09 16:11:08', '2017-04-09 14:11:08', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video''s kan bekijken. Het wachtwoord is voor alle video''s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).\r\n\r\n<img class="alignnone size-medium wp-image-18" src="//localhost:3000/villapinedo/wp-content/uploads/2017/04/Crew_V2-300x51.jpg" alt="" width="300" height="51" />', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:11:08', '2017-04-09 14:11:08', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-04-09 16:11:45', '2017-04-09 14:11:45', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen. Je kind zal je dankbaar zijn dat je er alles aan doet om de scheiding zo soepel mogelijk te laten verlopen. Een scheiding is nooit leuk en om ervoor te zorgen dat je kind(eren) er zo min mogelijk last van hebben, leer je in deze workshop van kinderen zelf waar je allemaal rekening mee kan houden. Ze vertellen je hoe het voelt als je ouders gaan scheiden en geven je tips waar je vandaag al wat mee kan.\r\n\r\nOm de privacy van de kinderen beschermen moet je een wachtwoord invullen zodat je de video''s kan bekijken. Het wachtwoord is voor alle video''s hetzelfde: ogenvankinderen\r\n\r\nVeel succes met deze workshop en bedankt namens alle kinderen!\r\n\r\nHartelijke groet van Marsha Pinedo\r\n<h3>Jongeren van Villa Pinedo</h3>\r\nDit zijn de jongeren die de komende zes weken met je meedoen (v.l.n.r.): Marleen (20), Dara (19), Vincent (16), Julia (16), Zara (17), Milo (10), Robin (15), Rachel (12) en Guynio (19).<img class="alignnone size-medium wp-image-18" src="//localhost:3000:3000/villapinedo/wp-content/uploads/2017/04/Crew_V2-300x51.jpg" alt="" width="300" height="51" />', 'Workshop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-04-09 16:11:45', '2017-04-09 14:11:45', '', 6, 'http://localhost/villapinedo/2017/04/09/6-revision-v1/', 0, 'revision', '', 0),
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
(50, 1, '2017-04-09 16:55:12', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-09 16:55:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=acf-field-group&p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:14:"namaste_lesson";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Lesinhoud', 'lesinhoud', 'publish', 'closed', 'closed', '', 'group_58ea89c5c762a', '', '', '2017-04-10 01:16:16', '2017-04-09 23:16:16', '', 0, 'http://localhost/villapinedo/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Opdrachten', 'opdrachten', 'publish', 'closed', 'closed', '', 'field_58ea8b4a2331b', '', '', '2017-04-09 21:34:05', '2017-04-09 19:34:05', '', 51, 'http://localhost/villapinedo/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Opdracht', 'opdracht', 'publish', 'closed', 'closed', '', 'field_58ea8bc62331c', '', '', '2017-04-09 21:34:05', '2017-04-09 19:34:05', '', 52, 'http://localhost/villapinedo/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"block";s:12:"button_label";s:10:"Nieuw blok";}', 'Blokken', 'blokken', 'publish', 'closed', 'closed', '', 'field_58ea8c3b2331d', '', '', '2017-04-09 21:53:27', '2017-04-09 19:53:27', '', 51, 'http://localhost/villapinedo/?post_type=acf-field&#038;p=54', 1, 'acf-field', '', 0),
(55, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Titel', 'titel', 'publish', 'closed', 'closed', '', 'field_58ea8c7c2331f', '', '', '2017-04-09 21:52:34', '2017-04-09 19:52:34', '', 54, 'http://localhost/villapinedo/?post_type=acf-field&#038;p=55', 0, 'acf-field', '', 0),
(56, 1, '2017-04-09 21:34:05', '2017-04-09 19:34:05', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Inhoud', 'inhoud', 'publish', 'closed', 'closed', '', 'field_58ea8c9123320', '', '', '2017-04-09 21:52:34', '2017-04-09 19:52:34', '', 54, 'http://localhost/villapinedo/?post_type=acf-field&#038;p=56', 1, 'acf-field', '', 0),
(57, 1, '2017-04-09 21:37:02', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-09 21:37:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&p=57', 0, 'namaste_lesson', '', 0),
(58, 1, '2017-04-09 21:38:56', '2017-04-09 19:38:56', '', 'Opdrachten', '', 'publish', 'closed', 'closed', '', 'opdrachten', '', '', '2017-04-09 21:38:56', '2017-04-09 19:38:56', '', 0, 'http://localhost/villapinedo/?page_id=58', 0, 'page', '', 0),
(59, 1, '2017-04-09 21:38:40', '2017-04-09 19:38:40', '', 'Workshop lessen', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-04-09 21:38:40', '2017-04-09 19:38:40', '', 58, 'http://localhost/villapinedo/2017/04/09/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-04-09 21:38:56', '2017-04-09 19:38:56', '', 'Opdrachten', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-04-09 21:38:56', '2017-04-09 19:38:56', '', 58, 'http://localhost/villapinedo/2017/04/09/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-04-09 21:39:58', '2017-04-09 19:39:58', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a>', 'Week 1 - Het gesprek voorbereiden 1', '', 'publish', 'closed', 'closed', '', 'week-1-het-gesprek-voorbereiden-1', '', '', '2017-04-10 01:35:24', '2017-04-09 23:35:24', '', 58, 'http://localhost/villapinedo/?page_id=61', 0, 'page', '', 0),
(62, 1, '2017-04-09 21:39:58', '2017-04-09 19:39:58', 'n dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n&nbsp;\r\n\r\n&lt;iframe width=”765″ height=”431″ src=”//player.vimeo.com/video/88083726″&gt;&lt;/iframe&gt;\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.', 'Week 1 - Het gesprek voorbereiden', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-09 21:39:58', '2017-04-09 19:39:58', '', 61, 'http://localhost/villapinedo/2017/04/09/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-04-10 01:24:25', '2017-04-09 23:24:25', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\n\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\n\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\n<h3>DOEL VAN DEZE WEEK</h3>\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\n\n<a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/workshop/week-1/">Verder</a>', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2017-04-10 01:24:25', '2017-04-09 23:24:25', '', 61, 'http://localhost/villapinedo/2017/04/09/61-autosave-v1/', 0, 'revision', '', 0),
(64, 1, '2017-04-09 21:42:25', '2017-04-09 19:42:25', 'n dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 450px; height: 366px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.', 'Week 1 - Het gesprek voorbereiden', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-09 21:42:25', '2017-04-09 19:42:25', '', 61, 'http://localhost/villapinedo/2017/04/09/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-04-09 21:54:07', '2017-04-09 19:54:07', 'n dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 450px; height: 366px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n[namaste-assignments lesson_id="9"]', 'Week 1 - Het gesprek voorbereiden', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-09 21:54:07', '2017-04-09 19:54:07', '', 61, 'http://localhost/villapinedo/2017/04/09/61-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-04-09 21:55:52', '2017-04-09 19:55:52', 'n dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n[namaste-assignments lesson_id="9"]', 'Week 1 - Het gesprek voorbereiden', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-09 21:55:52', '2017-04-09 19:55:52', '', 61, 'http://localhost/villapinedo/2017/04/09/61-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-04-09 22:16:35', '2017-04-09 20:16:35', '', 'Villa_Pinedo-Alleen_Op_De_Aarde', '', 'inherit', 'open', 'closed', '', 'villa_pinedo-alleen_op_de_aarde', '', '', '2017-04-09 22:16:35', '2017-04-09 20:16:35', '', 9, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Alleen_Op_De_Aarde.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-04-09 22:49:17', '2017-04-09 20:49:17', '', 'large-4_copy', '', 'inherit', 'open', 'closed', '', 'large-4_copy', '', '', '2017-04-09 22:49:17', '2017-04-09 20:49:17', '', 9, 'http://localhost/villapinedo/wp-content/uploads/2017/04/large-4_copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-04-09 22:51:22', '2017-04-09 20:51:22', '', 'Weekoverzicht-Week2', '', 'inherit', 'open', 'closed', '', 'weekoverzicht-week2', '', '', '2017-04-09 22:51:22', '2017-04-09 20:51:22', '', 9, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Weekoverzicht-Week2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-04-09 23:45:42', '2017-04-09 21:45:42', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="750" height="422"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>', 'Week 1 - Luister naar je kind', '', 'publish', 'closed', 'closed', '', 'week-1-luister-naar-je-kind', '', '', '2017-04-10 00:47:28', '2017-04-09 22:47:28', '', 58, 'http://localhost/villapinedo/?page_id=70', 0, 'page', '', 0),
(71, 1, '2017-04-09 23:45:42', '2017-04-09 21:45:42', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen', 'Week 1 - Luister naar je kind', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-04-09 23:45:42', '2017-04-09 21:45:42', '', 70, 'http://localhost/villapinedo/2017/04/09/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-04-09 23:54:54', '2017-04-09 21:54:54', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\n\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\n\n<object style="width: 780px; height: 439px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>', 'Week 1 - Luister naar je kind', '', 'inherit', 'closed', 'closed', '', '70-autosave-v1', '', '', '2017-04-09 23:54:54', '2017-04-09 21:54:54', '', 70, 'http://localhost/villapinedo/2017/04/09/70-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2017-04-09 23:52:51', '2017-04-09 21:52:51', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 320px; height: 180px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="320" height="180"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>', 'Week 1 - Luister naar je kind', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-04-09 23:52:51', '2017-04-09 21:52:51', '', 70, 'http://localhost/villapinedo/2017/04/09/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-04-09 23:55:05', '2017-04-09 21:55:05', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 780px; height: 439px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="780" height="439"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>', 'Week 1 - Luister naar je kind', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-04-09 23:55:05', '2017-04-09 21:55:05', '', 70, 'http://localhost/villapinedo/2017/04/09/70-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-04-09 23:55:41', '2017-04-09 21:55:41', 'Vandaag geven Robin, Rachel, Guynio, Zara, Milo, Marleen en Julia liefdevolle tips (3.20 minuten) over wat je als gescheiden ouder beter niet kunt doen. Je kunt dit filmpje ook samen met je kind(eren) bekijken. Vraag ze wat jij zou kunnen doen - of laten - om het makkelijker voor ze te maken.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="750" height="422"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88089981&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>', 'Week 1 - Luister naar je kind', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-04-09 23:55:41', '2017-04-09 21:55:41', '', 70, 'http://localhost/villapinedo/2017/04/09/70-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-04-09 23:57:33', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-09 23:57:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=acf-field-group&p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2017-04-09 23:58:35', '2017-04-09 21:58:35', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:14:"namaste_lesson";}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Volgende week', 'volgende_week', 'publish', 'closed', 'closed', '', 'field_58eaae64f5719', '', '', '2017-04-09 23:58:35', '2017-04-09 21:58:35', '', 51, 'http://localhost/villapinedo/?post_type=acf-field&p=77', 2, 'acf-field', '', 0),
(78, 1, '2017-04-10 00:42:54', '2017-04-09 22:42:54', '', '02 Alles is anders', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2017-04-10 00:42:54', '2017-04-09 22:42:54', '', 13, 'http://localhost/villapinedo/2017/04/10/13-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-04-10 00:43:38', '2017-04-09 22:43:38', '', 'Villa_Pinedo_Ik_Ben_def', '', 'inherit', 'open', 'closed', '', 'villa_pinedo_ik_ben_def', '', '', '2017-04-10 00:43:38', '2017-04-09 22:43:38', '', 13, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo_Ik_Ben_def.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-04-10 00:56:22', '2017-04-09 22:56:22', '', 'Villa_Pinedo-Ik_Wilde_Niet_Scheiden', '', 'inherit', 'open', 'closed', '', 'villa_pinedo-ik_wilde_niet_scheiden', '', '', '2017-04-10 00:56:22', '2017-04-09 22:56:22', '', 14, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Ik_Wilde_Niet_Scheiden.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-04-10 00:58:09', '2017-04-09 22:58:09', '', 'Open_brief-Villa_Pinedo', '', 'inherit', 'open', 'closed', '', 'open_brief-villa_pinedo', '', '', '2017-04-10 00:58:09', '2017-04-09 22:58:09', '', 14, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Open_brief-Villa_Pinedo.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-04-10 01:00:22', '2017-04-09 23:00:22', '', 'Villa_Pinedo-Word_Dan_Gelukkig', '', 'inherit', 'open', 'closed', '', 'villa_pinedo-word_dan_gelukkig', '', '', '2017-04-10 01:00:22', '2017-04-09 23:00:22', '', 15, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Villa_Pinedo-Word_Dan_Gelukkig.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-04-10 01:03:56', '2017-04-09 23:03:56', '', 'Tips_voor_Stiefouders-week5', '', 'inherit', 'open', 'closed', '', 'tips_voor_stiefouders-week5', '', '', '2017-04-10 01:03:56', '2017-04-09 23:03:56', '', 16, 'http://localhost/villapinedo/wp-content/uploads/2017/04/Tips_voor_Stiefouders-week5.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-04-10 01:07:40', '2017-04-09 23:07:40', '', '06 Rechten', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2017-04-10 01:07:40', '2017-04-09 23:07:40', '', 17, 'http://localhost/villapinedo/2017/04/10/17-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2017-04-10 01:13:55', '2017-04-09 23:13:55', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n[namaste-assignments lesson_id="9"]', 'Week 1 - Het gesprek voorbereiden', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:13:55', '2017-04-09 23:13:55', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-04-10 01:14:18', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-04-10 01:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?post_type=namaste_lesson&p=86', 0, 'namaste_lesson', '', 0),
(87, 1, '2017-04-10 01:15:30', '2017-04-09 23:15:30', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\nVerder', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:15:30', '2017-04-09 23:15:30', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-04-10 01:15:40', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-10 01:15:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/villapinedo/?page_id=88', 0, 'page', '', 0);
INSERT INTO `vpi17_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2017-04-10 01:17:33', '2017-04-09 23:17:33', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n\r\n<hr />\r\n\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /></strong>\r\n\r\nMeer lezen?\r\nOp pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-3/">Verder</a>', 'Week 1 – Het gesprek voorbereiden 2', '', 'publish', 'closed', 'closed', '', 'week-1-het-gesprek-voorbereiden-2', '', '', '2017-04-10 01:37:03', '2017-04-09 23:37:03', '', 0, 'http://localhost/villapinedo/?page_id=89', 0, 'page', '', 0),
(90, 1, '2017-04-10 01:17:33', '2017-04-09 23:17:33', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" />\r\n\r\nMeer lezen?\r\n</strong>Op pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.', 'Week 1 – Het gesprek voorbereiden 2', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-04-10 01:17:33', '2017-04-09 23:17:33', '', 89, 'http://localhost/villapinedo/2017/04/10/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-04-10 01:20:00', '2017-04-09 23:20:00', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /></strong>\r\n\r\nMeer lezen?\r\nOp pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.', 'Week 1 – Het gesprek voorbereiden 2', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-04-10 01:20:00', '2017-04-09 23:20:00', '', 89, 'http://localhost/villapinedo/2017/04/10/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-04-10 01:22:11', '2017-04-09 23:22:11', '<h3>Opdracht 1</h3>\r\n<strong>Handig om vooraf te bedenken</strong>\r\n\r\nHet gesprek waarin ouders aankondigen dat ze uit elkaar gaan is voor kinderen een belangrijk moment. Zoals je van de kinderen in het filmpje hebt kunnen horen, is het een gesprek wat zij zich heel goed kunnen herinneren. Bereid het gesprek daarom goed voor. Mochten ze omiddellijk vragen stellen en hun onzekerheid tonen, dan kun jij in elk geval direct antwoord geven. Bedenk alvast wat je kunt antwoorden als je kind met een van deze vragen komt. Ook al weet je sommige antwoorden nog niet, bedenk dan in ieder geval hoe jullie leven er de komende maand uit zal zien.\r\n\r\nVerplaats het schuifje naar links als jullie er, als ouders, nog niet uit zijn en naar rechts als jullie het eens zijn.\r\n\r\n[namaste-assignments lesson_id="9"]\r\n\r\n<hr />\r\n\r\nOpdracht 2\r\n\r\n<strong>Het verhaal</strong>\r\n\r\nBeschrijf hieronder waarom jullie gaan scheiden of (al lang) gescheiden zijn. Verbeter het zo vaak als je wilt totdat je een verhaal hebt dat je kinderen begrijpen en aan hun vrienden zouden kunnen vertellen. Laat het verhaal lezen aan iemand die je vertrouwt en vraag om eerlijke feedback op onderstaande punten. Enkele tips:\r\n<ul>\r\n 	<li>Leg uit dat jullie als partners uit elkaar gaan, niet als ouders.</li>\r\n 	<li>Vertel wat er gaat veranderen en wat hetzelfde blijft.</li>\r\n 	<li>Probeer je emoties te beheersen, zodat je kind(eren) de ruimte krijgen om hun eigen gevoelens te uiten. En jij je kind(eren) kan troosten en niet omgekeerd.</li>\r\n 	<li>Maak elkaar geen verwijten, dat is pijnlijk voor je kind(eren). Dus niet: ''Vraag maar aan je moeder waarom ze wil scheiden''.</li>\r\n 	<li>Je kan schuldgevoelens bij je kind(eren) voorkomen door uit te leggen dat het niet zijn of haar schuld is.</li>\r\n</ul>\r\nSchrijf je eigen verhaal in het grijze veld. Het wordt automatisch opgeslagen zodra je op verder drukt. En je kunt het altijd teruglezen en aanpassen vanuit je weekoverzicht.', 'Week 1 – het gesprek voorbereiden 3', '', 'publish', 'closed', 'closed', '', 'week-1-het-gesprek-voorbereiden-3', '', '', '2017-04-10 01:28:02', '2017-04-09 23:28:02', '', 0, 'http://localhost/villapinedo/?page_id=92', 0, 'page', '', 0),
(93, 1, '2017-04-10 01:22:11', '2017-04-09 23:22:11', '', 'Week 1 – het gesprek voorbereiden 3', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-04-10 01:22:11', '2017-04-09 23:22:11', '', 92, 'http://localhost/villapinedo/2017/04/10/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-04-10 01:22:52', '2017-04-09 23:22:52', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n<a href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a>', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:22:52', '2017-04-09 23:22:52', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-04-10 01:23:23', '2017-04-09 23:23:23', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n<p style="text-align: right;"><a class="btn" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a></p>', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:23:23', '2017-04-09 23:23:23', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-04-10 01:24:39', '2017-04-09 23:24:39', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/workshop/week-1/">Verder</a>', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:24:39', '2017-04-09 23:24:39', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-04-10 01:25:55', '2017-04-09 23:25:55', '<strong>Handig om vooraf te bedenken</strong>\r\n\r\nHet gesprek waarin ouders aankondigen dat ze uit elkaar gaan is voor kinderen een belangrijk moment. Zoals je van de kinderen in het filmpje hebt kunnen horen, is het een gesprek wat zij zich heel goed kunnen herinneren. Bereid het gesprek daarom goed voor. Mochten ze omiddellijk vragen stellen en hun onzekerheid tonen, dan kun jij in elk geval direct antwoord geven. Bedenk alvast wat je kunt antwoorden als je kind met een van deze vragen komt. Ook al weet je sommige antwoorden nog niet, bedenk dan in ieder geval hoe jullie leven er de komende maand uit zal zien.\r\n\r\nVerplaats het schuifje naar links als jullie er, als ouders, nog niet uit zijn en naar rechts als jullie het eens zijn.\r\n\r\n[namaste-assignments lesson_id="9"]', 'Week 1 – het gesprek voorbereiden 3', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-04-10 01:25:55', '2017-04-09 23:25:55', '', 92, 'http://localhost/villapinedo/2017/04/10/92-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-04-10 01:26:57', '2017-04-09 23:26:57', '<h3>Opdracht 1</h3>\n<strong>Handig om vooraf te bedenken</strong>\n\nHet gesprek waarin ouders aankondigen dat ze uit elkaar gaan is voor kinderen een belangrijk moment. Zoals je van de kinderen in het filmpje hebt kunnen horen, is het een gesprek wat zij zich heel goed kunnen herinneren. Bereid het gesprek daarom goed voor. Mochten ze omiddellijk vragen stellen en hun onzekerheid tonen, dan kun jij in elk geval direct antwoord geven. Bedenk alvast wat je kunt antwoorden als je kind met een van deze vragen komt. Ook al weet je sommige antwoorden nog niet, bedenk dan in ieder geval hoe jullie leven er de komende maand uit zal zien.\n\nVerplaats het schuifje naar links als jullie er, als ouders, nog niet uit zijn en naar rechts als jullie het eens zijn.\n\n[namaste-assignments lesson_id="9"]\n\n<hr />\n\nOpdracht 2\n\n<strong>Het verhaal</strong>\n\nBeschrijf hieronder waarom jullie gaan scheiden of (al lang) gescheiden zijn. Verbeter het zo vaak als je wilt totdat je een verhaal hebt dat je kinderen begrijpen en aan hun vrienden zouden kunnen vertellen. Laat het verhaal lezen aan iemand die je vertrouwt en vraag om eerlijke feedback op onderstaande punten. Enkele tips:\n<ul>\n 	<li>Leg uit dat jullie als partners uit elkaar gaan, niet als ouders.</li>\n 	<li>Vertel wat er gaat veranderen en wat hetzelfde blijft.</li>\n 	<li>Probeer je emoties te beheersen, zodat je kind(eren) de ruimte krijgen om hun eigen gevoelens te uiten. En jij je kind(eren) kan troosten en niet omgekeerd.</li>\n 	<li>Maak elkaar geen verwijten, dat is pijnlijk voor je kind(eren). Dus niet: ''Vraag maar aan je moeder waarom ze wil scheiden''.</li>\n 	<li>Je kan schuldgevoelens bij je kind(eren) voorkomen door uit te leggen dat het niet zijn of haar schuld is.</li>\n</ul>\nSchrijf je eigen verhaal in het grijze veld. Het wordt automatisch opgeslagen zodra je op verder drukt. En je kunt het altijd teruglezen en aanpassen vanuit je weekoverzicht.', 'Week 1 – het gesprek voorbereiden 3', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2017-04-10 01:26:57', '2017-04-09 23:26:57', '', 92, 'http://localhost/villapinedo/2017/04/10/92-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2017-04-10 01:28:02', '2017-04-09 23:28:02', '<h3>Opdracht 1</h3>\r\n<strong>Handig om vooraf te bedenken</strong>\r\n\r\nHet gesprek waarin ouders aankondigen dat ze uit elkaar gaan is voor kinderen een belangrijk moment. Zoals je van de kinderen in het filmpje hebt kunnen horen, is het een gesprek wat zij zich heel goed kunnen herinneren. Bereid het gesprek daarom goed voor. Mochten ze omiddellijk vragen stellen en hun onzekerheid tonen, dan kun jij in elk geval direct antwoord geven. Bedenk alvast wat je kunt antwoorden als je kind met een van deze vragen komt. Ook al weet je sommige antwoorden nog niet, bedenk dan in ieder geval hoe jullie leven er de komende maand uit zal zien.\r\n\r\nVerplaats het schuifje naar links als jullie er, als ouders, nog niet uit zijn en naar rechts als jullie het eens zijn.\r\n\r\n[namaste-assignments lesson_id="9"]\r\n\r\n<hr />\r\n\r\nOpdracht 2\r\n\r\n<strong>Het verhaal</strong>\r\n\r\nBeschrijf hieronder waarom jullie gaan scheiden of (al lang) gescheiden zijn. Verbeter het zo vaak als je wilt totdat je een verhaal hebt dat je kinderen begrijpen en aan hun vrienden zouden kunnen vertellen. Laat het verhaal lezen aan iemand die je vertrouwt en vraag om eerlijke feedback op onderstaande punten. Enkele tips:\r\n<ul>\r\n 	<li>Leg uit dat jullie als partners uit elkaar gaan, niet als ouders.</li>\r\n 	<li>Vertel wat er gaat veranderen en wat hetzelfde blijft.</li>\r\n 	<li>Probeer je emoties te beheersen, zodat je kind(eren) de ruimte krijgen om hun eigen gevoelens te uiten. En jij je kind(eren) kan troosten en niet omgekeerd.</li>\r\n 	<li>Maak elkaar geen verwijten, dat is pijnlijk voor je kind(eren). Dus niet: ''Vraag maar aan je moeder waarom ze wil scheiden''.</li>\r\n 	<li>Je kan schuldgevoelens bij je kind(eren) voorkomen door uit te leggen dat het niet zijn of haar schuld is.</li>\r\n</ul>\r\nSchrijf je eigen verhaal in het grijze veld. Het wordt automatisch opgeslagen zodra je op verder drukt. En je kunt het altijd teruglezen en aanpassen vanuit je weekoverzicht.', 'Week 1 – het gesprek voorbereiden 3', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-04-10 01:28:02', '2017-04-09 23:28:02', '', 92, 'http://localhost/villapinedo/2017/04/10/92-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-04-10 01:35:24', '2017-04-09 23:35:24', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.\r\n\r\nOm de privacy van de kinderen beschermen moet je dit wachtwoord invullen om de video te kunnen bekijken: ogenvankinderen\r\n\r\n<object style="width: 750px; height: 422px;" data="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" type="application/x-shockwave-flash" width="300" height="150"><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=88083726&amp;server=vimeo.com&amp;show_title=0&amp;show_byline=0&amp;show_portrait=0&amp;color=ff9933&amp;fullscreen=1" allowfullscreen="allowfullscreen" allowscriptaccess="always" /></object>\r\n<h3>DOEL VAN DEZE WEEK</h3>\r\nDeze week krijg je tools aangereikt om het gesprek zo zorgvuldig mogelijk voor te bereiden en te voeren. Heb je dit gesprek al achter de rug? Ook al is het jaren geleden, dan nog is deze oefening zinvol. Bekijk het filmpje samen met je kind(eren) en vraag hoe zij het gesprek ervaren hebben.\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a>', 'Week 1 - Het gesprek voorbereiden 1', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-04-10 01:35:24', '2017-04-09 23:35:24', '', 61, 'http://localhost/villapinedo/2017/04/10/61-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-04-10 01:36:31', '2017-04-09 23:36:31', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n\r\n<hr />\r\n\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /></strong>\r\n\r\nMeer lezen?\r\nOp pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.\r\n\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a>', 'Week 1 – Het gesprek voorbereiden 2', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-04-10 01:36:31', '2017-04-09 23:36:31', '', 89, 'http://localhost/villapinedo/2017/04/10/89-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-04-10 01:36:47', '2017-04-09 23:36:47', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n\r\n<hr />\r\n\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /></strong>\r\n\r\nMeer lezen?\r\nOp pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-2/">Verder</a>', 'Week 1 – Het gesprek voorbereiden 2', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-04-10 01:36:47', '2017-04-09 23:36:47', '', 89, 'http://localhost/villapinedo/2017/04/10/89-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2017-04-10 01:37:03', '2017-04-09 23:37:03', '<h2>ADVIES VAN KINDEREN</h2>\r\nDe meeste kinderen kunnen zich het moment van het slechte nieuws nog precies herinneren. Hoe ze zich voelden, wat hun ouders zeiden of deden. Of juist niet deden. Een gesprek om goed voor te bereiden dus. Hiervoor een aantal tips van kinderen zelf:\r\n<ul>\r\n 	<li>Kies een rustig moment en een rustige plek.</li>\r\n 	<li>Vertel ons het slechte nieuws samen.</li>\r\n 	<li>Vertel een verhaal waar je allebei achter staat in een taal die wij begrijpen.</li>\r\n 	<li>Luister en kijk goed naar onze reacties. Laat merken dat onze mening en gevoelens belangrijk voor je zijn.</li>\r\n 	<li>Maak duidelijk dat het niet onze schuld is, liever een keer te vaak dan te weinig.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h5><img src="http://workshop.villapinedo.nl/userfiles/images/Quote_2_Joppe_DEF.jpg" width="765" height="109" border="0" /></h5>\r\n\r\n<hr />\r\n\r\n<h2>ADVIES VAN DE KINDERTHERAPEUT</h2>\r\nVaak krijgen ouders strijd over wat het verhaal moet zijn naar de kinderen toe. Het is begrijpelijk dat het door pijn en verdriet lastig is om je eigenbelang los te zien van de behoefte van je kind(eren). Want wat is een eerlijk verhaal naar de kinderen toe?\r\n\r\nZíj vindt het eerlijk om te vertellen dat hij al een half jaar een ander heeft. Híj vindt dat er helemaal los van staan en vindt het eerlijk om te vertellen dat ze niet meer van elkaar houden. Als je er samen niet uitkomt, is het beter je kind(eren) een uitgeklede versie te geven dan een tegenstrijdig verhaal te vertellen.\r\n\r\nBesef dat je kinderen jullie allebei heel hard nodig hebben, juist na het bekendmaken van de scheiding. Het overeind houden van de andere ouder, ook al heeft hij of zij je als partner nog zo''n pijn gedaan, is een enorme maar belangrijke klus. En daar gaat deze workshop je natuurlijk bij helpen. Klik op de oranje button onderaan de pagina om verder te gaan naar de opdrachten.\r\n\r\n<strong>\r\n</strong><strong><img class="alignleft" src="http://workshop.villapinedo.nl.testbyte.nl/userfiles/images/Omslag_Pinedo__Vollinga_3D_pers-fixed.jpg" width="88" height="123" border="0" /></strong>\r\n\r\nMeer lezen?\r\nOp pagina 14-35 in het boek ''Aan alle gescheiden ouders'' kun je meer lezen over hoe je je goed voorbereidt op het gesprek.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<a class="btn" style="float: left;" href="http://localhost/villapinedo/workshop/week-1/">Weekoverzicht</a><a class="btn" style="float: right;" href="http://localhost/villapinedo/week-1-het-gesprek-voorbereiden-3/">Verder</a>', 'Week 1 – Het gesprek voorbereiden 2', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-04-10 01:37:03', '2017-04-09 23:37:03', '', 89, 'http://localhost/villapinedo/2017/04/10/89-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2017-04-13 22:01:59', '2017-04-13 20:01:59', '', 'Week 1 UNIT', '', 'publish', 'closed', 'closed', '', 'week-1-unit', '', '', '2017-04-13 22:01:59', '2017-04-13 20:01:59', '', 0, 'http://localhost/villapinedo/?post_type=course_unit&#038;p=104', 0, 'course_unit', '', 0),
(105, 1, '2017-04-13 22:01:59', '2017-04-13 20:01:59', '', 'Week 1 UNIT', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2017-04-13 22:01:59', '2017-04-13 20:01:59', '', 104, 'http://localhost/villapinedo/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-04-13 22:11:10', '0000-00-00 00:00:00', '', 'Wee', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-04-13 22:11:10', '2017-04-13 20:11:10', '', 0, 'http://localhost/villapinedo/?page_id=106', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_termmeta`
--

CREATE TABLE `vpi17_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_terms`
--

CREATE TABLE `vpi17_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_terms`
--

INSERT INTO `vpi17_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geen categorie', 'geen-categorie', 0),
(2, 'Hoofdmenu', 'hoofdmenu', 0),
(3, 'De Website', 'de-website', 0),
(4, 'Social Media', 'social-media', 0),
(7, 'Villa Pinedo', 'villa-pinedo', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_term_relationships`
--

CREATE TABLE `vpi17_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_term_relationships`
--

INSERT INTO `vpi17_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
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
(48, 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_term_taxonomy`
--

CREATE TABLE `vpi17_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_term_taxonomy`
--

INSERT INTO `vpi17_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_usermeta`
--

CREATE TABLE `vpi17_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_usermeta`
--

INSERT INTO `vpi17_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(20, 1, 'vpi17_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce&post_dfw=off'),
(21, 1, 'vpi17_user-settings-time', '1491781002'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'acf_user_settings', 'a:0:{}'),
(24, 1, 'meta-box-order_namaste_lesson', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:95:"acf-group_58ea89c5c762a,namaste_meta,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_namaste_lesson', '2'),
(26, 2, 'nickname', 'bdegeus'),
(27, 2, 'first_name', 'Brian'),
(28, 2, 'last_name', 'de Geus'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'vpi17_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(37, 2, 'vpi17_user_level', '0'),
(38, 2, 'dismissed_wp_pointers', ''),
(39, 2, 'session_tokens', 'a:1:{s:64:"baa79737aaf6a14c361c31b29b30469b5fdb37df12db90a08f1815b44536cae6";a:4:{s:10:"expiration";i:1492283029;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36";s:5:"login";i:1492110229;}}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_users`
--

CREATE TABLE `vpi17_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_users`
--

INSERT INTO `vpi17_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pinedoadmin', '$P$B.kEFblij39QoszD2IRzZhlFbrkvJK/', 'pinedoadmin', 'brian@geusmedia.nl', '', '2017-04-08 18:05:40', '', 0, 'pinedoadmin'),
(2, 'bdegeus', '$P$BVy08yz6QbSxW.Yg7DhqAqdzjEqsCo0', 'bdegeus', 'briandegeus@gmail.com', '', '2017-04-13 19:03:34', '1492110216:$P$B1e6q0k51JsSvwncq5Gloe9gHBqwFE0', 0, 'Brian de Geus');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_certificates`
--

CREATE TABLE `vpi17_wpcw_certificates` (
  `cert_user_id` int(11) NOT NULL,
  `cert_course_id` int(11) NOT NULL,
  `cert_access_key` varchar(50) NOT NULL,
  `cert_generated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_certificates`
--

INSERT INTO `vpi17_wpcw_certificates` (`cert_user_id`, `cert_course_id`, `cert_access_key`, `cert_generated`) VALUES
(2, 1, '8bc05109d6796985ce5e767bb2dff17d', '2017-04-13 22:16:26');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_courses`
--

CREATE TABLE `vpi17_wpcw_courses` (
  `course_id` int(11) UNSIGNED NOT NULL,
  `course_title` varchar(150) NOT NULL,
  `course_desc` text,
  `course_opt_completion_wall` varchar(20) NOT NULL,
  `course_opt_use_certificate` varchar(20) NOT NULL DEFAULT 'no_certs',
  `course_opt_user_access` varchar(20) NOT NULL,
  `course_unit_count` int(11) UNSIGNED DEFAULT '0',
  `course_from_name` varchar(150) NOT NULL,
  `course_from_email` varchar(150) NOT NULL,
  `course_to_email` varchar(150) NOT NULL,
  `course_opt_prerequisites` longtext NOT NULL,
  `course_message_unit_complete` text,
  `course_message_course_complete` text,
  `course_message_unit_not_logged_in` text,
  `course_message_unit_pending` text,
  `course_message_unit_no_access` text,
  `course_message_prerequisite_not_met` text,
  `course_message_unit_not_yet` text,
  `course_message_unit_not_yet_dripfeed` text,
  `course_message_quiz_open_grading_blocking` text,
  `course_message_quiz_open_grading_non_blocking` text,
  `email_complete_module_option_admin` varchar(20) NOT NULL,
  `email_complete_module_option` varchar(20) NOT NULL,
  `email_complete_module_subject` varchar(300) NOT NULL,
  `email_complete_module_body` text,
  `email_complete_course_option_admin` varchar(20) NOT NULL,
  `email_complete_course_option` varchar(20) NOT NULL,
  `email_complete_course_subject` varchar(300) NOT NULL,
  `email_complete_course_body` text,
  `email_quiz_grade_option` varchar(20) NOT NULL,
  `email_quiz_grade_subject` varchar(300) NOT NULL,
  `email_quiz_grade_body` text,
  `email_complete_course_grade_summary_subject` varchar(300) NOT NULL,
  `email_complete_course_grade_summary_body` text,
  `email_unit_unlocked_subject` varchar(300) NOT NULL,
  `email_unit_unlocked_body` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_courses`
--

INSERT INTO `vpi17_wpcw_courses` (`course_id`, `course_title`, `course_desc`, `course_opt_completion_wall`, `course_opt_use_certificate`, `course_opt_user_access`, `course_unit_count`, `course_from_name`, `course_from_email`, `course_to_email`, `course_opt_prerequisites`, `course_message_unit_complete`, `course_message_course_complete`, `course_message_unit_not_logged_in`, `course_message_unit_pending`, `course_message_unit_no_access`, `course_message_prerequisite_not_met`, `course_message_unit_not_yet`, `course_message_unit_not_yet_dripfeed`, `course_message_quiz_open_grading_blocking`, `course_message_quiz_open_grading_non_blocking`, `email_complete_module_option_admin`, `email_complete_module_option`, `email_complete_module_subject`, `email_complete_module_body`, `email_complete_course_option_admin`, `email_complete_course_option`, `email_complete_course_subject`, `email_complete_course_body`, `email_quiz_grade_option`, `email_quiz_grade_subject`, `email_quiz_grade_body`, `email_complete_course_grade_summary_subject`, `email_complete_course_grade_summary_body`, `email_unit_unlocked_subject`, `email_unit_unlocked_body`) VALUES
(1, 'VOOR GESCHEIDEN OUDERS', 'Wat ontzettend goed dat je besloten hebt om deze online workshop VOOR ALLE GESCHEIDEN OUDERS te volgen.', 'completion_wall', 'no_certs', 'default_hide', 1, 'Villa Pinedo Workshop', 'brian@geusmedia.nl', 'brian@geusmedia.nl', '', 'You have now completed this unit.', 'You have now completed the whole course. Congratulations!', 'You cannot view this unit as you''re not logged in yet.', 'Have you completed this unit? Then mark this unit as completed.', 'Sorry, but you''re not allowed to access this course.', 'This course can not be accessed until the prerequisites for this course are complete.', 'You need to complete the previous unit first.', 'This unit isn''t available just yet. Please check back in about {UNIT_UNLOCKED_TIME}.', 'Your quiz has been submitted for grading by the course instructor. Once your grade has been entered, you will be able access the next unit.', 'Your quiz has been submitted for grading by the course instructor. You have now completed this unit.', 'send_email', 'send_email', 'Module {MODULE_TITLE} - Complete.', 'Hi {USER_NAME}\r\n\r\nGreat work for completing the "{MODULE_TITLE}" module!\r\n\r\n{SITE_NAME}\r\n{SITE_URL}', 'send_email', 'send_email', 'Course {COURSE_TITLE} - Complete', 'Hi {USER_NAME}\r\n\r\nGreat work for completing the "{COURSE_TITLE}" training course! Fantastic!\r\n\r\n{SITE_NAME}\r\n{SITE_URL}', 'send_email', '{COURSE_TITLE} - Your Quiz Grade - For "{QUIZ_TITLE}"', 'Hi {USER_NAME}\r\n\r\nYour grade for the "{QUIZ_TITLE}" quiz is:\r\n{QUIZ_GRADE}\r\n\r\nThis was for the quiz at the end of this unit:\r\n{UNIT_URL}\r\n\r\n{QUIZ_RESULT_DETAIL}\r\n\r\n{SITE_NAME}\r\n{SITE_URL}', 'Your final grade summary for "{COURSE_TITLE}"', 'Hi {USER_NAME}\r\n\r\nCongratulations on completing the "{COURSE_TITLE}" training course! Fantastic!\r\n\r\nYour final grade is: {CUMULATIVE_GRADE}\r\n\r\nHere is a summary of your quiz results:\r\n{QUIZ_SUMMARY}\r\n\r\nYou can download your certificate here:\r\n{CERTIFICATE_LINK}\r\n\r\nI hope you enjoyed the course!\r\n\r\n{SITE_NAME}\r\n{SITE_URL}', 'Your next unit ({UNIT_TITLE}) is now available!', 'Hi {USER_NAME}\r\n\r\nGood news! You can now access the next unit!\r\n\r\nThe unit called "{UNIT_TITLE}" from "{COURSE_TITLE}" is now available for you to access.\r\n\r\nTo access the unit, just click on this link:\r\n{UNIT_URL}\r\n\r\nThanks!\r\n\r\n{SITE_NAME}\r\n{SITE_URL}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_member_levels`
--

CREATE TABLE `vpi17_wpcw_member_levels` (
  `course_id` int(11) NOT NULL,
  `member_level_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_modules`
--

CREATE TABLE `vpi17_wpcw_modules` (
  `module_id` int(11) UNSIGNED NOT NULL,
  `parent_course_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `module_title` varchar(150) NOT NULL,
  `module_desc` text,
  `module_order` int(11) UNSIGNED NOT NULL DEFAULT '10000',
  `module_number` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_modules`
--

INSERT INTO `vpi17_wpcw_modules` (`module_id`, `parent_course_id`, `module_title`, `module_desc`, `module_order`, `module_number`) VALUES
(1, 1, 'Week 1', 'HET GESPREK', 1, 1),
(2, 1, 'Week 2', 'Alles is anders', 2, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_question_random_lock`
--

CREATE TABLE `vpi17_wpcw_question_random_lock` (
  `question_user_id` int(11) UNSIGNED NOT NULL,
  `rand_question_id` int(11) UNSIGNED NOT NULL,
  `parent_unit_id` int(11) UNSIGNED NOT NULL,
  `question_selection_list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_question_tags`
--

CREATE TABLE `vpi17_wpcw_question_tags` (
  `question_tag_id` bigint(20) UNSIGNED NOT NULL,
  `question_tag_name` varchar(150) NOT NULL,
  `question_tag_usage` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_question_tags_map`
--

CREATE TABLE `vpi17_wpcw_question_tags_map` (
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_queue_dripfeed`
--

CREATE TABLE `vpi17_wpcw_queue_dripfeed` (
  `queue_id` bigint(20) UNSIGNED NOT NULL,
  `queue_unit_id` int(11) UNSIGNED NOT NULL,
  `queue_course_id` int(11) UNSIGNED NOT NULL,
  `queue_user_id` int(11) NOT NULL,
  `queue_trigger_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `queue_enqueued_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_quizzes`
--

CREATE TABLE `vpi17_wpcw_quizzes` (
  `quiz_id` int(11) UNSIGNED NOT NULL,
  `quiz_title` varchar(150) NOT NULL,
  `quiz_desc` text,
  `parent_unit_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `parent_course_id` int(11) NOT NULL DEFAULT '0',
  `quiz_type` varchar(15) NOT NULL,
  `quiz_pass_mark` int(11) NOT NULL DEFAULT '0',
  `quiz_show_answers` varchar(15) NOT NULL DEFAULT 'no_answers',
  `quiz_show_survey_responses` varchar(15) NOT NULL DEFAULT 'no_responses',
  `quiz_attempts_allowed` int(11) NOT NULL DEFAULT '-1',
  `show_answers_settings` varchar(500) NOT NULL DEFAULT '',
  `quiz_paginate_questions` varchar(15) NOT NULL DEFAULT 'no_paging',
  `quiz_paginate_questions_settings` varchar(500) NOT NULL DEFAULT '',
  `quiz_timer_mode` varchar(25) NOT NULL DEFAULT 'no_timer',
  `quiz_timer_mode_limit` int(11) UNSIGNED NOT NULL DEFAULT '15',
  `quiz_results_downloadable` varchar(10) NOT NULL DEFAULT 'on',
  `quiz_results_by_tag` varchar(10) NOT NULL DEFAULT 'on',
  `quiz_results_by_timer` varchar(10) NOT NULL DEFAULT 'on',
  `quiz_recommended_score` varchar(20) NOT NULL DEFAULT 'no_recommended',
  `show_recommended_percentage` int(10) UNSIGNED NOT NULL DEFAULT '50'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_quizzes`
--

INSERT INTO `vpi17_wpcw_quizzes` (`quiz_id`, `quiz_title`, `quiz_desc`, `parent_unit_id`, `parent_course_id`, `quiz_type`, `quiz_pass_mark`, `quiz_show_answers`, `quiz_show_survey_responses`, `quiz_attempts_allowed`, `show_answers_settings`, `quiz_paginate_questions`, `quiz_paginate_questions_settings`, `quiz_timer_mode`, `quiz_timer_mode_limit`, `quiz_results_downloadable`, `quiz_results_by_tag`, `quiz_results_by_timer`, `quiz_recommended_score`, `show_recommended_percentage`) VALUES
(1, 'Week 1 - Opdracht 1: Handig om vooraf te bedenken', 'In dit filmpje (2.40 minuten) vertellen Robin (15), Zara (17), Milo (10), Rachel (12) en Vincent (16) hoe zij het gesprek beleefden waarin hun ouders vertelden dat ze gingen scheiden.', 104, 1, 'survey', 50, 'no_answers', 'show_responses', -1, 'a:6:{s:19:"show_correct_answer";s:2:"on";s:16:"show_user_answer";s:2:"on";s:16:"show_explanation";s:2:"on";s:27:"show_other_possible_answers";s:2:"on";s:12:"mark_answers";s:2:"on";s:18:"show_results_later";s:2:"on";}', 'no_paging', 'a:3:{s:30:"allow_review_before_submission";s:2:"on";s:30:"allow_students_to_answer_later";s:2:"on";s:28:"allow_nav_previous_questions";s:2:"on";}', 'no_timer', 15, 'on', 'on', 'on', 'no_recommended', 50);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_quizzes_feedback`
--

CREATE TABLE `vpi17_wpcw_quizzes_feedback` (
  `qfeedback_id` int(11) UNSIGNED NOT NULL,
  `qfeedback_tag_id` bigint(20) UNSIGNED NOT NULL,
  `qfeedback_quiz_id` int(1) UNSIGNED NOT NULL,
  `qfeedback_summary` varchar(300) NOT NULL,
  `qfeedback_score_type` varchar(20) NOT NULL DEFAULT 'below',
  `qfeedback_score_grade` int(11) UNSIGNED NOT NULL DEFAULT '50',
  `qfeedback_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_quizzes_questions`
--

CREATE TABLE `vpi17_wpcw_quizzes_questions` (
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `question_type` varchar(20) NOT NULL DEFAULT 'multi',
  `question_question` text,
  `question_answers` text,
  `question_data_answers` text,
  `question_correct_answer` varchar(300) NOT NULL,
  `question_answer_type` varchar(50) NOT NULL DEFAULT '',
  `question_answer_hint` text,
  `question_answer_explanation` text,
  `question_image` varchar(300) NOT NULL DEFAULT '',
  `question_answer_file_types` varchar(300) NOT NULL DEFAULT '',
  `question_usage_count` int(11) UNSIGNED DEFAULT '0',
  `question_expanded_count` int(11) UNSIGNED DEFAULT '1',
  `question_multi_random_enable` int(2) UNSIGNED DEFAULT '0',
  `question_multi_random_count` int(4) UNSIGNED DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_quizzes_questions`
--

INSERT INTO `vpi17_wpcw_quizzes_questions` (`question_id`, `question_type`, `question_question`, `question_answers`, `question_data_answers`, `question_correct_answer`, `question_answer_type`, `question_answer_hint`, `question_answer_explanation`, `question_image`, `question_answer_file_types`, `question_usage_count`, `question_expanded_count`, `question_multi_random_enable`, `question_multi_random_count`) VALUES
(1, 'multi', 'Wie gaat waar wonen?', '', 'a:10:{i:1;a:1:{s:6:"answer";s:4:"MQ==";}i:2;a:1:{s:6:"answer";s:4:"Mg==";}i:3;a:1:{s:6:"answer";s:4:"Mw==";}i:4;a:1:{s:6:"answer";s:4:"NA==";}i:5;a:1:{s:6:"answer";s:4:"NQ==";}i:6;a:1:{s:6:"answer";s:4:"Ng==";}i:7;a:1:{s:6:"answer";s:4:"Nw==";}i:8;a:1:{s:6:"answer";s:4:"OA==";}i:9;a:1:{s:6:"answer";s:4:"OQ==";}i:10;a:1:{s:6:"answer";s:4:"MTA=";}}', '', '', '', '', '', '', 1, 1, 0, 5),
(2, 'multi', 'Moet je kind naar een andere school?', '', 'a:10:{i:1;a:1:{s:6:"answer";s:4:"MQ==";}i:2;a:1:{s:6:"answer";s:4:"Mg==";}i:3;a:1:{s:6:"answer";s:4:"Mw==";}i:4;a:1:{s:6:"answer";s:4:"NA==";}i:5;a:1:{s:6:"answer";s:4:"NQ==";}i:6;a:1:{s:6:"answer";s:4:"Ng==";}i:7;a:1:{s:6:"answer";s:4:"Nw==";}i:8;a:1:{s:6:"answer";s:4:"OA==";}i:9;a:1:{s:6:"answer";s:4:"OQ==";}i:10;a:1:{s:6:"answer";s:4:"MTA=";}}', '', '', '', '', '', '', 1, 1, 0, 5),
(3, 'open', 'Dagboek', '', 'b:0;', '', '', 'Schrijf je gedachten op voor later', '', '', '', 1, 1, 0, 5),
(4, 'truefalse', 'Test', '', 'b:0;', 'true', '', '', '', '', '', 0, 1, 0, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_quizzes_questions_map`
--

CREATE TABLE `vpi17_wpcw_quizzes_questions_map` (
  `parent_quiz_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `question_order` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_quizzes_questions_map`
--

INSERT INTO `vpi17_wpcw_quizzes_questions_map` (`parent_quiz_id`, `question_id`, `question_order`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_units_meta`
--

CREATE TABLE `vpi17_wpcw_units_meta` (
  `unit_id` int(11) UNSIGNED NOT NULL,
  `parent_module_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `parent_course_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unit_order` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unit_number` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unit_drip_type` varchar(50) NOT NULL DEFAULT '',
  `unit_drip_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unit_drip_interval` int(11) NOT NULL DEFAULT '432000',
  `unit_drip_interval_type` varchar(15) NOT NULL DEFAULT 'interval_days'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_units_meta`
--

INSERT INTO `vpi17_wpcw_units_meta` (`unit_id`, `parent_module_id`, `parent_course_id`, `unit_order`, `unit_number`, `unit_drip_type`, `unit_drip_date`, `unit_drip_interval`, `unit_drip_interval_type`) VALUES
(104, 1, 1, 10, 1, '', '2017-04-13 22:01:00', 0, 'interval_hours');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_user_courses`
--

CREATE TABLE `vpi17_wpcw_user_courses` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) UNSIGNED NOT NULL,
  `course_progress` int(11) NOT NULL DEFAULT '0',
  `course_final_grade_sent` varchar(30) NOT NULL DEFAULT '',
  `course_enrolment_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_user_courses`
--

INSERT INTO `vpi17_wpcw_user_courses` (`user_id`, `course_id`, `course_progress`, `course_final_grade_sent`, `course_enrolment_date`) VALUES
(1, 1, 0, '', '2017-04-13 22:15:49'),
(2, 1, 100, '', '2017-04-13 22:15:31');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_user_progress`
--

CREATE TABLE `vpi17_wpcw_user_progress` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `unit_id` int(11) UNSIGNED NOT NULL,
  `unit_completed_date` datetime DEFAULT NULL,
  `unit_completed_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_user_progress`
--

INSERT INTO `vpi17_wpcw_user_progress` (`user_id`, `unit_id`, `unit_completed_date`, `unit_completed_status`) VALUES
(2, 104, '2017-04-13 22:16:22', 'complete');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vpi17_wpcw_user_progress_quizzes`
--

CREATE TABLE `vpi17_wpcw_user_progress_quizzes` (
  `user_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `quiz_id` bigint(20) NOT NULL,
  `quiz_attempt_id` int(11) NOT NULL DEFAULT '0',
  `quiz_completed_date` datetime NOT NULL,
  `quiz_started_date` datetime NOT NULL,
  `quiz_correct_questions` int(11) UNSIGNED NOT NULL,
  `quiz_grade` float(8,2) NOT NULL DEFAULT '-1.00',
  `quiz_question_total` int(11) UNSIGNED NOT NULL,
  `quiz_data` text,
  `quiz_is_latest` varchar(50) DEFAULT 'latest',
  `quiz_needs_marking` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quiz_needs_marking_list` text,
  `quiz_next_step_type` varchar(50) DEFAULT '',
  `quiz_next_step_msg` text,
  `quiz_paging_status` varchar(20) NOT NULL DEFAULT 'complete',
  `quiz_paging_next_q` int(11) NOT NULL DEFAULT '0',
  `quiz_paging_incomplete` int(11) NOT NULL DEFAULT '0',
  `quiz_completion_time_seconds` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `vpi17_wpcw_user_progress_quizzes`
--

INSERT INTO `vpi17_wpcw_user_progress_quizzes` (`user_id`, `unit_id`, `quiz_id`, `quiz_attempt_id`, `quiz_completed_date`, `quiz_started_date`, `quiz_correct_questions`, `quiz_grade`, `quiz_question_total`, `quiz_data`, `quiz_is_latest`, `quiz_needs_marking`, `quiz_needs_marking_list`, `quiz_next_step_type`, `quiz_next_step_msg`, `quiz_paging_status`, `quiz_paging_next_q`, `quiz_paging_incomplete`, `quiz_completion_time_seconds`) VALUES
(2, 104, 1, 0, '2017-04-13 22:16:22', '0000-00-00 00:00:00', 0, 0.00, 3, 'a:3:{i:1;a:6:{s:5:"title";s:20:"Wie gaat waar wonen?";s:12:"their_answer";a:1:{i:0;s:1:"1";}s:16:"their_answer_raw";a:1:{i:0;s:1:"1";}s:7:"correct";b:0;s:9:"got_right";b:0;s:13:"is_incomplete";b:0;}i:2;a:6:{s:5:"title";s:36:"Moet je kind naar een andere school?";s:12:"their_answer";a:2:{i:0;s:1:"5";i:1;s:1:"7";}s:16:"their_answer_raw";a:2:{i:0;s:1:"5";i:1;s:1:"7";}s:7:"correct";b:0;s:9:"got_right";b:0;s:13:"is_incomplete";b:0;}i:3;a:6:{s:5:"title";s:7:"Dagboek";s:12:"their_answer";s:1:"T";s:16:"their_answer_raw";s:1:"T";s:7:"correct";b:0;s:9:"got_right";b:0;s:13:"is_incomplete";b:0;}}', 'latest', 0, '', '', NULL, 'complete', 0, 0, 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `vpi17_commentmeta`
--
ALTER TABLE `vpi17_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `vpi17_comments`
--
ALTER TABLE `vpi17_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexen voor tabel `vpi17_links`
--
ALTER TABLE `vpi17_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexen voor tabel `vpi17_namaste_certificates`
--
ALTER TABLE `vpi17_namaste_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_history`
--
ALTER TABLE `vpi17_namaste_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_homeworks`
--
ALTER TABLE `vpi17_namaste_homeworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_homework_notes`
--
ALTER TABLE `vpi17_namaste_homework_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_payments`
--
ALTER TABLE `vpi17_namaste_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_student_certificates`
--
ALTER TABLE `vpi17_namaste_student_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_student_courses`
--
ALTER TABLE `vpi17_namaste_student_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_student_homeworks`
--
ALTER TABLE `vpi17_namaste_student_homeworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_student_lessons`
--
ALTER TABLE `vpi17_namaste_student_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_student_modules`
--
ALTER TABLE `vpi17_namaste_student_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_namaste_visits`
--
ALTER TABLE `vpi17_namaste_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `vpi17_options`
--
ALTER TABLE `vpi17_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexen voor tabel `vpi17_postmeta`
--
ALTER TABLE `vpi17_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `vpi17_posts`
--
ALTER TABLE `vpi17_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexen voor tabel `vpi17_termmeta`
--
ALTER TABLE `vpi17_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `vpi17_terms`
--
ALTER TABLE `vpi17_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexen voor tabel `vpi17_term_relationships`
--
ALTER TABLE `vpi17_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexen voor tabel `vpi17_term_taxonomy`
--
ALTER TABLE `vpi17_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexen voor tabel `vpi17_usermeta`
--
ALTER TABLE `vpi17_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `vpi17_users`
--
ALTER TABLE `vpi17_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexen voor tabel `vpi17_wpcw_certificates`
--
ALTER TABLE `vpi17_wpcw_certificates`
  ADD UNIQUE KEY `cert_user_id` (`cert_user_id`,`cert_course_id`);

--
-- Indexen voor tabel `vpi17_wpcw_courses`
--
ALTER TABLE `vpi17_wpcw_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexen voor tabel `vpi17_wpcw_member_levels`
--
ALTER TABLE `vpi17_wpcw_member_levels`
  ADD UNIQUE KEY `course_id` (`course_id`,`member_level_id`);

--
-- Indexen voor tabel `vpi17_wpcw_modules`
--
ALTER TABLE `vpi17_wpcw_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexen voor tabel `vpi17_wpcw_question_random_lock`
--
ALTER TABLE `vpi17_wpcw_question_random_lock`
  ADD UNIQUE KEY `wpcw_question_rand_lock` (`question_user_id`,`rand_question_id`);

--
-- Indexen voor tabel `vpi17_wpcw_question_tags`
--
ALTER TABLE `vpi17_wpcw_question_tags`
  ADD PRIMARY KEY (`question_tag_id`);

--
-- Indexen voor tabel `vpi17_wpcw_question_tags_map`
--
ALTER TABLE `vpi17_wpcw_question_tags_map`
  ADD UNIQUE KEY `question_tag_id` (`question_id`,`tag_id`);

--
-- Indexen voor tabel `vpi17_wpcw_queue_dripfeed`
--
ALTER TABLE `vpi17_wpcw_queue_dripfeed`
  ADD PRIMARY KEY (`queue_id`);

--
-- Indexen voor tabel `vpi17_wpcw_quizzes`
--
ALTER TABLE `vpi17_wpcw_quizzes`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexen voor tabel `vpi17_wpcw_quizzes_feedback`
--
ALTER TABLE `vpi17_wpcw_quizzes_feedback`
  ADD PRIMARY KEY (`qfeedback_id`);

--
-- Indexen voor tabel `vpi17_wpcw_quizzes_questions`
--
ALTER TABLE `vpi17_wpcw_quizzes_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexen voor tabel `vpi17_wpcw_quizzes_questions_map`
--
ALTER TABLE `vpi17_wpcw_quizzes_questions_map`
  ADD UNIQUE KEY `question_assoc_id` (`parent_quiz_id`,`question_id`);

--
-- Indexen voor tabel `vpi17_wpcw_units_meta`
--
ALTER TABLE `vpi17_wpcw_units_meta`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexen voor tabel `vpi17_wpcw_user_courses`
--
ALTER TABLE `vpi17_wpcw_user_courses`
  ADD UNIQUE KEY `user_id` (`user_id`,`course_id`);

--
-- Indexen voor tabel `vpi17_wpcw_user_progress`
--
ALTER TABLE `vpi17_wpcw_user_progress`
  ADD PRIMARY KEY (`user_id`,`unit_id`);

--
-- Indexen voor tabel `vpi17_wpcw_user_progress_quizzes`
--
ALTER TABLE `vpi17_wpcw_user_progress_quizzes`
  ADD UNIQUE KEY `unique_progress_item` (`user_id`,`unit_id`,`quiz_id`,`quiz_attempt_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `vpi17_commentmeta`
--
ALTER TABLE `vpi17_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_comments`
--
ALTER TABLE `vpi17_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_links`
--
ALTER TABLE `vpi17_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_certificates`
--
ALTER TABLE `vpi17_namaste_certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_history`
--
ALTER TABLE `vpi17_namaste_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_homeworks`
--
ALTER TABLE `vpi17_namaste_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_homework_notes`
--
ALTER TABLE `vpi17_namaste_homework_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_payments`
--
ALTER TABLE `vpi17_namaste_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_student_certificates`
--
ALTER TABLE `vpi17_namaste_student_certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_student_courses`
--
ALTER TABLE `vpi17_namaste_student_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_student_homeworks`
--
ALTER TABLE `vpi17_namaste_student_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_student_lessons`
--
ALTER TABLE `vpi17_namaste_student_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_student_modules`
--
ALTER TABLE `vpi17_namaste_student_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_namaste_visits`
--
ALTER TABLE `vpi17_namaste_visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT voor een tabel `vpi17_options`
--
ALTER TABLE `vpi17_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT voor een tabel `vpi17_postmeta`
--
ALTER TABLE `vpi17_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
--
-- AUTO_INCREMENT voor een tabel `vpi17_posts`
--
ALTER TABLE `vpi17_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT voor een tabel `vpi17_termmeta`
--
ALTER TABLE `vpi17_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_terms`
--
ALTER TABLE `vpi17_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `vpi17_term_taxonomy`
--
ALTER TABLE `vpi17_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `vpi17_usermeta`
--
ALTER TABLE `vpi17_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT voor een tabel `vpi17_users`
--
ALTER TABLE `vpi17_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_courses`
--
ALTER TABLE `vpi17_wpcw_courses`
  MODIFY `course_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_modules`
--
ALTER TABLE `vpi17_wpcw_modules`
  MODIFY `module_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_question_tags`
--
ALTER TABLE `vpi17_wpcw_question_tags`
  MODIFY `question_tag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_queue_dripfeed`
--
ALTER TABLE `vpi17_wpcw_queue_dripfeed`
  MODIFY `queue_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_quizzes`
--
ALTER TABLE `vpi17_wpcw_quizzes`
  MODIFY `quiz_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_quizzes_feedback`
--
ALTER TABLE `vpi17_wpcw_quizzes_feedback`
  MODIFY `qfeedback_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `vpi17_wpcw_quizzes_questions`
--
ALTER TABLE `vpi17_wpcw_quizzes_questions`
  MODIFY `question_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
