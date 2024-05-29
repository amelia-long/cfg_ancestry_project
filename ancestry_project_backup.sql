-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: ancestry_project
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `activity` varchar(250) DEFAULT NULL,
  `activity_date` datetime NOT NULL,
  `user` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'London'),(2,'Dublin'),(3,'Boston MA'),(4,'Montrose'),(5,'Beverley'),(6,'Glasgow'),(7,'Ipswich'),(8,'Douglas'),(9,'Eastbourne'),(10,'Sandford Crediton'),(11,'Great Yarmouth'),(12,'Caister-on-Sea'),(13,'Malton'),(14,'Liverpool'),(15,'Manchester');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'England'),(2,'Ireland'),(3,'Scotland'),(4,'United States'),(5,'Isle of Man');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
  `county_id` int NOT NULL AUTO_INCREMENT,
  `county` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`county_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Middlesex'),(2,'Surrey'),(3,'Suffolk'),(4,'City of London'),(5,'Lancashire'),(6,'Yorkshire'),(7,'Dublin'),(8,'Overseas'),(9,'East Sussex'),(10,'Norfolk'),(11,'West Sussex'),(12,'Lanarkshire'),(13,'Devon');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_type` (
  `event_type_id` int NOT NULL AUTO_INCREMENT,
  `event_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
INSERT INTO `event_type` VALUES (1,'Birth'),(2,'Baptism'),(3,'Marriage'),(4,'Residence'),(5,'Death');
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `locations_list`
--

DROP TABLE IF EXISTS `locations_list`;
/*!50001 DROP VIEW IF EXISTS `locations_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `locations_list` AS SELECT 
 1 AS `person_id`,
 1 AS `sex`,
 1 AS `event_year`,
 1 AS `event_type`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `age`,
 1 AS `address`,
 1 AS `city`,
 1 AS `county`,
 1 AS `country`,
 1 AS `w3w_code`,
 1 AS `source_record`,
 1 AS `occupation`,
 1 AS `event_note`,
 1 AS `place_note`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occupation` (
  `occupation_id` int NOT NULL AUTO_INCREMENT,
  `occupation` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`occupation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES (1,'Master Scale Maker'),(2,'Unpaid Domestic Duties'),(3,'Indoor Salesman for Iron and Brass Foundry and Finishers of Tube Fittings Vales Boilers'),(4,'Teleprinter Operator'),(5,'Cork Helmet Maker'),(6,'General Dealer'),(7,'Charwoman'),(8,'Blouse Machinist'),(9,'Scale Maker Journeyman'),(10,'Apprentice'),(11,'Bookseller'),(12,'Traveller'),(13,'Book Agent'),(14,'Printer');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `b_year` int NOT NULL,
  `d_year` int DEFAULT NULL,
  `mother` int DEFAULT NULL,
  `father` int DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `notes` varchar(512) DEFAULT NULL,
  `living` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `FK_mother_id` (`mother`),
  KEY `FK_father_id` (`father`),
  CONSTRAINT `FK_father_id` FOREIGN KEY (`father`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FK_mother_id` FOREIGN KEY (`mother`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Crooks','Amelia Louise',1968,NULL,3,2,'f',NULL,1),(2,'Crooks','Anthony Charles',1943,NULL,5,4,'m',NULL,1),(3,'Pert','Angela Stirton',1941,NULL,7,6,'f',NULL,1),(4,'Crooks','Reginald William',1915,1988,9,8,'m',NULL,NULL),(5,'Moody','Ethel Ivy',1914,2003,11,10,'f',NULL,NULL),(6,'Pert','Bernard',1916,1985,13,12,'m',NULL,NULL),(7,'Smith','Daisy Nora',1912,1971,15,14,'f',NULL,NULL),(8,'Crooks','William Alfred',1890,1952,30,29,'m',NULL,NULL),(9,'Solomon','Violet',1894,1983,32,31,'f','Vi',NULL),(10,'Moody','Charles',1882,1936,34,33,'m',NULL,NULL),(11,'Ives','Nellie Eliza',1882,1940,36,35,'f',NULL,NULL),(12,'Pert','William Stirton',1888,1963,38,37,'m',NULL,NULL),(13,'Wild','Mabel',1889,1962,NULL,NULL,'f',NULL,NULL),(14,'Smith','Henry Hollingsworth',1883,1960,NULL,NULL,'m',NULL,NULL),(15,'Leggett','Esther',1885,1919,NULL,NULL,'f',NULL,NULL),(16,'Crooks','Vivien',1932,2013,9,8,'f',NULL,NULL),(17,'Moody','Charles Frederick',1906,2001,11,10,'m',NULL,NULL),(18,'Moody','James Albert',1912,1992,11,10,'m','Jim',NULL),(19,'Moody','Nellie Ada',1904,1944,11,10,'f',NULL,NULL),(20,'Moody','Amelia Rose',1908,2004,11,10,'f','Millie',NULL),(21,'Moody','Mabel Florence',1910,1930,11,10,'f',NULL,NULL),(22,'Moody','Doris Winifred',1918,NULL,11,10,'f',NULL,NULL),(23,'Pert','Isabella',1913,2001,13,12,'f','Bella',NULL),(24,'Pert','Katherine',1912,NULL,13,12,'f','Kitty',NULL),(25,'Smith','Arthur William',1910,NULL,15,14,'m',NULL,NULL),(26,'Smith','Grace L',1911,1914,15,14,'f',NULL,NULL),(27,'Smith','Lilian May',1914,NULL,15,14,'f','Lily',NULL),(28,'Smith','Rose Clara',1918,1920,15,14,'f',NULL,NULL),(29,'Crooks','Charles Alfred',1860,1938,46,45,'m','Birth register Alpha Charles',NULL),(30,'Bevan','Emily Jane Kennicot',1863,1908,NULL,NULL,'f',NULL,NULL),(31,'Solomon','Samuel',1857,NULL,NULL,NULL,'m','Also known as Simon',NULL),(32,'Levenston','Maria',1867,1954,NULL,NULL,'f',NULL,NULL),(33,'Moody','Thomas',1855,1913,NULL,NULL,'m',NULL,NULL),(34,'Cornhill','Amelia',1855,1943,NULL,NULL,'f',NULL,NULL),(35,'Ives','Theophilus',1844,1899,NULL,NULL,'m',NULL,NULL),(36,'Cosson','Harriet',1844,NULL,NULL,NULL,'f',NULL,NULL),(37,'Pert','John Cooper',1858,1931,NULL,NULL,'m',NULL,NULL),(38,'Stirton','Mary',1859,NULL,NULL,NULL,'f',NULL,NULL),(39,'Solomon','Julia',1888,1982,32,31,'f','Ju',NULL),(40,'Solomon','Catherine',1890,NULL,32,31,'f','Kitty',NULL),(41,'Solomon','Rachael',1891,1980,32,31,'f','Rae',NULL),(42,'Solomon','Adelaide',1893,1982,32,31,'f','Ada',NULL),(43,'Solomon','Lilian',1898,NULL,32,31,'f',NULL,NULL),(44,'Solomon','Matilda Josephine',1903,NULL,32,31,'f',NULL,NULL),(45,'Crooks','Frederick George',1824,1896,NULL,NULL,'m',NULL,NULL),(46,'Miller','Amy Elizabeth',1829,1882,NULL,47,'f','Death year estimated',NULL),(47,'Miller','Barnabas',1790,1862,NULL,NULL,'m',NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_place`
--

DROP TABLE IF EXISTS `person_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_place` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `place_id` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `event_type_id` int DEFAULT NULL,
  `source_id` int DEFAULT NULL,
  `occupation_id` int DEFAULT NULL,
  `note` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`pp_id`),
  KEY `FK_source_id` (`source_id`),
  KEY `FK_person_id` (`person_id`),
  KEY `FK_place_id` (`place_id`),
  KEY `FK_event_type_id` (`event_type_id`),
  KEY `FK_occupation_id` (`occupation_id`),
  CONSTRAINT `FK_event_type_id` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`event_type_id`),
  CONSTRAINT `FK_occupation_id` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`occupation_id`),
  CONSTRAINT `FK_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FK_place_id` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`),
  CONSTRAINT `FK_source_id` FOREIGN KEY (`source_id`) REFERENCES `source_record` (`source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_place`
--

LOCK TABLES `person_place` WRITE;
/*!40000 ALTER TABLE `person_place` DISABLE KEYS */;
INSERT INTO `person_place` VALUES (1,8,1,1901,4,17,9,NULL),(2,5,25,1914,2,34,NULL,NULL),(3,10,25,1914,2,34,NULL,'Baptism of daughter'),(4,11,25,1914,2,34,NULL,'Baptism of daughter'),(5,5,3,1931,4,37,NULL,NULL),(6,5,3,1936,4,36,NULL,NULL),(7,18,3,1936,4,36,NULL,NULL),(8,11,3,1936,4,36,NULL,NULL),(9,20,3,1936,4,36,NULL,NULL),(10,5,26,1938,4,36,NULL,NULL),(11,11,26,1938,4,36,NULL,NULL),(12,20,26,1938,4,36,NULL,NULL),(13,5,1,1939,4,10,4,NULL),(14,8,1,1939,4,10,1,NULL),(15,9,1,1939,4,10,2,NULL),(16,4,1,1939,4,10,3,NULL),(17,5,2,1914,4,34,NULL,NULL),(18,10,2,1914,4,34,5,NULL),(19,11,2,1914,4,34,NULL,NULL),(20,5,27,1947,4,36,NULL,NULL),(21,4,27,1947,4,36,NULL,NULL),(22,5,27,1953,4,36,NULL,NULL),(23,4,27,1953,4,36,NULL,NULL),(24,5,28,2003,4,27,NULL,NULL),(25,5,28,2003,5,27,NULL,NULL),(26,4,29,1917,4,36,NULL,'Baptism 2 years after birth, delayed by WW1?'),(27,8,29,1917,4,34,1,NULL),(28,9,29,1917,4,34,NULL,NULL),(29,4,30,1988,4,31,NULL,NULL),(30,5,30,1988,4,31,NULL,'Inferred residence from husband\'s probate record'),(31,4,30,1988,5,31,NULL,'Birth date 1917 incorrect on GRO Death Record'),(32,9,9,1901,4,17,NULL,NULL),(33,32,9,1901,4,17,NULL,NULL),(34,9,8,1894,1,16,NULL,'Inferred place of birth based on 1891 census'),(35,31,8,1891,4,16,6,NULL),(36,32,8,1891,4,16,NULL,NULL),(37,39,8,1891,4,16,NULL,NULL),(38,40,8,1891,4,16,NULL,NULL),(39,41,9,1901,4,17,NULL,NULL),(40,42,9,1901,4,17,NULL,NULL),(41,32,6,1867,1,25,NULL,NULL),(42,32,7,1887,3,26,NULL,'SAMUEL SOLOMON who was Married to MARIA LEVENSTON on 15th June 1887 at 35 South Frederick Street by Israel Leventon in the presence of Marinus de Groot and Adolphe Davies from 42 Kildare Street.'),(43,31,7,1887,3,26,6,NULL),(44,32,31,1954,5,27,NULL,NULL),(48,32,32,1908,4,28,7,'Admitted and discharged on 13 July 1908'),(49,9,32,1908,4,28,NULL,'Admitted and discharged on 13 July 1908'),(50,44,32,1908,4,28,NULL,'Admitted and discharged on 13 July 1908'),(51,9,33,1911,4,18,8,NULL),(52,39,33,1911,4,18,8,NULL),(53,41,33,1911,4,18,8,NULL),(54,9,34,1916,3,29,NULL,'Married 15 April 1916. Witnessed by Simon and Rachael Solomon'),(55,8,34,1916,3,29,9,'Married 15 April 1916. Witnessed by Simon and Rachael Solomon'),(56,9,35,1916,4,29,NULL,NULL),(57,8,35,1916,4,29,9,NULL),(58,9,36,1933,4,30,NULL,NULL),(59,8,36,1933,4,30,NULL,NULL),(60,9,37,1983,5,31,NULL,'Died 7 December 1983 Probate Bristol 19 December Not exceeeding £40000'),(61,39,38,1888,1,1,NULL,NULL),(62,32,38,1888,4,1,NULL,'Birth of daughter Julia'),(63,31,38,1888,4,1,NULL,'Birth of daughter Julia'),(64,43,39,1898,1,1,NULL,NULL),(65,32,39,1898,4,1,NULL,'Birth of daughter Lilian'),(66,31,39,1898,4,1,6,'Birth of daughter Lilian'),(67,44,40,1903,1,1,NULL,NULL),(68,32,40,1903,4,1,NULL,'Birth of daughter Matilda'),(69,31,40,1903,4,1,6,'Birth of daughter Matilda'),(70,32,4,1887,4,26,NULL,'Residence at time of marriage'),(71,31,4,1887,4,26,6,'Residence at time of marriage'),(72,8,41,1890,1,1,NULL,'Birth registered as William ALphelf Crooks. Location inferred from 1891 Census.'),(73,8,41,1891,4,16,NULL,NULL),(74,29,41,1891,4,16,1,NULL),(75,30,41,1891,4,16,1,NULL),(76,31,43,1857,1,16,NULL,'Birth data inferred from census record'),(77,45,19,1896,5,38,NULL,'Died of valv. heart disease'),(78,45,5,1833,2,33,NULL,NULL),(79,45,44,1824,1,33,NULL,'Born 25 July 1824'),(80,45,12,1841,4,3,10,NULL),(81,45,14,1850,3,29,11,NULL),(82,46,14,1850,3,29,NULL,NULL),(83,45,15,1851,4,12,11,NULL),(84,46,15,1851,4,12,NULL,NULL),(85,45,16,1854,4,39,11,'Birth of daughter Amy Harriette'),(86,46,16,1854,4,39,NULL,'Birth of daughter Amy Harriette'),(87,45,17,1856,4,39,12,'Birth of son Frederick William'),(88,46,17,1856,4,39,NULL,'Birth of son Frederick William'),(89,45,18,1861,4,13,11,NULL),(90,46,18,1861,4,13,NULL,NULL),(91,45,19,1880,4,40,13,'Dwelling No 278, Marital Status Widower, living with sister Sarah and brother in law Richard Morton'),(92,45,45,1868,4,41,13,'Birth of daughter Theodora'),(93,46,45,1868,4,41,NULL,'Birth of daughter Theodora'),(94,46,24,1830,1,39,NULL,'Inferred from Southwark St George address on 1851 Census'),(95,47,24,1830,4,39,14,'Inferred from Southwark St George address on 1851 Census'),(104,29,16,1860,1,41,NULL,NULL),(105,45,16,1860,4,41,11,'Birth of son Charles Alfred'),(106,46,16,1860,4,41,NULL,'Birth of son Charles Alfred'),(126,4,46,1941,3,42,NULL,NULL),(127,5,46,1941,3,42,NULL,NULL);
/*!40000 ALTER TABLE `person_place` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `year_matcher_i` AFTER INSERT ON `person_place` FOR EACH ROW BEGIN
	IF
		new.event_type_id = 1
	THEN
		-- capture birth year to be updated from person table in variable
        SET @old_b_year = (SELECT b_year FROM person WHERE person_id = new.person_id);
		
        -- update birth year in person table
        UPDATE person p
        SET p.b_year = new.year
        WHERE p.person_id = new.person_id;
        
        -- insert record into activity log
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after insert trigger on p.person_id ",new.person_id,"] p.b_year updated from ",@old_b_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	ELSEIF
		new.event_type_id = 5
    THEN
		SET @old_d_year = IFNULL((SELECT d_year FROM person WHERE person_id = new.person_id),0);
        
        UPDATE person p
        SET 
			p.d_year = new.year,
			living = NULL
        WHERE p.person_id = new.person_id;
        
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after insert trigger on p.person_id ",new.person_id,"] p.d_year updated from ",@old_d_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `year_matcher_u` AFTER UPDATE ON `person_place` FOR EACH ROW BEGIN
	IF
		new.event_type_id = 1
	THEN
		-- capture birth year to be updated from person table in variable
        SET @old_b_year = (SELECT b_year FROM person WHERE person_id = new.person_id);
		
        -- update birth year in person table
        UPDATE person p
        SET p.b_year = new.year
        WHERE p.person_id = new.person_id;
        
        -- insert record into activity log
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after update trigger on p.person_id ",new.person_id,"] p.b_year updated from ",@old_b_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	ELSEIF
		new.event_type_id = 5
    THEN
		SET @old_d_year = IFNULL((SELECT d_year FROM person WHERE person_id = new.person_id),0);
        
        UPDATE person p
        SET 
			p.d_year = new.year,
			living = NULL
        WHERE p.person_id = new.person_id;
        
        INSERT INTO activity_log (activity, activity_date, user)
        VALUES
        (
        CONCAT("[pp.pp_id ",new.pp_id," after update trigger on p.person_id ",new.person_id,"] p.d_year updated from ",@old_d_year," to ",new.year),
        NOW(),
        SESSION_USER()
        );
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `person_summary`
--

DROP TABLE IF EXISTS `person_summary`;
/*!50001 DROP VIEW IF EXISTS `person_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_summary` AS SELECT 
 1 AS `name`,
 1 AS `birth_year`,
 1 AS `num_records`,
 1 AS `event_types`,
 1 AS `cities_lived_in`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `place_id` int NOT NULL AUTO_INCREMENT,
  `w3w_code` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `county_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `notes` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  KEY `FK_city_id` (`city_id`),
  KEY `FK_county_id` (`county_id`),
  KEY `FK_country_id` (`country_id`),
  CONSTRAINT `FK_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `FK_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `FK_county_id` FOREIGN KEY (`county_id`) REFERENCES `county` (`county_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'///ground.fixed.wins','74 Balls Pond Road Islington',1,1,1,'C A Crooks Scale Makers Shop'),(2,'///holly.buyers.rewarding','40 Barnaby Buildings Bermondsey',1,2,1,NULL),(3,'///descended.fast.casino','89 Barry Road Peckham Rye',1,2,1,NULL),(4,'///diary.riders.racks','42 Kildare Street',2,7,2,NULL),(5,'///verge.adding.lame','St Leonard\'s Church Shoreditch',1,1,1,NULL),(6,'///gloves.ready.freed','Grand Canal Street',2,7,2,NULL),(7,'///maker.pens.showed','35 South Frederick Street',2,7,2,NULL),(8,'///monkey.glaze.play','6 Warburton Street West Derby',14,5,1,NULL),(9,'///cabin.glare.glow','124 Freemantle Road Forest Gate',1,1,1,NULL),(10,'///police.luxury.unable','Marshall and Snelgrove Oxford Street',1,1,1,'Became Debenhams'),(11,'///logo.grant.wiped','10 St Ann\'s Road Tottenham',1,1,1,NULL),(12,'///posed.glass.vast','16 Stamford Street Southwark',1,2,1,NULL),(13,'///held.wells.bids','Suffolk Street Southwark',1,2,1,NULL),(14,'///frost.scarf.length','St George the Martyr Church Southwark',1,2,1,NULL),(15,'///forms.bubble.ideal','6 Lloyd\'s Row Clerkenwell',1,1,1,NULL),(16,'///good.places.hooks','West Place St George\'s Road Southwark',1,2,1,NULL),(17,'///wells.taking.bikes','Hercules Buildings Lambeth',1,2,1,NULL),(18,'///staple.allow.gent','10 Oldham Place Clerkenwell',1,1,1,NULL),(19,'///crust.vibrate.brings','280 Ruggles Street',3,8,4,NULL),(20,'///guilty.meals.trains','Saint Saviour Southwark',1,2,1,NULL),(21,'///games.unless.powder','St Nicholas Within',2,7,2,NULL),(22,'///bleat.lower.remind','St Martin-in-the-Fields',1,1,1,NULL),(23,'///mute.proud.neon','St Giles-in-the-Fields',1,1,1,NULL),(24,'///drove.plans.natively','6 Great Suffolk Street Southwark',1,2,1,NULL),(25,'///worker.slows.mason','St Mary Magdalene Bermondsey',1,2,1,NULL),(26,'///raft.mint.truly','42 Forest Hill Road Camberwell',1,2,1,NULL),(27,'///kinks.winner.pinch','58 Laycock Mansions Laycock Street Islington',1,1,1,NULL),(28,'///gallons.cheer.wires','37 Kilpatrick Close Eastbourne',9,9,1,NULL),(29,'///lame.fish.rash','82 Graham Road St Paul Canonbury',1,1,1,'Graham Street Islington - no Graham Road in Canonbury'),(30,'///start.clock.forest','5 Hampton Close',12,10,1,NULL),(31,'///each.bids.decide','30/32 Highbury Grove Islington',1,1,1,NULL),(32,'///silly.bossy.festivity','Hackney Union Workhouse Homerton High Street',1,1,1,NULL),(33,'///ripe.could.jump','4 Boston House, 10 Colsterworth Road, Tottenham',1,1,1,NULL),(34,'///cherry.late.museum','St Paul Canonbury, Essex Road Islington',1,1,1,NULL),(35,'///lungs.noisy.crab','6 St Pauls Road Islington',1,1,1,NULL),(36,'///reef.epic.drill','132 Beresford Road Tottenham South',1,1,1,NULL),(37,'///wimp.bounding.labs','1 Shute Cottage Sandford',10,13,1,NULL),(38,'///quench.local.shell','Prestwich',15,5,1,'No precise address'),(39,'///kite.lands.rang','14 Landseer Road Bow',1,1,1,'Road no longer exists'),(40,'///hype.score.system','140 Coronation Avenue Stoke Newington',1,1,1,'Social housing opened in 1903 by the Industrial Dwellings Society'),(41,'///sling.wells.ended','26 King Henry\'s Walk Islington',1,1,1,NULL),(42,'///casino.count.simple','Holy Trinity Church Dalston',1,1,1,NULL),(43,'///royal.tunnel.casino','High Holborn London',1,1,1,NULL),(44,'///senses.discrepancy.tender','St Luke\'s Old Street',1,1,1,NULL),(45,'///frost.spun.belly','58 Lant Street Southwark',1,1,1,NULL),(46,'///mugs.tides.tags','Islington',1,1,1,'Precise location not known');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_record`
--

DROP TABLE IF EXISTS `source_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source_record` (
  `source_id` int NOT NULL AUTO_INCREMENT,
  `source_record` varchar(150) DEFAULT NULL,
  `min_date` int DEFAULT NULL,
  `max_date` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `event_type_id` int DEFAULT NULL,
  PRIMARY KEY (`source_id`),
  KEY `FK_sr_country_id` (`country_id`),
  KEY `FK_sr_event_typeid` (`event_type_id`),
  CONSTRAINT `FK_sr_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `FK_sr_event_typeid` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_record`
--

LOCK TABLES `source_record` WRITE;
/*!40000 ALTER TABLE `source_record` DISABLE KEYS */;
INSERT INTO `source_record` VALUES (1,'England & Wales, FreeBMD Birth Index, 1837-1915',1837,1915,1,1),(3,'England 1841 Census',1741,1841,1,4),(10,'England 1939 Register',1839,1939,1,4),(12,'England 1851 Census',1751,1851,1,4),(13,'England 1861 Census',1761,1861,1,4),(14,'England 1871 Census',1771,1871,1,4),(15,'England 1881 Census',1781,1881,1,4),(16,'England 1891 Census',1791,1891,1,4),(17,'England 1901 Census',1801,1901,1,4),(18,'England 1911 Census',1811,1911,1,4),(19,'England 1921 Census',1821,1921,1,4),(25,'Ireland, Births and Baptisms, 1620-1911',1620,1911,2,1),(26,'Ireland, Civil Registration Marriages Index, 1845-1958',1845,1958,2,3),(27,'England & Wales, Death Index: 1916-2005',1916,2005,1,5),(28,'London, England, Workhouse Admission and Discharge Records, 1764-1930',1764,1930,1,4),(29,'London, England, Marriages and Banns, 1754-1921',1754,1921,1,3),(30,'London, England, Electoral Registers, 1832-1965',1832,1965,1,4),(31,'England & Wales, National Probate Calendar (Index of Wills and Administrations), 1858-1995',1858,1995,1,5),(32,'England & Wales, FreeBMD Death Index: 1837-1915',1837,1915,1,5),(33,'England, Select Births and Christenings, 1538-1975',1538,1975,1,1),(34,'London, England, Births and Baptisms, 1813-1906',1813,1906,1,1),(35,'Surrey, England, Church of England Baptisms, 1813-1921',1813,1921,1,1),(36,'London, England, Electoral Registers, 1832-1965',1832,1965,1,4),(37,'England National Insurance Card',1911,NULL,1,4),(38,'Massachusetts, U.S., Death Records, 1841-1915',1841,1915,4,5),(39,'London, England, Church of England Births and Baptisms, 1813-1923',1813,1923,1,1),(40,'1880 United States Federal Census',1780,1880,4,4),(41,'England General Register Office Births',1837,NULL,1,1),(42,'England & Wales, Marriage Index: 1916-2005',1916,2005,1,3);
/*!40000 ALTER TABLE `source_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_missing_death_years`
--

DROP TABLE IF EXISTS `vw_missing_death_years`;
/*!50001 DROP VIEW IF EXISTS `vw_missing_death_years`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_missing_death_years` AS SELECT 
 1 AS `person_id`,
 1 AS `lastname`,
 1 AS `firstname`,
 1 AS `b_year`,
 1 AS `d_year`,
 1 AS `est_death`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `locations_list`
--

/*!50001 DROP VIEW IF EXISTS `locations_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `locations_list` AS select `person`.`person_id` AS `person_id`,`person`.`sex` AS `sex`,`pp`.`year` AS `event_year`,`event_type`.`event_type` AS `event_type`,`person`.`firstname` AS `firstname`,`person`.`lastname` AS `lastname`,`age_calc`(`pp`.`year`,`person`.`b_year`) AS `age`,`place`.`address` AS `address`,`city`.`city` AS `city`,`county`.`county` AS `county`,`country`.`country` AS `country`,`place`.`w3w_code` AS `w3w_code`,`source_record`.`source_record` AS `source_record`,`occupation`.`occupation` AS `occupation`,`pp`.`note` AS `event_note`,`place`.`notes` AS `place_note` from ((((((((`person_place` `pp` join `place` on((`place`.`place_id` = `pp`.`place_id`))) join `person` on((`person`.`person_id` = `pp`.`person_id`))) join `event_type` on((`event_type`.`event_type_id` = `pp`.`event_type_id`))) join `city` on((`city`.`city_id` = `place`.`city_id`))) join `county` on((`county`.`county_id` = `place`.`county_id`))) join `country` on((`country`.`country_id` = `place`.`country_id`))) join `source_record` on((`source_record`.`source_id` = `pp`.`source_id`))) left join `occupation` on((`occupation`.`occupation_id` = `pp`.`occupation_id`))) where (`person`.`living` is null) order by `pp`.`year`,`place`.`address` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_summary`
--

/*!50001 DROP VIEW IF EXISTS `person_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_summary` AS select concat(`p`.`lastname`,', ',`p`.`firstname`) AS `name`,`p`.`b_year` AS `birth_year`,count(`pp`.`person_id`) AS `num_records`,group_concat(distinct `pp`.`event_type_id` separator ',') AS `event_types`,group_concat(distinct `c`.`city` order by `c`.`city` ASC separator ',') AS `cities_lived_in` from (((`person_place` `pp` join `person` `p` on((`p`.`person_id` = `pp`.`person_id`))) join `place` `pl` on((`pl`.`place_id` = `pp`.`place_id`))) join `city` `c` on((`c`.`city_id` = `pl`.`city_id`))) group by `name`,`birth_year` order by `num_records` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_missing_death_years`
--

/*!50001 DROP VIEW IF EXISTS `vw_missing_death_years`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_missing_death_years` AS select `person`.`person_id` AS `person_id`,`person`.`lastname` AS `lastname`,`person`.`firstname` AS `firstname`,`person`.`b_year` AS `b_year`,`person`.`d_year` AS `d_year`,concat((`person`.`b_year` + 70),' - ',(`person`.`b_year` + 85)) AS `est_death` from `person` where ((`person`.`d_year` is null) and (`person`.`living` is null) and `person`.`person_id` in (select `person_place`.`person_id` from `person_place` where (`person_place`.`event_type_id` = 5)) is false) order by `person`.`b_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 14:19:06
