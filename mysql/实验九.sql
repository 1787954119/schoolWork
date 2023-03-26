-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: productdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `car_userid` varchar(32) NOT NULL,
  `car_productid` varchar(32) DEFAULT NULL,
  `car_updatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'1','1','2022-01-01 01:16:59'),(2,'2',NULL,'2022-01-01 00:52:59'),(3,'3',NULL,'2022-01-01 00:53:06'),(4,'2','2','2022-01-01 01:17:22'),(5,'3','3','2022-01-01 01:17:28');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_user`
--

DROP TABLE IF EXISTS `order_user`;
/*!50001 DROP VIEW IF EXISTS `order_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_user` AS SELECT 
 1 AS `orderid`,
 1 AS `orderamount`,
 1 AS `username`,
 1 AS `userphone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_user_new`
--

DROP TABLE IF EXISTS `order_user_new`;
/*!50001 DROP VIEW IF EXISTS `order_user_new`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_user_new` AS SELECT 
 1 AS `orderid`,
 1 AS `orderamount`,
 1 AS `username`,
 1 AS `userphone`,
 1 AS `useravgamount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `orderitem_id` int NOT NULL AUTO_INCREMENT,
  `orderitem_orderid` int NOT NULL,
  `orderitem_productid` int NOT NULL,
  PRIMARY KEY (`orderitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,1),(2,2,2),(3,2,2),(4,3,3);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(32) NOT NULL,
  `order_userid` int DEFAULT NULL,
  `order_amount` double DEFAULT NULL,
  `order_paymentid` varchar(32) DEFAULT NULL,
  `order_createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_updatetime` datetime DEFAULT NULL,
  `order_takeofftime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('2',1,3,'2','2022-01-01 00:50:44',NULL,NULL),('1',1,50,'1','2022-01-01 01:21:27','2021-11-11 00:00:00','2021-11-11 11:11:11'),('2',2,1,'2','2022-01-01 01:21:51','2021-11-11 00:00:00','2021-11-11 11:11:11'),('3',3,1,'3','2022-01-01 01:22:02','2021-11-11 00:00:00','2021-11-11 11:11:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `payment_userid` varchar(32) DEFAULT NULL,
  `payment_orderid` varchar(32) NOT NULL,
  `payment_plateform` varchar(32) DEFAULT NULL,
  `payment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_amount` double DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,NULL,'1','weixin','2022-01-01 00:55:50',200),(2,NULL,'2','zhifubao','2022-01-01 00:56:15',100),(3,'1','1','wechat','2022-01-01 01:24:02',1),(4,'2','2','wechat','2022-01-01 01:24:15',1),(5,'3','3','wechat','2022-01-01 01:24:22',1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(256) NOT NULL,
  `product_describe` varchar(1024) DEFAULT NULL,
  `product_categoryid` int DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_count` int DEFAULT NULL,
  `product_state` tinyint DEFAULT NULL,
  `product_picture` varchar(512) DEFAULT NULL,
  `product_onsaletime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product_updatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'iphone','excellent',1,4999,100,1,'D:/phone12','2011-11-11 02:10:10','2021-11-11 02:10:10'),(3,'1','1',1,1,1,1,'1.jpg','2022-01-01 01:26:51','2022-01-01 01:26:51'),(4,'2','2',2,2,2,2,'2.jpg','2022-01-01 01:27:08','2022-01-01 01:27:08'),(5,'3','3',3,3,3,3,'3.jpg','2022-01-01 01:27:21','2022-01-01 01:27:21');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(256) NOT NULL,
  `user_password` varchar(1024) NOT NULL,
  `user_phone` varchar(128) NOT NULL,
  `user_email` varchar(128) DEFAULT NULL,
  `user_address` varchar(512) DEFAULT NULL,
  `user_registertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_updatetime` datetime DEFAULT NULL,
  `user_age` tinyint NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhangsan','123456','18811112222','zhangsan@163.com','shenzhen','2022-01-01 00:40:59',NULL,0),(2,'lisi','123456','13311112222','lisi@163.com','guangzhou','2021-11-11 03:11:11',NULL,0),(3,'1','123456','18911111111','1@163.com','block 1 street1','2022-01-01 01:30:09','2021-11-11 00:00:00',0),(4,'2','123456','18921111111','2@163.com','block 2 street2','2022-01-01 01:30:35','2021-11-11 11:00:00',0),(5,'3','123456','18931111111','3@163.com','block 3 street3','2022-01-01 01:30:56','2021-11-11 11:11:00',0),(6,'zhangsan','123456','10111122333',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `user_name`,
 1 AS `user_phone`,
 1 AS `user_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `userorder`
--

DROP TABLE IF EXISTS `userorder`;
/*!50001 DROP VIEW IF EXISTS `userorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `userorder` AS SELECT 
 1 AS `orderid`,
 1 AS `orderamount`,
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `order_user`
--

/*!50001 DROP VIEW IF EXISTS `order_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_user` (`orderid`,`orderamount`,`username`,`userphone`) AS select `orders`.`order_id` AS `order_id`,`orders`.`order_amount` AS `order_amount`,`user`.`user_name` AS `user_name`,`user`.`user_phone` AS `user_phone` from (`orders` join `user`) where (`orders`.`order_userid` = `user`.`user_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_user_new`
--

/*!50001 DROP VIEW IF EXISTS `order_user_new`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_user_new` (`orderid`,`orderamount`,`username`,`userphone`,`useravgamount`) AS select `orders`.`order_id` AS `order_id`,`orders`.`order_amount` AS `order_amount`,`user`.`user_name` AS `user_name`,`user`.`user_phone` AS `user_phone`,avg(`orders`.`order_amount`) AS `avg(orders.order_amount)` from (`orders` join `user`) where (`orders`.`order_userid` = `user`.`user_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `user`.`user_name` AS `user_name`,`user`.`user_phone` AS `user_phone`,`user`.`user_address` AS `user_address` from `user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userorder`
--

/*!50001 DROP VIEW IF EXISTS `userorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userorder` AS select `order_user`.`orderid` AS `orderid`,`order_user`.`orderamount` AS `orderamount`,`order_user`.`username` AS `username` from `order_user` */;
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

-- Dump completed on 2022-01-01 11:05:23
