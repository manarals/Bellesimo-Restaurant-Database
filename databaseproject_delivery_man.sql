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
-- Table structure for table `delivery_man`
--

DROP TABLE IF EXISTS `delivery_man`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man` (
  `deliv_man_id` int NOT NULL,
  `branch_id` int NOT NULL,
  `deliv_man_FName` varchar(45) NOT NULL,
  `deliv_man_MName` varchar(45) NOT NULL,
  `deliv_man_LName` varchar(50) NOT NULL,
  `food_delvery_service` enum('Hunger Station','Jahez','MRSOOL') NOT NULL,
  `M_ID` int NOT NULL,
  PRIMARY KEY (`deliv_man_id`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `manager_id2_idx` (`M_ID`),
  CONSTRAINT `branchid12` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branche_ID`),
  CONSTRAINT `manager_id2` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man`
--

LOCK TABLES `delivery_man` WRITE;
/*!40000 ALTER TABLE `delivery_man` DISABLE KEYS */;
INSERT INTO `delivery_man` VALUES (220,550,'Yousef','Abdullah','Alharbi','Hunger Station',770),(221,551,'Ibrahim','Omar','Alotaibi','Jahez',771),(222,552,'manar','mohammad','alsayed','Jahez',772),(223,553,'Omar','Mohammed','Alamri','MRSOOL',773),(224,554,'Khalid','Eyad','Almansour','Jahez',774),(225,555,'Saleh','Ismail','Aldughaither','Hunger Station',775),(226,556,'John','Robert','Enrique','Hunger Station',776),(228,558,'Kevin','Alexander','Robinson','MRSOOL',778),(229,559,'Samuel','Pablo','Jones','Jahez',779);
/*!40000 ALTER TABLE `delivery_man` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20  3:45:58
