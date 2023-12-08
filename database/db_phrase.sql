-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 01:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_phrase`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_konten` int(11) DEFAULT NULL,
  `comment_text` text DEFAULT NULL,
  `comment_username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `id_konten`, `comment_text`, `comment_username`) VALUES
(1, 42, 'mana we yekan', 'admin'),
(2, 45, 'testing komen', 'admin'),
(3, 45, 'tes juga', 'admin'),
(4, 46, 'P', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `isi` text NOT NULL,
  `jumlah_like` varchar(20) NOT NULL,
  `jumlah_repost` varchar(20) NOT NULL,
  `share` varchar(20) NOT NULL,
  `status` enum('Non Repost','Repost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `username`, `isi`, `jumlah_like`, `jumlah_repost`, `share`, `status`) VALUES
(17, 'admin', 'likes dh bisa keren coi!', '0', '0', '0', 'Non Repost'),
(21, 'admin', 'mana we apala', '0', '0', '0', 'Non Repost'),
(24, 'admin', 'mana we troll', '0', '0', '0', 'Non Repost'),
(25, 'narwhal', 'mana we troll', '0', '0', '0', 'Repost'),
(42, 'narwhal', 'mana we apala', '0', '0', '0', 'Repost'),
(44, 'narwhal', 'likes dh bisa keren coi!', '0', '0', '0', 'Repost'),
(45, 'admin', 'tes post', '0', '0', '0', 'Non Repost'),
(46, 'admin', 'waduh', '0', '0', '0', 'Non Repost'),
(47, 'admin', 'P', '0', '0', '0', 'Non Repost'),
(48, 'narwhal', 'P', '0', '0', '0', 'Repost'),
(49, 'narwhal', 'waduh', '0', '0', '0', 'Repost');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id_like` int(11) NOT NULL,
  `id_konten` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id_like`, `id_konten`, `username`) VALUES
(10, 25, 'admin'),
(13, 17, 'narwhal'),
(19, 45, 'admin'),
(20, 46, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notification` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `notif_konten` varchar(50) NOT NULL,
  `notification_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notification`, `username`, `notif_konten`, `notification_date`) VALUES
(1, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-16'),
(2, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-16'),
(3, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-16'),
(4, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-16'),
(5, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-16'),
(6, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-17'),
(7, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-17'),
(8, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-17'),
(9, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-17'),
(10, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-17'),
(11, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-18'),
(12, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(13, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(14, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(15, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(16, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(17, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(18, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(19, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(20, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(21, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(22, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(23, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(24, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(25, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(26, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(27, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(28, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(29, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(30, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(31, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-19'),
(32, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(33, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(34, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(35, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(36, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(37, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(38, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(39, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-20'),
(40, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(41, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(42, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(43, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(44, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(45, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(46, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(47, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(48, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(49, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(50, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(51, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(52, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(53, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(54, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(55, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(56, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(57, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(58, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(59, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-21'),
(60, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-22'),
(61, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(62, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(63, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(64, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(65, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(66, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(67, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(68, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(69, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(70, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(71, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-23'),
(72, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(73, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(74, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(75, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(76, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(77, 'narwhal', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24'),
(78, 'admin', 'Ada aktivitas masuk ke akun Anda dari perangkat ba', '2023-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `following` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `likes` varchar(20) NOT NULL,
  `status` enum('Verified','Non Verified') NOT NULL,
  `tipe_akun` enum('Public','Private') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id_profile`, `username`, `following`, `follower`, `likes`, `status`, `tipe_akun`) VALUES
(1, 'admin', '200', '200', '1000', 'Verified', 'Private'),
(2, 'narwhal', '0', '0', '0', 'Non Verified', 'Public'),
(3, 'azazel', '0', '0', '0', 'Non Verified', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `image`) VALUES
(2, 'admin', 'admin@gmail.com', 'admin', 'admin_1700827733.jpg'),
(3, 'narwhal', 'fadhlantanjung1@gmai', '123', 'narwhal.jpg'),
(4, 'azazel', 'kalebic46@gmail.com', '123', 'azazel.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_konten` (`id_konten`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_konten` (`id_konten`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_konten`) REFERENCES `konten` (`id_konten`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`id_konten`) REFERENCES `konten` (`id_konten`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
