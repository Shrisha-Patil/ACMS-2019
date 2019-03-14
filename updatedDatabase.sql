-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amazon1
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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(40) NOT NULL,
  `cost_per_ticket` float NOT NULL,
  `poster` varchar(45) DEFAULT NULL,
  `Date` date NOT NULL,
  `time` varchar(45) NOT NULL,
  `category` varchar(40) NOT NULL,
  `Trailer` varchar(45) DEFAULT NULL,
  `cast` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `Email_idx` (`Email`),
  CONSTRAINT `Email` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `card_number` double DEFAULT NULL,
  `Email2` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `email_idx` (`Email2`),
  CONSTRAINT `Email2` FOREIGN KEY (`Email2`) REFERENCES `user` (`Email`)
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
  `review_id` int(11) NOT NULL,
  `event_id2` int(11) DEFAULT NULL,
  `Email1` varchar(45) DEFAULT NULL,
  `Comment` varchar(45) NOT NULL,
  `Rating` int(1) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `Email_idx` (`Email1`),
  KEY `Event_id_idx` (`event_id2`),
  CONSTRAINT `Email1` FOREIGN KEY (`Email1`) REFERENCES `user` (`Email`),
  CONSTRAINT `event_id2` FOREIGN KEY (`event_id2`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
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
  `venue_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `venue_id_idx` (`venue_id`),
  KEY `event_id_idx` (`event_id`),
  CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  CONSTRAINT `venue_id` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes_place`
--

DROP TABLE IF EXISTS `takes_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `takes_place` (
  `event_id1` int(11) NOT NULL,
  `venue_id1` int(11) NOT NULL,
  KEY `venue_id_idx` (`venue_id1`),
  KEY `event_id_idx` (`event_id1`),
  CONSTRAINT `event_id1` FOREIGN KEY (`event_id1`) REFERENCES `event` (`event_id`),
  CONSTRAINT `venue_id1` FOREIGN KEY (`venue_id1`) REFERENCES `venue` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes_place`
--

LOCK TABLES `takes_place` WRITE;
/*!40000 ALTER TABLE `takes_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `takes_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tickets` (
  `Booking_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `seat_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `Email3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Booking_id`),
  KEY `seat_id_idx` (`seat_id`),
  KEY `payment_id_idx` (`payment_id`),
  KEY `Email3_idx` (`Email3`),
  CONSTRAINT `Email3` FOREIGN KEY (`Email3`) REFERENCES `user` (`Email`),
  CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `Email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_no` double DEFAULT NULL,
  `password` varchar(25) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
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

-- Dump completed on 2019-03-14 21:10:58
