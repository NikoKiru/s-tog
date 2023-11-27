CREATE DATABASE  IF NOT EXISTS `stog` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stog`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: stog
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `stogstations`
--

DROP TABLE IF EXISTS `stogstations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stogstations` (
  `ID` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `trackID` int DEFAULT NULL,
  `lineID` int DEFAULT NULL,
  `municipality` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `opend` int DEFAULT NULL,
  `metro` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `other` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `lineID` (`lineID`),
  KEY `trackID` (`trackID`),
  CONSTRAINT `stogstations_ibfk_1` FOREIGN KEY (`lineID`) REFERENCES `stoglines` (`ID`),
  CONSTRAINT `stogstations_ibfk_2` FOREIGN KEY (`trackID`) REFERENCES `stogtracks` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stogstations`
--

LOCK TABLES `stogstations` WRITE;
/*!40000 ALTER TABLE `stogstations` DISABLE KEYS */;
INSERT INTO `stogstations` VALUES (1,'Albertslund',1,1,'Albertslund',1963,'False','False'),(2,'AllerÃ¸d',2,2,'AllerÃ¸d',1968,'False','False'),(3,'AvedÃ¸re',3,2,'Hvidovre',1972,'False','False'),(4,'BagsvÃ¦rd',4,3,'Gladsaxe',1977,'False','False'),(5,'Ballerup',5,4,'Ballerup',1949,'False','False'),(6,'Bernstorffsvej',2,5,'Gentofte',1936,'False','False'),(7,'BirkerÃ¸d',2,2,'Rudersdal',1968,'False','False'),(8,'Bispebjerg',6,6,'KÃ¸benhavn',1996,'False','False'),(9,'BrÃ¸ndby Strand',3,2,'BrÃ¸ndby',1972,'False','False'),(10,'BrÃ¸ndbyÃ¸ster',1,3,'BrÃ¸ndby',1953,'False','False'),(11,'Buddinge',4,1,'Gladsaxe',1977,'False','False'),(12,'Carlsberg',7,7,'KÃ¸benhavn',2016,'False','False'),(13,'Charlottenlund',8,4,'Gentofte',1934,'False','False'),(14,'DanshÃ¸j',9,8,'KÃ¸benhavn',2005,'False','False'),(15,'DybbÃ¸lsbro',10,9,'KÃ¸benhavn',1934,'False','False'),(16,'DyssegÃ¥rd',4,1,'Gentofte',1977,'False','False'),(17,'Egedal',5,4,'Egedal',2002,'False','False'),(18,'Emdrup',4,1,'KÃ¸benhavn',1977,'False','False'),(19,'Farum',4,3,'FuresÃ¸',1977,'False','False'),(20,'Flintholm',11,10,'Frederiksberg',2004,'True','False'),(21,'Frederikssund',5,11,'Frederikssund',1989,'False','False'),(22,'Friheden',3,2,'Hvidovre',1972,'False','False'),(23,'Fuglebakken',6,6,'Frederiksberg',1936,'False','False'),(24,'Gentofte',2,5,'Gentofte',1936,'False','False'),(25,'Glostrup',1,1,'Glostrup',1953,'False','False'),(26,'Greve',3,12,'Greve',1979,'False','False'),(27,'GrÃ¸ndal',6,6,'Frederiksberg',1936,'False','False'),(28,'Hareskov',4,3,'FuresÃ¸',1977,'False','False'),(29,'Hellerup',12,13,'Gentofte',1934,'False','True'),(30,'Herlev',5,4,'Herlev',1949,'False','False'),(31,'HillerÃ¸d',2,2,'HillerÃ¸d',1968,'False','True'),(32,'Holte',2,12,'Rudersdal',1936,'False','False'),(33,'Hundige',3,12,'Greve',1976,'False','False'),(34,'Husum',5,4,'KÃ¸benhavn',1949,'False','False'),(35,'Hvidovre',1,3,'Hvidovre',1953,'False','False'),(36,'HÃ¸je Taastrup',1,1,'HÃ¸je-Taastrup',1986,'False','True'),(37,'HÃ¸velte',2,2,'AllerÃ¸d',1968,'False','False'),(38,'IshÃ¸j',3,12,'IshÃ¸j',1976,'False','False'),(39,'Islev',5,14,'KÃ¸benhavn',1949,'False','False'),(40,'Jersie',3,5,'SolrÃ¸d',1983,'False','False'),(41,'Jyllingevej',5,14,'KÃ¸benhavn',1949,'False','False'),(42,'JÃ¦gersborg',2,5,'Gentofte',1936,'False','True'),(43,'Karlslunde',3,12,'Greve',1979,'False','False'),(44,'KB Hallen',6,6,'Frederiksberg',2005,'False','False'),(45,'Kildebakke',4,1,'Gladsaxe',1977,'False','False'),(46,'Kildedal',5,11,'Ballerup',2000,'False','False'),(47,'Klampenborg',8,11,'Gentofte',1934,'False','True'),(48,'KÃ¸benhavn H',13,9,'KÃ¸benhavn',1934,'True','True'),(49,'KÃ¸ge',3,5,'KÃ¸ge',1983,'False','True'),(50,'KÃ¸ge Nord',3,5,'KÃ¸ge',2019,'False','True'),(51,'Langgade',5,14,'KÃ¸benhavn',1941,'False','False'),(52,'Lyngby',2,12,'Lyngby-TaarbÃ¦k',1936,'False','False'),(53,'Malmparken',5,4,'Ballerup',1989,'False','False'),(54,'MÃ¥lÃ¸v',5,11,'Ballerup',1989,'False','False'),(55,'Nordhavn',14,15,'KÃ¸benhavn',1934,'True','False'),(56,'Ny Ellebjerg',15,16,'KÃ¸benhavn',2006,'False','True'),(57,'NÃ¸rrebro',6,6,'KÃ¸benhavn',1934,'True','False'),(58,'NÃ¸rreport',13,9,'KÃ¸benhavn',1934,'True','True'),(59,'Ordrup',8,11,'Gentofte',1934,'False','False'),(60,'Peter Bangs Vej',5,14,'Frederiksberg',1941,'False','False'),(61,'Ryparken',16,8,'KÃ¸benhavn',1934,'False','False'),(62,'RÃ¸dovre',1,3,'RÃ¸dovre',1964,'False','False'),(63,'SjÃ¦lÃ¸r',3,12,'KÃ¸benhavn',1972,'False','False'),(64,'Skovbrynet',4,3,'Gladsaxe',1977,'False','False'),(65,'Skovlunde',5,4,'Ballerup',1949,'False','False'),(66,'SolrÃ¸d Strand',3,12,'SolrÃ¸d',1979,'False','False'),(67,'Sorgenfri',2,5,'Lyngby-TaarbÃ¦k',1936,'False','False'),(68,'StengÃ¥rden',4,3,'Gladsaxe',1977,'False','False'),(69,'StenlÃ¸se',5,11,'Egedal',1989,'False','False'),(70,'SvanemÃ¸llen',14,15,'KÃ¸benhavn',1934,'False','False'),(71,'Sydhavn',3,12,'KÃ¸benhavn',1972,'False','False'),(72,'Taastrup',1,1,'HÃ¸je-Taastrup',1963,'False','False'),(73,'Valby',7,7,'KÃ¸benhavn',1934,'False','True'),(74,'VallensbÃ¦k',3,2,'VallensbÃ¦k',1972,'False','False'),(75,'Vangede',4,1,'Gentofte',1977,'False','False'),(76,'VanlÃ¸se',5,4,'KÃ¸benhavn',1941,'True','False'),(77,'VeksÃ¸',5,11,'Egedal',1989,'False','False'),(78,'Vesterport',13,9,'KÃ¸benhavn',1934,'False','False'),(79,'Vigerslev AllÃ©',6,6,'KÃ¸benhavn',2005,'False','False'),(80,'Vinge',5,11,'Frederikssund',2020,'False','False'),(81,'Virum',2,5,'Lyngby-TaarbÃ¦k',1936,'False','False'),(82,'VÃ¦rlÃ¸se',4,3,'FuresÃ¸',1977,'False','False'),(83,'Ã˜lby',3,5,'KÃ¸ge',1983,'False','True'),(84,'Ã˜lstykke',5,11,'Egedal',1989,'False','False'),(85,'Ã˜sterport',13,9,'KÃ¸benhavn',1934,'True','True'),(86,'Ã…lholm',6,6,'KÃ¸benhavn',2005,'False','False'),(87,'Ã…marken',3,2,'Hvidovre',1972,'False','False');
/*!40000 ALTER TABLE `stogstations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 11:52:52
