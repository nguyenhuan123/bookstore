-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 10:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_book_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$jL8d0Fau1uB.qLDXToFhSeUAoLHByuvbEWfeV4Sg7Ziy6sO4whY3q', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(2, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$NNYi0koqS93aRQunXTE76OeGeU4e6jFm6GatlHcHCM6.DVYrswY7G', '0945582258', NULL, NULL, NULL, 2, 1, NULL, '2020-06-13 06:23:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Chiến lược thông minh giúp biến một cuốn sách tầm thường trở thành Best Seller', 'chien-luoc-thong-minh-giup-bien-mot-cuon-sach-tam-thuong-tro-thanh-best-seller', 1, 1, 1, 0, '\"Tác giả Robert Cialdini đã từng nói: \"Nếu bạn nghĩ về những gì bạn muốn làm và viết nó ra, thì bạn sẽ có thể làm được điều đó \", Ramdas chia sẻ.', '2020-07-18__photo-1-1489486596524.jpg', '<p style=\"text-align:justify\">7 05:29 PM&nbsp;|&nbsp;<a href=\"https://cafebiz.vn/cau-chuyen-kinh-doanh.chn\" title=\"Kinh doanh\">KINH DOANH</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"javascript:void(0);\" onclick=\"fbClient.shareClick(\'https://cafebiz.vn/news-20170314173022331.chn\')\" rel=\"nofollow\">0</a></p>\r\n\r\n<p style=\"text-align:justify\"><iframe frameborder=\"0\" height=\"1000px\" name=\"f3727002c9ea9c\" scrolling=\"no\" src=\"https://www.facebook.com/v2.8/plugins/like.php?action=like&amp;app_id=156966424493207&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfb5d0f406c216c%26domain%3Dcafebiz.vn%26origin%3Dhttps%253A%252F%252Fcafebiz.vn%252Ff94b8b04498ef8%26relation%3Dparent.parent&amp;container_width=497&amp;href=https%3A%2F%2Fcafebiz.vn%2Fnews-20170314173022331.chn&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=false&amp;show_faces=false&amp;size=small\" title=\"fb:like Facebook Social Plugin\" width=\"1000px\"></iframe></p>\r\n\r\n<h2 style=\"text-align:justify\">UJ Ramdas đ&atilde; c&oacute; một &yacute; tưởng, anh biết rằng mọi người c&oacute; thể sẽ th&iacute;ch cuốn sổ nhật k&iacute; của anh, nhưng sẽ kh&ocirc;ng c&oacute; nh&agrave; xuất bản n&agrave;o chấp nhận cuốn sổ n&agrave;y. Bời đ&acirc;y l&agrave; một cuốn sổ tầm thường. Vấn đề nằm ở đ&oacute;!</h2>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Chiến lược thông minh giúp biến một cuốn sách tầm thường trở thành Best Seller\" src=\"https://cafebiz.cafebizcdn.vn/thumb_w/600/2017/photo-1-1489486596524.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\">&quot;T&aacute;c giả Robert Cialdini đ&atilde; từng n&oacute;i: &quot;Nếu bạn nghĩ về những g&igrave; bạn muốn l&agrave;m v&agrave; viết n&oacute; ra, th&igrave; bạn sẽ c&oacute; thể l&agrave;m được điều đ&oacute; &quot;, Ramdas chia sẻ.</p>\r\n\r\n<p style=\"text-align:justify\">Anh bắt đầu viết nhật k&yacute; khi 19 tuổi v&agrave;, giờ đ&acirc;y khi anh 29 tuổi, anh vẫn viết rất hăng say. Nhưng anh biết rằng n&oacute; c&oacute; thể sẽ rất kh&oacute; b&aacute;n. Hầu hết mọi người sẽ kh&ocirc;ng d&agrave;nh 15-30 ph&uacute;t mỗi ng&agrave;y để &quot;xem x&eacute;t bản th&acirc;n&quot; như anh. Đ&oacute; l&agrave; l&yacute; do anh chọn&nbsp;<strong>Five Minute Journal</strong>&nbsp;l&agrave; t&ecirc;n cuốn sổ.</p>\r\n\r\n<p style=\"text-align:justify\">Anh đ&atilde; nghĩ &quot;Sao ch&uacute;ng ta kh&ocirc;ng tận dụng mọi thứ ch&uacute;ng ta biết từ c&aacute;c nguy&ecirc;n l&yacute; t&acirc;m l&yacute;, v&agrave; viết v&agrave;o cuốn s&aacute;ch ấy sự ph&aacute;t triển của nh&acirc;n c&aacute;ch bản th&acirc;n?&quot; Ramdas v&agrave; người bạn của m&igrave;nh l&agrave; Alex Ikonn, đ&atilde; đồng s&aacute;ng lập một c&ocirc;ng ty t&ecirc;n l&agrave; Intelligent Change v&agrave; đ&atilde; viết cuốn nhật k&iacute; The Five Minute Journal- một cuốn sổ được thiết kế đẹp, l&agrave; cuốn sổ để ghi lại c&aacute;c mục ti&ecirc;u bạn đặt ra mỗi ng&agrave;y v&agrave; xem x&eacute;t những g&igrave; bạn đ&atilde; đạt được v&agrave;o cuối ng&agrave;y, cuốn sổ c&ograve;n được in th&ecirc;m những lời kh&iacute;ch lệ t&iacute;ch cực.</p>\r\n\r\n<p style=\"text-align:justify\">Ramdas v&agrave; Ikonn trả tiền để chạy quảng c&aacute;o, gi&aacute; cuốn sổ l&agrave; 23 đ&ocirc; la, v&agrave; l&ecirc;n kế hoạch b&aacute;n cuốn sổ trực tiếp cho người ti&ecirc;u d&ugrave;ng. Nhưng nếu kh&ocirc;ng được c&aacute;c nh&agrave; xuất bản hỗ trợ hay kh&ocirc;ng đầu tư tiền v&agrave;o quảng c&aacute;o, th&igrave; cuốn sổ sẽ kh&ocirc;ng thể đến được tay mọi người. Ai sẽ ch&uacute; &yacute; đến một quyển sổ nhỏ như vậy?</p>\r\n\r\n<p style=\"text-align:justify\">Họ biết sẽ cần phải thực hiện một c&uacute; th&uacute;c mạnh, vậy n&ecirc;n đ&atilde; bắt đầu gửi cuốn sổ tới những người nổi tiếng. Đ&atilde; c&oacute; lần, họ gửi g&oacute;i bưu phẩm đến Chương tr&igrave;nh The Ellen DeGeneres với &aacute;p ph&iacute;ch, nh&atilde;n d&aacute;n v&agrave; sổ cho to&agrave;n bộ kh&aacute;n giả trong ph&ograve;ng thu, nhưng lại kh&ocirc;ng nhận lại được phản hồi n&agrave;o. &quot;Ch&uacute;ng t&ocirc;i kh&ocirc;ng biết chuyện g&igrave; đ&atilde; xảy ra. Ch&uacute;ng t&ocirc;i biết l&agrave; họ đ&atilde; nhận được cuốn sổ&quot;, &quot;Ch&uacute;ng t&ocirc;i đ&atilde; mất h&agrave;ng ng&agrave;n đ&ocirc; la.&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Tiếp đ&oacute;, họ nhắm đến c&aacute;c hội nghị của c&aacute;c doanh nh&acirc;n v&agrave; những người y&ecirc;u th&iacute;ch thể dục thẩm mỹ, t&igrave;m đến &quot;những người nhận thấy gi&aacute; trị thiết thực của hạnh ph&uacute;c v&agrave; l&ograve;ng biết ơn, v&agrave; sẽ trả 23 đ&ocirc; la cho sản phẩm.&quot; Sau một thời gian, sự cố gắng bắt đầu được đền đ&aacute;p. Họ đ&atilde; gặp một số người c&oacute; sức ảnh hưởng, trong số đ&oacute; c&oacute; Dave Asprey, Abel James v&agrave; Tim Ferriss, những người c&oacute; hứng th&uacute; với cuốn sổ, v&agrave; đ&ocirc;i khi c&ograve;n kể cho người h&acirc;m mộ của họ về n&oacute;. Ramdas n&oacute;i, &quot;Đ&oacute; l&agrave; khi ch&uacute;ng t&ocirc;i nhận ra điều n&agrave;y l&agrave; khả thi&quot;. Nhưng Ramdas v&agrave; Alex vẫn gặp phải kh&oacute; khăn: L&agrave;m sao họ c&oacute; thể biến những người h&acirc;m mộ c&oacute; ảnh hưởng n&agrave;y th&agrave;nh những một lượng người mua lớn?</p>\r\n\r\n<p style=\"text-align:justify\">Rồi Ramdas v&agrave; Ikonn đ&atilde; c&oacute; một khoảnh khắc ngỡ ra rằng:&nbsp;<strong>Những người c&oacute; ảnh hưởng sẽ chơi với những người bạn c&oacute; ảnh hưởng!</strong>&nbsp;V&agrave; những người bạn &iacute;t nổi tiếng hơn gần như kh&ocirc;ng bị thu h&uacute;t với những thứ miễn ph&iacute;, c&oacute; nghĩa l&agrave; họ sẵn s&agrave;ng bỏ tiền ra mua. &quot;Khi mọi người bắt đầu một th&oacute;i quen mới, họ muốn kể với bạn b&egrave; về n&oacute;, đặc biệt l&agrave; nếu n&oacute; th&uacute; vị&quot;.</p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; vậy, Ramdas v&agrave; Alex đ&atilde; thực hiện kế hoạch tiếp thị s&aacute;ch kiểu truyền thống - gửi những bản sao tới những người m&agrave; họ ngưỡng mộ, những người c&oacute; thể t&igrave;m ra người mua- đ&oacute; l&agrave; một bước tiến nữa. &quot;Ch&uacute;ng t&ocirc;i sẽ gửi hai đến năm cuốn sổ đến bất kỳ một người c&oacute; ảnh hưởng n&agrave;o&quot;- Ramdas n&oacute;i. Họ nhận thấy rằng một bản sao c&oacute; thể bị lờ đi hoặc thậm ch&iacute; bị vứt đi. Nhưng những người c&oacute; ảnh hưởng n&agrave;y sẽ khiến người nhận cuốn sổ ch&iacute; &iacute;t kh&ocirc;ng d&ugrave;ng đến n&oacute; th&igrave; cũng tặng n&oacute; cho bạn b&egrave;.</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Ch&uacute;ng t&ocirc;i biết n&oacute; l&agrave; một m&oacute;n qu&agrave; tuyệt vời&rdquo;. V&agrave; việc l&agrave;m đ&atilde; c&oacute; hiệu quả. Những người c&oacute; ảnh hưởng được biết đến c&ugrave;ng với cuốn nhật k&iacute;, việc n&agrave;y gi&uacute;p tạo ra một trang web đ&atilde; b&aacute;n được tới hơn 100.000 bản (Trong khi tờ b&aacute;o b&aacute;n chạy New York Times c&oacute; khi chỉ b&aacute;n được &iacute;t hơn 10.000 bản).</p>\r\n\r\n<p style=\"text-align:justify\">Hal Elrod- t&aacute;c giả của cuốn The Miracle Morning, đ&atilde; nhắc đến Five Minute Journal trong chương tr&igrave;nh Smart Passive Income của Pat Flynn. &quot;Những điều như thế c&oacute; thể xảy ra, v&agrave; điều đ&oacute; rất quan trọng. Bạn cần phải c&oacute; một sản phẩm m&agrave; mọi người cần phải n&oacute;i về n&oacute;. &quot;</p>\r\n\r\n<p style=\"text-align:justify\">V&agrave; những g&igrave; bạn phải l&agrave;m l&agrave; cho họ một l&yacute; do để n&oacute;i về n&oacute;.</p>', '2020-07-17 13:29:54', 1, 1, '2020-07-18 00:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết trinh thám', 'tieu-thuyet-trinh-tham', 1, 5, '2020-07-17 19:57:53', NULL),
(2, 'Kỹ thuật', 'ky-thuat', 4, 3, '2020-07-17 19:58:14', NULL),
(3, 'Tiểu thuyết chữ tình', 'tieu-thuyet-chu-tinh', 1, 5, '2020-07-17 19:58:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Sách  giáo khoa', 'sach-giao-khoa', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:09:48', '2020-07-17 15:12:19'),
(2, 'Sách truyện tranh', 'sach-truyen-tranh', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:09:57', '2020-07-17 15:12:43'),
(3, 'Khoa học - công nghệ', 'khoa-hoc-cong-nghe', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:10:11', NULL),
(4, 'Kiến trúc - mỹ thuật', 'kien-truc-my-thuat', '2020-07-17__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:10:22', NULL),
(5, 'Tiểu Thuyết', 'tieu-thuyet', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:18:17', NULL),
(6, 'Sách thiếu nhi', 'sach-thieu-nhi', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:18:38', NULL),
(7, 'Sách ngoại ngữ', 'sach-ngoai-ngu', '2020-07-18__book-icon-4.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:19:02', NULL),
(8, 'Sách Văn Học', 'sach-van-hoc', NULL, NULL, NULL, 0, 0, 1, '2020-07-20 15:27:51', '2020-07-20 15:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'sách rất hay ạ', 0, 4, 0, 6, 0, 0, '2020-07-18 01:03:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL DEFAULT 0,
  `server` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2020-07-17__event-01.jpg', '/', 1, 0, 0, 0, 0, 0, '2020-07-17 14:29:36', '2020-07-17 14:29:36'),
(2, 'event2', '2020-07-18__d7e61049-94d1-4fb8-a7b5-b19295d6f53b.jpg', '/', 0, 1, 0, 0, 0, 0, '2020-07-17 19:32:33', '2020-07-17 19:32:33'),
(3, 'event3', '2020-07-17__event-02.jpg', '/', 0, 0, 1, 0, 0, 0, '2020-07-17 14:34:46', '2020-07-17 14:34:46'),
(4, 'event4', '2020-07-18__630c3f8a-e0f7-4adb-bcdb-2c5700c07265.jpg', '/', 0, 0, 0, 1, 0, 0, '2020-07-17 19:54:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_import` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_import`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2020-07-17 14:49:47', '2020-07-17 14:49:47'),
(2, 5000000, 2, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(3, 0, 3, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(4, 5250000, 4, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(5, NULL, 3, '2020-07-17 19:26:29', '2020-07-17 19:26:29'),
(6, 0, 5, '2020-07-17 19:27:22', '2020-07-17 19:27:22'),
(7, 1500000, 5, '2020-07-17 19:27:40', '2020-07-17 19:27:40'),
(8, 0, 6, '2020-07-17 19:28:37', '2020-07-17 19:28:37'),
(9, 4000000, 6, '2020-07-17 19:28:48', '2020-07-17 19:28:48'),
(10, 1000000, 7, '2020-07-18 01:13:51', '2020-07-18 01:13:51'),
(11, 500000, 7, '2020-07-18 01:14:22', '2020-07-18 01:14:22'),
(12, 900000, 8, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(13, 0, 9, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(14, 0, 10, '2020-07-22 17:36:30', '2020-07-22 17:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_name_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_category` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_name_product`, `ie_total_money`, `ie_category`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_status`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(1, '2020-07-18 00:00:00', NULL, 3, NULL, 12500000, 0, 1, 50, 0, 250000, 0, 12500000, '2020-07-17 14:49:47', '2020-07-17 14:49:47'),
(2, '2020-07-18 00:00:00', NULL, 3, NULL, 5000000, 0, 4, 100, 3, 50000, 0, 5000000, '2020-07-17 19:24:29', '2020-07-17 20:06:37'),
(5, '2020-07-18 00:00:00', NULL, 3, NULL, 3000000, 0, 3, 60, 4, 50000, 0, 1500000, '2020-07-17 19:27:22', '2020-07-18 01:12:25'),
(6, NULL, NULL, 4, NULL, 6250000, 0, 2, 250, 0, 25000, 0, 4000000, '2020-07-17 19:28:37', '2020-07-17 19:28:48'),
(7, NULL, NULL, 3, NULL, 1800000, 0, 6, 60, 0, 30000, 0, 1500000, '2020-07-18 01:13:50', '2020-07-18 01:14:22'),
(8, '2020-07-22 00:00:00', '2021-04-17 00:00:00', 3, NULL, 900000, 0, 7, 10, 0, 90000, 0, 900000, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(9, '2020-07-24 00:00:00', '2020-07-24 00:00:00', 3, NULL, 500000, 0, 3, 10, 0, 50000, 0, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(10, NULL, NULL, 3, NULL, 150000, 0, 3, 15, 0, 10000, 0, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-07-17 13:27:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 15, 3, 102000, '2020-07-17 20:06:21', NULL),
(2, 3, 3, 15, 4, 68000, '2020-07-18 01:02:27', NULL),
(3, 4, 1, 0, 1, 150000, '2020-07-20 15:25:53', NULL),
(4, 4, 2, 5, 3, 171000, '2020-07-20 15:25:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Nhất Linh Cha Tôi', 'nhat-linh-cha-toi', 150000, 0, 2, 0, 0, 0, NULL, '2020-07-17__the-nao-la-hien-the.jpg', 3, 1, NULL, 1, 1, '\"Lần đầu tiên, độc giả trong nước được tiếp cận một tác phẩm đầy đủ, khá tín về những tháng năm đầy uẩn khúc của nhà văn Nhất Linh - Linh hồn của Tự Lực Văn Đoàn - và là chính trị gia thất chí Nguyễn Tường Tam trong những năm cuối đời. Những hồi ức chân thực, tao nhã và đầy khắc khoải viết về Nhất Linh và những người cùng thời được viết bởi người con út của Nhất Linh\" – Nhà văn Nguyễn Tường Thiết', '<p>&quot;Lần đầu ti&ecirc;n, độc giả trong nước được tiếp cận một t&aacute;c phẩm đầy đủ, kh&aacute; t&iacute;n về những th&aacute;ng năm đầy uẩn kh&uacute;c của nh&agrave; văn&nbsp;<strong>Nhất Linh</strong>&nbsp;- Linh hồn của Tự Lực Văn Đo&agrave;n - v&agrave; l&agrave; ch&iacute;nh trị gia thất ch&iacute; Nguyễn Tường Tam trong những năm cuối đời. Những hồi ức ch&acirc;n thực, tao nh&atilde; v&agrave; đầy khắc khoải viết về Nhất Linh v&agrave; những người c&ugrave;ng thời được viết bởi người con &uacute;t của Nhất Linh&quot; &ndash; Nh&agrave; văn Nguyễn Tường Thiết</p>', 0, 0, 0, '2020-07-17 14:40:16', 50, 0, 50, NULL, NULL, 0, '2020-07-17 19:59:08'),
(2, 'Bóng Người Trong Đường Lô', 'bong-nguoi-trong-duong-lo', 180000, 0, 5, 0, 0, 5, NULL, '2020-07-17__142129-p57854mbiatruoc.jpg', 4, 1, NULL, 1, 1, 'Tuổi thơ đùa nghịch, hiếu động luôn là những tháng ngày khó quên trong cuộc đời mỗi con người, truyện kể về nhóm bạn Trí, Dũng, Phương, họ gặp nhau ở nông trường An Thái, cùng nhau trải qua những ngày hè đầy ắp niềm vui.', '<h3 style=\"text-align:justify\">B&oacute;ng Người Trong Đường L&ocirc;</h3>\r\n\r\n<p style=\"text-align:justify\">Tuổi thơ đ&ugrave;a nghịch, hiếu động lu&ocirc;n l&agrave; những th&aacute;ng ng&agrave;y kh&oacute; qu&ecirc;n trong cuộc đời mỗi con người, truyện kể về nh&oacute;m bạn Tr&iacute;, Dũng, Phương, họ gặp nhau ở n&ocirc;ng trường An Th&aacute;i, c&ugrave;ng nhau trải qua những ng&agrave;y h&egrave; đầy ắp niềm vui. Ba bạn nhỏ đ&atilde; c&ugrave;ng chung sức điều tra, t&igrave;m c&aacute;ch để bắt được bọn ăn trộm đ&atilde; lấy cắp ph&acirc;n b&oacute;n của n&ocirc;ng trường.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Truyện vừa mang một vẻ đẹp trong s&aacute;ng của t&igrave;nh bạn tuổi hồn nhi&ecirc;n, vừa mang những n&eacute;t hấp dẫn của một c&acirc;u chuyện trinh th&aacute;m d&agrave;nh cho thiếu nhi.&nbsp;<strong><em>B&oacute;ng người trong đường l&ocirc;</em></strong>&nbsp;- một t&aacute;c phẩm với bao điều kỳ th&uacute; đang chờ đ&oacute;n c&aacute;c em.&nbsp;</p>', 0, 0, 0, '2020-07-17 14:55:02', 250, 0, 250, NULL, NULL, 0, '2020-07-17 20:01:17'),
(3, 'Hà Nội Trong Mắt Một Người Sài Gòn', 'ha-noi-trong-mat-mot-nguoi-sai-gon', 80000, 0, 5, 0, 0, 15, NULL, '2020-07-18__kho-dau-khong-la-dieu-tat-yeu-108093-1.jpg', 3, 1, NULL, 1, 1, 'Hà Nội không có tư tưởng riêng, không có cái chất riêng gìn giữ được từ đời này qua đời khác. Đơn giản, Hà Nội chịu trách nhiệm phản ánh hết những bước đi của lịch sử, và nó thay đổi, đều theo vận động của xã hội. Trong Hà Nội tích tụ tất cả. Buồn, vui, tốt, xấu. Đó mới đúng nghĩa là Hà Nội.', '<h2 style=\"text-align:center\">&nbsp;<strong>H&agrave; Nội Trong Mắt Một Người S&agrave;i G&ograve;n</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">H&agrave; Nội kh&ocirc;ng c&oacute; tư tưởng ri&ecirc;ng, kh&ocirc;ng c&oacute; c&aacute;i chất ri&ecirc;ng g&igrave;n giữ được từ đời n&agrave;y qua đời kh&aacute;c. Đơn giản, H&agrave; Nội chịu tr&aacute;ch nhiệm phản &aacute;nh hết những bước đi của lịch sử, v&agrave; n&oacute; thay đổi, đều theo vận động của x&atilde; hội. Trong H&agrave; Nội t&iacute;ch tụ tất cả. Buồn, vui, tốt, xấu. Đ&oacute; mới đ&uacute;ng nghĩa l&agrave; H&agrave; Nội.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Kh&ocirc;ng c&oacute; H&agrave; Nội đẹp, H&agrave; Nội xấu. Chỉ c&oacute; H&agrave; Nội như một tấm gương</p>', 0, 0, 0, '2020-07-17 19:20:46', 66, 0, 70, NULL, NULL, 0, '2020-07-22 17:36:30'),
(4, 'Khổ Đau Không Là Điều Tất Yếu', 'kho-dau-khong-la-dieu-tat-yeu', 120000, 0, 5, 0, 0, 15, NULL, '2020-07-18__ha-noi-trong-mat-mot-nguoi-sai-gon-108095-1.jpg', 3, 1, NULL, 1, 1, 'Nếu bạn đang phải vật lộn với những suy nghĩ tiêu cực và niềm tin giới hạn, hoặc bạn đang nghi ngờ bản thân, hoặc bạn đang bị bao vây bởi những lo lắng và sợ hãi; đây chính là quyển sách dành cho bạn. Gail Brenner - một vị thầy dịu dàng và thông thái, sẽ dắt bạn đi trên con đường của hạnh phúc chân thực, nơi bạn tìm thấy tình yêu dành cho bản thân và sự bình yên trong tâm hồn.', '<h2 style=\"text-align:center\">&nbsp;<strong>Khổ Đau Kh&ocirc;ng L&agrave; Điều Tất Yếu</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Nếu bạn đang phải vật lộn với những suy nghĩ ti&ecirc;u cực v&agrave; niềm tin giới hạn, hoặc bạn đang nghi ngờ bản th&acirc;n, hoặc bạn đang bị bao v&acirc;y bởi những lo lắng v&agrave; sợ h&atilde;i; đ&acirc;y ch&iacute;nh l&agrave; quyển s&aacute;ch d&agrave;nh cho bạn. Gail Brenner - một vị thầy dịu d&agrave;ng v&agrave; th&ocirc;ng th&aacute;i, sẽ dắt bạn đi tr&ecirc;n con đường của hạnh ph&uacute;c ch&acirc;n thực, nơi bạn t&igrave;m thấy t&igrave;nh y&ecirc;u d&agrave;nh cho bản th&acirc;n v&agrave; sự b&igrave;nh y&ecirc;n trong t&acirc;m hồn.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<em><strong>Khổ đau kh&ocirc;ng l&agrave; điều tất yếu</strong></em>&nbsp;l&agrave; cuốn s&aacute;ch gối đầu giường d&agrave;nh cho những t&acirc;m hồn bị tổn thương, lu&ocirc;n tin rằng bản th&acirc;n l&agrave; người k&eacute;m cỏi. Trong s&aacute;ch của Gail, bạn c&oacute; thể t&igrave;m thấy những lời khuy&ecirc;n thiết thực, c&aacute;c c&ocirc;ng cụ, cũng như những b&agrave;i thực h&agrave;nh m&agrave; ai cũng c&oacute; thể &aacute;p dụng để tự giải ph&oacute;ng khỏi những dằn vặt đến từ việc ph&aacute;n x&eacute;t bản th&acirc;n. Bạn ho&agrave;n to&agrave;n c&oacute; thể thấy được một h&igrave;nh dung kh&aacute;c của ch&iacute;nh m&igrave;nh v&agrave; trải nghiệm một cuộc sống b&igrave;nh y&ecirc;n hơn, tự do hơn - cuốn s&aacute;ch n&agrave;y sẽ dẫn đường cho bạn.&nbsp;</p>', 0, 0, 0, '2020-07-17 19:22:41', 97, 0, 100, NULL, NULL, 0, '2020-07-17 19:31:41'),
(5, 'Lớp Học Mật Ngữ Ngoại Truyện 12 Chòm Sao - Song Tử (Tặng Kèm Quạt Nhựa)', 'lop-hoc-mat-ngu-ngoai-truyen-12-chom-sao-song-tu-tang-kem-quat-nhua', 50000, 0, 6, 0, 0, 16, NULL, '2020-07-18__358424-p91261mscan0001.jpg', 2, 1, NULL, 1, 0, 'Bạn sẽ được “truy cập” vào một bộ cẩm nang tất tần tật về cung này. Không chỉ là profile “thật” của Song Tử như tổng quan về cung Song Tử, tìm kiếm các năng lực, điểm mạnh của Song Tử… để phát triển cho chính mình; mà “hồ sơ mật” của cung này cũng sẽ được bật mí. Rốt cuộc thì Song Tử là ai trong mắt 12 cung, và các cung khác trong mắt Song Từ được “soi chiếu” như thế nào. Sống sao mới vừa lòng Song Tử? Bảo đảm đọc xong bạn giải mã được ngay những vấn đề trong mối quan hệ của mình với hội Song Tử đấy.', '<h3 style=\"text-align:center\">Lớp Học Mật Ngữ Ngoại Truyện 12 Ch&ograve;m Sao - Song Tử (Tặng K&egrave;m Quạt Nhựa)</h3>\r\n\r\n<p style=\"text-align:justify\">C&oacute; g&igrave; trong vũ trụ Song Tử?</p>\r\n\r\n<p style=\"text-align:justify\">Nhắc đến Song Tử, bạn sẽ nhớ đến điều g&igrave;?</p>\r\n\r\n<p style=\"text-align:justify\">N&oacute;i nhiều? Th&ocirc;ng minh, nhanh tr&iacute;? Nhưng cũng rất hay qu&ecirc;n? V&agrave; si&ecirc;u sao &ldquo;lật b&aacute;nh tr&aacute;ng&rdquo; v&igrave; hay thay đổi bất ngờ, &ldquo;bẻ l&aacute;i kh&eacute;t lẹt&rdquo; lu&ocirc;n?...</p>\r\n\r\n<p style=\"text-align:justify\">Bạn sẽ được &ldquo;truy cập&rdquo; v&agrave;o một bộ cẩm nang tất tần tật về cung n&agrave;y. Kh&ocirc;ng chỉ l&agrave; profile &ldquo;thật&rdquo; của Song Tử như tổng quan về cung Song Tử, t&igrave;m kiếm c&aacute;c năng lực, điểm mạnh của Song Tử&hellip; để ph&aacute;t triển cho ch&iacute;nh m&igrave;nh; m&agrave; &ldquo;hồ sơ mật&rdquo; của cung n&agrave;y cũng sẽ được bật m&iacute;. Rốt cuộc th&igrave; Song Tử l&agrave; ai trong mắt 12 cung, v&agrave; c&aacute;c cung kh&aacute;c trong mắt Song Từ được &ldquo;soi chiếu&rdquo; như thế n&agrave;o. Sống sao mới vừa l&ograve;ng Song Tử? Bảo đảm đọc xong bạn giải m&atilde; được ngay những vấn đề trong mối quan hệ của m&igrave;nh với hội Song Tử đấy.</p>\r\n\r\n<p style=\"text-align:justify\">Chưa kể, Song Tử trong c&acirc;u chuyện &ldquo;ngũ h&agrave;nh&rdquo; cũng si&ecirc;u hấp dẫn. L&agrave; Trạm sao Thủy: Khu vườn trồng &ldquo;b&iacute;&rdquo;&not; - nơi l&yacute; giải v&igrave; sao Song Tử th&ocirc;ng minh m&agrave; thi thoảng vẫn hay gạm quả &ldquo;b&iacute; l&ugrave;&rdquo;? L&agrave; Trạm sao Hoả: Khu đất trồng &ldquo;h&agrave;nh&rdquo; giải th&iacute;ch điều g&igrave; khiến Song Tử &ldquo;l&ecirc;n bờ xuống ruộng&rdquo;. L&agrave; Trạm sao Kim: Khu thu hoạch &ldquo;bồ kết&rdquo; cho bạn thấy Song Tử thường c&oacute; xu hướng &ldquo;bồ kết&rdquo; ai v&agrave; bị sao Kim &ldquo;quay&rdquo; như thế n&agrave;o khi cảm nắng... Những &ldquo;pha xử l&yacute; cồng kềnh&rdquo; n&agrave;o của Song Tử đ&atilde; bị &ldquo;l&ecirc;n thớt&rdquo;? Đ&oacute;n xem đ&oacute;n xem!</p>\r\n\r\n<p style=\"text-align:justify\">Cười hạnh ph&uacute;c c&ugrave;ng fanbook Song Tử</p>\r\n\r\n<p style=\"text-align:justify\">Phi&ecirc;n bản mới lần n&agrave;y sẽ tạo sự kh&aacute;c biệt ho&agrave;n to&agrave;n về nội dung, mỹ thuật cho độc giả vốn đang quen thuộc với bộ truyện tranh&nbsp;<strong>Lớp Học Mật Ngữ.&nbsp;</strong>B&ecirc;n cạnh những thử th&aacute;ch đ&aacute;ng y&ecirc;u d&agrave;nh ri&ecirc;ng cho &ldquo;hội fan cuồng&rdquo; th&igrave; đặc san c&ograve;n đặc biệt tặng bạn đọc những trang dạy vẽ v&agrave; t&ocirc; m&agrave;u Song Tử &ldquo;cute kh&ocirc;ng cần cớ&rdquo;.</p>', 0, 0, 0, '2020-07-17 19:31:23', 0, 0, 0, NULL, NULL, 0, '2020-07-17 19:31:39'),
(6, 'Tại Sao? - Sao Thành Phố Lại Trông Như Thế?', 'tai-sao-sao-thanh-pho-lai-trong-nhu-the', 55000, 0, 6, 0, 0, 20, NULL, '2020-07-18__358090-p91211msaothanh.jpg', 2, 1, NULL, 1, 0, 'Tập sách giúp trẻ hiểu biết cấu trúc của một thành phố, là một cách để giáo dục về kỷ cương xã hội trong môi trường đô thị thông qua 100 điều thú vị về thành phố. Bên cạnh nhiều trò chơi là nhiều kiến thức thú vị như:', '<h3 style=\"text-align:center\">Tại Sao? - Sao Th&agrave;nh Phố Lại Tr&ocirc;ng Như Thế?</h3>\r\n\r\n<p style=\"text-align:justify\">Tập s&aacute;ch gi&uacute;p trẻ hiểu biết cấu tr&uacute;c của một th&agrave;nh phố, l&agrave; một c&aacute;ch để gi&aacute;o dục về kỷ cương x&atilde; hội trong m&ocirc;i trường đ&ocirc; thị th&ocirc;ng qua 100 điều th&uacute; vị về th&agrave;nh phố. B&ecirc;n cạnh nhiều tr&ograve; chơi l&agrave; nhiều kiến thức th&uacute; vị như:&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">- Cớ sao tr&ecirc;n n&oacute;c nh&agrave; c&oacute; nhiều ống tho&aacute;t?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao cầu thang lại đi zig-zag?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao th&aacute;p Pisa lại nghi&ecirc;ng?</p>\r\n\r\n<p style=\"text-align:justify\">- Tại sao tr&ecirc;n xe cứu thương người ta thường ghi chữ viết ngược?</p>', 1, 5, 5, '2020-07-17 19:34:57', 60, 0, 60, NULL, NULL, 0, '2020-07-18 01:13:50'),
(7, 'Ngữ Văn', 'ngu-van', 100000, 0, 8, 0, 0, 5, NULL, NULL, 1, 1, NULL, 1, 0, 'abc', '<p><em><strong>aaaaaaaaa</strong></em></p>', 0, 0, 0, '2020-07-20 15:29:34', 10, 0, 10, NULL, NULL, 0, '2020-07-20 15:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(1, 1, 3),
(3, 3, 3),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT 0,
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 6, 6, 5, 0, 'Sản phẩm tuyệt vời', '2020-07-18 01:00:36', '2020-07-18 01:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', '/', '2020-07-17__banner-top-20-sach-ban-chay.jpg', 1, 1, 1, '2020-07-17 14:25:14', '2020-07-17 14:25:14'),
(2, 'banner website 2', '/', '2020-07-17__banner-sach-moi-thang-62018-02.jpg', 1, 1, 2, '2020-07-17 14:25:25', '2020-07-17 14:25:25'),
(3, 'banner website 2', '/', '2020-07-17__unnamed.jpg', 1, 1, 3, '2020-07-17 14:25:45', '2020-07-17 14:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;</p>', '2020-07-18 01:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(3, 'Nhà sách kim đồng', '19001907', 'nhasachkimdong@gmail.com', 'Hà Nội', '2020-07-17 14:45:55', NULL),
(4, 'Nhà sách giáo dục', '19008889', 'nhasachgiaoduch@gmail.com', 'Kim Mã', '2020-07-17 14:46:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 306000, 'NGuyễn Văn A', 'duocnvoit@gmail.com', '0928817228', 'Hà Nội', NULL, 3, 1, '2020-07-17 20:06:21', '2020-07-17 20:06:37'),
(3, 6, 1, 272000, 'NGuyễn Văn B', 'nguyenduocit@gmail.com', '0359020898', 'Hà Nội', 'giao hàng nhớ gọi trước cho tôi', 3, 1, '2020-07-18 01:02:27', '2020-07-18 01:12:25'),
(4, 7, 0, 663000, 'Le Minh Hai', 'mhai@gmail.com', '0988809974', 'Hà Nội', 'aaaaaaaaaa', 1, 1, '2020-07-20 15:25:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'NGuyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$XSTmwGdZFluv3zegH4cw1eRYto.2wVeIuHfeGOgC/z5JKrVRj8ebm', '0928817228', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:22:17.120379Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:24:16.984014Z\"}]', 0, NULL, NULL, NULL, '2020-07-17 20:04:59', NULL),
(6, 'NGuyễn Văn B', 'nguyenvanb@gmail.com', NULL, '$2y$10$P8LKA/JZ21RWokkcgWDayu6gtKvwhqXVuTrUJXij8JkBtGwUKtk4y', '0359020898', 0, NULL, 1, NULL, '2020-07-18__hatgiong.jpg', NULL, '2020-07-18 00:57:57', '2020-07-18 00:58:19'),
(7, 'Le Minh Hai', 'mhai@gmail.com', NULL, '$2y$10$XFTwi.syIOd.0WhnY0m28OoNmDtjuPj4/4cQ1oSnVeLP/ThVWXsRG', '0988809974', 0, NULL, 0, NULL, NULL, NULL, '2020-07-20 15:25:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 1, 5),
(1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
