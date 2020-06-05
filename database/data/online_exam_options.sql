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
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id_option` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_question` int(10) unsigned NOT NULL,
  `option` varchar(100) NOT NULL,
  `is_true` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_option`),
  KEY `id_option_question_idx` (`id_question`),
  CONSTRAINT `id_option_question` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,1,'Cascading Style Sheet',1),(2,1,'Central System Scaling',0),(3,1,'Client Server Side',0),(4,2,'p',1),(5,2,'txt',0),(6,2,'par',0),(7,3,'border-radius',1),(8,3,'corner-radius',0),(9,3,'round-corner',0),(10,4,'.toString()',1),(11,4,'.tostring()',0),(12,4,'.toString',0),(13,5,'type name',1),(14,5,'name type',0),(15,5,'name',0),(16,6,'static',1),(17,6,'default',0),(18,6,'protected',0),(19,7,'public',1),(20,7,'final',0),(21,7,'abstract',0),(22,8,'A class can implement only one interface',1),(23,8,'A class is allowed to extend just one class',0),(24,8,'An interface methods are always abstract',0),(25,9,'',1),(26,9,'',0),(27,9,'',0),(28,10,'',1),(29,10,'',0),(30,10,'',0),(31,11,'',1),(32,11,'',0),(33,11,'',0),(34,12,'',1),(35,12,'',0),(36,12,'',0),(37,13,'',1),(38,13,'',0),(39,13,'',0),(40,14,'Set of steps',1),(41,14,'Math calculations',0),(42,14,'Programming language',0),(43,15,'11010110',1),(44,15,'10100011',0),(45,15,'11110111',0),(46,16,'179',1),(47,16,'120',0),(48,16,'86',0),(49,17,'10110011',1),(50,17,'10110000',0),(51,17,'10111100',0),(52,18,'B3',1),(53,18,'B13',0),(54,18,'90A',0),(55,19,'MB',1),(56,19,'Mb',0),(57,19,'KB',0),(58,20,'int name',1),(59,20,'name int',0),(60,20,'var int',0),(61,21,'Set of steps',1),(62,21,'Study plan',0),(63,21,'None',0),(64,22,'for ( int i = 0; i < x; i++)',1),(65,22,'for ( int i = 0; x < times; i++)',0),(66,22,'if ( i < x)',0),(67,23,'while(condition) {process};',1),(68,23,'while(condition) {process}',0),(69,23,'{process} while(condition);',0),(70,24,'if (x == y)',1),(71,24,'if (x is y)',0),(72,24,'if (x = y)',0),(73,25,'2',1),(74,25,'5',0),(75,25,'11',0),(76,26,'2',1),(77,26,'x',0),(78,26,'0',0),(79,27,'(3/2)x^2 + 2x',1),(80,27,'x + 0',0),(81,27,'3x + 2',0),(82,28,'',1),(83,28,'',0),(84,28,'',0),(85,29,'',1),(86,29,'',0),(87,29,'',0),(88,30,'',1),(89,30,'',0),(90,30,'',0),(91,31,'',1),(92,31,'',0),(93,31,'',0),(94,32,'',1),(95,32,'',0),(96,32,'',0),(97,33,'True',1),(98,33,'False',0),(99,33,'-',0),(100,34,'A + B + C',1),(101,34,'A + BC',0),(102,34,'AB + AC',0),(103,35,'FALSE',1),(104,35,'TRUE',0),(105,35,'None of the above',0),(106,36,'TRUE',1),(107,36,'FALSE',0),(108,36,'TRUE and FALSE',0),(109,37,'Z',1),(110,37,'A',0),(111,37,'H',0),(112,38,'true',1),(113,38,'false',0),(114,38,'false',0),(115,39,'9',1),(116,39,'5',0),(117,39,'1',0);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
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
