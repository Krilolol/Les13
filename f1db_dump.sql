-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: f1db
-- ------------------------------------------------------
-- Server version       5.7.42-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Driver_team`
--

DROP TABLE IF EXISTS `Driver_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `Driver_team_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `Drivers` (`id`),
  CONSTRAINT `Driver_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `Teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver_team`
--

LOCK TABLES `Driver_team` WRITE;
/*!40000 ALTER TABLE `Driver_team` DISABLE KEYS */;
INSERT INTO `Driver_team` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,3),(7,7,4),(8,8,4),(9,9,5),(10,10,5),(11,11,6),(12,12,6),(13,13,7),(14,14,7),(15,15,8),(16,16,8),(17,17,9),(18,18,9),(19,19,10),(20,20,10),(21,21,3),(22,22,8),(23,23,10);
/*!40000 ALTER TABLE `Driver_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drivers`
--

DROP TABLE IF EXISTS `Drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `country` text NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drivers`
--

LOCK TABLES `Drivers` WRITE;
/*!40000 ALTER TABLE `Drivers` DISABLE KEYS */;
INSERT INTO `Drivers` VALUES (1,10,'France','Pierre Gasly'),(2,31,'France','Esteban Ocon'),(3,14,'Spain','Fernando Alonso'),(4,18,'Canada','Lance Stroll'),(5,16,'Monaco','Charles Leclerc'),(6,55,'Spain','Carlos Sainz Jr.'),(7,20,'Denmark','Kevin Magnussen'),(8,27,'Germany','Nico Hülkenberg'),(9,24,'China','Zhou Guanyu'),(10,77,'Finland','Valtteri Bottas'),(11,4,'Great Britain','Lando Norris'),(12,81,'Finland','Oscar Piastri'),(13,44,'Great Britain','Lewis Hamilton'),(14,63,'Great Britain','George Russell'),(15,3,'Australia','Daniel Ricciardo'),(16,22,'Japan','Yuki Tsunoda'),(17,1,'Netherlands','Max Verstappen'),(18,11,'Mexico','Sergio Pérez'),(19,2,'United States','Logan Sargeant'),(20,23,'Thailand','Alexander Albon'),(21,50,'Great Britain','Oliver Bearman'),(22,30,'New Zealand','Liam Lawson'),(23,43,'Argentina','Franco Colapinto');
/*!40000 ALTER TABLE `Drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamname` text NOT NULL,
  `teamfullname` text NOT NULL,
  `teamcountry` text NOT NULL,
  `constructor` text NOT NULL,
  `chassis` text NOT NULL,
  `powerunit` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES (1,'Alpine','BWT Alpine F1 Team','France','Alpine-Renault ','A524','Renault E-Tech RE24'),(2,'Aston Martin','Aston Martin Aramco F1 Team','United Kingdom','Aston Martin Aramco-Mercedes','AMR24','Mercedes-AMG F1 M15'),(3,'Ferrari','Scuderia Ferrari ','Italy','Ferrari ','SF-24','Ferrari 066/12'),(4,'Haas','MoneyGram Haas F1 Team ','United States','Haas-Ferrari ','VF-24','Ferrari 066/10'),(5,'Sauber','Stake F1 Team Kick Sauber','Switzerland','Kick Sauber-Ferrari ','C44','Ferrari 066/12'),(6,'McLaren','McLaren Formula 1 Team ','United Kingdom','McLaren-Mercedes ','MCL38','Mercedes-AMG F1 M15'),(7,'Mercedes','Mercedes-AMG Petronas F1 Team ','Germany','Mercedes ','F1 W15','Mercedes-AMG F1 M15'),(8,'RB','Visa Cash App RB F1 Team','Italy','RB-Honda RBPT ','VCARB 01 ','Honda RBPTH002'),(9,'Red Bull','Oracle Red Bull Racing ','Austria','Red Bull Racing-Honda RBPT ','RB20','Honda RBPTH002'),(10,'Williams','Williams Racing ','United Kingdom','Williams-Mercedes ','FW46','Mercedes-AMG F1 M15');
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-14 13:08:33