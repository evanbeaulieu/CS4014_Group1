-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2017 at 05:39 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group1`
--
CREATE DATABASE IF NOT EXISTS `group1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `group1`;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` int(32) NOT NULL,
  `id` varchar(255) NOT NULL,
  `task_title` varchar(32) DEFAULT NULL,
  `task_type` varchar(32) DEFAULT NULL,
  `task_desc` varchar(32) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `word_count` int(11) DEFAULT NULL,
  `file_format` varchar(255) NOT NULL,
  `task_tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `completed_at` date NOT NULL,
  `claimed_at` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `id`, `task_title`, `task_type`, `task_desc`, `page_count`, `word_count`, `file_format`, `task_tags`, `created_at`, `completed_at`, `claimed_at`, `updated_at`, `url`) VALUES
(1, '15152666', 'fgr', 'sgrh', 'wegeheh gnn gnym', 42, 5000, '.docx', 'Sociology, Sociology, Sociology, Sociology', '2017-04-24 15:17:15', '2017-04-25', '2017-04-24', '0000-00-00 00:00:00', 'uploads/58fe16fb0f7ae3.23506925.docx');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `idnum` varchar(255) NOT NULL,
  `first` varchar(32) DEFAULT NULL,
  `last` varchar(32) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  `user_subject` varchar(32) DEFAULT NULL,
  `user_tags` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`idnum`, `first`, `last`, `email`, `user_subject`, `user_tags`, `pwd`, `created_at`) VALUES
('0720114', 'e', 'le', '0720114@ul.ie', 'Nursing', 'Politics, History', '$2y$10$RBX6N4damTAlFDCHytoAY.YMYguEGfXmGjcfjror6aFOQn8Rfg2eC', '2017-04-17 14:41:55'),
('1', 'tough', 'day', '15152667@ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$bReBc6U..mfL/ePj4dAfQOSD6KIsaV4a6Kv3wfGb0onjhMRSZ/CSW', '2017-04-19 21:29:50'),
('15152666', 'evan', 'beaulieu', '15152666@studentmail.ul.ie', 'Engineering', 'Website Design, Managment, Law, Philosophy', '$2y$10$KMchkjVPYlGhTWxTm5/tHeDbo4xgmMqrcOsbGv8DXlC54jf8i3UMy', '2017-04-24 15:16:02'),
('15152667', 'liam', 'winter', 'test@ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$EsZ4Nx2L9WITlNyqTswHmuawCxYxk/tKPZxM/edre6YZ9.DJl7DcW', '2017-04-19 20:04:09'),
('15152668', 'test', 'test', 'test4@ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$5H8600dZydlTFIqa3aOgCO1lBPe0GWcymxZp00L8is.OnaepnN16y', '2017-04-19 20:02:44'),
('15152669', 'blah', 'blah', '1512669@studentmail.ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$5PcTGFrsS15Op7tqeMsRdOyiWuN/OqjA7eCHDLrmvyNsPvsUniEgC', '2017-04-19 20:01:38'),
('15161064', 'katlyn', 'Daly', '15161064@studentmail.ul.ie', 'Nursing', 'Politics, History, Website Design, Website Design', '$2y$10$ewASPxHrQlPRHY07Or342O4KwWIq8GPiOhDo0DL5TDQCyTo1T.rwW', '2017-04-19 21:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_reputation`
--

DROP TABLE IF EXISTS `user_reputation`;
CREATE TABLE `user_reputation` (
  `id` varchar(255) NOT NULL,
  `rep_id` int(11) NOT NULL,
  `reputation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_tags`
--

DROP TABLE IF EXISTS `user_tags`;
CREATE TABLE `user_tags` (
  `id` varchar(255) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `ID_NUM` (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`idnum`);

--
-- Indexes for table `user_reputation`
--
ALTER TABLE `user_reputation`
  ADD KEY `ID_NUM_2` (`id`);

--
-- Indexes for table `user_tags`
--
ALTER TABLE `user_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_fk` (`id`),
  ADD KEY `tagid_fk` (`tag_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `ID_NUM` FOREIGN KEY (`id`) REFERENCES `user1` (`idnum`) ON UPDATE CASCADE;

--
-- Constraints for table `user_reputation`
--
ALTER TABLE `user_reputation`
  ADD CONSTRAINT `ID_NUM_2` FOREIGN KEY (`id`) REFERENCES `user1` (`idnum`);

--
-- Constraints for table `user_tags`
--
ALTER TABLE `user_tags`
  ADD CONSTRAINT `ID_NUM_1` FOREIGN KEY (`id`) REFERENCES `user1` (`idnum`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
