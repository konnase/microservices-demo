CREATE DATABASE  IF NOT EXISTS `hydrology` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hydrology`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: hydrology
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `reservoirinfo`
--

DROP TABLE IF EXISTS `reservoirinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservoirinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STCD_` int(10) unsigned DEFAULT NULL,
  `SSW` float DEFAULT NULL,
  `XXSW` float DEFAULT NULL,
  `XLSW` float DEFAULT NULL,
  `SJSW` float DEFAULT NULL,
  `XHSW` float DEFAULT NULL,
  `SKR` int(11) DEFAULT NULL,
  `XXKR` int(11) DEFAULT NULL,
  `XHKR` float DEFAULT NULL,
  `SJKR` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_STCD` (`STCD_`),
  CONSTRAINT `FK_STCD` FOREIGN KEY (`STCD_`) REFERENCES `stationinfo` (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservoirinfo`
--

LOCK TABLES `reservoirinfo` WRITE;
/*!40000 ALTER TABLE `reservoirinfo` DISABLE KEYS */;
INSERT INTO `reservoirinfo` VALUES (1,62916600,18.33,21.33,21.33,23.26,24.13,125,652,1952.89,1460.8),(2,62703300,20,26.2,26.2,28.04,29.15,172,2256,4900.47,3679.31),(3,62703261,20.5,26,26,27.61,28.76,137,1455,2868,2236),(4,62703120,16.4,20.6,20.6,21.66,22.59,70,600,1108.4,846.17),(5,62703070,30,34.8,34.8,36.48,37.52,55,542,1135.79,870.09);
/*!40000 ALTER TABLE `reservoirinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23 10:16:43