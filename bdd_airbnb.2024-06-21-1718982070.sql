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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'8 rue des lila','75000','France','01 02 03 04 05'),(2,'9 avenue André Malraux','57000','France','03 02 03 04 05'),(142,'De Panne','1070','Belgique','0781357076'),(143,'De Panne','1070','Belgique','0781357076'),(144,'De Panne','1070','Belgique','0781357076'),(145,'ml','45','2mùpo','321'),(146,'ml','45','2mùpo','321'),(147,'yjg','531','gj','435465'),(148,'yjg','531','gj','435465'),(149,'yjg','531','gj','435465'),(150,'yjg','531','gj','435465'),(151,'yjg','531','gj','435465'),(152,'jghj','564','hgjg','4653'),(153,'jghj','564','hgjg','4653'),(154,'jghj','564','hgjg','4653'),(155,'jghj','564','hgjg','4653'),(156,'jghj','564','hgjg','4653'),(157,'jghj','564','hgjg','4653'),(158,'jghj','564','hgjg','4653'),(159,'jghj','564','hgjg','4653'),(160,'gj','456','jhgj','46+5854'),(161,'uyhk','464','jhk','4536'),(162,'gf','54','hjgh','4655'),(163,'','','*ù',''),(164,'','','*ù',''),(165,'','','',''),(166,'','','',''),(167,'','','',''),(168,'','','',''),(169,'','','',''),(170,'','','',''),(171,'','','',''),(172,'','','',''),(173,'','','',''),(174,'','','',''),(175,'','','',''),(176,'','','',''),(177,'','','',''),(178,'','','',''),(179,'','','',''),(180,'','','',''),(181,'§/','534','ùmlk','32'),(182,'kjml','345','oi','4545'),(183,'jm','5424','mlkj','545'),(184,'fghf','5646','kjhk','245465'),(185,'jhjhjhg','564','hjgjhg','46534'),(186,'jkljl','35','ljkl','5463');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logement`
--

LOCK TABLES `logement` WRITE;
/*!40000 ALTER TABLE `logement` DISABLE KEYS */;
INSERT INTO `logement` VALUES (1,'Maison de campagne','Maison de campagne, proche de la forêt, c\'est très sympa',300,3,4,3,1,1,1,1,50),(2,'Appartement','Appartement centre ville tres simpa , proche des comodité , et des quartier brancher !',100,1,1,2,1,2,2,2,200),(113,'Logement entier : appartement - De Panne, Belgique',' Penthouse unique, spacieux et luxueux pour 6 personnes à Sint-Idesbald\r\n- Juste à la mer, appartement le plus proche de la mer\r\n- Bel emplacement avec l\'expérience sur la terrasse comme si vous étiez dans les dunes.\r\n',476,2,2,4,0,1,12,143,100),(114,'Logement entier : appartement - De Panne, Belgique','- Bel emplacement avec l\'expérience sur la terrasse comme si vous étiez dans les dunes.\r\n- Accès direct sur la plage et les dunes',350,2,2,4,0,1,12,144,120),(115,'hgj','fgdhfjh',321,1,1,1,0,1,12,145,153),(116,'hgj','fgdhfjh',321,1,1,1,0,1,12,146,153),(117,'ùkjlm!','j:!;',231,1,1,1,0,1,12,147,3612),(118,'ùkjlm!','j:!;',231,1,1,1,0,1,12,148,3612),(119,'ùkjlm!','j:!;',231,1,1,1,0,1,12,149,3612),(120,'ùkjlm!','j:!;',231,1,1,1,0,1,12,150,3612),(121,'ùkjlm!','j:!;',231,1,1,1,0,1,12,151,3612),(122,'khvjk','jhvk',546,1,1,1,0,1,12,152,654),(123,'khvjk','jhvk',546,1,1,1,0,1,12,153,654),(124,'khvjk','jhvk',546,1,1,1,0,1,12,154,654),(125,'khvjk','jhvk',546,1,1,1,0,1,12,155,654),(126,'khvjk','jhvk',546,1,1,1,0,1,12,156,654),(127,'khvjk','jhvk',546,1,1,1,0,1,12,157,654),(128,'khvjk','jhvk',546,1,1,1,0,1,12,158,654),(129,'khvjk','jhvk',546,1,1,1,0,1,12,159,654),(130,'mhkl','lkm',1564,1,1,1,0,1,12,160,465),(131,'khjk','kjh',564,1,1,1,0,1,12,161,564),(132,'frg','dfgdfg',56,1,1,1,0,2,12,162,654),(133,'ùml','ùm',351,1,1,1,0,1,12,181,213),(134,'iuoyu','iuou',321,1,1,1,0,1,12,182,543),(135,'geo','4444444',524,1,1,1,0,2,12,183,524),(136,'urtyuyyyyt','ytggjgjh',54,1,177,2,0,1,12,184,5646),(137,'hjgj','gjhj',645456,1,1,1,0,1,12,185,564),(138,'hgfhfh','gf',65,1,1,1,0,1,12,186,6465);
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
INSERT INTO `logement_equipement` VALUES (2,1),(3,1),(4,1),(2,2),(5,2),(1,113),(2,113),(3,113),(4,113),(1,114),(2,114),(3,114),(4,114),(5,114),(2,115),(2,116),(2,117),(3,117),(2,118),(3,118),(2,119),(3,119),(2,120),(3,120),(2,121),(3,121),(1,122),(2,122),(1,123),(2,123),(1,124),(2,124),(1,125),(2,125),(1,126),(2,126),(1,127),(2,127),(1,128),(2,128),(1,129),(2,129),(3,129),(3,130),(3,131),(3,132),(1,133),(1,134),(2,134),(1,135),(3,135),(3,136),(4,136),(2,137),(3,137),(4,137),(2,138),(3,138);
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'maison1.jpg',2),(2,'appart1.jpg',1),(3,'maison2.jpg',2),(4,'maison3.jpg',2),(110,'66755ffbd39a9_m3.webp',113),(111,'66755ffbd39aa_m1.webp',113),(112,'66755ffbd39ab_m.webp',113),(113,'66756063b8c6e_m3.webp',114),(114,'66756063b8c6f_m1.webp',114),(115,'66756063b8c70_m.webp',114),(116,'667560804a842_m.webp',115),(117,'667560804a843_',115),(118,'667560804a96e_',115),(119,'6675608fcb53f_m.webp',116),(120,'6675608fcb540_',116),(121,'6675608fcb69d_',116),(122,'66756461cec5b_appart1.jpg',117),(123,'66756461cec5c_',117),(124,'66756461ced97_',117),(125,'66756467cb466_appart1.jpg',118),(126,'66756467cb467_',118),(127,'66756467cb5ad_',118),(128,'667565aed997e_',123),(129,'667565aed9b9c_',123),(130,'667565aed9d66_',123),(131,'667565ccabc5d_',124),(132,'667565ccabda5_',124),(133,'667565ccabe66_',124),(134,'667565cd3e609_',125),(135,'667565cd3e757_',125),(136,'667565cd3e825_',125),(137,'667565cd6f671_',126),(138,'667565cd6f7c3_',126),(139,'667565cd6f898_',126),(140,'667565df88c63_',127),(141,'667565df88d94_',127),(142,'667565df88e4d_',127),(143,'667565e13543d_',128),(144,'667565e135b36_',128),(145,'667565e136173_',128),(146,'667565e85f59a_',129),(147,'667565e85f789_',129),(148,'667565e85f8c9_',129),(149,'6675684407fb3_appart1.jpg',130),(150,'6675684407fb5_appart1.jpg',130),(151,'6675684407fb6_appart1.jpg',130),(152,'6675685aaf25e_odelin.jpg',131),(153,'6675685aaf25f_odelin.jpg',131),(154,'6675685aaf260_odelin.jpg',131),(155,'66756876f3268_appart1.jpg',132),(156,'66756876f326a_odelin.jpg',132),(157,'66756876f326b_jul.jpeg',132),(158,'66759227da6fa_logo.png',133),(159,'66759227da6fb_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',133),(160,'66759227da6fc_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',133),(161,'667592a04aff3_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',134),(162,'667592a04aff4_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',134),(163,'667592a04aff5_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',134),(164,'667592cdcaf7d_thumb-600w-7c3812139b5dca6f1c99192a35434aa5.webp',135),(165,'667592cdcaf7e_thumb-600w-7c3812139b5dca6f1c99192a35434aa5.webp',135),(166,'667592cdcaf7f_thumb-600w-7c3812139b5dca6f1c99192a35434aa5.webp',135),(167,'667593779fc8a_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',136),(168,'667593779fc8b_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',136),(169,'667593779fc8c_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',136),(170,'667593e92f710_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',137),(171,'667593e92f711_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',137),(172,'667593e92f712_thumb-600w-7c3812139b5dca6f1c99192a35434aa5.webp',137),(173,'667594250b438_thumb-600w-17fc38f283fb16eba96aa90870a002de.webp',138),(174,'667594250b439_thumb-600w-7e13c8fa845f227b6214c5da382f51b4.webp',138),(175,'667594250b43a_thumb-600w-7c3812139b5dca6f1c99192a35434aa5.webp',138);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (71,'2024-06-21','2024-06-22',NULL,NULL,100,2,13),(73,'2024-06-21','2024-06-22',NULL,NULL,300,1,13),(74,'2024-06-21','2024-06-22',NULL,NULL,100,2,13),(75,'2024-06-21','2024-06-22',NULL,NULL,100,2,12),(77,'2024-06-21','2024-06-22',NULL,NULL,100,2,12),(79,'2024-06-21','2024-06-22',NULL,NULL,100,2,12),(80,'2024-06-21','2024-06-22',NULL,NULL,100,2,12);
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
INSERT INTO `type` VALUES (1,'maison','/images/appartement.jpg',1),(2,'appartement','/images/maison.jpg',1),(3,'insolite','/images/insolite.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@admin.com','Admin1234','toto','toto',1,1),(2,'admin2@admin.com','Admin1234','toto','toto',1,2),(3,'admin@admin.fr','$2y$10$HvtpSFEX.wkYDwnke5YMtOvYRFMVhZW.9ijs1QtADTbs/WjEYUhda','marlier','eymeric',1,NULL),(4,'g.manon14@gmail.com','$2y$10$LOwgX2VS6K25hXzB2UHOXOaO1Iy6221PeFPtY9mIn1AFi6ZfnfPdO','villeneuve','manon',1,NULL),(5,'aaa@bb.fr','$2y$10$CKq95XlzdTMRVej8fiFTdO19fSGex6B4C2OP489E4o6UnI5TTGqIy','marlier','eymeric',1,NULL),(6,'aa@kkk.fr','$2y$10$xUUDNKVvv2UPPmG18QkH.e6sKJJj/unUwlgl9x6.rQg2Hq1o4R8dS','marlier','hdhdhd',1,NULL),(7,'mlml@fkodflk.fr','$2y$10$SQewul5RooVSloyEKnlXy.BOBPTyRBvuQ/iM1kaC5li2FYJjNmoga','marlier','flmkdskf',1,NULL),(8,'odelin@email.com','$2y$10$N351sFBpJQ4j.NRhkygRDe5.NyEnsHcLs/OUvNYHjU7QMtf/Z6yX.','marlier','eymeric',1,NULL),(9,'user@psg.fr','$2y$10$2rFSWUNGaKl3ncNsbl3Aa.NqeYZ9CEWh6Kw2jhbl8BO8Z6D8N7LcW','Bauer','Geoffrey',1,NULL),(10,'admin1234@hotmail.fr','$2y$10$kDWt.Pa5.JuPYhWYr4LYl.rsUL/W34r/BBRiduuKWdo8WnwwkuL/W','marlier','eymeric',1,NULL),(11,'marlierbab@hotmail.com','$2y$10$OKgJnbOFyU68j24TtbhWgeL1JW/b/k46s1dt5epiaNwjukgLVv2Ci','marlier','elisabeth',1,NULL),(12,'admin1@admin.fr','$2y$10$lwW7cUX3zD2BUY/mzpYwB.1eT50sNycSyXhF2FZI7VGuFkkpEgkYa','marlier','mfdsopf',1,NULL),(13,'admin@psg.fr','$2y$10$oVeJ398ELWn599WL/qNCfuW9DS7LG.UCIPYJFpwlFQQEZGph7/7/u','Bauer','Geoffrey',1,NULL),(14,'eymeric@hotmail.fr','$2y$10$pS1vGpuUefj4isGjxlLxOOJiyKGPu5Ljs9MOMJVu7szvSq.bgvi6C','Marlier','eymeric',1,NULL),(15,'ey@ey.fr','$2y$10$IBeZY6GP3gjSuaW5ccIbL.QG.nCqe6T6St0EMy5U.Y4Uf5HClyjAK','aa','aa',1,NULL);
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

-- Dump completed on 2024-06-21 15:01:10
