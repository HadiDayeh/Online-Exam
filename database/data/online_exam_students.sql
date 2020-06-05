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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id_student` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_student`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Mohammad','Khalaf','mohammad.khalaf@student.com','$2y$10$SxZiGZkV0xf6N5f3SviLIe0IMfGxVtoBkw6entWEQjeMpP7x4yPqm'),(2,'Marwa','Ghanem','marwa.ghanem@student.com','$2y$10$1nKua1MpCqccOfhip1ZjjOC/7Ffkz8JcLF2DN0kJ0I5OYAAANdowm'),(3,'Samira','Mansour','samira.mansour@student.com','$2y$10$DtDQQ5HG9niEtSmPjC/M5ec89FE0FWvoNnA8rM17IxFZ9Pr7xMV1G'),(4,'Mostafa','Ahmad','mostafa.ahmad@student.com','$2y$10$2ZU0i6svw4nc6oXEGNSeUeVahpul6loma9yJjNWOyyngjsQOmoora'),(5,'Khalil','Yunis','khalil.yunis@student.com','$2y$10$4RjIjk7WF2Nm48xaW217Beq7ouWB66w.qwfgFVBKgMra.5CjySTQa'),(6,'Ahmad','Slim','ahmad.slim@student.com','$2y$10$M8UsEV1nCHHg4MsyxfjsI.etAdeL2UnAFHdhuE5Xh/nAFDJQSIJHq'),(7,'Abed','Nassour','abed.nassour@student.com','$2y$10$MYLxW0bkA//ns0SUNbpnN.sXxxbL6VzBZpMjODwXvMUBi4o.t0Wgq'),(8,'Alaa','Bader','alaa.bader@student.com','$2y$10$SPj1Hudh/LuwdyJjgUReH.JzineUoA5hN4eAleDhNH90yDleDcyJ6'),(9,'Ebtisam','Zaghloul','ebtisam.zaghloul@student.com','$2y$10$Hz6WzwyP/.1WUZPzW3MS2e1SGD4iAr7RUIuYr6oOMjxhUnat9juEO'),(10,'Hanan','Dakek','hanan.dakek@student.com','$2y$10$weltg4qewoTSqx/S8AJRk.b3ahMsG1qDEnSqntnnLh50dDFyew2Ry'),(11,'Karim','El Mawla','karim.elmawla@student.com','$2y$10$qnEaqc6ltdYmKvFPzv4l2eNDpe.W8CmFzPdrOoX02Ru3Aej6r3Fcm'),(12,'Ali','Nasrallah','ali.nasrallah@student.com','$2y$10$kJsItf4tLPaKrS9UzPwqAuDYVRzbzF8pLs6CFOKrb4m6qrDWvnEWW'),(13,'Mahmoud','Farhat','mahmoud.farhat@student.com','$2y$10$FnGvTGrbmrwu6FFDYrk//.Ur8th6IsRK7K/b7b7Ca4.lczAjzMHr6'),(14,'Munir ','Taha','munir.taha@student.com','$2y$10$kSMMsyJLKtInRuMN7XCeP.dfSxcRetJhWuq.FkFQ0QZdbLJdtbk2S'),(15,'Hadi','Dayeh','hadi.dayeh@student.com','$2y$10$tchYUZlKcB3reQzlxAJk6OWa5WatWGw45199MI1UtOH63O.Q4JWIy'),(16,'Joseph','Adel','joseph.adel@student.com','$2y$10$glnBA2qwWij4rzkGxzGH9OW0aaBVLu0AuClqAf1p4cI583y2Di.a.'),(17,'Abbas','Nour El Deen','abbas.noureldeen@student.com','$2y$10$F/1UJNjc6YSst0Mg8xhkeO/dQ5ddmN.bKFelq2PjH.NxRX0y3sSzm'),(18,'Rayan','Jalloul','rayan.jalloul@student.com','$2y$10$0813yqueNP8wmHZycngjMuluVVuOlPBydoajCyt/ITI.q4BWA9cEi'),(19,'Safaa','Sultan','safaa.sultan@student.com','$2y$10$ukjryAMOrGxm3xIZv2Vdi.mK/8.9Lea4lL98fPK8/V8KrVys76Bae'),(20,'Salam','Derbas','salam.derbas@student.com','$2y$10$OXo.qnVq4HIyukrSfGwcs.YrtNwqK3L7YhpPvx1i3YDLg4UbLsmxS'),(21,'Tahani','Khalil','tahani.khalil@student.com','$2y$10$8Kxqmrcp0iVm4WxNhFzhvOdcE1Vvz4811BZzDuWfEnnQJ1/u8xcAK'),(22,'Zein','Zreik','zein.zreik@student.com','$2y$10$boGwIof3XbazBha.kNjyFesEJQGhSilIq3hEdxDyQQ4qD3mrmZ8LK'),(23,'Jamil','Mansour','jamil.mansour@student.com','$2y$10$InzTDlu1UaBSs.C/AyvxwufMaXDFOpb5BTc7a2YbzSDocGS.eY1tC'),(24,'Hassan','Barakat','hassan.barakat@student.com','$2y$10$HOr9zGXiz3NJnYPOcW82.eMlTR6PvMb84E5osZjtFbn4iQmmdzDHa'),(25,'Samar','Nasser','samar.nasser@student.com','$2y$10$2bPGNAfTqWMnY8rrtf/KwOUllQtPEQ4e/dC2WST1Xl/cwsZDnKBvq'),(26,'Khawla','Mokdad','khawla.mokdad@student.com','$2y$10$0cy1ZTaUGXfgrB8rylWLF.GtgUqCQukc45Lv9e8eJHTdPnnSXhOTm'),(27,'Reem','Trabolsi','reem.trabolsi@student.com','$2y$10$EKAra3Y339T9TndOpRZStOZo.kFcg.J3CxQbWswRW2ujaSZNcwXeW'),(28,'Anna','Smith','anna.smith@student.com','$2y$10$rLzoRddKLN6vpfy1AZXD6edIpBFnbz/ohIYrpmNmlpslSi13a8nLK'),(29,'Yara','Yaseen','yara.yaseen@student.com','$2y$10$NOTPUgBLJjKrfHnNxwp0zehwbZxptwiaynP8mylxpqI4IdAxx5cfy'),(30,'Nancy ','Qarout','nancy.qarout@student.com','$2y$10$ENwTgUjEe.doA7/ia7NWP.z/6y2WqXRdpMPB3cj12KR8iilhCcx6C');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
