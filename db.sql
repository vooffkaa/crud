-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: zima_lab
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20200212094510','2020-02-12 09:46:19');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Alexey','Petrov','alexey@yandex.ru','Yandex','Junior Developer','89999999999','78888883333','89139133454'),(27,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','888888888882','99999999999','77777777777'),(28,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(29,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(30,'Mike','Anderson','mike_a@gmail.com','Google','web-dev1','88888888888','99999999999','77777777777'),(31,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(33,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(34,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(35,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(36,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(37,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(38,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(39,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(40,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777778'),(41,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(42,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(43,'Mike','Anderson','mike_a@gmail.com','Google','web-dev','88888888888','99999999999','77777777777'),(44,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(45,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(46,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(47,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(48,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(49,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(50,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(51,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(52,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(53,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(54,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(55,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(56,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(57,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(58,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(59,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(60,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(61,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(62,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(63,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(64,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(65,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(66,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(67,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(68,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(69,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(70,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(71,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(72,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(73,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(74,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(75,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(76,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(77,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(78,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352'),(79,'Tom','Ford','tom@ford.com','Company','Boss','4523528385237','43232523','588478352');
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

-- Dump completed on 2020-02-17  0:05:20
