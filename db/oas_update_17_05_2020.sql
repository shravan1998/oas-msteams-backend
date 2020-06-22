-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 04:00 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oas`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `user_rid` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`user_rid`, `full_name`, `email_id`, `mobile_no`, `pwd`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 'Suhas Shetty', 'suhas@devappsys.com', '98765432122', '$2a$10$qonCFAoNP0K9a3Ejh9kE9.T2/e1410ZAOWjVBb/edvg7tCFifIrs6', 1, NULL, '2019-12-16 17:59:28', NULL, '2019-12-17 15:08:07'),
(2, 'Varun Rao', 'varun@devappsys.com', '7760469406', '$2a$10$YJuEeXypQTrZRpQuTrQWl.9RySipTkeoJWrF/HfgLPUuvhrG.pHyG', 1, NULL, '2019-12-17 15:02:42', NULL, '2019-12-17 15:06:12'),
(4, 'Shashanth K', 'shashanth@devappsys.com', '9483525874', '$2a$10$SW.rnImMVVycLWL0Dyq7ReytVYf5sBtVcTvzpY9k0ZG3OYA3bo8JW', 1, NULL, '2019-12-17 15:25:24', NULL, NULL),
(5, 'Wilson Pinto', 'wilson@devappsys.com', '9964726312', '$2a$10$cjwvMjkf8ga4SaI9tBuNC.4j8FColVzQS.0nD07K02H/R0CC.vQQ6', 1, NULL, '2019-12-17 15:46:20', NULL, NULL),
(6, 'Sanjay M A', 'sanjay@devappsys.com', '9916074458', '$2a$10$RRI7J8NAArEH9Q3ebt5nA.IXvCAFqUS3WTv9TGoyrjINN0zqCeiCO', 1, NULL, '2019-12-17 15:52:45', NULL, '2019-12-17 15:55:04'),
(7, 'Krishnaraj Rao', 'krishnaraj11@gmail.com', '9741332253', '$2a$10$vGLLWuX8pRbfX0X4nLp2BeziAweMa0vlcg.lt7uYcOUf7/taz8PSC', 1, NULL, '2019-12-17 16:12:03', NULL, NULL),
(8, 'Shravan Kumar', 'shravan@gmail.com', '8904209251', '$2a$10$qonCFAoNP0K9a3Ejh9kE9.T2/e1410ZAOWjVBb/edvg7tCFifIrs6', 1, NULL, '2020-01-06 14:03:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `att_rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `file_type` text NOT NULL,
  `file_path` text NOT NULL,
  `context_rid` int(11) NOT NULL,
  `context_type` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_rid` int(11) NOT NULL,
  `cl_company_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cl_contact_person` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cl_email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cl_mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cl_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cl_status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_datetime` datetime DEFAULT NULL,
  `created_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_rid`, `cl_company_name`, `cl_contact_person`, `cl_email`, `cl_mobile`, `cl_address`, `cl_status`, `created_datetime`, `created_user_rid`, `updated_datetime`, `updated_user_rid`) VALUES
(1, 'Prasanna Technologies Pvt Ltd', 'Preetham', 'preetham.dsouza@prasannatechnologies.com', '9964668733', 'MG Rd, Kodailbail, Mangalore, Karnataka 575003', 1, NULL, NULL, NULL, NULL),
(2, 'The Auri Collective', 'Neha Bhandari', 'neha@theauricollective.com', '9972800907', NULL, 1, NULL, NULL, NULL, NULL),
(3, 'Hasiru Dala Innovations Private Limited', 'Bharath-WebSigma', 'bharath@websigma.in', '9900367739', NULL, 1, NULL, NULL, NULL, NULL),
(4, 'DevAppSys IT Solutions Pvt Ltd', 'Suhas Shetty', 'suhas@devappsys.com', '8904209251', 'City Gate Building, Mangalore - 002', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_attachments`
--

CREATE TABLE `content_attachments` (
  `ca_rid` int(11) NOT NULL,
  `cr_rid` int(11) NOT NULL,
  `doc_title` varchar(250) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_size_kb` int(11) NOT NULL,
  `doc_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_attachments`
--

INSERT INTO `content_attachments` (`ca_rid`, `cr_rid`, `doc_title`, `file_path`, `file_size_kb`, `doc_type`) VALUES
(1, 2, 'resume1.pdf', 'documents/0dec4393-9514-4fb7-9de6-73e45745a122.pdf', 97399, 'application/pdf'),
(2, 3, 'resume1.pdf', 'documents/4dd563cd-7386-48b8-b411-a9a0693f09f0.pdf', 97399, 'application/pdf'),
(3, 3, 'resume1.pdf', 'documents/a1e7c894-bf9a-4fb7-b703-ebd9fd0f23a5.pdf', 97399, 'application/pdf'),
(4, 6, 'resume1.pdf', 'documents/e5fdb782-b215-4607-a591-380ed22ff0f2.pdf', 97399, 'application/pdf'),
(5, 7, 'resume1.pdf', 'documents/b1680e5f-e161-496a-99bf-ed4aad513df0.pdf', 97399, 'application/pdf'),
(6, 8, 'resume1.pdf', 'documents/b1680e5f-e161-496a-99bf-ed4aad513df0.pdf', 97399, 'application/pdf'),
(7, 9, 'resume1.pdf', 'documents/b1680e5f-e161-496a-99bf-ed4aad513df0.pdf', 97399, 'application/pdf'),
(8, 10, 'resume1.pdf', 'documents/a6a18c94-7e12-43d9-abda-d681053e5aa0.pdf', 97399, 'application/pdf'),
(9, 11, 'resume1.pdf', 'documents/a6a18c94-7e12-43d9-abda-d681053e5aa0.pdf', 97399, 'application/pdf'),
(10, 12, 'Data_mining_techniques_and_applications.pdf', 'documents/c979586a-5255-4927-966a-f9739361c233.pdf', 340700, 'application/pdf'),
(11, 12, 'download (3).png', 'documents/ac1ac1ab-53cb-419a-a209-1576069257e6.png', 16552, 'image/png'),
(12, 14, 'download (1).png', 'documents/d38f068a-0d5a-43f1-a6fe-9dc5fa26f1dd.png', 18067, 'image/png'),
(13, 16, 'download (3).png', 'documents/2ffbe8ab-c6bb-42d1-a94c-d676b21372b6.png', 16552, 'image/png'),
(14, 16, 'Activity Diagram.jpg', 'documents/477f065d-0bc5-44be-8b12-019699b780dc.jpg', 34110, 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `content_repository`
--

CREATE TABLE `content_repository` (
  `cr_rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `current_version_no` int(11) NOT NULL,
  `created_user_rid` int(11) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_repository`
--

INSERT INTO `content_repository` (`cr_rid`, `title`, `description`, `current_version_no`, `created_user_rid`, `created_date_time`, `updated_user_rid`, `updated_date_time`) VALUES
(1, 'App Isnt working', 'The app isnt working because i believe there are certain errors. Therefore the data doesnt get loaded.', 1, 1, '2020-05-04 15:53:56', NULL, NULL),
(2, 'Title', 'Description', 1, 1, '2020-05-05 11:53:13', NULL, NULL),
(3, 'Title', 'Desc', 2, 1, '2020-05-05 11:55:10', NULL, NULL),
(4, 'App Doesnt work', 'Data not loading', 1, 1, '2020-05-05 12:13:14', NULL, NULL),
(5, 'App Doesnt work', 'Some random Description', 1, 1, '2020-05-05 12:19:44', NULL, NULL),
(6, 'title', 'Description', 1, 1, '2020-05-05 13:22:22', NULL, NULL),
(7, 'Title', 'Desc', 1, 1, '2020-05-05 13:29:04', NULL, NULL),
(8, 'Title', 'Desc', 1, 1, '2020-05-05 13:29:48', NULL, NULL),
(9, 'Title', 'Desc', 1, 1, '2020-05-05 13:35:57', NULL, NULL),
(10, 'Title', 'Desc', 1, 1, '2020-05-05 22:52:05', NULL, NULL),
(11, 'Title', 'Desc', 1, 1, '2020-05-05 22:52:48', NULL, NULL),
(12, 'Title', 'Desc', 1, 1, '2020-05-05 22:55:09', NULL, NULL),
(13, 'App Isnt Working', 'App doesnt work since data doesnt load. I need you to help me with this as it is very important.<div>I guess theres a bug in the app.</div>', 1, 1, '2020-05-05 23:00:43', NULL, NULL),
(14, 'Another Problem', 'Another app doesnt get executed', 1, 1, '2020-05-05 23:04:27', NULL, NULL),
(15, 'Yet another title ', 'Yet another description', 1, 1, '2020-05-10 14:50:07', NULL, NULL),
(16, 'Yet another title', 'Desc', 1, 1, '2020-05-10 15:04:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_repository_archive`
--

CREATE TABLE `content_repository_archive` (
  `cra_rid` int(11) NOT NULL,
  `cr_rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `version_no` int(11) NOT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_repository_archive`
--

INSERT INTO `content_repository_archive` (`cra_rid`, `cr_rid`, `title`, `description`, `version_no`, `updated_user_rid`, `updated_date_time`) VALUES
(1, 1, 'App Isnt working', 'The app isnt working because i believe there are certain errors. Therefore the data doesnt get loaded.', 1, NULL, NULL),
(2, 2, 'Title', 'Description', 1, NULL, NULL),
(3, 3, 'Hi', 'Desc', 1, NULL, NULL),
(4, 4, 'App Doesnt work', 'Data not loading', 1, NULL, NULL),
(5, 5, 'App Doesnt work', 'Some random Description', 1, NULL, NULL),
(6, 6, 'title', 'Description', 1, NULL, NULL),
(7, 7, 'Title', 'Desc', 1, NULL, NULL),
(8, 8, 'Title', 'Desc', 1, NULL, NULL),
(9, 9, 'Title', 'Desc', 1, NULL, NULL),
(10, 10, 'Title', 'Desc', 1, NULL, NULL),
(11, 11, 'Title', 'Desc', 1, NULL, NULL),
(12, 12, 'Title', 'Desc', 1, NULL, NULL),
(13, 13, 'App Isnt Working', 'App doesnt work since data doesnt load. I need you to help me with this as it is very important.<div>I guess theres a bug in the app.</div>', 1, NULL, NULL),
(14, 14, 'Another Problem', 'Another app doesnt get executed', 1, NULL, NULL),
(15, 15, 'Yet another title ', 'Yet another description', 1, NULL, NULL),
(16, 16, 'Yet another title', 'Desc', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_tags`
--

CREATE TABLE `content_tags` (
  `ct_rid` int(11) NOT NULL,
  `cr_rid` int(11) NOT NULL,
  `tag_dd_index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_tags`
--

INSERT INTO `content_tags` (`ct_rid`, `cr_rid`, `tag_dd_index`) VALUES
(1, 9, 41),
(2, 9, 45),
(3, 12, 45),
(4, 12, 46),
(5, 13, 41),
(6, 14, 45),
(7, 14, 44),
(8, 14, 42),
(9, 15, 46),
(10, 15, 45);

-- --------------------------------------------------------

--
-- Table structure for table `data_dictionary`
--

CREATE TABLE `data_dictionary` (
  `dd_index` int(11) NOT NULL,
  `dd_value` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dd_parent_index` int(11) NOT NULL DEFAULT 0,
  `dd_type` int(11) NOT NULL,
  `dd_order` int(11) NOT NULL DEFAULT 0,
  `dd_description` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dd_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 => inactive, 1 = active',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `data_dictionary`
--

INSERT INTO `data_dictionary` (`dd_index`, `dd_value`, `dd_parent_index`, `dd_type`, `dd_order`, `dd_description`, `dd_status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 'Web UI', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(2, 'Android', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(3, 'iOS', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(4, 'Flutter', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(0, '', 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(10, 'Dev', 0, 2, 1, NULL, 1, NULL, NULL, NULL, NULL),
(11, 'BugFix', 0, 2, 2, NULL, 1, NULL, NULL, NULL, NULL),
(12, 'Testing', 0, 2, 3, NULL, 1, NULL, NULL, NULL, NULL),
(13, 'Discussion', 0, 2, 4, NULL, 1, NULL, NULL, NULL, NULL),
(14, 'Support', 0, 2, 5, NULL, 1, NULL, NULL, NULL, NULL),
(7, 'Project Management', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(8, 'Pre-Sales', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(9, 'Office', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(21, 'Architecture/Design', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(31, 'Clients', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(32, 'Interns', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(33, 'Freelancers', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(34, 'Office Expenditure', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(35, 'Maintenance', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(36, 'Misc', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(1, 'Web UI', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(2, 'Android', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(3, 'iOS', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(4, 'Flutter', 0, 1, 0, 'project component', 1, NULL, NULL, NULL, NULL),
(0, '', 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(10, 'Dev', 0, 2, 1, NULL, 1, NULL, NULL, NULL, NULL),
(11, 'BugFix', 0, 2, 2, NULL, 1, NULL, NULL, NULL, NULL),
(12, 'Testing', 0, 2, 3, NULL, 1, NULL, NULL, NULL, NULL),
(13, 'Discussion', 0, 2, 4, NULL, 1, NULL, NULL, NULL, NULL),
(14, 'Support', 0, 2, 5, NULL, 1, NULL, NULL, NULL, NULL),
(7, 'Project Management', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(8, 'Pre-Sales', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(9, 'Office', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(21, 'Architecture/Design', 0, 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(31, 'Clients', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(32, 'Interns', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(33, 'Freelancers', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(34, 'Office Expenditure', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(35, 'Maintenance', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(36, 'Misc', 0, 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(41, 'playstore', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(42, 'Appstore', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(43, 'Web UI', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(44, 'Android', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(45, 'iOS', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(46, 'Flutter', 0, 4, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_dictonary_data_type`
--

CREATE TABLE `data_dictonary_data_type` (
  `data_type_id` int(11) NOT NULL,
  `ddt_from_range` int(11) DEFAULT NULL,
  `ddt_to_range` int(11) DEFAULT NULL,
  `dd_description` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `data_dictonary_data_type`
--

INSERT INTO `data_dictonary_data_type` (`data_type_id`, `ddt_from_range`, `ddt_to_range`, `dd_description`) VALUES
(1, 1, 100, 'project component'),
(2, 200, 300, 'timesheet '),
(3, 300, 400, 'particulars'),
(4, 400, 500, 'store tags');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_rid` int(11) NOT NULL,
  `user_rid` int(11) DEFAULT NULL COMMENT 'primary key from app_user table',
  `emp_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_contact` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `designation` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_degree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hobbies` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `emp_avatar` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_rid`, `user_rid`, `emp_id`, `fname`, `lname`, `email_id`, `primary_mobile`, `secondary_mobile`, `home_contact`, `blood_group`, `dob`, `doj`, `dol`, `designation`, `latest_degree`, `hobbies`, `present_address`, `permanent_address`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`, `emp_avatar`) VALUES
(1, 1, 'EMP1', 'Suhas', 'Shetty', 'suhas@devappsys.com', '8904209251', '8880421893', '9342962767', 'B+', '1987-08-13', '2014-01-12', NULL, 'CEO', 'BE', '', 'Gundal Guthu House,\nMulki Post, Mangalore - 574154', 'Gundal Guthu House,\nMulki Post, Mangalore - 574154', 1, NULL, '2019-12-16 17:59:29', NULL, '2019-12-17 15:08:07', NULL),
(2, 2, NULL, 'Varun', 'Rao', 'varun@devappsys.com', '7760469406', '7019248560', NULL, 'A+', '1992-10-25', '2015-10-13', NULL, 'Senior Software Engineer', 'B.E. in CS', 'Music', 'No 16, 2ND Block, Telecom Apts,\nAttavara, Mangalore - 575001', 'No 16, 2ND Block, Telecom Apts,\nAttavara, Mangalore - 575001', 1, NULL, '2019-12-17 15:02:42', NULL, '2019-12-17 15:06:12', NULL),
(3, 4, NULL, 'Shashanth', 'K', 'shashanth@devappsys.com', '9483525874', '9902435048', NULL, 'B+', '1994-10-03', '2015-06-01', NULL, 'Senior Software Engineer', 'Diploma in Computer Engineering', 'Coding', 'D No 2-198, Kodakallu House, Kurnad Village & Post,\nBantwala Tq – 574153\n', 'D No 2-198, Kodakallu House, Kurnad Village & Post,\nBantwala Tq – 574153\n', 1, NULL, '2019-12-17 15:25:24', NULL, NULL, NULL),
(4, 5, NULL, 'Wilson', 'Pinto', 'wilson@devappsys.com', '9964726312', NULL, NULL, 'A+', '1999-04-27', '2019-07-01', NULL, 'Junior Software Engineer', 'Diploma in Computer Engineering', 'Photography', '10-64/1, Maradka Kambla House, Menna Bettu, Kinnigoli, Mangalore - 574150', '10-64/1, Maradka Kambla House, Menna Bettu, Kinnigoli, Mangalore - 574150', 1, NULL, '2019-12-17 15:46:20', NULL, NULL, NULL),
(5, 6, NULL, 'Sanjay', 'M A', 'sanjay@devappsys.com', '9916074458', '9972990955', '9035224370', 'AB+', '1999-05-31', '2019-09-18', NULL, 'Junior Software Engineer', 'Diploma in Computer Engineering', 'Coding', '5-58, Mulya, Ajjavara, Sulya taluku, Ajjavara,DK - 574239', '5-58, Mulya, Ajjavara, Sulya taluku, Ajjavara,DK - 574239', 1, NULL, '2019-12-17 15:52:45', NULL, '2019-12-17 15:55:04', NULL),
(6, 7, NULL, 'Krishnaraj', 'Rao', 'krishnaraj11@gmail.com', '9741332253', '7975263562', NULL, 'B+', '1985-11-22', '2017-07-01', NULL, 'Training Co-ordinator', 'MTech in Computer Science', 'Training / Discussion', 'Padebettu, Padubidri', 'Padebettu, Padubidri', 1, NULL, '2019-12-17 16:12:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_package`
--

CREATE TABLE `employee_package` (
  `ep_rid` int(11) NOT NULL,
  `emp_rid` int(11) DEFAULT NULL,
  `basic` int(11) DEFAULT 0,
  `hra` int(11) DEFAULT 0,
  `conveyance_allowance` int(11) DEFAULT 0,
  `supplementary_allowance` int(11) DEFAULT 0,
  `variable` int(11) DEFAULT 0,
  `certification` int(11) DEFAULT 0,
  `bonus` int(11) DEFAULT 0,
  `pt` int(11) DEFAULT 0,
  `tax_slab` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `income_tax` int(11) DEFAULT 0,
  `monthly_gross` int(11) DEFAULT 0,
  `monthly_cash_in_hand` int(11) DEFAULT 0,
  `ctc_yearly` int(11) DEFAULT 0,
  `partner_monthly` int(11) DEFAULT 0,
  `client_monthly` int(11) DEFAULT 0,
  `effective_from` date DEFAULT NULL,
  `effective_till` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `feature_rid` int(11) NOT NULL,
  `feature_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '1 = backend, 2 = app',
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `order_no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`feature_rid`, `feature_code`, `name`, `type`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`, `order_no`) VALUES
(1, 'FT_CLIENT', 'CLIENT', 'WEB', 1, NULL, NULL, NULL, NULL, 2),
(2, 'FT_PARTNER', 'PARTNER', 'WEB', 1, NULL, NULL, NULL, NULL, 3),
(3, 'FT_PROJECT', 'PROJECT', 'WEB', 1, NULL, NULL, NULL, NULL, 4),
(4, 'FT_EMPLOYEE', 'EMPLOYEE', 'WEB', 1, NULL, NULL, NULL, NULL, 5),
(5, 'FT_TIMESHEET', 'TIMESHEET', 'WEB', 1, NULL, NULL, NULL, NULL, 6),
(6, 'FT_ACCOUNT', 'ACCOUNT', 'WEB', 1, NULL, NULL, NULL, NULL, 8),
(7, 'FT_CATEGORY', 'CATEGORY', 'WEB', 1, NULL, NULL, NULL, NULL, 9),
(8, 'FT_PARTICULARS', 'PARTICULARS', 'WEB', 1, NULL, NULL, NULL, NULL, 10),
(9, 'FT_PAID', 'PAYMENTS', 'WEB', 1, NULL, NULL, NULL, NULL, 11),
(10, 'FT_INVOICE', 'INVOICE', 'WEB', 1, NULL, NULL, NULL, NULL, 12),
(11, 'FT_RECIEVED', 'RECIEVED', 'WEB', 1, NULL, NULL, NULL, NULL, 13),
(12, 'FT_TS_REPORT', 'TSREPORT', 'WEB', 1, NULL, NULL, NULL, NULL, 7),
(13, 'FT_DASHBOARD', 'DASHBOARD', 'WEB', 1, NULL, NULL, NULL, NULL, 1),
(14, 'FT_SLACK', 'SLACK', 'WEB', 1, NULL, NULL, NULL, NULL, 14),
(15, 'FT_CONTENT_REPOSITORY', 'CONTENT REPOSITORY', 'WEB', 1, NULL, NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_rid` int(11) NOT NULL,
  `type_of_invoice` text NOT NULL,
  `client_rid` int(11) NOT NULL,
  `partner_rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `draft` tinyint(4) NOT NULL,
  `invoice_no` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `invoice_d_rid` int(11) NOT NULL,
  `item` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `draft` tinyint(4) NOT NULL,
  `invoice_h_rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `particulars`
--

CREATE TABLE `particulars` (
  `part_rid` int(11) NOT NULL,
  `est_name` text NOT NULL,
  `contact_person_name` text NOT NULL,
  `primary_email` text NOT NULL,
  `secondary_email` text DEFAULT NULL,
  `primary_no` text NOT NULL,
  `secondary_no` text DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `part_type_index` int(11) NOT NULL,
  `gst_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `partner_rid` int(11) NOT NULL,
  `partner_company_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_contact_person` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`partner_rid`, `partner_company_name`, `partner_contact_person`, `partner_email`, `partner_mobile`, `partner_address`) VALUES
(1, 'Prasanna Technologies Pvt Ltd', 'Preetham D\'Souza', 'preetham.dsouza@prasannatechnologies.com', '9964668733', 'MG Rd, Kodailbail, Mangalore, Karnataka 575003'),
(2, 'WebSigma', 'Sachin Menon', 'sachin@websigma.in', '9538399100', 'Banashankari, Bengaluru, Karnataka 560070'),
(3, 'Novigo Solutions Pvt Ltd', 'Hanif', 'mhanif@novigosolutions.com', '9845857910', 'MG Rd, Kodailbail, Mangalore, Karnataka 575003'),
(4, 'DevAppSys IT Solutions Pvt Ltd', 'Suhas', 'suhas@devappsys.com', '8904209251', 'City Gate Commercial building, Mangalore - 575002');

-- --------------------------------------------------------

--
-- Table structure for table `payments_given`
--

CREATE TABLE `payments_given` (
  `p_rid` int(11) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_mode` text NOT NULL,
  `reference_no` text NOT NULL,
  `expense_category` text NOT NULL,
  `context_rid` int(11) NOT NULL,
  `context_type` tinyint(4) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_user_rid` int(11) NOT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_date_time` datetime DEFAULT NULL,
  `paid_from_ac_index` int(11) DEFAULT NULL,
  `effective_month` text NOT NULL,
  `effective_year` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `payment_rid` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(250) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'recieved=1 paid=2',
  `status` tinyint(4) NOT NULL COMMENT 'Inactive=0 Active=1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_received`
--

CREATE TABLE `payment_received` (
  `pr_rid` int(11) NOT NULL,
  `client_rid` int(11) NOT NULL,
  `partner_rid` int(11) NOT NULL,
  `cat_index` int(11) NOT NULL,
  `invoice_h_rid` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `payment_mode` text NOT NULL,
  `gross_amount` float NOT NULL,
  `discount_amount` float NOT NULL,
  `tax_amount` float NOT NULL,
  `net_amount` float NOT NULL,
  `amount_received` float NOT NULL,
  `tds` float NOT NULL,
  `bank_charges` float NOT NULL,
  `pending_amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_rid` int(11) NOT NULL,
  `project_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `started_on` date DEFAULT NULL,
  `client_rid` int(11) DEFAULT NULL,
  `partner_rid` int(11) DEFAULT NULL,
  `project_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_rid`, `project_name`, `description`, `started_on`, `client_rid`, `partner_rid`, `project_status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 'Survey App', 'Dynamic Android App, which will render the UI based on configuration received from the server. Supports offline functions as well', '2019-02-01', 1, 4, 1, NULL, '2019-12-16 18:08:27', NULL, '2019-12-17 08:38:41'),
(2, 'Aquasys', 'Billing application(Electricity & Water) revamped to Angular from Asp.Net', '2019-12-01', 1, 4, 1, NULL, '2019-12-17 08:25:03', NULL, '2019-12-17 08:38:20'),
(3, 'Auri', 'E-Commerce platform with payment gateway and admin dashboard using Laravel/MySQL', '2019-08-20', 2, 2, 1, NULL, '2019-12-17 08:36:34', NULL, NULL),
(4, 'Hasiru Dala', 'Hasiru-dala portfolio', '2019-11-01', 3, 2, 1, NULL, '2019-12-17 16:31:24', NULL, '2019-12-17 16:31:37'),
(5, 'DevAppSys Activities', 'City Gate Building, Mangalore - 002', '2015-12-18', 4, 4, 1, NULL, '2019-12-18 08:15:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_component`
--

CREATE TABLE `project_component` (
  `pc_rid` int(11) NOT NULL,
  `pp_rid` int(11) DEFAULT NULL,
  `pc_dd_index` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_component`
--

INSERT INTO `project_component` (`pc_rid`, `pp_rid`, `pc_dd_index`, `status`) VALUES
(1, 3, '1', 1),
(2, 3, '2', 0),
(3, 3, '3', 0),
(4, 3, '4', 0),
(5, 2, '1', 0),
(6, 2, '2', 1),
(7, 2, '4', 0),
(8, 2, '3', 0),
(9, 3, '5', 0),
(10, 3, '6', 1),
(11, 5, '2', 0),
(12, 5, '1', 1),
(13, 5, '4', 0),
(14, 5, '6', 1),
(15, 5, '5', 1),
(16, 5, '3', 0),
(17, 6, '3', 0),
(18, 6, '5', 0),
(19, 6, '1', 0),
(20, 6, '2', 0),
(21, 6, '6', 0),
(22, 6, '8', 1),
(23, 6, '9', 1),
(24, 6, '7', 0),
(25, 6, '4', 0),
(26, 5, '7', 1),
(27, 5, '8', 0),
(28, 5, '9', 0),
(29, 5, '21', 1),
(30, 3, '7', 1),
(31, 3, '8', 0),
(32, 3, '9', 0),
(33, 3, '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_docs`
--

CREATE TABLE `project_docs` (
  `pd_rid` int(11) NOT NULL,
  `project_rid` int(11) NOT NULL,
  `pp_rid` int(11) DEFAULT NULL,
  `doc_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'local, gdrive, dropbox etc',
  `path` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_effort_type`
--

CREATE TABLE `project_effort_type` (
  `pet_rid` int(11) NOT NULL,
  `pp_rid` int(11) DEFAULT NULL,
  `pet_dd_index` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_effort_type`
--

INSERT INTO `project_effort_type` (`pet_rid`, `pp_rid`, `pet_dd_index`, `status`) VALUES
(1, 2, '10', 1),
(2, 2, '11', 1),
(3, 2, '12', 0),
(4, 2, '13', 0),
(5, 2, '14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_module`
--

CREATE TABLE `project_module` (
  `pm_rid` int(11) NOT NULL,
  `project_rid` int(11) DEFAULT NULL,
  `pc_rid` int(11) DEFAULT NULL,
  `module_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_module`
--

INSERT INTO `project_module` (`pm_rid`, `project_rid`, `pc_rid`, `module_name`) VALUES
(1, 1, 6, 'Images Related'),
(2, 1, 6, 'Configurable Options'),
(3, 1, 6, 'Map'),
(4, 1, 6, 'Bilingual'),
(5, 1, 6, 'Advance multi Entry'),
(6, 1, 6, 'Data capture b/w nodes'),
(7, 1, 6, 'Fixes on Existing features'),
(8, 1, 6, 'Technical Documentation'),
(9, 1, 6, 'Video Control'),
(10, 1, 6, 'Audio Control'),
(11, 1, 6, 'Other'),
(12, 2, 1, 'Customer History'),
(13, 2, 1, 'Revenue Correspondence'),
(14, 2, 1, 'Complaint Management'),
(15, 2, 1, 'Consumer Master'),
(16, 2, 1, 'Other'),
(17, 2, 10, 'Requirement Gathering'),
(18, 2, 10, 'UAT/Training'),
(19, 4, 12, 'Portal'),
(20, 4, 12, 'CMS'),
(21, 4, 15, 'Portal/CMS'),
(22, 4, 14, 'Requirement Gathering'),
(23, 4, 14, 'UAT/Training'),
(24, 5, 22, 'Discussion-Partner'),
(25, 5, 22, 'Discussion-Client'),
(26, 5, 22, 'Proposal Preparation/submission'),
(27, 5, 23, 'Office Management'),
(28, 4, 26, 'Technical Input'),
(29, 4, 26, 'Requirement Discussion'),
(30, 4, 29, 'Tech Architecture/DB Design'),
(31, 2, 33, 'Tech Architecture/DB Design'),
(32, 2, 30, 'Requirement Discussion'),
(33, 2, 30, 'Technical Input');

-- --------------------------------------------------------

--
-- Table structure for table `project_phase`
--

CREATE TABLE `project_phase` (
  `pp_rid` int(11) NOT NULL,
  `project_rid` int(11) DEFAULT NULL,
  `phase_name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phase_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `manager_emp_rid` int(11) DEFAULT NULL,
  `hourly_price` float DEFAULT NULL,
  `budget` float DEFAULT NULL,
  `git_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phase_status` tinyint(4) DEFAULT 0 COMMENT '0 => new, 1 => in progress, 2 => completed, 3 => closed, 4 => short closed, 5 => canceled',
  `created_phase_datetime` datetime DEFAULT NULL,
  `updated_phase_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_phase`
--

INSERT INTO `project_phase` (`pp_rid`, `project_rid`, `phase_name`, `phase_description`, `start_date`, `end_date`, `manager_emp_rid`, `hourly_price`, `budget`, `git_url`, `phase_status`, `created_phase_datetime`, `updated_phase_datetime`) VALUES
(1, 1, 'Phase-1', 'Parent Child features', '2019-02-01', '2019-05-21', NULL, 0, 0, 'git clone https://<username>@bitbucket.org/devappsys/surveyapp.git', 3, NULL, NULL),
(2, 1, 'Phase-2', 'Images ,Map,Bilingual , Advance multi Entry, Video/Audio Control', '2019-08-06', NULL, NULL, 0, 0, '', 1, NULL, NULL),
(3, 2, 'Phase-1', 'Customer History, Revenue correspondence, Complaint Management, masters', '2019-12-01', '2020-02-29', NULL, 0, 0, '', 1, NULL, NULL),
(4, 3, 'Phase-1', '', '2019-08-20', NULL, NULL, 0, 0, '', 1, NULL, NULL),
(5, 4, 'UI/CMS', 'Hasiru-dala portfolio', '2019-11-01', '2019-12-31', NULL, 0, 0, '', 1, NULL, NULL),
(6, 5, 'ONE', 'Activities within DevAppSys which can not be logged under any other client will be tracked under this project', '2015-12-18', NULL, NULL, 0, 0, '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_resources`
--

CREATE TABLE `project_resources` (
  `pr_rid` int(11) NOT NULL,
  `project_rid` int(11) NOT NULL,
  `emp_rid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_resources`
--

INSERT INTO `project_resources` (`pr_rid`, `project_rid`, `emp_rid`, `status`, `created_datetime`, `updated_datetime`) VALUES
(1, 2, 1, 1, '2019-12-17 16:17:04', NULL),
(2, 2, 2, 1, '2019-12-17 16:17:08', NULL),
(3, 2, 5, 1, '2019-12-17 16:17:11', NULL),
(4, 3, 4, 1, '2019-12-17 16:17:48', NULL),
(5, 3, 2, 1, '2019-12-17 16:17:56', NULL),
(6, 3, 1, 1, '2019-12-17 16:17:59', NULL),
(7, 1, 2, 1, '2019-12-17 16:18:51', NULL),
(8, 1, 1, 1, '2019-12-17 16:19:11', NULL),
(9, 4, 2, 1, '2019-12-17 17:20:36', NULL),
(10, 4, 4, 1, '2019-12-17 17:20:40', NULL),
(11, 5, 1, 1, '2019-12-18 08:34:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_rid` int(11) NOT NULL,
  `role_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_rid`, `role_name`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 'ADMIN', 1, NULL, '2019-11-04 15:44:59', NULL, NULL),
(2, 'USER', 1, NULL, '2019-11-04 16:19:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_feature_map`
--

CREATE TABLE `role_feature_map` (
  `fr_rid` int(11) NOT NULL,
  `role_rid` int(11) DEFAULT NULL,
  `feature_rid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_feature_map`
--

INSERT INTO `role_feature_map` (`fr_rid`, `role_rid`, `feature_rid`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 1, 1, 1, NULL, '2019-11-04 15:45:00', NULL, NULL),
(2, 1, 2, 1, NULL, '2019-11-04 15:45:00', NULL, NULL),
(3, 1, 3, 1, NULL, '2019-11-04 15:45:00', NULL, NULL),
(4, 1, 4, 1, NULL, '2019-11-04 16:19:21', NULL, NULL),
(5, 1, 5, 1, NULL, NULL, NULL, NULL),
(6, 2, 5, 1, NULL, NULL, NULL, NULL),
(7, 1, 6, 1, NULL, NULL, NULL, NULL),
(8, 1, 7, 1, NULL, NULL, NULL, NULL),
(9, 1, 8, 1, NULL, NULL, NULL, NULL),
(10, 1, 9, 1, NULL, NULL, NULL, NULL),
(11, 1, 10, 1, NULL, NULL, NULL, NULL),
(12, 1, 11, 1, NULL, NULL, NULL, NULL),
(13, 1, 12, 1, NULL, NULL, NULL, NULL),
(14, 1, 13, 1, NULL, NULL, NULL, NULL),
(15, 1, 14, 1, NULL, NULL, NULL, NULL),
(16, 1, 15, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `ts_rid` int(11) NOT NULL,
  `emp_rid` int(11) DEFAULT NULL,
  `pp_rid` int(11) DEFAULT NULL,
  `pc_rid` int(11) DEFAULT NULL,
  `pm_rid` int(11) DEFAULT NULL,
  `ts_type` int(11) DEFAULT NULL,
  `ts_date` date NOT NULL,
  `effort_mins` time DEFAULT NULL,
  `timesheet_description` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_timesheet_datetime` datetime DEFAULT NULL,
  `updated_timesheet_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`ts_rid`, `emp_rid`, `pp_rid`, `pc_rid`, `pm_rid`, `ts_type`, `ts_date`, `effort_mins`, `timesheet_description`, `created_timesheet_datetime`, `updated_timesheet_datetime`) VALUES
(1, 5, 3, 1, 12, 10, '2019-12-17', '03:00:00', 'built project and started developing today', '2019-12-17 16:55:55', NULL),
(2, 1, 3, 10, 17, 13, '2019-12-16', '02:30:00', 'Discussion about authentication, features and customer history API\'s with Nagendra & Prasad', '2019-12-18 08:13:05', NULL),
(3, 2, 2, 6, 7, 11, '2019-12-18', '02:00:00', 'iterdata fix', '2019-12-18 15:51:50', NULL),
(4, 2, 2, 6, 7, 13, '2019-12-18', '01:00:00', '', '2019-12-18 15:52:15', NULL),
(5, 1, 2, 6, 1, 10, '2020-01-11', '03:00:00', NULL, '2020-01-11 11:59:42', NULL),
(6, 1, 2, 6, 1, 10, '2020-01-28', '03:00:00', NULL, '2020-01-28 15:23:40', NULL),
(7, 1, 2, 6, 1, 10, '2020-02-11', '05:00:00', NULL, '2020-02-11 13:46:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_map`
--

CREATE TABLE `user_role_map` (
  `ur_rid` int(11) NOT NULL,
  `user_rid` int(11) DEFAULT NULL,
  `role_rid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `created_user_rid` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_user_rid` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role_map`
--

INSERT INTO `user_role_map` (`ur_rid`, `user_rid`, `role_rid`, `status`, `created_user_rid`, `created_datetime`, `updated_user_rid`, `updated_datetime`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 2, 1, NULL, NULL, NULL, NULL),
(3, 4, 2, 1, NULL, NULL, NULL, NULL),
(4, 5, 2, 1, NULL, NULL, NULL, NULL),
(5, 6, 2, 1, NULL, NULL, NULL, NULL),
(6, 7, 2, 1, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`user_rid`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`att_rid`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_rid`);

--
-- Indexes for table `content_attachments`
--
ALTER TABLE `content_attachments`
  ADD PRIMARY KEY (`ca_rid`);

--
-- Indexes for table `content_repository`
--
ALTER TABLE `content_repository`
  ADD PRIMARY KEY (`cr_rid`);

--
-- Indexes for table `content_repository_archive`
--
ALTER TABLE `content_repository_archive`
  ADD PRIMARY KEY (`cra_rid`);

--
-- Indexes for table `content_tags`
--
ALTER TABLE `content_tags`
  ADD PRIMARY KEY (`ct_rid`);

--
-- Indexes for table `data_dictonary_data_type`
--
ALTER TABLE `data_dictonary_data_type`
  ADD PRIMARY KEY (`data_type_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_rid`);

--
-- Indexes for table `employee_package`
--
ALTER TABLE `employee_package`
  ADD PRIMARY KEY (`ep_rid`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`feature_rid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_rid`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`invoice_d_rid`);

--
-- Indexes for table `particulars`
--
ALTER TABLE `particulars`
  ADD PRIMARY KEY (`part_rid`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`partner_rid`);

--
-- Indexes for table `payments_given`
--
ALTER TABLE `payments_given`
  ADD PRIMARY KEY (`p_rid`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`payment_rid`);

--
-- Indexes for table `payment_received`
--
ALTER TABLE `payment_received`
  ADD PRIMARY KEY (`pr_rid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_rid`);

--
-- Indexes for table `project_component`
--
ALTER TABLE `project_component`
  ADD PRIMARY KEY (`pc_rid`);

--
-- Indexes for table `project_docs`
--
ALTER TABLE `project_docs`
  ADD PRIMARY KEY (`pd_rid`);

--
-- Indexes for table `project_effort_type`
--
ALTER TABLE `project_effort_type`
  ADD PRIMARY KEY (`pet_rid`);

--
-- Indexes for table `project_module`
--
ALTER TABLE `project_module`
  ADD PRIMARY KEY (`pm_rid`);

--
-- Indexes for table `project_phase`
--
ALTER TABLE `project_phase`
  ADD PRIMARY KEY (`pp_rid`);

--
-- Indexes for table `project_resources`
--
ALTER TABLE `project_resources`
  ADD PRIMARY KEY (`pr_rid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_rid`);

--
-- Indexes for table `role_feature_map`
--
ALTER TABLE `role_feature_map`
  ADD PRIMARY KEY (`fr_rid`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`ts_rid`);

--
-- Indexes for table `user_role_map`
--
ALTER TABLE `user_role_map`
  ADD PRIMARY KEY (`ur_rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `user_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `att_rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content_attachments`
--
ALTER TABLE `content_attachments`
  MODIFY `ca_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `content_repository`
--
ALTER TABLE `content_repository`
  MODIFY `cr_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `content_repository_archive`
--
ALTER TABLE `content_repository_archive`
  MODIFY `cra_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `content_tags`
--
ALTER TABLE `content_tags`
  MODIFY `ct_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_dictonary_data_type`
--
ALTER TABLE `data_dictonary_data_type`
  MODIFY `data_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_package`
--
ALTER TABLE `employee_package`
  MODIFY `ep_rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `feature_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `invoice_d_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `particulars`
--
ALTER TABLE `particulars`
  MODIFY `part_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `partner_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments_given`
--
ALTER TABLE `payments_given`
  MODIFY `p_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `payment_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_received`
--
ALTER TABLE `payment_received`
  MODIFY `pr_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_component`
--
ALTER TABLE `project_component`
  MODIFY `pc_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_docs`
--
ALTER TABLE `project_docs`
  MODIFY `pd_rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_effort_type`
--
ALTER TABLE `project_effort_type`
  MODIFY `pet_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_module`
--
ALTER TABLE `project_module`
  MODIFY `pm_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_phase`
--
ALTER TABLE `project_phase`
  MODIFY `pp_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_resources`
--
ALTER TABLE `project_resources`
  MODIFY `pr_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_feature_map`
--
ALTER TABLE `role_feature_map`
  MODIFY `fr_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `ts_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_role_map`
--
ALTER TABLE `user_role_map`
  MODIFY `ur_rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
