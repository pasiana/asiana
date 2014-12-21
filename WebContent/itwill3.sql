CREATE DATABASE  IF NOT EXISTS `itwill3` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `itwill3`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: itwill3
-- ------------------------------------------------------
-- Server version	5.5.22

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
-- Table structure for table `sch_dou`
--

DROP TABLE IF EXISTS `sch_dou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sch_dou` (
  `sin_dou` varchar(4) NOT NULL,
  `g_filight_num` varchar(12) NOT NULL,
  `g_city_key` varchar(12) NOT NULL,
  `b_city_key` varchar(12) NOT NULL,
  `lea_day` varchar(20) NOT NULL,
  `lea_time` varchar(8) NOT NULL,
  `arr_time` varchar(8) NOT NULL,
  `fly_time` varchar(12) NOT NULL,
  `fly_model` varchar(8) NOT NULL,
  `b_g_filight_num` varchar(12) NOT NULL,
  `b_g_city_key` varchar(12) NOT NULL,
  `b_b_city_key` varchar(12) NOT NULL,
  `b_lea_day` varchar(20) NOT NULL,
  `b_lea_time` varchar(8) NOT NULL,
  `b_arr_time` varchar(8) NOT NULL,
  `b_fly_time` varchar(12) NOT NULL,
  `b_fly_model` varchar(8) NOT NULL,
  PRIMARY KEY (`sin_dou`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_dou`
--

LOCK TABLES `sch_dou` WRITE;
/*!40000 ALTER TABLE `sch_dou` DISABLE KEYS */;
/*!40000 ALTER TABLE `sch_dou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_index` int(11) NOT NULL,
  `city_kor_n` varchar(8) NOT NULL,
  `city_eng_n` varchar(8) NOT NULL,
  `city_key` varchar(2) NOT NULL,
  `flight_city_key` varchar(12) NOT NULL,
  PRIMARY KEY (`city_index`),
  UNIQUE KEY `city_key` (`city_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'광주','KWJ','a','abxxxxxxixxx'),(2,'김포','GMP','b','abxxefgxixxl');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `double_res`
--

DROP TABLE IF EXISTS `double_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `double_res` (
  `member_id` varchar(20) NOT NULL,
  `res_num` int(11) DEFAULT NULL,
  `res_sin_dou` varchar(4) DEFAULT NULL,
  `res_date` datetime DEFAULT NULL,
  `res_count` int(11) DEFAULT NULL,
  `lea_city` varchar(8) NOT NULL,
  `arr_city` varchar(8) NOT NULL,
  `lea_time` varchar(20) NOT NULL,
  `arr_time` varchar(20) NOT NULL,
  `flight_num` varchar(20) NOT NULL,
  `b_lea_city` varchar(8) NOT NULL,
  `b_arr_city` varchar(8) NOT NULL,
  `b_lea_time` varchar(20) NOT NULL,
  `b_arr_time` varchar(20) NOT NULL,
  `b_flight_num` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `double_res`
--

LOCK TABLES `double_res` WRITE;
/*!40000 ALTER TABLE `double_res` DISABLE KEYS */;
/*!40000 ALTER TABLE `double_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_date`
--

DROP TABLE IF EXISTS `leave_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_date` (
  `lea_city_index` int(11) NOT NULL DEFAULT '0',
  `lea_day` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lea_city_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_date`
--

LOCK TABLES `leave_date` WRITE;
/*!40000 ALTER TABLE `leave_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arrive_data`
--

DROP TABLE IF EXISTS `arrive_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrive_data` (
  `city_key` varchar(12) NOT NULL,
  `arr_day` varchar(20) NOT NULL,
  `flight_num` varchar(12) NOT NULL,
  `lea_time` varchar(8) NOT NULL,
  `arr_time` varchar(8) NOT NULL,
  `fly_model` varchar(8) NOT NULL,
  `charge` int(11) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrive_data`
--

LOCK TABLES `arrive_data` WRITE;
/*!40000 ALTER TABLE `arrive_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrive_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge`
--

DROP TABLE IF EXISTS `charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge` (
  `idcharge` int(11) NOT NULL AUTO_INCREMENT,
  `lea_city` varchar(45) DEFAULT NULL,
  `arr_city` varchar(45) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcharge`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge`
--

LOCK TABLES `charge` WRITE;
/*!40000 ALTER TABLE `charge` DISABLE KEYS */;
INSERT INTO `charge` VALUES (1,'광주','김포',71000),(2,'광주','제주',65000),(3,'김포','광주',71000),(4,'김포','부산',73000),(5,'김포','여수',82000),(6,'김포','울산',78000),(7,'김포','제주',95000),(8,'부산','김포',73000),(9,'부산','제주',71000),(10,'대구','제주',81000),(11,'무안','제주',65000),(12,'진주','제주',72000),(13,'여수','김포',82000),(14,'울산','김포',78000),(15,'인천','제주',95000),(16,'제주','광주',65000),(17,'제주','김포',95000),(18,'제주','부산',71000),(19,'제주','대구',81000),(20,'제주','무안',65000),(21,'제주','진주',72000),(22,'제주','인천',95000),(23,'제주','청주',83000),(24,'청주','제주',83000);
/*!40000 ALTER TABLE `charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arrive_date`
--

DROP TABLE IF EXISTS `arrive_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrive_date` (
  `arr_city_index` int(11) NOT NULL,
  `arr_day` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`arr_city_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrive_date`
--

LOCK TABLES `arrive_date` WRITE;
/*!40000 ALTER TABLE `arrive_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrive_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` varchar(20) NOT NULL,
  `member_num` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `Krname` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `share_info` varchar(4) NOT NULL,
  `reg_date` datetime NOT NULL,
  `mileage` int(11) DEFAULT '0',
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_num` (`member_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('123456','00000001','12345','한','AD','DS','2004-11-11','남자','135-938','서울특별시 강남구 양재대로55길 20 (일원동 712-1,일원동우체국)&&ㅁㅇ','123-123-123','010--','123@naver.com','Y','2014-12-17 12:38:58',0),('admin','00000002','12345','허허','AS','AS','2012-5-5','남자','135-905','서울특별시 강남구 압구정로33길 48 (압구정동 458,압구정동주민센터)&&123','123-123-123','010-123-123','123@naver.com','Y','2014-12-17 17:26:30',0),('123123','00000003','123456','하하','ASD','ASD','2013-1-1','여자','','','','','','','2014-12-17 17:56:49',0);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_data`
--

DROP TABLE IF EXISTS `leave_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_data` (
  `city_key` varchar(12) NOT NULL,
  `lea_day` varchar(20) NOT NULL,
  `flight_num` varchar(12) NOT NULL,
  `lea_time` varchar(8) NOT NULL,
  `arr_time` varchar(8) NOT NULL,
  `fly_model` varchar(8) NOT NULL,
  `charge` int(11) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_data`
--

LOCK TABLES `leave_data` WRITE;
/*!40000 ALTER TABLE `leave_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch_sin`
--

DROP TABLE IF EXISTS `sch_sin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sch_sin` (
  `sin_dou` varchar(4) NOT NULL,
  `filight_num` varchar(12) NOT NULL,
  `g_city_key` varchar(12) NOT NULL,
  `b_city_key` varchar(12) NOT NULL,
  `lea_day` varchar(20) NOT NULL,
  `lea_time` varchar(8) NOT NULL,
  `arr_time` varchar(8) NOT NULL,
  `fly_time` varchar(12) NOT NULL,
  `fly_model` varchar(8) NOT NULL,
  PRIMARY KEY (`sin_dou`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch_sin`
--

LOCK TABLES `sch_sin` WRITE;
/*!40000 ALTER TABLE `sch_sin` DISABLE KEYS */;
/*!40000 ALTER TABLE `sch_sin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_num` int(11) NOT NULL,
  `news_sub1` varchar(100) NOT NULL,
  `news_sub2` varchar(20) DEFAULT NULL,
  `news_content` blob NOT NULL,
  PRIMARY KEY (`news_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single_res`
--

DROP TABLE IF EXISTS `single_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `single_res` (
  `member_id` varchar(20) NOT NULL,
  `res_num` int(11) DEFAULT NULL,
  `res_sin_dou` varchar(4) DEFAULT NULL,
  `res_date` datetime DEFAULT NULL,
  `res_count` int(11) DEFAULT NULL,
  `lea_city` varchar(8) NOT NULL,
  `arr_city` varchar(8) NOT NULL,
  `lea_time` varchar(20) NOT NULL,
  `arr_time` varchar(20) NOT NULL,
  `flight_num` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single_res`
--

LOCK TABLES `single_res` WRITE;
/*!40000 ALTER TABLE `single_res` DISABLE KEYS */;
/*!40000 ALTER TABLE `single_res` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-18 17:29:04
