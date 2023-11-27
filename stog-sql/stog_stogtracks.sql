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
-- Table structure for table `stogtracks`
--

DROP TABLE IF EXISTS `stogtracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stogtracks` (
  `ID` int NOT NULL,
  `number_of_tracks` int DEFAULT NULL,
  `tracks` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_danish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stogtracks`
--

LOCK TABLES `stogtracks` WRITE;
/*!40000 ALTER TABLE `stogtracks` DISABLE KEYS */;
INSERT INTO `stogtracks` VALUES (1,1,'HÃ¸je Taastrup-banen'),(2,1,'Nordbanen'),(3,1,'KÃ¸ge Bugt-banen'),(4,1,'Hareskovbanen'),(5,1,'Frederikssundbanen'),(6,1,'Ringbanen'),(7,2,'Frederikssundbanen, HÃ¸je Taastrup-banen'),(8,1,'Klampenborgbanen'),(9,2,'HÃ¸je Taastrup-banen, Ringbanen'),(10,3,'Frederikssundbanen, HÃ¸je Taastrup-banen, KÃ¸ge Bugt-banen'),(11,2,'Frederikssundbanen, Ringbanen'),(12,3,'Klampenborgbanen, Nordbanen, Ringbanen'),(13,1,'Boulevardbanen'),(14,3,'Hareskovbanen, Klampenborgbanen, Nordbanen'),(15,2,'KÃ¸ge Bugt-banen, Ringbanen'),(16,1,'Hareskovbanen, Ringbanen');
/*!40000 ALTER TABLE `stogtracks` ENABLE KEYS */;
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
