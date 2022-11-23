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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL,
  `artistId` int DEFAULT NULL,
  `name_albums` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,1,'Show của Đen','Đen','2022-11-13 07:38:22','2022-11-13 14:38:22'),(2,1,'dongvui harmony','Đen','2022-11-13 07:38:22','2022-11-13 14:38:22'),(3,2,'Chị trợ của anh','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(4,2,'Tâm 9','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(5,2,'Hẹn ước từ hư vô','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(6,2,'Đúng cũng thành sai','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(7,2,'Nơi mình dừng chân','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(8,2,'Chuyện như chưa bắt đầu','Mỹ Tâm','2022-11-13 07:38:22','2022-11-13 14:38:22'),(9,3,'30','Adele','2022-11-13 07:38:22','2022-11-13 14:38:22'),(10,3,'25','Adele','2022-11-13 07:38:22','2022-11-13 14:38:22'),(11,3,'21','Adele','2022-11-13 07:38:22','2022-11-13 14:38:22'),(12,3,'19','Adele','2022-11-13 07:38:22','2022-11-13 14:38:22'),(13,4,'Một vạn năm','Vũ','2022-11-13 07:38:22','2022-11-13 14:38:22'),(14,4,'Vũ trụ song song','Vũ','2022-11-13 07:38:22','2022-11-13 14:38:22'),(15,4,'Vũ trụ song song','Vũ','2022-11-13 07:38:22','2022-11-13 14:38:22'),(16,5,'The best of Thùy Chi 1','M4U Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(17,5,'The best of Thùy Chi 2','M4U Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(18,5,'The best of Thùy Chi 3','M4U Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(19,5,'The best of Thùy Chi 4','M4U Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(20,6,'Music Home Thùy Chi','Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(21,6,'Thong Dong Mà Hát','Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(22,6,'Tuổi Hoa Mộng','Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(23,6,'Gần Ngay Trước Mắt','Thùy Chi','2022-11-13 07:38:22','2022-11-13 14:38:22'),(24,7,'Wakanda Forever','Rihanna','2022-11-13 07:38:22','2022-11-13 14:38:22'),(25,7,'ANTI','Rihanna','2022-11-13 07:38:22','2022-11-13 14:38:22'),(26,7,'Unapologetic','Rihanna','2022-11-13 07:38:22','2022-11-13 14:38:22'),(27,7,'Talk That Talk','Rihanna','2022-11-13 07:38:22','2022-11-13 14:38:22'),(28,8,'Curtain Call 2','Eminem','2022-11-13 07:38:22','2022-11-13 14:38:22'),(29,8,'The Eminem Show','Eminem','2022-11-13 07:38:22','2022-11-13 14:38:22'),(30,8,'Music to be Murdered By','Eminem','2022-11-13 07:38:22','2022-11-13 14:38:22'),(31,8,'Kamikaze','Eminem','2022-11-13 07:38:22','2022-11-13 14:38:22'),(32,9,'Justice','Justin Bieber','2022-11-13 07:38:22','2022-11-13 14:38:22'),(33,9,'Changes','Justin Bieber','2022-11-13 07:38:22','2022-11-13 14:38:22'),(34,9,'Purpose','Justin Bieber','2022-11-13 07:38:22','2022-11-13 14:38:22'),(35,9,'Journals','Justin Bieber','2022-11-13 07:38:22','2022-11-13 14:38:22'),(36,10,'2step','Ed Sheeran','2022-11-13 07:38:22','2022-11-13 14:38:22'),(37,10,'5','Ed Sheeran','2022-11-13 07:38:22','2022-11-13 14:38:22'),(38,10,'Loose Change','Ed Sheeran','2022-11-13 07:38:22','2022-11-13 14:38:22'),(39,10,'Live at the Bedford','Ed Sheeran','2022-11-13 07:38:22','2022-11-13 14:38:22');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
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
