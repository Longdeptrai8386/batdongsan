-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2024 at 09:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biznews`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `author_id`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(45, 'Biệt thự nghỉ dưỡng bên sườn đồi ở Vĩnh Phúc', '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><div class=\"article__sapo cms-desc default_cursor_cs\" style=\'font-size: 1.8rem; font-weight: 600; margin-top: 1.2rem; color: rgb(59, 61, 63); font-family: arial, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\";\'><h2 class=\"content-detail-sapo sm-sapo-mb-0 default_cursor_cs\" style=\"margin: 1.25rem 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 700; font-stretch: inherit; font-size: 1rem; line-height: 1.625rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(64, 64, 64);\">N&#7857;m duy&ecirc;n d&aacute;ng tr&ecirc;n s&#432;&#7901;n &#273;&#7891;i, c&#259;n bi&#7879;t th&#7921; &#273;&#432;&#7907;c thi&#7871;t k&#7871; hi&#7879;n &#273;&#7841;i, h&agrave;i ho&agrave; v&#7899;i m&ocirc;i tr&#432;&#7901;ng t&#7921; nhi&ecirc;n xung quanh.</h2><div class=\"maincontent main-content\" id=\"maincontent\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; font-size: medium; line-height: 1.75rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\"><div class=\"default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><div style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Ki&#7871;n tr&uacute;c c&#259;n bi&#7879;t th&#7921; &#273;&#432;&#7907;c thi&#7871;t k&#7871; theo &#273;&#7883;a h&igrave;nh d&#7889;c, v&#7899;i c&aacute;c kh&#7889;i ch&#7913;c n&#259;ng &#273;&#432;&#7907;c k&#7871;t n&#7889;i v&#7899;i nhau, x&#7871;p ch&#7891;ng d&#7885;c theo s&#432;&#7901;n &#273;&#7891;i.&nbsp;</p></div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2355-40308.jpeg?width=0&amp;s=QNvjcA4ctGPs0_8P9vPmjg\" alt=\"\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2355-40308.jpeg?width=0&amp;s=QNvjcA4ctGPs0_8P9vPmjg\" data-lg-id=\"b08fb941-61d1-44f3-926a-b4dae474b7c3\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2469-40309.jpeg?width=0&amp;s=OxLfg9LN5TV2NWhZVF4Gzg\" alt=\"\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2469-40309.jpeg?width=0&amp;s=OxLfg9LN5TV2NWhZVF4Gzg\" data-lg-id=\"c2d02548-a9ba-4254-b78a-b071997ade43\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2395-40310.jpeg?width=0&amp;s=a78Asyw14e2LEhl3DSPJ3g\" alt=\"Thi&#7871;t k&#7871; ng&ocirc;i nh&agrave; d&#7885;c theo s&#432;&#7901;n &#273;&#7891;i, t&#7915; cao xu&#7889;ng th&#7845;p. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2395-40310.jpeg?width=0&amp;s=a78Asyw14e2LEhl3DSPJ3g\" data-lg-id=\"146b6c0c-417e-4944-a73a-82ddf0c4e15d\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">Thi&#7871;t k&#7871; ng&ocirc;i nh&agrave; d&#7885;c theo s&#432;&#7901;n &#273;&#7891;i, t&#7915; cao xu&#7889;ng th&#7845;p.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2401-40311.jpeg?width=0&amp;s=jUHvz3j1CovMTqWJxEZ13A\" alt=\"C&aacute;c c&#7917;a s&#7893; l&#7899;n cho ph&eacute;p &aacute;nh s&aacute;ng t&#7921; nhi&ecirc;n tr&agrave;n ng&#7853;p b&ecirc;n trong, t&#7841;o ra b&#7847;u kh&ocirc;ng kh&iacute; t&#432;&#417;i s&aacute;ng v&agrave; tho&aacute;ng m&aacute;t su&#7889;t c&#7843; ng&agrave;y. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2401-40311.jpeg?width=0&amp;s=jUHvz3j1CovMTqWJxEZ13A\" data-lg-id=\"1a42ae53-4a34-4e04-a3c6-150efb838761\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">C&aacute;c c&#7917;a s&#7893; l&#7899;n cho ph&eacute;p &aacute;nh s&aacute;ng t&#7921; nhi&ecirc;n tr&agrave;n ng&#7853;p b&ecirc;n trong, t&#7841;o ra b&#7847;u kh&ocirc;ng kh&iacute; t&#432;&#417;i s&aacute;ng v&agrave; tho&aacute;ng m&aacute;t su&#7889;t c&#7843; ng&agrave;y.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2679-40312.jpeg?width=0&amp;s=yIcBqodFkhO1Qb4FC9T2yA\" alt=\"Nh&#7919;ng &ocirc; c&#7917;a k&iacute;nh nh&#432; m&#7897;t b&#7913;c tranh &#273;&oacute;ng khung c&#7843;nh quan xung quanh tuy&#7879;t &#273;&#7865;p, t&#259;ng c&#7843;m gi&aacute;c m&#7903; r&#7897;ng v&agrave; k&#7871;t n&#7889;i v&#7899;i thi&ecirc;n nhi&ecirc;n.\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2679-40312.jpeg?width=0&amp;s=yIcBqodFkhO1Qb4FC9T2yA\" data-lg-id=\"c730eaa8-db4f-4158-9dca-466d1e354013\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">Nh&#7919;ng &ocirc; c&#7917;a k&iacute;nh nh&#432; m&#7897;t b&#7913;c tranh &#273;&oacute;ng khung c&#7843;nh quan xung quanh tuy&#7879;t &#273;&#7865;p, t&#259;ng c&#7843;m gi&aacute;c m&#7903; r&#7897;ng v&agrave; k&#7871;t n&#7889;i v&#7899;i thi&ecirc;n nhi&ecirc;n.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2694-40313.jpeg?width=0&amp;s=g2Wm1ymgaigwhMIYCSNnVA\" alt=\"Thi&#7871;t k&#7871; ki&#7871;n tr&uacute;c t&#7841;o s&#7921; k&#7871;t n&#7889;i gi&#7919;a kh&ocirc;ng gian trong nh&agrave; v&agrave; ngo&agrave;i tr&#7901;i, &#273;&#7843;m b&#7843;o r&#7857;ng g&oacute;c c&#7911;a c&#259;n bi&#7879;t th&#7921; &#273;&#7873;u c&oacute; c&#7843;m gi&aacute;c h&ograve;a nh&#7853;p v&agrave;o c&#7843;nh quan thi&ecirc;n nhi&ecirc;n.\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2694-40313.jpeg?width=0&amp;s=g2Wm1ymgaigwhMIYCSNnVA\" data-lg-id=\"3bd7850d-e319-4c6b-afe3-e4e31c69ffb5\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">Thi&#7871;t k&#7871; ki&#7871;n tr&uacute;c t&#7841;o s&#7921; k&#7871;t n&#7889;i gi&#7919;a kh&ocirc;ng gian trong nh&agrave; v&agrave; ngo&agrave;i tr&#7901;i, &#273;&#7843;m b&#7843;o r&#7857;ng g&oacute;c c&#7911;a c&#259;n bi&#7879;t th&#7921; &#273;&#7873;u c&oacute; c&#7843;m gi&aacute;c h&ograve;a nh&#7853;p v&agrave;o c&#7843;nh quan thi&ecirc;n nhi&ecirc;n.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2563-40314.jpeg?width=0&amp;s=5-UCjQs-RCLsiN94OXDxgg\" alt=\"M&#7895;i kh&#7889;i nh&agrave; &#273;&#7873;u c&oacute; t&#7847;m nh&igrave;n &#273;&#7865;p nh&#7845;t, t&#7841;o c&#7843;m gi&aacute;c r&#7897;ng m&#7903; tr&ecirc;n to&agrave;n b&#7897; khu &#273;&#7845;t. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2563-40314.jpeg?width=0&amp;s=5-UCjQs-RCLsiN94OXDxgg\" data-lg-id=\"de520fb5-3fd5-46ef-b9af-88ebfaec77e7\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">M&#7895;i kh&#7889;i nh&agrave; &#273;&#7873;u c&oacute; t&#7847;m nh&igrave;n &#273;&#7865;p nh&#7845;t, t&#7841;o c&#7843;m gi&aacute;c r&#7897;ng m&#7903; tr&ecirc;n to&agrave;n b&#7897; khu &#273;&#7845;t.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2442-40315.jpeg?width=0&amp;s=oWXLkKqVzq2MM09AZUQKyA\" alt=\"\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2442-40315.jpeg?width=0&amp;s=oWXLkKqVzq2MM09AZUQKyA\" data-lg-id=\"ecc0b8ce-a4ec-459d-9189-58f9e8796111\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2424-40316.jpeg?width=0&amp;s=Q9R8tAxiwA4TUJQPZE8j6g\" alt=\"M&#7897;t trong nh&#7919;ng &#273;&#7863;c &#273;i&#7875;m n&#7893;i b&#7853;t c&#7911;a bi&#7879;t th&#7921; n&agrave;y l&agrave; s&#7917; d&#7909;ng nhi&#7873;u c&#7917;a s&#7893; k&iacute;nh, l&agrave;m m&#7901; ranh gi&#7899;i gi&#7919;a b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2424-40316.jpeg?width=0&amp;s=Q9R8tAxiwA4TUJQPZE8j6g\" data-lg-id=\"f59f3efd-b34a-4432-a43a-cd4c2dcf6ef9\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">M&#7897;t trong nh&#7919;ng &#273;&#7863;c &#273;i&#7875;m n&#7893;i b&#7853;t c&#7911;a bi&#7879;t th&#7921; n&agrave;y l&agrave; s&#7917; d&#7909;ng nhi&#7873;u c&#7917;a s&#7893; k&iacute;nh, l&agrave;m m&#7901; ranh gi&#7899;i gi&#7919;a b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2633-40317.jpeg?width=0&amp;s=mDXAnpD2eG6W70gftH3C1Q\" alt=\"C&aacute;c t&#7845;m k&iacute;nh r&#7897;ng &#273;&#432;&#7907;c k&#7871;t h&#7907;p &#7903; m&#7895;i t&#7847;ng, mang &#273;&#7871;n t&#7847;m nh&igrave;n to&agrave;n c&#7843;nh. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2633-40317.jpeg?width=0&amp;s=mDXAnpD2eG6W70gftH3C1Q\" data-lg-id=\"b6d35512-6c97-46ab-ab31-f30a3da7c05c\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">C&aacute;c t&#7845;m k&iacute;nh r&#7897;ng &#273;&#432;&#7907;c k&#7871;t h&#7907;p &#7903; m&#7895;i t&#7847;ng, mang &#273;&#7871;n t&#7847;m nh&igrave;n to&agrave;n c&#7843;nh.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2376-40318.jpeg?width=0&amp;s=F7MpUJel4iARsWjMs0umxA\" alt=\"Khu v&#7921;c sinh ho&#7841;t v&agrave; b&#7871;p &#273;&#432;&#7907;c m&#7903; r&#7897;ng tr&#7921;c ti&#7871;p ra h&#7891; b&#417;i v&agrave; kh&ocirc;ng gian s&acirc;n v&#432;&#7901;n, t&#7841;o ra s&#7921; l&#432;u th&ocirc;ng d&#7877; d&agrave;ng gi&#7919;a n&#7897;i th&#7845;t v&agrave; ngo&#7841;i th&#7845;t. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2376-40318.jpeg?width=0&amp;s=F7MpUJel4iARsWjMs0umxA\" data-lg-id=\"48bf9130-9920-4dcb-9c3a-e35bf58291c6\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">Khu v&#7921;c sinh ho&#7841;t v&agrave; b&#7871;p &#273;&#432;&#7907;c m&#7903; r&#7897;ng tr&#7921;c ti&#7871;p ra h&#7891; b&#417;i v&agrave; kh&ocirc;ng gian s&acirc;n v&#432;&#7901;n, t&#7841;o ra s&#7921; l&#432;u th&ocirc;ng d&#7877; d&agrave;ng gi&#7919;a n&#7897;i th&#7845;t v&agrave; ngo&#7841;i th&#7845;t.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2499-40319.jpeg?width=0&amp;s=NBk8QULxxms-CQ8BqPP4zA\" alt=\"C&#7847;u thang t&#7841;o ra s&#7921; k&#7871;t n&#7889;i li&#7873;n m&#7841;ch gi&#7919;a c&aacute;c t&#7847;ng v&agrave; m&aacute;i nh&agrave;, v&#7915;a l&agrave; l&#7889;i &#273;i v&#7915;a t&#7841;o nh&#7883;p &#273;i&#7879;u ki&#7871;n tr&uacute;c c&#7911;a c&aacute;c kh&#7889;i x&#7871;p ch&#7891;ng. \r\n\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2499-40319.jpeg?width=0&amp;s=NBk8QULxxms-CQ8BqPP4zA\" data-lg-id=\"ed71964b-8444-4a99-af5d-5a2f10acfff4\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">C&#7847;u thang t&#7841;o ra s&#7921; k&#7871;t n&#7889;i li&#7873;n m&#7841;ch gi&#7919;a c&aacute;c t&#7847;ng v&agrave; m&aacute;i nh&agrave;, v&#7915;a l&agrave; l&#7889;i &#273;i v&#7915;a t&#7841;o nh&#7883;p &#273;i&#7879;u ki&#7871;n tr&uacute;c c&#7911;a c&aacute;c kh&#7889;i x&#7871;p ch&#7891;ng.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2380-40320.jpeg?width=0&amp;s=i-CeJyyOKZcWwy4GtuMT2w\" alt=\"M&#7897;t h&#7891; b&#417;i l&#7899;n v&#7899;i th&aacute;c n&#432;&#7899;c &#7845;n t&#432;&#7907;ng chi&#7871;m v&#7883; tr&iacute; n&#7893;i b&#7853;t &#7903; ph&iacute;a tr&#432;&#7899;c bi&#7879;t th&#7921;, v&#7915;a l&agrave; trung t&acirc;m th&#7883; gi&aacute;c v&#7915;a l&agrave; n&#417;i ngh&#7881; ng&#417;i ngo&agrave;i tr&#7901;i. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2380-40320.jpeg?width=0&amp;s=i-CeJyyOKZcWwy4GtuMT2w\" data-lg-id=\"1b2b9614-523e-4b02-9f19-6c6a495017d7\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">M&#7897;t h&#7891; b&#417;i l&#7899;n v&#7899;i th&aacute;c n&#432;&#7899;c &#7845;n t&#432;&#7907;ng chi&#7871;m v&#7883; tr&iacute; n&#7893;i b&#7853;t &#7903; ph&iacute;a tr&#432;&#7899;c bi&#7879;t th&#7921;, v&#7915;a l&agrave; trung t&acirc;m th&#7883; gi&aacute;c v&#7915;a l&agrave; n&#417;i ngh&#7881; ng&#417;i ngo&agrave;i tr&#7901;i.</div><div class=\"my-15\" style=\"margin: 15px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><img class=\"w-full default_cursor_cs\" src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2777-40321.jpeg?width=0&amp;s=3SfS_ef1lR4OtYP06SUjRw\" alt=\"H&#7891; b&#417;i &#273;&#432;&#7907;c thi&#7871;t k&#7871; li&#7873;n m&#7841;ch v&agrave;o c&#7843;nh quan xung quanh, t&#7841;o ra kh&ocirc;ng gian thanh b&igrave;nh &#273;&#7875; th&#432; gi&atilde;n. \" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/trc-2777-40321.jpeg?width=0&amp;s=3SfS_ef1lR4OtYP06SUjRw\" data-lg-id=\"dda6f658-0ec7-4527-a40d-bda1af39cad6\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; width: 760px; max-width: 100%; display: block; height: auto;\"></div><div class=\"text-image my-15 default_cursor_cs\" style=\"margin: 10px 0px; padding: 20px 5px 20px 35px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; background-color: rgb(243, 248, 255); position: relative;\">H&#7891; b&#417;i &#273;&#432;&#7907;c thi&#7871;t k&#7871; li&#7873;n m&#7841;ch v&agrave;o c&#7843;nh quan xung quanh, t&#7841;o ra kh&ocirc;ng gian thanh b&igrave;nh &#273;&#7875; th&#432; gi&atilde;n.</div></div></div></div>\n', 13, 31, '1732541775.jpg', '2024-06-02 07:10:05', '2024-11-25 13:36:15'),
(46, 'Angela Phương Trinh phát ngôn trên mạng xã hội, Sở TT&TT TPHCM vào cuộc', '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><p></p><div itemprop=\"articleBody\" class=\"art-content content-visibility-lazy default_cursor_cs\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; content-visibility: auto; orphans: 2; text-align: start; text-indent: 0px; widows: 2;\"><p class=\"default_cursor_cs\">Nhi&#7873;u &#273;&#7841;i bi&#7875;u Qu&#7889;c h&#7897;i b&agrave;y t&#7887; lo ng&#7841;i v&#7873; vi&#7879;c m&#7903; r&#7897;ng di&#7879;n t&iacute;ch &#273;&#7845;t &#273;&#7875; l&agrave;m d&#7921; &aacute;n nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i t&#7841;i nh&#7919;ng khu v&#7921;c &iacute;t ng&#432;&#7901;i sinh s&#7889;ng ho&#7863;c ch&#432;a ph&aacute;t tri&#7875;n, trong khi vi&#7879;c ph&aacute;t tri&#7875;n nh&agrave; &#7903; x&atilde; h&#7897;i v&#7851;n c&ograve;n g&#7863;p nhi&#7873;u kh&oacute; kh&#259;n.</p><p class=\"default_cursor_cs\">Theo Lu&#7853;t Nh&agrave; &#7903; 2014, t&#7915; ng&agrave;y 1/7/2015, nh&agrave; &#273;&#7847;u t&#432; ch&#7881; &#273;&#432;&#7907;c ph&eacute;p th&#7921;c hi&#7879;n d&#7921; &aacute;n nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i khi s&#7903; h&#7919;u quy&#7873;n s&#7917; d&#7909;ng &#273;&#7845;t &#7903;. &#272;i&#7873;u n&agrave;y khi&#7871;n Ch&iacute;nh ph&#7911; ph&#7843;i thu h&#7865;p c&aacute;c l&#7921;a ch&#7885;n &#273;&#7847;u t&#432; v&agrave;o nh&#7919;ng khu v&#7921;c ch&#432;a c&oacute; &#273;&#7845;t &#7903;, &#273;&#7863;c bi&#7879;t l&agrave; c&aacute;c khu &#273;&ocirc; th&#7883; m&#7899;i.</p><p class=\"default_cursor_cs\">Ch&iacute;nh ph&#7911; &#273;&atilde; &#273;&#7873; xu&#7845;t Qu&#7889;c h&#7897;i xem x&eacute;t m&#7897;t d&#7921; th&#7843;o Ngh&#7883; quy&#7871;t m&#7899;i. Trong &#273;&oacute;, c&oacute; n&#7897;i dung cho ph&eacute;p c&aacute;c nh&agrave; &#273;&#7847;u t&#432; th&#7921;c hi&#7879;n d&#7921; &aacute;n nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i tr&ecirc;n &#273;&#7845;t n&ocirc;ng nghi&#7879;p, &#273;&#7845;t phi n&ocirc;ng nghi&#7879;p kh&ocirc;ng ph&#7843;i &#273;&#7845;t &#7903;, ho&#7863;c c&aacute;c lo&#7841;i &#273;&#7845;t kh&aacute;c trong qu&#7929; &#273;&#7845;t &#273;&atilde; c&oacute; quy ho&#7841;ch. Quy &#273;&#7883;nh n&agrave;y &aacute;p d&#7909;ng th&#7917; nghi&#7879;m trong v&ograve;ng 5 n&#259;m.</p><p class=\"default_cursor_cs\">T&#7841;i phi&ecirc;n th&#7843;o lu&#7853;n s&aacute;ng 21/11 v&#7873; ch&iacute;nh s&aacute;ch nh&agrave; &#7903;, &ocirc;ng Nguy&#7877;n C&ocirc;ng Long &ndash; &#7910;y vi&ecirc;n Th&#432;&#7901;ng tr&#7921;c &#7910;y ban T&#432; ph&aacute;p &ndash; nh&#7853;n &#273;&#7883;nh th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n &#273;ang c&oacute; nhi&#7873;u b&#7845;t c&#7853;p nh&#432; gi&aacute; c&#7843; t&#259;ng cao, ngu&#7891;n cung h&#7841;n ch&#7871;, v&agrave; c&aacute;c &#273;&#7889;i t&#432;&#7907;ng c&oacute; thu nh&#7853;p th&#7845;p ho&#7863;c c&aacute;n b&#7897;, c&ocirc;ng ch&#7913;c g&#7863;p kh&oacute; kh&#259;n trong vi&#7879;c mua nh&agrave;.</p><p class=\"default_cursor_cs\">&Ocirc;ng Long n&ecirc;u r&otilde;: &ldquo;Ng&#432;&#7901;i ta t&iacute;nh m&#7897;t c&ocirc;ng ch&#7913;c kh&ocirc;ng &#259;n g&igrave;, ph&#7843;i l&agrave;m v&agrave;i th&#7853;p ni&ecirc;n m&#7899;i mua &#273;&#432;&#7907;c nh&agrave;.&rdquo; V&igrave; v&#7853;y, &ocirc;ng &#273;&#7873; ngh&#7883; c&#7847;n ph&#7843;i th&#7843;o lu&#7853;n k&#7929; l&#432;&#7905;ng c&aacute;c n&#7897;i dung trong d&#7921; th&#7843;o, b&#7843;o &#273;&#7843;m vi&#7879;c m&#7903; r&#7897;ng th&iacute; &#273;i&#7875;m kh&ocirc;ng l&agrave;m ph&aacute;t sinh th&ecirc;m b&#7845;t c&#7853;p v&agrave; kh&ocirc;ng g&acirc;y &#7843;nh h&#432;&#7903;ng t&#7899;i nh&agrave; &#7903; x&atilde; h&#7897;i.</p><p class=\"default_cursor_cs\"><img src=\"http://biznews_rebuild.test/uploads/image/1732325964-6741324c98a65.jpeg\" data-filename=\"Do-Duc-Duy21-11-2-5147-1732165750.jpg\" style=\"width: 1020px;\" class=\"default_cursor_cs\"><br></p></div><p style=\'box-sizing: inherit; margin: 20px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.8em; line-height: 1.6; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; content-visibility: auto; opacity: 0.8; color: rgb(29, 35, 46); font-family: \"Noto Serif\", serif !important;\'></p><p style=\"box-sizing: inherit; margin: 20px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 1.6; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; overflow-wrap: break-word; position: relative;\" class=\"default_cursor_cs\">&Ocirc;ng &#273;&#7863;t v&#7845;n &#273;&#7873;, v&igrave; sao kh&ocirc;ng d&agrave;nh qu&#7929; &#273;&#7845;t, c&#417; ch&#7871; th&iacute; &#273;i&#7875;m chuy&#7875;n &#273;&#7893;i &#273;&#7845;t cho ph&aacute;t tri&#7875;n nh&agrave; &#7903; x&atilde; h&#7897;i. B&#7903;i &#273;&acirc;y l&agrave; ph&acirc;n kh&uacute;c nh&agrave; c&oacute; nhu c&#7847;u th&#7921;c c&#7911;a ng&#432;&#7901;i d&acirc;n, d&agrave;nh cho ng&#432;&#7901;i thu nh&#7853;p th&#7845;p. Hi&#7879;n ng&#432;&#7901;i lao &#273;&#7897;ng thu nh&#7853;p 7-20 tri&#7879;u &#273;&#7891;ng m&#7897;t th&aacute;ng &#7903; nhi&#7873;u &#273;&#7883;a ph&#432;&#417;ng r&#7845;t c&#7847;n ch&#7895; &#7903;, nh&#432;ng h&#7885; kh&ocirc;ng &#273;&#7911; ti&#7873;n mua nh&agrave; th&#432;&#417;ng m&#7841;i.</p><p style=\"box-sizing: inherit; margin: 20px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 1.6; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; overflow-wrap: break-word; position: relative;\" class=\"default_cursor_cs\"><img src=\"http://biznews_rebuild.test/uploads/image/1732325964-6741324c9aa3c.jpeg\" data-filename=\"Do-Huy-Khanh1-9470-1732165750.jpg\" style=\"width: 1020px;\"><br></p><p style=\"box-sizing: inherit; margin: 20px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 1.6; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; overflow-wrap: break-word; position: relative;\" class=\"default_cursor_cs\">\r\n</p><p style=\"box-sizing: inherit; margin: 20px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 1.6; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; overflow-wrap: break-word; position: relative;\" class=\"default_cursor_cs\">\r\n\"Ng&#432;&#7901;i thu nh&#7853;p th&#7845;p b&#7889;c th&#259;m 5 l&#7847;n 7 l&#432;&#7907;t mong mua &#273;&#432;&#7907;c c&#259;n h&#7897; nh&agrave; x&atilde; h&#7897;i 50 m2, song r&#7845;t kh&oacute;. Ch&uacute;ng ta &#273;&#432;a ra ch&iacute;nh s&aacute;ch n&agrave;y &#273;&#7875; g&#7905; cho d&#7921; &aacute;n nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i, trong khi &#7903; nhi&#7873;u th&agrave;nh ph&#7889; c&oacute; nh&#7919;ng khu &#273;&ocirc; th&#7883; x&acirc;y xong kh&ocirc;ng c&oacute; ng&#432;&#7901;i &#7903;\", &ocirc;ng Kh&aacute;nh n&ecirc;u.\r\n\r\nCh&#432;a k&#7875;, theo &ocirc;ng Nguy&#7877;n C&ocirc;ng Long, t&#7841;i kh&ocirc;ng &iacute;t &#273;&#7883;a ph&#432;&#417;ng x&#7843;y ra t&igrave;nh tr&#7841;ng ti&ecirc;u c&#7921;c nh&#432; &#273;&#7847;u c&#417; &#273;&#7845;t &#273;ai, nh&#7845;t l&agrave; mua gom &#273;&#7845;t n&ocirc;ng nghi&#7879;p di&#7877;n ra h&agrave;ng ch&#7909;c n&#259;m nay.\r\n\r\n\"C&#7847;n c&oacute; gi&#7843;i ph&aacute;p ng&#259;n thu gom, ch&#7889;ng h&#7907;p th&#7913;c h&oacute;a thu gom &#273;&#7845;t &#273;ai v&agrave; chuy&#7875;n &#273;&#7893;i m&#7909;c &#273;&iacute;ch &#273;&#7845;t r&#7915;ng, &#273;&#7845;t l&uacute;a\", &ocirc;ng ki&#7871;n ngh&#7883;.\r\n\r\nTheo d&#7921; th&#7843;o ngh&#7883; quy&#7871;t, Ch&iacute;nh ph&#7911; &#273;&#7873; xu&#7845;t th&iacute; &#273;i&#7875;m m&#7903; r&#7897;ng &#273;&#7845;t n&ocirc;ng nghi&#7879;p, phi n&ocirc;ng nghi&#7879;p l&agrave;m d&#7921; &aacute;n nh&agrave; th&#432;&#417;ng m&#7841;i qua th&#7887;a thu&#7853;n tr&ecirc;n ph&#7841;m vi c&#7843; n&#432;&#7899;c. &Ocirc;ng Mai V&#259;n H&#7843;i - Ph&oacute; tr&#432;&#7903;ng &#273;o&agrave;n &#273;&#7841;i bi&#7875;u t&#7881;nh Thanh H&oacute;a n&oacute;i nh&#432; v&#7853;y l&agrave; qu&aacute; r&#7897;ng, ch&#7881; n&ecirc;n &aacute;p d&#7909;ng &#7903; m&#7897;t s&#7889; t&#7881;nh, th&agrave;nh &#273;ang c&oacute; d&#7921; &aacute;n v&#432;&#7899;ng m&#7855;c.\r\n\r\nNg&#432;&#7907;c l&#7841;i, &#273;&#7841;i bi&#7875;u Ph&#7841;m V&#259;n Ho&agrave; (&#272;&#7891;ng Th&aacute;p), Tr&#7883;nh Xu&acirc;n An - &#7910;y vi&ecirc;n th&#432;&#7901;ng tr&#7921;c &#7910;y ban Qu&#7889;c ph&ograve;ng an ninh &#273;&#7891;ng t&igrave;nh th&#7921;c hi&#7879;n &aacute;p d&#7909;ng th&iacute; &#273;i&#7875;m ch&iacute;nh s&aacute;ch chuy&#7875;n &#273;&#7893;i &#273;&#7845;t qua th&#7887;a thu&#7853;n n&agrave;y trong ph&#7841;m vi c&#7843; n&#432;&#7899;c. B&#7903;i theo c&aacute;c &#273;&#7841;i bi&#7875;u n&agrave;y, n&#7871;u th&iacute; &#273;i&#7875;m &#7903; v&agrave;i &#273;&#7883;a ph&#432;&#417;ng s&#7869; d&#7851;n t&#7899;i c&#417; ch&#7871; xin cho, \"r&#7845;t nguy hi&#7875;m\".\r\n\r\nSong &ocirc;ng H&ograve;a l&#432;u &yacute; kh&ocirc;ng ph&#7843;i d&#7921; &aacute;n n&agrave;o c&#361;ng cho th&iacute; &#273;i&#7875;m m&#7903; r&#7897;ng di&#7879;n &#273;&#7845;t &#273;&#432;&#7907;c th&#7887;a thu&#7853;n l&agrave;m nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i. V&iacute; d&#7909;, d&#7921; &aacute;n &#273;ang v&#432;&#7899;ng sai ph&#7841;m, ch&#432;a x&#7917; l&yacute; kh&#7855;c ph&#7909;c th&igrave; kh&ocirc;ng &#273;&#432;&#7907;c &aacute;p d&#7909;ng.\r\n\r\n\"Ch&uacute;ng ta kh&ocirc;ng h&#7907;p th&#7913;c h&oacute;a sai ph&#7841;m c&#7911;a nh&agrave; &#273;&#7847;u t&#432;. Nh&#432;ng v&#7899;i c&aacute;c tr&#432;&#7901;ng h&#7907;p &#273;&#7863;c th&ugrave;, &#273;&#7863;c bi&#7879;t c&#361;ng c&#7847;n &#273;&#432;&#7907;c xem x&eacute;t, th&aacute;o g&#7905; ph&aacute;p l&yacute;\", &ocirc;ng H&ograve;a n&oacute;i, th&ecirc;m r&#7857;ng Nh&agrave; n&#432;&#7899;c s&#7869; thu &#273;&#432;&#7907;c ti&#7873;n s&#7917; d&#7909;ng &#273;&#7845;t, th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n kh&#417;i th&ocirc;ng, ng&#432;&#7901;i d&acirc;n y&ecirc;n t&acirc;m c&oacute; nh&agrave; &#7903; khi s&#7889; d&#7921; &aacute;n n&agrave;y &#273;&#432;&#7907;c g&#7905; kh&oacute;.</p>\n', 13, 33, '1732325964.jpg', '2024-06-02 07:21:25', '2024-11-23 01:39:24'),
(47, 'Thị Trường Bất Động Sản Tỉnh Rầm Rộ Nguồn Hàng Mới', '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><h2 class=\"sapo default_cursor_cs\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: 24px; font-family: Roboto; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(54, 54, 54);\"><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-weight: 400; font-size: 16px; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'>Th&#7901;i &#273;i&#7875;m cu&#7889;i n&#259;m, c&aacute;c th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n t&#7881;nh, th&agrave;nh &#273;ang r&#7847;m r&#7897; &#273;&oacute;n ngu&#7891;n h&agrave;ng m&#7899;i &#273;&#432;&#7907;c m&#7903; b&aacute;n ch&iacute;nh th&#7913;c. C&aacute;c ch&#7911; &#273;&#7847;u t&#432; c&#361;ng &ldquo;tranh th&#7911;&rdquo; &#273;&#7849;y m&#7841;nh b&aacute;n h&agrave;ng giai &#273;o&#7841;n n&agrave;y &ndash; th&#7901;i &#273;i&#7875;m d&ograve;ng ti&#7873;n d&#7891;i d&agrave;o h&#417;n do ki&#7873;u h&#7889;i &#273;&#7893; v&#7873;, c&aacute;c kho&#7843;n c&ocirc;ng n&#7907;, th&#432;&#7903;ng T&#7871;t &#273;&#432;&#7907;c thanh to&aacute;n. C&aacute;c m&ocirc;i gi&#7899;i b&#7845;t &#273;&#7897;ng s&#7843;n c&#361;ng t&#7845;t b&#7853;t cho c&aacute;c k&#7871; ho&#7841;ch b&aacute;n h&agrave;ng giai &#273;o&#7841;n n&agrave;y.</div><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-weight: 400; font-size: 16px; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'>Th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n Thanh H&oacute;a &#273;ang &#273;&oacute;n ngu&#7891;n h&agrave;ng &#273;&#7845;t n&#7873;n t&#7915; ph&acirc;n khu&nbsp;<a data-block-type=\"custom-link\" class=\"\" href=\"https://batdongsan.com.vn/ban-dat-nen-du-an-lightland-hai-tien\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"color: var(--pg-brand-primary);\">H&#7843;i Ti&#7871;n Center&nbsp;</a>thu&#7897;c khu &#273;&ocirc; th&#7883; Lightland H&#7843;i Ti&#7871;n do C&ocirc;ng ty c&#7893; ph&#7847;n &#273;&#7847;u t&#432; Lightland l&agrave;m ch&#7911; &#273;&#7847;u t&#432;. D&#7921; &aacute;n c&oacute; v&#7883; tr&iacute; t&#7841;i ng&atilde; N&#259;m Ch&#7907; V&#7921;c, giao &#273;i&#7875;m c&#7911;a ba tuy&#7871;n &#273;&#432;&#7901;ng: &#273;&#432;&#7901;ng Ven bi&#7875;n, &#273;&#432;&#7901;ng xu&#7889;ng khu du l&#7883;ch bi&#7875;n H&#7843;i Ti&#7871;n (&#273;&#432;&#7901;ng 33) v&agrave; &#273;&#432;&#7901;ng 13B (huy&#7879;n Ho&#7857;ng Ho&aacute;, Thanh Ho&aacute;). H&#7843;i Ti&#7871;n Center c&oacute; quy m&ocirc; g&#7847;n 9,8ha g&#7891;m 173 s&#7843;n ph&#7849;m v&#7899;i di&#7879;n t&iacute;ch t&#7915; 90 &ndash; 140m2. T&ugrave;y thu&#7897;c v&agrave;o t&#7915;ng v&#7883; tr&iacute;, di&#7879;n t&iacute;ch, gi&aacute; b&aacute;n m&#7895;i m2 &#273;&#7845;t t&#7841;i &#273;&acirc;y dao &#273;&#7897;ng tr&ecirc;n d&#432;&#7899;i 20 tri&#7879;u &#273;&#7891;ng/m2.</div></h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: 24px; font-family: Roboto; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(54, 54, 54);\"></p><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'>&#272;&agrave; L&#7841;t (L&acirc;m &#272;&ocirc;ng) c&#361;ng ch&agrave;o s&acirc;n th&#7883; tr&#432;&#7901;ng v&#7899;i m&#7897;t d&#7921; &aacute;n b&#7845;t &#273;&#7897;ng s&#7843;n m&#7899;i l&agrave; Haus Da Lat. D&#7921; &aacute;n c&oacute; quy m&ocirc; 5 ha, n&#7857;m b&ecirc;n H&#7891; Xu&acirc;n H&#432;&#417;ng v&agrave; do The One Destination l&agrave;m ch&#7911; &#273;&#7847;u t&#432;. Theo k&#7871; ho&#7841;ch, The One Destination s&#7869; x&acirc;y d&#7921;ng m&#7897;t t&#7893; h&#7907;p b&#7845;t &#273;&#7897;ng s&#7843;n chu&#7849;n ESG ngay t&#7841;i &#272;&agrave; L&#7841;t. D&#7921; &aacute;n bao g&#7891;m c&#259;n h&#7897; cao c&#7845;p, trung t&acirc;m th&#432;&#417;ng m&#7841;i, kh&aacute;ch s&#7841;n 5 sao &#273;&#432;&#7907;c th&#432;&#417;ng hi&#7879;u qu&#7889;c t&#7871; v&#7853;n h&agrave;nh.</div><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'>Th&#7883; tr&#432;&#7901;ng L&agrave;o Cai c&#361;ng &#273;&oacute;n th&ecirc;m m&#7897;t d&#7921; &aacute;n m&#7899;i l&agrave;&nbsp;<a data-block-type=\"custom-link\" class=\"\" href=\"https://batdongsan.com.vn/nha-dat-ban-dragon-complex\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"color: var(--pg-brand-primary);\">Dragon Complex</a>. &#272;&#432;&#7907;c bi&#7871;t, Dragon Complex n&#7857;m tr&ecirc;n tr&#7909;c &#273;&#432;&#7901;ng QL4E thu&#7897;c ph&#432;&#7901;ng B&#7855;c L&#7879;nh v&agrave; ph&#432;&#7901;ng B&igrave;nh Minh, TP L&agrave;o Cai, c&aacute;ch Sapa 30km v&agrave; c&aacute;ch c&#7917;a kh&#7849;u Qu&#7889;c t&#7871; L&agrave;o Cai kho&#7843;ng 9km. D&#7921; &aacute;n c&oacute; quy m&ocirc; 5,5 ha, bao g&#7891;m 301 c&#259;n nh&agrave; &#7903; th&#432;&#417;ng m&#7841;i trong &#273;&oacute; c&oacute; 253 c&#259;n nh&agrave; ph&#7889; li&#7873;n k&#7873; v&agrave; 48 c&#259;n nh&agrave; v&#432;&#7901;n. Di&#7879;n t&iacute;ch c&aacute;c c&#259;n l&agrave; t&#7915; 117m2 v&#7899;i k&#7871;t c&#7845;u x&acirc;y d&#7921;ng l&agrave; bi&#7879;t th&#7921; 3 t&#7847;ng, nh&agrave; ph&#7889; li&#7873;n k&#7873; 4 t&#7847;ng.</div><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'><img src=\"http://biznews_rebuild.test/uploads/image/1732326534-6741348620438.jpeg\" data-filename=\"batdongsan.jpg\" style=\"width: 320px;\" class=\"default_cursor_cs\"><br></div><div class=\"p default_cursor_cs\" style=\'font-family: Roboto, \"Helvetica Neue\", Helvetica, Arial, sans-serif; line-height: 26px; margin-bottom: 30px; color: rgb(28, 31, 34);\'><h2 class=\"default_cursor_cs\" style=\'margin-bottom: 20px; line-height: 44px !important; font-size: 32px !important; font-family: Lexend, \"Helvetica Neue\", Helvetica, Arial, sans-serif !important;\'>S&#7913;c Mua C&#7911;a Th&#7883; Tr&#432;&#7901;ng B&#7845;t &#272;&#7897;ng S&#7843;n T&#7881;nh Ch&#432;a S&ocirc;i &#272;&#7897;ng</h2><div class=\"p default_cursor_cs\" style=\"line-height: 26px; margin-bottom: 30px;\">D&ugrave; ngu&#7891;n cung cu&#7889;i n&#259;m &#273;&#7893; ra th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n t&#7881;nh kh&aacute; d&#7891;i d&agrave;o nh&#432;ng s&#7913;c mua c&#7911;a th&#7883; tr&#432;&#7901;ng ch&#432;a qu&aacute; m&#7841;nh. Theo m&ocirc;i gi&#7899;i Nguy&#7877;n V&#259;n Thuy&#7871;t, ng&#432;&#7901;i g&#7855;n b&oacute; v&#7899;i th&#7883; tr&#432;&#7901;ng &#273;&#7845;t n&#7873;n t&#7881;nh trong g&#7847;n 10 n&#259;m qua th&igrave; s&#7913;c mua giai &#273;o&#7841;n hi&#7879;n t&#7841;i ch&#7881; b&#7857;ng kho&#7843;ng 40% so v&#7899;i th&#7901;i k&igrave; &#273;&#7881;nh cao c&#7911;a &#273;&#7845;t n&#7873;n t&#7881;nh l&agrave; c&aacute;c n&#259;m 2019 tr&#7903; v&#7873; tr&#432;&#7899;c. Tuy nhi&ecirc;n, thanh kho&#7843;n &#7903; giai &#273;o&#7841;n n&agrave;y &#273;&atilde; &ldquo;kh&aacute;&rdquo; h&#417;n r&#7845;t nhi&#7873;u so v&#7899;i n&#259;m 2022 v&agrave; 2023. &ldquo;N&#259;m 2022 v&agrave; 2023, th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n t&#7881;nh &#273;&uacute;ng ngh&#297;a l&agrave; &#273;&oacute;ng b&#259;ng, thanh kho&#7843;n g&#7847;n nh&#432; &ldquo;t&#7855;t ng&#7845;m&rdquo;. R&#7845;t nhi&#7873;u m&ocirc;i gi&#7899;i b&aacute;n c&aacute;c th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n t&#7881;nh khi &#273;&oacute; &#273;&atilde; ph&#7843;i b&#7887; ngh&#7873;, chuy&#7875;n sang l&agrave;m c&ocirc;ng vi&#7879;c kh&aacute;c &#273;&#7875; ki&#7871;m s&#7889;ng&rdquo;, anh Thuy&#7871;t cho bi&#7871;t.</div><div class=\"p default_cursor_cs\" style=\"line-height: 26px; margin-bottom: 30px;\"><img src=\"http://biznews_rebuild.test/uploads/image/1732326534-67413486220a2.jpeg\" data-filename=\"dat-nen-tinh-1.jpg\" style=\"width: 750px;\"><br></div></div>\n', 13, 35, '1732326534.jpg', '2024-06-02 07:28:08', '2024-11-23 01:48:54');
INSERT INTO `articles` (`id`, `title`, `content`, `author_id`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(48, 'Rộ tin sắp trả mặt bằng 1,1 tỷ đồng/tháng, đại diện công ty Thái Công nói gì?', '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><h2 class=\"content-detail-sapo sm-sapo-mb-0 default_cursor_cs\" style=\"margin: 1.25rem 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 700; font-stretch: inherit; font-size: 1rem; line-height: 1.625rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(64, 64, 64);\">Th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n cho thu&ecirc; TPHCM xu&#7845;t hi&#7879;n nhi&#7873;u tin rao cho thu&ecirc; to&agrave; nh&agrave; 66-68 Hai B&agrave; Tr&#432;ng, qu&#7853;n 1 v&#7899;i gi&aacute; 1,1 t&#7927; &#273;&#7891;ng/th&aacute;ng. &#272;&acirc;y l&agrave; tr&#7909; s&#7903; c&ocirc;ng ty c&#7911;a nh&agrave; thi&#7871;t k&#7871; Qu&aacute;ch Th&aacute;i C&ocirc;ng.</h2><div class=\"maincontent main-content default_cursor_cs\" id=\"maincontent\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: medium; line-height: 1.75rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\"><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">G&#7847;n &#273;&acirc;y, th&#7883; tr&#432;&#7901;ng b&#7845;t &#273;&#7897;ng s&#7843;n cho thu&ecirc; t&#7841;i&nbsp;<a href=\"https://vietnamnet.vn/tphcm-tag9251933658903590518.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">TPHCM</a>&nbsp;xu&#7845;t hi&#7879;n th&ocirc;ng tin ch&#7911; s&#7903; h&#7919;a to&agrave; nh&agrave; hai m&#7863;t ti&#7873;n t&#7841;i s&#7889; 66-68 Hai B&agrave; Tr&#432;ng, ph&#432;&#7901;ng B&#7871;n Ngh&eacute;, qu&#7853;n 1, TPHCM rao cho thu&ecirc;.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">To&agrave; nh&agrave; n&agrave;y c&oacute; v&#7883; tr&iacute; &#273;&#7855;c &#273;&#7883;a khi n&#7857;m ngay giao l&#7897; Hai B&agrave; Tr&#432;ng - Nguy&#7877;n Si&ecirc;u, thu&#7897;c khu trung t&acirc;m s&#7847;m u&#7845;t b&#7853;c nh&#7845;t TPHCM. N&#417;i &#273;&acirc;y &#273;&#432;&#7907;c bi&#7871;t &#273;&#7871;n l&agrave; tr&#7909; s&#7903; c&ocirc;ng ty c&#7911;a nh&agrave; thi&#7871;t k&#7871; Qu&aacute;ch Th&aacute;i C&ocirc;ng.&nbsp;</p><figure class=\"image vnn-content-image\" style=\"margin: 20px auto; padding: 0px; list-style: none; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><picture style=\"margin: 0px; padding: 0px; list-style: none;\"><source data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=0&amp;s=_Jgh2iNxh60mr_O_SlCLPw\" media=\"(max-width: 1023px)\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=0&amp;s=_Jgh2iNxh60mr_O_SlCLPw\" style=\"margin: 0px; padding: 0px; list-style: none;\"><img src=\"http://batdongsan.test/uploads/image/1732541619-67447cb336f28.gif\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=0&amp;s=_Jgh2iNxh60mr_O_SlCLPw\" class=\"lazy-loaded default_cursor_cs\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=0&amp;s=_Jgh2iNxh60mr_O_SlCLPw\" alt=\"th&aacute;i c&ocirc;ng to&agrave; nh&agrave;.jpg\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=260&amp;s=eI8HnnMGNm7UaxaShmQkxg\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=0&amp;s=_Jgh2iNxh60mr_O_SlCLPw\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/9/17/thai-cong-toa-nha-8638.jpg?width=260&amp;s=eI8HnnMGNm7UaxaShmQkxg\" data-lg-id=\"b564b83c-cb41-4e27-8fdb-7604f0f7700f\" style=\"margin: 0px auto; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block; height: auto;\"></source></picture><figcaption style=\"margin: 10px 0px 0px; padding: 0px 1.875rem; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">Nhi&#7873;u th&ocirc;ng tin rao cho thu&ecirc; to&agrave; nh&agrave; s&#7889; 66-68 Hai B&agrave; Tr&#432;ng, qu&#7853;n 1. &#272;&acirc;y l&agrave; tr&#7909; s&#7903; c&ocirc;ng ty c&#7911;a nh&agrave; thi&#7871;t k&#7871; Qu&aacute;ch Th&aacute;i C&ocirc;ng. &#7842;nh: C&ocirc;ng ty TNHH Th&aacute;i C&ocirc;ng Vi&#7879;t Nam</figcaption></figure><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Theo tin rao, to&agrave; nh&agrave; n&agrave;y c&oacute; quy m&ocirc; 1 t&#7847;ng h&#7847;m v&agrave; 7 t&#7847;ng cao, t&#7893;ng di&#7879;n t&iacute;ch x&acirc;y d&#7921;ng h&#417;n 1.500m2. Di&#7879;n t&iacute;ch s&agrave;n c&#7911;a m&#7895;i t&#7847;ng kho&#7843;ng 170m2, c&oacute; trang b&#7883; 1 thang m&aacute;y v&agrave; h&#7879; th&#7889;ng &#273;i&#7879;n d&#7921; ph&ograve;ng.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Theo H.V, m&ocirc;i gi&#7899;i &#273;&#259;ng tin cho thu&ecirc; to&agrave; nh&agrave; 66-68 Hai B&agrave; Tr&#432;ng, &ocirc;ng nh&#7853;n th&ocirc;ng tin rao cho thu&ecirc; t&#7915; m&#7897;t m&ocirc;i gi&#7899;i kh&aacute;c. Ng&#432;&#7901;i n&agrave;y cho bi&#7871;t ch&#7911; to&agrave; nh&agrave; &#273;ang rao gi&aacute; cho thu&ecirc; 45.000 USD/th&aacute;ng, t&#432;&#417;ng &#7913;ng 1,1 t&#7927; &#273;&#7891;ng/th&aacute;ng.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">&ldquo;N&#7871;u c&oacute; kh&aacute;ch thu&ecirc;, ch&#7911; nh&agrave; s&#7869; mi&#7877;n ph&iacute; 30 ng&agrave;y &#273;&#7875; kh&aacute;ch s&#7917;a ch&#7919;a theo &yacute; mu&#7889;n. Ngo&agrave;i thanh to&aacute;n tr&#432;&#7899;c 3 th&aacute;ng ti&#7873;n thu&ecirc;, b&ecirc;n thu&ecirc; ph&#7843;i &#273;&#7863;t c&#7885;c th&ecirc;m 3 th&aacute;ng n&#7919;a. Th&#7901;i h&#7841;n h&#7907;p &#273;&#7891;ng l&agrave; 5 n&#259;m&rdquo;, &ocirc;ng H.V chia s&#7867;.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">T&#432;&#417;ng t&#7921;, m&#7897;t s&#7889; t&agrave;i kho&#7843;n tr&ecirc;n c&aacute;c website cho thu&ecirc; b&#7845;t &#273;&#7897;ng s&#7843;n c&#361;ng &#273;ang rao tin cho thu&ecirc; to&agrave; nh&agrave; t&#7841;i s&#7889; 66-68 Hai B&agrave; Tr&#432;ng, qu&#7853;n 1 v&#7899;i gi&aacute; 45.000 USD/th&aacute;ng. C&oacute; m&ocirc;i gi&#7899;i c&ograve;n kh&#7859;ng &#273;&#7883;nh, ch&#7911; to&agrave; nh&agrave; s&#7869; l&#7845;y l&#7841;i m&#7863;t b&#7857;ng &#273;ang cho c&ocirc;ng ty c&#7911;a Th&aacute;i C&ocirc;ng thu&ecirc; n&#7871;u t&igrave;m &#273;&#432;&#7907;c ng&#432;&#7901;i thu&ecirc; m&#7899;i.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Trao &#273;&#7893;i v&#7899;i PV VietNamNet v&agrave;o chi&#7873;u 17/9, &ocirc;ng Yves Huy Phan - &#273;&#7841;i di&#7879;n C&ocirc;ng ty TNHH Th&aacute;i C&ocirc;ng Vi&#7879;t Nam, kh&#7859;ng &#273;&#7883;nh th&ocirc;ng tin tr&ecirc;n ho&agrave;n to&agrave;n kh&ocirc;ng ch&iacute;nh x&aacute;c. V&#7883; n&agrave;y n&oacute;i th&ecirc;m: &ldquo;&#272;&acirc;y l&agrave; th&ocirc;ng tin b&#7883;a &#273;&#7863;t t&#7915; nh&#7919;ng trang b&#7845;t &#273;&#7897;ng s&#7843;n nh&#7857;m m&#7909;c &#273;&iacute;ch c&acirc;u view&rdquo;.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">Tr&#7909; s&#7903; t&#7841;i s&#7889; 66-68 Hai B&agrave; Tr&#432;ng, qu&#7853;n 1, C&ocirc;ng ty TNHH Th&aacute;i C&ocirc;ng Vi&#7879;t Nam &#273;&#432;&#7907;c bi&#7871;t &#273;&#7871;n l&agrave; doanh nghi&#7879;p chuy&ecirc;n thi&#7871;t k&#7871; n&#7897;i th&#7845;t c&#7911;a nh&agrave; thi&#7871;t k&#7871; n&#7897;i th&#7845;t Qu&aacute;ch Th&aacute;i C&ocirc;ng.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">N&#259;m 2007, &ocirc;ng th&agrave;nh l&#7853;p C&ocirc;ng ty Th&aacute;i C&ocirc;ng GmbH &amp; Co.KG t&#7841;i Hamburg, &#272;&#7913;c, ho&#7841;t &#273;&#7897;ng trong l&#297;nh v&#7921;c thi&#7871;t k&#7871; n&#7897;i th&#7845;t.&nbsp;&#272;&#7871;n n&#259;m 2014, nh&agrave; thi&#7871;t k&#7871;&nbsp;<a href=\"https://vietnamnet.vn/thai-cong-tag716944183616333609.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Th&aacute;i C&ocirc;ng</a>&nbsp;v&#7873; Vi&#7879;t Nam m&#7903; th&ecirc;m v&#259;n ph&ograve;ng v&agrave; showroom t&#7841;i to&agrave; nh&agrave; s&#7889; 66-68 Hai B&agrave; Tr&#432;ng, qu&#7853;n 1, TPHCM v&#7899;i th&#432;&#417;ng hi&#7879;u &ldquo;Thai Cong Interior Design&rdquo;.&nbsp;</p><p class=\"default_cursor_cs\" style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\">T&#7841;i to&agrave; nh&agrave; n&agrave;y, n&#259;m 2023, nh&agrave; thi&#7871;t k&#7871; Th&aacute;i C&ocirc;ng khai tr&#432;&#417;ng c&#7917;a h&agrave;ng Flagship store, n&#417;i gi&#7899;i thi&#7879;u c&aacute;c kh&ocirc;ng gian n&#7897;i th&#7845;t theo ch&#7911; &#273;&#7873; v&agrave; nh&#7919;ng &#273;&#7891; trang tr&iacute; n&#7897;i th&#7845;t cao c&#7845;p.&nbsp;</p><div class=\"ck-cms-insert-neww-group vnn-template-noneditable articles-edit default_cursor_cs\" id=\"vnn-editor-1726556935285\" data-temp=\"template20\" style=\"margin: 15px 0px; padding: 20px; list-style: none; border: 1px solid rgb(196, 196, 196); font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; clear: both; background: rgb(243, 243, 243);\"><article class=\"ck-cms-insert-news\" data-id=\"2244426\" style=\"margin: 0px 0px 13px; padding: 0px 0px 13px; list-style: none; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(227, 224, 224); border-left-color: initial; border-image: initial; font: inherit; display: grid; grid-template-columns: 140px 1fr; grid-template-rows: auto; gap: 15px;\"><a href=\"https://vietnamnet.vn/shark-hung-thai-cong-ban-dui-heo-muoi-112-trieu-chiec-thi-truong-loan-gia-2244426.html\" style=\"margin: 0px; padding: 0px 0px 93.3125px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; position: relative; height: 0px; display: block; color: rgb(45, 103, 173);\"><picture style=\"margin: 0px; padding: 0px; list-style: none;\"><img src=\"http://batdongsan.test/uploads/image/1732541619-67447cb337cb4.gif\" data-original=\"https://static-images.vnncdn.net/files/publish/2024/1/28/shark-hung-thai-cong-ban-dui-heo-muoi-112-trieuchiec-thi-truong-loan-gia-25.jpg?width=0&amp;s=yz4zv9dqN8jIeJ2odHT_5Q\" class=\" ls-is-cached lazy-loaded\" data-srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/28/shark-hung-thai-cong-ban-dui-heo-muoi-112-trieuchiec-thi-truong-loan-gia-25.jpg?width=260&amp;s=71MOr-oM821svBjEfFMStw\" alt=\"Shark H&#432;ng, Th&aacute;i C&ocirc;ng b&aacute;n &#273;&ugrave;i heo mu&#7889;i 112 tri&#7879;u/chi&#7871;c, th&#7883; tr&#432;&#7901;ng lo&#7841;n gi&aacute;\" srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/28/shark-hung-thai-cong-ban-dui-heo-muoi-112-trieuchiec-thi-truong-loan-gia-25.jpg?width=260&amp;s=71MOr-oM821svBjEfFMStw\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; position: absolute; inset: 0px; width: 140px; height: 93.3125px; object-fit: cover;\"></picture></a><div class=\"insert-wiki-content\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><h3 class=\"insert-wiki-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><a href=\"https://vietnamnet.vn/shark-hung-thai-cong-ban-dui-heo-muoi-112-trieu-chiec-thi-truong-loan-gia-2244426.html\" class=\"default_pointer_cs\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(42, 42, 42); display: block;\">Shark H&#432;ng, Th&aacute;i C&ocirc;ng b&aacute;n &#273;&ugrave;i heo mu&#7889;i 112 tri&#7879;u/chi&#7871;c, th&#7883; tr&#432;&#7901;ng lo&#7841;n gi&aacute;</a></h3><div class=\"insert-wiki-description default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(108, 108, 108);\">M&#7841;ng x&atilde; h&#7897;i &#273;ang x&ocirc;n xao khi Shark H&#432;ng v&agrave; doanh nh&acirc;n Th&aacute;i C&ocirc;ng c&ugrave;ng b&aacute;n &#273;&ugrave;i heo mu&#7889;i T&acirc;y Ban Nha \'phi&ecirc;n b&#7843;n gi&#7899;i h&#7841;n\' gi&aacute; l&ecirc;n t&#7899;i 112 tri&#7879;u &#273;&#7891;ng/chi&#7871;c. T&#7841;i Vi&#7879;t Nam, &#273;&ugrave;i heo mu&#7889;i c&aacute;c lo&#7841;i b&aacute;n kh&#7855;p ch&#7907; m&#7841;ng v&agrave; c&#7917;a h&agrave;ng th&#7921;c ph&#7849;m.</div></div></article><article class=\"ck-cms-insert-news default_cursor_cs\" data-id=\"2239437\" style=\"margin: 0px 0px 13px; padding: 0px 0px 13px; list-style: none; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(227, 224, 224); border-left-color: initial; border-image: initial; font: inherit; display: grid; grid-template-columns: 140px 1fr; grid-template-rows: auto; gap: 15px;\"><a href=\"https://vietnamnet.vn/dieu-gi-se-dien-ra-sau-khi-thai-cong-livestream-hang-xa-xi-roi-ban-tui-via-he-2239437.html\" style=\"margin: 0px; padding: 0px 0px 93.3125px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; position: relative; height: 0px; display: block; color: rgb(45, 103, 173);\"><picture style=\"margin: 0px; padding: 0px; list-style: none;\"><img src=\"http://batdongsan.test/uploads/image/1732541619-67447cb338d38.gif\" data-original=\"https://static-images.vnncdn.net/files/publish/2024/1/14/kich-ban-tiep-theo-sau-khi-thai-cong-livestream-hang-xa-xi-roi-ban-tui-via-he-990.gif?width=0&amp;s=QGniPQOD5IRXbqekVxRwYQ\" class=\" lazy-loaded\" data-srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/14/kich-ban-tiep-theo-sau-khi-thai-cong-livestream-hang-xa-xi-roi-ban-tui-via-he-990.gif?width=260&amp;s=r8O69438_xX9x-gPSIsTSw\" alt=\"&#272;i&#7873;u g&igrave; s&#7869; di&#7877;n ra sau khi Th&aacute;i C&ocirc;ng livestream h&agrave;ng xa x&#7881; r&#7891;i b&aacute;n t&uacute;i v&#7881;a h&egrave;?\" srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/14/kich-ban-tiep-theo-sau-khi-thai-cong-livestream-hang-xa-xi-roi-ban-tui-via-he-990.gif?width=260&amp;s=r8O69438_xX9x-gPSIsTSw\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; position: absolute; inset: 0px; width: 140px; height: 93.3125px; object-fit: cover;\"></picture></a><div class=\"insert-wiki-content default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><h3 class=\"insert-wiki-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><a href=\"https://vietnamnet.vn/dieu-gi-se-dien-ra-sau-khi-thai-cong-livestream-hang-xa-xi-roi-ban-tui-via-he-2239437.html\" class=\"default_pointer_cs\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(42, 42, 42); display: block;\">&#272;i&#7873;u g&igrave; s&#7869; di&#7877;n ra sau khi Th&aacute;i C&ocirc;ng livestream h&agrave;ng xa x&#7881; r&#7891;i b&aacute;n t&uacute;i v&#7881;a h&egrave;?</a></h3><div class=\"insert-wiki-description default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(108, 108, 108);\">Nh&agrave; thi&#7871;t k&#7871; Th&aacute;i C&ocirc;ng d&#7891;n d&#7853;p b&aacute;n t&uacute;i &ldquo;ki&#7871;n th&#7913;c, kinh nghi&#7879;m, tr&#7843;i nghi&#7879;m&rdquo; gi&aacute; 99k v&#7899;i ch&#7919; k&yacute; c&#7911;a m&igrave;nh sau khi n&#7893;i nh&#432; c&#7891;n tr&ecirc;n m&#7841;ng v&#7899;i lo&#7841;t livestream b&aacute;n &#273;&#7891; xa x&#7881; gi&aacute; &#273;&#7855;t v&ocirc; ti&#7873;n kho&aacute;ng h&#7853;u, t&#7915; v&agrave;i tr&#259;m tri&#7879;u t&#7899;i c&#7843; t&#7927; &#273;&#7891;ng.</div></div></article><article class=\"ck-cms-insert-news\" data-id=\"2239289\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit; display: grid; grid-template-columns: 140px 1fr; grid-template-rows: auto; gap: 15px;\"><a href=\"https://vietnamnet.vn/doanh-nhan-thai-cong-gay-soc-khi-ban-ro-trai-cay-gan-1-ty-ban-tui-99k-2239289.html\" style=\"margin: 0px; padding: 0px 0px 93.3125px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; position: relative; height: 0px; display: block; color: rgb(45, 103, 173);\"><picture style=\"margin: 0px; padding: 0px; list-style: none;\"><img src=\"http://batdongsan.test/uploads/image/1732541619-67447cb3397b7.gif\" data-original=\"https://static-images.vnncdn.net/files/publish/2024/1/14/doanh-nhan-thai-cong-gay-soc-khi-ban-ro-trai-cay-gan-1-ty-ban-tui-99k-447.gif?width=0&amp;s=ucID2QvNg8nfWm_0pMJH8A\" class=\" lazy-loaded\" data-srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/14/doanh-nhan-thai-cong-gay-soc-khi-ban-ro-trai-cay-gan-1-ty-ban-tui-99k-447.gif?width=260&amp;s=GV5Bapb1qrR2s2QsqKXxgA\" alt=\"Doanh nh&acirc;n Th&aacute;i C&ocirc;ng g&acirc;y s&#7889;c khi b&aacute;n r&#7893; tr&aacute;i c&acirc;y g&#7847;n 1 t&#7927; &#273;&#7891;ng, b&aacute;n t&uacute;i 99K\" srcset=\"https://static-images.vnncdn.net/files/publish/2024/1/14/doanh-nhan-thai-cong-gay-soc-khi-ban-ro-trai-cay-gan-1-ty-ban-tui-99k-447.gif?width=260&amp;s=GV5Bapb1qrR2s2QsqKXxgA\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit; max-width: 100%; position: absolute; inset: 0px; width: 140px; height: 93.3125px; object-fit: cover;\"></picture></a><div class=\"insert-wiki-content default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><h3 class=\"insert-wiki-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; border: 0px; font: inherit;\"><a href=\"https://vietnamnet.vn/doanh-nhan-thai-cong-gay-soc-khi-ban-ro-trai-cay-gan-1-ty-ban-tui-99k-2239289.html\" class=\"default_pointer_cs\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 16px; line-height: 24px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(42, 42, 42); display: block;\">Doanh nh&acirc;n Th&aacute;i C&ocirc;ng g&acirc;y s&#7889;c khi b&aacute;n r&#7893; tr&aacute;i c&acirc;y g&#7847;n 1 t&#7927; &#273;&#7891;ng, b&aacute;n t&uacute;i 99K</a></h3><div class=\"insert-wiki-description default_cursor_cs\" style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: 20px; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(108, 108, 108);\">Nh&agrave; thi&#7871;t k&#7871; ng&#432;&#7901;i &#272;&#7913;c g&#7889;c Vi&#7879;t Th&aacute;i C&ocirc;ng g&acirc;y s&#7889;t c&#7897;ng &#273;&#7891;ng b&aacute;n h&agrave;ng online v&#7899;i nh&#7919;ng livestream c&#7843; tri&#7879;u ng&#432;&#7901;i xem v&agrave; &#273;&#7863;c bi&#7879;t gi&aacute; s&#7843;n ph&#7849;m cao ng&#7845;t tr&ecirc;n tr&#7901;i. C&ocirc;ng ty c&#7911;a c&#7921;u \"&#7843;o thu&#7853;t gia\" l&agrave;m &#259;n ra sao v&agrave; mang l&#7841;i gi&aacute; tr&#7883; g&igrave; cho kh&aacute;ch h&agrave;ng?</div></div></article></div></div>\n', 13, 31, '1732541619.jpg', '2024-06-02 07:42:42', '2024-11-25 13:33:39');
INSERT INTO `articles` (`id`, `title`, `content`, `author_id`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(49, 'The OpusK - mảnh ghép được mong chờ nhất tại The Metropole Thủ Thiêm', '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><h2 class=\"content-detail-sapo sm-sapo-mb-0 default_cursor_cs\" style=\"list-style: none; margin: 1.25rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 700; font-stretch: inherit; font-size: 1rem; line-height: 1.625rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(64, 64, 64);\">Ph&acirc;n khu The OpusK to&#7841; l&#7841;c t&#7841;i v&#7883; tr&iacute; l&otilde;i trung t&acirc;m, &#273;&#432;&#7907;c v&iacute; nh&#432; m&#7843;nh gh&eacute;p cu&#7889;i c&ugrave;ng &#273;&#7875; ho&agrave;n thi&#7879;n b&#7913;c tranh &#273;&#7855;t gi&aacute; c&#7911;a &#273;&ocirc; th&#7883; cao c&#7845;p The Metropole Th&#7911; Thi&ecirc;m.</h2><h2 class=\"detail-sapo default_cursor_cs\" data-role=\"sapo\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Inter; color: rgb(51, 51, 51); font-size: 18px; font-weight: 600; line-height: 26px;\"><div class=\"maincontent main-content default_cursor_cs\" id=\"maincontent\" style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; font-size: medium; line-height: 1.75rem; font-family: arial; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80);\"><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\"><span class=\"default_cursor_cs\" style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">V&#7883; tr&iacute; &#273;&#7855;c &#273;&#7883;a&nbsp;</span></p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">The OpusK h&#432;&#7903;ng tr&#7885;n m&#7885;i &#432;u th&#7871; t&#7915; h&#7879; th&#7889;ng h&#7841; t&#7847;ng giao th&ocirc;ng v&#432;&#7907;t tr&#7897;i v&agrave; ti&#7879;n &iacute;ch &#273;&ocirc; th&#7883; hi&#7879;n &#273;&#7841;i. Khu v&#7921;c n&agrave;y &#273;&atilde; &#273;&#432;&#7907;c quy ho&#7841;ch &#273;&#7875; tr&#7903; th&agrave;nh trung t&acirc;m t&agrave;i ch&iacute;nh, th&#432;&#417;ng m&#7841;i v&agrave; d&#7883;ch v&#7909; &#273;a ch&#7913;c n&#259;ng c&#7911;a TP.HCM, h&#7913;a h&#7865;n s&aacute;nh ngang v&#7899;i c&aacute;c trung t&acirc;m n&#7893;i ti&#7871;ng trong khu v&#7921;c.</p><figure class=\"image vnn-content-image default_cursor_cs\" style=\"list-style: none; margin: 20px auto; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><picture style=\"list-style: none; margin: 0px; padding: 0px;\"><source data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=0&amp;s=rbNX9VGK42euWVq1sqzr4g\" media=\"(max-width: 1023px)\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=0&amp;s=rbNX9VGK42euWVq1sqzr4g\" style=\"list-style: none; margin: 0px; padding: 0px;\"><img src=\"http://batdongsan.test/uploads/image/1732541474-67447c2237a35.gif\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=0&amp;s=rbNX9VGK42euWVq1sqzr4g\" class=\"lazy-loaded default_cursor_cs\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=0&amp;s=rbNX9VGK42euWVq1sqzr4g\" alt=\"Picture1..png\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=260&amp;s=dhhv6MqA8sntsnbBOJOT2g\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=0&amp;s=rbNX9VGK42euWVq1sqzr4g\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture1-107348.png?width=260&amp;s=dhhv6MqA8sntsnbBOJOT2g\" data-lg-id=\"03d85fc4-c62f-44c9-a7f7-5ca8c2a005dd\" style=\"list-style: none; margin: 0px auto; padding: 0px; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block; height: auto;\"></source></picture><figcaption class=\"default_cursor_cs\" style=\"list-style: none; margin: 10px 0px 0px; padding: 0px 1.875rem; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">To&agrave;n c&#7843;nh khu v&#7921;c Th&#7911; Thi&ecirc;m - trung t&acirc;m t&agrave;i ch&iacute;nh m&#7899;i c&#7911;a th&agrave;nh ph&#7889;. &#7842;nh: S&#417;n Kim Land</figcaption></figure><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">S&#7903; h&#7919;u h&#7841; t&#7847;ng giao th&ocirc;ng chu&#7849;n ch&#7881;nh c&#7911;a v&ugrave;ng bao g&#7891;m c&#7847;u Ba Son, c&#7847;u&nbsp;<a href=\"https://vietnamnet.vn/thu-thiem-tag3578038853030528603.html\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Th&#7911; Thi&ecirc;m</a>, tuy&#7871;n metro s&#7889; 2&hellip;, c&#432; d&acirc;n c&#7911;a The OpusK s&#7869; ch&#7881; m&#7845;t 2-3 ph&uacute;t &#273;&#7875; di chuy&#7875;n v&#7873; qu&#7853;n 1, d&#7877; d&agrave;ng ti&#7871;p c&#7853;n c&aacute;c qu&#7853;n trung t&acirc;m v&agrave; c&aacute;c ti&#7879;n &iacute;ch &#273;&ocirc; th&#7883; nh&#432; tr&#432;&#7901;ng h&#7885;c qu&#7889;c t&#7871;, b&#7879;nh vi&#7879;n hi&#7879;n &#273;&#7841;i v&agrave; khu vui ch&#417;i gi&#7843;i tr&iacute; s&ocirc;i &#273;&#7897;ng.</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">T&#7915; The OpusK, c&#432; d&acirc;n c&#361;ng d&#7877; d&agrave;ng k&#7871;t n&#7889;i v&#7899;i nh&#7919;ng c&ocirc;ng tr&igrave;nh bi&#7875;u t&#432;&#7907;ng g&#7847;n k&#7873; nh&#432; Nh&agrave; h&aacute;t Giao h&#432;&#7903;ng, Nh&#7841;c v&agrave; V&#361; k&#7883;ch TP.HCM d&#7921; ki&#7871;n &#273;&#432;&#7907;c ho&agrave;n thi&#7879;n trong n&#259;m 2025, c&#361;ng nh&#432; C&ocirc;ng vi&ecirc;n b&#7901; s&ocirc;ng S&agrave;i G&ograve;n &#273;&#7847;y &#7845;n t&#432;&#7907;ng.</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">Kh&ocirc;ng ch&#7881; mang l&#7841;i nh&#7919;ng gi&aacute; tr&#7883; B&#272;S b&#7873;n v&#7919;ng, v&#7883; tr&iacute; n&agrave;y c&ograve;n n&acirc;ng t&#7847;m phong c&aacute;ch s&#7889;ng c&#7911;a c&#7897;ng &#273;&#7891;ng c&#432; d&acirc;n tinh hoa, khi ch&#7889;n an c&#432; &#273;&#432;&#7907;c k&#7871;t n&#7889;i m&#7885;i ti&#7879;n &iacute;ch c&#7911;a cu&#7897;c s&#7889;ng t&#7915; c&ocirc;ng vi&#7879;c &#273;&#7871;n gi&#7843;i tr&iacute; v&agrave; s&#7913;c kh&#7887;e.</p><p style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\"><span style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">&ldquo;Tuy&#7879;t t&aacute;c&rdquo; gi&#7899;i h&#7841;n gi&#7919;a l&ograve;ng &#273;&ocirc; th&#7883;&nbsp;</span></p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">The OpusK &#273;&#432;&#7907;c thi&#7871;t k&#7871; nh&#432; m&#7897;t t&aacute;c ph&#7849;m ngh&#7879; thu&#7853;t tinh t&#7871; b&#7903;i &#273;&#7897;i ng&#361; ki&#7871;n tr&uacute;c s&#432; v&agrave; c&aacute;c &#273;&#417;n v&#7883; thi&#7871;t k&#7871; qu&#7889;c t&#7871; h&agrave;ng &#273;&#7847;u, mang &#273;&#7853;m d&#7845;u &#7845;n c&#7911;a khu &#273;&ocirc; th&#7883; bi&#7875;u t&#432;&#7907;ng The Metropole Th&#7911; Thi&ecirc;m. T&ecirc;n g&#7885;i The OpusK l&#7845;y c&#7843;m h&#7913;ng t&#7915; kh&aacute;i ni&#7879;m \"Opus\" - bi&#7875;u t&#432;&#7907;ng c&#7911;a nh&#7919;ng ki&#7879;t t&aacute;c v&#432;&#7907;t th&#7901;i gian, k&#7871;t h&#7907;p c&ugrave;ng hai k&yacute; t&#7921; \"S\" v&agrave; \"K\" &#273;&#7841;i di&#7879;n cho Nh&agrave; ph&aacute;t tri&#7875;n B&#272;S SonKim Land, t&#7841;o n&ecirc;n d&#7845;u &#7845;n &#273;&#7897;c b&#7843;n gi&#7919;a l&ograve;ng Th&#7911; Thi&ecirc;m.</p><figure class=\"image vnn-content-image default_cursor_cs\" style=\"list-style: none; margin: 20px auto; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><picture style=\"list-style: none; margin: 0px; padding: 0px;\"><source data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=0&amp;s=u13GuIX4bnFgrRJOi-dyrw\" media=\"(max-width: 1023px)\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=0&amp;s=u13GuIX4bnFgrRJOi-dyrw\" style=\"list-style: none; margin: 0px; padding: 0px;\"><img src=\"http://batdongsan.test/uploads/image/1732541474-67447c22395ce.gif\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=0&amp;s=u13GuIX4bnFgrRJOi-dyrw\" class=\"lazy-loaded default_cursor_cs\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=0&amp;s=u13GuIX4bnFgrRJOi-dyrw\" alt=\"Picture2.png\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=260&amp;s=sYG-IygZxwVri52qW_GnHw\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=260&amp;s=sYG-IygZxwVri52qW_GnHw\" data-lg-id=\"ef0e4856-7461-4b2f-9172-8d94e4fd29a6\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture2-107349.png?width=0&amp;s=u13GuIX4bnFgrRJOi-dyrw\" style=\"list-style: none; margin: 0px auto; padding: 0px; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block; height: auto;\"></source></picture><figcaption style=\"list-style: none; margin: 10px 0px 0px; padding: 0px 1.875rem; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">The OpusK l&agrave; m&#7843;nh gh&eacute;p cu&#7889;i c&ugrave;ng ho&agrave;n thi&#7879;n The Metropole Th&#7911; Thi&ecirc;m. &#7842;nh ph&#7889;i c&#7843;nh: S&#417;n Kim Land</figcaption></figure><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">&#272;&#7841;i di&#7879;n S&#417;n Kim Land cho bi&#7871;t, The OpusK mang &#273;&#7871;n 150 c&#259;n h&#7897; gi&#7899;i h&#7841;n, n&#417;i t&#7915;ng chi ti&#7871;t thi&#7871;t k&#7871; v&agrave; ti&#7879;n &iacute;ch &#273;&#7873;u &#273;&#432;&#7907;c ch&#259;m ch&uacute;t t&#7881; m&#7881;. M&#7897;t trong nh&#7919;ng &#273;i&#7875;m nh&#7845;n n&#7893;i b&#7853;t nh&#7845;t c&#7911;a The OpusK so v&#7899;i c&aacute;c ph&acirc;n khu kh&aacute;c ch&iacute;nh l&agrave; phong c&aacute;ch thi&#7871;t k&#7871; &#273;&#432;&#417;ng &#273;&#7841;i ngh&#7879; thu&#7853;t v&agrave; tinh t&#7871;.&nbsp;</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">C&aacute;c c&#259;n h&#7897; t&#7841;i The OpusK &#273;&#7873;u c&oacute; tr&#7847;n cao tho&aacute;ng &#273;&#7841;t 3,2m, m&#7903; ra kh&ocirc;ng gian k&#7871;t n&#7889;i r&#7897;ng r&atilde;i, tho&#7843;i m&aacute;i cho m&#7895;i c&#259;n h&#7897;. H&#7879; c&#7917;a k&iacute;nh tr&#7843;i d&agrave;i t&#7915; s&agrave;n &#273;&#7871;n tr&#7847;n, kh&ocirc;ng ch&#7881; &#273;&oacute;n tr&#7885;n &aacute;nh s&aacute;ng t&#7921; nhi&ecirc;n m&agrave; c&ograve;n mang l&#7841;i t&#7847;m nh&igrave;n to&agrave;n c&#7843;nh 360&deg; v&#7873; th&agrave;nh ph&#7889; hi&#7879;n &#273;&#7841;i. &#272;&#7863;c bi&#7879;t, ban c&ocirc;ng \"panoramic balcony\" &#273;&#7897;c &#273;&aacute;o v&#7899;i di&#7879;n t&iacute;ch l&ecirc;n &#273;&#7871;n 7,5m&sup2; nh&#432; bi&#7871;n m&#7895;i c&#259;n h&#7897; th&agrave;nh kh&ocirc;ng gian th&#432;&#7903;ng l&atilde;m ngh&#7879; thu&#7853;t gi&#7919;a l&ograve;ng &#273;&ocirc; th&#7883;, n&#417;i c&#432; d&acirc;n c&oacute; th&#7875; th&#432; gi&atilde;n trong kh&ocirc;ng gian ri&ecirc;ng t&#432; nh&#432;ng v&#7851;n k&#7871;t n&#7889;i v&#7899;i nh&#7883;p s&#7889;ng n&#259;ng &#273;&#7897;ng b&ecirc;n ngo&agrave;i.&nbsp;</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">&ldquo;&#272;&acirc;y kh&ocirc;ng &#273;&#417;n thu&#7847;n l&agrave; ch&#7889;n an c&#432;, m&agrave; c&ograve;n l&agrave; n&#417;i ch&#7911; nh&acirc;n kh&#7859;ng &#273;&#7883;nh gu th&#7849;m m&#7929; tinh t&#7871; v&agrave; v&#7883; th&#7871; c&aacute; nh&acirc;n&rdquo;, &#273;&#7841;i di&#7879;n S&#417;n Kim Land nh&#7845;n m&#7841;nh.&nbsp;</p><figure class=\"image vnn-content-image\" style=\"list-style: none; margin: 20px auto; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><picture style=\"list-style: none; margin: 0px; padding: 0px;\"><source data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=0&amp;s=woHGGAgSi_KsrR64USmG9Q\" media=\"(max-width: 1023px)\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=0&amp;s=woHGGAgSi_KsrR64USmG9Q\" style=\"list-style: none; margin: 0px; padding: 0px;\"><img src=\"http://batdongsan.test/uploads/image/1732541474-67447c223a1c4.gif\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=0&amp;s=woHGGAgSi_KsrR64USmG9Q\" class=\"lazy-loaded default_cursor_cs\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=0&amp;s=woHGGAgSi_KsrR64USmG9Q\" alt=\"Picture3.png\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=260&amp;s=mniVtw0AJsJgydlqoQsrvg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=260&amp;s=mniVtw0AJsJgydlqoQsrvg\" data-lg-id=\"07169558-1d11-41d6-a4cf-c82d978b7196\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture3-107350.png?width=0&amp;s=woHGGAgSi_KsrR64USmG9Q\" style=\"list-style: none; margin: 0px auto; padding: 0px; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block; height: auto;\"></source></picture><figcaption class=\"default_cursor_cs\" style=\"list-style: none; margin: 10px 0px 0px; padding: 0px 1.875rem; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\">Thi&#7871;t k&#7871; &#273;&#7897;c &#273;&aacute;o v&#7899;i ban c&ocirc;ng 360 &#273;&#7897; v&agrave; h&#7879; k&iacute;nh bao qu&aacute;t. &#7842;nh ph&#7889;i c&#7843;nh: S&#417;n Kim Land</figcaption></figure><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">B&ecirc;n c&#7841;nh thi&#7871;t k&#7871;, The OpusK c&ograve;n th&#7875; hi&#7879;n &#273;&#7859;ng c&#7845;p qua phong c&aacute;ch s&#7889;ng &#273;&uacute;ng chu&#7849;n &#273;&ocirc; th&#7883; qu&#7889;c t&#7871;. Ch&#7881; c&#7847;n m&#7897;t chuy&#7871;n thang m&aacute;y, c&#432; d&acirc;n c&oacute; th&#7875; &#273;&#7871;n ngay kh&ocirc;ng gian l&agrave;m vi&#7879;c h&#7841;ng A, c&aacute;c trung t&acirc;m th&#432;&#417;ng m&#7841;i s&#7847;m u&#7845;t v&agrave; khu gi&#7843;i tr&iacute; hi&#7879;n &#273;&#7841;i. C&ugrave;ng v&#7899;i &#273;&oacute; l&agrave; h&#417;n 2.000 m&sup2; ti&#7879;n &iacute;ch n&#7897;i khu ch&#7881; d&agrave;nh ri&ecirc;ng cho ch&#7911; nh&acirc;n c&#7911;a 150 c&#259;n h&#7897;, &#273;&#432;&#7907;c thi&#7871;t k&#7871; theo ti&ecirc;u chu&#7849;n resort nh&#432; h&#7891; b&#417;i v&ocirc; c&#7921;c, ph&ograve;ng yoga th&#432; gi&atilde;n v&agrave; khu v&#7921;c golf m&ocirc; ph&#7887;ng&hellip;, mang l&#7841;i tr&#7843;i nghi&#7879;m ngh&#7881; d&#432;&#7905;ng m&#7899;i m&#7867; ngay t&#7841;i kh&ocirc;ng gian s&#7889;ng th&acirc;n thu&#7897;c.</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">&#272;&#7891;ng h&agrave;nh c&ugrave;ng The OpusK l&agrave; &#273;&#417;n v&#7883; qu&#7843;n l&yacute; chuy&ecirc;n nghi&#7879;p, &#273;&#7843;m b&#7843;o m&#7885;i ti&ecirc;u chu&#7849;n d&#7883;ch v&#7909; cao c&#7845;p, mang &#273;&#7871;n cho c&#432; d&acirc;n nh&#7919;ng tr&#7843;i nghi&#7879;m s&#7889;ng b&#7853;c nh&#7845;t.&nbsp;</p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\"><span style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ti&#7873;m n&#259;ng gia t&#259;ng gi&aacute; tr&#7883;&nbsp;</span></p><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">The OpusK &#273;&#432;&#7907;c x&acirc;y d&#7921;ng tr&ecirc;n n&#7873;n t&#7843;ng v&#7919;ng ch&#7855;c c&#7911;a Nh&agrave; ph&aacute;t tri&#7875;n B&#272;S chuy&ecirc;n nghi&#7879;p SonKim Land, v&#7899;i c&aacute;c d&#7921; &aacute;n tr&#432;&#7899;c &#273;&oacute; nh&#432; The Galleria Residence, The Crest Residence v&agrave; The Opera Residence &#273;&atilde; kh&#7859;ng &#273;&#7883;nh uy t&iacute;n khi lu&ocirc;n &#273;&#432;&#7907;c kh&aacute;ch h&agrave;ng v&agrave; nh&agrave; &#273;&#7847;u t&#432; &#432;u &aacute;i l&#7921;a ch&#7885;n. The Metropole Th&#7911; Thi&ecirc;m v&#7899;i d&#7845;u &#7845;n cu&#7889;i c&ugrave;ng mang t&ecirc;n The OpusK &#273;&#432;&#7907;c gi&#7899;i &#273;&#7847;u t&#432; &#273;&aacute;nh gi&aacute; c&oacute; nhi&#7873;u c&#417; h&#7897;i gia t&#259;ng gi&aacute; tr&#7883; &#273;&#7847;u t&#432; b&#7873;n v&#7919;ng cho ch&#7911; s&#7903; h&#7919;u.&nbsp;</p><figure class=\"image vnn-content-image\" style=\"list-style: none; margin: 20px auto; padding: 0px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(111, 111, 111); text-align: center; width: 760px;\"><picture style=\"list-style: none; margin: 0px; padding: 0px;\"><source data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=0&amp;s=m7ScO-hA2JvODyZ6Q8aN8g\" media=\"(max-width: 1023px)\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=0&amp;s=m7ScO-hA2JvODyZ6Q8aN8g\" style=\"list-style: none; margin: 0px; padding: 0px;\"><img src=\"http://batdongsan.test/uploads/image/1732541474-67447c223ad2d.gif\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=0&amp;s=m7ScO-hA2JvODyZ6Q8aN8g\" class=\"lazy-loaded default_cursor_cs\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=0&amp;s=m7ScO-hA2JvODyZ6Q8aN8g\" alt=\"Picture4.png\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=260&amp;s=oi6I0uNYPCem3hQ9mG-6-g\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=260&amp;s=oi6I0uNYPCem3hQ9mG-6-g\" data-lg-id=\"1e42c4c4-8dd0-4eca-bd56-a4491969db76\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/11/25/picture4-107351.png?width=0&amp;s=m7ScO-hA2JvODyZ6Q8aN8g\" style=\"list-style: none; margin: 0px auto; padding: 0px; border: 0px; font: inherit; max-width: 100%; width: 760px; display: block; height: auto;\"></source></picture><figcaption style=\"list-style: none; margin: 10px 0px 0px; padding: 0px 1.875rem; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.9375rem; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; width: 760px;\" class=\"default_cursor_cs\">C&aacute;c ph&acirc;n khu kh&aacute;c t&#7841;i The Metropole Th&#7911; Thi&ecirc;m nh&#432; The Galleria Residence, The Crest Residence v&agrave; The Opera Residence &#273;&atilde; h&igrave;nh th&agrave;nh. &#7842;nh ph&#7889;i c&#7843;nh: S&#417;n Kim Land</figcaption></figure><p class=\"default_cursor_cs\" style=\"list-style: none; margin: 1em 0px 0px; padding: 0px; border: 0px; font: inherit;\">S&#7921; hi&#7879;n di&#7879;n c&#7911;a h&agrave;ng lo&#7841;t d&#7921; &aacute;n B&#272;S cao c&#7845;p nh&#432; The Metropole Th&#7911; Thi&ecirc;m, Empire City, Thu Thiem Zeit River, The River Th&#7911; Thi&ecirc;m&hellip; &#273;&atilde; g&oacute;p ph&#7847;n &#273;&#7883;nh h&igrave;nh di&#7879;n m&#7841;o hi&#7879;n &#273;&#7841;i &#273;&aacute;ng mong &#273;&#7907;i cho khu &#273;&ocirc; th&#7883; Th&#7911; Thi&ecirc;m, &#273;&#432;a Th&#7911; Thi&ecirc;m tr&#7903; th&agrave;nh trung t&acirc;m t&agrave;i ch&iacute;nh - kinh t&#7871; qu&#7889;c t&#7871; h&agrave;ng &#273;&#7847;u khu v&#7921;c &#272;&ocirc;ng Nam &Aacute;. Nh&#7919;ng d&#7921; &aacute;n n&agrave;y kh&ocirc;ng ch&#7881; l&agrave; bi&#7875;u t&#432;&#7907;ng ki&#7871;n tr&uacute;c m&agrave; c&ograve;n t&ocirc; &#273;i&#7875;m cho Th&#7911; Thi&ecirc;m tr&#7903; th&agrave;nh t&acirc;m &#273;i&#7875;m c&#7911;a c&#7897;ng &#273;&#7891;ng d&acirc;n c&#432; n&#259;ng &#273;&#7897;ng, th&agrave;nh &#273;&#7841;t, n&#417;i quy t&#7909; nh&#7919;ng c&aacute; nh&acirc;n d&#7851;n &#273;&#7847;u xu h&#432;&#7899;ng v&agrave; phong c&aacute;ch s&#7889;ng mang &#273;&#7853;m m&agrave;u s&#7855;c qu&#7889;c t&#7871;.</p></div></h2>\n', 13, 37, '1732541474.jpg', '2024-06-02 07:46:37', '2024-11-25 13:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `article_images`
--

CREATE TABLE `article_images` (
  `article_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `article_images`
--

INSERT INTO `article_images` (`article_id`, `image_id`) VALUES
(46, 22),
(46, 23),
(47, 24),
(47, 25),
(49, 26),
(49, 27),
(49, 28),
(49, 29),
(48, 30),
(48, 31),
(48, 32),
(48, 33);

-- --------------------------------------------------------

--
-- Table structure for table `article_likes`
--

CREATE TABLE `article_likes` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `liked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `article_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_views`
--

CREATE TABLE `article_views` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `view_count` int DEFAULT '0',
  `last_viewed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `article_views`
--

INSERT INTO `article_views` (`id`, `article_id`, `view_count`, `last_viewed_at`) VALUES
(27, 45, 3, '2024-06-02 12:38:36'),
(28, 49, 50, '2024-06-02 12:38:43'),
(29, 47, 10, '2024-06-02 12:38:49'),
(30, 46, 1, '2024-06-02 12:38:54'),
(31, 48, 21, '2024-06-02 12:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Thị Trường', 'Các tin tức về thị trường bất động sản ', '2024-05-29 06:42:13', '2024-11-23 00:45:13'),
(30, 'Dự Án', 'Các tin tức dự án bất động sản', '2024-06-02 07:03:54', '2024-11-23 00:45:50'),
(31, 'Bất Động Sản Thuê', 'Các tin tức về bất động sản thuê', '2024-06-02 07:04:32', '2024-11-23 00:42:48'),
(33, 'Chính sách', 'Các tin tức về chính sách bất động sản', '2024-06-02 07:05:11', '2024-11-23 00:46:39'),
(35, 'Bất Động Sản Bán', 'Các tin tức về bất động sản bán', '2024-06-02 07:23:50', '2024-11-23 00:43:31'),
(37, 'Bất Động Sản', 'Các tin tức về bất động sản VN', '2024-06-05 00:25:45', '2024-11-23 00:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `coin_transactions`
--

CREATE TABLE `coin_transactions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` int NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coin_transactions`
--

INSERT INTO `coin_transactions` (`id`, `user_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, 30000, 'approved', '2024-11-29 05:24:43', '2024-11-29 05:36:13'),
(2, 19, 50000, 'rejected', '2024-11-29 05:38:24', '2024-11-29 05:39:08'),
(3, 19, 33, 'approved', '2024-11-29 05:38:43', '2024-11-29 05:39:10'),
(4, 19, 50000, 'approved', '2024-11-29 06:07:28', '2024-11-29 06:08:06'),
(5, 19, 2000, 'approved', '2024-11-29 07:25:23', '2024-11-29 08:07:42'),
(6, 19, 300000, 'approved', '2024-11-29 07:39:06', '2024-11-29 08:08:00'),
(7, 19, 300000, 'approved', '2024-11-29 07:55:45', '2024-11-29 07:57:24'),
(8, 19, 233434, 'rejected', '2024-11-29 08:47:38', '2024-11-29 08:51:51'),
(9, 19, 222, 'approved', '2024-11-29 08:51:41', '2024-11-29 08:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(11, 45, 13, 'thử nghiệm1', '2024-06-02 10:49:19', '2024-06-02 10:49:19'),
(12, 45, 13, 'thử nghiệm 2', '2024-06-02 10:49:19', '2024-06-02 10:49:19'),
(14, 49, 13, 'thử', '2024-06-02 11:26:43', '2024-06-02 11:26:43'),
(15, 49, 13, 'thử', '2024-06-02 11:27:20', '2024-06-02 11:27:20'),
(16, 49, 13, 'thử 12', '2024-06-02 11:29:35', '2024-06-02 11:29:35'),
(17, 49, 13, 'thử 123', '2024-06-02 11:32:55', '2024-06-02 11:32:55'),
(18, 49, 13, 'thử111', '2024-06-02 11:33:21', '2024-06-02 11:33:21'),
(19, 49, 13, 'thử9', '2024-06-02 11:36:43', '2024-06-02 11:36:43'),
(20, 49, 13, 'thử', '2024-06-02 11:39:38', '2024-06-02 11:39:38'),
(21, 49, 13, 'thử111', '2024-06-02 11:49:33', '2024-06-02 11:49:33'),
(22, 49, 13, 'thử9122', '2024-06-02 11:50:22', '2024-06-02 11:50:22'),
(23, 49, 13, 'thử111212', '2024-06-02 11:50:31', '2024-06-02 11:50:31'),
(24, 49, 13, 'dffdf', '2024-06-02 11:58:58', '2024-06-02 11:58:58'),
(25, 49, 13, 'ádsadasd', '2024-06-02 11:59:28', '2024-06-02 11:59:28'),
(26, 49, 13, 'thưeweewew', '2024-06-02 12:35:15', '2024-06-02 12:35:15'),
(27, 47, 13, 'thử nghiệm1', '2024-06-02 12:36:55', '2024-06-02 12:36:55'),
(29, 48, 16, 'thử 12345678', '2024-06-05 00:21:41', '2024-06-05 00:21:41'),
(33, 49, 19, 'chán', '2024-11-28 08:54:15', '2024-11-28 08:54:15'),
(34, 49, 19, '17', '2024-11-28 15:44:11', '2024-11-28 15:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `file_path`, `created_at`) VALUES
(21, '1717518832-665f41f047d80.png', 'http://localhost/biznews_rebuild/public//uploads/image/1717518832-665f41f047d80.png', '2024-06-04 16:33:52'),
(22, '1732325964-6741324c98a65.jpeg', 'http://biznews_rebuild.test//uploads/image/1732325964-6741324c98a65.jpeg', '2024-11-23 01:39:24'),
(23, '1732325964-6741324c9aa3c.jpeg', 'http://biznews_rebuild.test//uploads/image/1732325964-6741324c9aa3c.jpeg', '2024-11-23 01:39:24'),
(24, '1732326534-6741348620438.jpeg', 'http://biznews_rebuild.test//uploads/image/1732326534-6741348620438.jpeg', '2024-11-23 01:48:54'),
(25, '1732326534-67413486220a2.jpeg', 'http://biznews_rebuild.test//uploads/image/1732326534-67413486220a2.jpeg', '2024-11-23 01:48:54'),
(26, '1732541474-67447c2237a35.gif', 'http://batdongsan.test//uploads/image/1732541474-67447c2237a35.gif', '2024-11-25 13:31:14'),
(27, '1732541474-67447c22395ce.gif', 'http://batdongsan.test//uploads/image/1732541474-67447c22395ce.gif', '2024-11-25 13:31:14'),
(28, '1732541474-67447c223a1c4.gif', 'http://batdongsan.test//uploads/image/1732541474-67447c223a1c4.gif', '2024-11-25 13:31:14'),
(29, '1732541474-67447c223ad2d.gif', 'http://batdongsan.test//uploads/image/1732541474-67447c223ad2d.gif', '2024-11-25 13:31:14'),
(30, '1732541619-67447cb336f28.gif', 'http://batdongsan.test//uploads/image/1732541619-67447cb336f28.gif', '2024-11-25 13:33:39'),
(31, '1732541619-67447cb337cb4.gif', 'http://batdongsan.test//uploads/image/1732541619-67447cb337cb4.gif', '2024-11-25 13:33:39'),
(32, '1732541619-67447cb338d38.gif', 'http://batdongsan.test//uploads/image/1732541619-67447cb338d38.gif', '2024-11-25 13:33:39'),
(33, '1732541619-67447cb3397b7.gif', 'http://batdongsan.test//uploads/image/1732541619-67447cb3397b7.gif', '2024-11-25 13:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'site_name', 'Trang tin tức của tôi', '2024-05-25 07:42:51'),
(2, 'site_description', 'Trang web tin tức cập nhật liên tục', '2024-05-25 07:42:51'),
(3, 'contact_email', 'contact@example.com', '2024-05-25 07:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bóng đá', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(2, 'Phim ảnh', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(3, 'Khởi nghiệp', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(4, 'AI', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(5, 'Covid-19', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(6, 'Thời trang', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(7, 'Giáo dục', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(8, 'Môi trường', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(9, 'Ẩm thực', '2024-05-25 07:42:50', '2024-05-25 07:42:50'),
(10, 'Du lịch', '2024-05-25 07:42:50', '2024-05-25 07:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `role` enum('admin','editor','user') DEFAULT 'user',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coins` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `email`, `full_name`, `role`, `avatar`, `created_at`, `updated_at`, `coins`) VALUES
(13, 'Long', '$argon2id$v=19$m=65536,t=4,p=1$b2F4SUJYY0Izejh5dFZTNg$ZTYsm3xTazFepsDGxR1vhdumnpCz47OUpsAdQ7To+b0', 'admin@gmail.com', 'Vũ Hưng Long', 'admin', '1732322880.jpg', '2024-06-01 22:32:59', '2024-11-28 14:00:53', 10000),
(16, 'Đức', '$argon2id$v=19$m=65536,t=4,p=1$RElpbFNjTTl0ejJCUGhQLw$uXJsT94/NOZUmslBjLmx3TJ87UsM7nB/+7OsZ/GA2Hw', 'duc@gmail.com', 'Hồ Đức', 'admin', '1732322931.jpg', '2024-06-04 08:55:30', '2024-11-23 01:26:47', 0),
(17, 'Dũng', '$argon2id$v=19$m=65536,t=4,p=1$L3NtU09jVDJLVXZvQU55cA$3P9hGFBgMcvfALWenr30GzD9Oi2VTo0JhcMNGmW0rDU', 'dung@gmail.com', 'Tiến Dũng', 'admin', '1732323035.jpg', '2024-11-23 00:50:35', '2024-11-23 01:26:40', 0),
(18, 'hieu', '$argon2id$v=19$m=65536,t=4,p=1$TWQ3OUpYYW5yTzdYei5mZw$CFJCMh4ZMwOhz19UZgIt0TlLILoJXPtOVwMUnQBSa88', 'Hieu@gmail.com', 'Hieu', 'user', '1732325242.jpg', '2024-11-23 01:27:22', '2024-11-23 01:27:22', 0),
(19, 'thuweb', '$argon2id$v=19$m=65536,t=4,p=1$cUprZlE3eFAzOXZYZHZ1NQ$fJB2MiB5BYm/jKHR/Y/KvZPRSNKzT9TM66nNG2AAAQM', 'thu@gmail.com', 'longdeptrai', 'user', '1732758608.jpg', '2024-11-28 01:50:08', '2024-11-29 08:51:52', 302222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `articles_fk_category` (`category_id`);

--
-- Indexes for table `article_images`
--
ALTER TABLE `article_images`
  ADD PRIMARY KEY (`article_id`,`image_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `article_likes`
--
ALTER TABLE `article_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `article_views`
--
ALTER TABLE `article_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `coin_transactions`
--
ALTER TABLE `coin_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `article_likes`
--
ALTER TABLE `article_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `article_views`
--
ALTER TABLE `article_views`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `coin_transactions`
--
ALTER TABLE `coin_transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `article_images`
--
ALTER TABLE `article_images`
  ADD CONSTRAINT `article_images_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_images_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_likes`
--
ALTER TABLE `article_likes`
  ADD CONSTRAINT `article_likes_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_tags_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_views`
--
ALTER TABLE `article_views`
  ADD CONSTRAINT `article_views_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coin_transactions`
--
ALTER TABLE `coin_transactions`
  ADD CONSTRAINT `coin_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
