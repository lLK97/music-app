CREATE DATABASE  IF NOT EXISTS `music_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `music_app`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: music_app
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` int NOT NULL,
  `name_artist` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Đen','https://i.scdn.co/image/ab6761610000e5eb737b3f8838b053cff8c2c75e','2022-11-12 10:14:08','2022-11-12 17:14:08'),(2,'Mỹ Tâm','https://i.scdn.co/image/ab6761610000e5ebe033eca862ece1cb7a3bed44','2022-11-12 10:14:08','2022-11-12 17:14:08'),(3,'Adele','https://i.scdn.co/image/ab6761610000e5eb68f6e5892075d7f22615bd17','2022-11-12 10:14:08','2022-11-12 17:14:08'),(4,'Vũ','https://i.scdn.co/image/ab6761610000e5eb9896fc9a2e28384f2d705c45','2022-11-12 10:14:08','2022-11-12 17:14:08'),(5,'M4U Thùy Chi','https://i.scdn.co/image/ab6761610000e5eb9896fc9a2e28384f2d705c45','2022-11-12 10:14:08','2022-11-12 17:14:08'),(6,'Thùy Chi','https://i.scdn.co/image/ab6761610000e5eb0e7785316847995f2313089b','2022-11-12 10:14:08','2022-11-12 17:14:08'),(7,'Rihanna','https://i.scdn.co/image/ab6761610000e5eb99e4fca7c0b7cb166d915789','2022-11-12 10:14:08','2022-11-12 17:14:08'),(8,'Eminem','https://i.scdn.co/image/ab6761610000e5eba00b11c129b27a88fc72f36b','2022-11-12 10:14:08','2022-11-12 17:14:08'),(9,'Justin Bieber','https://i.scdn.co/image/ab6761610000e5eb8ae7f2aaa9817a704a87ea36','2022-11-12 10:14:08','2022-11-12 17:14:08'),(10,'Ed Sheeran','https://i.scdn.co/image/ab6761610000e5eb12a2ef08d00dd7451a6dbed6','2022-11-12 10:14:08','2022-11-12 17:14:08'),(11,'Đinh Mạnh Ninh','https://i.scdn.co/image/ab6761610000e5eb3657cbe793ebd373f5133d4b','2022-11-12 10:14:08','2022-11-12 17:14:08');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 22:24:59
