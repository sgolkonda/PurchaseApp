-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: purchase
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `purchase`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `purchase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `purchase`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (101,'Robb','Stark','Winterfell','robbstarkwolf@gmail.com','9848022338','2021-01-30 01:19:51','2021-01-29 19:19:51'),(102,'Sansa','Stark','Winterfell','ladysansa@yahoo.com','9143143143','2021-01-30 01:37:28','2021-01-29 19:37:28'),(103,'Arya','Stark','Winterfell','aryanoone@ymail.com','8837428939','2021-01-30 01:37:28','2021-01-29 19:37:28'),(104,'Bran','Stark','Winterfell','brantheraven@gmail.com','9952255339','2021-01-30 01:37:28','2021-01-29 19:37:28'),(105,'Jon','Snow','Winterfell','nothingsnow@hotmail.com','6652263339','2021-01-30 01:37:28','2021-01-29 19:37:28'),(106,'Tyrion','Lannister','CasterlyRock','littlebeast@hotmail.com','7138943654','2021-01-30 01:37:28','2021-01-29 19:37:28'),(107,'Cersei','Lannister','KingsLanding','bitchqueen@gmail.com','9948099480','2021-01-30 01:37:28','2021-01-29 19:37:28'),(108,'Jaime','Lannister','KingsLanding','kingslayer@gmail.com','9455755749','2021-01-30 01:37:28','2021-01-29 19:37:28'),(109,'Dany','Targaryen','DragonStone','motherodragons@gmail.com','9493493494','2021-01-30 01:37:28','2021-01-29 19:37:28');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `itemName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` double NOT NULL,
  `totalPrice` double NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`),
  KEY `id` (`id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,101,'shampoo',1,12.4,12.4,'2021-01-30 01:55:29','2021-01-29 19:55:29'),(1002,102,'soap',10,0.99,9.9,'2021-01-30 02:01:37','2021-01-29 20:01:37'),(1003,101,'cologne',1,22.99,22.99,'2021-01-30 02:01:37','2021-01-29 20:01:37'),(1004,108,'perfume',1,69.99,69.99,'2021-01-30 02:01:37','2021-01-29 20:01:37'),(1005,106,'toothpaste',2,2.5,5,'2021-01-30 02:01:37','2021-01-29 20:01:37'),(1006,103,'brush',10,2.5,25,'2021-01-31 18:51:26','2021-01-31 12:51:26'),(1007,104,'gum',4,6.25,25,'2021-01-31 18:51:26','2021-01-31 12:51:26'),(1008,105,'jeans',1,19.99,19.99,'2021-01-31 18:51:26','2021-01-31 12:51:26'),(1009,107,'shirt',2,14.99,29.98,'2021-01-31 18:51:26','2021-01-31 12:51:26'),(1010,109,'crown',1,99.99,99.99,'2021-01-31 18:51:26','2021-01-31 12:51:26'),(1011,109,'cape',5,1.25,6.25,'2021-01-31 18:51:26','2021-01-31 12:51:26');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 14:51:24
