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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'8 rue des lila','75000','France','01 02 03 04 05'),(2,'9 avenue André Malraux','57000','France','03 02 03 04 05'),(3,'Le Barcarès','66420','0781357076','0754846572'),(4,'','','','LAPLUSBELLEORANGEAUMONDE.png'),(5,'','','','LAPLUSBELLEORANGEAUMONDE.png'),(6,'Le Barcarès','66420','0781357076','LAPLUSBELLEORANGEAUMONDE.png'),(7,'Le Barcarès','66420','0781357076','LAPLUSBELLEORANGEAUMONDE.png'),(8,'Le Barcarès','66420','0781357076','LAPLUSBELLEORANGEAUMONDE.png'),(9,'Le Barcarès','66420','0781357076','LAPLUSBELLEORANGEAUMONDE.png'),(10,'Le Barcarès','66420','0781357076','6'),(11,'Le Barcarès','66420','0781357076','njkklljkl,kl'),(12,'le barcares','66420','','64'),(13,'gdfgdf','5646','fgdf','hgjghjgh'),(14,'gdfgdf','5646','fgdf','hgjghjgh'),(15,'gdfgdf','5646','fgdf','hgjghjgh'),(16,'gdfgdf','5646','fgdf','hgjghjgh'),(17,'gdfgdf','5646','fgdf','hgjghjgh'),(18,'gdfgdf','5646','fgdf','hgjghjgh'),(19,'gdfgdf','5646','fgdf','hgjghjgh'),(20,'gdfgdf','5646','fgdf','hgjghjgh'),(21,'gdfgdf','5646','fgdf','hgjghjgh'),(22,'gdfgdf','5646','fgdf','hgjghjgh'),(23,'gdfgdf','5646','fgdf','hgjghjgh'),(24,'gdfgdf','5646','fgdf','hgjghjgh'),(25,'gdfgdf','5646','fgdf','hgjghjgh'),(26,'gdfgdf','5646','fgdf','hgjghjgh'),(27,'gdfgdf','5646','fgdf','hgjghjgh'),(28,'gdfgdf','5646','fgdf','hgjghjgh'),(29,'gdfgdf','5646','fgdf','hgjghjgh'),(30,'gdfgdf','5646','fgdf','hgjghjgh'),(31,'gdfgdf','5646','fgdf','hgjghjgh'),(32,'gdfgdf','5646','fgdf','hgjghjgh'),(33,'gdfgdf','5646','fgdf','hgjghjgh'),(34,'vfdsg','564','dgdf','gjkljkl'),(35,'vfdsg','564','dgdf','gjkljkl'),(36,'vfdsg','564','dgdf','gjkljkl'),(37,'vfdsg','564','dgdf','gjkljkl'),(38,'le barcares','66420','fgdf','0781357076'),(39,'Grosse','69','Pute','+66666666666'),(40,'Grosse','69','Pute','+66666666666'),(41,'polet','11210','irlande','5640'),(42,'polet','11210','irlande','5640'),(43,'gdfg','545','55',''),(44,'le barcares','66420','','khukvy'),(45,'le barcares','66420','','khukvy'),(46,'le barcares','66420','','khukvy'),(47,'tg','564','hgdh','khjkhjh');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipement`
--

LOCK TABLES `equipement` WRITE;
/*!40000 ALTER TABLE `equipement` DISABLE KEYS */;
INSERT INTO `equipement` VALUES (1,'sèche-cheveux','/images/sechecheveux.png'),(2,'wifi','/images/wifi.png'),(3,'baignoire','/baignoire.jpg'),(4,'télévision','/tv.jpg'),(5,'cintres','/cintre.jpg');
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
  `taille` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `logement_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  CONSTRAINT `logement_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `logement_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `adress` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logement`
--

LOCK TABLES `logement` WRITE;
/*!40000 ALTER TABLE `logement` DISABLE KEYS */;
INSERT INTO `logement` VALUES (1,'Maison de campagne','Maison de campagne, proche de la forêt, c\'est très sympa',300,3,4,3,1,1,1,1,50),(2,'Appartement','Appartement centre ville tres simpa , proche des comodité , et des quartier brancher !',100,1,1,2,1,2,2,2,200),(3,'super chambre','pas mal ',50,2,1,6,1,1,3,3,150),(4,'6','6',5,5,6,6,1,1,3,6,6),(5,'6','6',5,5,6,6,1,1,3,7,6),(6,'6','6',5,5,6,6,1,1,3,8,6),(7,'6','6',5,5,6,6,1,1,3,9,6),(8,'6','6',5,5,6,6,1,1,3,10,6),(9,'kjlj','jhkjhjk',22,2,1,3,1,1,3,11,150),(10,'5645646456','4556',54,8484,84,4,1,1,7,12,8454),(11,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,13,546),(12,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,14,546),(13,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,15,546),(14,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,16,546),(15,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,17,546),(16,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,18,546),(17,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,19,546),(18,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,20,546),(19,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,21,546),(20,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,22,546),(21,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,23,546),(22,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,24,546),(23,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,25,546),(24,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,26,546),(25,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,27,546),(26,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,28,546),(27,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,29,546),(28,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,30,546),(29,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,31,546),(30,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,32,546),(31,'lhoiu','ghjghj',546,5645,654,6546,1,1,7,33,546),(32,'kljlkj','jguf,jlk',56454,654,65,262,1,2,7,34,4564),(33,'kljlkj','jguf,jlk',56454,654,65,262,1,2,7,35,4564),(34,'kljlkj','jguf,jlk',56454,654,65,262,1,2,7,36,4564),(35,'kljlkj','jguf,jlk',56454,654,65,262,1,2,7,37,4564),(36,'maison de odelin','ma super maison',1500,5,4,10,1,1,8,38,7),(37,'Villa de Platine le gay.','Très grande maison mais petit à l\'intérieur',1523585587,2589965,1,2,0,2,9,40,25),(38,'maison pires','pa smal ',500,1,2,3,0,2,9,41,512),(39,'maison pires','pa smal ',500,1,2,3,0,2,9,42,512),(40,'','',4,45,545,545,0,1,9,43,5),(41,'kuykjh','kuyhgk',44,2,4,3,0,3,9,46,54645),(42,'ljklh','khgkgu',54,6546,565,4654,0,2,9,47,5644);
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
INSERT INTO `logement_equipement` VALUES (2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(1,33),(1,34),(1,35),(2,35),(3,35),(4,35),(5,35),(1,36),(2,36),(3,36),(4,36),(5,36),(1,37),(2,37),(4,37),(5,37),(2,38),(3,38),(4,38),(2,39),(3,39),(4,39),(2,41),(3,41),(2,42),(3,42),(4,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'maison1.jpg',2),(2,'appart1.jpg',1),(3,'maison2.jpg',2),(4,'maison3.jpg',2),(5,'LAPLUSBELLEORANGEAUMONDE.png',9),(6,'geo.jpg',10),(7,'',11),(8,'',12),(9,'',13),(10,'',14),(11,'',15),(12,'',16),(13,'',17),(14,'',18),(15,'',19),(16,'',20),(17,'',21),(18,'',22),(19,'',23),(20,'',24),(21,'',25),(22,'',26),(23,'',35),(24,'',36),(25,'',37),(26,'',38),(27,'',39),(28,'',40),(29,'',41),(30,'',42);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2024-05-11','2024-05-20',4,2,400,1,1),(2,'2024-07-01','2024-08-02',4,2,1500,2,2),(3,'2024-06-26','2024-06-27',NULL,NULL,300,9,3),(4,'2024-06-28','2024-06-29',NULL,NULL,300,9,3),(34,'2024-06-20','2024-06-27',NULL,NULL,700,2,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@admin.com','Admin1234','toto','toto',1,1),(2,'admin2@admin.com','Admin1234','toto','toto',1,2),(3,'admin@admin.fr','$2y$10$HvtpSFEX.wkYDwnke5YMtOvYRFMVhZW.9ijs1QtADTbs/WjEYUhda','marlier','eymeric',1,NULL),(4,'g.manon14@gmail.com','$2y$10$LOwgX2VS6K25hXzB2UHOXOaO1Iy6221PeFPtY9mIn1AFi6ZfnfPdO','villeneuve','manon',1,NULL),(5,'aaa@bb.fr','$2y$10$CKq95XlzdTMRVej8fiFTdO19fSGex6B4C2OP489E4o6UnI5TTGqIy','marlier','eymeric',1,NULL),(6,'aa@kkk.fr','$2y$10$xUUDNKVvv2UPPmG18QkH.e6sKJJj/unUwlgl9x6.rQg2Hq1o4R8dS','marlier','hdhdhd',1,NULL),(7,'mlml@fkodflk.fr','$2y$10$SQewul5RooVSloyEKnlXy.BOBPTyRBvuQ/iM1kaC5li2FYJjNmoga','marlier','flmkdskf',1,NULL),(8,'odelin@email.com','$2y$10$N351sFBpJQ4j.NRhkygRDe5.NyEnsHcLs/OUvNYHjU7QMtf/Z6yX.','marlier','eymeric',1,NULL),(9,'user@psg.fr','$2y$10$2rFSWUNGaKl3ncNsbl3Aa.NqeYZ9CEWh6Kw2jhbl8BO8Z6D8N7LcW','Bauer','Geoffrey',1,NULL);
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

-- Dump completed on 2024-06-18 14:58:31
