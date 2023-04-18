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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `Item_ID` int NOT NULL,
  `DishName` varchar(20) NOT NULL,
  `Chef_ID` int NOT NULL,
  `PriceOfMenueItem` double NOT NULL,
  `ServingTime` double NOT NULL,
  `Quantity_Available` int NOT NULL,
  `Calories` int DEFAULT NULL,
  `DishType` varchar(20) NOT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Chef_ID_idx` (`Chef_ID`),
  CONSTRAINT `Chef_ID` FOREIGN KEY (`Chef_ID`) REFERENCES `chef` (`Chef_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Pizza',990,30,15,100,250,'Hot Food'),(2,'popcorn',991,25,5,350,230,'Popcorn'),(3,'Chicken Hotdog',992,35,20,75,284,'Hot Food'),(4,'Beef Hotdog',993,40,10,75,390,'Hot Food'),(5,'Vanila Ice cream',994,20,1,35,300,'Desserts'),(6,'Choclate Ice cream',995,20,1,35,360,'Desserts'),(7,'Superme Nachos',996,50,5,250,780,'Nachos'),(8,'Deluxe Nachos',997,50,5,250,800,'Nachos'),(9,'Pepsi',998,9,0,400,250,'Soft Drinks'),(10,'Seven Up',999,9,0,400,243,'Soft Drinks');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
