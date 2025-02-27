-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ACC_NO` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `PHONE` bigint DEFAULT NULL,
  `mail` varchar(45) NOT NULL,
  `BALANCE` decimal(12,2) NOT NULL DEFAULT '0.00',
  `PIN` int NOT NULL,
  PRIMARY KEY (`ACC_NO`),
  UNIQUE KEY `MAIL_UNIQUE` (`mail`),
  UNIQUE KEY `PHONE_UNIQUE` (`PHONE`)
) ENGINE=InnoDB AUTO_INCREMENT=1100110020 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1100110011,'Siddu',9591115592,'siddu@gmail.com',5610.00,9591),(1100110014,'Siddaveer Swamy',9876540980,'siddaveerswamy@gmail.com',3030.00,2222),(1100110018,'SIDDAVEER SWAMY',9591115591,'sidduswamy925@gmail.com',0.00,1234);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook`
--

DROP TABLE IF EXISTS `passbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook` (
  `TRAN_ID` bigint NOT NULL,
  `USER_ACC` bigint NOT NULL,
  `REC_ACC` bigint NOT NULL,
  `TRAN_DATE` datetime NOT NULL,
  `TRAN_TYPE` varchar(45) DEFAULT NULL,
  `AMOUNT` decimal(12,2) NOT NULL,
  `BALANCE` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook`
--

LOCK TABLES `passbook` WRITE;
/*!40000 ALTER TABLE `passbook` DISABLE KEYS */;
INSERT INTO `passbook` VALUES (617559775617145,1100110011,1100110011,'2024-11-08 22:50:37','CREDITED',1000.00,3000.00),(276846617864257,1100110011,1100110012,'2024-11-08 23:13:55','DEBITED',1000.00,2000.00),(276846617864257,1100110012,1100110011,'2024-11-08 23:13:55','CREDITED',1000.00,1000.00),(660025369304438,1100110011,1100110013,'2024-11-11 11:35:53','CREDITED',0.00,2000.00),(283986951487912,1100110014,1100110014,'2024-12-12 12:09:20','CREDITED',1000.00,1000.00),(129814457816982,1100110014,1100110014,'2024-12-12 12:12:03','CREDITED',100.00,1100.00),(3236973011430,1100110014,1100110014,'2024-12-12 12:30:29','CREDITED',1000.00,2100.00),(835730646736645,1100110014,1100110014,'2024-12-12 15:10:55','CREDITED',100.00,2200.00),(766778367879063,1100110014,1100110014,'2024-12-12 15:12:41','CREDITED',100.00,2300.00),(482478755898888,1100110014,1100110014,'2024-12-12 15:12:51','CREDITED',100.00,2400.00),(631120717049108,1100110014,1100110014,'2024-12-12 15:12:58','CREDITED',100.00,2500.00),(895840956778443,1100110014,1100110014,'2024-12-12 15:13:06','CREDITED',100.00,2600.00),(196670045775695,1100110014,1100110014,'2024-12-12 15:38:43','CREDITED',500.00,3100.00),(74074098890184,1100110014,1100110012,'2024-12-12 18:12:09','CREDITED',120.00,2980.00),(74074098890184,1100110012,1100110012,'2024-12-12 18:12:09','DEBITED',120.00,2980.00),(150763346122187,1100110014,1100110012,'2024-12-12 18:13:13','CREDITED',90.00,2890.00),(150763346122187,1100110012,1100110012,'2024-12-12 18:13:13','DEBITED',90.00,2890.00),(161625886713030,1100110012,1100110011,'2024-12-12 19:26:23','DEBITED',140.00,2840.00),(161625886713030,1100110011,1100110011,'2024-12-12 19:26:23','CREDITED',140.00,2840.00),(652695947362221,1100110014,1100110014,'2024-12-13 21:52:14','CREDITED',120.00,3010.00),(300640538771624,1100110014,1100110014,'2024-12-13 21:58:10','CREDITED',100.00,3110.00),(157687004065100,1100110014,1100110014,'2024-12-14 13:26:25','CREDITED',200.00,3310.00),(642335932963588,1100110014,1100110011,'2024-12-14 13:26:44','DEBITED',400.00,2910.00),(642335932963588,1100110011,1100110014,'2024-12-14 13:26:44','CREDITED',400.00,2910.00),(774197885790649,1100110015,1100110015,'2024-12-15 22:57:34','CREDITED',100.00,100.00),(164311720504187,1100110015,1100110011,'2024-12-15 22:58:35','CREDITED',0.00,2540.00),(564214989421750,1100110016,1100110016,'2024-12-15 23:01:28','CREDITED',300.00,300.00),(434283997086980,1100110016,1100110011,'2024-12-15 23:02:18','CREDITED',0.00,2540.00),(410024652024996,1100110012,1100110011,'2024-12-15 23:06:22','CREDITED',2840.00,5380.00),(940294425205013,1100110017,1100110011,'2024-12-16 19:39:38','CREDITED',0.00,5380.00),(132501161230903,1100110011,1100110011,'2024-12-16 22:01:56','CREDITED',230.00,5610.00),(238872521930017,1100110011,1100110019,'2024-12-21 11:05:08','DEBITED',800.00,4810.00),(238872521930017,1100110019,1100110011,'2024-12-21 11:05:08','CREDITED',800.00,4810.00),(685964751302804,1100110014,1100110014,'2024-12-23 12:21:29','CREDITED',120.00,3030.00),(255155797690418,1100110019,1100110011,'2024-12-23 12:24:56','CREDITED',800.00,5610.00);
/*!40000 ALTER TABLE `passbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-03 13:17:28
