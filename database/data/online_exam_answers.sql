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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id_student` int(10) unsigned NOT NULL,
  `id_question` int(10) unsigned NOT NULL,
  `id_option` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_student`,`id_question`),
  KEY `id_answer_student_idx` (`id_student`),
  KEY `id_answer_question_idx` (`id_question`),
  KEY `id_answer_option_idx` (`id_option`),
  CONSTRAINT `id_answer_option` FOREIGN KEY (`id_option`) REFERENCES `options` (`id_option`),
  CONSTRAINT `id_answer_question` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`),
  CONSTRAINT `id_answer_student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (2,7,NULL),(5,33,NULL),(5,34,NULL),(7,2,NULL),(9,20,NULL),(20,37,NULL),(20,38,NULL),(20,39,NULL),(21,39,NULL),(23,1,NULL),(23,3,NULL),(30,2,NULL),(30,3,NULL),(1,1,1),(7,1,1),(17,1,1),(24,1,1),(28,1,1),(30,1,1),(11,1,2),(1,2,4),(11,2,4),(23,2,4),(28,2,4),(24,2,5),(17,2,6),(1,3,7),(7,3,7),(11,3,7),(17,3,7),(24,3,7),(28,3,8),(2,4,10),(6,4,10),(16,4,10),(18,4,10),(3,4,12),(2,5,13),(3,5,13),(6,5,13),(16,5,13),(18,5,13),(2,6,16),(6,6,16),(16,6,16),(3,6,17),(18,6,17),(16,7,19),(3,7,20),(18,7,20),(6,7,21),(2,8,22),(6,8,22),(16,8,22),(18,8,22),(3,8,24),(2,14,40),(6,14,40),(16,14,40),(3,14,41),(11,14,41),(27,14,41),(2,15,43),(3,15,43),(6,15,43),(27,15,43),(16,15,44),(11,15,45),(2,16,46),(3,16,46),(6,16,46),(11,16,46),(16,16,46),(27,16,47),(1,17,49),(2,17,49),(15,17,49),(18,17,49),(30,17,49),(3,17,50),(7,17,50),(9,17,50),(16,17,50),(1,18,52),(2,18,52),(7,18,52),(15,18,52),(18,18,52),(30,18,52),(9,18,53),(16,18,53),(3,18,54),(1,19,55),(3,19,55),(7,19,55),(15,19,55),(30,19,55),(18,19,56),(2,19,57),(9,19,57),(16,19,57),(3,20,58),(6,20,58),(16,20,58),(18,20,58),(27,20,58),(11,20,59),(2,20,60),(2,21,61),(6,21,61),(9,21,61),(11,21,61),(16,21,61),(18,21,61),(3,21,63),(27,21,63),(2,22,64),(3,22,64),(6,22,64),(16,22,64),(9,22,65),(11,22,65),(18,22,65),(27,22,65),(2,23,67),(3,23,67),(6,23,67),(9,23,67),(11,23,67),(16,23,67),(18,23,67),(27,23,68),(2,24,70),(3,24,70),(6,24,70),(9,24,70),(11,24,70),(27,24,70),(16,24,71),(18,24,72),(1,25,73),(2,25,73),(12,25,73),(23,25,73),(28,25,73),(17,25,75),(20,25,75),(22,25,75),(24,25,75),(26,25,75),(1,26,76),(2,26,76),(12,26,76),(22,26,76),(23,26,76),(24,26,76),(26,26,76),(28,26,76),(17,26,78),(20,26,78),(1,27,79),(2,27,79),(12,27,79),(17,27,79),(20,27,79),(22,27,79),(26,27,79),(23,27,81),(24,27,81),(28,27,81),(4,33,97),(6,33,97),(11,33,97),(18,33,97),(10,33,98),(19,33,99),(4,34,100),(6,34,100),(10,34,100),(18,34,100),(11,34,101),(19,34,102),(5,37,109),(8,37,109),(12,37,109),(14,37,109),(19,37,109),(21,37,109),(27,37,109),(10,37,110),(4,37,111),(4,38,112),(12,38,112),(14,38,112),(19,38,112),(21,38,112),(27,38,112),(5,38,113),(8,38,114),(10,38,114),(5,39,115),(8,39,115),(10,39,115),(12,39,115),(19,39,115),(27,39,115),(4,39,117),(14,39,117);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
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
