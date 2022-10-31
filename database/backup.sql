-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `handle`
--

DROP TABLE IF EXISTS `handle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `handle` (
  `id_order` int NOT NULL,
  `export` bit(1) DEFAULT NULL,
  `delivery` bit(1) DEFAULT NULL,
  `received` bit(1) DEFAULT NULL,
  `Pay` bit(1) DEFAULT NULL,
  `Options` enum('cancle','return','exchange') DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  CONSTRAINT `handle_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handle`
--

LOCK TABLES `handle` WRITE;
/*!40000 ALTER TABLE `handle` DISABLE KEYS */;
/*!40000 ALTER TABLE `handle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `idus` int NOT NULL AUTO_INCREMENT,
  `idpd` int DEFAULT NULL,
  KEY `idpd` (`idpd`),
  KEY `idus` (`idus`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`idpd`) REFERENCES `products` (`idProducts`),
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`idus`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `note` text,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`iduser`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idProduct` int NOT NULL AUTO_INCREMENT,
  `idProducts` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `idProducts` (`idProducts`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idProducts`) REFERENCES `products` (`idProducts`)
) ENGINE=InnoDB AUTO_INCREMENT=1795 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1784,1,48,2),(1785,2,47,1),(1786,3,48,4),(1787,4,47,1),(1788,5,46,2),(1789,6,45,3),(1790,7,48,4),(1791,8,48,5),(1792,9,47,2),(1793,10,46,3),(1794,11,46,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idProducts` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(100) DEFAULT NULL,
  `vieww` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `image_pd` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `madein` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idProducts`)
) ENGINE=InnoDB AUTO_INCREMENT=1753 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nike',47,0,'D:\\ShoesImage\\imgShoes\\CQ0278-200.png','2022-02-24 00:00:00','Air Jordan 1 Jester XX Low Laced SE',8995,'China','Lighten up, have some fun, and sweat nothing except for comfort. The Air Jordan 1 Jester XX Low Laced SE features premium materials and a smooth, satiny lining, giving you plenty of support to match the step-in comfort. The shiny gold-tone finish and wavy, unconventional midsole gives it some playful attitude and added flexibility.',NULL),(2,'Nike',46,0,'D:\\ShoesImage\\imgShoes\\921733-104.png','2022-06-28 00:00:00','Nike Air Max 97',15995,'China','Featuring the same ripple design of the OG that was inspired by Japanese bullet trains, the Nike Air Max 97 lets you push your style full-speed ahead. Taking the revolutionary full-length Nike Air unit that shook up the running world and adding fresh python print and reflective details, it lets you ride in first-class comfort.',NULL),(3,'Nike',44,0,'D:\\ShoesImage\\imgShoes\\CU5133-600.png','2022-07-13 00:00:00','LeBron 7',16995,'China','First debuted on the hardwood during one of the King\'s epic December showdowns, the LeBron 7 returns in familiar festive hues to celebrate the game and the season. Featuring the same supple Team Red upper and black accents as the original iteration, this limited-edition sneaker is expertly engineered for the street and arrives complete with the unmistakable Air iconic to the model.',NULL),(4,'Nike',27,0,'D:\\ShoesImage\\imgShoes\\CQ6569-001.png','2022-03-04 00:00:00','Nike Air Max Tailwind 99',15995,'China','The Nike Air Max Tailwind 99 has a storied history, beginning in 1979 with the original Nike Air project. To celebrate 20 years of the Tailwind, this model blends elements from several decades past. An OG colourway nods to the shoe\'s initial debut back in \'99.',NULL),(5,'Nike',66,0,'D:\\ShoesImage\\imgShoes\\CT1104-700.png','2022-05-20 00:00:00','Nike Air Max Triax',0,'China','Keep your fire burning in the Nike Air Max Triax. It features the same iconic shape and large-volume Air unit as the OG, bringing back the classic comfort and style that\'s known and loved.',NULL),(6,'Nike',69,0,'D:\\ShoesImage\\imgShoes\\CQ6566-700.png','2022-08-08 00:00:00','Nike Air Force 1 SP',0,'China','The Nike Air Force 1 SP adds a shiny metallic finish to the details that made the original an icon.',NULL),(7,'Nike',23,0,'D:\\ShoesImage\\imgShoes\\CW4409-100.png','2022-07-28 00:00:00','Air Jordan 13 Retro Chinese New Year',0,'China','Michael Jordan\'s stealthy creativity on the court earned him the nickname \"Black Cat\"\". The Air Jordan 13 Retro is based on the OG model and has responsive cushioning and premium materials. This version features special details to honour the Chinese New Year.\"',NULL),(8,'Nike',59,0,'D:\\ShoesImage\\imgShoes\\CI7388-600.png','2022-01-03 00:00:00','Nike Air Max 97',0,'China','Remastered from the OG that shook up the running world, the Nike Air Max 97 elevates the classic design. Bold new colours draw inspiration from the Hanshin Tigers, one of Japan\'s oldest baseball teams.',NULL),(9,'Nike',45,0,'D:\\ShoesImage\\imgShoes\\CT5062-100.png','2022-06-13 00:00:00','Air Max 200 20',0,'China','Inspired by the shimmer of bubbles and water, the Nike Air Max 200 20 features an iridescent design that wows. The shoe boasts a large Air Max unit and exceptional cushioning. Modern detailing radiates cool while providing extreme comfort.',NULL),(10,'Nike',11,0,'D:\\ShoesImage\\imgShoes\\CT0624-100.png','2022-01-22 00:00:00','Nike Offcourt SE',0,'China','The Nike Offcourt SE Slide features a premium suede upper with a modern Swoosh detail. The innovative foam and jersey lining ensure an effortlessly comfortable experience.',NULL),(11,'Nike',91,0,'D:\\ShoesImage\\imgShoes\\CK2351-601.png','2022-06-06 00:00:00','Nike Daybreak',0,'China','Find throwback style and history etched into every detail. Following in the footsteps of the OG from \'79, the marathon-winning Nike Daybreak is a blast from the past. Its iconic Waffle outsole combines with fabric in the upper and archival colourways for a heritage look.',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idorder` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `user_phone` varchar(12) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `payment` varchar(20) DEFAULT NULL,
  `payment_infor` text,
  `message` text,
  `created` datetime DEFAULT NULL,
  `totalBill` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `transactions_ibfk_4` (`idorder`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`idorder`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_trans_insert` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
	Update orders
	set status=0
    where id=new.idorder;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(12) DEFAULT NULL,
  `Full_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` text,
  `created` datetime DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 19:58:40
