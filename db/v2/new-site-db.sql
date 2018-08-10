-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 09, 2018 at 09:23 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `garrettsanderson`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-02 16:37:19', '2018-08-02 16:37:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.garrettsanderson.com:8888', 'yes'),
(2, 'home', 'http://dev.garrettsanderson.com:8888', 'yes'),
(3, 'blogname', 'Garrett Sanderson', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'garrett.sanderson@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:119:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:12:"/projects/?$";s:28:"index.php?post_type=projects";s:42:"/projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:37:"/projects/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:29:"/projects/page/([0-9]{1,})/?$";s:46:"index.php?post_type=projects&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?project_category=$matches[1]&feed=$matches[2]";s:52:"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?project_category=$matches[1]&feed=$matches[2]";s:33:"project_category/([^/]+)/embed/?$";s:49:"index.php?project_category=$matches[1]&embed=true";s:45:"project_category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?project_category=$matches[1]&paged=$matches[2]";s:27:"project_category/([^/]+)/?$";s:38:"index.php?project_category=$matches[1]";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"projects/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"projects/([^/]+)/embed/?$";s:41:"index.php?projects=$matches[1]&embed=true";s:29:"projects/([^/]+)/trackback/?$";s:35:"index.php?projects=$matches[1]&tb=1";s:49:"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:44:"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&cpage=$matches[2]";s:33:"projects/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?projects=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"projects/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=18&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'garrettsanderson', 'yes'),
(41, 'stylesheet', 'garrettsanderson', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '25', 'yes'),
(84, 'page_on_front', '18', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1533875839;a:4:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1533919055;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1533919262;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.7";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-7.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-7.zip";}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.7";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1533874946;s:15:"version_checked";s:5:"4.9.7";s:12:"translations";a:0:{}}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1533874948;s:7:"checked";a:1:{s:16:"garrettsanderson";s:9:"12345.6.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(136, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1533227930;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(137, 'current_theme', 'p11creative client theme', 'yes'),
(138, 'theme_mods_garrettsanderson', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'acf_version', '5.6.10', 'yes'),
(144, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'category_children', 'a:0:{}', 'yes'),
(163, '_site_transient_timeout_browser_b9dc0782182e946806f5622d616a365c', '1533971141', 'no'),
(164, '_site_transient_browser_b9dc0782182e946806f5622d616a365c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"67.0.3396.99";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(228, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1533874948;s:7:"checked";a:2:{s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.6.10";s:19:"akismet/akismet.php";s:5:"4.0.8";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.2";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(231, '_site_transient_timeout_theme_roots', '1533876748', 'no'),
(232, '_site_transient_theme_roots', 'a:1:{s:16:"garrettsanderson";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1533531118:1'),
(11, 18, '_edit_last', '1'),
(12, 18, '_wp_page_template', 'page-templates/page-home.php'),
(13, 18, '_edit_lock', '1533626960:1'),
(14, 20, '_edit_last', '1'),
(15, 20, '_wp_page_template', 'page-templates/page-portfolio.php'),
(16, 20, '_edit_lock', '1533530883:1'),
(17, 23, '_edit_last', '1'),
(18, 23, '_edit_lock', '1533248605:1'),
(19, 23, '_wp_page_template', 'default'),
(20, 25, '_edit_last', '1'),
(21, 25, '_wp_page_template', 'default'),
(22, 25, '_edit_lock', '1533248608:1'),
(23, 27, '_edit_last', '1'),
(24, 27, '_edit_lock', '1533239870:1'),
(25, 27, 'project_title', 'The All American Boys Chorus'),
(26, 27, '_project_title', 'field_5b63342b2aa33'),
(27, 27, 'featured_image', '28'),
(28, 27, '_featured_image', 'field_5b6334852aa36'),
(29, 27, 'project_description', 'The All-American Boys Chorus, America’s quintessential professional boys chorus, has delighted audiences worldwide for over forty years. Based in Costa Mesa, California. the Chorus is comprised of over 100 boys ages 8 – 15 drawn from throughout Southern California. Under the leadership of Artistic Director Wesley Martin, a veteran of Hungary’s renowned Kodaly Institute, the Chorus provides boys with comprehensive musical training and unsurpassed performance and touring opportunities. The choir was looking for a fresh face to their brand and wanted to show that off through their website. They had never had a strong online presence and looked to me to complete that goal for them. During the research phase I noticed that many of the choirs throughout the U.S.A. do not have a solid online presence and many of the sites look quite outdated and quite frankly put a bad taste in your mouth. I wanted to create something that looked just as good as the boys sound and could appeal to a kid wanting to have fun and make friends and parents that want a wonderful youth program for their young boy to grow and mature in.'),
(30, 27, '_project_description', 'field_5b63344f2aa34'),
(31, 27, 'tech_stack', 'UI Design, CSS3, HTML5, WordPress, Responsive'),
(32, 27, '_tech_stack', 'field_5b6334572aa35'),
(33, 27, 'live_url', 'http://www.taabc.org/'),
(34, 27, '_live_url', 'field_5b6334922aa37'),
(35, 27, 'image_gallery', 'a:4:{i:0;s:2:"28";i:1;s:2:"29";i:2;s:2:"31";i:3;s:2:"30";}'),
(36, 27, '_image_gallery', 'field_5b6334a82aa38'),
(37, 27, 'client', ''),
(38, 27, '_client', 'field_5b63359d7febc'),
(39, 27, 'client_logo', ''),
(40, 27, '_client_logo', 'field_5b6335b17febd'),
(41, 28, '_wp_attached_file', '2018/08/taabc-1.jpg'),
(42, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:666;s:4:"file";s:19:"2018/08/taabc-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"taabc-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"taabc-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"taabc-1-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 29, '_wp_attached_file', '2018/08/taabc-2.jpg'),
(44, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:666;s:4:"file";s:19:"2018/08/taabc-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"taabc-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"taabc-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"taabc-2-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 30, '_wp_attached_file', '2018/08/taabc-3.jpg'),
(46, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:19:"2018/08/taabc-3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"taabc-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"taabc-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"taabc-3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 31, '_wp_attached_file', '2018/08/taabc-4.jpg'),
(48, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:665;s:4:"file";s:19:"2018/08/taabc-4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"taabc-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"taabc-4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"taabc-4-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 32, '_edit_last', '1'),
(50, 32, '_edit_lock', '1533239933:1'),
(51, 33, '_wp_attached_file', '2018/08/kyro-digital-1.jpg'),
(52, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:26:"2018/08/kyro-digital-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"kyro-digital-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"kyro-digital-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"kyro-digital-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"kyro-digital-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 32, 'project_title', 'Kyro Digital'),
(54, 32, '_project_title', 'field_5b63342b2aa33'),
(55, 32, 'featured_image', '33'),
(56, 32, '_featured_image', 'field_5b6334852aa36'),
(57, 32, 'project_description', ''),
(58, 32, '_project_description', 'field_5b63344f2aa34'),
(59, 32, 'tech_stack', 'WordPress, HTML5, CSS3, SASS, Vue.js, SendGrid'),
(60, 32, '_tech_stack', 'field_5b6334572aa35'),
(61, 32, 'live_url', 'https://kyrodigital.com'),
(62, 32, '_live_url', 'field_5b6334922aa37'),
(63, 32, 'image_gallery', ''),
(64, 32, '_image_gallery', 'field_5b6334a82aa38'),
(65, 34, '_edit_last', '1'),
(66, 34, '_edit_lock', '1533240038:1'),
(67, 35, '_wp_attached_file', '2018/08/mrkb-2.jpg'),
(68, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:680;s:4:"file";s:18:"2018/08/mrkb-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"mrkb-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"mrkb-2-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"mrkb-2-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mrkb-2-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 36, '_wp_attached_file', '2018/08/mrkb-1.jpg'),
(70, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:680;s:4:"file";s:18:"2018/08/mrkb-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"mrkb-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"mrkb-1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"mrkb-1-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mrkb-1-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(71, 34, 'project_title', 'Montage Residences Interactive Site Plan'),
(72, 34, '_project_title', 'field_5b63342b2aa33'),
(73, 34, 'featured_image', '35'),
(74, 34, '_featured_image', 'field_5b6334852aa36'),
(75, 34, 'project_description', 'This was one of the first Angular projects I worked on. The MRKB Inventory Board is an interactive Site Plan. The board shows all buildings on the development along with its status of units available, pending and sold. This interactive presentation also features, modal galleries, floor plans and client-side filtering. This project was originally designed to be shown on a 1920x1280 resolution TV, however there was still a need for the project to be usable on an iPad or tablet if the sales office wanted to give walking tours with the interactive plan in hand.'),
(76, 34, '_project_description', 'field_5b63344f2aa34'),
(77, 34, 'tech_stack', 'Angular 1, HTML5, CSS3, SASS'),
(78, 34, '_tech_stack', 'field_5b6334572aa35'),
(79, 34, 'live_url', 'http://mrkb-inventory.com.s3-website-us-west-1.amazonaws.com/'),
(80, 34, '_live_url', 'field_5b6334922aa37'),
(81, 34, 'image_gallery', 'a:2:{i:0;s:2:"35";i:1;s:2:"36";}'),
(82, 34, '_image_gallery', 'field_5b6334a82aa38'),
(83, 37, '_edit_last', '1'),
(84, 37, '_edit_lock', '1533240131:1'),
(85, 38, '_wp_attached_file', '2018/08/pl-3.jpg'),
(86, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:16:"2018/08/pl-3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-3-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(87, 39, '_wp_attached_file', '2018/08/pl-2.jpg'),
(88, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:16:"2018/08/pl-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 41, '_wp_attached_file', '2018/08/pl-4.jpg'),
(92, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:16:"2018/08/pl-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-4-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-4-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 42, '_wp_attached_file', '2018/08/pl-5.jpg'),
(94, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:16:"2018/08/pl-5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-5-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-5-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-5-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 43, '_wp_attached_file', '2018/08/pl-6.jpg'),
(96, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:680;s:4:"file";s:16:"2018/08/pl-6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-6-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-6-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-6-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 44, '_wp_attached_file', '2018/08/pl-7.jpg'),
(98, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:16:"2018/08/pl-7.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-7-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-7-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-7-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 45, '_wp_attached_file', '2018/08/pl-1.jpg'),
(100, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1100;s:4:"file";s:16:"2018/08/pl-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"pl-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"pl-1-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"pl-1-768x469.jpg";s:5:"width";i:768;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"pl-1-1024x626.jpg";s:5:"width";i:1024;s:6:"height";i:626;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 37, 'project_title', 'Parklane Ala Moana'),
(102, 37, '_project_title', 'field_5b63342b2aa33'),
(103, 37, 'featured_image', '38'),
(104, 37, '_featured_image', 'field_5b6334852aa36'),
(105, 37, 'project_description', 'Parklane Ala Moana is a luxurious development on the main island of Hawaii. The biggest challenges on this project was working with the Vimeo API and creating a seamless user experience on the landing page of the website in order to draw users to the main conversion of inquiring for one of the estates. These front-end problems were solved by incorporating scroll assist functionality and Jquery Vide for the fullscreen HTML 5 videos.'),
(106, 37, '_project_description', 'field_5b63344f2aa34'),
(107, 37, 'tech_stack', 'WordPress, Responsive, HTML5, CSS3, Sass, jQuery'),
(108, 37, '_tech_stack', 'field_5b6334572aa35'),
(109, 37, 'live_url', 'http://parklanealamoana.com'),
(110, 37, '_live_url', 'field_5b6334922aa37'),
(111, 37, 'image_gallery', 'a:6:{i:0;s:2:"39";i:1;s:2:"41";i:2;s:2:"42";i:3;s:2:"43";i:4;s:2:"44";i:5;s:2:"45";}'),
(112, 37, '_image_gallery', 'field_5b6334a82aa38'),
(113, 46, '_edit_last', '1'),
(114, 46, '_edit_lock', '1533240277:1'),
(115, 47, '_wp_attached_file', '2018/08/wozencraft-hero.jpg'),
(116, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1342;s:4:"file";s:27:"2018/08/wozencraft-hero.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"wozencraft-hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"wozencraft-hero-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"wozencraft-hero-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"wozencraft-hero-1024x687.jpg";s:5:"width";i:1024;s:6:"height";i:687;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 48, '_wp_attached_file', '2018/08/wozencraft-1.jpg'),
(118, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:680;s:4:"file";s:24:"2018/08/wozencraft-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"wozencraft-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"wozencraft-1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"wozencraft-1-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"wozencraft-1-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 46, 'project_title', 'Wozencraft Insurance'),
(120, 46, '_project_title', 'field_5b63342b2aa33'),
(121, 46, 'featured_image', '47'),
(122, 46, '_featured_image', 'field_5b6334852aa36'),
(123, 46, 'project_description', ''),
(124, 46, '_project_description', 'field_5b63344f2aa34'),
(125, 46, 'tech_stack', 'UI Design, CSS3, HTML5, WordPress, Responsive, PHP Forms, Form Submission to PDF'),
(126, 46, '_tech_stack', 'field_5b6334572aa35'),
(127, 46, 'live_url', 'https://wozencraftinsurance.com/'),
(128, 46, '_live_url', 'field_5b6334922aa37'),
(129, 46, 'image_gallery', 'a:2:{i:0;s:2:"47";i:1;s:2:"48";}'),
(130, 46, '_image_gallery', 'field_5b6334a82aa38'),
(131, 49, '_edit_last', '1'),
(132, 49, '_edit_lock', '1533537148:1'),
(133, 50, '_wp_attached_file', '2018/08/rodrigos-hero-shot.jpg'),
(134, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1000;s:4:"file";s:30:"2018/08/rodrigos-hero-shot.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"rodrigos-hero-shot-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"rodrigos-hero-shot-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"rodrigos-hero-shot-768x427.jpg";s:5:"width";i:768;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"rodrigos-hero-shot-1024x569.jpg";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 51, '_wp_attached_file', '2018/08/rodrigos-1.jpg'),
(136, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:640;s:4:"file";s:22:"2018/08/rodrigos-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"rodrigos-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"rodrigos-1-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"rodrigos-1-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"rodrigos-1-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 49, 'project_title', 'Rodrigo''s Mexican Grill'),
(138, 49, '_project_title', 'field_5b63342b2aa33'),
(139, 49, 'featured_image', '50'),
(140, 49, '_featured_image', 'field_5b6334852aa36'),
(141, 49, 'project_description', ''),
(142, 49, '_project_description', 'field_5b63344f2aa34'),
(143, 49, 'tech_stack', 'Angular 4+, Node.js, Omnivore.io, Mysql, User Auth, Scss, '),
(144, 49, '_tech_stack', 'field_5b6334572aa35'),
(145, 49, 'live_url', 'https://rodrigos.com'),
(146, 49, '_live_url', 'field_5b6334922aa37'),
(147, 49, 'image_gallery', 'a:2:{i:0;s:2:"50";i:1;s:2:"51";}'),
(148, 49, '_image_gallery', 'field_5b6334a82aa38'),
(149, 1, '_edit_lock', '1533246337:1'),
(150, 1, '_wp_trash_meta_status', 'publish'),
(151, 1, '_wp_trash_meta_time', '1533246483'),
(152, 1, '_wp_desired_post_slug', 'hello-world'),
(153, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(154, 53, '_edit_last', '1'),
(155, 53, '_edit_lock', '1533788083:1'),
(158, 53, '_wp_old_date', '2018-08-02'),
(159, 63, '_edit_last', '1'),
(160, 63, '_edit_lock', '1533627362:1'),
(161, 65, '_wp_attached_file', '2018/08/lemur-357293-unsplash.jpg'),
(162, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:33:"2018/08/lemur-357293-unsplash.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"lemur-357293-unsplash-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"lemur-357293-unsplash-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"lemur-357293-unsplash-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"lemur-357293-unsplash-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 53, 'featured_image', '65'),
(166, 53, '_featured_image', 'field_5b694c550c0ee'),
(167, 66, 'featured_image', '65'),
(168, 66, '_featured_image', 'field_5b694c550c0ee');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-02 16:37:19', '2018-08-02 16:37:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-08-02 21:48:03', '2018-08-02 21:48:03', '', 0, 'http://dev.garrettsanderson.com:8888/?p=1', 0, 'post', '', 1),
(7, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"projects";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Project', 'project', 'publish', 'closed', 'closed', '', 'group_5b63341e4c768', '', '', '2018-08-06 04:52:26', '2018-08-06 04:52:26', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project Title', 'project_title', 'publish', 'closed', 'closed', '', 'field_5b63342b2aa33', '', '', '2018-08-02 16:50:25', '2018-08-02 16:50:25', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&#038;p=8', 0, 'acf-field', '', 0),
(9, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Featured Image', 'featured_image', 'publish', 'closed', 'closed', '', 'field_5b6334852aa36', '', '', '2018-08-06 04:52:26', '2018-08-06 04:52:26', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&#038;p=9', 1, 'acf-field', '', 0),
(10, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Project Description', 'project_description', 'publish', 'closed', 'closed', '', 'field_5b63344f2aa34', '', '', '2018-08-02 16:43:50', '2018-08-02 16:43:50', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&p=10', 2, 'acf-field', '', 0),
(11, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Tech Stack', 'tech_stack', 'publish', 'closed', 'closed', '', 'field_5b6334572aa35', '', '', '2018-08-02 16:50:25', '2018-08-02 16:50:25', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&#038;p=11', 3, 'acf-field', '', 0),
(12, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Live Url', 'live_url', 'publish', 'closed', 'closed', '', 'field_5b6334922aa37', '', '', '2018-08-02 16:50:25', '2018-08-02 16:50:25', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&#038;p=12', 4, 'acf-field', '', 0),
(13, 1, '2018-08-02 16:43:50', '2018-08-02 16:43:50', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image Gallery', 'image_gallery', 'publish', 'closed', 'closed', '', 'field_5b6334a82aa38', '', '', '2018-08-02 16:43:50', '2018-08-02 16:43:50', '', 7, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&p=13', 5, 'acf-field', '', 0),
(18, 1, '2018-08-02 16:55:20', '2018-08-02 16:55:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-07 06:54:01', '2018-08-07 06:54:01', '', 0, 'http://dev.garrettsanderson.com:8888/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-08-02 16:55:20', '2018-08-02 16:55:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-08-02 16:55:20', '2018-08-02 16:55:20', '', 18, 'http://dev.garrettsanderson.com:8888/2018/08/02/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-08-02 16:55:28', '2018-08-02 16:55:28', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2018-08-06 04:48:03', '2018-08-06 04:48:03', '', 0, 'http://dev.garrettsanderson.com:8888/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-08-02 16:55:28', '2018-08-02 16:55:28', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-02 16:55:28', '2018-08-02 16:55:28', '', 20, 'http://dev.garrettsanderson.com:8888/2018/08/02/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-08-02 16:55:44', '2018-08-02 16:55:44', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-08-02 16:55:44', '2018-08-02 16:55:44', '', 0, 'http://dev.garrettsanderson.com:8888/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-08-02 16:55:44', '2018-08-02 16:55:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-08-02 16:55:44', '2018-08-02 16:55:44', '', 23, 'http://dev.garrettsanderson.com:8888/2018/08/02/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-08-02 16:55:54', '2018-08-02 16:55:54', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-02 16:55:54', '2018-08-02 16:55:54', '', 0, 'http://dev.garrettsanderson.com:8888/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-08-02 16:55:54', '2018-08-02 16:55:54', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-08-02 16:55:54', '2018-08-02 16:55:54', '', 25, 'http://dev.garrettsanderson.com:8888/2018/08/02/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-08-02 19:51:57', '2018-08-02 19:51:57', '', 'The All American Boys Chorus', '', 'publish', 'closed', 'closed', '', 'the-all-american-boys-chorus', '', '', '2018-08-02 19:59:51', '2018-08-02 19:59:51', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=27', 0, 'projects', '', 0),
(28, 1, '2018-08-02 19:59:15', '2018-08-02 19:59:15', '', 'taabc-1', '', 'inherit', 'open', 'closed', '', 'taabc-1', '', '', '2018-08-02 19:59:48', '2018-08-02 19:59:48', '', 27, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/taabc-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-08-02 19:59:39', '2018-08-02 19:59:39', '', 'taabc-2', '', 'inherit', 'open', 'closed', '', 'taabc-2', '', '', '2018-08-02 19:59:42', '2018-08-02 19:59:42', '', 27, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/taabc-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-08-02 19:59:40', '2018-08-02 19:59:40', '', 'taabc-3', '', 'inherit', 'open', 'closed', '', 'taabc-3', '', '', '2018-08-02 19:59:40', '2018-08-02 19:59:40', '', 27, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/taabc-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-02 19:59:41', '2018-08-02 19:59:41', '', 'taabc-4', '', 'inherit', 'open', 'closed', '', 'taabc-4', '', '', '2018-08-02 19:59:41', '2018-08-02 19:59:41', '', 27, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/taabc-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-08-02 20:01:12', '2018-08-02 20:01:12', '', 'Kyro Digital', '', 'publish', 'closed', 'closed', '', 'kyro-digital', '', '', '2018-08-02 20:01:12', '2018-08-02 20:01:12', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=32', 0, 'projects', '', 0),
(33, 1, '2018-08-02 20:00:39', '2018-08-02 20:00:39', '', 'kyro-digital-1', '', 'inherit', 'open', 'closed', '', 'kyro-digital-1', '', '', '2018-08-02 20:00:42', '2018-08-02 20:00:42', '', 32, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/kyro-digital-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-08-02 20:02:53', '2018-08-02 20:02:53', '', 'Montage Residences Interactive Site Plan', '', 'publish', 'closed', 'closed', '', 'montage-residences-interactive-site-plan', '', '', '2018-08-02 20:02:53', '2018-08-02 20:02:53', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=34', 0, 'projects', '', 0),
(35, 1, '2018-08-02 20:02:10', '2018-08-02 20:02:10', '', 'mrkb-2', '', 'inherit', 'open', 'closed', '', 'mrkb-2', '', '', '2018-08-02 20:02:50', '2018-08-02 20:02:50', '', 34, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/mrkb-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-08-02 20:02:48', '2018-08-02 20:02:48', '', 'mrkb-1', '', 'inherit', 'open', 'closed', '', 'mrkb-1', '', '', '2018-08-02 20:02:48', '2018-08-02 20:02:48', '', 34, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/mrkb-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-08-02 20:04:34', '2018-08-02 20:04:34', '', 'Parklane Ala Moana', '', 'publish', 'closed', 'closed', '', 'parklane-ala-moana', '', '', '2018-08-02 20:04:34', '2018-08-02 20:04:34', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=37', 0, 'projects', '', 0),
(38, 1, '2018-08-02 20:03:35', '2018-08-02 20:03:35', '', 'pl-3', '', 'inherit', 'open', 'closed', '', 'pl-3', '', '', '2018-08-02 20:03:37', '2018-08-02 20:03:37', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-08-02 20:04:19', '2018-08-02 20:04:19', '', 'pl-2', '', 'inherit', 'open', 'closed', '', 'pl-2', '', '', '2018-08-02 20:04:19', '2018-08-02 20:04:19', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-08-02 20:04:20', '2018-08-02 20:04:20', '', 'pl-4', '', 'inherit', 'open', 'closed', '', 'pl-4', '', '', '2018-08-02 20:04:20', '2018-08-02 20:04:20', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-08-02 20:04:21', '2018-08-02 20:04:21', '', 'pl-5', '', 'inherit', 'open', 'closed', '', 'pl-5', '', '', '2018-08-02 20:04:21', '2018-08-02 20:04:21', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-08-02 20:04:22', '2018-08-02 20:04:22', '', 'pl-6', '', 'inherit', 'open', 'closed', '', 'pl-6', '', '', '2018-08-02 20:04:22', '2018-08-02 20:04:22', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-08-02 20:04:22', '2018-08-02 20:04:22', '', 'pl-7', '', 'inherit', 'open', 'closed', '', 'pl-7', '', '', '2018-08-02 20:04:31', '2018-08-02 20:04:31', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-08-02 20:04:29', '2018-08-02 20:04:29', '', 'pl-1', '', 'inherit', 'open', 'closed', '', 'pl-1', '', '', '2018-08-02 20:04:29', '2018-08-02 20:04:29', '', 37, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/pl-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-08-02 20:05:58', '2018-08-02 20:05:58', '', 'Wozencraft Insurance', '', 'publish', 'closed', 'closed', '', 'wozencraft-insurance', '', '', '2018-08-02 20:05:58', '2018-08-02 20:05:58', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=46', 0, 'projects', '', 0),
(47, 1, '2018-08-02 20:04:57', '2018-08-02 20:04:57', '', 'wozencraft-hero', '', 'inherit', 'open', 'closed', '', 'wozencraft-hero', '', '', '2018-08-02 20:05:56', '2018-08-02 20:05:56', '', 46, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/wozencraft-hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-08-02 20:05:52', '2018-08-02 20:05:52', '', 'wozencraft-1', '', 'inherit', 'open', 'closed', '', 'wozencraft-1', '', '', '2018-08-02 20:05:52', '2018-08-02 20:05:52', '', 46, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/wozencraft-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-08-02 20:08:31', '2018-08-02 20:08:31', '', 'Rodrigo''s Mexican Grill', '', 'publish', 'closed', 'closed', '', 'rodrigos-mexican-grill', '', '', '2018-08-02 20:08:31', '2018-08-02 20:08:31', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=projects&#038;p=49', 0, 'projects', '', 0),
(50, 1, '2018-08-02 20:07:19', '2018-08-02 20:07:19', '', 'rodrigos-hero-shot', '', 'inherit', 'open', 'closed', '', 'rodrigos-hero-shot', '', '', '2018-08-02 20:08:29', '2018-08-02 20:08:29', '', 49, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/rodrigos-hero-shot.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-08-02 20:08:22', '2018-08-02 20:08:22', '', 'rodrigos-1', '', 'inherit', 'open', 'closed', '', 'rodrigos-1', '', '', '2018-08-02 20:08:23', '2018-08-02 20:08:23', '', 49, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/rodrigos-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-08-02 21:48:03', '2018-08-02 21:48:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-02 21:48:03', '2018-08-02 21:48:03', '', 1, 'http://dev.garrettsanderson.com:8888/2018/08/02/1-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-08-07 07:31:54', '2018-08-07 07:31:54', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail (MX Records)</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n<code class="javascript">\r\nvar thing = document.getElementById("thing");\r\n</code>\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'publish', 'open', 'open', '', 'running-wordpress-on-amazons-lightsail', '', '', '2018-08-07 07:39:37', '2018-08-07 07:39:37', '', 0, 'http://dev.garrettsanderson.com:8888/?p=53', 0, 'post', '', 0),
(54, 1, '2018-08-02 22:16:13', '2018-08-02 22:16:13', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:16:13', '2018-08-02 22:16:13', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-02 22:20:14', '2018-08-02 22:20:14', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n[code language="css"]\r\n.hello {\r\n   color: red;\r\n}\r\n[/code]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:20:14', '2018-08-02 22:20:14', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-08-02 22:29:46', '2018-08-02 22:29:46', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:29:46', '2018-08-02 22:29:46', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-02 22:30:24', '2018-08-02 22:30:24', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n\r\n<code>\r\n$(''.hello'').on(''click'', function(){});\r\n</code>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:30:24', '2018-08-02 22:30:24', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-08-02 22:30:46', '2018-08-02 22:30:46', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n\r\n<pre>\r\n$(''.hello'').on(''click'', function(){});\r\n</pre>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:30:46', '2018-08-02 22:30:46', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-02 22:32:28', '2018-08-02 22:32:28', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n\r\n<pre><code class="javascript">\r\n  var thing = document.getElementById("thing");\r\n</​code></​pre>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:32:28', '2018-08-02 22:32:28', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-02 22:49:27', '2018-08-02 22:49:27', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n<pre><code class="javascript">\r\n  var thing = document.getElementById("thing");\r\n&lt;/​code&gt;&lt;/​pre&gt;</code></pre>', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:49:27', '2018-08-02 22:49:27', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-02 22:53:36', '2018-08-02 22:53:36', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail (MX Records)</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n<pre><code class="javascript">\r\n  var thing = document.getElementById("thing");\r\n</code></pre>', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-02 22:53:36', '2018-08-02 22:53:36', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/02/53-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-07 07:31:54', '2018-08-07 07:31:54', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail (MX Records)</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n<code class="javascript">\r\nvar thing = document.getElementById("thing");\r\n</code>\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-07 07:31:54', '2018-08-07 07:31:54', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/07/53-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-07 07:38:19', '2018-08-07 07:38:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Blog', 'blog', 'publish', 'closed', 'closed', '', 'group_5b694c4ca0cf6', '', '', '2018-08-07 07:38:19', '2018-08-07 07:38:19', '', 0, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2018-08-07 07:38:19', '2018-08-07 07:38:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Featured Image', 'featured_image', 'publish', 'closed', 'closed', '', 'field_5b694c550c0ee', '', '', '2018-08-07 07:38:19', '2018-08-07 07:38:19', '', 63, 'http://dev.garrettsanderson.com:8888/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2018-08-07 07:39:20', '2018-08-07 07:39:20', '', 'lemur-357293-unsplash', '', 'inherit', 'open', 'closed', '', 'lemur-357293-unsplash', '', '', '2018-08-07 07:39:33', '2018-08-07 07:39:33', '', 53, 'http://dev.garrettsanderson.com:8888/wp-content/uploads/2018/08/lemur-357293-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-08-07 07:39:37', '2018-08-07 07:39:37', '<h3>Introduction</h3>\r\nFor the longest time, I have been a huge supporter Media Temple and their hosting services. Unfortunately in the past year I have really experienced a drop in their ability to provide exceptional customer service along with a product that is reliable and provides you with everything you may need for an exceptional web server. While switching to Amazon''s EC2 or LightSail can be a bit daunting at first the rewards are totally worth it. In the rest of this post I am going to layout some of the hiccups, burns, and "gotchas" that switching a WordPress install from a shared host to Amazon''s cloud servers can cause.\r\n<h3>1. What''s so scary about Amazon?</h3>\r\n<h3>2. What are the benefits of using Amazon LightSail</h3>\r\n<h3>3. How to set up a WordPress Install on Amazon LightSail</h3>\r\n<ol>\r\n 	<li>Make Account</li>\r\n 	<li>Set up a box and attach lamp stack to it</li>\r\n 	<li>Create an ip and attach the ip address to the lamp instance.</li>\r\n 	<li>Download the SFTP certificate</li>\r\n 	<li>FTP inside the server.</li>\r\n 	<li>SSH Into the server</li>\r\n 	<li>Permissions on the webserver for wordpress uploads/plugins/etc.</li>\r\n 	<li>Load up phpmyadmin on your localhost</li>\r\n 	<li>Email for LightSail (MX Records)</li>\r\n 	<li>Lets Encrypt SSL</li>\r\n 	<li>PageSpeed</li>\r\n 	<li>Start and reStart the server</li>\r\n</ol>\r\nWhen working with Amazon web servers, you are essentially provided with the hardware with some preinstalled software available in order to run certain web languages. You can get a linux box with apache installed or maybe you are building a node app and just need node installed on the server. Whatever you want to run with Amazon has those packages ready to go for you. Where it gets daunting is when you realize there is no cPanel, no mysql / database access that is easily accessible without using the terminal.\r\n<h3>Step by step install for WordPress on Amazon LightSail</h3>\r\nFirst off LightSail uses something called SFTP. This is a more secure version of FTP and instead of using a generic password for an FTP user you will need to provide the FTP client with a certificate file which you can download from your LightSail account.\r\n\r\n<code>.hello {\r\ncolor: red;\r\n}</code>\r\n\r\n<code class="javascript">\r\nvar thing = document.getElementById("thing");\r\n</code>\r\n\r\n&nbsp;', 'Running WordPress on Amazon''s Lightsail', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-08-07 07:39:37', '2018-08-07 07:39:37', '', 53, 'http://dev.garrettsanderson.com:8888/2018/08/07/53-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(53, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Garrett Sanderson'),
(2, 1, 'first_name', 'Garrett'),
(3, 1, 'last_name', 'Sanderson'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"9bba57e1d1756ee5942dfaf6d79f74fb792d973cdc90eefd00e8c881bd97bd07";a:4:{s:10:"expiration";i:1533878289;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36";s:5:"login";i:1533705489;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&urlbutton=none&imgsize=large&posts_list_mode=list&hidetb=0'),
(18, 1, 'wp_user-settings-time', '1533250411'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'closedpostboxes_projects', 'a:1:{i:0;s:19:"project_categorydiv";}'),
(21, 1, 'metaboxhidden_projects', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'meta-box-order_post', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:38:"submitdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:133:"acf-group_5b63341e4c768,revisionsdiv,postexcerpt,acf-group_5b694c4ca0cf6,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thegrid', '$P$BZiGCjyudj60YmrdsNaifhP6Pcu2dK/', 'thegrid', 'garrett.sanderson@gmail.com', '', '2018-08-02 16:37:19', '', 0, 'Garrett');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;