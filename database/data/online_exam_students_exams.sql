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
-- Table structure for table `students_exams`
--

DROP TABLE IF EXISTS `students_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_exams` (
  `id_student` int(10) unsigned NOT NULL,
  `id_exam` int(10) unsigned NOT NULL,
  `right_answers` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_student`,`id_exam`),
  KEY `id_exam_student_idx` (`id_student`) /*!80000 INVISIBLE */,
  KEY `id_student_exam_idx` (`id_exam`),
  CONSTRAINT `id_exam_student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`),
  CONSTRAINT `id_student_exam` FOREIGN KEY (`id_exam`) REFERENCES `exams` (`id_exam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_exams`
--

LOCK TABLES `students_exams` WRITE;
/*!40000 ALTER TABLE `students_exams` DISABLE KEYS */;
INSERT INTO `students_exams` VALUES (1,1,3,'2020-05-31 23:10:53'),(1,5,3,'2020-05-31 23:10:43'),(1,7,3,'2020-05-31 23:10:31'),(2,2,4,'2020-05-31 23:04:26'),(2,4,3,'2020-05-31 23:04:02'),(2,5,2,'2020-05-31 23:03:34'),(2,6,4,'2020-05-31 23:04:53'),(2,7,3,'2020-05-31 23:03:19'),(3,2,1,'2020-05-31 23:22:41'),(3,4,2,'2020-05-31 23:22:21'),(3,5,1,'2020-05-31 23:22:29'),(3,6,4,'2020-05-31 23:22:56'),(4,9,2,'2020-05-31 23:11:08'),(4,11,1,'2020-05-31 23:42:12'),(5,9,0,'2020-05-31 23:09:41'),(5,11,2,'2020-05-31 23:41:39'),(6,2,4,'2020-05-31 22:59:59'),(6,4,3,'2020-05-31 22:58:04'),(6,6,5,'2020-05-31 22:58:53'),(6,9,2,'2020-05-31 23:00:31'),(7,1,2,'2020-05-31 22:56:40'),(7,5,2,'2020-05-31 22:56:59'),(8,11,2,'2020-05-31 23:40:16'),(9,5,0,'2020-05-31 23:02:28'),(9,6,3,'2020-05-31 23:02:50'),(10,9,1,'2020-05-31 23:05:16'),(10,11,1,'2020-05-31 23:40:59'),(11,1,2,'2020-05-31 23:08:10'),(11,4,1,'2020-05-31 23:07:52'),(11,6,3,'2020-05-31 23:08:25'),(11,9,1,'2020-05-31 23:08:02'),(12,7,3,'2020-05-31 23:01:30'),(12,11,3,'2020-05-31 23:40:38'),(14,11,2,'2020-05-31 23:42:41'),(15,5,3,'2020-05-31 23:12:14'),(16,2,5,'2020-05-31 23:07:16'),(16,4,2,'2020-05-31 23:06:18'),(16,5,0,'2020-05-31 23:06:53'),(16,6,4,'2020-05-31 23:06:34'),(17,1,2,'2020-05-31 22:51:27'),(17,7,1,'2020-05-31 22:55:55'),(18,2,3,'2020-05-31 23:18:31'),(18,5,2,'2020-05-31 23:18:05'),(18,6,3,'2020-05-31 23:18:19'),(18,9,2,'2020-05-31 23:18:44'),(19,9,0,'2020-05-31 23:21:46'),(19,11,3,'2020-05-31 23:43:28'),(20,7,1,'2020-05-31 23:22:04'),(20,11,0,'2020-05-31 23:43:47'),(21,11,2,'2020-05-31 23:44:17'),(22,7,2,'2020-05-31 23:23:22'),(23,1,1,'2020-05-31 23:27:40'),(23,7,2,'2020-05-31 23:06:00'),(24,1,2,'2020-05-31 23:05:32'),(24,7,1,'2020-05-31 23:05:42'),(26,7,2,'2020-05-31 23:10:11'),(27,4,1,'2020-05-31 23:21:27'),(27,6,2,'2020-05-31 23:21:17'),(27,11,3,'2020-05-31 23:43:11'),(28,1,2,'2020-05-31 23:02:10'),(28,7,2,'2020-05-31 23:01:55'),(30,1,1,'2020-05-31 23:27:18'),(30,5,3,'2020-05-31 23:17:45');
/*!40000 ALTER TABLE `students_exams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 23:49:33
