-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: estudio_satisfaccion
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `satisfaccion`
--

DROP TABLE IF EXISTS `satisfaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfaccion` (
  `employeenumber` int NOT NULL,
  `environmentsatisfaction` int DEFAULT NULL,
  `relationshipsatisfaction` int DEFAULT NULL,
  `jobsatisfaction` int DEFAULT NULL,
  `jobinvolvement` int DEFAULT NULL,
  `performancerating` int DEFAULT NULL,
  `worklifebalance` int DEFAULT NULL,
  PRIMARY KEY (`employeenumber`),
  CONSTRAINT `fk_satisfaccion_personal` FOREIGN KEY (`employeenumber`) REFERENCES `info_personal` (`employeenumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaccion`
--

LOCK TABLES `satisfaccion` WRITE;
/*!40000 ALTER TABLE `satisfaccion` DISABLE KEYS */;
INSERT INTO `satisfaccion` VALUES (1,1,3,3,3,3,3),(2,3,1,3,2,3,3),(3,3,4,4,3,3,3),(4,1,2,3,3,3,3),(5,1,4,1,4,3,3),(6,4,2,4,3,3,3),(7,1,4,1,3,3,2),(8,2,3,3,3,4,3),(9,2,2,1,3,3,3),(10,1,2,3,3,3,4),(11,2,2,3,1,4,3),(12,4,1,2,3,3,3),(13,2,1,3,1,3,3),(14,2,4,3,3,3,3),(15,3,4,2,4,3,3),(16,3,4,3,3,3,3),(17,4,4,2,3,3,3),(18,3,1,1,3,4,3),(19,2,4,1,4,3,3),(20,1,4,3,2,3,3),(21,3,4,3,2,4,2),(22,1,3,4,3,3,3),(23,3,2,3,3,3,3),(24,3,3,4,3,3,2),(25,4,4,4,3,3,3),(26,4,2,3,2,4,3),(27,1,4,4,1,3,3),(28,3,4,2,3,3,3),(29,2,2,3,3,3,3),(30,4,3,3,3,3,3),(31,4,4,3,3,3,4),(32,1,2,3,3,4,3),(33,3,4,3,3,3,2),(34,3,2,1,2,3,3),(35,1,3,3,3,3,3),(36,2,3,1,3,4,3),(37,4,3,4,3,4,3),(38,4,3,4,3,3,3),(39,3,4,1,2,3,4),(40,4,3,1,2,4,3),(41,3,3,3,2,3,3),(42,4,3,1,3,3,3),(43,3,3,3,3,3,4),(44,3,3,1,4,3,3),(45,4,1,1,2,4,3),(46,4,1,2,3,3,3),(47,1,3,1,2,4,2),(48,3,4,4,3,3,4),(49,4,2,4,3,3,3),(50,3,4,2,2,3,3),(51,4,2,1,3,3,3),(52,3,4,2,3,3,4),(53,4,3,1,2,3,3),(54,1,4,3,2,3,3),(55,3,1,3,3,3,2),(56,4,1,4,1,4,2),(57,2,4,4,1,3,3),(58,3,3,1,3,3,2),(59,4,3,3,2,3,4),(60,3,1,4,2,3,2),(61,4,4,2,3,3,4),(62,2,1,3,3,3,3),(63,2,2,4,1,3,3),(64,3,3,4,3,4,1),(65,4,4,3,3,3,3),(66,3,2,3,2,3,3),(67,4,3,4,4,3,3),(68,4,2,4,3,4,3),(69,4,2,3,4,4,3),(70,3,4,4,3,3,4),(71,3,4,3,3,3,3),(72,4,3,1,2,3,3),(73,3,2,3,2,3,3),(74,4,4,4,3,3,3),(75,2,4,2,4,3,3),(76,3,3,2,2,3,3),(77,4,3,2,2,3,3),(78,3,1,4,4,4,3),(79,3,1,4,2,3,3),(80,4,3,3,3,3,2),(81,3,4,1,2,3,3),(82,4,4,4,3,3,2),(83,1,3,3,3,3,2),(84,2,4,4,3,3,3),(85,4,3,1,3,3,3),(86,4,2,2,3,3,3),(87,3,1,4,4,3,2),(88,3,2,4,2,3,3),(89,1,3,2,2,3,3),(90,2,2,1,3,3,1),(91,4,2,3,2,3,3),(92,4,1,2,2,3,3),(93,3,3,3,4,3,3),(94,3,3,3,3,3,2),(95,1,4,4,3,4,3),(96,2,4,3,2,3,3),(97,1,2,4,3,3,3),(98,3,3,2,3,3,2),(99,1,1,2,1,3,3),(100,4,1,2,3,3,2),(101,2,2,3,3,4,3),(102,3,1,3,2,4,3),(103,2,3,4,2,3,3),(104,1,4,2,3,3,3),(105,4,4,2,2,3,3),(106,3,2,4,2,3,3),(107,4,3,4,3,3,3),(108,2,3,1,4,3,3),(109,3,3,1,2,3,2),(110,3,4,4,3,3,1),(111,2,3,2,3,3,3),(112,2,3,4,3,3,3),(113,3,3,1,3,3,3),(114,4,3,3,2,3,2),(115,2,4,2,2,3,1),(116,4,2,1,2,3,3),(117,3,3,2,3,3,2),(118,1,1,1,3,3,3),(119,3,4,1,3,3,3),(120,3,1,3,2,4,3),(121,3,1,4,2,3,3),(122,4,1,4,3,3,3),(123,4,3,3,2,3,3),(124,3,3,4,3,3,2),(125,1,1,4,2,3,3),(126,2,2,3,2,3,3),(127,1,4,2,3,4,3),(128,2,3,3,3,3,3),(129,4,4,1,3,4,2),(130,4,2,1,3,3,3),(131,4,3,3,2,3,3),(132,2,4,4,3,3,2),(133,4,3,4,3,3,2),(134,3,4,3,3,3,4),(135,4,3,4,3,3,3),(136,1,3,2,3,3,2),(137,4,2,4,3,3,3),(138,3,1,3,2,3,2),(139,1,4,3,3,3,3),(140,1,1,4,3,4,3),(141,4,2,1,3,3,2),(142,4,3,1,2,4,3),(143,4,1,2,3,4,3),(144,4,1,4,3,3,3),(145,3,2,1,2,3,3),(146,2,3,2,3,3,3),(147,4,4,2,2,3,3),(148,3,4,1,4,3,2),(149,3,4,2,2,3,4),(150,3,4,2,2,3,3),(151,4,4,3,1,3,3),(152,3,2,2,3,3,3),(153,4,4,1,2,3,2),(154,4,3,4,3,3,3),(155,2,1,1,2,3,2),(156,4,4,1,1,3,3),(157,1,3,4,3,3,3),(158,2,1,3,4,4,2),(159,1,3,2,2,4,4),(160,2,1,4,3,3,3),(161,4,4,3,2,3,3),(162,2,4,1,3,3,3),(163,2,4,3,4,3,2),(164,4,1,4,3,4,4),(165,2,2,4,2,3,3),(166,4,1,4,3,3,3),(167,2,4,2,3,4,2),(168,4,1,3,2,3,3),(169,1,2,3,3,3,3),(170,3,1,2,4,3,3),(171,4,4,3,2,3,3),(172,4,1,3,3,3,4),(173,4,4,3,3,3,1),(174,4,1,4,2,3,2),(175,1,3,4,2,3,3),(176,4,4,3,3,3,3),(177,3,4,4,3,4,3),(178,2,4,1,3,4,2),(179,1,2,4,3,4,3),(180,4,3,4,2,3,3),(181,3,4,4,2,3,3),(182,3,2,2,2,3,2),(183,2,1,3,3,3,3),(184,3,1,2,3,3,3),(185,2,4,4,3,3,3),(186,1,1,3,3,3,3),(187,4,2,3,3,3,3),(188,1,4,4,2,4,3),(189,4,3,4,1,3,2),(190,3,3,3,2,4,3),(191,2,3,4,3,3,3),(192,1,3,4,3,3,3),(193,1,1,4,3,3,3),(194,2,3,2,3,3,3),(195,4,3,3,2,3,2),(196,1,3,2,2,3,3),(197,4,4,4,3,3,3),(198,2,3,3,3,3,3),(199,1,4,1,3,3,1),(200,3,3,1,3,3,3),(201,3,4,2,3,4,4),(202,1,1,1,3,3,3),(203,4,3,3,4,3,3),(204,1,4,4,3,3,3),(205,2,4,2,3,3,2),(206,3,1,4,3,3,4),(207,3,2,4,2,3,3),(208,1,1,1,4,3,3),(209,3,3,4,2,4,3),(210,2,4,2,3,3,3),(211,3,1,4,3,3,2),(212,4,4,3,3,3,2),(213,3,3,3,3,4,3),(214,4,2,4,3,3,3),(215,4,4,3,3,3,3),(216,4,3,1,3,3,3),(217,4,2,4,2,3,2),(218,4,2,2,2,3,3),(219,4,1,1,2,3,1),(220,2,1,4,3,3,3),(221,4,2,4,2,3,2),(222,4,4,3,4,3,3),(223,3,3,2,3,3,4),(224,3,1,4,1,3,3),(225,4,1,3,3,3,2),(226,3,4,3,3,3,2),(227,3,3,4,3,3,3),(228,3,4,1,3,3,4),(229,4,3,1,3,4,3),(230,3,1,2,4,3,3),(231,4,3,2,2,3,3),(232,4,2,2,4,3,2),(233,2,4,1,3,3,2),(234,4,4,2,2,3,1),(235,1,1,4,3,3,3),(236,4,3,4,3,3,1),(237,1,1,2,3,3,3),(238,2,4,1,2,3,3),(239,3,4,2,3,3,3),(240,2,3,3,3,3,3),(241,3,4,3,2,3,3),(242,4,3,2,3,3,3),(243,2,3,3,3,4,3),(244,4,2,3,3,3,3),(245,4,4,4,3,3,3),(246,2,2,2,3,3,2),(247,4,4,2,3,3,2),(248,4,4,1,3,3,3),(249,4,2,1,4,3,3),(250,2,3,3,4,4,3),(251,4,2,4,3,3,4),(252,4,3,4,3,3,2),(253,2,4,3,2,4,3),(254,2,1,3,3,3,3),(255,2,4,4,2,3,2),(256,1,1,4,3,4,2),(257,4,2,1,1,3,3),(258,3,4,4,3,3,3),(259,2,1,1,3,3,3),(260,2,3,2,3,3,3),(261,4,3,2,3,3,2),(262,3,1,2,3,3,1),(263,1,2,4,3,3,3),(264,3,4,2,2,4,3),(265,4,3,3,3,3,3),(266,4,3,4,3,3,2),(267,4,2,3,2,4,3),(268,3,2,3,3,3,2),(269,3,4,2,3,3,3),(270,4,4,4,3,4,2),(271,3,4,4,3,4,3),(272,3,4,4,3,4,1),(273,1,4,3,1,4,3),(274,2,3,4,3,3,3),(275,1,3,3,1,4,2),(276,4,1,2,3,3,4),(277,2,2,3,1,3,2),(278,3,3,3,3,3,3),(279,3,4,3,3,4,3),(280,4,4,4,1,3,4),(281,2,1,2,3,3,3),(282,2,4,3,3,4,1),(283,4,1,3,3,3,3),(284,4,3,2,3,3,2),(285,4,4,2,3,3,3),(286,4,3,2,3,3,3),(287,4,4,2,3,3,2),(288,2,1,1,4,3,2),(289,4,1,4,3,3,1),(290,4,1,4,3,3,3),(291,4,4,3,3,3,3),(292,4,4,4,2,3,3),(293,3,1,3,3,3,4),(294,1,1,1,3,3,4),(295,1,4,3,2,3,4),(296,1,4,3,3,3,3),(297,4,4,4,2,3,3),(298,4,2,2,1,3,2),(299,3,2,4,3,3,3),(300,1,4,2,3,3,2),(301,2,2,2,4,3,2),(302,2,1,4,3,3,3),(303,2,4,4,3,3,3),(304,4,2,4,2,3,3),(305,2,2,4,4,3,2),(306,3,1,4,3,3,3),(307,4,4,4,3,3,3),(308,1,3,4,4,3,2),(309,2,3,4,2,3,2),(310,3,2,3,2,3,4),(311,2,4,1,1,3,2),(312,2,1,2,3,3,3),(313,4,1,2,2,3,3),(314,3,1,1,4,3,3),(315,3,2,3,3,3,3),(316,4,3,3,4,3,3),(317,1,3,2,3,3,3),(318,3,3,4,3,3,2),(319,4,3,1,3,3,2),(320,3,4,1,4,3,2),(321,2,3,1,4,3,3),(322,3,3,3,3,3,2),(323,3,3,4,3,3,2),(324,4,3,3,3,3,3),(325,2,1,4,3,3,3),(326,4,2,2,3,3,4),(327,2,2,3,3,3,3),(328,1,1,3,2,3,3),(329,4,4,4,4,3,3),(330,1,4,4,4,4,4),(331,4,2,3,3,3,3),(332,4,4,1,3,4,4),(333,3,3,3,3,3,3),(334,3,3,2,3,3,4),(335,4,1,4,2,3,3),(336,2,4,4,1,3,3),(337,4,2,2,2,3,4),(338,4,1,3,2,3,3),(339,4,4,4,3,3,2),(340,2,3,4,4,3,3),(341,3,4,1,3,3,3),(342,3,4,4,3,3,3),(343,4,4,1,3,3,3),(344,4,3,1,3,4,2),(345,4,2,3,2,3,3),(346,4,4,2,1,3,3),(347,1,1,1,4,3,3),(348,3,4,4,3,3,2),(349,3,3,4,3,3,2),(350,2,1,3,1,3,3),(351,1,2,1,2,3,3),(352,2,1,3,3,3,2),(353,1,4,1,4,3,3),(354,4,4,2,4,4,3),(355,2,2,4,3,3,2),(356,3,1,2,3,3,3),(357,3,3,3,4,4,3),(358,3,3,4,3,3,2),(359,2,1,2,3,4,3),(360,3,1,3,2,3,3),(361,2,4,1,3,3,3),(362,2,3,4,1,3,2),(363,2,2,3,2,3,4),(364,4,2,1,2,3,3),(365,4,3,4,3,3,1),(366,3,3,1,3,3,4),(367,3,1,4,2,3,3),(368,4,2,2,3,3,2),(369,1,4,3,4,3,3),(370,1,4,4,3,3,3),(371,4,2,3,3,3,3),(372,3,3,3,3,3,3),(373,2,3,1,4,3,2),(374,4,2,4,4,3,3),(375,3,4,2,3,3,3),(376,4,1,3,3,3,3),(377,4,2,3,3,3,3),(378,3,1,2,2,3,3),(379,3,2,1,3,3,2),(380,3,2,1,2,3,4),(381,2,1,1,2,3,2),(382,3,4,3,3,3,4),(383,4,1,1,3,4,3),(384,4,2,3,2,4,3),(385,4,2,4,3,3,4),(386,3,2,3,2,3,3),(387,4,2,2,3,3,2),(388,3,3,1,3,3,3),(389,1,4,4,3,3,3),(390,3,1,3,2,3,3),(391,2,3,4,2,3,2),(392,2,3,3,3,3,2),(393,1,2,4,4,4,3),(394,3,2,2,2,3,4),(395,4,2,3,3,3,3),(396,3,4,1,3,3,3),(397,2,1,3,3,3,2),(398,3,3,3,1,3,3),(399,3,1,3,3,3,2),(400,4,2,4,4,3,3),(401,4,4,3,3,3,3),(402,3,3,1,1,4,3),(403,1,4,1,3,3,2),(404,3,2,4,1,3,3),(405,4,2,4,2,3,2),(406,4,4,4,3,3,2),(407,4,4,4,2,3,4),(408,1,4,4,3,3,3),(409,2,1,3,3,3,3),(410,3,3,4,4,3,4),(411,4,1,3,3,3,3),(412,2,3,2,3,3,2),(413,1,1,3,3,3,3),(414,4,4,4,3,3,2),(415,2,4,1,3,3,3),(416,4,4,1,4,3,2),(417,4,2,4,2,3,3),(418,1,3,3,4,3,2),(419,2,1,3,3,3,3),(420,1,1,3,2,3,1),(421,3,3,1,3,3,3),(422,3,4,1,4,3,3),(423,3,1,4,3,3,3),(424,4,4,4,3,3,2),(425,2,4,4,4,3,4),(426,3,3,3,3,3,3),(427,1,1,4,3,3,3),(428,1,1,4,3,3,4),(429,2,2,1,1,3,3),(430,3,2,2,3,3,3),(431,3,3,3,2,3,3),(432,1,3,1,2,3,1),(433,3,3,1,1,3,3),(434,3,4,4,3,4,3),(435,3,3,3,3,3,3),(436,3,2,4,2,3,3),(437,2,4,4,3,3,2),(438,3,1,1,1,3,3),(439,1,1,1,2,3,3),(440,3,1,4,4,3,3),(441,2,4,1,3,3,3),(442,4,1,1,2,3,3),(443,4,1,4,2,3,3),(444,1,3,4,3,3,3),(445,4,3,3,4,3,3),(446,3,1,3,3,3,3),(447,4,3,3,3,3,3),(448,4,3,4,3,4,3),(449,3,2,4,4,3,3),(450,3,3,4,3,3,2),(451,3,4,2,3,3,3),(452,4,2,3,3,3,3),(453,4,4,1,2,3,3),(454,3,1,1,2,3,3),(455,4,4,2,3,3,2),(456,2,2,2,3,3,3),(457,2,2,4,3,3,3),(458,1,1,4,2,3,3),(459,3,4,4,3,3,3),(460,2,3,4,3,3,3),(461,1,2,3,3,3,3),(462,4,4,2,3,4,4),(463,3,2,3,3,4,4),(464,1,3,4,3,4,3),(465,3,3,2,3,4,3),(466,1,1,1,3,3,3),(467,1,2,3,4,3,2),(468,3,2,1,3,3,4),(469,3,1,4,4,3,3),(470,3,3,4,2,3,3),(471,3,3,2,3,3,4),(472,4,3,3,3,3,2),(473,3,4,1,3,3,3),(474,4,1,4,3,3,3),(475,1,3,4,3,3,3),(476,4,3,3,3,3,3),(477,3,3,3,3,4,4),(478,2,2,3,3,3,3),(479,2,1,4,3,3,3),(480,1,1,4,3,3,3),(481,4,3,4,2,3,3),(482,1,3,2,2,3,3),(483,4,4,3,2,4,3),(484,1,3,4,3,3,3),(485,4,1,1,2,3,3),(486,1,3,2,3,3,3),(487,1,4,4,2,3,3),(488,1,3,4,3,3,3),(489,4,2,1,2,3,2),(490,3,4,3,3,4,3),(491,4,3,1,2,3,3),(492,4,2,2,3,3,3),(493,3,4,2,3,3,3),(494,2,4,3,3,3,4),(495,2,3,3,3,3,3),(496,2,2,4,2,3,2),(497,4,1,1,2,3,1),(498,3,1,1,2,3,4),(499,1,3,3,3,3,2),(500,3,1,4,3,4,3),(501,1,4,1,3,3,3),(502,4,4,4,3,4,1),(503,4,3,4,2,3,3),(504,4,3,1,3,3,3),(505,2,3,3,4,3,3),(506,2,4,1,2,3,3),(507,4,4,1,3,3,3),(508,2,4,2,3,3,3),(509,3,4,3,4,3,4),(510,4,3,1,3,3,4),(511,3,2,3,3,3,3),(512,3,2,2,1,3,2),(513,4,3,1,3,3,4),(514,3,4,4,1,3,3),(515,3,3,4,2,4,3),(516,4,1,3,4,3,3),(517,4,4,1,3,3,2),(518,4,3,2,2,3,3),(519,3,2,4,3,3,2),(520,4,4,1,2,3,3),(521,1,1,3,3,3,2),(522,4,4,2,2,3,2),(523,4,4,3,2,3,3),(524,4,3,3,3,4,3),(525,1,3,3,2,3,3),(526,2,3,2,2,3,3),(527,3,2,4,3,3,2),(528,3,1,4,3,3,3),(529,3,1,2,3,4,1),(530,2,4,4,3,3,3),(531,4,4,4,2,3,4),(532,2,3,4,3,3,4),(533,4,4,4,3,3,4),(534,1,4,2,3,3,3),(535,2,2,2,3,3,2),(536,2,2,4,4,3,3),(537,1,3,2,3,3,3),(538,2,4,4,2,3,3),(539,4,2,4,4,3,3),(540,4,2,4,3,4,2),(541,4,3,4,3,4,3),(542,3,3,1,2,3,3),(543,3,2,3,3,4,4),(544,4,4,1,2,3,2),(545,3,1,2,4,3,3),(546,3,1,4,3,4,3),(547,4,4,2,3,3,2),(548,2,1,3,3,4,2),(549,4,3,1,2,3,3),(550,1,4,4,4,3,3),(551,3,4,1,3,3,2),(552,3,2,4,3,4,2),(553,1,3,4,3,3,2),(554,3,1,3,4,3,1),(555,4,2,1,3,3,2),(556,4,3,2,3,3,2),(557,3,3,4,3,4,3),(558,3,3,3,1,3,1),(559,2,1,4,3,3,1),(560,1,3,2,4,3,3),(561,3,4,2,3,4,3),(562,2,2,2,3,3,3),(563,2,1,3,2,3,3),(564,4,1,4,1,3,2),(565,2,2,3,3,3,4),(566,3,4,3,2,3,3),(567,2,1,2,3,3,3),(568,3,3,2,2,3,2),(569,1,1,1,3,4,4),(570,1,3,3,3,3,2),(571,3,2,2,3,3,3),(572,3,1,3,3,4,3),(573,3,1,1,3,3,4),(574,4,4,4,4,3,4),(575,2,4,4,3,4,2),(576,3,4,3,1,3,3),(577,3,3,4,3,3,1),(578,3,2,2,2,3,4),(579,3,2,4,3,3,4),(580,1,1,2,3,3,2),(581,3,4,2,3,3,3),(582,4,1,3,3,3,3),(583,3,4,2,3,3,3),(584,4,4,2,2,3,3),(585,3,2,1,3,4,3),(586,4,1,3,2,3,3),(587,3,3,4,3,3,3),(588,3,3,1,3,4,3),(589,4,3,2,3,3,3),(590,2,2,4,2,3,3),(591,2,2,3,3,3,3),(592,4,3,3,2,3,3),(593,1,2,3,3,3,3),(594,3,3,4,1,4,3),(595,4,3,3,1,3,3),(596,3,3,4,2,4,2),(597,1,4,3,3,3,3),(598,2,3,3,3,3,3),(599,1,4,4,3,3,3),(600,2,4,3,4,3,3),(601,2,2,4,2,3,2),(602,4,3,1,3,3,3),(603,1,3,1,2,4,3),(604,4,2,4,3,3,3),(605,3,2,4,3,3,3),(606,4,3,4,2,3,3),(607,3,1,3,2,3,3),(608,3,1,3,3,3,4),(609,4,3,4,3,3,2),(610,2,3,4,3,3,1),(611,3,2,3,2,3,3),(612,1,2,3,3,3,3),(613,1,3,4,4,3,2),(614,3,3,2,3,3,2),(615,3,2,3,3,3,1),(616,2,4,1,3,3,3),(617,3,3,3,3,3,3),(618,2,1,4,1,3,2),(619,2,4,3,3,3,3),(620,4,1,3,3,3,1),(621,4,3,2,2,3,3),(622,3,3,3,3,3,3),(623,4,1,3,3,3,3),(624,4,3,2,2,3,3),(625,1,3,3,2,4,3),(626,1,4,4,2,3,4),(627,3,4,3,3,3,3),(628,4,1,4,3,3,4),(629,3,2,3,3,4,3),(630,3,3,1,3,3,1),(631,1,4,2,3,3,3),(632,4,3,4,2,3,2),(633,4,3,3,3,3,3),(634,4,1,2,2,3,2),(635,4,4,1,3,3,3),(636,1,4,2,2,3,3),(637,3,3,3,3,3,2),(638,4,2,1,3,3,1),(639,4,4,4,3,4,3),(640,1,4,1,3,3,4),(641,1,4,4,3,3,4),(642,4,3,1,3,3,3),(643,4,3,2,4,3,3),(644,2,2,2,2,3,2),(645,4,4,3,2,3,4),(646,2,1,2,3,3,1),(647,4,3,2,3,4,3),(648,4,1,1,4,4,3),(649,4,1,3,2,3,3),(650,1,3,4,2,3,4),(651,4,4,4,3,4,2),(652,4,2,3,2,3,3),(653,2,2,3,1,3,4),(654,2,2,1,3,3,3),(655,4,3,4,3,3,2),(656,3,3,2,3,4,3),(657,2,2,3,3,3,2),(658,2,4,4,3,3,3),(659,1,2,2,4,4,3),(660,3,3,2,2,3,3),(661,4,2,1,2,3,1),(662,2,2,1,3,3,3),(663,3,2,1,2,4,3),(664,4,4,3,4,3,2),(665,4,1,1,4,3,3),(666,2,3,1,3,4,2),(667,4,4,4,3,3,3),(668,2,4,3,2,3,2),(669,1,4,3,2,3,2),(670,3,4,2,2,4,2),(671,1,1,3,3,3,1),(672,1,1,2,3,3,2),(673,4,3,4,4,3,3),(674,2,3,3,3,3,3),(675,3,1,4,3,3,3),(676,2,4,4,2,3,3),(677,4,4,3,3,3,3),(678,3,2,4,4,3,1),(679,1,3,4,2,3,4),(680,2,4,2,3,4,2),(681,3,2,3,3,3,3),(682,4,4,3,3,3,4),(683,3,3,1,2,3,2),(684,4,3,4,2,3,3),(685,3,1,2,3,3,3),(686,2,4,1,4,3,3),(687,3,4,3,3,3,2),(688,1,3,1,3,3,3),(689,4,4,4,3,4,3),(690,2,3,1,4,3,3),(691,4,4,3,1,3,3),(692,3,2,2,3,3,3),(693,4,4,3,3,3,2),(694,4,3,4,1,4,2),(695,4,1,3,3,3,2),(696,4,4,4,2,3,3),(697,1,2,2,3,3,3),(698,4,3,4,3,3,1),(699,4,3,3,2,3,3),(700,1,1,4,1,3,3),(701,2,4,4,3,3,2),(702,4,4,4,3,3,3),(703,3,1,3,3,3,3),(704,1,4,2,3,4,4),(705,1,4,3,3,3,3),(706,1,3,3,2,3,2),(707,3,2,1,3,3,3),(708,2,1,3,3,3,3),(709,2,4,1,3,3,4),(710,3,3,2,4,3,1),(711,4,1,4,3,3,3),(712,4,3,1,2,3,2),(713,4,2,1,3,3,3),(714,4,2,1,3,3,2),(715,3,4,3,3,3,3),(716,4,4,4,2,3,3),(717,1,3,1,2,3,2),(718,1,3,1,4,3,2),(719,3,3,3,4,3,2),(720,3,4,1,3,3,3),(721,3,2,4,4,3,2),(722,4,3,2,3,3,4),(723,1,3,4,2,3,3),(724,3,2,4,3,3,3),(725,4,4,4,3,3,3),(726,3,3,1,3,3,3),(727,2,1,1,1,3,2),(728,3,1,4,2,3,3),(729,4,2,4,3,3,4),(730,2,1,2,3,3,3),(731,4,1,2,3,3,2),(732,1,3,3,2,3,3),(733,1,1,1,2,3,3),(734,4,1,2,2,3,1),(735,4,4,2,3,4,3),(736,3,1,3,2,3,3),(737,1,2,3,1,3,2),(738,3,3,1,3,3,3),(739,4,3,4,3,3,2),(740,4,1,1,4,3,4),(741,3,2,4,3,3,3),(742,1,2,3,3,3,3),(743,4,1,2,3,3,3),(744,3,4,1,3,3,3),(745,3,3,1,2,3,3),(746,4,2,3,4,3,2),(747,1,4,4,2,3,3),(748,1,1,1,2,4,3),(749,4,3,1,3,3,3),(750,4,3,4,3,3,3),(751,4,1,1,3,3,3),(752,1,1,2,3,3,1),(753,3,1,3,3,4,4),(754,4,2,3,3,3,3),(755,4,4,2,2,3,3),(756,2,1,3,2,4,3),(757,3,3,3,3,3,3),(758,2,2,1,1,4,2),(759,3,1,3,3,3,2),(760,1,3,4,3,3,3),(761,1,3,2,3,3,3),(762,4,2,2,2,4,3),(763,2,3,4,4,3,3),(764,3,3,4,1,3,2),(765,3,4,3,4,3,3),(766,4,3,3,3,3,3),(767,4,3,3,1,3,1),(768,2,2,2,3,4,2),(769,3,2,1,3,4,3),(770,3,3,2,3,3,2),(771,3,3,4,3,3,4),(772,3,3,3,3,4,3),(773,3,4,1,3,3,2),(774,4,2,1,3,3,3),(775,3,4,4,3,3,3),(776,3,1,4,3,3,3),(777,3,2,3,3,4,2),(778,3,4,4,3,3,3),(779,4,3,1,3,4,3),(780,2,3,2,3,3,2),(781,2,4,1,3,3,1),(782,3,3,3,3,3,2),(783,1,1,1,3,3,2),(784,1,3,3,3,3,2),(785,4,2,3,2,3,2),(786,1,4,3,2,3,3),(787,4,3,1,3,3,2),(788,4,1,4,3,3,3),(789,1,2,3,3,4,2),(790,2,3,4,3,3,3),(791,2,4,3,3,3,3),(792,2,1,4,2,3,2),(793,4,3,3,3,3,3),(794,3,2,3,3,3,3),(795,3,4,4,1,3,3),(796,4,1,2,2,3,3),(797,2,1,3,4,3,4),(798,1,4,2,3,3,3),(799,1,4,3,3,3,2),(800,2,3,4,3,3,3),(801,3,2,3,2,3,3),(802,1,4,2,4,3,2),(803,4,3,4,3,3,3),(804,1,4,3,4,3,2),(805,2,3,1,3,3,3),(806,2,2,1,1,3,3),(807,2,4,1,3,3,2),(808,4,4,4,3,3,4),(809,1,3,3,2,3,3),(810,4,1,4,3,3,3),(811,3,3,3,3,3,2),(812,4,3,4,2,3,2),(813,3,3,1,3,3,3),(814,2,4,1,3,3,2),(815,1,1,3,3,3,4),(816,4,4,2,3,4,3),(817,1,3,2,3,3,3),(818,4,2,4,3,4,3),(819,1,1,3,3,4,2),(820,2,3,2,3,3,4),(821,3,4,1,3,4,3),(822,3,4,4,2,4,3),(823,4,3,4,2,3,3),(824,2,4,3,4,3,3),(825,3,4,4,3,3,3),(826,2,3,3,1,3,3),(827,2,4,2,3,4,3),(828,1,4,4,1,3,3),(829,1,4,3,2,3,3),(830,4,2,3,3,4,3),(831,4,4,1,3,3,3),(832,4,1,4,3,4,3),(833,4,4,2,3,3,1),(834,3,3,4,3,3,1),(835,3,4,2,3,3,2),(836,3,3,1,3,3,3),(837,3,3,4,3,3,3),(838,3,3,4,3,4,3),(839,4,4,2,3,3,3),(840,3,4,3,2,3,2),(841,4,3,1,4,3,3),(842,2,4,2,3,3,3),(843,3,3,1,2,3,3),(844,3,3,4,3,3,4),(845,4,1,2,4,3,2),(846,4,4,4,2,3,1),(847,4,3,1,3,3,3),(848,4,3,1,3,3,3),(849,3,4,3,3,3,2),(850,4,4,1,3,3,3),(851,3,4,2,2,4,3),(852,3,2,4,2,3,2),(853,2,4,3,3,3,2),(854,4,4,3,2,3,1),(855,4,3,3,3,3,3),(856,3,1,4,3,3,3),(857,2,1,3,3,3,3),(858,3,3,4,2,3,2),(859,1,4,3,4,3,3),(860,4,3,1,4,3,3),(861,4,4,4,3,3,3),(862,1,4,3,3,3,3),(863,4,4,1,2,3,3),(864,4,4,4,3,4,3),(865,4,1,3,2,3,4),(866,1,1,4,3,3,3),(867,4,2,4,3,3,3),(868,1,4,2,3,3,3),(869,3,4,1,3,3,3),(870,4,3,2,3,3,2),(871,2,3,4,3,3,2),(872,4,3,4,3,3,3),(873,1,4,1,2,3,3),(874,3,2,4,3,3,1),(875,4,1,2,2,3,2),(876,1,4,4,1,3,2),(877,4,2,3,3,3,3),(878,2,3,4,2,3,3),(879,4,3,4,3,3,2),(880,3,3,4,3,3,2),(881,3,3,3,3,3,3),(882,4,2,3,3,3,4),(883,1,3,2,2,3,3),(884,4,3,3,3,3,3),(885,1,3,4,3,4,2),(886,3,4,2,2,3,3),(887,4,4,4,3,3,3),(888,4,2,2,3,3,3),(889,2,3,3,2,4,3),(890,4,2,3,3,3,3),(891,1,2,4,4,3,2),(892,4,4,3,3,3,4),(893,2,2,1,3,3,3),(894,1,3,1,3,3,2),(895,3,1,3,3,3,3),(896,4,1,4,3,4,3),(897,3,4,3,3,3,3),(898,4,3,1,2,3,3),(899,1,3,1,3,3,3),(900,1,4,4,3,3,2),(901,4,4,4,3,3,1),(902,4,4,3,1,3,2),(903,1,2,4,3,4,1),(904,2,3,3,2,3,3),(905,3,2,2,2,3,4),(906,1,3,3,3,3,1),(907,3,3,4,2,3,3),(908,4,1,2,3,3,3),(909,2,3,1,3,3,3),(910,2,4,3,3,3,3),(911,3,3,3,2,3,3),(912,4,2,4,3,3,4),(913,1,4,3,3,3,2),(914,4,4,3,4,3,3),(915,4,3,4,3,3,3),(916,1,4,4,2,3,3),(917,3,2,4,3,3,3),(918,4,1,1,2,3,1),(919,1,2,3,2,3,4),(920,3,4,3,3,3,3),(921,3,3,3,3,3,3),(922,4,1,4,3,3,4),(923,1,4,3,3,4,3),(924,3,3,4,3,3,3),(925,2,3,2,2,3,3),(926,1,4,4,2,3,3),(927,1,1,1,4,3,4),(928,4,3,2,4,4,3),(929,4,4,2,4,3,3),(930,1,1,3,3,3,3),(931,1,4,1,3,3,3),(932,4,4,2,3,3,3),(933,1,3,3,1,3,3),(934,4,4,3,3,3,2),(935,3,4,3,4,3,3),(936,4,3,4,2,3,3),(937,4,4,4,2,4,2),(938,4,4,2,3,3,3),(939,4,4,4,3,3,3),(940,1,4,3,4,3,3),(941,4,4,1,3,3,3),(942,1,1,4,1,3,3),(943,2,3,4,4,3,3),(944,3,2,4,3,3,3),(945,1,2,4,3,3,2),(946,4,3,3,1,3,3),(947,3,2,1,3,3,3),(948,4,2,3,3,4,3),(949,1,3,1,3,3,3),(950,4,3,3,4,3,3),(951,3,4,3,3,3,2),(952,3,2,2,3,3,3),(953,3,3,4,2,3,3),(954,3,3,4,3,3,1),(955,4,4,2,3,3,2),(956,2,3,4,3,3,2),(957,1,4,4,2,3,3),(958,4,1,4,2,4,1),(959,1,3,4,4,4,2),(960,4,1,2,3,3,2),(961,3,1,1,2,3,4),(962,3,2,1,3,3,3),(963,1,4,4,2,3,2),(964,2,4,2,2,3,3),(965,2,3,3,2,3,3),(966,4,2,4,3,3,2),(967,1,2,4,3,3,3),(968,3,4,3,2,3,2),(969,4,1,4,2,3,2),(970,2,1,3,3,3,4),(971,3,2,3,3,3,3),(972,4,4,1,3,4,1),(973,3,2,1,2,3,3),(974,2,3,4,3,3,3),(975,3,2,3,3,3,3),(976,3,1,1,2,4,3),(977,2,1,4,3,3,3),(978,4,2,2,3,3,3),(979,1,2,3,3,3,3),(980,4,2,3,2,3,3),(981,3,4,2,2,4,1),(982,2,1,2,3,3,3),(983,1,4,3,2,3,3),(984,4,2,3,3,3,3),(985,1,2,4,3,3,3),(986,2,1,4,3,4,2),(987,2,4,1,1,3,3),(988,2,4,4,2,3,2),(989,1,2,1,3,3,3),(990,3,1,3,3,3,3),(991,4,4,4,3,3,3),(992,4,2,4,3,3,3),(993,4,3,1,3,3,2),(994,1,4,3,1,3,3),(995,4,2,2,3,3,3),(996,4,3,4,2,3,3),(997,1,4,3,3,3,2),(998,1,3,4,3,3,2),(999,1,2,2,2,4,3),(1000,4,3,2,3,3,3),(1001,4,3,2,2,3,4),(1002,3,1,4,4,3,3),(1003,4,4,4,3,3,3),(1004,4,4,3,3,3,3),(1005,1,1,1,3,3,3),(1006,3,3,3,3,3,2),(1007,3,3,4,2,3,3),(1008,4,3,3,2,3,3),(1009,4,2,4,2,3,4),(1010,4,4,1,3,3,3),(1011,1,3,3,3,3,3),(1012,1,1,3,2,3,2),(1013,4,3,1,3,4,3),(1014,4,1,2,3,3,3),(1015,3,3,2,2,4,3),(1016,3,2,4,2,3,2),(1017,1,1,4,3,3,3),(1018,1,3,3,2,4,1),(1019,3,4,1,3,3,3),(1020,4,3,3,3,3,2),(1021,3,4,3,3,3,3),(1022,4,2,4,2,3,3),(1023,4,2,1,3,3,2),(1024,4,4,2,3,3,2),(1025,1,4,3,3,3,3),(1026,3,1,1,3,3,3),(1027,1,1,4,2,3,3),(1028,4,2,1,3,3,3),(1029,3,1,2,1,3,3),(1030,4,1,2,3,3,4),(1031,1,3,1,3,3,4),(1032,3,2,3,3,3,3),(1033,4,3,4,3,3,2),(1034,2,3,2,3,4,3),(1035,4,2,2,2,3,2),(1036,4,2,4,1,4,3),(1037,4,3,3,3,3,2),(1038,4,4,3,4,3,3),(1039,4,4,3,3,3,2),(1040,2,2,2,3,3,3),(1041,4,1,4,3,3,2),(1042,3,1,2,3,3,2),(1043,1,2,3,4,3,2),(1044,4,4,4,2,3,3),(1045,4,4,3,3,3,3),(1046,1,1,3,3,3,3),(1047,3,3,4,3,3,3),(1048,1,2,4,3,3,2),(1049,4,2,1,3,3,3),(1050,1,3,2,3,3,4),(1051,3,1,1,2,3,2),(1052,1,1,1,2,3,3),(1053,1,4,1,3,4,4),(1054,2,1,3,4,3,3),(1055,4,4,2,4,3,3),(1056,2,3,4,3,3,1),(1057,3,1,1,3,3,3),(1058,1,4,3,3,3,3),(1059,3,4,3,2,3,3),(1060,1,2,3,3,3,2),(1061,4,3,2,3,3,2),(1062,1,4,3,3,3,4),(1063,2,2,3,3,3,2),(1064,4,2,3,3,3,3),(1065,3,4,1,3,3,3),(1066,4,1,1,2,4,3),(1067,4,3,2,3,3,3),(1068,3,2,4,3,3,4),(1069,4,1,3,3,3,3),(1070,4,3,4,3,3,3),(1071,3,4,4,3,4,2),(1072,1,4,1,3,3,1),(1073,4,2,2,3,3,3),(1074,3,1,2,3,3,3),(1075,3,4,1,3,3,2),(1076,2,2,4,3,3,2),(1077,2,2,2,3,3,4),(1078,1,3,3,3,3,3),(1079,4,4,3,4,3,3),(1080,1,4,1,4,3,3),(1081,4,2,3,2,3,2),(1082,2,2,3,2,3,2),(1083,2,4,4,4,3,3),(1084,4,4,1,3,3,3),(1085,3,2,3,3,3,3),(1086,3,3,4,3,3,3),(1087,4,3,3,3,3,3),(1088,1,4,3,3,3,1),(1089,3,4,4,3,3,2),(1090,3,2,4,2,4,3),(1091,1,4,4,1,3,2),(1092,2,1,3,4,3,3),(1093,4,3,4,3,3,2),(1094,1,2,1,3,3,1),(1095,3,3,3,2,3,3),(1096,2,3,1,3,3,3),(1097,1,2,2,3,3,3),(1098,3,1,3,3,3,3),(1099,4,3,3,2,3,3),(1100,4,3,4,3,3,3),(1101,4,2,1,3,3,2),(1102,2,3,2,4,3,3),(1103,4,1,1,3,3,3),(1104,1,2,3,3,3,2),(1105,3,1,4,3,3,3),(1106,4,4,2,2,3,3),(1107,3,2,4,3,4,3),(1108,4,3,3,1,3,4),(1109,1,1,3,3,3,2),(1110,2,4,3,3,3,4),(1111,3,2,2,1,3,3),(1112,2,2,1,3,3,4),(1113,2,2,1,2,3,3),(1114,3,3,2,3,3,1),(1115,4,4,4,3,3,3),(1116,3,3,4,2,3,2),(1117,1,3,3,3,3,3),(1118,4,3,4,3,3,2),(1119,2,3,2,1,3,3),(1120,4,4,3,4,3,4),(1121,1,4,3,2,4,2),(1122,4,1,4,1,3,3),(1123,1,4,3,3,3,3),(1124,2,1,2,2,3,3),(1125,2,3,2,2,3,3),(1126,1,3,3,3,3,2),(1127,4,1,2,4,3,1),(1128,1,4,1,3,3,3),(1129,3,3,1,3,4,3),(1130,2,1,4,1,4,2),(1131,1,2,3,3,3,3),(1132,1,4,1,2,3,3),(1133,2,3,3,3,3,3),(1134,3,2,4,3,3,3),(1135,3,3,2,2,3,2),(1136,4,2,4,3,3,3),(1137,2,2,4,2,4,4),(1138,4,2,1,3,3,3),(1139,4,4,2,2,3,3),(1140,4,2,1,1,4,3),(1141,1,4,4,3,3,3),(1142,3,3,2,2,3,1),(1143,3,4,4,3,3,3),(1144,4,3,4,2,3,2),(1145,1,2,3,4,3,2),(1146,2,3,3,3,3,3),(1147,1,3,3,1,3,3),(1148,2,4,4,3,3,4),(1149,3,4,1,3,3,3),(1150,1,2,1,3,3,2),(1151,4,2,2,3,3,3),(1152,3,4,1,3,3,3),(1153,4,3,4,3,3,4),(1154,4,3,3,3,3,2),(1155,1,3,3,3,3,3),(1156,4,3,3,3,3,3),(1157,4,4,3,3,3,4),(1158,3,3,2,2,3,3),(1159,2,2,2,2,3,3),(1160,3,4,1,3,3,3),(1161,4,2,2,3,3,3),(1162,4,2,4,3,3,4),(1163,4,4,1,3,3,3),(1164,3,4,3,2,3,3),(1165,3,4,3,3,3,4),(1166,4,2,1,2,3,3),(1167,4,4,3,2,3,3),(1168,3,3,4,4,3,3),(1169,2,2,2,4,4,3),(1170,3,4,4,3,3,3),(1171,2,4,1,2,3,4),(1172,3,2,2,3,3,3),(1173,3,3,4,3,3,3),(1174,3,4,3,2,3,2),(1175,3,1,4,3,3,3),(1176,2,1,4,3,3,3),(1177,4,1,1,2,3,2),(1178,2,3,2,4,4,1),(1179,4,4,2,1,3,3),(1180,4,4,3,2,3,3),(1181,3,3,2,2,3,3),(1182,1,4,2,3,3,3),(1183,1,3,3,4,3,3),(1184,2,3,1,3,3,1),(1185,1,4,1,3,3,3),(1186,3,3,3,4,3,3),(1187,2,4,3,3,3,3),(1188,2,3,1,3,4,3),(1189,2,4,4,2,3,3),(1190,2,4,4,3,3,3),(1191,2,3,3,3,3,3),(1192,4,4,2,3,3,3),(1193,1,3,3,2,3,1),(1194,3,2,4,3,3,3),(1195,3,2,3,3,3,2),(1196,4,4,4,4,3,2),(1197,3,4,3,3,3,3),(1198,4,4,3,3,3,2),(1199,1,3,3,3,3,2),(1200,3,4,3,2,3,3),(1201,3,4,4,3,3,2),(1202,4,4,4,2,3,1),(1203,3,3,1,3,3,3),(1204,3,4,4,4,3,3),(1205,2,2,2,2,3,4),(1206,1,2,2,2,4,4),(1207,3,4,4,2,3,3),(1208,2,4,1,3,4,3),(1209,2,4,4,3,3,4),(1210,3,3,3,3,3,4),(1211,4,3,3,3,3,2),(1212,3,2,1,2,3,3),(1213,4,1,2,2,3,3),(1214,3,3,2,3,3,3),(1215,4,3,4,3,3,4),(1216,3,2,2,2,3,2),(1217,3,3,4,3,3,3),(1218,4,3,1,3,3,2),(1219,3,4,4,3,3,3),(1220,4,3,2,3,3,3),(1221,4,2,4,3,3,2),(1222,2,4,4,2,4,2),(1223,1,1,3,4,3,3),(1224,3,2,4,3,3,3),(1225,3,1,4,2,3,2),(1226,2,3,3,2,3,2),(1227,4,2,3,2,3,3),(1228,3,1,1,4,3,2),(1229,4,2,3,3,4,3),(1230,4,2,4,4,3,2),(1231,3,4,4,3,3,3),(1232,4,1,3,2,3,3),(1233,4,3,4,3,3,4),(1234,2,1,4,3,3,3),(1235,3,3,4,3,3,3),(1236,4,4,1,3,3,3),(1237,1,3,3,1,3,2),(1238,2,1,2,3,4,3),(1239,4,4,4,4,3,3),(1240,1,4,3,2,3,3),(1241,3,3,1,2,3,3),(1242,4,3,3,3,3,3),(1243,2,3,1,3,3,3),(1244,4,1,3,2,3,2),(1245,2,2,4,4,3,3),(1246,4,2,1,3,3,4),(1247,1,4,4,3,3,3),(1248,3,3,1,3,3,3),(1249,4,4,1,3,3,3),(1250,4,2,4,2,3,3),(1251,3,4,4,2,3,4),(1252,2,3,4,3,3,3),(1253,4,3,2,2,3,3),(1254,1,1,4,3,4,3),(1255,4,4,3,3,3,2),(1256,3,4,1,3,4,3),(1257,2,4,2,3,3,3),(1258,2,3,3,2,3,3),(1259,2,2,2,2,4,2),(1260,3,1,1,1,4,3),(1261,2,3,4,2,4,2),(1262,2,1,3,2,3,3),(1263,4,2,3,3,3,3),(1264,2,2,1,3,3,3),(1265,4,3,4,3,3,3),(1266,3,1,4,2,3,3),(1267,4,3,4,3,3,2),(1268,3,1,1,3,3,2),(1269,3,3,4,4,3,3),(1270,1,2,3,3,3,3),(1271,3,2,4,3,3,2),(1272,1,3,3,3,3,1),(1273,1,2,2,2,3,3),(1274,2,2,4,2,3,3),(1275,1,3,1,4,4,3),(1276,4,4,3,3,4,1),(1277,3,4,2,3,3,3),(1278,3,3,3,3,3,3),(1279,3,4,4,4,3,3),(1280,4,1,3,2,3,3),(1281,4,1,3,3,3,2),(1282,4,1,1,3,3,2),(1283,2,1,3,3,3,3),(1284,1,2,4,3,3,3),(1285,3,3,2,3,3,3),(1286,1,2,3,3,4,1),(1287,1,2,4,2,4,3),(1288,4,2,4,3,3,3),(1289,4,2,3,3,3,3),(1290,3,3,3,3,3,4),(1291,3,4,2,4,3,3),(1292,3,1,2,3,3,3),(1293,3,3,4,3,4,3),(1294,3,4,2,3,3,2),(1295,2,2,3,2,4,3),(1296,3,4,1,3,3,3),(1297,4,3,4,3,4,3),(1298,1,3,4,2,3,4),(1299,1,3,4,2,3,2),(1300,1,3,4,3,3,3),(1301,3,3,3,3,3,3),(1302,4,1,3,3,3,3),(1303,2,4,2,3,3,3),(1304,3,3,1,1,3,3),(1305,1,1,3,3,3,3),(1306,3,2,4,1,3,1),(1307,3,3,3,3,3,3),(1308,4,4,2,2,4,3),(1309,2,3,1,2,3,4),(1310,4,3,3,3,3,2),(1311,4,4,2,2,3,4),(1312,2,3,4,2,3,3),(1313,3,4,1,3,3,2),(1314,3,4,3,3,3,3),(1315,3,3,3,3,4,3),(1316,2,1,3,3,3,2),(1317,4,4,3,3,3,3),(1318,4,3,3,2,3,3),(1319,4,1,4,4,3,3),(1320,3,4,3,3,3,3),(1321,3,3,3,3,3,3),(1322,4,1,1,3,3,4),(1323,4,2,3,3,3,1),(1324,2,3,1,3,3,3),(1325,3,3,1,4,4,3),(1326,3,3,2,2,3,3),(1327,2,4,1,2,3,3),(1328,1,4,3,2,3,3),(1329,3,2,4,2,4,2),(1330,2,4,3,2,3,3),(1331,4,3,4,3,3,2),(1332,4,4,3,2,3,3),(1333,4,2,4,3,3,3),(1334,1,3,4,3,3,3),(1335,4,4,2,3,3,3),(1336,1,3,4,3,4,1),(1337,4,4,4,2,3,2),(1338,1,3,2,3,4,4),(1339,4,1,4,3,3,2),(1340,4,2,2,3,3,3),(1341,3,4,2,2,3,3),(1342,4,1,3,3,3,2),(1343,3,3,2,2,3,3),(1344,3,3,2,2,3,3),(1345,1,2,2,2,3,2),(1346,4,2,2,2,3,4),(1347,1,2,1,3,3,3),(1348,2,1,4,2,3,3),(1349,4,1,3,3,4,3),(1350,2,4,2,4,3,2),(1351,4,3,1,2,4,3),(1352,4,3,4,3,3,3),(1353,2,4,4,3,3,3),(1354,4,1,1,2,3,3),(1355,4,2,3,3,3,4),(1356,1,2,4,3,3,3),(1357,1,1,2,1,3,1),(1358,2,3,4,3,3,3),(1359,1,2,3,3,3,2),(1360,4,2,2,3,4,3),(1361,3,3,4,2,3,3),(1362,3,1,1,2,3,2),(1363,1,3,3,3,3,4),(1364,4,3,4,2,3,3),(1365,1,1,2,2,3,3),(1366,4,4,3,3,3,3),(1367,3,4,4,2,3,3),(1368,4,3,2,3,3,3),(1369,2,1,4,1,3,3),(1370,3,4,3,3,3,3),(1371,2,1,4,3,3,3),(1372,4,2,3,2,3,3),(1373,3,3,1,3,3,3),(1374,3,2,4,2,3,3),(1375,4,4,3,1,3,3),(1376,1,1,1,2,3,1),(1377,2,4,2,3,3,3),(1378,4,1,2,3,3,1),(1379,1,3,1,3,3,3),(1380,1,3,3,2,3,4),(1381,4,3,2,4,3,2),(1382,3,2,4,3,3,3),(1383,4,3,4,2,3,4),(1384,3,4,3,4,3,2),(1385,2,4,4,4,3,3),(1386,4,4,3,3,4,3),(1387,3,4,4,1,3,3),(1388,2,4,2,4,3,3),(1389,2,2,3,2,3,2),(1390,2,3,2,3,4,3),(1391,3,2,4,4,3,3),(1392,4,3,4,3,3,4),(1393,3,3,4,2,3,4),(1394,2,2,3,1,3,3),(1395,1,3,2,2,3,4),(1396,2,2,1,3,3,4),(1397,1,2,1,2,4,4),(1398,1,3,3,3,3,2),(1399,4,2,3,3,3,2),(1400,4,1,3,3,3,3),(1401,2,3,1,3,3,2),(1402,4,3,2,3,3,3),(1403,3,3,1,2,3,2),(1404,1,4,3,2,3,1),(1405,4,1,3,3,3,3),(1406,2,4,2,3,3,3),(1407,3,2,2,2,3,3),(1408,3,1,3,4,3,2),(1409,4,2,1,2,3,3),(1410,4,4,1,3,3,3),(1411,4,3,4,3,3,3),(1412,1,1,4,3,4,3),(1413,2,1,3,3,3,3),(1414,4,3,3,3,3,3),(1415,4,4,4,2,4,3),(1416,3,4,4,2,3,2),(1417,4,2,1,4,3,1),(1418,2,3,4,3,3,4),(1419,1,2,2,2,3,2),(1420,1,1,4,3,3,3),(1421,4,4,3,3,3,3),(1422,4,4,3,3,3,3),(1423,4,1,2,3,3,3),(1424,3,3,4,1,4,4),(1425,4,3,3,1,3,3),(1426,2,2,1,3,3,3),(1427,2,2,4,3,3,2),(1428,3,4,2,3,3,1),(1429,1,2,2,1,3,3),(1430,4,3,3,1,4,4),(1431,4,1,4,4,3,3),(1432,1,3,1,3,4,2),(1433,1,1,3,3,3,3),(1434,4,3,1,2,3,3),(1435,3,3,3,4,3,3),(1436,2,3,4,1,3,3),(1437,3,4,3,2,3,3),(1438,3,2,1,2,3,3),(1439,2,2,2,3,3,3),(1440,3,3,1,3,3,3),(1441,3,3,2,3,3,2),(1442,2,3,1,4,3,2),(1443,2,3,3,3,3,1),(1444,4,3,1,4,3,3),(1445,4,4,2,3,4,3),(1446,4,3,4,3,3,4),(1447,4,4,3,1,3,3),(1448,4,4,3,3,3,3),(1449,4,4,2,2,3,3),(1450,4,2,4,2,3,2),(1451,2,4,2,3,3,3),(1452,2,3,4,3,3,2),(1453,4,1,2,3,4,3),(1454,2,3,3,2,3,2),(1455,2,4,1,4,3,3),(1456,3,4,1,4,3,3),(1457,4,4,3,3,3,3),(1458,4,3,1,2,3,3),(1459,1,4,1,3,4,3),(1460,4,3,4,3,3,2),(1461,2,3,4,3,3,3),(1462,1,1,2,2,3,3),(1463,1,1,1,2,3,2),(1464,4,2,4,2,4,3),(1465,4,3,4,1,3,3),(1466,3,3,2,3,3,3),(1467,1,3,4,3,3,2),(1468,4,3,4,3,3,2),(1469,4,1,1,3,3,3),(1470,3,3,4,3,3,3),(1471,2,2,3,3,4,3),(1472,3,3,3,3,3,2),(1473,1,1,1,3,3,2),(1474,4,4,4,3,3,2),(1475,1,3,3,3,3,2),(1476,2,4,4,3,3,3),(1477,4,3,1,3,3,3),(1478,4,2,2,3,3,3),(1479,3,1,4,4,3,2),(1480,3,2,4,2,3,3),(1481,1,3,2,2,3,3),(1482,2,2,1,3,3,1),(1483,2,2,3,2,3,3),(1484,2,4,4,2,3,2),(1485,1,2,1,3,3,3),(1486,3,1,3,3,3,3),(1487,4,4,4,3,3,3),(1488,4,3,2,2,3,4),(1489,3,1,4,4,3,3),(1490,4,4,4,3,3,3),(1491,4,4,3,3,3,3),(1492,1,1,1,3,3,3),(1493,3,3,3,3,3,2),(1494,3,3,4,2,3,3),(1495,4,3,3,2,3,3),(1496,4,2,4,2,3,4),(1497,4,4,1,3,3,3),(1498,1,3,3,3,3,3),(1499,2,2,4,3,3,3),(1500,1,1,4,2,3,3),(1501,3,4,4,3,3,3),(1502,2,3,4,3,3,3),(1503,4,2,3,3,3,3),(1504,4,4,2,3,4,4),(1505,4,2,3,3,4,4),(1506,1,3,4,3,4,3),(1507,3,3,2,3,4,3),(1508,1,1,1,3,3,3),(1509,1,2,3,4,3,2),(1510,3,2,1,3,3,4),(1511,3,1,4,4,3,3),(1512,3,3,4,2,3,3),(1513,3,3,4,3,3,3),(1514,1,4,1,2,3,3),(1515,3,2,4,3,3,1),(1516,3,1,2,2,3,2),(1517,1,4,4,1,3,2),(1518,4,2,3,3,3,3),(1519,2,3,4,2,3,3),(1520,4,3,4,3,3,2),(1521,3,3,4,3,3,2),(1522,3,3,3,3,3,3),(1523,4,2,3,3,3,4),(1524,1,3,2,2,3,3),(1525,4,3,3,3,3,3),(1526,1,3,4,3,4,2),(1527,3,4,2,2,3,3),(1528,4,4,4,3,3,3),(1529,4,2,2,3,3,3),(1530,2,3,3,2,4,3),(1531,4,2,3,3,3,3),(1532,1,2,4,4,3,2),(1533,4,4,3,3,3,4),(1534,2,2,1,3,3,3),(1535,1,3,1,3,3,2),(1536,3,1,3,3,3,3),(1537,4,1,4,3,4,3),(1538,3,4,3,3,3,3),(1539,4,3,1,2,3,3),(1540,1,3,1,3,3,3),(1541,1,4,4,3,3,2),(1542,3,2,4,3,3,3),(1543,1,4,2,3,3,2),(1544,2,2,2,4,3,2),(1545,2,1,4,3,3,3),(1546,4,4,4,3,3,3),(1547,4,2,4,2,3,3),(1548,2,2,4,4,3,2),(1549,3,1,4,3,3,3),(1550,4,4,4,3,3,3),(1551,1,3,4,4,3,2),(1552,2,3,4,2,3,2),(1553,3,2,3,2,3,4),(1554,2,4,1,1,3,2),(1555,2,1,2,3,3,3),(1556,4,1,2,2,3,3),(1557,3,1,1,4,3,3),(1558,3,2,3,3,3,3),(1559,4,3,3,4,3,3),(1560,1,3,2,3,3,3),(1561,4,3,4,3,3,2),(1562,4,3,1,3,3,2),(1563,3,4,1,4,3,2),(1564,2,3,1,4,3,3),(1565,3,3,3,3,3,2),(1566,3,3,4,3,3,2),(1567,4,3,3,3,3,3),(1568,2,1,4,3,3,3),(1569,4,2,2,3,3,4),(1570,2,2,3,3,3,3),(1571,1,1,3,2,3,3),(1572,4,4,4,4,3,3),(1573,1,4,4,4,4,4),(1574,4,2,3,3,3,3),(1575,4,4,1,3,4,4),(1576,3,3,3,3,3,3),(1577,3,3,2,3,3,4),(1578,4,1,4,2,3,3),(1579,2,4,4,1,3,3),(1580,4,2,2,2,3,4),(1581,4,1,3,2,3,3),(1582,4,4,4,3,3,2),(1583,2,3,4,4,3,3),(1584,3,4,1,3,3,3),(1585,3,4,4,3,3,3),(1586,4,4,1,3,3,3),(1587,4,3,1,3,4,2),(1588,4,2,3,2,3,3),(1589,1,4,2,1,3,3),(1590,1,1,1,4,3,3),(1591,4,4,4,3,3,2),(1592,3,3,4,3,3,2),(1593,2,1,3,1,3,3),(1594,1,2,1,2,3,3),(1595,2,1,3,3,3,2),(1596,1,4,1,4,3,3),(1597,3,4,2,4,4,3),(1598,2,2,4,3,3,2),(1599,3,1,2,3,3,3),(1600,3,3,3,4,4,3),(1601,3,3,4,3,3,2),(1602,4,1,2,3,4,3),(1603,3,1,3,2,3,3),(1604,2,4,1,3,3,3),(1605,2,3,4,1,3,2),(1606,2,2,3,2,3,4),(1607,3,2,1,2,3,3),(1608,4,3,4,3,3,1),(1609,3,3,1,3,3,4),(1610,3,1,4,2,3,3),(1611,3,2,2,3,3,2),(1612,4,4,3,4,3,3),(1613,1,4,4,3,3,3),(1614,4,2,3,3,3,3);
/*!40000 ALTER TABLE `satisfaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 12:28:35
