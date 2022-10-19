-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_bolt
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `boxoffice`
--

DROP TABLE IF EXISTS `boxoffice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boxoffice` (
  `movie_id` int NOT NULL,
  `rating` float NOT NULL,
  `domestic_sales` int NOT NULL,
  `international_sales` int NOT NULL,
  PRIMARY KEY (`movie_id`),
  CONSTRAINT `boxoffice_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxoffice`
--

LOCK TABLES `boxoffice` WRITE;
/*!40000 ALTER TABLE `boxoffice` DISABLE KEYS */;
INSERT INTO `boxoffice` VALUES (1,8.3,191796233,170162503),(2,7.2,162798565,200600000),(3,7.9,245852179,239163000),(4,8.1,289916256,272900000),(5,8.2,380843261,555900000),(6,8,261441092,370001000),(7,7.2,244082982,217900167),(8,8,206445654,417277164),(9,8.5,223808164,297503696),(10,8.3,293004164,438338580),(11,8.4,415004880,648167031),(12,6.4,191452396,368400000),(13,7.2,237283207,301700000),(14,7.4,268492764,475066843),(15,8.7,340000000,270000000);
/*!40000 ALTER TABLE `boxoffice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `building_name` varchar(20) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`building_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES ('1e',24),('1w',32),('2e',16),('2w',20);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `role` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `building` varchar(45) DEFAULT NULL,
  `years_employed` int NOT NULL,
  PRIMARY KEY (`name`),
  KEY `building` (`building`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`building`) REFERENCES `buildings` (`building_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('Engineer','Becky A.','1e',4),('Artist','Brandon J.','2w',7),('Engineer','Dan B.','1e',2),('Engineer','Dan M.','1e',4),('Manager','Daria O.','2w',6),('Artist','Jakob J.','2w',6),('Artist','Lillia A.','2w',7),('Engineer','Malcom S.','1e',1),('Artist','Oliver P.',NULL,0),('Manager','Scott K.','1e',9),('Engineer','Sharon F.','1e',6),('Artist','Sherman D.','2w',8),('Manager','Shirlee M.','1e',3),('Artist','Tylar S.','2w',2),('Engineer','Yancy I.',NULL,0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `director` varchar(45) NOT NULL,
  `year` year NOT NULL,
  `length_minutes` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Toy Story','John Lasseter',1995,81),(2,'A Bug\'s Life','John Lasseter',1998,95),(3,'Toy Story 2','John Lasseter',1999,93),(4,'Monsters, Inc.','Pete Docter',2001,92),(5,'Finding Nemo','Andrew Stanton',2003,107),(6,'The Incredibles','Brad Bird',2004,116),(7,'Cars','John Lasseter',2006,117),(8,'Ratatouille','Brad Bird',2007,115),(9,'WALL-E','Andrew Stanton',2008,104),(10,'Up','Pete Docter',2009,101),(11,'Toy Story 3','Lee Unkrich',2010,103),(12,'Cars 2','John Lasseter',2011,120),(13,'Brave','Brenda Chapman',2012,102),(14,'Monsters University','Dan Scanlon',2013,110),(15,'Toy Story 4','Josh Cooley',2019,100),(87,'WALL-G','Brenda Chapman',2042,97);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `north_american_cities`
--

DROP TABLE IF EXISTS `north_american_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `north_american_cities` (
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `population` int NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `north_american_cities`
--

LOCK TABLES `north_american_cities` WRITE;
/*!40000 ALTER TABLE `north_american_cities` DISABLE KEYS */;
INSERT INTO `north_american_cities` VALUES ('Chicago','United States',2718782,41.878114,-87.629798),('Ecatepec de Morelos','Mexico',1742000,19.601841,-99.050674),('Guadalajara','Mexico',1500800,20.659699,-103.349609),('Havana','Cuba',2106146,23.05407,-82.345189),('Houston','United States',2195914,29.760427,-95.369803),('Los Angeles','United States',3884307,34.052234,-118.243685),('Mexico City',' Mexico',8555500,19.432608,-99.133208),('Montreal','Canada',1717767,45.501689,-73.567256),('New York','United States',8405837,40.712784,-74.005941),('Philadelphia','United States',1553165,39.952584,-75.165222),('Phoenix','United States',1513367,33.448377,-112.074037),('Toronto','Canada',2795060,43.653226,-79.383184);
/*!40000 ALTER TABLE `north_american_cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19  6:03:35
