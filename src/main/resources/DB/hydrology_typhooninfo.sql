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
-- Table structure for table `typhooninfo`
--

DROP TABLE IF EXISTS `typhooninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typhooninfo` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TIME_` datetime DEFAULT '0000-00-00 00:00:00',
  `LONGITUDE_` float DEFAULT NULL,
  `LATITUDE_` float DEFAULT NULL,
  `PRESSURE_` varchar(30) DEFAULT NULL,
  `MAXIMUMWINDSPEED_` varchar(30) DEFAULT NULL,
  `GALERADIUS_` varchar(30) DEFAULT NULL,
  `WHOLEGALERADIUS_` varchar(30) DEFAULT NULL,
  `WARNLEVEL_` varchar(20) DEFAULT NULL,
  `FLAG_` float DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typhooninfo`
--

LOCK TABLES `typhooninfo` WRITE;
/*!40000 ALTER TABLE `typhooninfo` DISABLE KEYS */;
INSERT INTO `typhooninfo` VALUES (1,'2012-08-07 16:00:00',123.5,27.8,'950 百帕','45 m/s','450 km','200 km','blue',0),(2,'2012-08-07 17:00:00',123.4,27.9,'945 百帕','48 m/s','450 km','200 km','blue',0.5),(3,'2012-08-07 18:00:00',123.3,28,'945 百帕','45 m/s','450 km','200 km','blue',1),(4,'2012-08-07 19:00:00',123.25,28,'945 百帕','45 m/s','450 km','200 km','blue',1.5),(5,'2012-08-07 20:00:00',123.2,28,'945 百帕','48 m/s','450 km','200 km','blue',2),(6,'2012-08-07 21:00:00',123,28.2,'945 百帕','48 m/s','450 km','200 km','blue',2.5),(7,'2012-08-07 22:00:00',122.9,28.4,'945 百帕','48 m/s','450 km','200 km','yellow',3),(8,'2012-08-07 23:00:00',122.7,28.5,'945 百帕','48 m/s','450 km','200 km','yellow',3.5),(9,'2012-08-08 00:00:00',122.5,28.7,'945 百帕','48 m/s','450 km','200 km','yellow',4),(10,'2012-08-08 01:00:00',122.3,28.8,'945 百帕','45 m/s','450 km','200 km','yellow',4.5),(11,'2012-08-08 02:00:00',122.2,28.8,'950 百帕','45 m/s','400 km','180 km','yellow',5),(12,'2012-08-08 03:00:00',122.1,29,'950 百帕','45 m/s','400 km','180 km','yellow',5.5),(13,'2012-08-08 04:00:00',121.8,29.1,'968 百帕','40 m/s','400 km','180 km','yellow',6),(14,'2012-08-08 05:00:00',121.75,29.1,'968 百帕','40 m/s','400 km','180 km','yellow',6.5),(15,'2012-08-08 06:00:00',121.7,29.1,'970 百帕','38 m/s','400 km','160 km','yellow',7),(16,'2012-08-08 07:00:00',121.6,29.2,'970 百帕','38 m/s','400 km','160 km','yellow',7.5),(17,'2012-08-08 08:00:00',121.5,29.2,'974 百帕','38 m/s','400 km','160 km','red',8),(18,'2012-08-08 09:00:00',121.3,29.4,'974 百帕','38 m/s','400 km','160 km','red',8.5),(19,'2012-08-08 10:00:00',121,29.7,'975 百帕','38 m/s','400 km','160 km','red',9),(20,'2012-08-08 12:00:00',120.5,30,'978 百帕','35 m/s','400 km','160 km','red',10),(21,'2012-08-08 14:00:00',120.3,30.1,'980 百帕','33 m/s','400 km','150 km','red',11),(22,'2012-08-08 16:00:00',120,30.4,'982 百帕','30 m/s','350 km','120 km','red',12),(23,'2012-08-08 18:00:00',119.6,30.5,'983 百帕','28 m/s','350 km','120 km','red',13),(24,'2012-08-08 20:00:00',119.2,30.5,'982 百帕','25 m/s','350 km','120 km','red',14),(25,'2012-08-08 22:00:00',119,30.6,'987 百帕','23 m/s','350 km','120 km','red',15),(26,'2012-08-09 00:00:00',118.8,30.6,'988 百帕','23 m/s','350 km','120 km','red',16),(27,'2012-08-09 02:00:00',118.6,30.6,'988 百帕','23 m/s','350 km','120 km','red',17),(28,'2012-08-09 04:00:00',118.4,30.7,'988 百帕','23 m/s','350 km','120 km','red',18),(29,'2012-08-09 06:00:00',118.2,30.7,'989 百帕','20 m/s','350 km','120 km','red',19),(30,'2012-08-07 16:00:00',123.6,27.8,'950 百帕','45 m/s','450 km','200 km','red',-1);
/*!40000 ALTER TABLE `typhooninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23 10:16:44
