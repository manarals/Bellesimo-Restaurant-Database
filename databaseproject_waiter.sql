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
-- Table structure for table `waiter`
--

DROP TABLE IF EXISTS `waiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiter` (
  `Waiter_Id` int NOT NULL,
  `WFName` varchar(15) DEFAULT NULL,
  `WLNAme` varchar(15) DEFAULT NULL,
  `WSalary` float NOT NULL,
  `StartDate` date DEFAULT NULL,
  `WBranch_ID` int DEFAULT NULL,
  `WManager_ID` int DEFAULT NULL,
  PRIMARY KEY (`Waiter_Id`),
  KEY `WBranch_ID` (`WBranch_ID`),
  KEY `WManager_ID` (`WManager_ID`),
  CONSTRAINT `waiter_ibfk_1` FOREIGN KEY (`WBranch_ID`) REFERENCES `branches` (`branche_ID`),
  CONSTRAINT `waiter_ibfk_2` FOREIGN KEY (`WManager_ID`) REFERENCES `manager` (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiter`
--

LOCK TABLES `waiter` WRITE;
/*!40000 ALTER TABLE `waiter` DISABLE KEYS */;
INSERT INTO `waiter` VALUES (110,'Hiba','Raza',500,'2021-09-12',559,779),(111,'Amna','Sikander',519,'2021-08-12',555,775),(112,'Talha','Feroz',600,'2020-04-23',552,772),(113,'Hamza','Ahsan',750,'2021-05-22',551,771),(114,'Rose','Daim',500,'2021-07-15',552,772),(115,'Askari','Yusuf',280,'2022-10-13',552,772),(116,'Laiba','Talha',378,'2021-05-12',554,774),(117,'Imaan','Akbar',800,'2019-03-23',558,778),(118,'Azfer','Imran',490,'2021-09-12',557,777),(119,'Rahim','Imran',500,'2021-12-17',556,776),(120,'Raza','Akbar',215,'2022-04-02',553,773);
/*!40000 ALTER TABLE `waiter` ENABLE KEYS */;
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
