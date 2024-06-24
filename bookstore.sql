-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `t_book`
--

DROP TABLE IF EXISTS `t_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book`
--

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` VALUES (139,'JavaScript从入门到精通','高宏',222.00,2335,2326,'static/img/1648534344417.jpg'),(140,'马克波罗行记','马克波罗',102.00,327,23419,'static/img/1648534462368.jpg'),(141,'王小波全集','王小波',43.00,23267,4643,'static/img/1648534503908.jpg'),(142,'泰戈尔诗集','泰戈尔',65.00,76658,5451,'static/img/1648534541119.jpg'),(143,'华盖集','鲁迅',54.00,545,5454,'static/img/1648534588705.jpg'),(144,'瓦尔登湖','梭罗',65.00,8756,898,'static/img/1648534672429.jpg');
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order` (
  `order_id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES ('1648367123671_100','2022-03-27 15:45:24',1002.50,0,100),('1648371620883_106','2022-03-27 17:00:21',152.00,0,106),('1648372588265_106','2022-03-27 17:16:28',272.00,0,106),('1648372608267_106','2022-03-27 17:16:48',80.00,0,106),('1648377852231_106','2022-03-27 18:44:12',220.00,0,106),('1648430446816_106','2022-03-28 09:20:47',261.50,0,106),('1648465162917_106','2022-03-28 18:59:23',168.00,0,106),('1648465848037_106','2022-03-28 19:10:48',65.30,0,106),('1648466095963_106','2022-03-28 19:14:56',129.50,0,106),('1648466243254_106','2022-03-28 19:17:23',116.90,0,106),('1648475153930_106','2022-03-28 21:45:54',24.00,0,106),('1648475259550_106','2022-03-28 21:47:40',168.00,0,106),('1648475459140_106','2022-03-28 21:50:59',320.50,0,106),('1648475557032_106','2022-03-28 21:52:37',168.00,0,106),('1648514109211_106','2022-03-29 08:35:09',129.50,0,106),('1648514335820_106','2022-03-29 08:38:56',129.50,0,106),('1648515555444_106','2022-03-29 08:59:15',168.00,0,106),('1649138505125_106','2022-04-05 14:01:45',546.00,0,106),('1649138533509_106','2022-04-05 14:02:14',216.00,0,106),('1663567870696_100','2022-09-19 14:11:11',666.00,0,100),('1719236925020_140','2024-06-24 08:48:45',528.00,0,140);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item`
--

DROP TABLE IF EXISTS `t_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item`
--

LOCK TABLES `t_order_item` WRITE;
/*!40000 ALTER TABLE `t_order_item` DISABLE KEYS */;
INSERT INTO `t_order_item` VALUES (123457,'aaa',5,100.20,501.00,'1648367123671_100'),(123458,'bbb',5,100.30,501.50,'1648367123671_100'),(123459,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648371620883_106'),(123460,'木虚肉盖饭',1,16.00,16.00,'1648371620883_106'),(123461,'怎样拐跑别人的媳妇',4,68.00,272.00,'1648372588265_106'),(123462,'木虚肉盖饭',5,16.00,80.00,'1648372608267_106'),(123463,'怎样拐跑别人的媳妇',3,68.00,204.00,'1648377852231_106'),(123464,'木虚肉盖饭',1,16.00,16.00,'1648377852231_106'),(123465,'数据结构与算法',1,78.50,78.50,'1648430446816_106'),(123466,'C语言程序设计',2,28.00,56.00,'1648430446816_106'),(123467,'Lua语言程序设计',2,51.50,103.00,'1648430446816_106'),(123468,'西游记',2,12.00,24.00,'1648430446816_106'),(123469,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648465162917_106'),(123470,'木虚肉盖饭',2,16.00,32.00,'1648465162917_106'),(123471,'C++编程思想',1,45.50,45.50,'1648465848037_106'),(123472,'蛋炒饭',2,9.90,19.80,'1648465848037_106'),(123473,'怎样拐跑别人的媳妇',1,68.00,68.00,'1648466095963_106'),(123474,'木虚肉盖饭',1,16.00,16.00,'1648466095963_106'),(123475,'C++编程思想',1,45.50,45.50,'1648466095963_106'),(123476,'木虚肉盖饭',1,16.00,16.00,'1648466243254_106'),(123477,'C++编程思想',2,45.50,91.00,'1648466243254_106'),(123478,'蛋炒饭',1,9.90,9.90,'1648466243254_106'),(123479,'西游记',2,12.00,24.00,'1648475153930_106'),(123480,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648475259550_106'),(123481,'木虚肉盖饭',2,16.00,32.00,'1648475259550_106'),(123482,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648475459140_106'),(123483,'木虚肉盖饭',3,16.00,48.00,'1648475459140_106'),(123484,'C++编程思想',3,45.50,136.50,'1648475459140_106'),(123485,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648475557032_106'),(123486,'木虚肉盖饭',2,16.00,32.00,'1648475557032_106'),(123487,'怎样拐跑别人的媳妇',1,68.00,68.00,'1648514109211_106'),(123488,'木虚肉盖饭',1,16.00,16.00,'1648514109211_106'),(123489,'C++编程思想',1,45.50,45.50,'1648514109211_106'),(123490,'怎样拐跑别人的媳妇',1,68.00,68.00,'1648514335820_106'),(123491,'木虚肉盖饭',1,16.00,16.00,'1648514335820_106'),(123492,'C++编程思想',1,45.50,45.50,'1648514335820_106'),(123493,'怎样拐跑别人的媳妇',2,68.00,136.00,'1648515555444_106'),(123494,'木虚肉盖饭',2,16.00,32.00,'1648515555444_106'),(123495,'JavaScript从入门到精通',2,222.00,444.00,'1649138505125_106'),(123496,'马克波罗行记',1,102.00,102.00,'1649138505125_106'),(123497,'王小波全集',2,43.00,86.00,'1649138533509_106'),(123498,'泰戈尔诗集',2,65.00,130.00,'1649138533509_106'),(123499,'JavaScript从入门到精通',3,222.00,666.00,'1663567870696_100'),(123500,'JavaScript从入门到精通',1,222.00,222.00,'1719236925020_140'),(123501,'马克波罗行记',3,102.00,306.00,'1719236925020_140');
/*!40000 ALTER TABLE `t_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (100,'admin','admin','12345@qq.com'),(101,'user1','123456','123456@qq.com'),(102,'user2','123456','123457@qq.com'),(103,'root','123456','root@qq.com'),(105,'user3','123456','user3@qq.com'),(106,'wuyaojun','1qaz!QAZ43!!','wuyaojun@qq.com'),(113,'user4','1qaz!QAZ43!!','user4@qq.com'),(114,'user5','1qaz!QAZ43!!','user5@qq.com'),(126,'user6','1qaz!QAZ43!!','user6@qq.com'),(127,'user7','1qaz!QAZ43!!','user7@qq.com'),(128,'user8','1qaz!QAZ43!!','user8@qq.com'),(129,'user9','1qaz!QAZ43!!','user9@qq.com'),(130,'user10','1qaz!QAZ43!!','user10@qq.com'),(131,'user11','1qaz!QAZ43!!','user11@qq.com'),(132,'user12','1qaz!QAZ43!!','user12@qq.com'),(133,'user13','1qaz!QAZ43!!','user13@qq.com'),(134,'user16','1qaz!QAZ43!!','user15@qq.com'),(135,'user17','1qaz!QAZ43!!','user17@qq.com'),(136,'user18','1qaz!QAZ43!!','user18@qq.com'),(137,'user19','1qaz!QAZ43!!','user19@qq.com'),(138,'user20','1qaz!QAZ43!!','user20@qq.com'),(139,'user21','1qaz!QAZ','user21@qq.com'),(140,'张三','1qaz!QAZ12#$','sxslfsfxxx@163.com');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 22:06:13
