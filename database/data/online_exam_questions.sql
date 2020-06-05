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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id_question` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_exam` int(10) unsigned NOT NULL,
  `question` varchar(500) NOT NULL,
  PRIMARY KEY (`id_question`),
  KEY `id_question_exam_idx` (`id_exam`),
  CONSTRAINT `id_question_exam` FOREIGN KEY (`id_exam`) REFERENCES `exams` (`id_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'What does \'CSS\' stands for?'),(2,1,'What tag is used for presenting a paragraph?'),(3,1,'What \'CSS\' property is used to round corners?'),(4,2,'How to cast integer into string?'),(5,2,'How to declare a variable?'),(6,2,'Which of the following is not an access modifier?'),(7,2,'Which of the following is an access modifier?'),(8,2,'Which of the following is not true?'),(9,3,''),(10,3,''),(11,3,''),(12,3,''),(13,3,''),(14,4,'What is an algorithm?'),(15,4,'Convert the number \'214\' to binary.'),(16,4,'Convert \'10110011\' to decimal.'),(17,5,'Convert the number \'179\' to binary.'),(18,5,'Convert the number \'179\' to hexadecimal.'),(19,5,'Which unit is the biggest?'),(20,6,'How to declare an integer variable in C language?'),(21,6,'What is an algorithm?'),(22,6,'In C language, to do the same process for x times we use:'),(23,6,'Which of the following has wrong syntax?'),(24,6,'To check if two variables are equal we use:'),(25,7,'1+1='),(26,7,'if f(x) = 2x, then f\'(x) = ?'),(27,7,'let f\'(x) = 3x + 2, then f(x) = ?'),(28,8,''),(29,8,''),(30,8,''),(31,8,''),(32,8,''),(33,9,'A * B = B * A'),(34,9,'A + (B + C) = ?'),(35,10,'TRUE and FALSE ='),(36,10,'FALSE or TRUE ='),(37,11,'My first question? (Z)'),(38,11,'My second question?'),(39,11,'My third question? (9)');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31 23:49:35
