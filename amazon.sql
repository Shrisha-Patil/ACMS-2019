CREATE DATABASE  IF NOT EXISTS `amazon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `amazon`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: amazon
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `email` varchar(45) NOT NULL,
  `History` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `user` (`email_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `event_Id` int(11) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_category` varchar(20) NOT NULL,
  `event_genre` varchar(20) DEFAULT NULL,
  `event_cost` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(45) NOT NULL,
  `poster` blob,
  `trailer` blob,
  `event_cast` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_Id`),
  UNIQUE KEY `event_name_UNIQUE` (`event_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Gully Boy','Movie','Drama',230,'2019-02-18','04:30',NULL,NULL,'Ranveer Singh, Alia Bhatt, Kalki Koechlin'),(2,'Aero India','Event',NULL,600,'2019-02-20','2:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `booking_id` int(11) NOT NULL,
  `card_no` bigint(16) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  CONSTRAINT `booking_id` FOREIGN KEY (`booking_id`) REFERENCES `ticket` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `event_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,4,'Nice Movie'),(2,5,'Must watch show');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `no_of_seats` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `venue_id_idx` (`venue_id`),
  CONSTRAINT `venue_id` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,50,101),(2,60,102),(3,1500,103);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `no_of_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `no_of_seats_idx` (`no_of_seats`),
  CONSTRAINT `no_of_seats` FOREIGN KEY (`no_of_seats`) REFERENCES `seats` (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `email_id` varchar(45) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `phonenumber` bigint(11) NOT NULL,
  `address` varchar(80) NOT NULL,
  `photo` blob,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `phonenumber_UNIQUE` (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('lakshmi@gmail.com','lak_desai','desai','F',9740005368,'Banglore',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`venue_id`),
  KEY `event_id_idx` (`eventid`),
  CONSTRAINT `eventid` FOREIGN KEY (`eventid`) REFERENCES `event` (`event_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (101,1,'Orion Mall','Banglore'),(102,1,'Yes Mall','Mumbai'),(103,2,'Air force station','Banglore');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-17 13:25:37
