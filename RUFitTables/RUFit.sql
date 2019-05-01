-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql300.epizy.com
-- Generation Time: Apr 30, 2019 at 10:13 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_23108305_RUFit`
--

-- --------------------------------------------------------

--
-- Table structure for table `Claimed`
--

CREATE TABLE IF NOT EXISTS `Claimed` (
  `UID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  PRIMARY KEY (`UID`,`RID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Claimed`
--

INSERT INTO `Claimed` (`UID`, `RID`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Completed_Workouts`
--

CREATE TABLE IF NOT EXISTS `Completed_Workouts` (
  `UID` int(11) NOT NULL,
  `Comp_Workout_Date` date NOT NULL,
  PRIMARY KEY (`UID`,`Comp_Workout_Date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Completed_Workouts`
--

INSERT INTO `Completed_Workouts` (`UID`, `Comp_Workout_Date`) VALUES
(3, '2019-04-22'),
(3, '2019-04-25'),
(4, '2019-04-25'),
(11, '2019-04-22'),
(13, '2019-04-22'),
(14, '2019-04-21'),
(15, '2019-04-22'),
(16, '2019-04-23'),
(17, '2019-04-23'),
(18, '2019-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `Exercises`
--

CREATE TABLE IF NOT EXISTS `Exercises` (
  `Exercise_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Exercise_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Exercise_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `Exercises`
--

INSERT INTO `Exercises` (`Exercise_ID`, `Exercise_Name`) VALUES
(6, 'Dumbbell Bench Press'),
(5, 'Barbell Bench Press'),
(7, 'Barbell Incline Bench Press'),
(14, 'Cable Flies'),
(9, 'Dumbbell Incline Bench Press'),
(15, 'Decline Barbell Bench Press'),
(13, 'Dumbbell Flies'),
(12, 'Peck Deck'),
(16, 'Decline Dumbbell Bench Press'),
(17, 'Back Squats'),
(18, 'Leg Press'),
(19, 'Front Squats'),
(20, 'Leg Extensions'),
(21, 'Seated Leg Curls'),
(22, 'Prone Leg Curls'),
(23, 'Standing Calve Raises'),
(24, 'Seated Calve Raises'),
(25, 'Hack Squats'),
(26, 'Landmine Squats'),
(27, 'Dumbbell Hammer Curls'),
(28, 'Dumbbell Curls'),
(29, 'Incline Dumbbell Curls'),
(30, 'Barbell Curls'),
(31, 'EZ Curls'),
(32, 'Skull Crushers'),
(33, 'Dumbbell Extensions'),
(34, 'Dumbbell Kickbacks'),
(35, 'Rope Extensions'),
(36, 'EZ Extensions'),
(37, 'Barbell Shoulder Press'),
(38, 'Dumbbell Shoulder Press'),
(39, 'Dumbbell Front Raises'),
(40, 'Dumbbell Side Raises'),
(41, 'Lateral Raise Machine');

-- --------------------------------------------------------

--
-- Table structure for table `Goals`
--

CREATE TABLE IF NOT EXISTS `Goals` (
  `goal_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `goal_name` varchar(20) NOT NULL,
  `goal_description` varchar(250) DEFAULT NULL,
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`goal_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `Goals`
--

INSERT INTO `Goals` (`goal_id`, `uid`, `goal_name`, `goal_description`, `start_date`, `end_date`, `completed`) VALUES
(29, 4, 'Tenth Goal Test', 'This is the Tenth goal kjjk', '2019-04-01 15:34:52', '2019-04-29 00:00:00', 0),
(27, 1, 'Healthy BMI', 'Lose enough weight to fall under a healthy BMI', '2019-03-31 18:02:23', '2019-03-31 00:00:00', 0),
(51, 15, 'Gain weight', 'Attract more bitches', '2019-04-22 23:31:01', '2019-04-22 00:00:00', 0),
(36, 7, 'MY new goal', '', '2019-04-02 10:04:42', '0000-00-00 00:00:00', 0),
(7, 3, 'Squat 300 lbs', 'I want to improve my max weight on squats to 300 lbs', '2019-03-24 12:57:24', '2019-03-24 00:00:00', 1),
(8, 4, 'First Goal', 'This is my first goal.', '2019-03-24 16:31:48', '2019-04-16 00:00:00', 0),
(10, 4, 'Second Goal', 'This is my second goal', '2019-03-24 20:21:21', '2019-05-23 00:00:00', 0),
(23, 1, 'Lose Weight', 'Lose 15lbs and get shredded!', '2019-03-29 15:48:57', '2019-04-16 00:00:00', 0),
(24, 1, 'Gaining Muscle', 'Gain 50lbs of pure muscle and become a Greek god.', '2019-03-29 15:49:28', '2019-03-29 00:00:00', 0),
(28, 4, 'Third Goal', 'This is my third goal.', '2019-03-31 18:15:41', '2019-05-23 00:00:00', 0),
(30, 6, 'Legs', '', '2019-04-01 15:45:38', '2019-04-01 00:00:00', 0),
(33, 1, 'Begin Program', 'Start my strength program.', '2019-04-01 16:17:11', '2019-04-01 00:00:00', 1),
(50, 4, 'Goal 5', '5', '2019-04-22 14:16:57', '2019-04-22 00:00:00', 0),
(38, 3, 'Squat 300 lbs', '', '2019-04-14 15:09:42', '2019-06-20 00:00:00', 0),
(39, 3, 'Finish the project', 'i wanna be done', '2019-04-14 15:33:04', '2019-04-14 00:00:00', 0),
(41, 3, 'go to the gym more', '', '2019-04-14 15:38:34', '2019-04-23 00:00:00', 1),
(48, 1, 'Get Shredded', '', '2019-04-16 14:15:44', '2019-04-16 00:00:00', 1),
(49, 9, 'Get points', 'Above', '2019-04-22 11:24:31', '2019-04-22 00:00:00', 1),
(52, 14, 'Increase muscle mass', 'Gain 15lbs of muscle by the end of June', '2019-04-22 23:37:44', '2019-04-22 00:00:00', 1),
(53, 16, 'Get some gains', 'I need to get gud', '2019-04-23 00:16:16', '2019-04-23 00:00:00', 1),
(54, 4, 'Test', 'Test', '2019-04-29 15:48:30', '2019-04-29 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Rewards`
--

CREATE TABLE IF NOT EXISTS `Rewards` (
  `RID` int(11) NOT NULL AUTO_INCREMENT,
  `Reward_Name` varchar(40) NOT NULL,
  `Required_Points` int(11) NOT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Rewards`
--

INSERT INTO `Rewards` (`RID`, `Reward_Name`, `Required_Points`) VALUES
(1, 'Radford University Keychain', 100),
(2, 'Radford University Lanyard', 200),
(3, 'Radford University Water Bottle', 500),
(4, 'Radford University T-Shirt', 1000),
(5, 'Radford University Jacket', 1500),
(6, 'Radford University Socks', 750);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ru_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email_address` varchar(35) NOT NULL,
  `reward_progress` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uid`, `ru_id`, `fname`, `lname`, `email_address`, `reward_progress`, `username`, `password`) VALUES
(1, 123456789, 'Michael', 'Yilma', 'mickey@radford.edu', 10, 'myilma', '$2y$10$m1ZsbfQKUmLMnS3IQIsxQ.bye1NAh/SAHz4JbmCdAB7e/nLPaPGk2'),
(10, 900786850, 'Marcus', 'Burks', 'Mburks4@radford.edu', 0, 'Mburks23', '$2y$10$kxfXNbBVMiJ6w/.IFJiNT.kKzJNH1zlY.vUO63eJMybRc1acJv1rC'),
(3, 123456789, 'Jonathan', 'Miller', 'jona12mil@gmail.com', 500, 'JBravo139', '$2y$10$mbfzF4rbcFbi8eLDBcUG6OQsfGozAHt7poJBo9hwjINsHzmDj7y6a'),
(4, 900753833, 'Colin', 'Newton', 'colin.vols@gmail.com', 220, 'cnewton15', '$2y$10$fW7mnlxAgPgeg.Ifhn1O7eDsq.oEbBKq/wejgD.vyUdz.4gFvPBSG'),
(9, 900809419, 'Ryan', 'Zerkel', 'rzerkel@radford.edu', 40, 'Speakingofpizza', '$2y$10$JuD2AtyaJUyrxxHWUsovBOvJryff3RLoR5Gt6AZ/8Pgo02hpfZ2.y'),
(8, 123456789, 'James', 'Dadson', 'jdadson@radford.edu', 0, 'jdadson7', '$2y$10$/LezrwSMntH2hQlNgmwvE.VW3dAIzopp4dVs6/KqTGEJ6RFRDp/ja'),
(11, 666666666, 'Austen', 'Wade', 'austenwade5@gmail.com', 10, 'Awade22', '$2y$10$zwTsT9nkDX2sb55QoJv9TOua6NpZmK.6u3byIYQQvCcA7MBlSxI/y'),
(12, 906068021, 'Logan', 'Hux', 'loganhux1699@gmail.com', 0, 'lhux', '$2y$10$g6jsVacnu7v0ez8SvV80ZuvrpoisbCiK5pAqCrubGVWIl/cL/WShy'),
(13, 123456789, 'Keith', 'Turner', 'Keith.carla@comcast.net', 10, 'Kturner', '$2y$10$TLkMQnUf7y9vkODg/dZzDeL9fdgxHbXWAzUD8PJnpdKr4UcD7Zh4u'),
(14, 900785424, 'Jesse', 'Bengu', 'jbengu@radford.edu', 20, 'Jbengu', '$2y$10$eb7BaOEftYLVd5vCn3Ab6.fyk5kXbCrz7KdqvnjLNJUGjvk6xK0Qa'),
(15, 900863861, 'Tommy', 'Quincy', 'Tbeyene@radford.edu', 10, 'TomvyQ', '$2y$10$48T54EHnsYpZUDebqRemtODp0/VndSY7XGFok38CZikjwzbqxY02a'),
(16, 900123456, 'Cody', 'French', 'codyfrench14@gmail.com', 10, 'cfrench11', '$2y$10$m4vQQbxPwL4I8KmRrwn7lec.eaE3U5DUGhOfziToCDLIa8KZwMD6K'),
(17, 900774542, 'Blake', 'Noe', 'wnoe@radford.edu', 10, 'blakenoe', '$2y$10$ofehKjaguBYsZsrGE2WBoeeKgx8s8Jj1aAPn3pyYIvOodNdPT/mOm'),
(18, 234567891, 'Edward', 'Lewis', 'kingsgrantvillas@gmail.com', 10, 'elewis', '$2y$10$PTcU3eu8WQJM4Umz0Tjr7.ywRjaf6o/cKYbGm8JuqkL30FQ2wLHX6');

-- --------------------------------------------------------

--
-- Table structure for table `Workouts`
--

CREATE TABLE IF NOT EXISTS `Workouts` (
  `workout_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `workout_date` date NOT NULL,
  `exercise_name` varchar(30) NOT NULL,
  `reps` int(11) NOT NULL,
  `sets` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `weight_units` varchar(3) NOT NULL DEFAULT 'lbs',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workout_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `Workouts`
--

INSERT INTO `Workouts` (`workout_id`, `uid`, `workout_date`, `exercise_name`, `reps`, `sets`, `weight`, `weight_units`, `description`) VALUES
(1, 4, '0000-00-00', 'Standing Calf Raises', 4, 4, 150, 'lbs', NULL),
(2, 4, '2019-02-12', 'Hamstring Curls', 3, 3, 150, 'lbs', NULL),
(3, 4, '0000-00-00', 'Leg Extensions ', 3, 4, 150, 'lbs', NULL),
(4, 4, '2011-02-20', 'Dumbbell Bicep Curls', 2, 2, 150, 'lbs', NULL),
(5, 1, '0000-00-00', 'Bent-over Rows', 2, 12, 150, 'lbs', NULL),
(6, 4, '0000-00-00', 'Incline Bench Press ', 4, 3, 150, 'lbs', NULL),
(11, 1, '2019-02-28', 'Bench Press', 4, 10, 205, 'lbs', NULL),
(13, 3, '2019-03-01', 'Squat', 12, 4, 225, 'lbs', NULL),
(19, 5, '2019-03-04', 'Tricep extensions', 12, 4, 70, 'lbs', NULL),
(17, 3, '2019-03-02', 'Dumbbell Bicep Curls', 4, 4, 145, 'lbs', NULL),
(18, 3, '2019-03-02', 'Hamstring Curls', 4, 4, 225, 'lbs', NULL),
(20, 4, '2019-03-25', 'Standing Calf Raises', 4, 4, 150, 'lbs', NULL),
(21, 4, '2019-03-25', 'Hamstring Curls', 4, 4, 150, 'lbs', NULL),
(22, 4, '2019-03-25', 'Leg Extensions', 4, 4, 150, 'lbs', NULL),
(23, 3, '2019-03-02', 'Hamstring Curls', 10, 4, 145, 'lbs', NULL),
(24, 3, '2019-03-02', 'Hamstring Curls', 10, 4, 145, 'lbs', NULL),
(25, 3, '2019-03-26', 'Standing Calf Raises', 10, 4, 145, 'lbs', NULL),
(26, 3, '2019-03-26', 'Leg Extensions', 10, 4, 145, 'lbs', NULL),
(27, 3, '2019-03-26', 'Squat', 10, 10, 145, 'lbs', NULL),
(28, 4, '2019-03-25', 'Bench Press', 10, 3, 200, 'lbs', NULL),
(29, 1, '2019-03-29', 'Bench Press', 5, 5, 135, 'lbs', NULL),
(30, 3, '0000-00-00', 'Bent-over Rows', 10, 10, 145, 'lbs', NULL),
(31, 3, '2019-03-31', 'Bent-over Rows', 10, 6, 145, 'lbs', NULL),
(32, 1, '2019-03-31', 'Standing Calf Raises', 15, 5, 45, 'lbs', NULL),
(66, 1, '2019-04-13', 'Dumbbell Bicep Curls', 20, 4, 35, 'lbs', ''),
(34, 1, '2019-03-31', 'Bent-over Rows', 15, 5, 150, 'kg', 'Used barbells'),
(35, 3, '2019-03-31', 'Standing Calf Raises', 10, 4, 145, 'lbs', 'yahhh yeet'),
(36, 3, '2019-03-31', 'Squat', 10, 4, 225, 'kg', 'plate under heel'),
(37, 3, '2019-03-31', 'Incline Bench Press', 10, 10, 145, 'lbs', ''),
(38, 4, '2019-03-31', 'Bench Press', 4, 4, 150, 'lbs', 'Bench Press'),
(39, 4, '2019-03-31', 'Standing Calf Raises', 4, 4, 150, 'lbs', 'This is a longer description that will hopefully make it two lines. TEST TEST TEST TEST TEST TEST TEST TEST TEST'),
(40, 1, '0000-00-00', 'Hamstring Curls', 5, 5, 153, 'lbs', ''),
(67, 1, '2019-04-01', 'Hamstring Curls', 5, 5, 120, 'lbs', ''),
(42, 3, '2019-04-01', 'Tricep extensions', 10, 4, 145, 'lbs', 'ARM DAY BABBY'),
(43, 4, '2019-04-16', 'Bench Press', 4, 4, 4, 'lbs', 'This is bench press.'),
(44, 4, '2019-04-02', 'Bench Press', 10, 10, 150, 'lbs', 'This is Bench Press.'),
(45, 4, '2019-04-02', 'Squat', 10, 10, 150, 'lbs', 'This is Squat.'),
(46, 4, '2019-04-02', 'Dumbbell Bicep Curls', 10, 10, 150, 'lbs', 'This is dumbbell bicep curls.'),
(47, 1, '2019-04-25', 'Hamstring Curls', 15, 3, 90, 'lbs', 'Single Leg'),
(49, 3, '2019-04-01', 'Squat', 10, 4, 145, 'lbs', 'yes'),
(50, 4, '2019-04-02', 'Bench Press', 10, 4, 150, 'lbs', 'Bench press'),
(51, 4, '2019-04-01', 'Bench Press', 10, 3, 150, 'lbs', 'This is bench press.'),
(52, 4, '2019-04-01', 'Bent-over Rows', 10, 3, 100, 'lbs', 'This is bent over rows'),
(55, 3, '2019-04-02', 'Standing Calf Raises', 5, 5, 100, 'lbs', ''),
(54, 3, '2019-04-05', 'Squat', 10, 6, 275, 'lbs', '2 minutes rest time'),
(56, 3, '2019-04-02', 'Hamstring Curls', 5, 5, 25, 'lbs', 'Upright'),
(88, 1, '2019-04-15', 'Barbell Bench Press', 15, 5, 135, 'lbs', '1 minute rest'),
(59, 3, '2019-04-09', 'Leg Extensions', 10, 10, 1000, 'lbs', 'Asdf'),
(60, 3, '2019-04-01', 'Bench Press', 4, 3, 315, 'lbs', '30 sec rest'),
(65, 1, '2019-04-13', 'Hamstring Curls', 15, 5, 45, 'lbs', 'Single-leg'),
(62, 3, '2019-04-13', 'Leg Extensions', 4, 4, 150, 'lbs', 'Yes'),
(91, 8, '2019-04-15', 'Ass workout', 1, 5, 47, 'lbs', 'Fhsheh'),
(69, 1, '2019-04-13', 'Incline Bench Press', 12, 4, 75, 'lbs', 'Dumbbell'),
(80, 3, '2019-04-14', 'Dumbbell Shoulder Pr', 10, 4, 145, 'lbs', ''),
(72, 1, '2019-04-14', 'Incline Bench Press', 15, 5, 225, 'lbs', 'Barbbell'),
(84, 3, '2019-04-14', 'Decline Dumbbell Ben', 10, 10, 100, 'lbs', 'I love to bench press. Yes sir!'),
(83, 3, '2019-04-14', 'Cable Flies', 4, 3, 123, 'lbs', 'Flies'),
(81, 3, '2019-04-14', 'Decline Dumbbell Ben', 10, 4, 145, 'lbs', ''),
(82, 1, '2019-04-14', 'Back Squats', 8, 8, 225, 'lbs', ''),
(87, 3, '2019-04-14', 'Back Squats', 4, 4, 225, 'lbs', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(92, 1, '2019-04-16', 'Barbell Incline Benc', 15, 5, 150, 'lbs', '45 angle'),
(93, 4, '2019-04-17', 'Barbell Curls', 4, 4, 4, 'lbs', 'Hdkddn'),
(94, 4, '2019-04-18', 'Barbell Bench Press', 4, 4, 4, 'lbs', 'Hhh'),
(95, 4, '2019-04-18', 'Barbell Bench Press', 4, 4, 4, 'lbs', 'G'),
(99, 4, '2019-04-20', 'Landmine Squats', 6, 5, 4, 'lbs', 'Yhh'),
(97, 4, '2019-04-25', 'Cable Flies', 4, 4, 4, 'lbs', 'R'),
(98, 4, '2019-04-25', 'Incline Dumbbell Cur', 4, 4, 4, 'lbs', 'G'),
(100, 4, '2019-04-20', 'Barbell Bench Press', 5, 5, 5, 'kg', 'Fbbv'),
(101, 4, '2019-04-24', 'Dumbbell Flies', 4, 4, 4, 'lbs', '4'),
(102, 1, '2019-04-22', 'Back Squats', 5, 5, 255, 'lbs', 'Start with 10 reps working your way down decreasing 2 reps until you reach working set.'),
(103, 9, '2019-04-22', 'Run n gun', 10, 10, 45, 'lbs', '3 mile run then 100 reps bis and tris'),
(104, 1, '2019-04-22', 'Standing Calve Raise', 10, 6, 150, 'lbs', 'Alternate between two different weight with not rest in between.'),
(105, 1, '2019-04-22', 'Hamstring Curls', 8, 5, 110, 'lbs', 'Lying machine'),
(107, 1, '2019-04-22', 'Seated Calve Raises', 15, 4, 90, 'lbs', ''),
(108, 1, '2019-04-22', 'Leg Press', 8, 5, 90, 'lbs', 'Single legged.'),
(109, 1, '2019-04-22', 'Leg Extensions', 3, 8, 45, 'lbs', 'Single leg into double.'),
(110, 11, '2019-04-22', 'Bulgarian Split Squa', 25, 7, 225, 'lbs', ''),
(113, 3, '2019-04-22', 'Barbell Incline Benc', 5, 5, 600, 'lbs', 'Bench Press bench press bench press bench press bench press'),
(112, 4, '2019-04-23', 'EZ Extensions', 6, 6, 3, 'lbs', 'Yeh'),
(114, 3, '2019-04-22', 'Decline Barbell Benc', 6, 6, 600, 'lbs', 'Bench press is a good way to work you pecs'),
(123, 13, '2019-04-22', 'Arms', 12, 3, 40, 'lbs', 'Curl'),
(116, 3, '2019-04-22', 'Decline Dumbbell Bench Press', 4, 10, 60, 'lbs', 'Decline dumbbell bench press is good lol'),
(124, 13, '2019-04-22', 'Barbell Incline Bench Press', 15, 3, 50, 'lbs', 'Sets'),
(125, 14, '2019-04-22', 'Back Squats', 10, 5, 225, 'lbs', ''),
(126, 15, '2019-04-22', 'Dumbbell Front Raises', 3, 5, 35, 'lbs', ''),
(127, 14, '2019-04-22', 'Leg Extensions', 15, 4, 150, 'lbs', 'Pick three different weights, starting with the heaviest weight, do  10reps, 15 rep for the median weight and 20reps for your lightest. Repeat for 3sets each'),
(129, 4, '2019-04-22', 'Barbell Curls', 3, 4, 4, 'lbs', 'Hhj'),
(130, 16, '2019-04-23', 'Git gud ups', 100, 100, 200, 'kg', 'Getting gud by doing some ups.'),
(131, 1, '2019-04-23', 'Barbell Curls', 10, 5, 60, 'lbs', 'Ez bar'),
(133, 1, '2019-04-23', 'Straight Bar Extensions', 12, 5, 40, 'lbs', ''),
(134, 1, '2019-04-23', 'Dumbbell Curls', 12, 4, 15, 'lbs', 'Single arm alternating between hammer and normal.'),
(135, 1, '2019-04-23', 'Behind the Head Tricep Pushove', 12, 5, 24, 'lbs', 'Standing cable Pushovers supersetted with single arm cable pushdowns'),
(136, 1, '2019-04-23', 'Single Arm Pushdowns', 15, 15, 15, 'lbs', 'Reps per arm'),
(137, 1, '2019-04-23', 'Cable Curls', 15, 5, 15, 'lbs', ''),
(138, 1, '2019-04-23', 'Inverted Curls', 10, 5, 40, 'lbs', ''),
(139, 17, '2019-04-23', 'Leg Press', 12, 4, 180, 'lbs', ''),
(140, 17, '2019-04-23', 'Leg Extensions', 12, 4, 150, 'lbs', ''),
(141, 17, '2019-04-23', 'Standing Calve Raises', 12, 4, 120, 'lbs', ''),
(142, 17, '2019-04-23', 'Seated Leg Curls', 12, 4, 110, 'lbs', ''),
(143, 17, '2019-04-23', 'Back Squats', 10, 4, 135, 'lbs', ''),
(144, 17, '2019-04-23', 'Seated Calve Raises', 12, 4, 90, 'lbs', ''),
(145, 18, '2019-04-23', 'Barbell Curls', 15, 3, 40, 'lbs', 'Curles'),
(146, 18, '2019-04-23', 'Barbell Bench Press', 20, 4, 30, 'lbs', 'Press'),
(147, 18, '2019-04-23', 'Dumbbell Kickbacks', 10, 5, 25, 'lbs', 'Kick'),
(148, 18, '2019-04-26', 'Back Squats', 15, 3, 125, 'lbs', 'Back'),
(151, 3, '2019-04-25', 'Barbell Bench Press', 10, 2, 10, 'kg', 'Yes'),
(152, 4, '2019-04-25', 'Leg Extensions', 6, 9, 3, 'lbs', 'asdf'),
(157, 4, '2019-04-29', 'Barbell Shoulder Press', 12, 12, 12, 'lbs', 'Hdjd'),
(155, 3, '2019-04-29', 'Back Squats', 2, 2, 234, 'lbs', 'asdf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
