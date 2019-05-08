-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 09:41 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forumofducvinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name_category`) VALUES
(1, 'database'),
(2, 'PHP'),
(3, 'Java'),
(4, '.Net'),
(5, 'Python'),
(6, 'C, C++'),
(7, 'Frontend'),
(8, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `date_reply` date DEFAULT NULL,
  `id_topic` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `id_user`, `message`, `date_reply`, `id_topic`) VALUES
(1, 3, 'cố gắng mà học đi bạn', '2019-05-08', 3),
(2, 2, 'lên mạng học và kiếm bạn học ', '2019-05-08', 3),
(3, NULL, 'ádasdsad', NULL, 3),
(4, NULL, 'fđssdsd', NULL, 3),
(5, NULL, 'asdvasy ákdha', NULL, 4),
(6, NULL, 'nguyen duc vinh', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(10) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(10) NOT NULL,
  `description` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `date_post` date DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `title`, `id_category`, `description`, `date_post`, `id_user`) VALUES
(3, 'Làm thế nào để giỏi lập trình PHP', 2, 'asdasdask askjdhasdhasld asdhsaldaskjdas ádiaslflsjfsl', '2019-05-07', 1),
(4, 'Cách học Java như thế nào?', 3, 'dfhsdfsdnoi fofglkfd dfgjdf gdoifgjdflkgd dfoigdfgidfgf fdogfd gdfogfd gdfg', '2019-05-07', 3),
(5, 'Ý tưởng gì cho đề tài đồ án tốt nghiệp về .Net', 4, 'ssdksad sads đá asasf asias dasoidas đấ sdoasidas đáia sdiasd asdas doiasd ádb', '2019-05-07', 2),
(6, 'dv', 2, 'sds', NULL, NULL),
(7, 'ádasdasd', 7, 'ksdfsd sdkuhfsdmn fssdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'ducvinh', '123123', 'ducvinhnguyen2609@gmail.com'),
(2, 'ducthien', '123123', 'ducthien@gmail.com'),
(3, 'thanhhai', '123123', 'thanhhai@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
