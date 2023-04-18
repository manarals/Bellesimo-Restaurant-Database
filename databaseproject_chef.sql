-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: databaseproject
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef` (
  `Chef_ID` int NOT NULL,
  `Chef_Fname` varchar(45) NOT NULL,
  `Chef_Mname` varchar(45) NOT NULL,
  `Chef_Lname` varchar(45) DEFAULT NULL,
  `Chef_Pnum` int NOT NULL,
  `Chef_Salary` int NOT NULL,
  `Chef_Jop_title` varchar(45) NOT NULL,
  `Chef_gender` enum('F','M') DEFAULT NULL,
  `brunch_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`Chef_ID`),
  KEY `brunch_id_idx` (`brunch_id`),
  KEY `manager_id_idx` (`manager_id`),
  CONSTRAINT `brunch_id` FOREIGN KEY (`brunch_id`) REFERENCES `branches` (`branche_ID`),
  CONSTRAINT `manager_id` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (990,'ali','ahmed','alamri',512322211,15000,'HEAD','M',550,770),(991,'ahmed','yousif',NULL,512433322,10000,'SOURch','M',551,771),(992,'fahad','Rami','alromi',512544433,8000,'SUB','M',552,772),(993,'faisal','khaleed','alarfaj',512655544,8000,'SUB','M',553,773),(994,'mohammed','waleed','alali',512766655,8000,'SUB','M',554,774),(995,'reem','omar','alhar',512877766,8000,'SUB','F',555,775),(996,'rema','ali','alhajri',512988877,8000,'SUB','F',556,776),(997,'sara','abdullah','alzamel',513199988,8000,'SUB','F',557,777),(998,'soha','hussan',NULL,513229911,8000,'SUB','F',558,778),(999,'noha','hamad','alomair',513312100,8000,'SUB','F',559,779);
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20  3:45:57
