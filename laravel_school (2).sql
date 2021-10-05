-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 06:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_school`
--

CREATE TABLE `about_school` (
  `id` int(11) NOT NULL,
  `About_Massage` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_school`
--

INSERT INTO `about_school` (`id`, `About_Massage`, `image`) VALUES
(1, '<p style=\"text-align: justify; \"><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700; text-align: left;\">Information</span><br></p>', 'public/otherimage/020821_06_09_28.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `academiccalender`
--

CREATE TABLE `academiccalender` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academiccalender`
--

INSERT INTO `academiccalender` (`id`, `date`, `title`, `image`) VALUES
(3, '2021-08-06', 'Feni Polytechnic Institutes', 'public/otherimage/090821_08_53_52.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`id`, `class_name`) VALUES
(3, 'Six'),
(4, 'Seven'),
(5, 'Eight'),
(6, 'Nine'),
(7, 'Ten');

-- --------------------------------------------------------

--
-- Table structure for table `add_group`
--

CREATE TABLE `add_group` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_group`
--

INSERT INTO `add_group` (`id`, `class_id`, `group_name`) VALUES
(1, '3', NULL),
(4, '4', NULL),
(5, '5', NULL),
(6, '6', 'Commerce'),
(7, '6', 'Science'),
(8, '6', 'Arse'),
(9, '7', 'Commerce'),
(10, '7', 'Science'),
(11, '7', 'Arse');

-- --------------------------------------------------------

--
-- Table structure for table `add_section`
--

CREATE TABLE `add_section` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_section`
--

INSERT INTO `add_section` (`id`, `class_id`, `group_id`, `section_name`) VALUES
(2, '7', '11', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `admissionprocedure`
--

CREATE TABLE `admissionprocedure` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admissionprocedure`
--

INSERT INTO `admissionprocedure` (`id`, `date`, `title`, `details`) VALUES
(2, '2021-08-05', 'Feni Polytechnic Institute', '<p>Feni Polytechnic Institute</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admissionresult`
--

CREATE TABLE `admissionresult` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admissionresult`
--

INSERT INTO `admissionresult` (`id`, `date`, `title`, `image`) VALUES
(2, '2021-08-27', 'Feni Polytechnic Institute', 'public/otherimage/050821_16_14_03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admissionrules`
--

CREATE TABLE `admissionrules` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admissionrules`
--

INSERT INTO `admissionrules` (`id`, `date`, `title`, `details`) VALUES
(2, '2021-08-05', 'Feni Polytechnic Institute', '<p>Admissionrules</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admissiontestquestion`
--

CREATE TABLE `admissiontestquestion` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admissiontestquestion`
--

INSERT INTO `admissiontestquestion` (`id`, `date`, `title`, `image`) VALUES
(2, '2021-08-05', 'Feni Polytechnic Institutes', 'public/otherimage/050821_16_25_09.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bncc`
--

CREATE TABLE `bncc` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(2, '2021-08-05', '5', 'Feni Polytechnic Institute', 'public/otherimage/050821_07_57_38.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `citizencharter`
--

CREATE TABLE `citizencharter` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `citizencharter`
--

INSERT INTO `citizencharter` (`id`, `title`, `image`) VALUES
(1, 'Feni Polytechnic Institute', 'public/otherimage/020821_05_57_48.png');

-- --------------------------------------------------------

--
-- Table structure for table `classroutine`
--

CREATE TABLE `classroutine` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classroutine`
--

INSERT INTO `classroutine` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(2, '2021-08-04', '5', 'Feni Polytechnic Institutess', 'public/otherimage/050821_07_22_24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `computer_club`
--

CREATE TABLE `computer_club` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `Contact_Us` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `Contact_Us`, `map`) VALUES
(1, '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><b>Headmaster</b></font></p><p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><b>Al Helal Academy</b></font></p><p style=\"text-align: justify; \"><b style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sonagazi, Feni.</b></p><p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><b>Web: www.alhelalacademy.edu.bd</b></font></p><p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><b>email.alhelalacademysonagazi@gmail.com</b></font></p><p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\"><b>Mobile: 01728563480</b></font></p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3676.7474028937877!2d91.38464351496458!3d22.84883308504135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3753451f0b8e519f%3A0x3a7c5be17f194cb4!2sAl%20Helal%20Academy%2C%20Sonagazi%20-%20Olamabazar%20-%20Chardarbeshpur%20-%20Companiganj%20Rd%2C%20Sonagazi%20Municipality!5e0!3m2!1sen!2sbd!4v1627886218830!5m2!1sen!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `cultural`
--

CREATE TABLE `cultural` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debate`
--

CREATE TABLE `debate` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examroutine`
--

CREATE TABLE `examroutine` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examroutine`
--

INSERT INTO `examroutine` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(2, '2021-08-09', '5', 'Expenses', 'public/otherimage/090821_16_53_27.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `examrules`
--

CREATE TABLE `examrules` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examrules`
--

INSERT INTO `examrules` (`id`, `title`, `details`) VALUES
(1, '', '<p><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Information</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `details`) VALUES
(1, '<p style=\"padding: 0px; color: rgb(33, 37, 41); font-family: &quot;Baloo Chettan 2&quot;, AdorshoLipi, cursive; text-align: justify;\"><span style=\"color: rgb(88, 88, 88); font-family: Poppins, sans-serif; font-size: 15px; font-weight: 700; text-align: left;\">Information</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `founder_message`
--

CREATE TABLE `founder_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `founder_message`
--

INSERT INTO `founder_message` (`id`, `name`, `title`, `details`, `image`) VALUES
(1, 'Md. Omar Faruk', 'Founder Message', '<p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষকের বাণী</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বর্তমান যুগ বিজ্ঞান ও তথ্য-প্রযুক্তির উৎকর্ষের যুগ। আধুনিক বিশ্বের সকল ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তি পালন করছে জাদুর কাঠির মতো বিস্ময়কর ভূমিকা। শিক্ষা ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহার ইতিমধ্যেই বিশ্বব্যাপী বিরাট আলোড়নের সৃষ্টি করেছে। এ প্রেক্ষাপটে বাংলাদেশ সরকার এদেশের শিক্ষা ব্যবস্থা আধুনিকায়নের লক্ষ্যে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহারকে সর্বাধিক গুরুত্ব দিয়ে সকল শিক্ষা প্রতিষ্ঠানকে অভিন্ন নেটওয়ার্কের আওতায় নিয়ে আসার ব্যাপারে ব্যাপক কর্মসূচি গ্রহণ করেছে।</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বাংলাদেশের শিক্ষা ব্যবস্থার আধুনিকায়নে সরকারের আহ্বানে সাড়া দিয়ে যে সকল শিক্ষা প্রতিষ্ঠান ইতোমধ্যে বিজ্ঞান ভিত্তিক শিক্ষা উপকরণ ও তথ্য-প্রযুক্তির ব্যবহার শুরু করেছে ।&nbsp; এ শিক্ষা প্রতিষ্ঠানে ইতিমধ্যে বেশ কয়েকটি স্মার্ট ক্লাস রুম স্থাপন করা হয়েছে। এছাড়াও কলেজ একাডেমিক ও প্রশাসনিক কর্মকাণ্ডকে আরো গতিশীল ও তথ্য-প্রযুক্তি বান্ধব করার লক্ষ্যে একটি সমৃদ্ধ ওয়েব সাইট চালু করার কার্যক্রম সম্পন্ন করা হয়েছে।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আমি আশাকরি এর মধ্যদিয়ে আমাদের শিক্ষার্থীরাই শুধু নয় সারা দেশের শিক্ষা ব্যবস্থার একটি সামাজিকরণ সম্ভব হবে। আমি আমাদের বিদ্যালয়ের সহকর্মী, শিক্ষার্থী, অভিভাবক সুধিমহল সকলকে আন্তরিক শুভেচ্ছা জানাই ।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষক<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আল-হেলাল একাডেমী সোনাগাজী&nbsp;<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">সোনাগাজী, ফেনী।&nbsp;</p>', 'public/message/1706427301555441.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `girls_guide`
--

CREATE TABLE `girls_guide` (
  `id` int(11) NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `girls_guide`
--

INSERT INTO `girls_guide` (`id`, `details`) VALUES
(1, '<p><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Girls Guide</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `guidlines`
--

CREATE TABLE `guidlines` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guidlines`
--

INSERT INTO `guidlines` (`id`, `date`, `title`, `description`, `image`) VALUES
(2, '2021-08-04', 'Feni Polytechnic Institute', '<p>af</p>', 'public/otherimg/040821_09_58_19.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `description`) VALUES
(1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Tahoma; text-align: justify;\">Human being has thirst for knowledge. To satisfy the thirst man acquires knowledge from educational institution. The educational institute named Al-Helal School was established in 1999 to fulfill the educational need with a difference.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `holidaylist`
--

CREATE TABLE `holidaylist` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holidaylist`
--

INSERT INTO `holidaylist` (`id`, `date`, `title`, `image`) VALUES
(3, '2021-08-05', 'Expense', 'public/otherimage/050821_08_12_10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hostelinformation`
--

CREATE TABLE `hostelinformation` (
  `id` int(11) NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hostelinformation`
--

INSERT INTO `hostelinformation` (`id`, `details`) VALUES
(1, '<p><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Information</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure`
--

CREATE TABLE `infrastructure` (
  `id` int(11) NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `infrastructure`
--

INSERT INTO `infrastructure` (`id`, `details`) VALUES
(1, '<p style=\"text-align: justify;\"><font face=\"Tahoma\"><font color=\"#333333\">Human being has thirst for knowledge. To satisfy the thirst man acquires knowledge from educational institution. The educational institute named Al-Helal School was established in 1999 to fulfill the educational need with a difference.</font></font></p>');

-- --------------------------------------------------------

--
-- Table structure for table `language_club`
--

CREATE TABLE `language_club` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessonplan`
--

CREATE TABLE `lessonplan` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lessonplan`
--

INSERT INTO `lessonplan` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(1, '2021-08-09', '4', 'Feni Polytechnic Institutes', 'public/otherimage/090821_16_22_27.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `library_information`
--

CREATE TABLE `library_information` (
  `id` int(11) NOT NULL,
  `library_information` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `library_information`
--

INSERT INTO `library_information` (`id`, `library_information`) VALUES
(1, '<span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Information</span>');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `name`, `father_name`, `mother_name`, `email`, `mobile`, `duration`, `profession`, `designation`, `address`, `image`, `type`, `status`) VALUES
(3, 'Admin', 'Bahar', 'Hosnea', 'admin@gmail', '1548454', '2 year', 'heads', 'Head', 'sdfsd', 'public/otherimage/1707143177223259.jpg', '0', '0'),
(4, 'Admin', 'Bahar', 'Hosneas', 'admin@gmail', '1548454', '2 year', 'heads', 'Head', 'sdfsd', 'public/otherimage/1707143195029072.jpg', '1', '0'),
(5, 'Admin', 'Bahar', 'Hosnea', 'admin@gmail', '1548454', '2 year', 'heads', 'Head', 'sdfsd', 'public/otherimage/1707143229756686.jpg', '3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `magazine`
--

CREATE TABLE `magazine` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magazine`
--

INSERT INTO `magazine` (`id`, `date`, `title`, `image`) VALUES
(2, '2021-08-11', 'Magazine', 'public/otherimage/110821_09_30_53.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mission_and_vision`
--

CREATE TABLE `mission_and_vision` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mission_and_vision`
--

INSERT INTO `mission_and_vision` (`id`, `description`) VALUES
(1, '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><span style=\"font-weight: 700;\">মিশন:</span></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">জ্ঞান, দক্ষতা, যোগ্যতা ও নৈতিকতার উতকর্ষ সাধন, মেধা, মনন, ও সৃজনশীলতায় শ্রেষ্ঠত্ব অর্জন, দেশপ্রেম ও জবাবদিহিতায় উদ্দীপ্ত নেতৃত্ব বিনির্মাণ এবং মানবকল্যাণে একক ও সামাজিক অংশগ্রহণ নিশ্চিত করা ।</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><span style=\"font-weight: 700;\">ভিশন:</span></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">কল্যাণময় সমাজ বিনির্মাণে সকল মানবিক মূল্যবোধে উজ্জীবিত কাঙ্খিত প্রজম্ম ও নেতৃত্ব তৈরী করা।</p>');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `description`, `image`, `date`) VALUES
(7, '২০২১ সালের এসএসসি পরীক্ষার্থীদের ১ম-২য়-৩য় এসাইনমেন্ট নোটিশ', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 24px;\">আল হেলাল একাডেমি</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 24px;\">২০২১ সালের এসএসসি পরীক্ষার্থীদের ১ম, ২য় ও ৩য় এসাইনমেন্ট (প্রতি বিষয়ে ২টি করে মোট ৬টি) স্কুল থেকে সংগ্রহ করে নির্দেশনা অনুসরণ করে সুন্দর ও পরিচ্ছন্নভাবে উত্তর লিখে আগামী ০৭ আগস্ট শনিবার সকাল ১০টায় স্কুলে নিয়ে আসতে হবে। স্কুল থেকে কভার পেইজ দেওয়া হবে। তখন প্রত্যেক ছাত্র ছাত্রীকে স্বহস্তে নিজ নিজ তথ্য পূরণ করে এসাইনমেন্ট জমা দিতে হবে। পরে কারো এসাইনমেন্ট জমা নেওয়া হবে না।</p>', 'public/Notice/270721_05_30_37.jpg', '2021-07-19'),
(8, '২০২১ এসএসসি এসাইনমেন্ট- ইতিহাস-১', '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 24px;\">আগামী ৭আগস্ট জমা দিতে হবে।</span><br></p>', 'public/Notice/270721_05_20_38.jpg', '2021-07-19'),
(9, '২০২১ এসএসসি এসাইনমেন্ট- ইতিহাস-২', '<p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 24px;\">আগামী ৭আগস্ট জমা দিতে হবে।</span><br></p>', 'public/Notice/270721_05_50_38.jpg', '2021-07-19'),
(10, '২০২১ এসএসসি এসাইনমেন্ট- পৌরনীতি-১', '<table class=\"table table-bordered table-responsive\" style=\"border-spacing: 0px; background-color: rgb(255, 255, 255); width: 913.6px; margin-bottom: 20px; border-color: rgb(221, 221, 221); min-height: 0.01%; color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 24px;\"><tbody><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><p style=\"margin-bottom: 10px;\"><span style=\"font-size: 24px;\">আগামী ৭আগস্ট জমা দিতে হবে।</span><br></p><p style=\"margin-bottom: 10px;\"></p></td></tr></tbody></table>', 'public/Notice/270721_05_24_39.jpg', '2021-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `onlineclassroutine`
--

CREATE TABLE `onlineclassroutine` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `onlineclassroutine`
--

INSERT INTO `onlineclassroutine` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(1, '2021-08-05', '7', 'Feni Polytechnic Institute', 'public/otherimage/050821_07_52_29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`id`, `title`, `details`, `image`, `type`) VALUES
(6, 'Slider', '<p>Slider<br></p>', 'public/photo_gallery/1711589376841367.jpg', '1'),
(9, 'Slider2', '<p>Slider2</p>', 'public/photo_gallery/1711589363760829.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `presidant_message`
--

CREATE TABLE `presidant_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `presidant_message`
--

INSERT INTO `presidant_message` (`id`, `name`, `title`, `details`, `image`) VALUES
(1, 'Md. Omar Faruk', 'Presidant Message', '<p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষকের বাণী</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বর্তমান যুগ বিজ্ঞান ও তথ্য-প্রযুক্তির উৎকর্ষের যুগ। আধুনিক বিশ্বের সকল ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তি পালন করছে জাদুর কাঠির মতো বিস্ময়কর ভূমিকা। শিক্ষা ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহার ইতিমধ্যেই বিশ্বব্যাপী বিরাট আলোড়নের সৃষ্টি করেছে। এ প্রেক্ষাপটে বাংলাদেশ সরকার এদেশের শিক্ষা ব্যবস্থা আধুনিকায়নের লক্ষ্যে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহারকে সর্বাধিক গুরুত্ব দিয়ে সকল শিক্ষা প্রতিষ্ঠানকে অভিন্ন নেটওয়ার্কের আওতায় নিয়ে আসার ব্যাপারে ব্যাপক কর্মসূচি গ্রহণ করেছে।</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বাংলাদেশের শিক্ষা ব্যবস্থার আধুনিকায়নে সরকারের আহ্বানে সাড়া দিয়ে যে সকল শিক্ষা প্রতিষ্ঠান ইতোমধ্যে বিজ্ঞান ভিত্তিক শিক্ষা উপকরণ ও তথ্য-প্রযুক্তির ব্যবহার শুরু করেছে ।&nbsp; এ শিক্ষা প্রতিষ্ঠানে ইতিমধ্যে বেশ কয়েকটি স্মার্ট ক্লাস রুম স্থাপন করা হয়েছে। এছাড়াও কলেজ একাডেমিক ও প্রশাসনিক কর্মকাণ্ডকে আরো গতিশীল ও তথ্য-প্রযুক্তি বান্ধব করার লক্ষ্যে একটি সমৃদ্ধ ওয়েব সাইট চালু করার কার্যক্রম সম্পন্ন করা হয়েছে।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আমি আশাকরি এর মধ্যদিয়ে আমাদের শিক্ষার্থীরাই শুধু নয় সারা দেশের শিক্ষা ব্যবস্থার একটি সামাজিকরণ সম্ভব হবে। আমি আমাদের বিদ্যালয়ের সহকর্মী, শিক্ষার্থী, অভিভাবক সুধিমহল সকলকে আন্তরিক শুভেচ্ছা জানাই ।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষক<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আল-হেলাল একাডেমী সোনাগাজী&nbsp;<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">সোনাগাজী, ফেনী।&nbsp;</p>', 'public/message/1706427328909478.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `principle_message`
--

CREATE TABLE `principle_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `principle_message`
--

INSERT INTO `principle_message` (`id`, `name`, `title`, `details`, `image`) VALUES
(1, 'Md. Omar Faruk', 'Message From Headmaster', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষকের বাণী</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বর্তমান যুগ বিজ্ঞান ও তথ্য-প্রযুক্তির উৎকর্ষের যুগ। আধুনিক বিশ্বের সকল ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তি পালন করছে জাদুর কাঠির মতো বিস্ময়কর ভূমিকা। শিক্ষা ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহার ইতিমধ্যেই বিশ্বব্যাপী বিরাট আলোড়নের সৃষ্টি করেছে। এ প্রেক্ষাপটে বাংলাদেশ সরকার এদেশের শিক্ষা ব্যবস্থা আধুনিকায়নের লক্ষ্যে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহারকে সর্বাধিক গুরুত্ব দিয়ে সকল শিক্ষা প্রতিষ্ঠানকে অভিন্ন নেটওয়ার্কের আওতায় নিয়ে আসার ব্যাপারে ব্যাপক কর্মসূচি গ্রহণ করেছে।</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বাংলাদেশের শিক্ষা ব্যবস্থার আধুনিকায়নে সরকারের আহ্বানে সাড়া দিয়ে যে সকল শিক্ষা প্রতিষ্ঠান ইতোমধ্যে বিজ্ঞান ভিত্তিক শিক্ষা উপকরণ ও তথ্য-প্রযুক্তির ব্যবহার শুরু করেছে ।&nbsp; এ শিক্ষা প্রতিষ্ঠানে ইতিমধ্যে বেশ কয়েকটি স্মার্ট ক্লাস রুম স্থাপন করা হয়েছে। এছাড়াও কলেজ একাডেমিক ও প্রশাসনিক কর্মকাণ্ডকে আরো গতিশীল ও তথ্য-প্রযুক্তি বান্ধব করার লক্ষ্যে একটি সমৃদ্ধ ওয়েব সাইট চালু করার কার্যক্রম সম্পন্ন করা হয়েছে।<br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আমি আশাকরি এর মধ্যদিয়ে আমাদের শিক্ষার্থীরাই শুধু নয় সারা দেশের শিক্ষা ব্যবস্থার একটি সামাজিকরণ সম্ভব হবে। আমি আমাদের বিদ্যালয়ের সহকর্মী, শিক্ষার্থী, অভিভাবক সুধিমহল সকলকে আন্তরিক শুভেচ্ছা জানাই ।<br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষক<br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আল-হেলাল একাডেমী সোনাগাজী&nbsp;<br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">সোনাগাজী, ফেনী।&nbsp;</p>', 'public/message/1706411151133905.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prospects`
--

INSERT INTO `prospects` (`id`, `date`, `title`, `details`) VALUES
(2, '2021-08-27', 'Feni Polytechnic Institutess', '<p style=\"padding: 0px; color: rgb(33, 37, 41); font-family: &quot;Baloo Chettan 2&quot;, AdorshoLipi, cursive; text-align: justify;\"><span style=\"color: rgb(88, 88, 88); font-family: Poppins, sans-serif; font-size: 15px; font-weight: 700; text-align: left;\">Information</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `red_crescent`
--

CREATE TABLE `red_crescent` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruleregulation`
--

CREATE TABLE `ruleregulation` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ruleregulation`
--

INSERT INTO `ruleregulation` (`id`, `title`, `details`) VALUES
(1, 'Rules & Regulation', '<p><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Information</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinf`
--

CREATE TABLE `schoolinf` (
  `id` int(11) NOT NULL,
  `student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `staff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schoolinf`
--

INSERT INTO `schoolinf` (`id`, `student`, `teacher`, `staff`, `department`) VALUES
(1, '5', '1000', '500', '80');

-- --------------------------------------------------------

--
-- Table structure for table `science_fair`
--

CREATE TABLE `science_fair` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scouts`
--

CREATE TABLE `scouts` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `phone`, `address`, `image`) VALUES
(1, 'Iqbal Memorial Degree College', 'info@imc.edu.bd', '+88 01309106553', '<p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\"><br></font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">Iqbal Memorial Degree College</font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">College Location: Dagonbhuiyan, Feni,</font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">Year of Establishment: 1985</font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">College EIIN: 106553</font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">Email: info@imc.edu.bd</font></p><p style=\"text-align: justify; \"><font color=\"#333333\" face=\"Times New Roman, Times, serif\">Mobile: 01309106553, 0332379139&nbsp;</font></p><p style=\"text-align: justify; \"><br></p>', 'public/settings/1711588470079408.gif');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentinfochart`
--

CREATE TABLE `studentinfochart` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `studentinfochart`
--

INSERT INTO `studentinfochart` (`id`, `date`, `title`, `image`) VALUES
(2, '2021-08-02', 'Expense', 'public/otherimage/020821_06_17_02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_cafinet`
--

CREATE TABLE `student_cafinet` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_tour`
--

CREATE TABLE `study_tour` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(1, '2021-08-09', '7', 'Feni Polytechnic Institutes', 'public/otherimage/090821_16_59_26.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `syllabas`
--

CREATE TABLE `syllabas` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `syllabas`
--

INSERT INTO `syllabas` (`id`, `date`, `class_id`, `title`, `image`) VALUES
(2, '2021-08-09', '3', 'Feni Polytechnic Institute', 'public/otherimage/090821_16_34_27.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_staff`
--

CREATE TABLE `teacher_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `join_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpo_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parmanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_staff`
--

INSERT INTO `teacher_staff` (`id`, `name`, `designation`, `department_name`, `voter_id`, `date_of_birth`, `blood`, `religion`, `relationship`, `father_name`, `mother_name`, `mobile`, `email`, `join_date`, `mpo_date`, `present_address`, `parmanent_address`, `education`, `gender`, `type`, `status`, `image`) VALUES
(2, 'Shuvos', 'Heads', 'Select Department', '56564426654', '2021-07-27', 'A-', 'Islam', 'Unmarried', 'Bahars', 'Hosneas', '01811358603', 'admin@gmail.coms', '2021-07-27', '2021-07-28', 'Fenis', 'Fenis', '<p>Diplomas</p>', 'Female', '0', '0', 'public/teacher_staff/1706273453762108.png'),
(3, 'khan', 'Head', 'Select Department', '56564', '2021-07-27', 'A+', 'Islam', 'Married', 'fa', 'ma', '1548454', 'admin@gmail.com', '2021-07-27', '2021-07-27', 'sdfsd', 'sdfsd', '<p>a</p>', 'Male', '1', '1', 'public/teacher_staff/1706423921160640.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transferprocedure`
--

CREATE TABLE `transferprocedure` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transferprocedure`
--

INSERT INTO `transferprocedure` (`id`, `date`, `title`, `details`) VALUES
(2, '2021-08-05', 'Feni Polytechnic Institute', '<p>Feni Polytechnic Institutes<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`id`, `title`, `details`, `image`) VALUES
(1, 'Uniform', '<p><span style=\"color: rgb(88, 88, 88); font-size: 15px; font-weight: 700;\">Information</span><br></p>', 'public/otherimage/050821_07_22_51.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usefull_link`
--

CREATE TABLE `usefull_link` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull_link`
--

INSERT INTO `usefull_link` (`id`, `title`, `url`) VALUES
(17, 'বেসরকারি শিক্ষক নিবন্ধন ও প্রত্যয়ন কর্তৃপক্ষ (এনটিআরসিএ)', 'http://www.ntrca.gov.bd'),
(18, 'মাধ্যমিক ও উচ্চশিক্ষা অধিদপ্তর', 'http://www.dshe.gov.bd'),
(19, 'শিক্ষা মন্ত্রণালয়', 'http://www.moedu.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$seRtoV7Wa0k6H69/J4lg5ePvQ3CB.1zyHL9lwDOgLHxXO2TM4SokK', 'CK8nCVVma4aNoQhEuW2thlKiUDos5r1t5fjjvFKM4BqV3DTFPAtUIfJELlQQ', '2021-07-23 22:40:50', '2021-07-23 22:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `viceprinciple_message`
--

CREATE TABLE `viceprinciple_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `viceprinciple_message`
--

INSERT INTO `viceprinciple_message` (`id`, `name`, `title`, `details`, `image`) VALUES
(1, 'Md. Omar Faruk', 'Message From Vice-Principle', '<p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষকের বাণী</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বর্তমান যুগ বিজ্ঞান ও তথ্য-প্রযুক্তির উৎকর্ষের যুগ। আধুনিক বিশ্বের সকল ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তি পালন করছে জাদুর কাঠির মতো বিস্ময়কর ভূমিকা। শিক্ষা ক্ষেত্রে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহার ইতিমধ্যেই বিশ্বব্যাপী বিরাট আলোড়নের সৃষ্টি করেছে। এ প্রেক্ষাপটে বাংলাদেশ সরকার এদেশের শিক্ষা ব্যবস্থা আধুনিকায়নের লক্ষ্যে বিজ্ঞান ও তথ্য-প্রযুক্তির ব্যবহারকে সর্বাধিক গুরুত্ব দিয়ে সকল শিক্ষা প্রতিষ্ঠানকে অভিন্ন নেটওয়ার্কের আওতায় নিয়ে আসার ব্যাপারে ব্যাপক কর্মসূচি গ্রহণ করেছে।</p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">বাংলাদেশের শিক্ষা ব্যবস্থার আধুনিকায়নে সরকারের আহ্বানে সাড়া দিয়ে যে সকল শিক্ষা প্রতিষ্ঠান ইতোমধ্যে বিজ্ঞান ভিত্তিক শিক্ষা উপকরণ ও তথ্য-প্রযুক্তির ব্যবহার শুরু করেছে ।&nbsp; এ শিক্ষা প্রতিষ্ঠানে ইতিমধ্যে বেশ কয়েকটি স্মার্ট ক্লাস রুম স্থাপন করা হয়েছে। এছাড়াও কলেজ একাডেমিক ও প্রশাসনিক কর্মকাণ্ডকে আরো গতিশীল ও তথ্য-প্রযুক্তি বান্ধব করার লক্ষ্যে একটি সমৃদ্ধ ওয়েব সাইট চালু করার কার্যক্রম সম্পন্ন করা হয়েছে।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আমি আশাকরি এর মধ্যদিয়ে আমাদের শিক্ষার্থীরাই শুধু নয় সারা দেশের শিক্ষা ব্যবস্থার একটি সামাজিকরণ সম্ভব হবে। আমি আমাদের বিদ্যালয়ের সহকর্মী, শিক্ষার্থী, অভিভাবক সুধিমহল সকলকে আন্তরিক শুভেচ্ছা জানাই ।<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\"><br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">প্রধান শিক্ষক<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">আল-হেলাল একাডেমী সোনাগাজী&nbsp;<br style=\"padding: 0px; margin: 0px;\"></p><p style=\"padding: 0px; margin-bottom: 10px; text-align: justify; color: rgb(51, 51, 51); font-family: Roboto, sans-serif;\">সোনাগাজী, ফেনী।&nbsp;</p>', 'public/message/1706411191869992.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery`
--

CREATE TABLE `video_gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_gallery`
--

INSERT INTO `video_gallery` (`id`, `title`, `details`, `url`) VALUES
(2, 'Mina Raju UNICEF', 'Mina Raju UNICEF', 'https://www.youtube.com/embed/5UG5pcjW2qI'),
(4, 'Meena: Mono Alo Meenar Grame', 'Meena: Mono Alo Meenar Grame', 'https://www.youtube.com/embed/tCbe9eEjRho');

-- --------------------------------------------------------

--
-- Table structure for table `yearlyworkingplan`
--

CREATE TABLE `yearlyworkingplan` (
  `id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yearlyworkingplan`
--

INSERT INTO `yearlyworkingplan` (`id`, `date`, `title`, `image`) VALUES
(2, '2021-08-02', 'Feni Polytechnic Institute', 'public/otherimage/020821_07_58_22.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_school`
--
ALTER TABLE `about_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academiccalender`
--
ALTER TABLE `academiccalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_group`
--
ALTER TABLE `add_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_section`
--
ALTER TABLE `add_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissionprocedure`
--
ALTER TABLE `admissionprocedure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissionresult`
--
ALTER TABLE `admissionresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissionrules`
--
ALTER TABLE `admissionrules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissiontestquestion`
--
ALTER TABLE `admissiontestquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bncc`
--
ALTER TABLE `bncc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizencharter`
--
ALTER TABLE `citizencharter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroutine`
--
ALTER TABLE `classroutine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer_club`
--
ALTER TABLE `computer_club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultural`
--
ALTER TABLE `cultural`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debate`
--
ALTER TABLE `debate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examroutine`
--
ALTER TABLE `examroutine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examrules`
--
ALTER TABLE `examrules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `founder_message`
--
ALTER TABLE `founder_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `girls_guide`
--
ALTER TABLE `girls_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guidlines`
--
ALTER TABLE `guidlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidaylist`
--
ALTER TABLE `holidaylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostelinformation`
--
ALTER TABLE `hostelinformation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructure`
--
ALTER TABLE `infrastructure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_club`
--
ALTER TABLE `language_club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessonplan`
--
ALTER TABLE `lessonplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_information`
--
ALTER TABLE `library_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mission_and_vision`
--
ALTER TABLE `mission_and_vision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineclassroutine`
--
ALTER TABLE `onlineclassroutine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presidant_message`
--
ALTER TABLE `presidant_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principle_message`
--
ALTER TABLE `principle_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_crescent`
--
ALTER TABLE `red_crescent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruleregulation`
--
ALTER TABLE `ruleregulation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinf`
--
ALTER TABLE `schoolinf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `science_fair`
--
ALTER TABLE `science_fair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scouts`
--
ALTER TABLE `scouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentinfochart`
--
ALTER TABLE `studentinfochart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_cafinet`
--
ALTER TABLE `student_cafinet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_tour`
--
ALTER TABLE `study_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabas`
--
ALTER TABLE `syllabas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_staff`
--
ALTER TABLE `teacher_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transferprocedure`
--
ALTER TABLE `transferprocedure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usefull_link`
--
ALTER TABLE `usefull_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `viceprinciple_message`
--
ALTER TABLE `viceprinciple_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_gallery`
--
ALTER TABLE `video_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yearlyworkingplan`
--
ALTER TABLE `yearlyworkingplan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_school`
--
ALTER TABLE `about_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `academiccalender`
--
ALTER TABLE `academiccalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_group`
--
ALTER TABLE `add_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `add_section`
--
ALTER TABLE `add_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admissionprocedure`
--
ALTER TABLE `admissionprocedure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admissionresult`
--
ALTER TABLE `admissionresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admissionrules`
--
ALTER TABLE `admissionrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admissiontestquestion`
--
ALTER TABLE `admissiontestquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bncc`
--
ALTER TABLE `bncc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booklist`
--
ALTER TABLE `booklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `citizencharter`
--
ALTER TABLE `citizencharter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classroutine`
--
ALTER TABLE `classroutine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `computer_club`
--
ALTER TABLE `computer_club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cultural`
--
ALTER TABLE `cultural`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `debate`
--
ALTER TABLE `debate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `examroutine`
--
ALTER TABLE `examroutine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `examrules`
--
ALTER TABLE `examrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `founder_message`
--
ALTER TABLE `founder_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `girls_guide`
--
ALTER TABLE `girls_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guidlines`
--
ALTER TABLE `guidlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidaylist`
--
ALTER TABLE `holidaylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hostelinformation`
--
ALTER TABLE `hostelinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infrastructure`
--
ALTER TABLE `infrastructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_club`
--
ALTER TABLE `language_club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lessonplan`
--
ALTER TABLE `lessonplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `library_information`
--
ALTER TABLE `library_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `magazine`
--
ALTER TABLE `magazine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mission_and_vision`
--
ALTER TABLE `mission_and_vision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `onlineclassroutine`
--
ALTER TABLE `onlineclassroutine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `presidant_message`
--
ALTER TABLE `presidant_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `principle_message`
--
ALTER TABLE `principle_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `red_crescent`
--
ALTER TABLE `red_crescent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ruleregulation`
--
ALTER TABLE `ruleregulation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schoolinf`
--
ALTER TABLE `schoolinf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `science_fair`
--
ALTER TABLE `science_fair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scouts`
--
ALTER TABLE `scouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentinfochart`
--
ALTER TABLE `studentinfochart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_cafinet`
--
ALTER TABLE `student_cafinet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `study_tour`
--
ALTER TABLE `study_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabas`
--
ALTER TABLE `syllabas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_staff`
--
ALTER TABLE `teacher_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transferprocedure`
--
ALTER TABLE `transferprocedure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usefull_link`
--
ALTER TABLE `usefull_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `viceprinciple_message`
--
ALTER TABLE `viceprinciple_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_gallery`
--
ALTER TABLE `video_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `yearlyworkingplan`
--
ALTER TABLE `yearlyworkingplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
