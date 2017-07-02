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
-- Table structure for table `stationweatherinfo`
--

DROP TABLE IF EXISTS `stationweatherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stationweatherinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `STATIONID_` int(10) unsigned DEFAULT NULL,
  `TIME_` datetime DEFAULT '0000-00-00 00:00:00',
  `WEATHER_` varchar(30) DEFAULT NULL,
  `TEMPERATURE_` varchar(30) DEFAULT NULL,
  `WIND_` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_STATIONID_RE` (`STATIONID_`),
  CONSTRAINT `FK_STATIONID_RE` FOREIGN KEY (`STATIONID_`) REFERENCES `stationinfo` (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationweatherinfo`
--

LOCK TABLES `stationweatherinfo` WRITE;
/*!40000 ALTER TABLE `stationweatherinfo` DISABLE KEYS */;
INSERT INTO `stationweatherinfo` VALUES (1,62914200,'2012-08-08 00:00:00','特大暴雨','26~32','东北风 4-5级'),(2,62914200,'2012-08-09 00:00:00','大暴雨','22~30','东北风 5-6级'),(3,62914800,'2012-08-08 00:00:00','特大暴雨','25~31','东北风 4-5级'),(4,62914800,'2012-08-09 00:00:00','特大暴雨','23~29','东北风 6-7级,阵风8级'),(5,62702350,'2012-08-08 00:00:00','特大暴雨','25~32','东北风6-7级'),(6,62702350,'2012-08-09 00:00:00','特大暴雨','24~28','东北风7-8级'),(7,60406100,'2012-08-08 00:00:00','特大暴雨','27~32','东北风3-4级'),(8,60406100,'2012-08-09 00:00:00','特大暴雨','24~26','东北风4-5级,阵风6级'),(9,62912800,'2012-08-08 00:00:00','特大暴雨','25~29','东北风3-4级,阵风5级'),(10,62912800,'2012-08-09 00:00:00','大暴雨','24~27','东北风5-6级'),(11,62916400,'2012-08-08 00:00:00','特大暴雨','25~26','东北风3-4级'),(12,62916400,'2012-08-09 00:00:00','大暴雨','23~24','东北风6-7级'),(13,62703100,'2012-08-08 00:00:00','暴雨','27~28','东北风4-5级,阵风6级'),(14,62703100,'2012-08-09 00:00:00','特大暴雨','23~24','东北风5-6级'),(15,63101001,'2012-08-08 00:00:00','特大暴雨','26~29','东北风4-5级,阵风6级'),(16,63101001,'2012-08-09 00:00:00','大暴雨','22~24','东北风6-7级,阵风8级'),(17,62703300,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(18,62703300,'2012-08-09 00:00:00','大暴雨','22~24','东北风6-7级,阵风8级'),(19,62916600,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(20,62916600,'2012-08-09 00:00:00','大暴雨','22~24','东北风6-7级,阵风8级'),(21,62915700,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(22,62915700,'2012-08-09 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(23,62703070,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(24,62703070,'2012-08-09 00:00:00','大暴雨','22~24','东北风6-7级,阵风8级'),(25,62703120,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(26,62703120,'2012-08-09 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(27,62703261,'2012-08-08 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级'),(28,62703261,'2012-08-09 00:00:00','特大暴雨','22~24','东北风6-7级,阵风8级');
/*!40000 ALTER TABLE `stationweatherinfo` ENABLE KEYS */;
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
