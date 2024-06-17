-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: bdd_airbnb
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'8 rue des lila','75000','France','01 02 03 04 05'),(2,'9 avenue André Malraux','57000','France','03 02 03 04 05'),(42,'le barcares','66420','','0781357076'),(43,'le barcares','66420','','0781357076'),(44,'le barcares','66420','','0781357076'),(45,'le barcares','66420','','0781357076'),(46,'le barcares','66420','','0781357076'),(47,'le barcares','66420','','0781357076'),(48,'le barcares','66420','','0781357076'),(49,'le barcares','66420','','0781357076'),(50,'le barcares','66420','','0781357076'),(51,'le barcares','66420','','0781357076'),(52,'le barcares','66420','','0781357076'),(53,'le barcares','66420','','0781357076'),(54,'le barcares','66420','','0781357076'),(55,'le barcares','66420','','2345613'),(56,'le barcares','66420','','2345613'),(57,'le barcares','66420','','2345613'),(58,'le barcares','66420','','2345613'),(59,'le barcares','66420','','2345613'),(60,'le barcares','66420','','2345613'),(61,'le barcares','66420','','2345613'),(62,'le barcares','66420','','2345613'),(63,'le barcares','66420','','2345613'),(64,'le barcares','66420','','2345613'),(65,'le barcares','66420','','2345613'),(66,'le barcares','66420','','07564646'),(67,'le barcares','66420','','07564646'),(68,'le barcares','66420','','07564646'),(69,'le barcares','66420','','654645'),(70,'le barcares','66420','','654645'),(71,'le barcares','66420','','654645'),(72,'le barcares','66420','gfdgdf','654645'),(73,'le barcares','66420','gfdgdf','654645'),(74,'le barcares','66420','gfdgdf','654645'),(75,'le barcares','66420','','6456'),(76,'le barcares','66420','','6456'),(77,'le barcares','66420','','545'),(78,'le barcares','66420','','545'),(79,'le barcares','66420','','545'),(80,'le barcares','66420','','545'),(81,'le barcares','66420','','545'),(82,'le barcares','66420','','545'),(83,'le barcares','66420','','545'),(84,'le barcares','66420','','545'),(85,'le barcares','66420','','545'),(86,'le barcares','66420','','545'),(87,'le barcares','66420','','545'),(88,'le barcares','66420','','545'),(89,'le barcares','66420','','545'),(90,'le barcares','66420','','545'),(91,'le barcares','66420','','545'),(92,'le barcares','66420','','545'),(93,'le barcares','66420','','5454'),(94,'le barcares','66420','','5454'),(95,'le barcares','66420','','5454'),(96,'le barcares','66420','','5454'),(97,'le barcares','66420','','5454'),(98,'le barcares','66420','','5454'),(99,'le barcares','66420','','5454'),(100,'le barcares','66420','','5454'),(101,'le barcares','66420','','5454'),(102,'le barcares','66420','','5454'),(103,'le barcares','66420','','5454'),(104,'le barcares','66420','','5454'),(105,'le barcares','66420','','5454'),(106,'le barcares','66420','','5454'),(107,'le barcares','66420','','5454'),(108,'le barcares','66420','','5454'),(109,'le barcares','66420','','5454');
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipement`
--

LOCK TABLES `equipement` WRITE;
/*!40000 ALTER TABLE `equipement` DISABLE KEYS */;
INSERT INTO `equipement` VALUES (1,'sèche-cheveux','/images/sechecheveux.png'),(2,'wifi','/images/wifi.png');
/*!40000 ALTER TABLE `equipement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `logement_id` (`logement_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `favoris_ibfk_1` FOREIGN KEY (`logement_id`) REFERENCES `logement` (`id`),
  CONSTRAINT `favoris_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoris`
--

LOCK TABLES `favoris` WRITE;
/*!40000 ALTER TABLE `favoris` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logement`
--

DROP TABLE IF EXISTS `logement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price_per_night` int(11) NOT NULL,
  `nb_rooms` int(11) NOT NULL,
  `nb_bed` int(11) NOT NULL,
  `nb_traveler` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `taille` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `logement_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  CONSTRAINT `logement_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `logement_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `adress` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logement`
--

LOCK TABLES `logement` WRITE;
/*!40000 ALTER TABLE `logement` DISABLE KEYS */;
INSERT INTO `logement` VALUES (1,'Maison de campagne','Maison de campagne, proche de la forêt, c\'est très sympa',300,3,4,3,1,1,1,1,0),(2,'Appartement','Appartement centre ville',100,1,1,2,1,2,2,2,0),(4,'jkhkhj','gjugf',444,4445,545,5454,1,1,4,61,5),(5,'jkhkhj','gjugf',444,4445,545,5454,1,1,4,62,5),(6,'jkhkhj','gjugf',444,4445,545,5454,1,1,4,63,5),(7,'jkhkhj','gjugf',444,4445,545,5454,1,1,4,64,5),(8,'jkhkhj','gjugf',444,4445,545,5454,1,1,4,65,5),(9,'petite maison','cets pas mal ',150,2,12,2,1,1,4,66,500),(10,'petite maison','cets pas mal ',150,2,12,2,1,1,4,67,500),(11,'petite maison','cets pas mal ',150,2,12,2,1,1,4,68,500),(12,'54645','6546',45,4546,54645,654645,1,1,4,69,56),(13,'54645','6546',45,4546,54645,654645,1,1,4,70,56),(14,'54645','6546',45,4546,54645,654645,1,1,4,71,56),(15,'54645','6546',45,4546,54645,654645,1,1,4,72,56),(16,'54645','6546',45,4546,54645,654645,1,1,4,73,56),(17,'54645','6546',45,4546,54645,654645,1,1,4,74,56),(18,'654','654654',5464,6546,456546,54654,1,1,4,75,5645),(19,'654','654654',5464,6546,456546,54654,1,1,4,76,5645),(20,'54','454',44,54,454,454,1,1,4,77,545),(21,'54','454',44,54,454,454,1,1,4,78,545),(22,'54','454',44,54,454,454,1,1,4,79,545),(23,'54','454',44,54,454,454,1,1,4,80,545),(24,'54','454',44,54,454,454,1,1,4,81,545),(25,'54','454',44,54,454,454,1,1,4,82,545),(26,'54','454',44,54,454,454,1,1,4,83,545),(27,'54','454',44,54,454,454,1,1,4,84,545),(28,'54','454',44,54,454,454,1,1,4,85,545),(29,'54','454',44,54,454,454,1,1,4,86,545),(30,'54','454',44,54,454,454,1,1,4,87,545),(31,'54','454',44,54,454,454,1,1,4,88,545),(32,'54','454',44,54,454,454,1,1,4,89,545),(33,'54','454',44,54,454,454,1,1,4,90,545),(34,'54','454',44,54,454,454,1,1,4,91,545),(35,'54','454',44,54,454,454,1,1,4,92,545),(36,'545','54',45,454,54,545,1,1,4,93,454),(37,'545','54',45,454,54,545,1,1,4,94,454),(38,'545','54',45,454,54,545,1,1,4,95,454),(39,'545','54',45,454,54,545,1,1,4,96,454),(40,'545','54',45,454,54,545,1,1,4,97,454),(41,'545','54',45,454,54,545,1,1,4,98,454),(42,'545','54',45,454,54,545,1,1,4,99,454),(43,'545','54',45,454,54,545,1,1,4,100,454),(44,'545','54',45,454,54,545,1,1,4,101,454),(45,'545','54',45,454,54,545,1,1,4,102,454),(46,'545','54',45,454,54,545,1,1,4,103,454),(47,'545','54',45,454,54,545,1,1,4,104,454),(48,'545','54',45,454,54,545,1,1,4,105,454),(49,'545','54',45,454,54,545,1,1,4,106,454),(50,'545','54',45,454,54,545,1,1,4,107,454),(51,'545','54',45,454,54,545,1,1,4,108,454),(52,'545','54',45,454,54,545,1,1,4,109,454);
/*!40000 ALTER TABLE `logement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logement_equipement`
--

DROP TABLE IF EXISTS `logement_equipement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logement_equipement` (
  `equipement_id` int(11) NOT NULL,
  `logement_id` int(11) NOT NULL,
  PRIMARY KEY (`equipement_id`,`logement_id`),
  KEY `logement_id` (`logement_id`),
  CONSTRAINT `logement_equipement_ibfk_1` FOREIGN KEY (`equipement_id`) REFERENCES `equipement` (`id`),
  CONSTRAINT `logement_equipement_ibfk_2` FOREIGN KEY (`logement_id`) REFERENCES `logement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logement_equipement`
--

LOCK TABLES `logement_equipement` WRITE;
/*!40000 ALTER TABLE `logement_equipement` DISABLE KEYS */;
/*!40000 ALTER TABLE `logement_equipement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  `logement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logement_id` (`logement_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`logement_id`) REFERENCES `logement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'maison1.jpg',2),(2,'appart1.jpg',1),(3,'maison2.jpg',2),(4,'maison3.jpg',2);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `nb_adult` int(11) DEFAULT NULL,
  `nb_child` int(11) DEFAULT NULL,
  `price_total` int(11) DEFAULT NULL,
  `logement_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `logement_id` (`logement_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`logement_id`) REFERENCES `logement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2024-05-11','2024-05-20',4,2,400,1,1),(2,'2024-07-01','2024-08-02',4,2,1500,2,2),(3,'2024-06-19','2024-06-30',NULL,NULL,1100,NULL,4),(4,'2024-06-20','2024-06-30',NULL,NULL,1000,NULL,4),(5,'2024-06-25','2024-06-30',NULL,NULL,500,NULL,4),(6,'2024-06-26','2024-06-30',NULL,NULL,400,NULL,4),(7,'2024-06-20','2024-06-30',NULL,NULL,1000,NULL,4),(8,'2024-06-28','2024-06-30',NULL,NULL,200,NULL,4),(9,'2024-06-19','2024-06-30',NULL,NULL,1100,NULL,4),(10,'2024-06-27','2024-06-30',NULL,NULL,300,NULL,4),(11,'2024-06-28','2024-06-30',NULL,NULL,200,NULL,4),(12,'2024-06-26','2024-06-27',NULL,NULL,100,NULL,4),(13,'2024-06-29','2024-06-30',NULL,NULL,100,NULL,4),(14,'2024-06-19','2024-06-20',NULL,NULL,100,NULL,4),(15,'2024-06-26','2024-06-27',NULL,NULL,100,NULL,4),(16,'2024-06-19','2024-06-20',NULL,NULL,100,NULL,4),(17,'2024-06-22','2024-06-23',NULL,NULL,100,NULL,4),(18,'2024-06-17','2024-07-11',NULL,NULL,2400,NULL,4),(19,'2024-06-19','2024-07-11',NULL,NULL,2200,NULL,4),(20,'2024-06-28','2024-07-11',NULL,NULL,1300,NULL,4),(21,'2024-06-20','2024-06-21',NULL,NULL,100,NULL,4),(22,'2024-06-26','2024-06-27',NULL,NULL,100,NULL,4),(23,'2024-06-28','2024-06-29',NULL,NULL,100,NULL,4),(24,'2024-06-18','2024-06-20',NULL,NULL,200,NULL,4),(25,'2024-06-19','2024-06-27',NULL,NULL,800,NULL,4);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'appartement','/images/appartement.jpg',1),(2,'maison','/images/maison.jpg',1),(3,'insolite','/images/insolite.jpg',1);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `adress` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@admin.com','Admin1234','toto','toto',1,1),(2,'admin2@admin.com','Admin1234','toto','toto',1,2),(3,'hanakhin@gmail.com','$2y$10$TYpz5UOwHL/2IDwd0fKGx.goRT9npOKhnHxew3ozBoZNGTaM4v77W','Nouni','Hanakhin',1,NULL),(4,'admin1@admin.fr','$2y$10$ShTQtkprbvKVE5TnxeDVleaKg8/IX5ZAR09HNu95CMMGadCIM5CUW','mar','dsdsd',1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 14:56:05
