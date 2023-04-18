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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL,
  `cust_Fname` varchar(20) NOT NULL,
  `cust_Lname` varchar(20) NOT NULL,
  `cust_gender` enum('F','M') DEFAULT NULL,
  `cust_phone` int DEFAULT NULL,
  `c_address` varchar(40) DEFAULT NULL,
  `table_ID` int DEFAULT NULL,
  `resrvation_date` date DEFAULT NULL,
  `resrvation_time` time DEFAULT NULL,
  `no_of_people` int DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `table_ID_idx` (`table_ID`),
  CONSTRAINT `table_ID` FOREIGN KEY (`table_ID`) REFERENCES `tablee` (`T_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (660,'Mohammed','Ali','M',544887835,'Dammam',331,'2022-04-03','04:00:00',6),(661,'Sara','Khaled','F',503377123,'Khobar',334,'2022-05-18','07:30:00',4),(662,'Ahmed','Nasser','M',505893352,'Dammam',335,'2022-05-21','08:30:00',6),(663,'May','Saleh','F',598990463,'Dhahran',330,'2022-05-23','07:00:00',4),(664,'Reem','Ahmed','F',577882236,'Khobar',332,'2022-02-11','06:00:00',8),(665,'Saleh','Ali','M',599330033,'Dammam',337,'2022-04-14','08:00:00',4),(666,'Rawan','Mohammed','F',505647732,'Khobar',338,'2022-06-22','04:30:00',2),(667,'Ali','Hamad','M',500993728,'Jubail',339,'2022-04-08','05:30:00',6),(668,'Jana','Salem','F',505781166,'Jubail',333,'2022-06-23','04:00:00',2),(669,'Khaled','Abdullah','M',505229637,'Dhahran',336,'2022-04-14','05:00:00',8);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20  3:45:56
