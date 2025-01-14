-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: game
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `game_db`
--

DROP TABLE IF EXISTS `game_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_db` (
  `gameId` int NOT NULL AUTO_INCREMENT,
  `gameName` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`gameId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_db`
--

LOCK TABLES `game_db` WRITE;
/*!40000 ALTER TABLE `game_db` DISABLE KEYS */;
INSERT INTO `game_db` VALUES (9,'PlanetSide2','6000','advanced',_binary 'PlanetSide2.webp'),(10,'AnimalCrossing','0','free',_binary 'Animal Crossing.webp'),(11,'Free-Fire','3000','advanced',_binary 'free-fire-max.webp'),(13,'Planets Vs Zombies','4000','advanced',_binary 'Planets Vs Zombies.jpeg'),(14,'Battle Grounds','8000','advanced',_binary 'Battle Grounds.avif'),(23,'Farcry2','9000','advanced',_binary 'Farcry2.jpg'),(24,'Mega Pack','0','free',_binary 'Mega Pack.webp');
/*!40000 ALTER TABLE `game_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28  6:58:55
