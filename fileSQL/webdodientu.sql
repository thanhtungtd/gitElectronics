-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:34 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webdodientu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idadmin` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(11) NOT NULL,
  `fullname` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(1, '0', '2017-04-28 16:49:42'),
(2, '0', '2017-04-28 16:51:15'),
(3, '0', '2017-04-28 16:53:53'),
(4, 'Hiáº¿u', '2017-04-28 16:54:34'),
(5, 'Hiáº¿u', '2017-04-29 02:12:53'),
(6, 'Hiáº¿u', '2017-05-01 06:58:25'),
(7, 'Hiáº¿u', '2017-05-01 10:16:28'),
(8, 'Hiáº¿u', '2017-05-01 10:17:28'),
(9, 'Hiáº¿u', '2017-05-01 11:15:23'),
(10, 'admin', '2017-05-01 11:42:20'),
(11, 'admin', '2017-05-01 11:45:21'),
(12, 'admin', '2017-05-03 14:20:16'),
(13, 'admin', '2017-05-04 02:53:38'),
(14, 'ha@gmail.co', '2017-05-05 14:32:04'),
(15, 'admin', '2017-05-05 14:44:28'),
(16, 'ha@gmail.co', '2017-05-05 14:49:02'),
(17, 'admin', '2017-05-05 14:55:56'),
(18, 'ha@gmail.co', '2017-05-05 14:56:35'),
(19, 'admin', '2017-05-24 06:18:44'),
(20, 'admin', '2021-11-10 12:15:38'),
(21, 'admin', '2021-11-10 12:19:00'),
(22, 'admin', '2021-11-12 14:35:20'),
(23, 'admin', '2021-11-12 14:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE IF NOT EXISTS `cart_detail` (
`id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 62, 0, '0'),
(2, 2, 60, 1, '50'),
(3, 2, 61, 1, '50'),
(4, 3, 45, 5, '60'),
(5, 4, 39, 1, '50'),
(6, 5, 62, 1, '50'),
(7, 6, 38, 1, '50'),
(8, 6, 39, 1, '50'),
(9, 6, 45, 1, '60'),
(10, 7, 40, 1, '50'),
(11, 7, 48, 1, '60'),
(12, 8, 48, 1, '60,000'),
(13, 9, 84, 7, '199000'),
(14, 10, 81, 5, '1290000'),
(15, 10, 79, 3, '1990000'),
(16, 10, 65, 1, '199'),
(17, 11, 83, 3, '199000'),
(18, 12, 86, 1, '27000000'),
(19, 12, 67, 8, '249900'),
(20, 12, 85, 1, '12000000'),
(21, 12, 72, 1, '40000'),
(22, 13, 86, 3, '27000000'),
(23, 13, 84, 1, '199000'),
(24, 14, 85, 1, '12000000'),
(25, 14, 84, 1, '199000'),
(26, 15, 88, 2, '22000000'),
(27, 16, 86, 3, '27000000'),
(28, 17, 88, 1, '22000000'),
(29, 18, 86, 1, '27000000'),
(30, 19, 85, 1, '12000000'),
(31, 19, 86, 2, '27000000'),
(32, 20, 92, 1, '22000000'),
(33, 21, 104, 9, '23790000'),
(34, 22, 141, 1, '1350000'),
(35, 22, 97, 1, '18890000'),
(36, 22, 148, 1, '890000'),
(37, 22, 164, 1, '449000'),
(38, 23, 162, 1, '49000');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE IF NOT EXISTS `dangky` (
`id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(33, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(34, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(35, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(36, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(37, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(38, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(39, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(40, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(41, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(42, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(43, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(44, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(45, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(46, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(47, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(48, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(49, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(50, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(51, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(52, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(53, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(54, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(55, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(56, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(57, '', 'admin', 'doimatkhau', 0, ''),
(58, 'HÃ ', 'ha@gmail.com', '123', 123, '123/4/8 kp1 '),
(59, 'a', 'Ã¡dvasdvasdvasvsdva', '123', 64498461, 'adasÄ‘DVDS');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(23, 60, 'featured-section-new-to-imac_2x1493467732.jpg'),
(24, 60, 'image0011493467732.png'),
(25, 60, 'image001_21493467732.jpg'),
(26, 60, 'image001_111493467732.jpg'),
(29, 63, '5190001_sa (1) - Copy1493468586.jpg'),
(30, 63, '5190001_sa (1)1493468586.jpg'),
(31, 63, '1466960633738_19141493468586.jpg'),
(32, 63, '1466960633738_19141493468706.jpg'),
(33, 63, 'featured-section-new-to-imac_2x1493468926.jpg'),
(34, 63, '5190001_sa (1) - Copy1493469597.jpg'),
(38, 61, '1466960639886_19201493470147.jpg'),
(43, 62, '5190001_sa (1) - Copy1493471267.jpg'),
(44, 62, '5190001_sa (1)1493471267.jpg'),
(45, 62, 'featured-section-new-to-imac_2x1493471267.jpg'),
(46, 51, '5190001_sa (1) - Copy1493612642.jpg'),
(47, 51, '5190001_sa (1)1493612643.jpg'),
(48, 45, '5190001_sa (1) - Copy1493616068.jpg'),
(49, 45, '5190001_sa (1)1493616068.jpg'),
(50, 45, '1466960633738_19141493616068.jpg'),
(51, 85, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493695704.jpg'),
(52, 85, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493695704.jpg'),
(53, 85, 'canon-eos-1d-x-1-1-min1493695704.jpg'),
(54, 85, 'canon-eos-1d-x-2-1-min1493695704.jpg'),
(55, 86, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493696681.jpg'),
(56, 86, 'canon-6d-1-1-min1493696682.jpg'),
(57, 86, 'canon-eos-1d-x-2-1-min1493696682.jpg'),
(64, 88, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493995899.jpg'),
(65, 88, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493995899.jpg'),
(66, 88, 'canon-6d-1-1-min1493995899.jpg'),
(67, 88, 'canon-eos-1d-x-1-1-min1493995899.jpg'),
(79, 90, '50255958752895701512031536.png'),
(80, 90, '74652537370051001512031536.png'),
(81, 90, '80289829538760701512031536.png'),
(82, 89, 'dum1517247854.png'),
(83, 89, 'indian-flag1517247854.png'),
(84, 89, 'japan-flag1517247854.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hieusp`
--

CREATE TABLE IF NOT EXISTS `hieusp` (
`idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(15, 'Samsung', '1'),
(16, 'Oppo', '1'),
(17, 'Iphone', '1'),
(18, 'Xiaomi', '1'),
(19, 'Huawei', '1'),
(20, 'ASUS', '1'),
(21, 'LENOVO', '1'),
(22, 'APPLE', '1'),
(23, 'ACER', '1'),
(24, 'HP', '1'),
(25, 'MSI', '1'),
(27, 'DELL', '1'),
(28, 'KhÃ¡c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE IF NOT EXISTS `loaisp` (
`idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(26, 'Laptop', '1'),
(27, 'Äiá»‡n thoáº¡i', '1'),
(28, 'Loa', '1'),
(29, 'Bá»™ nhá»›', '1'),
(30, 'Ram', '1'),
(31, 'BÃ n phÃ­m-chuá»™t', '1'),
(32, 'Phá»¥ kiá»‡n', '2');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(37, 'iphone 7', 'M01', 'iphone-7-plus-red-128gb-400x460.png', 89, 89, 1, 5, 4, '1', 'rrrrrrr'),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sáº£n pháº«m h&agrave;ng ch&iacute;nh h&atilde;ng v&agrave; ráº¥t l&agrave; Ä‘áº¹p.</p>'),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Äáº¹p</p>'),
(88, 'Macbook pro 2017', 'mp67', 'download (1).jpg', 22000000, 19000000, 100, 24, 14, '1', '<p>Macbook pro qu&aacute; Ä‘áº¹p ,nhÆ°ng qu&aacute; máº¯c.</p>'),
(89, 'Tai nghe head', 'r45', '2.jpg', 70000, 68000, 6, 18, 13, '1', '<p>Tai nghe cá»±c Ä‘áº¹p</p>'),
(90, 'ACER Aspire 5', '001', 'aspire 5.jpg', 18890000, 0, 2, 26, 23, '1', '<p>ACER Aspire 5 2019</p>'),
(91, 'ACER Aspire 7', '002', 'aspire 7.jpg', 19800000, 0, 3, 26, 23, '1', '<p>ACER Aspire 7</p>'),
(92, 'ACER Nitro 5', '003', 'nitro 5.jpg', 22000000, 500000, 2, 26, 23, '1', '<p>ACER Nitro 5 2020</p>'),
(93, 'ACER Swift i5', '004', 'Swift 3X i5.jpg', 16990000, 0, 2, 26, 23, '1', '<p>ACER Swift i5</p>'),
(94, 'ASUS ROG gaming R7', '005', 'asus rog gaming R7.jpg', 24490000, 500000, 3, 26, 20, '1', '<p>ASUS ROG gaming R7 i7</p>'),
(95, 'ASUS ROG Strix G i7', '006', 'asus rog strix G i7.jpg', 24000000, 0, 1, 26, 20, '1', '<p>ASUS ROG Strix G i7</p>'),
(96, 'ASUS TUF gaming a15', '007', 'asus tuf gaming a15.jpg', 28890000, 1000000, 2, 26, 20, '1', '<p>ASUS TUF gaming a15 2021</p>'),
(97, 'ASUS UX425E i5', '008', 'asus UX425E i5.jpg', 18890000, 0, 3, 26, 20, '1', '<p>ASUS UX425E i5</p>'),
(98, 'ASUS Vivobook a515ea', '009', 'asus vivobook a515ea i5.jpg', 16500000, 0, 8, 26, 20, '1', '<p>ASUS Vivobook a515ea i5</p>'),
(99, 'DELL Alienware i7', '010', 'dell alienware i7.jpg', 31550000, 1000000, 1, 26, 27, '1', '<p>DELL Alienware i7</p>'),
(100, 'DELL gaming g3', '011', 'dell gaming g3.jpg', 22500000, 0, 2, 26, 27, '1', '<p>DELL gaming g3 i5</p>'),
(101, 'DELL gaming g5', '012', 'dell gaming g5.jpg', 2400000, 0, 5, 26, 27, '1', '<p>DELL gaming g5</p>'),
(102, 'DELL inspiron 15 i5', '013', 'dell inspiron 15 i5.jpg', 16990000, 0, 2, 26, 27, '1', '<p>DELL inspiron 15 i5</p>'),
(103, 'DELL inspiron 15', '014', 'dell inspiron.jpg', 18890000, 500000, 1, 26, 27, '1', '<p>DELL inspiron 15</p>'),
(104, 'DELL Latidute i5', '015', 'Dell Latidute i5.jpg', 23790000, 500000, 2, 26, 27, '1', '<p>DELL Latidute i5</p>'),
(105, 'HP pavilion 15', '016', 'hp-pavilion 15.jpg', 19800000, 200000, 1, 26, 24, '1', '<p>HP pavilion 15 i5</p>'),
(106, 'HP pavilion-gaming-16 i7', '017', 'HP-pavilion-gaming-16 i7.jpg', 24490000, 500000, 3, 26, 24, '1', '<p>HP pavilion-gaming-16 i7</p>'),
(107, 'HP omen i7', '018', 'omen.jpg', 26850000, 200000, 1, 26, 24, '1', '<p>HP omen i7</p>'),
(108, 'HP pavilion 14 i7', '0196', 'pavilion 14 i7.png', 20000000, 500000, 0, 26, 24, '1', '<p>HP pavilion 14 i7</p>'),
(109, 'HP pavilion x360', '020', 'pavilion x360.jpg', 28490000, 200000, 1, 26, 24, '1', '<p>HP pavilion x360</p>'),
(110, 'Lenovo ideapad 5 i7', '021', 'ideapad 5 i7.jpg', 22490000, 0, 0, 26, 21, '1', '<p>Lenovo ideapad 5 i7</p>'),
(111, 'Lenovo legion5 i7', '022', 'legion5 i7.jpg', 28900000, 0, 1, 26, 21, '1', '<p>Lenovo legion5 i7 2020</p>'),
(112, 'Lenovo legion7 ACH i7', '023', 'legion7 ACH i7.jpg', 29990000, 200000, 2, 26, 21, '1', '<p>Lenovo legion7 ACH i7 2021</p>'),
(113, 'Lenovo thinkbook 15', '024', 'thinkbook 15.jpg', 18500000, 200000, 1, 26, 21, '1', '<p>Lenovo thinkbook 15</p>'),
(114, 'Lenovo thinkpad x1 cacbon i5', '025', 'thinkpad x1 cacbon i5.jpg', 30000000, 1000000, 1, 26, 21, '1', '<p>Lenovo thinkpad x1 cacbon i5 2020</p>'),
(115, 'Macbook Pro2021', '026', 'mac pro 2021.png', 35000000, 500000, 1, 26, 22, '1', '<p>Macbook Pro2021 i7</p>'),
(116, 'Macbook air 2019', '027', 'macair 2019.jpg', 31000000, 200000, 1, 26, 22, '1', '<p>Macbook air 2019 i5</p>'),
(117, 'Macbook air M1 2021', '028', 'macair m1 2021.jpg', 32500000, 0, 1, 26, 22, '1', '<p>Macbook air M1 2021</p>'),
(118, 'Razer 13 mecury', '029', 'razer 13 mecury.jpg', 30490000, 0, 1, 26, 28, '1', '<p>Razer 13 mecury i7</p>'),
(119, 'Razer blade 2019', '030', 'razer blade 2019.jpg', 34650000, 500000, 1, 26, 28, '1', '<p>razer blade 2019</p>'),
(120, 'Razer 17 pro', '031', 'razer 17 pro.webp', 32500000, 0, 1, 26, 28, '1', '<p>razer 17 pro i7</p>'),
(121, 'Xiaomi 11 Lite 5G NE', '032', 'Xiaomi 11 Lite 5G NE.jpg', 12550000, 0, 1, 27, 18, '1', '<p>Xiaomi 11 Lite 5G NE</p>'),
(122, 'Xiaomi Mi 10T Lite 5G', '033', 'Xiaomi Mi 10T Lite 5G.jpg', 10490000, 500000, 1, 27, 18, '1', '<p>Xiaomi Mi 10T Lite 5G</p>'),
(123, 'Xiaomi Redmi 9C', '034', 'Xiaomi Redmi 9C.jpg', 8490000, 0, 1, 27, 18, '1', '<p>Xiaomi Redmi 9C 128GB</p>'),
(124, 'Xiaomi Redmi Note 10S', '035', 'Xiaomi Redmi Note 10S.jpg', 7900000, 200000, 2, 27, 18, '1', '<p>Xiaomi Redmi Note 10S 128GB</p>'),
(125, 'Samsung Galaxy S21 Ultra', '035', 'Samsung Galaxy S21 Ultra.jpeg', 21490000, 500000, 2, 27, 15, '1', '<p>Samsung Galaxy S21 Ultra 1TB</p>'),
(126, 'samsung-galaxy-a72', '036', 'samsung-galaxy-a72.jpg', 10890000, 0, 3, 27, 15, '1', '<p>samsung-galaxy-a72 256GB</p>'),
(127, 'Samsung galaxy note20-ultra', '037', 'samsung-galaxy-note20-ultra-2.jpg', 20890000, 200000, 1, 27, 15, '1', '<p>samsung-galaxy-note20-ultra&nbsp;</p>'),
(128, 'Samsung galaxy Z-fold3', '038', 'samsung-galaxy-z-fold3.jpg', 45690000, 1000000, 1, 27, 15, '1', '<p>samsung-galaxy-z-fold3</p>'),
(129, 'OPPO A74', '039', 'OPPO A74.jpg', 7590000, 0, 3, 27, 16, '1', '<p>OPPO A74 128GB</p>'),
(130, 'OPPO Find X3', '040', 'OPPO Find X3.jpg', 22000000, 500000, 1, 27, 16, '1', '<p>OPPO Find X3</p>'),
(131, 'Oppo Reno6 5G', '041', 'Oppo Reno6 5G.jpeg', 12490000, 200000, 1, 27, 16, '1', '<p>Oppo Reno6 5G</p>'),
(132, 'iPhone 13 pro', '042', 'iPhone 13.jpg', 25490000, 500000, 1, 27, 17, '1', '<p>iPhone 13 pro 512GB</p>'),
(133, 'iPhone 12mini', '043', 'iPhone 12mini.jpg', 18890000, 500000, 1, 27, 17, '1', '<p>iPhone 12mini 256GB</p>'),
(134, 'iPhone SE (2020)', '044', 'iPhone SE (2020).jpg', 19800000, 500000, 1, 27, 17, '1', '<p>iPhone SE (2020) 256GB</p>'),
(135, 'Loa Bluetooth SONY SRS-XB13', '045', 'Loa Bluetooth SONY SRS-XB13.jpg', 2000000, 0, 2, 28, 28, '1', '<p>Loa Bluetooth SONY SRS-XB13</p>'),
(136, 'Loa Fenda T-400X', '046', 'Loa Fenda T-400X.jpg', 1500000, 200000, 1, 28, 28, '1', '<p>Loa Fenda T-400X</p>'),
(137, 'Loa Microlab M900 (TMN-3)', '047', 'Loa Microlab M900 (TMN-3).png', 1200000, 0, 2, 28, 28, '1', '<p>Loa Microlab M900 (TMN-3)</p>'),
(141, 'Loa bluetooth Sada 209', '050', 'Loa bluetooth Sada 209.jpeg', 1350000, 50000, 2, 28, 28, '1', '<p>Loa bluetooth Sada 209</p>'),
(145, 'BÃ n phÃ­m bilibili Akko', '052', 'bilibili Akko.jpg', 1200000, 0, 1, 31, 28, '1', '<p>bilibili Akko</p>'),
(146, 'BÃ n phÃ­m Bloody 4Atech', '053', 'Bloody 4Atech.jpg', 1000000, 49000, 1, 31, 28, '1', '<p>Bloody 4Atech</p>'),
(147, 'BÃ n phÃ­m game Cadeve', '054', 'game Cadeve.jfif', 999000, 0, 2, 31, 28, '1', '<p>game Cadeve</p>'),
(148, 'BÃ n phÃ­m RK61 Blue', '055', 'RK61 Blue.png', 890000, 0, 3, 31, 28, '1', '<p>RK61 Blue</p>'),
(149, 'Chuá»™t Gladius II', '056', 'Gladius II.jpg', 750000, 0, 5, 31, 20, '1', '<p>Gladius II</p>'),
(150, 'Chuá»™t Marvo M-300', '057', 'Marvo M-300.jpg', 650000, 49000, 2, 31, 28, '1', '<p>Marvo M-300</p>'),
(151, 'Chuá»™t logitecch G102', '058', 'logitecch G102.jpg', 949000, 0, 3, 31, 28, '1', '<p>logitecch G102</p>'),
(152, 'Ram Dell 5548', '058', 'Ram Dell 5548.jpg', 2500000, 49000, 2, 30, 27, '1', '<p>Ram Dell 5548</p>'),
(153, 'Ram Kingston DDR4', '059', 'Ram Kinhston DDR4.jpg', 1490000, 0, 3, 30, 28, '1', '<p>Ram Kingston DDR4</p>'),
(154, 'Ram Samsung R538', '060', 'Ram Samsung R538.jpg', 2490000, 0, 3, 30, 15, '1', '<p>Ram Samsung R538</p>'),
(155, 'Rom HDD WB Blue', '062', 'Rom HDD WB Blue.jpg', 1250000, 0, 2, 29, 28, '1', '<p>Rom HDD WB Blue</p>'),
(156, 'Rom Samsung EVO 860', '063', 'Rom Samsung EVO 860.jpg', 1450000, 49000, 8, 29, 15, '1', '<p>Rom Samsung EVO 860</p>'),
(157, 'Rom SSD KingSton NV1 PCIe', '064', 'Rom SSD KingSton NV1 PCIe.png', 1890000, 200000, 2, 29, 28, '1', '<p>Rom SSD KingSton NV1 PCIe</p>'),
(158, 'Rom SSD Samsung M.2 NVME', '065', 'Rom SSD Samsung M.2 NVME.jpg', 2190000, 50000, 7, 29, 15, '1', '<p>Rom SSD Samsung M.2 NVME</p>'),
(160, 'KÃ­nh cÆ°á»ng lá»±c iP12', '066', 'cuongluc iP12.jpg', 99000, 0, 20, 32, 17, '1', '<p>CÆ°á»ng lá»±c ip12</p>'),
(161, 'KÃ­nh cÆ°á»ng lá»±c Samsung A51', '067', 'kinh-cuong-luc-samsung-a51-full-man-hinh-5d-gia-re.jpg', 50000, 0, 15, 32, 15, '1', '<p>CÆ°á»ng lá»±c&nbsp;samsung A51</p>'),
(162, 'KÃ­nh cÆ°á»ng lá»±c Oppo A15', '068', 'oppoa15.png', 49000, 0, 18, 32, 16, '1', '<p>CÆ°á»ng lá»±c&nbsp;Oppo A15</p>'),
(163, 'KÃ­nh cÆ°á»ng lá»±c Vsmart Joy_3', '069', 'cuong-luc-vsmart-joy-3-1.jpg', 30000, 0, 20, 32, 28, '1', '<p>CÆ°á»ng lá»±c Vsmart Joy 3</p>'),
(164, 'Tai nghe chá»‘ng á»“n Jays qSeven', '070', 'Jays qSeven.jpg', 449000, 0, 4, 32, 28, '1', '<p style="text-align: left;">Tai nghe chá»‘ng á»“n chá»§ Ä‘á»™ng Jays qSeven</p>'),
(165, 'Tai nghe Sony WI-C600N', '071', 'Sony WI-C600N.jpg', 520000, 19000, 3, 32, 28, '1', '<p>Tai nghe cho&agrave;ng cá»• Sony WI-C600N</p>'),
(166, 'Tai nghe Samsung AKG', '072', 'Tai nghe Samsung AKG.png', 189000, 0, 5, 32, 15, '1', '<p>Tai nghe c&oacute; d&acirc;y Samsung AKG</p>'),
(167, 'Sáº¡c dÆ° phÃ²ng Energizer 20000mAh', '073', 'Energizer 20000mAh.jpg', 599000, 0, 3, 32, 28, '1', '<p>Sáº¡c dÆ° ph&ograve;ng Energizer 20000mAh 2 cá»•ng typeC &amp; lightning</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
`idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
 ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `hieusp`
--
ALTER TABLE `hieusp`
 ADD PRIMARY KEY (`idhieusp`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
 ADD PRIMARY KEY (`idloaisp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`idsanpham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `hieusp`
--
ALTER TABLE `hieusp`
MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
