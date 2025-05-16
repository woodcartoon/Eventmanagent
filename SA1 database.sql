-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: event_planner
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `attendee_information`
--

DROP TABLE IF EXISTS `attendee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendee_information` (
  `Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contact_Details` varchar(10) NOT NULL,
  `Event_Attending` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Contact_Details_UNIQUE` (`Contact_Details`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee_information`
--

LOCK TABLES `attendee_information` WRITE;
/*!40000 ALTER TABLE `attendee_information` DISABLE KEYS */;
INSERT INTO `attendee_information` VALUES ('Frank','Mathew','frankmathew@gmail.com','0865416633','ANC anual celebration'),('steve','mbatha','mbathasteve23@gmail.com','086542962','Shimza one man show');
/*!40000 ALTER TABLE `attendee_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_table`
--

DROP TABLE IF EXISTS `event_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_table` (
  `Event_Name` varchar(45) NOT NULL,
  `Event_Description` varchar(45) NOT NULL,
  `Organiser_Name` varchar(45) NOT NULL,
  `Organiser_Contact` varchar(45) NOT NULL,
  `Event_Date` date NOT NULL,
  `Event_Time` varchar(45) NOT NULL,
  PRIMARY KEY (`Event_Name`),
  UNIQUE KEY `Event_Name_UNIQUE` (`Event_Name`),
  UNIQUE KEY `Event_Description_UNIQUE` (`Event_Description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_table`
--

LOCK TABLES `event_table` WRITE;
/*!40000 ALTER TABLE `event_table` DISABLE KEYS */;
INSERT INTO `event_table` VALUES ('ANC anual celebration','political party','Mr T Ubise','0787680454','2024-11-27','15:30:00'),('Shimza one man show','party event','Mr F mohale','0717861481','2024-12-25','18:00:00');
/*!40000 ALTER TABLE `event_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_management`
--

DROP TABLE IF EXISTS `venue_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue_management` (
  `Venue_Name` varchar(45) NOT NULL,
  `Venue_Address` varchar(80) NOT NULL,
  `Venue_Capacity` varchar(45) NOT NULL,
  `Venue_Availability` varchar(45) NOT NULL,
  PRIMARY KEY (`Venue_Name`),
  UNIQUE KEY `Venue_Name_UNIQUE` (`Venue_Name`),
  UNIQUE KEY `Venue_Address_UNIQUE` (`Venue_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_management`
--

LOCK TABLES `venue_management` WRITE;
/*!40000 ALTER TABLE `venue_management` DISABLE KEYS */;
INSERT INTO `venue_management` VALUES ('FNB stadium','Soccer City Ave, Nasrec, Johannesburg, 2147','94736','available'),('Mohlareng stadium','539 Reverend R.T.J. Namane Dr, Teanong, Thembisa, 1632','20000','available');
/*!40000 ALTER TABLE `venue_management` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17  2:51:34
