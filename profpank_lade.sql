-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 16, 2017 at 09:43 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `profpank_lade`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(500) NOT NULL,
  `Admin_Email` varchar(500) NOT NULL,
  `Admin_CreatedOn` datetime NOT NULL,
  `Admin_CreatedBy` int(12) NOT NULL,
  `Admin_Status` int(1) NOT NULL DEFAULT '1',
  `Admin_Uname` varchar(500) NOT NULL,
  `Admin_Pass` varchar(500) NOT NULL,
  `Admin_Role` int(1) NOT NULL DEFAULT '0',
  `Admin_ViewOnly` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`Admin_Id`, `Admin_Name`, `Admin_Email`, `Admin_CreatedOn`, `Admin_CreatedBy`, `Admin_Status`, `Admin_Uname`, `Admin_Pass`, `Admin_Role`, `Admin_ViewOnly`) VALUES
(1, 'Anurag Singh', 'singhanuragv@gmail.com', '2017-07-13 00:00:00', 1, 1, 'admin', 'pass@2017', 1, 0),
(5, 'Prof Pankaj Lade', 'info@profpankajlade.com', '2017-07-13 00:00:00', 1, 1, 'pankajlade', 'pankajlade', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `albums_ID` int(12) NOT NULL AUTO_INCREMENT,
  `albums_Name` varchar(200) NOT NULL,
  `albums_Image` varchar(500) NOT NULL,
  `albums_Subctg` tinyint(1) DEFAULT '0',
  `albums_Date` date NOT NULL,
  `albums_Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`albums_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`albums_ID`, `albums_Name`, `albums_Image`, `albums_Subctg`, `albums_Date`, `albums_Status`) VALUES
(1, 'firstbrick_test', '/ckfinder/userfiles/images/event_img4.jpg', 1, '2017-01-02', 1),
(5, 'Mahashivratri', '/ckfinder/userfiles/images/event_img1.jpg', 1, '2017-02-14', 1),
(6, 'New No Sub', '/ckfinder/userfiles/images/coin_dr.gif', 0, '2014-05-22', 1),
(7, 'New', '/ckfinder/userfiles/images/event_img4.jpg', 1, '2012-02-12', 1),
(8, 'Bugs and Reopen', '', 1, '2022-02-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE IF NOT EXISTS `blogcategory` (
  `blogCategory_ID` int(12) NOT NULL AUTO_INCREMENT,
  `blogCategory_Name` varchar(500) NOT NULL,
  `blogCategory_Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`blogCategory_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`blogCategory_ID`, `blogCategory_Name`, `blogCategory_Status`) VALUES
(5, 'Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `Blog_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Blog_Name` varchar(500) NOT NULL,
  `Blog_Title` varchar(500) NOT NULL,
  `Blog_Img` varchar(500) DEFAULT NULL,
  `Blog_MetaKeyword` varchar(500) DEFAULT NULL,
  `Blog_MetaDesc` varchar(1000) DEFAULT NULL,
  `Blog_ShortContent` text NOT NULL,
  `Blog_Content` text NOT NULL,
  `Blog_Category` int(11) NOT NULL,
  `Blog_Status` int(1) NOT NULL DEFAULT '1',
  `Blog_IsFeatured` int(1) NOT NULL DEFAULT '0',
  `Blog_Createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Blog_CreatedBy` int(11) NOT NULL,
  PRIMARY KEY (`Blog_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `blogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `branch_ID` int(12) NOT NULL AUTO_INCREMENT,
  `branch_Name` varchar(500) NOT NULL,
  PRIMARY KEY (`branch_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_ID`, `branch_Name`) VALUES
(4, 'Computer Science & Engineering/IT'),
(2, 'Electronics & Communication Engineering'),
(3, 'Electrical Engineering'),
(1, 'All Branches');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE IF NOT EXISTS `downloads` (
  `download_Id` int(12) NOT NULL AUTO_INCREMENT,
  `download_Name` varchar(500) NOT NULL,
  `download_Catg` int(12) NOT NULL,
  `download_Owner` varchar(500) NOT NULL,
  `download_Link` varchar(1000) NOT NULL,
  `download_Img` varchar(500) DEFAULT NULL,
  `download_Description` text,
  `download_isTrue` int(1) NOT NULL DEFAULT '0',
  `download_Status` int(1) NOT NULL DEFAULT '1',
  `download_AddDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`download_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_Id`, `download_Name`, `download_Catg`, `download_Owner`, `download_Link`, `download_Img`, `download_Description`, `download_isTrue`, `download_Status`, `download_AddDate`) VALUES
(9, 'Derivitives', 8, '', '', '', '<p>fsdfs</p>\r\n', 1, 1, '2017-08-16 12:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `download_category`
--

CREATE TABLE IF NOT EXISTS `download_category` (
  `dCatg_ID` int(12) NOT NULL AUTO_INCREMENT,
  `dCatg_Name` varchar(500) NOT NULL,
  `dCatg_Status` int(11) NOT NULL,
  PRIMARY KEY (`dCatg_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `download_category`
--

INSERT INTO `download_category` (`dCatg_ID`, `dCatg_Name`, `dCatg_Status`) VALUES
(8, 'Formulas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE IF NOT EXISTS `global_settings` (
  `Gbl_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Gbl_Name` varchar(500) NOT NULL,
  `Gbl_Title` varchar(1000) NOT NULL,
  `Gbl_Email` varchar(500) NOT NULL,
  `Gbl_Phone` varchar(500) NOT NULL,
  `Gbl_Facebook` varchar(500) NOT NULL,
  `Gbl_Twitter` varchar(500) NOT NULL,
  `Gbl_LinkedIn` varchar(500) NOT NULL,
  `Gbl_GooglePlus` varchar(500) NOT NULL,
  `Gbl_Address` varchar(1000) NOT NULL,
  `Gbl_GMap` mediumtext NOT NULL,
  `Gbl_Logo` varchar(500) NOT NULL,
  `Gbl_Copyright` varchar(500) NOT NULL,
  `Gbl_Mobile` varchar(50) NOT NULL,
  `Gbl_Key` varchar(500) NOT NULL,
  `Gbl_Des` varchar(1000) NOT NULL,
  `Gbl_Alter_Email` varchar(250) DEFAULT NULL,
  `Gbl_Alter_Mobile1` varchar(250) NOT NULL,
  PRIMARY KEY (`Gbl_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`Gbl_Id`, `Gbl_Name`, `Gbl_Title`, `Gbl_Email`, `Gbl_Phone`, `Gbl_Facebook`, `Gbl_Twitter`, `Gbl_LinkedIn`, `Gbl_GooglePlus`, `Gbl_Address`, `Gbl_GMap`, `Gbl_Logo`, `Gbl_Copyright`, `Gbl_Mobile`, `Gbl_Key`, `Gbl_Des`, `Gbl_Alter_Email`, `Gbl_Alter_Mobile1`) VALUES
(1, 'ProfPankajLade.com', 'ProfPankajLade.com', 'info@profpankajlade.com', '123', '#', '#', '#', '#', 'Mumbai', '', '', 'profpankajlade.com', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE IF NOT EXISTS `papers` (
  `papers_Id` int(12) NOT NULL AUTO_INCREMENT,
  `papers_number` varchar(250) NOT NULL,
  `papers_Name` varchar(250) DEFAULT NULL,
  `papers_CourseYear` int(12) DEFAULT NULL,
  `papers_Subject` int(12) DEFAULT NULL,
  `papers_Link` varchar(250) DEFAULT '#',
  `papers_status` tinyint(1) NOT NULL DEFAULT '0',
  `papers_createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `papers_monthYear` varchar(250) NOT NULL,
  `papers_SolutionLink` varchar(500) NOT NULL DEFAULT '#',
  PRIMARY KEY (`papers_Id`),
  UNIQUE KEY `papers_number` (`papers_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`papers_Id`, `papers_number`, `papers_Name`, `papers_CourseYear`, `papers_Subject`, `papers_Link`, `papers_status`, `papers_createdOn`, `papers_monthYear`, `papers_SolutionLink`) VALUES
(2, '1502386051598c97838042f', 'Engineering Mechanics KT', 1, 1, '     /ckfinder/userfiles/files/books/Glimpses1English(1).pdf', 1, '2017-08-10 22:57:31', 'May-2006', '/ckfinder/userfiles/files/books/Glimpses3English.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `photos_ID` int(12) NOT NULL AUTO_INCREMENT,
  `photos_Name` varchar(200) NOT NULL,
  `photos_Img` varchar(500) NOT NULL,
  `photos_album` int(12) NOT NULL,
  `photos_subalbum` int(12) DEFAULT NULL,
  `photos_Status` tinyint(1) NOT NULL DEFAULT '1',
  `photos_Date` date DEFAULT NULL,
  `photos_CreatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`photos_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photos_ID`, `photos_Name`, `photos_Img`, `photos_album`, `photos_subalbum`, `photos_Status`, `photos_Date`, `photos_CreatedOn`) VALUES
(1, 'Photo 1', '/ckfinder/userfiles/images/event_img4.jpg', 1, 1, 1, '2016-03-14', '0000-00-00 00:00:00'),
(2, 'Photo 1', '/ckfinder/userfiles/images/journey/Guruji1.jpg', 2, NULL, 1, '2017-02-08', '0000-00-00 00:00:00'),
(3, 'photo 2', '/ckfinder/userfiles/images/journey/Guruji2.jpg', 2, NULL, 1, '2016-03-14', '0000-00-00 00:00:00'),
(4, 'Photo 1', '/ckfinder/userfiles/images/mission/Guruji1.jpg', 3, NULL, 1, '2015-05-05', '2017-03-05 08:44:21'),
(5, 'photo 2', '/ckfinder/userfiles/images/mission/Guruji2.jpg', 3, NULL, 1, '2014-11-03', '2017-03-05 08:44:43'),
(6, 'photo 3', '/ckfinder/userfiles/images/mission/Guruji3.jpg', 3, NULL, 1, '2016-03-14', '2017-03-05 08:45:11'),
(7, 'Photo 1', '/ckfinder/userfiles/images/he/Guruji1.jpg', 4, NULL, 1, '2016-04-06', '2017-03-05 08:48:40'),
(8, 'photo 2', '/ckfinder/userfiles/images/he/Guruji2.jpg', 4, NULL, 1, '2016-03-14', '2017-03-05 08:49:07'),
(9, 'photo 3', '/ckfinder/userfiles/images/he/Guruji3.jpg', 4, NULL, 1, '2016-03-14', '2017-03-05 08:49:27'),
(10, 'photo 4', '/ckfinder/userfiles/images/he/Guruji4.jpg', 4, NULL, 1, '2016-03-14', '2017-03-05 08:50:06'),
(11, 'photo 3', '/ckfinder/userfiles/images/journey/Guruji3.jpg', 2, NULL, 1, '2016-03-14', '2017-03-05 18:48:17'),
(12, '', '/ckfinder/userfiles/images/journey/Guruji4.jpg', 2, NULL, 1, '2016-03-14', '2017-03-05 18:48:55'),
(13, 'Photo 5', '/ckfinder/userfiles/images/journey/Guruji5.jpg', 2, NULL, 1, '2016-03-14', '2017-03-05 18:49:29'),
(14, 'photo 4', '/ckfinder/userfiles/images/mission/Guruji4.jpg', 3, NULL, 1, '2017-02-02', '2017-03-05 18:51:32'),
(15, 'Photo 5', '/ckfinder/userfiles/images/he/Guruji5.jpg', 4, NULL, 1, '2016-03-14', '2017-03-05 18:53:26'),
(16, 'photo 6', '/ckfinder/userfiles/images/he/Guruji6.jpg', 4, NULL, 1, '2016-03-14', '2017-03-05 18:53:44'),
(17, 'testphoto', '/ckfinder/userfiles/images/mission/Guruji4.jpg', 3, NULL, 1, '2013-09-02', '2012-11-08 00:00:00'),
(19, 'Anurag', '/ckfinder/userfiles/images/event_img4.jpg', 1, NULL, 1, '2012-12-21', '2017-07-31 00:21:07'),
(20, 'Test1', '/ckfinder/userfiles/images/event_img1.jpg', 6, NULL, 1, '2012-12-12', '2017-07-31 00:25:13'),
(21, 'Test1', '/ckfinder/userfiles/images/event_img1.jpg', 6, NULL, 1, '2012-12-12', '2017-07-31 00:25:13'),
(22, 'Bew', '/ckfinder/userfiles/images/event_img4.jpg', 1, 1, 1, '2000-01-22', '2017-07-31 00:26:08'),
(23, '3', '/ckfinder/userfiles/images/event_img4.jpg', 1, NULL, 1, '2004-02-11', '2017-07-31 00:27:39'),
(24, 'erweq34234234', '/ckfinder/userfiles/images/coin_dr.gif', 2, 9, 1, '2011-11-13', '2017-07-31 00:33:24'),
(25, 'hbj', '/ckfinder/userfiles/images/event_img1.jpg', 7, 10, 1, '0000-00-00', '2017-07-31 01:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `subject_name` text,
  `percentage` text,
  `image_path` varchar(100) DEFAULT NULL,
  `is_deleted` smallint(2) DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `user_id`, `first_name`, `subject_name`, `percentage`, `image_path`, `is_deleted`, `created_time`) VALUES
(2, 149923052736263813, 'Tejas Vesvikar', 'BEE', '89', '149923052739396126_ori.jpg', 1, '2017-07-05 10:25:28'),
(3, 149970703091329049, 'Test', 'Test Subject', '12', '149970703092259851_ori.jpg', 1, '2017-07-10 22:47:12'),
(4, 149970715092656296, 'New Test', 'Test', '12', '149970715092996199_ori.jpg', 1, '2017-07-10 22:49:12'),
(5, 149983819318628734, 'Priyanka Rajaram', 'Maths', '98', '149983819319060115_ori.jpg', 0, '2017-07-12 11:13:14'),
(6, 149983867610097441, 'Saurabh Salunkhe', 'Maths', '96', '149983867610475686_ori.jpg', 0, '2017-07-12 11:21:17'),
(7, 149983888737555867, 'Priyanka Rajaram', 'Mechanics', '95', '149983888737871776_ori.jpg', 0, '2017-07-12 11:24:48'),
(8, 149983914700113987, 'Ninad Kadu', 'Maths', '94', '149983914700449284_ori.jpg', 0, '2017-07-12 11:29:07'),
(9, 149984010369738920, 'Bhumi Bhanushali', 'Maths', '94', '149984010370081971_ori.jpg', 0, '2017-07-12 11:45:04'),
(10, 149984027252801466, 'Drishti Rao', 'Maths', '94', '149984027253076737_ori.jpg', 0, '2017-07-12 11:47:53'),
(11, 149984047257309012, 'Jainam Shah', 'Maths', '93', '149984047257644881_ori.jpg', 0, '2017-07-12 11:51:13'),
(12, 149984100465663030, 'Swapnil Shinde', 'Mechanics', '91', '149984100465989275_ori.jpg', 0, '2017-07-12 12:00:05'),
(13, 149984105282706965, 'Saurabh Salunkhe', 'Mechanics', '88', '149984105283123388_ori.jpg', 0, '2017-07-12 12:00:53'),
(14, 149984136192623832, 'Amol Hawale', 'Maths', '90', '149984136193068841_ori.jpg', 0, '2017-07-12 12:06:03'),
(15, 149984164292529071, 'Manohar Malvankar', 'Maths', '88', '149984164292808659_ori.jpg', 0, '2017-07-12 12:10:43'),
(16, 149984190227297064, 'Ketan Kandalkar', 'Maths', '86', '149984190227584192_ori.jpg', 0, '2017-07-12 12:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `subject_name` text,
  `percentage` text,
  `image_path` varchar(100) DEFAULT NULL,
  `is_deleted` smallint(2) DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `first_name`, `subject_name`, `percentage`, `image_path`, `is_deleted`, `created_time`) VALUES
(1, NULL, '  Test Result 1', '  English', '  90', '  /ckfinder/userfiles/images/event_img4.jpg', 1, '2017-07-13 23:31:36'),
(2, NULL, 'edit', 'edit', '1', ' /ckfinder/userfiles/images/event_img4.jpg', 1, '2017-07-13 23:33:16'),
(3, NULL, ' Anurag', ' Jot Parking', ' 12', ' ', 1, '2017-07-14 00:38:28'),
(4, NULL, 'Test', 'tetst', '12', '/ckfinder/userfiles/images/images.jpg', 0, '2017-07-14 00:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `subalbums`
--

CREATE TABLE IF NOT EXISTS `subalbums` (
  `albums_ID` int(12) NOT NULL AUTO_INCREMENT,
  `albums_Name` varchar(200) NOT NULL,
  `albums_Image` varchar(500) NOT NULL,
  `albums_Ctg` int(12) NOT NULL,
  `albums_Date` date NOT NULL,
  `albums_Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`albums_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `subalbums`
--

INSERT INTO `subalbums` (`albums_ID`, `albums_Name`, `albums_Image`, `albums_Ctg`, `albums_Date`, `albums_Status`) VALUES
(1, 'firstbrick_test', '/ckfinder/userfiles/images/event_img4.jpg', 1, '2017-01-02', 1),
(2, 'home-journey', '/ckfinder/userfiles/images/journey/pic_9.jpg', 1, '2017-02-15', 1),
(7, 'Sub1', '/ckfinder/userfiles/images/event_img1.jpg', 1, '2012-11-02', 1),
(9, 'New', '/ckfinder/userfiles/images/event_img4.jpg', 2, '2014-04-05', 1),
(10, 'Ted', '', 7, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcribers`
--

CREATE TABLE IF NOT EXISTS `subcribers` (
  `Subcribers_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Subcribers_Email` varchar(250) NOT NULL,
  `Subcribers_Name` varchar(250) DEFAULT NULL,
  `Subcribers_Mobile` varchar(100) DEFAULT NULL,
  `Subscribers_Status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Subcribers_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subcribers`
--

INSERT INTO `subcribers` (`Subcribers_ID`, `Subcribers_Email`, `Subcribers_Name`, `Subcribers_Mobile`, `Subscribers_Status`) VALUES
(14, 'Singhanuragv@gmail.com', 'Anurag', '9029371298', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_ID` int(12) NOT NULL AUTO_INCREMENT,
  `subject_Name` varchar(250) NOT NULL,
  `subject_sem` int(12) NOT NULL,
  `subject_branch` int(12) NOT NULL,
  `subject_Syllabus` varchar(500) DEFAULT '#',
  `subject_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`subject_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_ID`, `subject_Name`, `subject_sem`, `subject_branch`, `subject_Syllabus`, `subject_status`) VALUES
(1, 'Engineering Mechanics', 1, 1, '/ckfinder/userfiles/files/books/Glimpses1English.pdf', 1),
(2, 'Applied Mathematics - I', 1, 1, '/ckfinder/userfiles/files/books/Glimpses4English.pdf', 1),
(3, 'Test', 3, 3, '#', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `testimonial` text,
  `image_path` varchar(100) DEFAULT NULL,
  `is_deleted` smallint(2) DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `user_id`, `first_name`, `testimonial`, `image_path`, `is_deleted`, `created_time`) VALUES
(2, 149924096079506198, 'Test 1', 'Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum', '149924096079823880_ori.jpg', 1, '2017-07-05 13:19:20'),
(3, 149970664405744695, 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\''s standard dummy t', '149970697329181616_ori.jpg', 1, '2017-07-10 22:40:45'),
(4, 149985912739090663, 'Tanmay Jadhav', 'Prof. Pankaj Lade''s Engineering Group Tuitions has given me a lot of confidence! Coaching for an Engineering Lifeâ€ was awesome. Honestly, your notes reads like a novel. So I thank you with all my heart for helping me find my purpose in life.', '149985912739437426_ori.jpg', 0, '2017-07-12 17:02:08'),
(5, 149985918287201333, 'Ninad Kadu', 'If you want to learn the basics and acquire in depth knowledge about the engineering subject then this is the best place you could be. The problems done in lectures and test conducted before exams are undoubtedly highly benefiting. Pankaj Sir is ever enthusiastic about teaching and takes care that everyone understands the topic in the most easiest and interesting way. The other professor\\''s too are very dedicated to their subjects. All of them do a fabulous job and they just need to keep it up!', '149985918287514219_ori.jpg', 0, '2017-07-12 17:03:03'),
(6, 149986049529150749, 'Bharatan Nair', 'The entire course was well designed and very well executed. it was great fun and I learned a lot.\r\nPractice question papers just before the exams especially were of great help and interest to me. I continue to use the theory in my other subjects too.\r\nSir has a wonderful rapport with students which motivates students and allows to interact with him in a positive manner.\r\n The lectures were well designed and highly informative to assist us with what we are expected to learn.\r\nYou do a fantastic job!!!', '149986049529460530_ori.jpg', 0, '2017-07-12 17:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `testimonial` text,
  `image_path` varchar(100) DEFAULT NULL,
  `is_deleted` smallint(2) DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `first_name`, `testimonial`, `image_path`, `is_deleted`, `created_time`) VALUES
(2, 149924096079506198, 'Test 1', 'Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum Loreum Ipsum', '149924096079823880_ori.jpg', 1, '2017-07-05 13:19:20'),
(3, 149970664405744695, 'Test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\''s standard dummy t', '149970697329181616_ori.jpg', 1, '2017-07-10 22:40:45'),
(4, 149985912739090663, 'Tanmay Jadhav', 'Prof. Pankaj Lade\\''s Engineering Group Tuitions has given me a lot of confidence! Coaching for an Engineering Lifeâ€ was awesome. Honestly, your notes reads like a novel. So I thank you with all my heart for helping me find my purpose in life.', '149985912739437426_ori.jpg', 1, '2017-07-12 17:02:08'),
(5, 149985918287201333, 'Ninad Kadu', 'If you want to learn the basics and acquire in depth knowledge about the engineering subject then this is the best place you could be. The problems done in lectures and test conducted before exams are undoubtedly highly benefiting. Pankaj Sir is ever enthusiastic about teaching and takes care that everyone understands the topic in the most easiest and interesting way. The other professor\\''s too are very dedicated to their subjects. All of them do a fabulous job and they just need to keep it up!', '149985918287514219_ori.jpg', 1, '2017-07-12 17:03:03'),
(6, 149986049529150749, 'Bharatan Nair', 'The entire course was well designed and very well executed. it was great fun and I learned a lot.\r\nPractice question papers just before the exams especially were of great help and interest to me. I continue to use the theory in my other subjects too.\r\nSir has a wonderful rapport with students which motivates students and allows to interact with him in a positive manner.\r\n The lectures were well designed and highly informative to assist us with what we are expected to learn.\r\nYou do a fantastic job!!!', '149986049529460530_ori.jpg', 1, '2017-07-12 17:24:56'),
(7, NULL, 'New', '<p>New</p>\r\n', '/ckfinder/userfiles/images/event_img1.jpg', 1, '2017-07-13 23:46:30'),
(8, NULL, 'test', '<p>Test</p>\r\n', '/ckfinder/userfiles/images/images.jpg', 0, '2017-07-14 00:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE IF NOT EXISTS `webpage` (
  `Wp_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Wp_Name` varchar(500) NOT NULL,
  `Wp_Title` varchar(500) NOT NULL,
  `Wp_Key` varchar(500) NOT NULL,
  `Wp_Des` varchar(1000) NOT NULL,
  `Wp_ShortContent` varchar(2000) NOT NULL,
  `Wp_Content` longtext NOT NULL,
  `Wp_Lmo` date NOT NULL,
  `Wp_Status` int(1) NOT NULL DEFAULT '1',
  `Wp_Lmb` int(11) NOT NULL,
  PRIMARY KEY (`Wp_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`Wp_Id`, `Wp_Name`, `Wp_Title`, `Wp_Key`, `Wp_Des`, `Wp_ShortContent`, `Wp_Content`, `Wp_Lmo`, `Wp_Status`, `Wp_Lmb`) VALUES
(3, 'About Us', 'About Us', '', '', '<p>Quality education is the need of hour believes&nbsp;<strong>Professor Pankaj Lade</strong>&nbsp;and he is whole heartedly devoted to provide it to students. He is imparting knowledge to students for last 13 years. He is a chemical engineer from University of Mumbai. He believes in constantly evolving himself that&rsquo;s why he did SAP training while working in chemical industry and currently pursuing Master&rsquo;s degree in chemical engineering. He worked in reputed companies and gave training to SAP consultants too. But his calling was somewhere else. He left his lucrative job and entered in the field of education.</p>\r\n', '<p>Quality education is the need of hour believes <strong>Professor Pankaj Lade</strong> and he is whole heartedly devoted to provide it to students. He is imparting knowledge to students for last 13 years. He is a chemical engineer from University of Mumbai. He believes in constantly evolving himself that&rsquo;s why he did SAP training while working in chemical industry and currently pursuing Master&rsquo;s degree in chemical engineering. He worked in reputed companies and gave training to SAP consultants too. But his calling was somewhere else. He left his lucrative job and entered in the field of education.</p>\r\n\r\n<p>He has always been fascinated by the thought of sharing his wealth knowledge with others. After teaching JEE, CET and XIth - XIIth mathematics for several years he started his own engineering classes in the year 2011 under the name Prof. Pankaj Lade&rsquo;s Engineering Group Tuitions in Borivali.</p>\r\n\r\n<p><strong>He is well versed with subjects like Engineering Mechanics, Engineering Drawing, Applied Mathematics 1, 2, 3, 4 all streams, Strength of Materials, Fluid Mechanics, Structural Analysis I and II, Random Signal Analysis.</strong></p>\r\n', '2017-07-13', 1, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
