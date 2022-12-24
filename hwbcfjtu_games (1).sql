-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Nov 2022 pada 16.11
-- Versi server: 10.6.10-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hwbcfjtu_games`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `sort` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category`, `sort`) VALUES
(1, 'Games Populer', 1),
(5, 'Top Up Games', 2),
(8, 'Top Up', 4),
(9, 'Pulsa', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `title`, `content`) VALUES
(2, 'Cara mendaftar di Topupdidiktutorial.my.id', 'Anda dapat mengunjungi Halaman Daftar yang ada di kiri atas Halaman. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `images` varchar(250) NOT NULL,
  `category` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `target` varchar(250) NOT NULL,
  `sort` bigint(20) NOT NULL,
  `validasi_status` enum('Y','N') NOT NULL,
  `validasi_kode` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `games`
--

INSERT INTO `games` (`id`, `name`, `slug`, `images`, `category`, `content`, `target`, `sort`, `validasi_status`, `validasi_kode`) VALUES
(1, 'Mobile Legends', 'mobile-legend', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '1', '<h5><strong><center>Mobile Legends</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID (SERVER)</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'B', 1, 'Y', 'ml'),
(5, 'FREE FIRE', 'free-fire', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '1', '<p><strong>FREE FIRE</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cara Order:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 1, 'Y', 'ff'),
(7, 'VALORANT', 'valorant', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/valorant_tile.jpg', '5', '<h5><strong><center>VALORANT</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 8, 'N', ''),
(9, 'League of Legends: Wild Rift', 'league-of-legends-wild-rift', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/lolwildrift_tile.png', '5', '<h5><strong><center>League of Legends: Wild Rift</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 9, 'N', ''),
(10, 'Genshin Impact', 'genshin-impact', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/genshin_tile.png', '5', '<h5><strong><center>Genshin Impact</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 7, 'N', ''),
(11, 'Higgs Domino', 'higgs-domino', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/higgs_domino_tile.jpg', '5', '<p><strong>Higgs Domino</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cara Order:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 4, 'Y', 'hd'),
(12, 'Call of Duty Mobile', 'call-of-duty-mobile', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/codmobile_tile.jpg', '5', '<h5><strong><center>Call of Duty Mobile</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 6, 'N', ''),
(13, 'PUBG Mobile', 'pubg-mobile', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/pubgm_rps_tile.jpg', '1', '<h5><strong><center>PUBG MOBILE</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 1, 'N', ''),
(14, 'HAGO', 'hago', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/hago_tile.jpg', '5', '<h5><strong><center>HAGO</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 11, 'N', ''),
(53, 'POINT BLANK', 'point-blank', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/PointBlank_ID_tile.jpg', '5', '<p><strong>POINT BLANK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cara Order:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', 'pb'),
(54, 'GARENA', 'garena', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/garena_shells_tile.jpg', '5', '<h5><strong><center>GARENA</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(55, 'Lords Mobile', 'lords-mobile', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/lords_mobile_tile.png', '5', '<h5><strong><center>Lords Mobile</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(56, 'Speed Drifters', 'speed-drifters', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/speed_drifter_tile.jpg', '5', '<h5><strong><center>Speed Drifters</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(59, 'LifeAfter Credits', 'lifeafter', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/lifeafter_tile.jpeg', '5', '<h5><strong><center>LifeAfter Credits</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(60, 'Scroll of Onmyoji', 'scroll-of-onmyoji', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/Scroll%20of%20Onmyoji_tile.jpg', '5', '<h5><strong><center>Scroll of Onmyoji</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(61, 'Marvel Super War', 'marvel-super-war', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/MARVELsuperwar_tile.png', '5', '<h5><strong><center>Marvel Super War</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(62, 'Tom and Jerry Chase', 'tom-and-jerry-chase', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/tjc_tile.jpg', '5', '<h5><strong><center>Tom and Jerry Chase</center></strong></h5>\r\n<br>\r\n<p>Cara Order:</p>\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>ID</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan&nbsp;<strong>Alamat Email&nbsp;</strong>yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang&nbsp;</strong>&amp; lakukan pembayaran</li>\r\n</ol>\r\n', 'A', 2, 'N', ''),
(64, 'Voucher Indomaret', 'voucher-indomaret', '1656567901_4cca55a740403a7a1c78.png', '6', '', 'A', 1, 'N', ''),
(65, 'Voucher Alfamart', 'voucher-alfamart', '1656568319_5a562c69bb1e0890660b.jpg', '6', '', 'A', 1, 'N', ''),
(66, 'i.saku', 'isaku', '1656569526_0710ad3e1754b550d9ca.png', '8', '<h5><strong><center>Top Up i.saku</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(67, 'GoPay', 'go-pay', '1656574905_f287e088472eb5ec28af.png', '8', '<h5><strong><center>Top Up GoPay</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 2, 'N', ''),
(68, 'OVO', 'ovo', '1656570814_8235dc5ac9ff1c7e5d6e.png', '8', '<h5><strong><center>Top Up OVO</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 3, 'N', ''),
(69, 'Dana', 'dana', '1656593748_e036e999479418cc091e.png', '8', '<h5><strong><center>Top Up Dana</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(70, 'LinkAja', 'linkaja', '1656594784_73b5d287fec2249a77c2.png', '8', '<h5><strong><center>Top Up LinkAja</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(71, 'Shopee Pay', 'shopee-pay', '1656596196_c5af80092f53279690f7.png', '8', '<h5><strong><center>Top Up Shopee Pay</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(72, 'Mandiri E-Toll', 'mandiri-e-toll', '1656597741_7c17846642f7a7e34c58.png', '8', '<h5><strong><center>Top Up Mandiri E-Toll</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Kartu</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Lakukan&nbsp;<strong>Update Saldo</strong></li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(73, 'Tapcash BNI', 'tapcash-bni', '1656598721_faded879a3c971302701.png', '8', '<h5><strong><center>Top Up Tapcash</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Kartu</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Lakukan&nbsp;<strong>Update Saldo</strong></li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(74, 'BRIZZI', 'brizzi', '1656599736_5250935c4b926259716c.png', '8', '<h5><strong><center>Top Up BRIZZI</center></strong></h5>\r\n<br>\r\n<p>Cara Top Up:</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Kartu</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Top Up</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Lakukan&nbsp;<strong>Update Saldo</strong></li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(75, 'Pulsa Telkomsel', 'pulsa-telkomsel', '1656601148_41e8a10abccf3f74c566.jpeg', '9', '<h5><strong><center>Pulsa Telkomsel</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(76, 'Pulsa Indosat', 'pulsa-indosat', '1656602239_97ec297bc0fb3fada246.png', '9', '<h5><strong><center>Pulsa Indosat</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(77, 'Pulsa Axis', 'pulsa-axis', '1656604092_bce5d8a280a39068ed07.jpeg', '9', '<h5><strong><center>Pulsa Axis</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(78, 'Pulsa Tri', 'pulsa-tri', '1656605040_0b0f345519aa35cb4281.jpeg', '9', '<h5><strong><center>Pulsa Tri</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(79, 'Pulsa Smartfren', 'pulsa-smartfren', '1656615109_fd700703168512a84c15.jpeg', '9', '<h5><strong><center>Pulsa Smartfren</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(80, 'Pulsa XL', 'pulsa-xl', '1656616100_2a23bb61dc994f6ea858.jpeg', '9', '<h5><strong><center>Pulsa XL</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', ''),
(81, 'Pulsa By.U', 'pulsa-byu', '1656617459_fc757b66e0f82e427fb7.jpeg', '9', '<h5><strong><center>Pulsa By.u</center></strong></h5>\r\n<br>\r\n<p>Cara order :</p>\r\n\r\n<ol>\r\n	<li>Masukkan&nbsp;<strong>Nomor Hp</strong></li>\r\n	<li>Pilih&nbsp;<strong>Nominal Pulsa</strong></li>\r\n	<li>Pilih&nbsp;<strong>Metode Pembayaran</strong></li>\r\n	<li>Masukkan<strong>&nbsp;Alamat Email</strong>&nbsp;yg benar!</li>\r\n	<li>Klik&nbsp;<strong>Beli Sekarang</strong>&nbsp;&amp; lakukan pembayaran</li>\r\n	<li>Selesai&nbsp;</li>\r\n</ol>\r\n', 'D', 1, 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `method`
--

CREATE TABLE `method` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `images` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `method`
--

INSERT INTO `method` (`id`, `name`, `images`, `code`, `provider`) VALUES
(5, 'OVO', 'https://i.postimg.cc/nL8L3RCG/ovo.png', 'ovo', 'Tripay'),
(16, 'ALFAMART', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/alfamart.png', 'ALFAMART', 'Tripay'),
(17, 'ALFAMIDI', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/alfamidi.png', 'ALFAMIDI', 'Tripay'),
(18, 'INDOMARET', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/indomaret.png', 'INDOMARET', 'Tripay'),
(20, 'SHOPEEPAY', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/shopee-pay.png', 'SHOPEEPAY', 'Tripay'),
(21, 'Mandiriva', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/mandiri.png', 'MANDIRIVA', 'Tripay'),
(22, 'BNIVA', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/bni.png', 'BNIVA', 'Tripay'),
(23, 'BRIVA', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/bri.png', 'BRIVA', 'Tripay'),
(24, 'BCAVA', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/bca.png', 'BCAVA', 'Tripay'),
(25, 'Qris', 'https://topupdidiktutorial.my.id/assets/images/pembayaran/qris.jpg', 'QRIS', 'Tripay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(55) NOT NULL,
  `email_account` varchar(250) NOT NULL,
  `email_invoice` varchar(200) NOT NULL,
  `games_id` varchar(100) NOT NULL,
  `games_img` varchar(250) NOT NULL,
  `product` varchar(250) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `note` varchar(250) NOT NULL,
  `price` bigint(20) NOT NULL,
  `target` varchar(55) NOT NULL,
  `data_no` varchar(100) NOT NULL,
  `data_zone` varchar(100) NOT NULL,
  `provider_order_id` varchar(250) NOT NULL,
  `method_id` int(11) NOT NULL,
  `payment_code` varchar(100) NOT NULL,
  `payment_url` varchar(250) NOT NULL,
  `status` enum('Pending','Processing','Completed','Canceled') NOT NULL,
  `ip` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `email_account`, `email_invoice`, `games_id`, `games_img`, `product`, `sku`, `note`, `price`, `target`, `data_no`, `data_zone`, `provider_order_id`, `method_id`, `payment_code`, `payment_url`, `status`, `ip`, `provider`, `date_create`, `date_update`) VALUES
(10, '03407495', 'admin@miliyan.id', 'maksmiliyan0200@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', '732554021569', 1600, '389258682058', '', '', '', 5, '', 'https://tripay.co.id/checkout/T1315133352650UQV8', 'Completed', '103.10.66.70', 'DF', '2022-06-27 19:27:58', '2022-06-27 19:27:58'),
(11, '75076508', 'admin@miliyan.id', 'test@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '389258682058', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513336866E3X75', 'Pending', '116.206.29.104', 'DF', '2022-06-27 21:46:57', '2022-06-27 21:46:57'),
(12, '36255498', 'maksmiliyan0200@gmail.com', 'maksmiliyan0200@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Transaksi Gagal', 1600, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513338462V6WZS', 'Canceled', '182.3.37.44', 'DF', '2022-06-28 03:58:10', '2022-06-28 03:58:10'),
(17, '13792868', 'test@gmail.com', 'test@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '170 Diamond', 'Mlb170', 'Menunggu Pembayaran', 38300, '389258682058', '', '', '', 18, '10078000105100', 'https://tripay.co.id/checkout/T131513357865PVDCR', 'Pending', '116.206.13.164', 'DF', '2022-06-30 00:35:44', '2022-06-30 00:35:44'),
(18, '20556490', 'basobasah69@gmail.com', 'basobasah69@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '358932592056', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513358844EH92G', 'Pending', '116.206.15.34', 'DF', '2022-06-30 07:36:45', '2022-06-30 07:36:45'),
(19, '14075563', 'aldiansgb@gmail.com', 'aldiansgb@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1067539812544', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513359917QBKRF', 'Pending', '36.85.38.217', 'DF', '2022-06-30 10:22:38', '2022-06-30 10:22:38'),
(20, '45036203', 'aldiansgb@gmail.com', 'aldiansgb@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '140755632544', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513359938PERYK', 'Pending', '36.85.38.217', 'DF', '2022-06-30 10:24:43', '2022-06-30 10:24:43'),
(21, '37377303', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1067539812544', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513360116LISPY', 'Pending', '36.85.38.217', 'DF', '2022-06-30 10:45:34', '2022-06-30 10:45:34'),
(22, '36112442', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 's22166728343/5 diamonds + 0 bonus/oy tod', 1800, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=36112442', 'Completed', '103.10.66.73', 'DF', '2022-06-30 12:04:58', '2022-06-30 12:04:58'),
(23, '09574785', 'admin@miliyan.id', 'maksmiliyan0200@gmail.com', '68', '1656570814_8235dc5ac9ff1c7e5d6e.png', 'OVO 10.000', 'O10', '202206301405108122770000568618', 9500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=09574785', 'Completed', '103.10.66.31', 'DF', '2022-06-30 14:05:10', '2022-06-30 14:05:10'),
(24, '83365847', 'admin@miliyan.id', 'maksmiliyan0200@gmail.com', '68', '1656570814_8235dc5ac9ff1c7e5d6e.png', 'OVO 10.000', 'O10', '202206301428178122770000568807', 9500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=83365847', 'Completed', '103.10.66.31', 'DF', '2022-06-30 14:28:17', '2022-06-30 14:28:17'),
(25, '18896008', 'tasyamurnikatijaputri@gmail.com', 'tasyamurnikatijaputri@gmail.com', '54', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/garena_shells_tile.jpg', '33 Shell', 'G33', 'Menunggu Pembayaran', 11000, '085888329430', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513363466TQCNW', 'Pending', '125.166.204.52', 'DF', '2022-06-30 17:35:36', '2022-06-30 17:35:36'),
(26, '41539295', 'admin@miliyan.id', 'default@email.io', '68', '1656570814_8235dc5ac9ff1c7e5d6e.png', 'OVO 10.000', 'O10', '202206302057488122770000572631', 9500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=41539295', 'Completed', '116.206.29.96', 'DF', '2022-06-30 20:57:48', '2022-06-30 20:57:48'),
(27, '25147419', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 20.000', 'Sp20', 'exxxxxxxxx7/shopeepay - 089651797839/19500/ref:457405767450', 20500, '089651797839', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=25147419', 'Completed', '223.255.230.229', 'DF', '2022-06-30 23:15:22', '2022-06-30 23:15:22'),
(28, '23815301', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 10.000', 'Sp10', 'Cut Off (Perbaikan Sistem Seller)', 10500, '089651797839', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=23815301', 'Canceled', '223.255.230.229', 'DF', '2022-06-30 23:15:56', '2022-06-30 23:15:56'),
(29, '84095161', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 10.000', 'Sp10', 'Cut Off (Perbaikan Sistem Seller)', 10500, '089651797839', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=84095161', 'Canceled', '223.255.230.229', 'DF', '2022-06-30 23:16:47', '2022-06-30 23:16:47'),
(30, '32950764', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 10.000', 'Sp10', 'Cut Off (Perbaikan Sistem Seller)', 10500, '089651797839', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=32950764', 'Canceled', '223.255.230.229', 'DF', '2022-06-30 23:18:59', '2022-06-30 23:18:59'),
(31, '32148795', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 10.000', 'Sp10', 'Cut Off (Perbaikan Sistem Seller)', 10500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=32148795', 'Canceled', '223.255.230.229', 'DF', '2022-06-30 23:20:27', '2022-06-30 23:20:27'),
(32, '22632801', 'admin@miliyan.id', 'default@email.io', '78', '1656605040_0b0f345519aa35cb4281.jpeg', '1.000 Pulsa', 'Tr1', 'r220701.0054.220043', 1200, '089651797839', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=22632801', 'Completed', '116.206.13.80', 'DF', '2022-07-01 00:54:50', '2022-07-01 00:54:50'),
(33, '32030372', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513367219DVGPY', 'Pending', '116.206.13.80', 'DF', '2022-07-01 00:58:37', '2022-07-01 00:58:37'),
(34, '24412879', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '170 Diamond', 'Mlb170', 'Menunggu Pembayaran', 38300, '389258682058', '', '', '', 18, '10078000105722', 'https://tripay.co.id/checkout/T131513367225KSWZH', 'Pending', '116.206.13.80', 'DF', '2022-07-01 01:01:00', '2022-07-01 01:01:00'),
(35, '25751900', 'rivaldi6120@gmail.com', 'rivaldi6120@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '358932592056', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513373010OLZRP', 'Pending', '116.206.15.20', 'DF', '2022-07-01 16:25:00', '2022-07-01 16:25:00'),
(36, '62802363', 'rivaldi6120@gmail.com', 'rivaldi6120@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '370 Diamond', 'Mlb370', 'Menunggu Pembayaran', 89000, '358932592056', '', '', '', 23, '578893000836472', 'https://tripay.co.id/checkout/T131513373041OXPXR', 'Pending', '116.206.15.20', 'DF', '2022-07-01 16:26:53', '2022-07-01 16:26:53'),
(37, '97424605', 'idolish1986@gmail.com', 'idolish1986@gmail.com', '69', '1656593748_e036e999479418cc091e.png', 'DANA 75.000', 'D75', 'Menunggu Pembayaran', 75500, '081211735984', '', '', '', 5, '', 'https://tripay.co.id/checkout/T1315133767191CRHU', 'Pending', '182.3.41.208', 'DF', '2022-07-01 21:25:53', '2022-07-01 21:25:53'),
(38, '60020924', 'admin@miliyan.id', 'maksmiliyan0200@gmail.com', '78', '1656605040_0b0f345519aa35cb4281.jpeg', '1.000 Pulsa', 'Tr1', 'Cut Off (Perbaikan Sistem Seller)', 1200, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=60020924', 'Canceled', '116.206.29.32', 'DF', '2022-07-02 00:09:17', '2022-07-02 00:09:17'),
(39, '04606860', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513378560N2RJH', 'Pending', '116.206.29.32', 'DF', '2022-07-02 00:48:50', '2022-07-02 00:48:50'),
(40, '01328702', 'admin@miliyan.id', 'maks@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513378586XCNTW', 'Pending', '116.206.29.32', 'DF', '2022-07-02 00:55:13', '2022-07-02 00:55:13'),
(41, '31004897', 'test@gmail.com', 'test@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513378594CFK12', 'Pending', '116.206.29.32', 'DF', '2022-07-02 00:56:05', '2022-07-02 00:56:05'),
(42, '97242439', 'rmdpedia@gmail.com', 'rmdpedia@gmail.com', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '12 Diamonds', 'FFD12', 'Menunggu Pembayaran', 1950, '764232140', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513378648ENWGC', 'Pending', '180.253.164.2', 'DF', '2022-07-02 01:07:27', '2022-07-02 01:07:27'),
(43, '66213964', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'Menunggu Pembayaran', 19150, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513379232BVMYR', 'Pending', '182.253.131.67', 'DF', '2022-07-02 05:17:58', '2022-07-02 05:17:58'),
(44, '87468589', 'tolkon@gmail.com', 'tolkon@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1503705792755', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513379484JT5G2', 'Pending', '103.144.227.245', 'DF', '2022-07-02 06:34:36', '2022-07-02 06:34:36'),
(45, '63087004', 'tolkon@gmail.com', 'tolkon@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1503705792755', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513379488BL9ED', 'Pending', '103.144.227.245', 'DF', '2022-07-02 06:36:23', '2022-07-02 06:36:23'),
(46, '30241730', 'default@email.io', 'default@email.io', '13', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/pubgm_rps_tile.jpg', '35 UC', 'PM35', 'Menunggu Pembayaran', 7300, '659566889', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513379686FUVGJ', 'Pending', '114.10.24.64', 'DF', '2022-07-02 07:23:43', '2022-07-02 07:23:43'),
(47, '71328902', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '70 Diamonds', 'FFD70', 'Menunggu Pembayaran', 8800, '2694703403', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513379715D3XZW', 'Pending', '116.206.40.55', 'DF', '2022-07-02 07:29:16', '2022-07-02 07:29:16'),
(48, '66086702', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '720 Diamonds', 'FFD720', 'Menunggu Pembayaran', 93600, '2694703403', '', '', '', 23, '578893000837732', 'https://tripay.co.id/checkout/T131513379719SCMN4', 'Pending', '116.206.40.55', 'DF', '2022-07-02 07:30:12', '2022-07-02 07:30:12'),
(49, '22087657', 'jjaja@gmail.com', 'jjaja@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '105518974613239', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513429789Z2TLN', 'Pending', '182.2.170.94', 'DF', '2022-07-03 03:50:40', '2022-07-03 03:50:40'),
(50, '02352199', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '210 Diamonds', 'FFD210', 'Menunggu Pembayaran', 26700, '1310804094', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513437992YPW4C', 'Pending', '103.105.34.75', 'DF', '2022-07-03 12:04:22', '2022-07-03 12:04:22'),
(51, '43436674', 'xioamisukses704@gmail.cim', 'xioamisukses704@gmail.cim', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '70 Diamonds', 'FFD70', 'Menunggu Pembayaran', 8800, '3052347794', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513440867MEH3T', 'Pending', '140.213.231.144', 'DF', '2022-07-03 13:39:59', '2022-07-03 13:39:59'),
(52, '96205817', 'xioamisukses704@gmail.cim', 'xioamisukses704@gmail.cim', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '95 Diamonds', 'FFD95', 'Menunggu Pembayaran', 12600, '3052347794', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513440901MFGZZ', 'Pending', '140.213.231.144', 'DF', '2022-07-03 13:40:54', '2022-07-03 13:40:54'),
(53, '55845578', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '210 Diamonds', 'FFD210', 'Menunggu Pembayaran', 26700, '27444532', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513444792SOEYO', 'Pending', '103.144.175.242', 'DF', '2022-07-03 16:07:17', '2022-07-03 16:07:17'),
(54, '43602182', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '355 Diamonds', 'FFD355', 'Menunggu Pembayaran', 44500, '27444532', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513444796IDMNG', 'Pending', '103.144.175.242', 'DF', '2022-07-03 16:07:36', '2022-07-03 16:07:36'),
(55, '37013146', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '925 Diamonds', 'FFD925', 'Menunggu Pembayaran', 116700, '27444532', '', '', '', 18, '10078000110660', 'https://tripay.co.id/checkout/T131513444814LQQ9J', 'Pending', '103.144.175.242', 'DF', '2022-07-03 16:08:17', '2022-07-03 16:08:17'),
(56, '72703790', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513448727PBNOT', 'Pending', '223.255.229.31', 'DF', '2022-07-03 18:51:40', '2022-07-03 18:51:40'),
(57, '60007762', 'admin@miliyan.id', 'default@email.io', '68', '1656570814_8235dc5ac9ff1c7e5d6e.png', 'OVO 50.000', 'O50', '202207032104258122770000594560', 49500, '0895320289281', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=60007762', 'Completed', '116.206.13.95', 'DF', '2022-07-03 21:04:25', '2022-07-03 21:04:25'),
(58, '42905818', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1460306272740', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513453694NQSYA', 'Pending', '140.213.71.195', 'DF', '2022-07-03 22:08:14', '2022-07-03 22:08:14'),
(59, '43196314', 'kalkulator@gmail.com', 'kalkulator@gmail.com', '13', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/pubgm_rps_tile.jpg', '70 UC', 'PM70', 'Menunggu Pembayaran', 13800, '51341754816', '', '', '', 22, '8632023023936690', 'https://tripay.co.id/checkout/T1315134537402O2IX', 'Pending', '180.244.49.115', 'DF', '2022-07-03 22:10:10', '2022-07-03 22:10:10'),
(60, '21166727', 'kalkulato@gmail.com', 'kalkulato@gmail.com', '59', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/lifeafter_tile.jpeg', '65 Credits', 'La65', 'Menunggu Pembayaran', 14000, '11631684', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513453767NUWYK', 'Pending', '180.244.49.115', 'DF', '2022-07-03 22:11:26', '2022-07-03 22:11:26'),
(61, '78798567', 'admin@miliyan.id', 'default@email.io', '78', '1656605040_0b0f345519aa35cb4281.jpeg', '1.000 Pulsa', 'Tr1', 'Cut Off (Perbaikan Sistem Seller)', 1200, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=78798567', 'Canceled', '103.10.66.12', 'DF', '2022-07-03 23:51:25', '2022-07-03 23:51:25'),
(62, '46033776', 'default@email.io', 'default@email.io', '77', '1656604092_bce5d8a280a39068ed07.jpeg', '15.000 Pulsa', 'Ax15', 'Menunggu Pembayaran', 15000, '083184541296', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513455636UC8I8', 'Pending', '140.213.71.195', 'DF', '2022-07-04 00:38:49', '2022-07-04 00:38:49'),
(63, '42199323', 'dhenavri.ml@gmail.com', 'dhenavri.ml@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '2820553699470', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513455713EI5F8', 'Pending', '116.206.40.44', 'DF', '2022-07-04 00:46:46', '2022-07-04 00:46:46'),
(64, '00022626', 'dhenavri.ml@gmail.com', 'dhenavri.ml@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '2820553699470', '', '', '', 5, '', 'https://tripay.co.id/checkout/T1315134557277XEK9', 'Pending', '116.206.40.44', 'DF', '2022-07-04 00:48:17', '2022-07-04 00:48:17'),
(65, '71681777', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513456900X0HR5', 'Pending', '182.253.131.67', 'DF', '2022-07-04 05:55:15', '2022-07-04 05:55:15'),
(66, '71912565', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513456901FLHIM', 'Pending', '182.253.131.67', 'DF', '2022-07-04 05:55:16', '2022-07-04 05:55:16'),
(67, '83876631', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513456906VJ3QL', 'Pending', '182.253.131.67', 'DF', '2022-07-04 05:56:35', '2022-07-04 05:56:35'),
(68, '87130323', 'nozomichan212@gmail.com', 'nozomichan212@gmail.com', '69', '1656593748_e036e999479418cc091e.png', 'DANA 10.000', 'D10', 'Menunggu Pembayaran', 10500, '081211735984', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513457401W8N3G', 'Pending', '182.3.41.245', 'DF', '2022-07-04 07:24:45', '2022-07-04 07:24:45'),
(69, '22820092', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T1315134625212V7TD', 'Pending', '182.253.131.67', 'DF', '2022-07-04 12:51:53', '2022-07-04 12:51:53'),
(70, '81770217', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513462523IBCWD', 'Pending', '182.253.131.67', 'DF', '2022-07-04 12:51:54', '2022-07-04 12:51:54'),
(71, '99032735', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513462524PIFGD', 'Pending', '182.253.131.67', 'DF', '2022-07-04 12:51:55', '2022-07-04 12:51:55'),
(72, '94751091', 'admin@miliyan.id', 'default@email.io', '78', '1656605040_0b0f345519aa35cb4281.jpeg', '150.000 Pulsa', 'Tr150', 'pr2204242058824567', 145000, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=94751091', 'Completed', '111.94.121.136', 'DF', '2022-07-04 12:55:38', '2022-07-04 12:55:38'),
(73, '26937981', 'awan.weeb@gmail.com', 'awan.weeb@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '170 Diamond', 'Mlb170', 'Menunggu Pembayaran', 38300, '1617390762832', '', '', '', 16, '1001386800611', 'https://tripay.co.id/checkout/T131513463897BA2T9', 'Pending', '114.4.216.243', 'DF', '2022-07-04 14:03:19', '2022-07-04 14:03:19'),
(74, '65294406', 'dhaniakbara13@gmail.com', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '19 Diamond', 'Mlb19', 'Menunggu Pembayaran', 5700, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513464902ZX0BS', 'Pending', '182.253.131.67', 'DF', '2022-07-04 14:58:39', '2022-07-04 14:58:39'),
(75, '09232699', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T13151346639426GAW', 'Pending', '182.253.131.67', 'DF', '2022-07-04 16:12:45', '2022-07-04 16:12:45'),
(76, '82094236', 'kakskajaj@gmail.com', 'kakskajaj@gmail.com', '13', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/pubgm_rps_tile.jpg', '125 UC', 'PM125', 'Menunggu Pembayaran', 22800, '51341754816', '', '', '', 22, '8632023988972418', 'https://tripay.co.id/checkout/T131513475146DWZPV', 'Pending', '180.244.49.115', 'DF', '2022-07-05 00:00:17', '2022-07-05 00:00:17'),
(77, '96948686', 'default@email.io', 'default@email.io', '53', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/PointBlank_ID_tile.jpg', '1200 PB Cash', 'Pb1200', 'Menunggu Pembayaran', 10000, '555844', '', '', '', 17, '1001386848665', 'https://tripay.co.id/checkout/T131513479135QZPST', 'Pending', '180.252.121.56', 'DF', '2022-07-05 10:11:52', '2022-07-05 10:11:52'),
(78, '66956184', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'Menunggu Pembayaran', 19150, '988888658889', '', '', '', 23, '578893000846863', 'https://tripay.co.id/checkout/T131513479160UPRBI', 'Pending', '180.252.121.56', 'DF', '2022-07-05 10:13:51', '2022-07-05 10:13:51'),
(79, '45064695', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'Menunggu Pembayaran', 19150, '5586665563', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513479183QCPFE', 'Pending', '180.252.121.56', 'DF', '2022-07-05 10:15:57', '2022-07-05 10:15:57'),
(80, '45349076', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'Menunggu Pembayaran', 19150, '8888998', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513479205RTZUD', 'Pending', '180.252.121.56', 'DF', '2022-07-05 10:17:37', '2022-07-05 10:17:37'),
(81, '04161931', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '370 Diamond', 'Mlb370', 'Menunggu Pembayaran', 89000, '799819002154', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513479497T3GFH', 'Pending', '103.83.173.246', 'DF', '2022-07-05 10:35:10', '2022-07-05 10:35:10'),
(82, '13513639', 'babirafli756@gmail.com', 'babirafli756@gmail.com', '54', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/garena_shells_tile.jpg', '33 Shell', 'G33', 'Menunggu Pembayaran', 11000, '085888329430', '', '', '', 20, '', 'https://tripay.co.id/checkout/T131513479850GYAHW', 'Pending', '180.244.49.115', 'DF', '2022-07-05 10:56:50', '2022-07-05 10:56:50'),
(83, '00204687', 'default@email.io', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 10.000', 'Sp10', 'Menunggu Pembayaran', 10500, '082349155485', '', '', '', 20, '', 'https://tripay.co.id/checkout/T13151348258912IOJ', 'Pending', '182.1.178.2', 'DF', '2022-07-05 13:18:55', '2022-07-05 13:18:55'),
(84, '52973758', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '879807512175', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513487509SEMHX', 'Pending', '125.164.0.23', 'DF', '2022-07-05 18:59:39', '2022-07-05 18:59:39'),
(85, '33341736', 'member@gmail.com', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '12 Diamonds', 'FFD12', 'Menunggu Pembayaran', 1950, '464665', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513494488YYXWU', 'Pending', '36.75.64.253', 'DF', '2022-07-06 12:33:13', '2022-07-06 12:33:13'),
(86, '08053165', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '12 Diamonds', 'FFD12', 'Menunggu Pembayaran', 1950, '244252420', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513494927URHAR', 'Pending', '103.111.137.2', 'DF', '2022-07-06 12:58:13', '2022-07-06 12:58:13'),
(87, '02625554', 'admin@miliyan.id', 'default@email.io', '66', '1656569526_0710ad3e1754b550d9ca.png', 'i.saku 50.000', 'I50', '2022070710494481250', 51500, '089656164298', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=02625554', 'Completed', '103.10.66.77', 'DF', '2022-07-07 10:49:33', '2022-07-07 10:49:33'),
(88, '65124925', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '70 Diamonds', 'FFD70', 'Menunggu Pembayaran', 8800, '2013385864', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513509428X7USX', 'Pending', '36.75.66.17', 'DF', '2022-07-07 22:43:08', '2022-07-07 22:43:08'),
(89, '51444669', 'admin@miliyan.id', 'default@email.io', '71', '1656596196_c5af80092f53279690f7.png', 'SHOPEE PAY 50.000', 'Sp50', 'AXXXXXXK/SHOPEEPAY - 081355408007/49500/REF:458811560375', 50500, '081355408007', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=51444669', 'Completed', '103.10.66.7', 'DF', '2022-07-07 23:10:38', '2022-07-07 23:10:38'),
(90, '99491258', 'admin@miliyan.id', 'default@email.io', '66', '1656569526_0710ad3e1754b550d9ca.png', 'i.saku 100.000', 'I100', '2022070915573981250', 101500, '089656164298', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=99491258', 'Completed', '223.255.229.7', 'DF', '2022-07-09 15:57:31', '2022-07-09 15:57:31'),
(91, '47614984', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'SKU tidak di temukan atau Non-Aktif', 19150, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=47614984', 'Canceled', '223.255.229.21', 'DF', '2022-07-09 23:10:49', '2022-07-09 23:10:49'),
(92, '91602536', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'SKU tidak di temukan atau Non-Aktif', 19150, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=91602536', 'Canceled', '223.255.229.21', 'DF', '2022-07-09 23:12:45', '2022-07-09 23:12:45'),
(93, '25690198', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '170 Diamond', 'Mlb170', 'SKU tidak di temukan atau Non-Aktif', 38300, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=25690198', 'Canceled', '223.255.229.21', 'DF', '2022-07-09 23:13:55', '2022-07-09 23:13:55'),
(94, '04419954', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'SKU tidak di temukan atau Non-Aktif', 19150, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=04419954', 'Canceled', '116.206.13.163', 'DF', '2022-07-10 01:47:48', '2022-07-10 01:47:48'),
(95, '41443631', 'ayam@gmail.com', 'ayam@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1824662182934', '', '', '', 25, '', 'https://tripay.co.id/checkout/T1315135357513C8PW', 'Pending', '182.253.131.67', 'DF', '2022-07-10 23:18:34', '2022-07-10 23:18:34'),
(96, '35047749', 'default@email.io', 'default@email.io', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '720 Diamonds', 'FFD720', 'Menunggu Pembayaran', 93600, '699891723', '', '', '', 21, '0036257146', 'https://tripay.co.id/checkout/T1315135424681LAM5', 'Pending', '36.69.114.78', 'DF', '2022-07-11 17:18:28', '2022-07-11 17:18:28'),
(97, '85880453', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '19 Diamond', 'Mlb19', 'Menunggu Pembayaran', 5700, '389258682058', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513544079A7J9W', 'Pending', '116.206.13.86', 'DF', '2022-07-11 20:13:42', '2022-07-11 20:13:42'),
(98, '36297342', 'admin@miliyan.id', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '85 Diamond', 'Mlb85', 'SKU tidak di temukan atau Non-Aktif', 19150, '389258682058', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=36297342', 'Canceled', '116.206.13.86', 'DF', '2022-07-11 20:37:32', '2022-07-11 20:37:32'),
(99, '44977128', 'admin@miliyan.id', 'default@email.io', '66', '1656569526_0710ad3e1754b550d9ca.png', 'i.saku 100.000', 'I100', '2022071120440081250', 101500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=44977128', 'Completed', '116.206.13.86', 'DF', '2022-07-11 20:43:11', '2022-07-11 20:43:11'),
(100, '87000511', 'admin@miliyan.id', 'default@email.io', '66', '1656569526_0710ad3e1754b550d9ca.png', 'i.saku 50.000', 'I50', '2022071120454081250', 51500, '08985239779', '', '', '', 123, '', 'https://miliyan.id/status/?order_id=87000511', 'Completed', '116.206.13.86', 'DF', '2022-07-11 20:45:31', '2022-07-11 20:45:31'),
(101, '29711157', 'wahstiny@gmail.com', 'wahstiny@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '59 Diamond', 'Mlb59', 'Menunggu Pembayaran', 16100, '933770052190', '', '', '', 25, '', 'https://tripay.co.id/checkout/T1315135584470MOIO', 'Pending', '182.1.45.8', 'DF', '2022-07-13 17:15:43', '2022-07-13 17:15:43'),
(102, '20294156', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '875 Diamond', 'Mlb875', 'Menunggu Pembayaran', 202000, '799819002154', '', '', '', 22, '8632023444736352', 'https://tripay.co.id/checkout/T131513565845C9NCD', 'Pending', '112.215.238.203', 'DF', '2022-07-14 16:51:16', '2022-07-14 16:51:16'),
(103, '05309455', 'ghhjnhuii@gmail.com', 'ghhjnhuii@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '568 Diamond', 'Mlb568', 'Menunggu Pembayaran', 139500, '1109853302567', '', '', '', 22, '8632023788327364', 'https://tripay.co.id/checkout/T131513602529OWDK5', 'Pending', '182.1.124.229', 'DF', '2022-07-19 14:25:00', '2022-07-19 14:25:00'),
(104, '41772596', 'test@gmail.com', 'test@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '370 Diamond', 'Mlb370', 'Menunggu Pembayaran', 89000, '389258682058', '', '', '', 21, '0036302715', 'https://tripay.co.id/checkout/T131513604098HHVF3', 'Pending', '116.206.29.104', 'DF', '2022-07-19 18:24:17', '2022-07-19 18:24:17'),
(105, '32763009', 'admin@miliyan.id', 'test@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '19 Diamond', 'Mlb19', 'Menunggu Pembayaran', 5700, '389258682058', '', '', '', 25, '', 'https://tripay.co.id/checkout/T131513604289SBBBO', 'Pending', '116.206.29.104', 'DF', '2022-07-19 18:52:46', '2022-07-19 18:52:46'),
(106, '58237209', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '5 Diamond', 'Mlb5', 'Menunggu Pembayaran', 1800, '35134843420151', '', '', '', 5, '', 'https://tripay.co.id/checkout/T131513604324RMYAG', 'Pending', '116.206.29.104', 'DF', '2022-07-19 18:58:10', '2022-07-19 18:58:10'),
(107, '89003125', 'riopratamaputra43@gmail.com', 'riopratamaputra43@gmail.com', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '3310 Diamonds', 'FFD3310', 'Menunggu Pembayaran', 414000, '123456781', '', '', '', 21, '0036938938', 'https://tripay.co.id/checkout/T167544758083FWHF2', 'Pending', '182.3.45.66', 'DF', '2022-11-06 22:17:48', '2022-11-06 22:17:48'),
(108, '82338494', 'admin@gmail.com', 'riopratamaputra43@gmail.com', '5', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/free_fire_new_tile.png', '130 Diamonds', 'FFD130', 'Menunggu Pembayaran', 17200, '123456781', '', '', '', 23, '578893001091462', 'https://tripay.co.id/checkout/T1675447581485KQXD', 'Pending', '182.3.45.66', 'DF', '2022-11-06 22:23:19', '2022-11-06 22:23:19'),
(109, '46353625', 'riopratamaputra43@gmail.com', 'riopratamaputra43@gmail.com', '69', '1656593748_e036e999479418cc091e.png', 'DANA 1.000.000', 'D1', 'Menunggu Pembayaran', 1000500, '082118644605', '', '', '', 16, '1001393350981', 'https://tripay.co.id/checkout/T1675447594135SZDC', 'Pending', '182.3.39.91', 'DF', '2022-11-07 00:34:14', '2022-11-07 00:34:14'),
(110, '67683813', 'admin@gmail.com', 'riopratamaputra43@gmail.com', '13', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/pubgm_rps_tile.jpg', '125 UC', 'PM125', 'Menunggu Pembayaran', 22800, '134671', '', '', '', 21, '0036944413', 'https://tripay.co.id/checkout/T1675447693079LT29', 'Pending', '182.3.43.33', 'DF', '2022-11-07 18:04:23', '2022-11-07 18:04:23'),
(111, '35789209', 'kerto398@gmail.com', 'kerto398@gmail.com', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1165997452591', '', '', '', 25, '', 'https://tripay.co.id/checkout/T167544769721SG7HM', 'Pending', '114.142.170.2', 'DF', '2022-11-07 18:30:12', '2022-11-07 18:30:12'),
(112, '04657361', 'default@email.io', 'default@email.io', '69', '1656593748_e036e999479418cc091e.png', 'DANA 75.000', 'D75', 'Menunggu Pembayaran', 75500, '0896666', '', '', '', 5, '', 'https://tripay.co.id/checkout/T167544769828DSBFU', 'Pending', '114.142.170.2', 'DF', '2022-11-07 18:34:29', '2022-11-07 18:34:29'),
(113, '79009437', 'default@email.io', 'default@email.io', '69', '1656593748_e036e999479418cc091e.png', 'DANA 10.000', 'D10', 'Menunggu Pembayaran', 10500, '08555', '', '', '', 23, '578893001093486', 'https://tripay.co.id/checkout/T1675447698472ADN5', 'Pending', '114.142.170.2', 'DF', '2022-11-07 18:35:28', '2022-11-07 18:35:28'),
(114, '78833834', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '170 Diamond', 'Mlb170', 'Menunggu Pembayaran', 38300, '116597452591', '', '', '', 22, '9883033304769915', 'https://tripay.co.id/checkout/T167544769915HLNIB', 'Pending', '114.142.170.2', 'DF', '2022-11-07 18:38:41', '2022-11-07 18:38:41'),
(115, '72753226', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1192915752600', '', '', '', 25, '', 'https://tripay.co.id/checkout/T167544771031913QR', 'Pending', '114.10.24.80', 'DF', '2022-11-07 19:40:16', '2022-11-07 19:40:16'),
(116, '28489887', 'default@email.io', 'default@email.io', '67', '1656574905_f287e088472eb5ec28af.png', 'Go Pay 10.000', 'Gp10', 'Menunggu Pembayaran', 10500, '081210870324', '', '', '', 25, '', 'https://tripay.co.id/checkout/T1675447710895QJ5P', 'Pending', '114.10.24.80', 'DF', '2022-11-07 19:42:44', '2022-11-07 19:42:44'),
(117, '95342038', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '1192915752600', '', '', '', 5, '', 'https://tripay.co.id/checkout/T167544771103EWFAK', 'Pending', '114.10.24.80', 'DF', '2022-11-07 19:43:47', '2022-11-07 19:43:47'),
(118, '01162033', 'default@email.io', 'default@email.io', '10', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/genshin_tile.png', '3280+600 Genesis Crystals', 'Gi3280', 'Menunggu Pembayaran', 602000, '147524', '', '', '', 20, '', 'https://tripay.co.id/checkout/T167544772944R54RE', 'Pending', '182.3.43.33', 'DF', '2022-11-07 21:39:23', '2022-11-07 21:39:23'),
(119, '55811198', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '3 diamonds', 'Mlb3', 'Menunggu Pembayaran', 1600, '128339557415202', '', '', '', 5, '', 'https://tripay.co.id/checkout/T167544786195FD0QH', 'Pending', '202.80.219.120', 'DF', '2022-11-08 18:20:11', '2022-11-08 18:20:11'),
(120, '03557736', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '257 Diamond', 'Mlb257', 'Signature Anda salah', 57500, '6669106658653', '', '', '', 25, '', 'https://tripay.co.id/checkout/T167544786659M8CQG', 'Pending', '182.1.37.89', 'DF', '2022-11-08 18:43:56', '2022-11-08 18:43:56'),
(121, '76362451', 'default@email.io', 'default@email.io', '1', 'https://cdn1.codashop.com/S/content/mobile/images/product-tiles/mlbb_tile.jpg', '706 Diamond', 'Mlb706', 'Signature Anda salah', 152900, '1151520242228', '', '', '', 22, '9883033304838984', 'https://tripay.co.id/checkout/T167544838984R1HCE', 'Pending', '112.215.65.8', 'DF', '2022-11-10 21:23:42', '2022-11-10 21:23:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `method_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `price`
--

INSERT INTO `price` (`id`, `method_id`, `product_id`, `price`) VALUES
(14, 2, 2, 2000),
(15, 1, 2, 1500),
(17, 1, 17, 2000),
(26, 16, 4, 152900),
(27, 5, 4, 152900),
(28, 2, 4, 152900),
(29, 1, 4, 152900),
(31, 16, 3, 202000),
(32, 5, 3, 202000),
(33, 2, 3, 202000),
(34, 1, 3, 202000),
(35, 25, 424, 10000),
(36, 24, 424, 1000),
(37, 23, 424, 10000),
(38, 22, 424, 100000),
(39, 21, 424, 100000),
(40, 20, 424, 100000),
(41, 18, 424, 10000),
(42, 17, 424, 10000),
(43, 16, 424, 10000),
(44, 5, 424, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `games_id` bigint(20) NOT NULL,
  `product` varchar(250) NOT NULL,
  `price` bigint(20) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `provider` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `games_id`, `product`, `price`, `sku`, `provider`) VALUES
(3, 1, '875 Diamond', 202000, 'Mlb875', 'DF'),
(4, 1, '706 Diamond', 152900, 'Mlb706', 'DF'),
(5, 1, '568 Diamond', 139500, 'Mlb568', 'DF'),
(6, 1, '429 Diamond', 97000, 'Mlb429', 'DF'),
(7, 1, '370 Diamond', 89000, 'Mlb370', 'DF'),
(8, 1, '296 Diamond', 76400, 'Mlb296', 'DF'),
(9, 1, '257 Diamond', 57500, 'Mlb257', 'DF'),
(10, 1, '170 Diamond', 38300, 'Mlb170', 'DF'),
(11, 1, '85 Diamond', 19150, 'Mlb85', 'DF'),
(12, 1, '59 Diamond', 16100, 'Mlb59', 'DF'),
(13, 1, '44 Diamond', 12200, 'Mlb44', 'DF'),
(14, 1, '28 Diamond', 8200, 'Mlb28', 'DF'),
(15, 1, '19 Diamond', 5700, 'Mlb19', 'DF'),
(16, 1, '12 Diamond', 3600, 'Mlb12', 'DF'),
(23, 5, '73100 Diamonds', 9005000, 'FFD73100', 'DF'),
(24, 5, '36500 Diamonds', 4605000, 'FFD36500', 'DF'),
(25, 5, '7290 Diamonds', 889000, 'FFD7290', 'DF'),
(26, 5, '3640 Diamonds', 452000, 'FFD3640', 'DF'),
(27, 5, '3310 Diamonds', 414000, 'FFD3310', 'DF'),
(28, 5, '2180 Diamonds', 267000, 'FFD2180', 'DF'),
(29, 5, '2000 Diamonds', 242000, 'FFD2000', 'DF'),
(30, 5, '1975 Diamonds', 251000, 'FFD1975', 'DF'),
(31, 5, '1875 Diamonds', 238000, 'FFD1875', 'DF'),
(32, 5, '1450 Diamonds', 179000, 'FFD1450', 'DF'),
(33, 5, '1200 Diamonds', 155500, 'FFD1200', 'DF'),
(34, 5, '1080 Diamonds', 137000, 'FFD1080', 'DF'),
(35, 5, '1075 Diamonds', 133200, 'FFD1075', 'DF'),
(36, 5, '925 Diamonds', 116700, 'FFD925', 'DF'),
(37, 5, '720 Diamonds', 93600, 'FFD720', 'DF'),
(38, 5, '510 Diamonds', 67300, 'FFD510', 'DF'),
(39, 5, '355 Diamonds', 44500, 'FFD355', 'DF'),
(40, 5, '210 Diamonds', 26700, 'FFD210', 'DF'),
(41, 5, '130 Diamonds', 17200, 'FFD130', 'DF'),
(42, 5, '100 Diamonds', 13000, 'FFD100', 'DF'),
(43, 5, '95 Diamonds', 12600, 'FFD95', 'DF'),
(45, 5, '70 Diamonds', 8800, 'FFD70', 'DF'),
(46, 5, '50 Diamonds', 6600, 'FFD50', 'DF'),
(47, 5, '20 Diamonds', 2750, 'FFD20', 'DF'),
(48, 5, '12 Diamonds', 1950, 'FFD12', 'DF'),
(49, 5, '5 Diamonds', 900, 'FFD5', 'DF'),
(50, 13, '35 UC', 7300, 'PM35', 'DF'),
(51, 13, '50 UC', 9300, 'PM50', 'DF'),
(52, 13, '70 UC', 13800, 'PM70', 'DF'),
(53, 13, '100 UC', 18300, 'PM100', 'DF'),
(54, 13, '125 UC', 22800, 'PM125', 'DF'),
(55, 13, '150 UC', 27200, 'PM150', 'DF'),
(56, 13, '210 UC', 40000, 'PM210', 'DF'),
(57, 13, '500 UC', 89500, 'PM500', 'DF'),
(58, 13, '250 UC', 45000, 'PM250', 'DF'),
(59, 13, '700 UC', 132000, 'PM700', 'DF'),
(60, 13, '1250 UC', 224000, 'PM1250', 'DF'),
(61, 13, '1750 UC', 313500, 'PM1750', 'DF'),
(62, 13, '2500 UC', 449000, 'PM2500', 'DF'),
(65, 12, '26 CP', 4800, 'COD26', 'DF'),
(66, 12, '53 CP', 9300, 'COD53', 'DF'),
(67, 12, '106 CP', 18300, 'COD106', 'DF'),
(68, 12, '264 CP', 45300, 'COD264', 'DF'),
(69, 12, '528 CP', 91800, 'COD528', 'DF'),
(70, 12, '1056 CP', 182800, 'COD1056', 'DF'),
(71, 12, '1584 CP', 285500, 'COD1584', 'DF'),
(72, 12, '2640 CP', 475500, 'COD2640', 'DF'),
(73, 12, '5280 CP', 950600, 'COD5280', 'DF'),
(74, 12, '10560 CP', 1901000, 'COD10560', 'DF'),
(75, 12, '26400 CP', 4752000, 'COD26400', 'DF'),
(76, 12, '52800 CP', 9505000, 'COD52800', 'DF'),
(77, 55, '3352 Diamonds', 477000, 'Lm3352', 'DF'),
(78, 55, '2011 Diamonds', 287000, 'Lm2011', 'DF'),
(79, 55, '670 Diamonds', 95000, 'Lm670', 'DF'),
(80, 55, '335 Diamonds', 48000, 'Lm335', 'DF'),
(81, 55, '134 Diamonds', 19500, 'Lm134', 'DF'),
(82, 55, '67 Diamonds', 9500, 'Lm67', 'DF'),
(83, 56, '63000 Diamonds', 9550000, 'Sd63000', 'DF'),
(84, 56, '31450 Diamonds', 4755000, 'Sd31450', 'DF'),
(85, 56, '6279 Diamonds', 952000, 'Sd6279', 'DF'),
(86, 56, '3134 Diamonds', 477000, 'Sd3134', 'DF'),
(87, 56, '1845 Diamonds', 287000, 'Sd1845', 'DF'),
(88, 56, '1230 Diamonds', 192000, 'Sd1230', 'DF'),
(89, 56, '579 Diamonds', 91500, 'Sd579', 'DF'),
(90, 56, '282 Diamonds', 45800, 'Sd282', 'DF'),
(91, 56, '112 Diamonds', 18700, 'Sd112', 'DF'),
(92, 56, '56 Diamonds', 9600, 'Sd56', 'DF'),
(93, 56, '25 Diamonds', 4800, 'Sd25', 'DF'),
(94, 56, '10 Diamonds', 2000, 'Sd10', 'DF'),
(95, 57, 'Boyaa Capsa Susun 45.5M Koin', 4850, 'BCS45.5', 'DF'),
(96, 57, 'Boyaa Capsa Susun 50M Koin', 5335, 'BCS50', 'DF'),
(97, 57, 'Boyaa Capsa Susun 97.5M Koin', 9700, 'BCS97.5', 'DF'),
(98, 57, 'Boyaa Capsa Susun 107.2M Koin', 10670, 'BCS107.2', 'DF'),
(99, 57, 'Boyaa Capsa Susun 200.2M Koin', 19400, 'BCS200.2', 'DF'),
(100, 57, 'Boyaa Capsa Susun 220.2M Koin', 21340, 'BCS220.2', 'DF'),
(101, 57, 'Boyaa Capsa Susun 338.9M Koin', 32010, 'BCS338.9', 'DF'),
(102, 57, 'Boyaa Capsa Susun 533M Koin', 48500, 'BCS533', 'DF'),
(103, 57, 'Boyaa Capsa Susun 586.3M Koin', 53350, 'BCS586.3', 'DF'),
(104, 57, 'Boyaa Capsa Susun 819M Koin', 72750, 'BCS819', 'DF'),
(105, 57, 'Boyaa Capsa Susun 1.12B Koin', 97000, 'BCS1.12B', 'DF'),
(106, 57, 'Boyaa Capsa Susun 1.23B Koin', 106700, 'BCS1.23B', 'DF'),
(107, 57, 'Boyaa Capsa Susun 13B Koin', 970000, 'BCS13B', 'DF'),
(108, 57, 'Boyaa Capsa Susun 6.18B Koin', 485000, 'BCS6.18B', 'DF'),
(109, 57, 'Boyaa Capsa Susun 3.99B Koin', 320100, 'BCS3.99B', 'DF'),
(110, 57, 'Boyaa Capsa Susun 3.63B Koin', 291000, 'BCS3.63B', 'DF'),
(111, 57, 'Boyaa Capsa Susun 2.29B Koin', 194000, 'BCS2.29B', 'DF'),
(112, 59, '7768 Credits', 1360000, 'La7768', 'DF'),
(113, 59, '5768 Credits', 1027500, 'La5768', 'DF'),
(114, 59, '3468 Credits', 647000, 'La3468', 'DF'),
(115, 59, '2268 Credits', 412000, 'La2268', 'DF'),
(116, 59, '1108 Credits', 205000, 'La1108', 'DF'),
(117, 59, '558 Credits', 109500, 'La558', 'DF'),
(118, 59, '330 Credits', 67500, 'La330', 'DF'),
(119, 59, '65 Credits', 14000, 'La65', 'DF'),
(120, 60, '10000 Gioks', 1379500, 'Soo10000', 'DF'),
(121, 60, '5000 Gioks', 690000, 'Soo5000', 'DF'),
(123, 60, '1840 Gioks', 277000, 'Soo1840', 'DF'),
(124, 60, '1350 Gioks', 208000, 'Soo1350', 'DF'),
(125, 60, '900 Gioks', 138500, 'Soo900', 'DF'),
(126, 60, '90 Gioks', 14500, 'Soo90', 'DF'),
(141, 13, '1000 UC', 179500, 'PM1000', 'DF'),
(143, 1, '3 diamonds', 1600, 'Mlb3', 'DF'),
(144, 10, '300+30 Genesis Crystals', 61000, 'Gi300', 'DF'),
(145, 1, '5 Diamond', 1800, 'Mlb5', 'DF'),
(146, 62, '60 Diamond', 14000, 'Tj60', 'DF'),
(147, 62, '180 Diamond', 41000, 'Tj180', 'DF'),
(148, 62, '300 Diamond', 67000, 'Tj300', 'DF'),
(149, 62, '600 Diamond', 133000, 'Tj600', 'DF'),
(150, 62, '1200 Diamond', 266000, 'Tj1200', 'DF'),
(151, 62, '1800 Diamond', 400000, 'Tj1800', 'DF'),
(152, 61, '55 Star Credits', 14500, 'Msw55', 'DF'),
(153, 61, '275 Star Credits', 69000, 'Msw275', 'DF'),
(154, 61, '565 Star Credits', 138000, 'Msw565', 'DF'),
(155, 61, '1155 Star Credits', 275000, 'Msw1155', 'DF'),
(156, 61, '1765 Star Credits', 417000, 'Msw1765', 'DF'),
(157, 61, '2950 Star Credits', 682000, 'Msw2950', 'DF'),
(158, 61, '6000 Star Credits', 1367000, 'Msw6000', 'DF'),
(159, 54, '33 Shell', 11000, 'G33', 'DF'),
(160, 54, '66 Shell', 20000, 'G66', 'DF'),
(161, 54, '165 Shell', 47000, 'G165', 'DF'),
(162, 54, '330 Shell', 92000, 'G330', 'DF'),
(163, 53, '1200 PB Cash', 10000, 'Pb1200', 'DF'),
(164, 53, '2400 PB Cash', 19000, 'Pb2400', 'DF'),
(165, 53, '6000 PB Cash', 46000, 'Pb6000', 'DF'),
(166, 53, '36000 PB Cash', 264000, 'Pb36000', 'DF'),
(167, 53, '60000 PB Cash', 452000, 'Pb60000', 'DF'),
(168, 11, '30M Koin Emas-D', 4700, 'Hd30', 'DF'),
(169, 11, '60M Koin Emas-D', 5700, 'Hd60', 'DF'),
(170, 11, '100M Koin Emas-D', 7300, 'Hd100', 'DF'),
(171, 11, '200M Koin Emas-D', 17300, 'Hd200', 'DF'),
(172, 11, '400M Koin Emas-D', 34400, 'Hd400', 'DF'),
(173, 11, '2B Koin Emas-D', 131700, 'Hd2b', 'DF'),
(174, 11, '4B Koin Emas-D', 266800, 'Hd4b', 'DF'),
(175, 10, '60 Genesis Crystals', 12000, 'Gi60', 'DF'),
(176, 10, '980+110 Genesis Crystals', 181000, 'Gi980', 'DF'),
(177, 10, '1980+260 Genesis Crystals', 392000, 'Gi1980', 'DF'),
(178, 10, '3280+600 Genesis Crystals', 602000, 'Gi3280', 'DF'),
(179, 10, '6480+1600 Genesis Crystals', 1205000, 'Gi6480', 'DF'),
(180, 10, 'Blessing of the Welkin Moon', 60500, 'Gi-b', 'DF'),
(181, 7, '420 Points', 49000, 'V420', 'DF'),
(182, 7, '700 Points', 78100, 'V700', 'DF'),
(183, 7, '1375 Points', 146000, 'V1375', 'DF'),
(184, 7, '2400 Points', 243000, 'V2400', 'DF'),
(185, 7, '4000 Points', 389000, 'V4000', 'DF'),
(186, 7, '8150 Points', 778000, 'V8150', 'DF'),
(187, 9, '420 Wild Cores', 49000, '420', 'DF'),
(188, 9, '700 Wild Cores', 78100, '700', 'DF'),
(189, 9, '1375 Wild Cores', 146000, '1375', 'DF'),
(190, 9, '2400 Wild Cores', 243000, '2400', 'DF'),
(191, 9, '4000 Wild Cores', 390000, '4000', 'DF'),
(192, 9, '8150 Wild Cores', 778000, '8150', 'DF'),
(193, 14, '6 Diamonds', 2600, 'H6', 'DF'),
(194, 14, '45 Diamonds', 14500, 'H45', 'DF'),
(195, 14, '90 Diamonds', 26700, 'H90', 'DF'),
(196, 14, '225 Diamonds', 62100, 'H225', 'DF'),
(197, 14, '375 Diamonds', 123000, 'H375', 'DF'),
(198, 14, '900 Diamonds', 295000, 'H900', 'DF'),
(199, 14, '1650 Diamonds', 552000, 'H1650', 'DF'),
(200, 14, '3300 Diamonds', 1105000, 'H3300', 'DF'),
(208, 66, 'i.saku 10.000', 11500, 'I10', 'DF'),
(209, 66, 'i.saku 20.000', 21500, 'I20', 'DF'),
(210, 66, 'i.saku 50.000', 51500, 'I50', 'DF'),
(211, 66, 'i.saku 100.000', 101500, 'I100', 'DF'),
(212, 66, 'i.saku 200.000', 201500, 'I200', 'DF'),
(213, 66, 'i.saku 300.000', 302000, 'I300', 'DF'),
(214, 66, 'i.saku 400.000', 402000, 'I400', 'DF'),
(215, 66, 'i.saku 500.000', 502000, 'I500', 'DF'),
(216, 67, 'Go Pay 10.000', 10500, 'Gp10', 'DF'),
(217, 67, 'Go Pay 20.000', 20500, 'Gp20', 'DF'),
(218, 67, 'Go Pay 50.000', 50500, 'Gp50', 'DF'),
(219, 67, 'Go Pay 100.000', 100500, 'Gp100', 'DF'),
(220, 67, 'Go Pay 200.000', 200500, 'Gp200', 'DF'),
(221, 67, 'Go Pay 300.000', 300500, 'Gp300', 'DF'),
(222, 67, 'Go Pay 400.000', 400600, 'Gp400', 'DF'),
(223, 67, 'Go Pay 500.000', 500500, 'Gp500', 'DF'),
(224, 68, 'OVO 10.000', 9500, 'O10', 'DF'),
(225, 68, 'OVO 20.000', 19500, 'O20', 'DF'),
(226, 68, 'OVO 30.000', 29500, 'O30', 'DF'),
(227, 68, 'OVO 40.000', 39500, 'O40', 'DF'),
(228, 68, 'OVO 50.000', 49500, 'O50', 'DF'),
(229, 68, 'OVO 60.000', 59500, 'O60', 'DF'),
(230, 68, 'OVO 70.000', 69500, 'O70', 'DF'),
(231, 68, 'OVO 80.000', 79500, 'O80', 'DF'),
(232, 68, 'OVO 90.000', 89500, 'O90', 'DF'),
(233, 68, 'OVO 100.000', 99500, 'O100', 'DF'),
(234, 68, 'OVO 150.000', 150000, 'O150', 'DF'),
(235, 68, 'OVO 200.000', 200000, 'O200', 'DF'),
(236, 68, 'OVO 250.000', 250000, 'O250', 'DF'),
(237, 68, 'OVO 300.000', 300000, 'O300', 'DF'),
(238, 68, 'OVO 350.000', 350000, 'O350', 'DF'),
(239, 68, 'OVO 400.000', 400000, 'O400', 'DF'),
(240, 68, 'OVO 450.000', 450000, 'O450', 'DF'),
(241, 68, 'OVO 500.000', 500000, 'O500', 'DF'),
(242, 68, 'OVO 800.000', 800000, 'O800', 'DF'),
(243, 68, 'OVO 1.000.000', 1000000, 'O1', 'DF'),
(244, 69, 'DANA 10.000', 10500, 'D10', 'DF'),
(245, 69, 'DANA 20.000', 20500, 'D20', 'DF'),
(246, 69, 'DANA 50.000', 50500, 'D50', 'DF'),
(247, 69, 'DANA 75.000', 75500, 'D75', 'DF'),
(248, 69, 'DANA 100.000', 100500, 'D100', 'DF'),
(249, 69, 'DANA 150.000', 150500, 'D150', 'DF'),
(250, 69, 'DANA 200.000', 200500, 'D200', 'DF'),
(251, 69, 'DANA 300.000', 300500, 'D300', 'DF'),
(252, 69, 'DANA 400.000', 400500, 'D400', 'DF'),
(253, 69, 'DANA 500.000', 500500, 'D500', 'DF'),
(254, 69, 'DANA 600.000', 600500, 'D600', 'DF'),
(255, 69, 'DANA 700.000', 700500, 'D700', 'DF'),
(256, 69, 'DANA 800.000', 800500, 'D800', 'DF'),
(257, 69, 'DANA 900.000', 900500, 'D900', 'DF'),
(258, 69, 'DANA 1.000.000', 1000500, 'D1', 'DF'),
(259, 70, 'LinkAja Rp 10.000', 10500, 'La10', 'DF'),
(260, 70, 'LinkAja Rp 20.000', 20500, 'La20', 'DF'),
(261, 70, 'LinkAja Rp 50.000', 50500, 'La50', 'DF'),
(262, 70, 'LinkAja Rp 75.000', 75500, 'La75', 'DF'),
(263, 70, 'LinkAja Rp 100.000', 100500, 'La100', 'DF'),
(264, 70, 'LinkAja Rp 150.000', 150500, 'La150', 'DF'),
(265, 70, 'LinkAja Rp 200.000', 200500, 'La200', 'DF'),
(266, 70, 'LinkAja Rp 250.000', 250500, 'La250', 'DF'),
(267, 70, 'LinkAja Rp 300.000', 300500, 'La300', 'DF'),
(268, 70, 'LinkAja Rp 350.000', 350500, 'La350', 'DF'),
(269, 70, 'LinkAja Rp 400.000', 400500, 'La400', 'DF'),
(270, 70, 'LinkAja Rp 450.000', 450500, 'La450', 'DF'),
(271, 70, 'LinkAja Rp 500.000', 500500, 'La500', 'DF'),
(272, 70, 'LinkAja Rp 600.000', 600500, 'La600', 'DF'),
(273, 70, 'LinkAja Rp 700.000', 700500, 'La700', 'DF'),
(274, 70, 'LinkAja Rp 800.000', 800500, 'La800', 'DF'),
(275, 70, 'LinkAja Rp 900.000', 900500, 'La900', 'DF'),
(276, 70, 'LinkAja Rp 1.000.000', 1000500, 'La1', 'DF'),
(277, 71, 'SHOPEE PAY 10.000', 10500, 'Sp10', 'DF'),
(278, 71, 'SHOPEE PAY 20.000', 20500, 'Sp20', 'DF'),
(279, 71, 'SHOPEE PAY 50.000', 50500, 'Sp50', 'DF'),
(280, 71, 'SHOPEE PAY 70.000', 70500, 'Sp70', 'DF'),
(281, 71, 'SHOPEE PAY 100.000', 100500, 'Sp100', 'DF'),
(282, 71, 'SHOPEE PAY 150.000', 150500, 'Sp150', 'DF'),
(283, 71, 'SHOPEE PAY 200.000', 200500, 'Sp200', 'DF'),
(284, 71, 'SHOPEE PAY 250.000', 250500, 'Sp250', 'DF'),
(285, 71, 'SHOPEE PAY 300.000', 300500, 'Sp300', 'DF'),
(286, 71, 'SHOPEE PAY 400.000', 400500, 'Sp400', 'DF'),
(287, 71, 'SHOPEE PAY 500.000', 500500, 'Sp500', 'DF'),
(288, 71, 'SHOPEE PAY 600.000', 600500, 'Sp600', 'DF'),
(289, 71, 'SHOPEE PAY 700.000', 700500, 'Sp700', 'DF'),
(290, 71, 'SHOPEE PAY 800.000', 800500, 'Sp800', 'DF'),
(291, 71, 'SHOPEE PAY 900.000', 900500, 'Sp900', 'DF'),
(292, 71, 'SHOPEE PAY 1.000.000', 1000500, 'Sp1', 'DF'),
(293, 72, 'Mandiri E-Toll 20.000', 21000, 'M20', 'DF'),
(294, 72, 'Mandiri E-Toll 50.000', 51000, 'M50', 'DF'),
(295, 72, 'Mandiri E-Toll 100.000', 101000, 'M100', 'DF'),
(296, 72, 'Mandiri E-Toll 200.000', 201000, 'M200', 'DF'),
(297, 72, 'Mandiri E-Toll 250.000', 251000, 'M250', 'DF'),
(298, 72, 'Mandiri E-Toll 300.000', 301000, 'M300', 'DF'),
(299, 72, 'Mandiri E-Toll 400.000', 401000, 'M400', 'DF'),
(300, 72, 'Mandiri E-Toll 500.000', 501000, 'M500', 'DF'),
(301, 73, 'Tapcash 10.000', 11000, 'T10', 'DF'),
(302, 73, 'Tapcash 20.000', 21000, 'T20', 'DF'),
(303, 73, 'Tapcash 50.000', 51000, 'T50', 'DF'),
(304, 73, 'Tapcash 100.000', 101000, 'T100', 'DF'),
(305, 73, 'Tapcash 250.000', 251000, 'T250', 'DF'),
(306, 73, 'Tapcash 500.000', 501000, 'T500', 'DF'),
(307, 74, 'BRIZZI 20.000', 21000, 'B20', 'DF'),
(308, 74, 'BRIZZI 50.000', 51000, 'B50', 'DF'),
(309, 74, 'BRIZZI 100.000', 101000, 'B100', 'DF'),
(310, 74, 'BRIZZI 150.000', 151000, 'B150', 'DF'),
(311, 74, 'BRIZZI 200.000', 201000, 'B200', 'DF'),
(312, 74, 'BRIZZI 300.000', 301000, 'B300', 'DF'),
(313, 74, 'BRIZZI 400.000', 401000, 'B400', 'DF'),
(314, 74, 'BRIZZI 500.000', 501000, 'B500', 'DF'),
(315, 75, '5.000 Pulsa', 4800, 'Te5', 'DF'),
(316, 75, '10.000 Pulsa', 9500, 'Te10', 'DF'),
(317, 75, '15.000 Pulsa', 14900, 'Te15', 'DF'),
(318, 75, '20.000 Pulsa', 19500, 'Te20', 'DF'),
(319, 75, '25.000 Pulsa', 24000, 'Te25', 'DF'),
(320, 75, '30.000 Pulsa', 29500, 'Te30', 'DF'),
(321, 75, '35.000 Pulsa', 34900, 'Te35', 'DF'),
(322, 75, '40.000 Pulsa', 39500, 'Te40', 'DF'),
(323, 75, '50.000 Pulsa', 47000, 'Te50', 'DF'),
(324, 75, '75.000 Pulsa', 73000, 'Te75', 'DF'),
(325, 75, '100.000 Pulsa', 97000, 'Te100', 'DF'),
(326, 75, '150.000 Pulsa', 147000, 'Te150', 'DF'),
(327, 75, '200.000 Pulsa', 196000, 'Te200', 'DF'),
(328, 75, '300.000 Pulsa', 292500, 'Te300', 'DF'),
(329, 75, '500.000 Pulsa', 487000, 'Te500', 'DF'),
(330, 75, '1.000.000 Pulsa', 970000, 'Te1', 'DF'),
(331, 76, '5.000 Pulsa', 5100, 'In5', 'DF'),
(332, 76, '10.000 Pulsa', 10100, 'In10', 'DF'),
(333, 76, '15.000 Pulsa', 14800, 'In15', 'DF'),
(334, 76, '20.000 Pulsa', 19800, 'In20', 'DF'),
(335, 76, '25.000 Pulsa', 24500, 'In25', 'DF'),
(336, 76, '30.000 Pulsa', 29500, 'In30', 'DF'),
(337, 76, '40.000 Pulsa', 39500, 'In40', 'DF'),
(338, 76, '50.000 Pulsa', 49000, 'In50', 'DF'),
(339, 76, '60.000 Pulsa', 59000, 'In60', 'DF'),
(340, 76, '70.000 Pulsa', 69000, 'In70', 'DF'),
(341, 76, '80.000 Pulsa', 78000, 'In80', 'DF'),
(342, 76, '90.000 Pulsa', 88000, 'In90', 'DF'),
(343, 76, '100.000 Pulsa', 98000, 'In100', 'DF'),
(344, 76, '125.000 Pulsa', 119500, 'In125', 'DF'),
(345, 76, '150.000 Pulsa', 144000, 'In150', 'DF'),
(346, 76, '175.000 Pulsa', 168000, 'In175', 'DF'),
(347, 76, '200.000 Pulsa', 187000, 'In200', 'DF'),
(348, 76, '250.000 Pulsa', 233000, 'In250', 'DF'),
(349, 76, '500.000 Pulsa', 465000, 'In500', 'DF'),
(350, 76, '1.000.000 Pulsa', 930000, 'In1', 'DF'),
(351, 77, '5.000 Pulsa', 5500, 'Ax5', 'DF'),
(352, 77, '10.000 Pulsa', 10500, 'Ax10', 'DF'),
(353, 77, '15.000 Pulsa', 15000, 'Ax15', 'DF'),
(354, 77, '25.000 Pulsa', 24500, 'Ax25', 'DF'),
(355, 77, '30.000 Pulsa', 29500, 'Ax30', 'DF'),
(356, 77, '50.000 Pulsa', 49000, 'Ax50', 'DF'),
(357, 77, '100.000 Pulsa', 98000, 'Ax100', 'DF'),
(358, 77, '200.000 Pulsa', 198000, 'Ax200', 'DF'),
(359, 77, '300.000 Pulsa', 298000, 'Ax300', 'DF'),
(360, 77, '500.000 Pulsa', 495000, 'Ax500', 'DF'),
(361, 77, '1.000.000 Pulsa', 990000, 'Ax1', 'DF'),
(362, 78, '1.000 Pulsa', 1200, 'Tr1', 'DF'),
(363, 78, '5.000 Pulsa', 5500, 'Tr5', 'DF'),
(364, 78, '10.000 Pulsa', 10200, 'Tr10', 'DF'),
(365, 78, '15.000 Pulsa', 15000, 'Tr15', 'DF'),
(366, 78, '20.000 Pulsa', 19500, 'Tr20', 'DF'),
(367, 78, '25.000 Pulsa', 24500, 'Tr25', 'DF'),
(368, 78, '50.000 Pulsa', 49000, 'Tr50', 'DF'),
(369, 78, '75.000 Pulsa', 73000, 'Tr75', 'DF'),
(370, 78, '100.000 Pulsa', 97000, 'Tr100', 'DF'),
(371, 78, '150.000 Pulsa', 145000, 'Tr150', 'DF'),
(372, 78, '200.000 Pulsa', 190000, 'Tr200', 'DF'),
(373, 78, '300.000 Pulsa', 287000, 'Tr300', 'DF'),
(374, 78, '400.000 Pulsa', 390000, 'Tr400', 'DF'),
(375, 78, '500.000 Pulsa', 478000, 'Tr500', 'DF'),
(376, 79, '5.000 Pulsa', 4900, 'Sm5', 'DF'),
(377, 79, '10.000 Pulsa', 9800, 'Sm10', 'DF'),
(378, 79, '15.000 Pulsa', 14900, 'Sm15', 'DF'),
(379, 79, '20.000 Pulsa', 19800, 'Sm20', 'DF'),
(380, 79, '25.000 Pulsa', 24500, 'Sm25', 'DF'),
(381, 79, '30.000 Pulsa', 29500, 'Sm30', 'DF'),
(382, 79, '35.000 Pulsa', 34800, 'Sm35', 'DF'),
(383, 79, '40.000 Pulsa', 39800, 'Sm40', 'DF'),
(384, 79, '45.000 Pulsa', 44800, 'Sm45', 'DF'),
(385, 79, '50.000 Pulsa', 49000, 'Sm50', 'DF'),
(386, 79, '55.000 Pulsa', 54500, 'Sm55', 'DF'),
(387, 79, '60.000 Pulsa', 59000, 'Sm60', 'DF'),
(388, 79, '65.000 Pulsa', 64500, 'Sm65', 'DF'),
(389, 79, '70.000 Pulsa', 69500, 'Sm70', 'DF'),
(390, 79, '80.000 Pulsa', 79000, 'Sm80', 'DF'),
(391, 79, '85.000 Pulsa', 84000, 'Sm85', 'DF'),
(392, 79, '90.000 Pulsa', 89000, 'Sm90', 'DF'),
(393, 79, '95.000 Pulsa', 94000, 'Sm95', 'DF'),
(394, 79, '100.000 Pulsa', 98000, 'Sm100', 'DF'),
(395, 79, '150.000 Pulsa', 149000, 'Sm150', 'DF'),
(396, 79, '200.000 Pulsa', 198000, 'Sm200', 'DF'),
(397, 79, '300.000 Pulsa', 296000, 'Sm300', 'DF'),
(398, 79, '500.000 Pulsa', 492000, 'Sm500', 'DF'),
(399, 79, '1.000.000 Pulsa', 985000, 'Sm1', 'DF'),
(400, 80, '5.000 Pulsa', 5500, 'Xl5', 'DF'),
(401, 80, '10.000 Pulsa', 10500, 'Xl10', 'DF'),
(402, 80, '15.000 Pulsa', 15000, 'Xl15', 'DF'),
(403, 80, '25.000 Pulsa', 24500, 'Xl25', 'DF'),
(404, 80, '30.000 Pulsa', 29500, 'Xl30', 'DF'),
(405, 80, '40.000 Pulsa', 39500, 'Xl40', 'DF'),
(406, 80, '50.000 Pulsa', 49500, 'Xl50', 'DF'),
(407, 80, '100.000 Pulsa', 99000, 'Xl100', 'DF'),
(408, 80, '150.000 Pulsa', 149000, 'Xl150', 'DF'),
(409, 80, '200.000 Pulsa', 198000, 'Xl200', 'DF'),
(410, 80, '300.000 Pulsa', 298000, 'Xl300', 'DF'),
(411, 80, '500.000 Pulsa', 495000, 'Xl500', 'DF'),
(412, 80, '1.000.000 Pulsa', 988000, 'Xl1', 'DF'),
(413, 81, '5.000 Pulsa', 5500, 'By5', 'DF'),
(414, 81, '10.000 Pulsa', 10500, 'By10', 'DF'),
(415, 81, '20.000 Pulsa', 20500, 'By20', 'DF'),
(416, 81, '30.000 Pulsa', 30500, 'By30', 'DF'),
(417, 81, '40.000 Pulsa', 40000, 'By40', 'DF'),
(418, 81, '50.000 Pulsa', 50000, 'By50', 'DF'),
(419, 81, '70.000 Pulsa', 70000, 'By70', 'DF'),
(420, 81, '80.000 Pulsa', 80000, 'By80', 'DF'),
(421, 81, '100.000 Pulsa', 99000, 'By100', 'DF'),
(422, 81, '150.000 Pulsa', 149000, 'By150', 'DF'),
(423, 81, '200.000 Pulsa', 198000, 'By200', 'DF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider`
--

CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `provider` varchar(55) NOT NULL,
  `status` enum('On','Off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `provider`
--

INSERT INTO `provider` (`id`, `provider`, `status`) VALUES
(1, 'DF', 'On');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `topup_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `metode` varchar(250) NOT NULL,
  `metode_id` int(11) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `target` varchar(250) NOT NULL,
  `status` enum('Pending','Success','Canceled') NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `topup`
--

INSERT INTO `topup` (`id`, `topup_id`, `email`, `metode`, `metode_id`, `quantity`, `balance`, `target`, `status`, `date_create`) VALUES
(3, '2624', 'maksmiliyan0200@gmail.com', 'Qris', 25, 10000, 10000, 'https://tripay.co.id/checkout/T131513377626KO5U6', 'Pending', '2022-07-01 22:42:05'),
(4, '56041', 'admin@miliyan.id', 'Qris', 25, 20000, 20000, 'https://tripay.co.id/checkout/T131513382102OZ2CR', 'Success', '2022-07-02 12:19:47'),
(5, '5762', 'dhaniakbara13@gmail.com', 'Qris', 25, 500000, 500000, 'https://tripay.co.id/checkout/T131513462553PWEWN', 'Pending', '2022-07-04 12:53:19'),
(6, '82805', 'dhaniakbara13@gmail.com', 'Qris', 25, 50000, 50000, 'https://tripay.co.id/checkout/T131513462648JSSAC', 'Pending', '2022-07-04 12:58:48'),
(7, '41151', 'admin@gmail.com', 'BRIVA', 23, 50000, 50000, 'https://tripay.co.id/checkout/T167544758182FQIFG', 'Success', '2022-11-06 22:25:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(55) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` enum('Member','Admin') NOT NULL,
  `status` enum('On','Off') NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `last_ip` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`, `password`, `level`, `status`, `ip`, `date_create`, `last_ip`, `last_login`) VALUES
(5, 'TopupDidik', 'admin@gmail.com', 52400, '$2y$10$pEAOMub8okBmEQrMGCpQmerq7nxHxhr9K1GT9YPaaWJyBtRsfAkOK', 'Admin', 'On', '', '2022-06-26 22:10:49', '182.3.46.202', '2022-11-12 16:10:12'),
(22, 'Test', 'test@gmail.com', 0, '$2y$10$RSEFg9F392s5gjyvSvr5I.onBKBq4nWoxlo9b7li07s5gYiM/1IJS', 'Member', 'On', '', '2022-07-02 00:18:51', '', '0000-00-00 00:00:00'),
(23, 'Test', 'test2@gmail.com', 0, '$2y$10$.z1avhkCwD2RFaev2wVbfOA4Nkho3ZFZVMks2EraM7m8nhjpzOyFe', 'Member', 'On', '', '2022-07-02 00:37:40', '', '0000-00-00 00:00:00'),
(24, 'Akun', 'akunkepo250520@gmail.com', 0, '$2y$10$AcXWH/.0lyXd3mVFq9C6museUqqNWOw1L3uDYP9TSj3v2F8urseY6', 'Member', 'On', '', '2022-07-02 06:32:45', '', '0000-00-00 00:00:00'),
(25, 'Pejuang receh', 'naru.kenshi@gmail.com', 0, '$2y$10$hGc6L3zAmVSqX4ftqpN.q.Z/.NfkJktLO5SIvTYOtOnIk/WBUdXiO', 'Member', 'On', '', '2022-07-02 08:05:07', '202.67.40.198', '2022-07-03 12:04:01'),
(26, 'Dhani Akbar', 'dhaniakbara13@gmail.com', 0, '$2y$10$wBzPUby7q0AhmkubirdiC.G.F0auxt234PH79EUutV4R.uuaUzcpi', 'Member', 'On', '', '2022-07-04 12:52:52', '182.253.131.67', '2022-07-04 13:02:10'),
(27, 'member', 'member@gmail.com', 0, '$2y$10$OluGGSzVTVcau2TRMrO1beIby73RvqoWO.48pOV7hPxCEM05MOyIS', 'Member', 'On', '', '2022-07-06 12:31:49', '36.75.64.253', '2022-07-06 12:32:02'),
(28, 'Kuro', 'osanugroho03@gmail.com', 0, '$2y$10$.HX.dA/eoNC0iJJboC/M5eXqwIuGTsWZBDBcXeblbpubs0nPknL4S', 'Member', 'On', '', '2022-07-12 13:21:44', '20.125.147.67', '2022-07-12 13:22:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `utility`
--

CREATE TABLE `utility` (
  `id` int(11) NOT NULL,
  `u_key` varchar(250) NOT NULL,
  `u_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `utility`
--

INSERT INTO `utility` (`id`, `u_key`, `u_value`) VALUES
(1, 'web-title', 'Topupdidiktutorial.my.id - Top Up Game Termurah Dan Tercepat Se-Indonesia'),
(2, 'web-icon', 'https://topupdidiktutorial.my.id/assets/images/miliyan.id-icon.png'),
(3, 'web-logo', 'https://topupdidiktutorial.my.id/assets/images/miliyan.id3.png'),
(4, 'web-author', 'TopupDidikTutorial.my.id'),
(5, 'web-keywords', 'top up game, topup murah, top up terpercaya, top up free fire, top up free fire termurah, top up mobile legends, top up ml, top up pubg'),
(6, 'web-description', 'topupdidiktutorial.my.id Adalah Tempat Top Up Games Murah, Aman dan Terpercaya topupdidiktutorial.my.id Menyediakan Layanan Top Up Games seperti Diamond Mobile Legends, FF, Pubg, Genshin Impact, AOV, dll. Untuk Mempermudah Pembayaran Anda Disini Kami Juga Menyediakan Metode Pembayaran Indomaret, Alfamart, Bank BCA, Bank Mandiri, Bank BNI, Bank Bri, OVO, Shopee Pay, Qris, dll.\r\n'),
(7, 'tripay_api', 'TicEBtJl4TxKq7fIBvSVH6zNmdx71QLpTjuraR7E'),
(8, 'tripay_private', 'lAdMC-bRYFI-8e1iD-NmVYF-Tkn9b'),
(9, 'tripay_merchant', 'T16754'),
(10, 'slide-1', 'https://topupdidiktutorial.my.id/assets/images/slide/igames.png'),
(11, 'slide-2', 'https://topupdidiktutorial.my.id/assets/images/slide/igames2.png'),
(12, 'slide-3', 'https://topupdidiktutorial.my.id/assets/images/slide/igames2.png'),
(13, 'digi_user', 'sunologNzaLg'),
(14, 'digi_key', '8a27fa4b-5a77-53db-8683-6f6f40007628'),
(15, 'doc_tutor', '<ol>\n	<li>Silahkan masuk ke menu <a href=\"/\">Top Up</a></li>\n	<li>Pilih Games</li>\n	<li>Masukan ID Akun</li>\n	<li>Pilih nominal Top Up</li>\n	<li>Pilih metode pembayaran</li>\n	<li>Lakukan pembayaran</li>\n	<li>Selesai</li>\n</ol>\n'),
(16, 'doc_terms', '<h2><strong>Terms and Conditions</strong></h2>\r\n\r\n<p>Welcome to topupdidiktutorial.my.id</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of VIGame&#39;s Website, located at topupdidiktutorial.my.id</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Miliyan.id if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing VIGame, you agreed to use cookies in agreement with the Miliyan.id Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Miliyan.id and/or its licensors own the intellectual property rights for all material on Miliyan.id. All intellectual property rights are reserved. You may access this from Miliyan.id for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n\r\n<ul>\r\n	<li>Republish material from topupdidiktutorial.my.id</li>\r\n	<li>Sell, rent or sub-license material from topupdidiktutorial.my.id</li>\r\n	<li>Reproduce, duplicate or copy material from topupdidiktutorial.my.id</li>\r\n	<li>Redistribute content from Miliyan.id</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the <a href=\"https://www.privacypolicies.com/blog/sample-terms-conditions-template/\">Terms And Conditions Template</a>.</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Miliyan.id does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Miliyan.id,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Miliyan.id shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Miliyan.id reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Miliyan.id a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n	<li>Government agencies;</li>\r\n	<li>Search engines;</li>\r\n	<li>News organizations;</li>\r\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n	<li>commonly-known consumer and/or business information sources;</li>\r\n	<li>dot.com community sites;</li>\r\n	<li>associations or other groups representing charities;</li>\r\n	<li>online directory distributors;</li>\r\n	<li>internet portals;</li>\r\n	<li>accounting, law and consulting firms; and</li>\r\n	<li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Miliyan.id; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Miliyan.id. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n	<li>By use of our corporate name; or</li>\r\n	<li>By use of the uniform resource locator being linked to; or</li>\r\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</li>\r\n</ul>\r\n\r\n<p>No use of VIGame&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Your Privacy</strong></h3>\r\n\r\n<p>Please read Privacy Policy</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n	<li>limit or exclude our or your liability for death or personal injury;</li>\r\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\r\n'),
(17, 'help_email', 'cs@topupdidiktutorial.my.id'),
(18, 'help_telpon', '089602995442'),
(19, 'games_token', 'myDowj9KhUfBs8qTR7M31Sra2dYHLVt4PFuiQplxWGZI0kEeJbNAg5cnvOCX'),
(21, 'pay-saldo', 'On'),
(23, 'v_id', '-'),
(24, 'v_key', '-'),
(25, 's_host', 'mail.topupdidiktutorial.my.id'),
(26, 's_user', 'cs@topupdidiktutorial.my.id'),
(27, 's_pass', 'GFQk$W$gWFxf'),
(28, 's_port', '465'),
(29, 'ksp-key', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `method`
--
ALTER TABLE `method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT untuk tabel `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `utility`
--
ALTER TABLE `utility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
