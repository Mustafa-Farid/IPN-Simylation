-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_hub_pay
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `users_accounts`
--

DROP TABLE IF EXISTS `users_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipa` varchar(45) DEFAULT NULL,
  `accountKey` varchar(60) DEFAULT NULL,
  `bankName` varchar(45) DEFAULT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `key_UNIQUE` (`accountKey`),
  KEY `bankid_idx` (`bankName`),
  KEY `ipa_idx` (`ipa`),
  CONSTRAINT `bankName` FOREIGN KEY (`bankName`) REFERENCES `banks_info` (`bankName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ipa` FOREIGN KEY (`ipa`) REFERENCES `users` (`ipa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_accounts`
--

LOCK TABLES `users_accounts` WRITE;
/*!40000 ALTER TABLE `users_accounts` DISABLE KEYS */;
INSERT INTO `users_accounts` VALUES (1,'ipa@tech-hub-pay','5554','bank1'),(2,'ipa@tech-hub-pay',NULL,'bank1'),(5,'ipa@tech-hub-pay','key','bank1'),(6,'ipsa@tech-hub-pay','d9e32d750de04ffba9a58b0e66c1fb6e','bank1'),(7,'ipsa@tech-hub-pay','7dc7e9a457124a5d8390b9000266bfbb','bank1'),(8,'ipa@tech-hub-pay','ssasa','bank1'),(10,'ipa@tech-hub-pay','ssnnasa','bank1'),(11,'ipa@tech-hub-pay','64e339f8cac74f60a514070fa665b889','bank1'),(12,'ipa@tech-hub-pay','7f22e3c63044409d90c792bf61542a0f','bank1'),(13,'ipa@tech-hub-pay','0e9e5bfb76f7425387432e5749c86bdb','bank1'),(16,'ipa@tech-hub-pay','3004ce85c0ac45d797340c026abd1cc3','bank1');
/*!40000 ALTER TABLE `users_accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-11 19:41:04
