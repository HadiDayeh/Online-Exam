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
-- Table structure for table `students_classes`
--

DROP TABLE IF EXISTS `students_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_classes` (
  `id_class` int(10) unsigned NOT NULL,
  `id_student` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_student`,`id_class`),
  KEY `id_student_class_idx` (`id_class`),
  KEY `id_class_student_idx` (`id_student`),
  CONSTRAINT `id_class_student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`),
  CONSTRAINT `id_student_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_classes`
--

LOCK TABLES `students_classes` WRITE;
/*!40000 ALTER TABLE `students_classes` DISABLE KEYS */;
INSERT INTO `students_classes` VALUES (1,1),(1,7),(1,11),(1,13),(1,17),(1,23),(1,24),(1,25),(1,28),(1,30),(2,2),(2,3),(2,6),(2,9),(2,15),(2,16),(2,18),(2,26),(3,4),(3,5),(3,8),(3,10),(3,12),(3,13),(3,14),(3,19),(3,20),(3,21),(3,24),(3,27),(3,29),(4,1),(4,2),(4,3),(4,6),(4,7),(4,9),(4,15),(4,16),(4,17),(4,18),(4,25),(4,30),(5,2),(5,3),(5,6),(5,9),(5,11),(5,13),(5,15),(5,16),(5,18),(5,27),(6,1),(6,2),(6,12),(6,14),(6,17),(6,20),(6,22),(6,23),(6,24),(6,26),(6,28),(7,2),(7,3),(7,4),(7,5),(7,6),(7,8),(7,10),(7,11),(7,13),(7,16),(7,18),(7,19),(7,21),(7,27),(7,29),(8,1),(8,5),(8,7),(8,9),(8,15),(8,16),(8,17),(8,19),(8,23),(8,25),(8,28),(8,30),(9,4),(9,5),(9,8),(9,10),(9,12),(9,14),(9,19),(9,20),(9,21),(9,22),(9,24),(9,25),(9,26),(9,29);
/*!40000 ALTER TABLE `students_classes` ENABLE KEYS */;
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
