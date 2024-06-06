-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 12:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_college_chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add userreg', 7, 'add_userreg'),
(20, 'Can change userreg', 7, 'change_userreg'),
(21, 'Can delete userreg', 7, 'delete_userreg'),
(22, 'Can add chatbot_data', 8, 'add_chatbot_data'),
(23, 'Can change chatbot_data', 8, 'change_chatbot_data'),
(24, 'Can delete chatbot_data', 8, 'delete_chatbot_data'),
(25, 'Can add chatmessage', 9, 'add_chatmessage'),
(26, 'Can change chatmessage', 9, 'change_chatmessage'),
(27, 'Can delete chatmessage', 9, 'delete_chatmessage');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'projectadmin', 'chatbot_data'),
(6, 'sessions', 'session'),
(9, 'user', 'chatmessage'),
(7, 'user', 'userreg');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-26 13:05:52.725597'),
(2, 'auth', '0001_initial', '2022-02-26 13:06:08.223715'),
(3, 'admin', '0001_initial', '2022-02-26 13:06:13.098943'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-26 13:06:13.215409'),
(5, 'contenttypes', '0002_remove_content_type_name', '2022-02-26 13:06:16.325206'),
(6, 'auth', '0002_alter_permission_name_max_length', '2022-02-26 13:06:17.379056'),
(7, 'auth', '0003_alter_user_email_max_length', '2022-02-26 13:06:17.547869'),
(8, 'auth', '0004_alter_user_username_opts', '2022-02-26 13:06:17.678950'),
(9, 'auth', '0005_alter_user_last_login_null', '2022-02-26 13:06:19.182458'),
(10, 'auth', '0006_require_contenttypes_0002', '2022-02-26 13:06:19.282056'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2022-02-26 13:06:19.497758'),
(12, 'auth', '0008_alter_user_username_max_length', '2022-02-26 13:06:19.719539'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2022-02-26 13:06:19.950928'),
(14, 'sessions', '0001_initial', '2022-02-26 13:06:21.496614'),
(15, 'user', '0001_initial', '2022-02-26 13:06:22.037831'),
(16, 'projectadmin', '0001_initial', '2022-02-26 13:46:09.542656'),
(17, 'user', '0002_chatmessage', '2022-03-02 13:22:36.948728'),
(18, 'projectadmin', '0002_auto_20220305_1243', '2022-03-05 07:13:18.582233');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0avjvkj24a4573gu9ltvfebmuf7me2vk', 'NDJmMDEzNjljNGYxY2YwODBiZGY0ZjExNTY2MDg2MmI0MTEzMWQ0Yzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJyYW15YSJ9', '2022-04-04 10:31:12.543039'),
('1c70ekt7gl3jf54qs09bek5cb9djzwp6', 'NDJmMDEzNjljNGYxY2YwODBiZGY0ZjExNTY2MDg2MmI0MTEzMWQ0Yzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJyYW15YSJ9', '2022-03-12 13:07:18.491391'),
('ayjcd8og7e30bbwuu05mlpxnqy9jwm3f', 'NDJmMDEzNjljNGYxY2YwODBiZGY0ZjExNTY2MDg2MmI0MTEzMWQ0Yzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJyYW15YSJ9', '2022-03-16 13:05:41.460313'),
('qlmb6lh5elx8a38eojq1mv182z2e09uz', 'Mzc4ODgxNWJhMGRlNTgyZTU2YjNhNTMwZjM1NmIxODU2MTcxMzYxMTp7InVzZXJpZCI6MiwidXNlcm5hbWUiOiJiaHV2YW5hIn0=', '2022-03-26 10:51:17.311718'),
('s1qby7m40vnh4ma9oru0ily0rck3ov7c', 'YzkyNWMzNThiMzNhZjEwNDZkMTRmMzIwMjZmODliY2Y3YjgwNjczZTp7InVzZXJpZCI6MywidXNlcm5hbWUiOiJkaXZ5YSJ9', '2022-03-20 12:07:50.743748'),
('tmyebx7jdzp6yg3n51z1cggcp0jxn6n7', 'NDJmMDEzNjljNGYxY2YwODBiZGY0ZjExNTY2MDg2MmI0MTEzMWQ0Yzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJyYW15YSJ9', '2022-03-19 07:01:17.613745');

-- --------------------------------------------------------

--
-- Table structure for table `projectadmin_chatbot_data`
--

CREATE TABLE `projectadmin_chatbot_data` (
  `id` int(11) NOT NULL,
  `qrequest` varchar(300) NOT NULL,
  `qresponse` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectadmin_chatbot_data`
--

INSERT INTO `projectadmin_chatbot_data` (`id`, `qrequest`, `qresponse`) VALUES
(4, 'Hi', 'Hello'),
(5, 'How are you', 'Good to see you again!'),
(6, 'Is anyone there?', 'Hi there, how can I help?'),
(7, 'Hello', 'Hello!'),
(8, 'Good day', 'Hello'),
(9, 'cya', 'Goodbye!'),
(10, 'hai', 'hai'),
(11, 'name', 'I\'m College Enquiry Chatbot'),
(12, 'your name', 'I\'m College Enquiry Chatbot'),
(13, 'do you have a name', 'You can call me Chatbot.'),
(14, 'what are you called', 'You can call me Chatbot'),
(15, 'what is your name', 'You can call me Chatbot'),
(16, 'what should I call you', 'You can call me Chatbot'),
(17, 'whats your name?', 'You can call me Chatbot.'),
(18, 'what are you', 'I\'m College Enquiry Chatbot'),
(19, 'who is this', 'I\'m College Enquiry Chatbot'),
(20, 'who is this', 'I\'m College Enquiry Chatbot'),
(21, 'what am i chatting to', 'I\'m College Enquiry Chatbot'),
(22, 'who am i taking to', 'I\'m College Enquiry Chatbot'),
(23, 'timing of college', 'College is open 9am-5pm Monday-Friday!'),
(24, 'what is college timing', 'College is open 9am-5pm Monday-Friday!'),
(25, 'working days', 'College is open 9am-5pm Monday-Friday!'),
(26, 'when are you guys open', 'College is open 9am-5pm Monday-Friday!'),
(27, 'what are your hours', 'College is open 9am-5pm Monday-Friday!'),
(28, 'hours of operation', 'College is open 9am-5pm Monday-Friday!'),
(29, 'when is the college open', 'College is open 9am-5pm Monday-Friday!'),
(30, 'college timing', 'College is open 9am-5pm Monday-Friday!'),
(31, 'what about college timing', 'College is open 9am-5pm Monday-Friday!'),
(32, 'is college open on saturday', 'College is open 9am-5pm Monday-Friday!'),
(33, 'tell something about college timing', 'College is open 9am-5pm Monday-Friday!'),
(34, 'what is the college  hours', 'College is open 9am-5pm Monday-Friday!'),
(35, 'when should i come to college', 'College is open 9am-5pm Monday-Friday!'),
(36, 'when should i attend college', 'College is open 9am-5pm Monday-Friday!'),
(37, 'what is my college time', 'College is open 9am-5pm Monday-Friday!'),
(38, 'college timing', 'College is open 9am-5pm Monday-Friday!'),
(39, 'timing college', 'College is open 9am-5pm Monday-Friday!'),
(40, 'more info', 'You can contact at 02192669000'),
(41, 'contact info', 'You can contact at 02192669000'),
(42, 'how to contact college', 'You can contact at 02192669000'),
(43, 'college telephone number', 'You can contact at 02192669000'),
(44, 'college number', 'You can contact at 02192669000'),
(45, 'What is your contact no', 'You can contact at 02192669000'),
(46, 'Contact number?', 'You can contact at 02192669000'),
(47, 'how to call you', 'You can contact at 02192669000'),
(48, 'College phone no?', 'You can contact at 02192669000'),
(49, 'how can i contact you', 'You can contact at 02192669000'),
(50, 'Can i get your phone number', 'You can contact at 02192669000'),
(51, 'how can i call you', 'You can contact at 02192669000'),
(52, 'phone number', 'You can contact at 02192669000'),
(53, 'phone no', 'You can contact at 02192669000'),
(54, 'call', 'You can contact at 02192669000'),
(56, 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(57, 'list of courses offered', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(58, 'list of courses offered in PHCET', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(59, 'what are the courses offered in your college?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(60, 'courses?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(61, 'courses offered', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(62, 'courses offered in PHCET', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(63, 'courses you offer', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(64, 'branches?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(65, 'courses available at PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(66, 'branches available at PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(67, 'what are the courses in PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(68, 'what are branches in PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(69, 'branches available in PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(70, 'can you tell me the courses available in PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(71, 'can you tell me the branches available in PHCET?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academics/'),
(72, 'information about fee', 'For Fee details visit https://phcet.ac.in/academics/admissions/fee-structure/'),
(73, 'information on fee', 'For Fee details visit https://phcet.ac.in/academics/admissions/fee-structure/'),
(74, 'where is the college located', 'Khalapur, HOC Colony Rd, Taluka, Rasayani, Maharashtra 410207 For more details visit https://goo.gl/maps/nABAciXu58ty7PyX6'),
(75, 'location', 'Khalapur, HOC Colony Rd, Taluka, Rasayani, Maharashtra 410207 For more details visit https://goo.gl/maps/nABAciXu58ty7PyX6'),
(76, 'address', 'location'),
(77, 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility'),
(78, 'hostel servive', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility\"\r\n                        		'),
(79, 'infrastructure', 'For infrastructure details visit https://phcet.ac.in/about/infrastructure-and-facilities\"\r\n                      '),
(80, 'departments and labs', 'For infrastructure details visit https://phcet.ac.in/about/infrastructure-and-facilities\"\r\n                       '),
(81, 'Is there a cafetaria in college', 'yes available'),
(82, 'canteen facilities', 'available'),
(83, 'food menu', 'The college canteen serves Tea, Coffee, Vada Pav, Misal Pav, Bread Pakoda, Thaali, Samosa, Dal Rice, Biryani and many more dishes.'),
(84, 'sports and games', 'PHCET encourages all-round development of students and hence provides sports facilities in the campus.');

-- --------------------------------------------------------

--
-- Table structure for table `user_chatmessage`
--

CREATE TABLE `user_chatmessage` (
  `id` int(11) NOT NULL,
  `uid` varchar(300) NOT NULL,
  `uname` varchar(300) NOT NULL,
  `sendermesage` varchar(300) NOT NULL,
  `rmessage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_chatmessage`
--

INSERT INTO `user_chatmessage` (`id`, `uid`, `uname`, `sendermesage`, `rmessage`) VALUES
(16, '1', 'ramya', 'hai', 'hai'),
(21, '1', 'ramya', 'information on fee', 'For Fee details visit <a target=\"_blank\" href=\"https://phcet.ac.in/academics/admissions/fee-structure/\"> here</a>'),
(22, '1', 'ramya', 'branches?', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit<a target=\"_blank\" href=\"htt'),
(23, '2', 'bhuvana', 'hai', 'hai'),
(24, '2', 'bhuvana', 'fee', ''),
(25, '2', 'bhuvana', 'name', 'I\'m College Enquiry Chatbot'),
(26, '2', 'bhuvana', 'timing of college', 'College is open 9am-5pm Monday-Friday!'),
(27, '2', 'bhuvana', 'how to contact college', 'You can contact at 02192669000'),
(28, '2', 'bhuvana', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(29, '2', 'bhuvana', 'information about fee', 'For Fee details visit https://phcet.ac.in/academics/admissions/fee-structure/'),
(30, '2', 'bhuvana', 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility'),
(31, '2', 'bhuvana', 'infrastructure', 'For infrastructure details visit https://phcet.ac.in/about/infrastructure-and-facilities\"\r\n                      '),
(32, '2', 'bhuvana', 'is there any canteen', ''),
(33, '2', 'bhuvana', 'canteen facility', ''),
(34, '3', 'divya', 'hai\r\n', ''),
(35, '3', 'divya', 'hi', 'Hello'),
(36, '3', 'divya', 'name', 'I\'m College Enquiry Chatbot'),
(37, '3', 'divya', 'timing of college', 'College is open 9am-5pm Monday-Friday!'),
(38, '3', 'divya', 'contact info', 'You can contact at 02192669000'),
(39, '3', 'divya', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(40, '3', 'divya', 'information on fee', 'For Fee details visit https://phcet.ac.in/academics/admissions/fee-structure/'),
(41, '3', 'divya', 'canteen facilities', 'available'),
(42, '3', 'divya', 'food menu', 'The college canteen serves Tea, Coffee, Vada Pav, Misal Pav, Bread Pakoda, Thaali, Samosa, Dal Rice, Biryani and many more dishes.'),
(43, '3', 'divya', 'location', 'Khalapur, HOC Colony Rd, Taluka, Rasayani, Maharashtra 410207 For more details visit https://goo.gl/maps/nABAciXu58ty7PyX6'),
(44, '2', 'bhuvana', 'timing of college', 'College is open 9am-5pm Monday-Friday!'),
(45, '2', 'bhuvana', 'timing of college', 'College is open 9am-5pm Monday-Friday!'),
(46, '2', 'bhuvana', 'working days', 'College is open 9am-5pm Monday-Friday!'),
(47, '2', 'bhuvana', 'lemmatized_string\r\n', ''),
(48, '2', 'bhuvana', 'working days', ''),
(49, '2', 'bhuvana', 'working days', 'College is open 9am-5pm Monday-Friday!'),
(50, '2', 'bhuvana', 'hours of operation', ''),
(51, '2', 'bhuvana', 'hours of operation', ''),
(52, '2', 'bhuvana', 'hours of operation', ''),
(53, '2', 'bhuvana', 'hours of operation', ''),
(54, '2', 'bhuvana', 'hours of operation', ''),
(55, '2', 'bhuvana', 'working days', 'College is open 9am-5pm Monday-Friday!'),
(56, '2', 'bhuvana', 'canteen facilities', ''),
(57, '2', 'bhuvana', 'canteen facilities', 'available'),
(58, '2', 'bhuvana', 'canteen facilities', 'available'),
(59, '2', 'bhuvana', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(60, '2', 'bhuvana', 'list of courses\r\n', ''),
(61, '2', 'bhuvana', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(62, '2', 'bhuvana', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(63, '2', 'bhuvana', 'list of courses', 'Bachelors Programmes provided are Automobile Engineering, Civil Engineering, Computer Engineering, Electrical Engineering, Electronics and Telecommunications Engineering, Information Technology Engineering,Mechanical Engineering and Applied Sciences.For more details visit https://phcet.ac.in/academi'),
(64, '2', 'bhuvana', 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility'),
(65, '2', 'bhuvana', 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility'),
(66, '2', 'bhuvana', 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility'),
(67, '2', 'bhuvana', 'hostel facility\r\n', ''),
(68, '2', 'bhuvana', 'hostel facility', 'PHCET provides safe and affordable hostel facilities for boys and girls. For more details visit https://phcet.ac.in/about/infrastructure-and-facilities/hostel-facility');

-- --------------------------------------------------------

--
-- Table structure for table `user_userreg`
--

CREATE TABLE `user_userreg` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `location` varchar(300) NOT NULL,
  `uname` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_userreg`
--

INSERT INTO `user_userreg` (`id`, `name`, `email`, `mobile`, `location`, `uname`, `password`) VALUES
(1, 'ramya', 'ramya@gmail.com', '9878787878', 'chennai', 'ramya', 'ramya'),
(2, 'bhuvana', 'bhuvana@gmail.com', '9878787878', 'chennai', 'bhuvana', 'bhuvana'),
(3, 'divya', 'divya@gmail.com', '9878787878', 'chennai', 'divya', 'divya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `projectadmin_chatbot_data`
--
ALTER TABLE `projectadmin_chatbot_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_chatmessage`
--
ALTER TABLE `user_chatmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_userreg`
--
ALTER TABLE `user_userreg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `projectadmin_chatbot_data`
--
ALTER TABLE `projectadmin_chatbot_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_chatmessage`
--
ALTER TABLE `user_chatmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_userreg`
--
ALTER TABLE `user_userreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
