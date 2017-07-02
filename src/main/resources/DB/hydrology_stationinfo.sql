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
-- Table structure for table `stationinfo`
--

DROP TABLE IF EXISTS `stationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stationinfo` (
  `ID_` int(10) unsigned NOT NULL,
  `NAME_` varchar(80) NOT NULL DEFAULT '',
  `ALIAS_` varchar(80) NOT NULL DEFAULT '',
  `TYPE_` int(10) unsigned DEFAULT NULL,
  `RVNM_` varchar(30) DEFAULT NULL,
  `HNNM_` varchar(30) DEFAULT NULL,
  `DRNA_` int(11) DEFAULT NULL,
  `VIDEOURL_` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationinfo`
--

LOCK TABLES `stationinfo` WRITE;
/*!40000 ALTER TABLE `stationinfo` DISABLE KEYS */;
INSERT INTO `stationinfo` VALUES (60406100,'陈家桥','chenjiaqiao',0,'秦淮河','秦淮河',256,''),(62702350,'东山','dongshan',0,'滁河','滁河',563,''),(62703070,'老鸦坝','laoyaba',1,'一干河','秦淮河',45,'<div onunload=\"onbeforeunload_handler()\"><form runat=\"server\"><div><object classid=\"clsid:04F60EAE-29E7-4617-A2BC-D0D44CCF8CF8\" codebase=\"VS_Video3.0VS_Video.ocx\" width=\"400\" height=\"300\" id=\"axVideo\" name=\"axVideo\"> </object><br />\n<input type=\"button\" id=\"Link\" value=\"连接\" onclick=\"ShowVideo()\" style=\"width:auto; height:auto\" />\n<input type=\"button\" id=\"StartVideo\" value=\"播放\" onclick=\"StartPlay(8003500,1)\" style=\"width:auto; height:auto\" />\n<br /> </div> </form></div>'),(62703100,'天生桥','tianshengqiao',0,'胥河','南溪',389,''),(62703120,'姚家','yaojia',1,'新桥河','秦淮河',17,'<div onunload=\"onbeforeunload_handler()\"><form runat=\"server\"><div><object classid=\"clsid:04F60EAE-29E7-4617-A2BC-D0D44CCF8CF8\" codebase=\"VS_Video3.0VS_Video.ocx\" width=\"400\" height=\"300\" id=\"axVideo\" name=\"axVideo\"> </object><br />\n<input type=\"button\" id=\"Link\" value=\"连接\" onclick=\"ShowVideo()\" style=\"width:auto; height:auto\" />\n<input type=\"button\" id=\"StartVideo\" value=\"播放\" onclick=\"StartPlay(8003525,1)\" style=\"width:auto; height:auto\" />\n<br /> </div> </form></div>'),(62703261,'中山','zhongshan',1,'石臼河','水阳江',441,''),(62703300,'方便','fangbian',1,'滁河','滁河',5554,''),(62912800,'高淳','gaochun',0,'天生桥河','秦淮河',89,''),(62914200,'晓桥','xiaoqiao',0,'蔡桥河','滁河',96,'<div onunload=\"onbeforeunload_handler()\"><form runat=\"server\"><div><object classid=\"clsid:04F60EAE-29E7-4617-A2BC-D0D44CCF8CF8\" codebase=\"VS_Video3.0VS_Video.ocx\" width=\"400\" height=\"300\" id=\"axVideo\" name=\"axVideo\"> </object><br />\r <input type=\"button\" id=\"Link\" value=\"连接\" onclick=\"ShowVideo()\" style=\"width:auto; height:auto\" /> <input type=\"button\" id=\"StartVideo\" value=\"播放\" onclick=\"StartPlay(8003494,1)\" style=\"width:auto; height:auto\" />\r <br /> </div> </form></div>'),(62914800,'六合','liuhe',0,'皂河','滁河',74,''),(62915700,'河王坝','hewangba',1,'白马河','秦淮河',18,''),(62916400,'葛塘','getang',0,'官溪河','青弋江水阳江',120,''),(62916600,'大河桥','daheqiao',1,'二干河','秦淮河',77,''),(63101001,'茅东闸','maodongzha',0,'马汉河','滁河',120,'');
/*!40000 ALTER TABLE `stationinfo` ENABLE KEYS */;
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
