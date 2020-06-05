-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_exam
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id_exam` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_class` int(10) unsigned NOT NULL,
  `id_status` int(10) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `questions` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_exam`),
  KEY `id_exam_class_idx` (`id_class`),
  KEY `id_status_idx` (`id_status`),
  CONSTRAINT `id_exam_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id_class`),
  CONSTRAINT `id_status` FOREIGN KEY (`id_status`) REFERENCES `statuses` (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,1,2,'Mid-term Web-based Application','',3,5),(2,2,2,'Mid-term Java Programming','This exam includes chapter 1-4',5,10),(3,3,1,'Mid-term Data Structure And Algorithms','',5,15),(4,5,2,'Test-1','This is a test exam including chapters: (1, 2, 4)',3,5),(5,4,2,'Mid-term It','',3,5),(6,5,2,'Mid-term Intro To Programming','',5,10),(7,6,2,'Mid-term Defferential','This exam will cover 35% of your grade',3,5),(8,6,1,'Test-2','Includes chapters (1, 2, 3, 5)',5,10),(9,7,2,'Mid-term Linear','30% of the final grade',2,3),(10,8,1,'Test-1','Includes chapters (1, 2)',2,5),(11,3,2,'Test Exam In Data Structure','',3,2);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 23:49:34
