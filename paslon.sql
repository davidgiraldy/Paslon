-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 08:56 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paslon`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `userid`, `comment`) VALUES
(1, 1, 'Wow, lumayan lah Mantap Djiwa!!!'),
(2, 1, 'Wow, Bagus sekali!!!'),
(4, 2, 'Mantap Djiwa!!!!!!!!!'),
(5, 5, 'Ya lumayan untuk Salon budget yaa'),
(6, 6, 'Sasak nya kurang bagus, ditingkatkan lagi !'),
(7, 7, 'AC nya kurang dingin, harusnya bisa lebih dingin lagi !'),
(8, 0, 'asd'),
(9, 0, 'asdasdasdasd'),
(10, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menuid` int(11) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menuid`, `menu`, `deskripsi`, `harga`) VALUES
(1, 'BLOW DRY', 'Blow dry termasuk sampo & basic blow dry. Jika ditambah hair style, terdapat biaya tambahan', 70000),
(2, 'CUT AND STYLE', 'Potongan rambut termasuk sampo & basic blow dry. Jika ditambah hair style, terdapat biaya tambahan', 100000),
(3, 'BANG TRIM', 'Potongan poni termasuk sampo & Basic Blow Dry', 50000),
(4, 'CURL SET / UPSTYLE', 'Curly rambut termasuk Basic Blow Dry dan Hair Style', 170000),
(5, 'RELAXATION TREATMENT', 'Perawatan rambut cocok untuk yang memiliki rambut bertekstur, baik bergelombang maupun keriting.', 150000),
(6, 'HAIR DETOX TREATMENT', 'Perawatan detoks rambut mampu menghilangkan penumpukan bahan kimiaÂ pada batang rambut.\r\n', 220000),
(7, 'KERASTASE TREATMENT', 'Perawatan keratin rambut di salon biasanya akan menggunakan krim yang mengandung formaldehida, dan dioleskan pada rambut.', 370000),
(8, 'SCALP SCRUB', 'Perawatan rambut dengan metode scrub kulit kepala diklaim mampu membantu mengurangi produksi minyak berlebih.', 190000),
(9, 'POMPADOUR', 'Potongan rambut pria ini cocok untuk para penggemar gaya retro, maupun mereka yang ingin sedikit sentuhan formal pada penampilannya.', 60000),
(10, 'QUIFF', 'Quiff bis adalah versi simpel dari model pompadour. Ciri khas dari potongan ini terdapat pada bagian sisi rambut yang terlihat memudar.', 60000),
(11, 'COMB OVER', 'Comb over, model rambut klasik untuk pria karena cocok semua kesempatan dan tidak ketinggalan zaman.', 60000),
(12, 'SIDE PART', 'side part cocok untuk semua gaya rambut, mulai dari rambut panjang, sedang maupun pendek.', 60000),
(13, 'BROW SHAPPING', 'Membentuk dan merapihkan rambut alis menggunakan tweezers.', 85000),
(14, 'LASH EXTENSION', 'Sambung bulu mata untuk mendapatkan bulu mata yang penjang dan lentik.', 190000),
(15, 'TOTOK WAJAH', 'Pijatan lembut pada titik-titik tertentu di wajah agar energi bisa mengalir lebih lancar.', 130000),
(16, 'FACIAL', 'Membersihkan wajah dari kotoran, debu, minyak, sel-sel kulit mati dan komedo.', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `cart` varchar(255) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `booking_date` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentid`, `userid`, `cart`, `order_date`, `booking_date`, `harga`) VALUES
(6, 1, 'Hair Detox Treatment,Kerastase Treatment,Quiff,Comb Over,Brow Shapping,', '2022-06-12', '13 Desember 2021', 795000),
(7, 1, 'Relaxation Treatment,Kerastase Treatment,Pompadour,', '2022-06-14', '1 Januari 2026', 580000),
(8, 1, 'Blow Dry,Bang Trim,Curl Set or Upstyle,Hair Detox Treatment,Kerastase Treatment,', '2022-06-14', '12 Juli 2022', 880000),
(9, 1, 'Blow Dry,', '2022-06-14', '6 September 2023', 70000),
(10, 1, 'TOTOK WAJAH,FACIAL,', '2022-06-14', '1 Januari 2020', 330000),
(11, 1, 'CUT AND STYLE,BANG TRIM,', '2022-06-14', '12 Oktober 2023', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `email`, `phonenumber`, `password`) VALUES
(1, 'DAVID JOSE GIRALDY', 'davidjosegiraldy@gmail.com', '+6281388883004', 'david123'),
(2, 'Novita Sari', 'nov@gmail.com', '08138888', 'nov123'),
(3, 'TEST', 'test@gmail.com', '081300000000', 'test123'),
(4, 'test', 'test@gmail.com', '081300001111', 'test123'),
(5, 'Maisyita', 'mai@gmail.com', '082212344321', 'mai123'),
(6, 'Fitria', 'fit@gmail.com', '08992839220', 'fit123'),
(7, 'Sheila', 'shei@gmail.com', '089277778988', 'shei123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
