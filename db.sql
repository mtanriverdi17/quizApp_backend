CREATE DATABASE  IF NOT EXISTS `quiz_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz_app`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20211013191014_InitialCreate','5.0.11');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Choice`
--

DROP TABLE IF EXISTS `Choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Choice` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ChoiceText` text,
  `IsCorrect` tinyint(1) NOT NULL,
  `QuestionId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Choice_QuestionId` (`QuestionId`),
  CONSTRAINT `FK_Choice_Question_QuestionId` FOREIGN KEY (`QuestionId`) REFERENCES `Question` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Choice`
--

LOCK TABLES `Choice` WRITE;
/*!40000 ALTER TABLE `Choice` DISABLE KEYS */;
INSERT INTO `Choice` VALUES (1,'Delhi',0,1),(2,'Washington',1,1),(3,'Texas',0,1),(4,'California',0,1),(5,'New York',0,1),(6,'1',0,2),(7,'3',0,2),(8,'5',1,2),(9,'7',0,2),(10,'9',0,2),(11,'North America',0,3),(12,'Asia',1,3),(13,'Africa',0,3),(14,'Australia',0,3),(15,'Europe',0,3),(20,'Bald Eagle',0,4),(21,'Peregrine Falcon',1,4),(22,'Humingbird',0,4),(23,'Raven',0,4),(24,'Crow',0,4),(25,'Angel Falls, Venezuela',1,5),(26,'Niagara Falls, New York',0,5),(27,'Wailua Falls, Hawaii',0,5),(28,'Sutherland Falls, New Zealand',0,5),(29,'Manavgat, Turkey',0,5),(30,'Q',0,6),(31,'J',1,6),(32,'F',0,6),(33,'X',0,6),(34,'A',0,6),(35,'Dog',0,7),(36,'Whale',0,7),(37,'Bear',0,7),(38,'Rat',1,7),(39,'Snail',0,7),(40,'Honey',1,8),(41,'Beef Jerky',0,8),(42,'Cereal',0,8),(43,'Beans',0,8),(44,'Egg',0,8),(45,'Salt water',0,9),(46,'Urine',1,9),(47,'Mint Tea',0,9),(48,'Fresh Water',0,9),(49,'Wine',0,9),(50,'Around 500',0,10),(51,'Around 10,000',0,10),(52,'Around 50,000',1,10),(53,'Around 1 million',0,10),(54,'Around 500,000',0,10);
/*!40000 ALTER TABLE `Choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Question`
--

DROP TABLE IF EXISTS `Question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Question` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `QuestionText` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Question`
--

LOCK TABLES `Question` WRITE;
/*!40000 ALTER TABLE `Question` DISABLE KEYS */;
INSERT INTO `Question` VALUES (1,'What\'s the capital city of USA?'),(2,'How many rings appear on the Olympic flag?'),(3,'Which is the biggest continent in the world?'),(4,'Which is the fastest bird in the world?'),(5,'What is the tallest waterfall in the world?'),(6,'What letter is not present anywhere on the periodic table of elements?'),(7,'Which of these animals has the ability to laugh?'),(8,'Which of these foods will never spoil?'),(9,'What is something the ancient Romans used as mouthwash?'),(10,'About how many scents can a human nose remember?');
/*!40000 ALTER TABLE `Question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'quiz_app'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 11:55:59
