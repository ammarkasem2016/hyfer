# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.16)
# Database: hyfer
# Generation Time: 2017-04-19 10:24:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table group_students
# ------------------------------------------------------------



# Dump of table groups
# ------------------------------------------------------------

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `group_name`, `starting_date`)
VALUES
	(43,'Class 5','2016-07-24 00:00:00'),
	(44,'Class 6','2016-09-25 00:00:00'),
	(45,'Class 7','2016-11-06 00:00:00'),
	(46,'Class 8','2017-01-29 00:00:00'),
	(47,'Class 9','2017-03-12 00:00:00');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modules
# ------------------------------------------------------------

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;

INSERT INTO `modules` (`id`, `module_name`, `description`, `added_on`, `default_duration`, `sort_order`, `git_url`, `git_owner`, `git_repo`, `color`, `optional`)
VALUES
	(1,'Angular JS','Angular JS module description','2017-02-28 18:25:16',3,5,'https://github.com/HackYourFuture/','HackYourFuture','angular','#375e97',0),
	(2,'HTML-CSS','HTML-CSS module description','2017-02-28 18:25:56',3,0,'https://github.com/HackYourFuture/','HackYourFuture','angular','#fb6542',0),
	(3,'JavaScript 1','JavaScript 1 module description','2017-02-28 18:26:27',3,1,'https://github.com/HackYourFuture/','HackYourFuture','JavaScript','#ffbb00',0),
	(4,'JavaScript 2','JavaScript 2 module description','2017-02-28 18:26:41',3,2,'https://github.com/HackYourFuture/','HackYourFuture','JavaScript2','#3f681c',0),
	(5,'JavaScript 3','JavaScript 3 module description','2017-02-28 18:26:49',3,3,'https://github.com/HackYourFuture/','HackYourFuture','JavaScript3','#eb8a44',0),
	(6,'Node.js','Node.js module description','2017-02-28 18:27:21',3,4,'https://github.com/HackYourFuture/','HackYourFuture','Node.js','#f9dc24',0),
	(7,'Databases','Databases module description','2017-02-28 18:27:50',3,6,'https://github.com/HackYourFuture/','HackYourFuture','databases','#4b7447',0),
	(8,'Project','Project module description','2017-02-28 18:28:09',6,7,'https://github.com/HackYourFuture/','HackYourFuture','Project','#8eba43',0),
	(9,'Holiday','Holiday period','2017-03-06 14:35:26',1,1000,NULL,NULL,NULL,'#c05805',1),
	(10,'Hackathon','Hackathon / fun day','2017-03-06 14:36:22',1,1000,NULL,NULL,NULL,'#db9501',1);

/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table running_modules
# ------------------------------------------------------------

LOCK TABLES `running_modules` WRITE;
/*!40000 ALTER TABLE `running_modules` DISABLE KEYS */;

INSERT INTO `running_modules` (`id`, `description`, `module_id`, `group_id`, `duration`, `position`, `teacher1_id`, `teacher2_id`)
VALUES
	(106,'HTML-CSS module description',2,43,3,0,NULL,NULL),
	(107,'JavaScript 1 module description',3,43,3,1,NULL,NULL),
	(108,'JavaScript 2 module description',4,43,3,2,NULL,NULL),
	(109,'JavaScript 3 module description',5,43,3,3,NULL,NULL),
	(110,'Angular JS module description',1,43,3,4,NULL,NULL),
	(111,'Node.js module description',6,43,6,5,NULL,NULL),
	(112,'Databases module description',7,43,3,8,NULL,NULL),
	(113,'Project module description',8,43,6,9,NULL,NULL),
	(146,'Holiday',9,43,2,7,NULL,NULL),
	(149,'Hackathon',10,43,1,6,NULL,NULL),
	(188,'HTML-CSS module description',2,44,3,0,NULL,NULL),
	(189,'JavaScript 1 module description',3,44,3,1,NULL,NULL),
	(190,'JavaScript 2 module description',4,44,3,2,NULL,NULL),
	(191,'JavaScript 3 module description',5,44,3,3,NULL,NULL),
	(192,'Hackathon',10,44,1,4,NULL,NULL),
	(193,'Holiday',9,44,2,5,NULL,NULL),
	(194,'Angular JS module description',1,44,3,6,NULL,NULL),
	(195,'Node.js module description',6,44,3,7,NULL,NULL),
	(196,'Databases module description',7,44,3,8,NULL,NULL),
	(197,'Project module description',8,44,3,9,NULL,NULL),
	(198,'Hackathon / fun day',10,44,1,10,NULL,NULL),
	(199,'Project module description',8,44,3,11,NULL,NULL),
	(200,'HTML-CSS module description',2,45,3,0,NULL,NULL),
	(201,'JavaScript 1 module description',3,45,3,1,NULL,NULL),
	(202,'Hackathon',10,45,1,2,NULL,NULL),
	(203,'Holiday',9,45,2,3,NULL,NULL),
	(204,'JavaScript 2 module description',4,45,3,4,NULL,NULL),
	(205,'JavaScript 3 module description',5,45,3,5,NULL,NULL),
	(206,'Angular JS module description',1,45,3,6,NULL,NULL),
	(207,'Node.js module description',6,45,3,7,NULL,NULL),
	(208,'Hackathon / fun day',10,45,1,8,NULL,NULL),
	(209,'Databases module description',7,45,3,9,NULL,NULL),
	(210,'Project module description',8,45,6,10,NULL,NULL),
	(229,'HTML-CSS module description',2,46,3,0,NULL,NULL),
	(230,'JavaScript 1 module description',3,46,3,1,NULL,NULL),
	(231,'JavaScript 2 module description',4,46,3,2,NULL,NULL),
	(232,'Hackathon / fun day',10,46,1,3,NULL,NULL),
	(233,'JavaScript 3 module description',5,46,3,4,NULL,NULL),
	(234,'Node.js module description',6,46,3,5,NULL,NULL),
	(235,'Angular JS module description',1,46,3,6,NULL,NULL),
	(236,'Databases module description',7,46,3,7,NULL,NULL),
	(237,'Project module description',8,46,6,8,NULL,NULL),
	(238,'HTML-CSS module description',2,47,3,0,NULL,NULL),
	(239,'Hackathon / fun day',10,47,1,1,NULL,NULL),
	(240,'JavaScript 1 module description',3,47,3,2,NULL,NULL),
	(241,'JavaScript 2 module description',4,47,3,3,NULL,NULL),
	(242,'JavaScript 3 module description',5,47,3,4,NULL,NULL),
	(243,'Node.js module description',6,47,3,5,NULL,NULL),
	(244,'Angular JS module description',1,47,3,6,NULL,NULL),
	(245,'Databases module description',7,47,3,7,NULL,NULL),
	(246,'Project module description',8,47,6,8,NULL,NULL);

/*!40000 ALTER TABLE `running_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table students_history
# ------------------------------------------------------------



# Dump of table users
# ------------------------------------------------------------

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `access_token`, `role`, `register_date`)
VALUES
	(1,'Jack Sacali',NULL,NULL,'2017-02-28 17:51:17'),
	(2,'Hasan Shahoud',NULL,NULL,'2017-02-28 17:51:27'),
	(3,'Majdi Ali',NULL,NULL,'2017-02-28 17:51:31'),
	(4,'Bahaa Eldirie',NULL,NULL,'2017-02-28 17:51:43'),
	(5,'Malek Kanaan',NULL,NULL,'2017-02-28 18:02:11'),
	(6,'Moaaz Labsh',NULL,NULL,'2017-02-28 18:02:24'),
	(7,'Anas Alabtah',NULL,NULL,'2017-02-28 18:02:31'),
	(8,'Yousif Alneamy',NULL,NULL,'2017-02-28 18:02:37'),
	(9,'Amjad Muhammad',NULL,NULL,'2017-02-28 18:02:46'),
	(10,'Mohanad Dabool',NULL,NULL,'2017-02-28 18:02:53'),
	(11,'Shadi Alhakimi',NULL,NULL,'2017-02-28 18:02:58'),
	(12,'Jim Cramer',NULL,NULL,'2017-02-28 18:13:44'),
	(13,'Jim Cramer',NULL,'teacher','2017-02-28 18:16:38'),
	(14,'Michael Trouw',NULL,'teacher','2017-02-28 18:16:56'),
	(15,'Unmesh Joshi',NULL,'teacher','2017-02-28 18:17:30'),
	(16,'Pablo Celentano',NULL,'teacher','2017-02-28 18:17:48'),
	(192,'remarcmij','121921305498c6422a0d98babbb6f652c5248372','teacher','2017-03-27 14:15:34');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
