-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2017 at 01:54 AM
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
  `task_title` varchar(50) DEFAULT NULL,
  `task_type` varchar(32) DEFAULT NULL,
  `task_desc` varchar(300) DEFAULT NULL,
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
(13, '15152668', 'This is my title', 'Project report', 'This is my description of the task that i will be uploading. \r\nIt contains a one line description.', 42, 5000, '.docx', 'Sociology, Media, Networking, Biology', '2017-04-27 19:56:50', '2017-04-28', '2017-04-27', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(15, '15152668', 'Another title', 'Conference research paper', 'Another description of what we have in this document.\r\nHello this is a great document.\r\nCheese .\r\nwhat happens if i put in a  reaallllllllllllllyyyyyyyyyy long line.', 42, 5000, '.docx', 'Sociology, Sociology, Sociology, Sociology', '2017-04-27 20:07:25', '2017-04-30', '2017-04-27', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(16, '15152668', 'Title', 'Task type', 'One line description', 42, 5000, '.docx', 'Sociology, Biology, Networking, Physics', '2017-04-27 20:14:47', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(17, '15152668', 'Some sort of title', 'Another type', 'This is my brief description of the document', 42, 5000, '.docx', 'Sociology, Economics, Physics, Networking', '2017-04-27 20:16:09', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(20, '15152668', 'NETWORKING REPORT', 'REPORT', 'PACKET TRACER ASSIGNMENT', 20, 4925, '.docx', 'Programming, Software Design, Hardware Design, App Design', '2017-04-27 20:23:14', '2017-05-18', '2017-05-10', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 5] [Group 1] Progress.docx'),
(22, '15152668', 'Marketing', 'Excell sheet', 'Excell sheet on stats', 4, 50, '.docx', 'Accounting, Economics, Management, Taxation', '2017-04-27 20:33:50', '2017-05-17', '2017-05-08', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 11] [Group 1] Progress.docx'),
(23, '15152668', 'German novel', 'Report', 'Report on German novel ', 11, 499, '.docx', 'Languages, Prose, Poetry, Media', '2017-04-27 20:35:02', '2017-05-10', '2017-05-09', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 5] [Group 1] Progress.docx'),
(24, '15152668', 'C++ ', 'Project', 'Coding a for loop', 1, 500, '.docx', 'Programming, Economics, Software Design, App Design', '2017-04-27 20:37:55', '2017-05-17', '2017-05-08', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 9] [Group 1] Progress.docx'),
(25, '15152668', 'Education logs', 'Logs', 'Learning logs for woodwork', 25, 5000, '.docx', 'Sociology, Prose, Law, Languages', '2017-04-27 20:39:48', '2017-05-02', '2017-05-01', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 5] [Group 1] Progress.docx'),
(26, '15152668', 'Maths question', 'Question', 'Maths question on differnication', 42, 5000, '.docx', 'Mathematics, Economics, Accounting, Taxation', '2017-04-27 20:40:51', '2017-05-03', '2017-05-02', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 7] [Group 1] Progress.docx'),
(27, '15152668', 'DCG ', 'PROJECT', 'DCG LEAVING CERT PROJECT', 42, 5000, '.docx', 'History, Chemistry, Physics, Accounting', '2017-04-27 20:42:08', '2017-04-29', '2017-04-28', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 11] [Group 1] Progress.docx'),
(29, '15152668', 'ANDROID', 'APP', 'ANDROID APP WITH MAPS', 42, 5000, '.docx', 'Politics, History, Politics, Prose', '2017-04-27 20:45:38', '2017-05-11', '2017-05-08', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 7] [Group 1] Progress.pdf'),
(30, '15152668', 'test', 'TEST', 'TEST', 42, 5000, '.docx', 'Chemistry, Programming, Programming, Biology', '2017-04-27 20:52:00', '2017-05-06', '2017-05-05', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 9] [Group 1] Progress.docx'),
(31, '15152668', 'IRISH', 'STORY', 'IRISH PROSE ON GNATHRUD', 7, 499, '.docx', 'Sociology, Prose, Sociology, Sociology', '2017-04-27 20:57:11', '2017-06-01', '2017-04-29', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 11] [Group 1] Progress.docx'),
(32, '15152668', 'ACCOUNTING REPORT', 'REPORT', 'REPORT ON BALANCE SHEET', 18, 500, '.docx', 'Sociology, Sociology, Sociology, Sociology', '2017-04-27 20:59:22', '2017-05-04', '2017-05-02', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 7] [Group 1] Progress.docx'),
(33, '15152668', 'JAVA', 'PROGRAM', 'HELLO WORLD PROGRAM', 42, 5000, '.docx', 'Sociology, Philosophy, Accounting, Programming', '2017-04-27 21:07:00', '2017-05-04', '2017-05-02', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 7] [Group 1] Progress.docx'),
(34, '15152668', 'PROJECT', 'PROJECT', 'PROJECT', 42, 5000, '.docx', 'Sociology, Sociology, Sociology, Sociology', '2017-04-27 21:08:17', '2017-07-13', '2017-06-08', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 5] [Group 1] Progress.pdf'),
(35, '15152668', 'THESIS', 'THESIS', 'THESIS', 42, 5000, '.docx', 'Sociology, Programming, Programming, Programming', '2017-04-27 21:09:10', '2017-05-17', '2017-05-08', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 11] [Group 1] Progress.docx'),
(36, '15152668', 'PEPSI', 'PEPSI', 'PEPSI', 42, 5000, '.docx', 'Mathematics, Poetry, Languages, Physics', '2017-04-27 21:11:22', '2017-05-12', '2017-05-10', '0000-00-00 00:00:00', 'uploads/[CS4014] [Week 9] [Group 1] Progress.docx'),
(37, '15152668', 'CS4014 project', 'Project report', 'This is my little description of my well written report for the module cs4014.\r\nIt is about loads', 42, 5000, '.docx', 'Sociology, Management, Physics, Accounting', '2017-04-27 21:14:33', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(38, '15152668', 'Little title', 'Assignment ', 'Computer software assignment on cards game', 42, 5000, '.docx', 'Programming, Mathematics, Networking, App Design', '2017-04-27 21:15:56', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(39, '15152668', 'Donals lab', 'Lab assignment ', 'This lab demonstrates c programming', 42, 5000, '.docx', 'Networking, Programming, Economics, Chemistry', '2017-04-27 21:17:26', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(40, '15152668', 'Small tile', 'Paper', 'This is another brief description.', 42, 5000, '.docx', 'Sociology, Economics, Prose, Poetry', '2017-04-27 21:18:42', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(41, '15152668', 'Bit of a title', 'Task type', 'Brief description of my task title and what happens', 42, 5000, '.docx', 'Sociology, Economics, Programming, Astrology', '2017-04-27 21:21:21', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(43, '15152668', 'Title big', 'Conference research paper', 'Conference research paper on enviroment', 42, 5000, '.docx', 'Sociology, Management, Accounting, Astrology', '2017-04-27 21:22:55', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(44, '15152668', 'Title huge', 'Huge project', 'Huge project on the enviroment', 42, 5000, '.docx', 'Sociology, Law, Physics, Biology', '2017-04-27 21:24:08', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(45, '15152668', 'Massive title', 'Project report massive', 'Massive project report submission for lab donal', 42, 5000, '.docx', 'Sociology, Management, Biology, Law', '2017-04-27 21:25:42', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(46, '15152668', 'HELLO', 'project hello', 'Project hello on hello world', 42, 5000, '.docx', 'Sociology, Accounting, Prose, Poetry', '2017-04-27 21:26:41', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(47, '15152668', 'Caomhin ', 'Project on earth', 'Full description of earth', 42, 5000, '.docx', 'Sociology, Law, Prose, Prose', '2017-04-27 21:28:01', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(48, '15152668', 'Darragh', 'Report', 'Write up on earth', 42, 5000, '.docx', 'Sociology, Politics, Poetry, Languages', '2017-04-27 21:28:43', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(49, '15152668', 'Evans title', 'Project on earth', ' Write up on earth', 42, 5000, '.docx', 'Sociology, Mathematics, Languages, Physics', '2017-04-27 21:29:22', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(50, '15152668', 'Title tiny', 'Report', 'tiny report on something', 42, 5000, '.docx', 'Sociology, Politics, Mathematics, Media', '2017-04-27 21:30:08', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(51, '15152668', 'hey there', 'Project', 'Project on hey there program', 42, 5000, '.docx', 'Sociology, Mathematics, Poetry, Media', '2017-04-27 21:31:00', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(52, '15152668', 'Title', 'project', 'big report for donal html', 42, 5000, '.docx', 'Sociology, Management, Prose, Languages', '2017-04-27 21:33:00', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(53, '15152668', 'Hello world', 'Project', 'Hello world project in java', 42, 5000, '.docx', 'Sociology, History, Prose, Poetry', '2017-04-27 21:38:37', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(54, '15152668', 'Title teeny', 'Project', 'Project on something big. Read to see', 42, 5000, '.docx', 'Sociology, History, Prose, Poetry', '2017-04-27 21:39:22', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(55, '15152668', 'Title nesss', 'Example', 'Example descr', 42, 5000, '.docx', 'Sociology, Mathematics, Poetry, Poetry', '2017-04-27 21:39:57', '2017-05-01', '2017-05-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(56, '15152668', 'Enter title', 'Project report', 'Brief ness', 42, 5000, '.docx', 'Sociology, Poetry, Prose, Prose', '2017-04-27 21:40:44', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(57, '15152668', 'Title here', 'here is type', 'description is in here', 42, 5000, '.docx', 'Sociology, Law, Poetry, Media', '2017-04-27 21:41:42', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(58, '15152668', 'Social Media module Final essay', 'Essay', 'Essay on the topic of modern social media', 12, 3000, '.docx', 'Sociology, History, Prose, Sociology', '2017-04-27 21:45:13', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(59, '15152668', 'Sample Report', 'Project Report', 'sample report on project', 42, 5000, '.docx', 'Mathematics, Mathematics, Mathematics, Mathematics', '2017-04-27 21:46:42', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(60, '15152668', 'Test Thesis', 'Thesis', 'Blank thesis report', 42, 5000, '.docx', 'Biology, Chemistry, Accounting, Economics', '2017-04-27 21:47:47', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(61, '15152668', 'Test Assignment', 'Assignment', 'Test assignment with sample words', 42, 5000, '.docx', 'Languages, Biology, Software Design, Chemistry', '2017-04-27 21:49:19', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(62, '15152668', 'Empty project', 'Empty submission', 'Nothing to see here', 42, 5000, '.docx', 'Mathematics, Poetry, Physics, Media', '2017-04-27 21:50:49', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(63, '15152668', 'Youtube', 'Website project', 'Hello, Sample submission', 42, 5000, '.docx', 'Poetry, Philosophy, Physics, Programming', '2017-04-27 21:51:48', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(64, '15152668', 'Tremendous', 'Pure brilliance', 'Hello, decribe something', 42, 5000, '.docx', 'Media, Prose, Website Design, Networking', '2017-04-27 21:52:49', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(65, '15152668', 'ET4004', 'Networking', 'Cisco assignment', 42, 5000, '.docx', 'Software Design, Website Design, App Design, Hardware Design', '2017-04-27 21:53:48', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(66, '15152668', 'This is fun', 'Not fun at all', 'Too many tasks', 42, 5000, '.docx', 'Website Design, Networking, Astrology, Languages', '2017-04-27 21:54:36', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(67, '15152668', 'Yelp report', 'research paper', 'short description', 42, 5000, '.docx', 'Website Design, Programming, Programming, Chemistry', '2017-04-27 21:56:59', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(68, '15152668', 'Lie to me baby', 'Oh yeah', 'Started from the bottom now we here', 42, 5000, '.docx', 'Sociology, Mathematics, Physics, Accounting', '2017-04-27 21:57:43', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(69, '15152668', 'Whatsapp', 'Research paper', 'research companty', 42, 5000, '.docx', 'Website Design, Chemistry, Biology, Management', '2017-04-27 21:58:24', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(70, '15152666', 'Viber', 'Message me xoxo', 'Hey', 42, 5000, '.docx', 'Economics, Economics, Prose, Software Design', '2017-04-27 22:00:20', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(71, '15152666', 'Micorosoft', 'Research company', 'Software research', 42, 5000, '.docx', 'Networking, Media, Astrology, Economics', '2017-04-27 22:02:49', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(72, '15152666', 'Bebo stunnah', 'Msc thesis', '2k14', 42, 5000, '.docx', 'Management, Management, Sociology, Taxation', '2017-04-27 22:03:38', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(73, '15152666', 'ED5042 project', 'project report', 'app design report', 42, 5000, '.docx', 'Website Design, App Design, Hardware Design, Software Design', '2017-04-27 22:04:40', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(74, '15152666', 'Turbulence', 'report', 'planes n stuff', 42, 5000, '.docx', 'Astrology, Accounting, Website Design, Prose', '2017-04-27 22:05:31', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(75, '15152666', 'et4014 report', 'Report', 'Project report', 42, 5000, '.docx', 'Software Design, Programming, Physics, Economics', '2017-04-27 22:06:52', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(76, '15152666', 'Oh no', 'help', 'much stress', 42, 5000, '.docx', 'Website Design, Astrology, Software Design, Philosophy', '2017-04-27 22:07:36', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(77, '15152666', 'mips', 'pims', 'ok', 42, 5000, '.docx', 'Poetry, Prose, Programming, Astrology', '2017-04-27 22:08:18', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(78, '15152666', 'ISO', 'report', 'Photography report', 42, 5000, '.docx', 'Programming, Economics, Software Design, Taxation', '2017-04-27 22:09:08', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(79, '15152666', 'Nice little ', 'Project nice', 'Brief descr of nice', 42, 5000, '.docx', 'Languages, Poetry, Languages, Philosophy', '2017-04-27 22:10:07', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(80, '15152666', 'Look here', 'Project look', 'Project look here', 42, 5000, '.docx', 'Mathematics, Sociology, Poetry, Languages', '2017-04-27 22:10:53', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(81, '15152666', 'Gorgeous', 'Project gorgeous', 'Project gorg here', 42, 5000, '.docx', 'Poetry, Languages, Physics, Programming', '2017-04-27 22:11:45', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(82, '15152666', '15 more', 'Project 15', 'Project 15 more . ', 42, 5000, '.docx', 'Prose, Poetry, History, Chemistry', '2017-04-27 22:12:26', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(83, '15152666', 'Frog', 'Project frog', 'Descr of project frog', 42, 5000, '.docx', 'Sociology, Mathematics, Languages, Biology', '2017-04-27 22:13:15', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(84, '15152666', 'Green', 'Project green', 'Project green light is about traffic lights', 42, 5000, '.docx', 'History, Poetry, Law, Chemistry', '2017-04-27 22:15:34', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(85, '15152666', 'Byte ', 'Project byte', 'Byte nes of this project', 42, 5000, '.docx', 'Sociology, Law, Poetry, Networking', '2017-04-27 22:16:16', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(86, '15152666', 'Title7', 'Project', 'Title of the project of title7', 42, 5000, '.docx', 'Sociology, Economics, History, Networking', '2017-04-27 22:17:13', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(87, '15152666', 'Gorge', 'project ', 'project on gorge', 42, 5000, '.docx', 'Sociology, Mathematics, Poetry, Chemistry', '2017-04-27 22:25:38', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(88, '15152666', 'Nearly there', 'Project', 'nearly there on the project demo', 42, 5000, '.docx', 'Sociology, Media, Prose, Taxation', '2017-04-27 22:26:15', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(89, '15152666', 'Here we go', 'Project here e go', 'Here we go again', 42, 5000, '.docx', 'Sociology, Mathematics, Chemistry, Hardware Design', '2017-04-27 22:26:58', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(90, '15152666', 'Likely', 'Project likely', 'Likely hood of project', 42, 5000, '.docx', 'Sociology, Poetry, Biology, Management', '2017-04-27 22:27:49', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(91, '15152666', '3 more', 'Project 3', 'Project 3 more to go', 42, 5000, '.docx', 'Sociology, Poetry, Physics, Economics', '2017-04-27 22:28:54', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(92, '15152666', '2 more', 'Project 2 more', '2 more to go', 42, 5000, '.docx', 'Sociology, Philosophy, Biology, Economics', '2017-04-27 22:30:25', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(93, '15152666', '1 more to go', 'Project 1 more to go ', 'Project more to go', 42, 5000, '.docx', 'Sociology, Poetry, Physics, Management', '2017-04-27 22:31:37', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx'),
(94, '15152666', 'Just a few mnore just in case', 'Project just in case', 'Just in case', 42, 5000, '.docx', 'Sociology, Poetry, Poetry, Poetry', '2017-04-27 22:32:18', '2017-05-01', '2017-04-30', '0000-00-00 00:00:00', 'uploads/Hello this is my document.docx');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_rep` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`idnum`, `first`, `last`, `email`, `user_subject`, `user_tags`, `pwd`, `created_at`, `user_rep`) VALUES
('1', 'heyyyyyyyyyyyyy', 'heyyyyyyyyyyyyyyyyyy', 'hey1@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$bue4f5PonXVYUK.Thwds1.Q41/qX7p5wH0ufgV3/ZD43r.qrpLv4W', '2017-04-27 23:23:37', NULL),
('10101010', 'hello', 'hello', 'hello@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$CQyQdOH2uH0TzDPim3dFbeoPx0rUkFVNXGbXGeo7fMXrAdLyvNBiq', '2017-04-28 00:50:42', NULL),
('11111111', 'Claire', 'Gibbons', 'Claire@ul.ie', 'Business', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$7hlgWYO/gB800hXdIukCOeQK4ukTcgTwkBW5LWEpjxVFK7pJ7DKUm', '2017-04-27 23:01:17', NULL),
('12113223', 'violet', 'roses', 'violet@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$zqWl5m8zS724nj/GKaME1OJ6EJQEGR5k113Ikxl76/nL4z5hlYyLW', '2017-04-27 23:49:29', NULL),
('12121212', 'caoimhin', 'Kelly', 'caoimhin@ul.ie', 'Nursing', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$ZAsIOQ8jG0Be9a2kXGdD3OXWsAV788xKt.uE.aD8g.s159Tcueueq', '2017-04-27 23:03:17', NULL),
('12121213', 'asanka', 'wasala', 'asanka.wasala@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$ZB0OSgAMDE8Iy7FtLKUxK.f5pIjvC5d71F9SUcmQdl/5Xn6wCyzE6', '2017-04-27 23:13:51', NULL),
('12121214', 'miriam', 'kelly', 'miriam@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$J3NyvRFDTrHHJ.uBoVlbuOZDCpaYEO9ff/tDdks2ewOo3FET6AVda', '2017-04-27 23:14:41', NULL),
('12121215', 'Kevin', 'beirne', 'kevinbeirne@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$haCqIkLOSAe9J9DiQmylhO4pM/.KjuCdJ9TUADcYQWqjZ6cLnMg.K', '2017-04-27 23:15:28', NULL),
('12121216', 'blake', 'johnson', 'blake@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$rn4BBK6Mx8Wxuocjsz9RqOYs6bJa4i70k/jOsufckdVFILPeRdKBq', '2017-04-27 23:16:23', NULL),
('12121217', 'jordan', 'Mccarthy', 'jordan@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$bd1NeXiZzNVEGDQ6jOisfeKWOtqDerR0P/K1Uf3ZjTI.qhayH38YW', '2017-04-27 23:17:06', NULL),
('12121218', 'Kelly', 'obrien', 'kelly@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$yhgMfH5T.66HoCFcFwgL8OS6qHJRgznwMkcRLA7E/EJfl4tImO5/G', '2017-04-27 23:17:32', NULL),
('12131415', 'Paula', 'obrien', 'paula@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$97XEHNVy6g5kbLfkMFCzXeWbvHzkxWvV7k3j3pPueA5CDZF6CXHSC', '2017-04-27 23:17:58', NULL),
('123456', 'evan', 'beaulieu', 'evan1@ul.ie', 'Engineering', 'Hardware Design, Sociology, Managment, Physics', '$2y$10$5TAv85rT7/efkgC1.bMwrOd7bNHrvt3p2FEp/coKiHYMyJOe1i8xC', '2017-04-27 22:50:13', NULL),
('1234567', 'evan', 'beaulieu', 'evan@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$/TeRZAL8UNFZ5ZtYWilKrOBVseLoENPMf6MjDCfWim7VZsrGra/oK', '2017-04-27 22:49:21', NULL),
('12345678', 'hey', 'there', 'hey@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$d2jq0bLzrlKbmG.99W8cgeEaQxySAk8O6JVbhsEpooWYaTiatSYue', '2017-04-27 22:47:41', NULL),
('12345679', 'darragh', 'costello', 'darragh@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$Er5owxXsZc6q9OTE9GCMQu2ZoKeQVuR7GuSeIySSlDAOzKd.cN4oe', '2017-04-27 23:00:21', NULL),
('15141718', 'Matt', 'Bob', 'mBob@ul.ie', 'Engineering', 'Networking, Sociology, Law, Managment', '$2y$10$iZqCfI0FAWfgg03Jbq2rmO7Louub3VrOL7t78/76AFqXtVMc4EQzu', '2017-04-27 23:07:15', NULL),
('15152666', 'evan', 'beaulieu', '15152666@studentmail.ul.ie', 'Engineering', 'Website Design, Managment, Law, Philosophy', '$2y$10$KMchkjVPYlGhTWxTm5/tHeDbo4xgmMqrcOsbGv8DXlC54jf8i3UMy', '2017-04-24 15:16:02', 0),
('15152668', 'test', 'test', 'test4@ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$5H8600dZydlTFIqa3aOgCO1lBPe0GWcymxZp00L8is.OnaepnN16y', '2017-04-19 20:02:44', 0),
('15152669', 'blah', 'blah', '1512669@studentmail.ul.ie', 'Engineering', 'Sociology, Politics, History, Prose', '$2y$10$5PcTGFrsS15Op7tqeMsRdOyiWuN/OqjA7eCHDLrmvyNsPvsUniEgC', '2017-04-19 20:01:38', 0),
('15161064', 'katlyn', 'Daly', '15161064@studentmail.ul.ie', 'Nursing', 'Politics, History, Website Design, Website Design', '$2y$10$ewASPxHrQlPRHY07Or342O4KwWIq8GPiOhDo0DL5TDQCyTo1T.rwW', '2017-04-19 21:38:59', 0),
('15161819', 'Brian', 'Mccarthy', '15181916@studentmail.ul.ie', 'Engineering', 'Accounting, Philosophy, Economics, Law', '$2y$10$d09njC4QEwG/cmXR2QWEAuZXP3fVIb.HIZCbXEzGSiDGzEJJSI09W', '2017-04-27 23:04:32', NULL),
('16161819', 'Crystal', 'Blad', '16161819@studentmail.ul.ie', 'Engineering', 'Accounting, Physics, Accounting, Chemistry', '$2y$10$51JFTdhDx5ErD0kzJ9KXgu2LQi8RueN2rpIaiFOAPTDZBQRG/e3Xq', '2017-04-27 23:06:19', NULL),
('34343434', 'emma', 'watson', 'emma@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$iX1oIAsx4.2FPQAGYH.n7uZLQv7PgRY4eNrkzgxjUfvNDi11ypK4S', '2017-04-28 00:51:56', NULL),
('55555555', 'red', 'roses', 'red@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$oBKpsd3hnxQJMqAp9FFqXu0JJU5px5mour5Fdq.hxExThzkc1qnkq', '2017-04-27 23:30:56', NULL),
('66666666', 'blue', 'roses', 'blue@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$SHoO2c4syaTxvDgoCUgoN.28VH1PW/49hrkZGJmf2hoXKJUUnkQGC', '2017-04-27 23:35:14', NULL),
('77777777', 'violet', 'roses', 'violet@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$cvWVx7KTx7Ouu0mDSATbeuZdAaO/DVgbU2H8NIaaSmGAEsPFbY4he', '2017-04-27 23:35:51', NULL),
('88888888', 'Kim', 'Kardashian', '455@ul.ie', 'Engineering', 'Taxation, Accounting, Programming, Economics', '$2y$10$lYLb6wjDugbPGc367XIWtORSUDy7NduSLTen7lNztViauztH.LZyK', '2017-04-27 23:05:24', NULL),
('99999999', 'violet', 'roses', 'violet@ul.ie', 'Engineering', 'Sociology, Sociology, Sociology, Sociology', '$2y$10$n1CpUeJLnM5rcygCe6QxoOUIVMV9osmHq0pbUqMikkFQMTKeTugW2', '2017-04-28 00:34:37', NULL);

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
  MODIFY `task_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
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
