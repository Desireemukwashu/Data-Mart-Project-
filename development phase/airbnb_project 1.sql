-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: airbnb project
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `postal code` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (29,'Berlin','Germany','10115'),(30,'New York','United States','10001'),(31,'Oslo','Norway','0155'),(32,'Paris','France','75001'),(33,'Madrid','Spain','28001'),(34,'Rome','Italy','00184'),(35,'Sydney','Australia','2000'),(36,'Cape Town','South Africa','8001'),(37,'Sao Paulo','Brazil','01000-000'),(38,'Bejing','China','100000'),(39,'Seoul','South Korea','04524'),(40,'Mexico City','Mexico','01000'),(41,'Tokyo','Japan','100-0001'),(42,'Stockholm','Sweden ','111 20'),(43,'Athens','Greece','105 52'),(44,'Zurich','Switzerland','8001'),(45,'Auckland','New Zealand','1010'),(46,'Moscow','Russia','101000'),(47,'Lisbon','Portugal','1100-038'),(48,'Istanbul','Turkey','34110');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `bio` varchar(256) DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (161,'Janet ','Jackson','janet.jackson@gmail.com',NULL,'11 Green Street Netherlands'),(162,'Tyler ','Perry','tyler.perry@yahoo.com',NULL,'12 Artwell Street Portugal'),(163,'Chris ','Maple','chris.maple@hotmail.com',NULL,'89 Orange Road New York'),(164,'Tony','Hills','tony.hills@gmail.com',NULL,'123 Hagle Way Norway'),(165,'Bridgette','Bone','bridgette.bone@hotmail',NULL,'125 Figtree Street United Kingdom'),(166,'Sonja','Clerk','sonja.clerk@hotmail.com',NULL,'34 Harwil Court Street Sweden'),(167,'Princess','Tiara','princess.tiara@gmail.com',NULL,'12 Ample Street Spain'),(168,'Rose','Made','rose.made@hotmail.com',NULL,'78 Luther Court Street Switzerland'),(169,'Amos','Horn','amos.horn@gmail.com',NULL,'32 Greggs Street France'),(170,'Anabel','Viffy','anabel.viffy@hotmail.com',NULL,'65 Fanny Street Finland'),(171,'Alice ','Hen','alice.hen@gmail.com',NULL,'23 Light Street Canada'),(172,'Peter','Jupiter','peter.jupiter@yahoo.com',NULL,'87 Pot Way Street Australia'),(173,'Trish','Years','trish.years@yahoo.com',NULL,'10 Higgy Road Kuala Lumpur'),(174,'Gregory','July','gregory.july@hotmail.com',NULL,'90 Pet Street Poland '),(175,'Juni','Trent','juni.trent@gmail.com',NULL,'43 Queen Street Italy'),(176,'Beauty','June','beauty.june@yahoo.com',NULL,'88 Amber Way India'),(177,'Hannah','Quacks','hannah.quacks@yahoo.com',NULL,'65 Doric Street China'),(178,'Christine','Jackson','christine.jackson@gmail.com',NULL,'778 Red Street Mexico'),(179,'Rebecca','Oats','rebecca.oats@yahoo.com',NULL,'421 Neon Way Tanzania'),(180,'Jane','Jills','jane.jills@hotmail.com',NULL,'090 Bake Street Botswana'),(181,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,1,'patio',NULL),(2,1,'gym',NULL),(3,2,'kitchen',NULL),(4,3,'oven',NULL),(5,4,'bread maker',NULL),(6,5,'pool',NULL),(7,6,'dishwasher',NULL),(8,7,'washing machine',NULL),(9,8,'dryer',NULL),(10,9,'microwave',NULL),(11,10,'toaster',NULL),(12,11,'iron',NULL),(13,12,'refridgerator',NULL),(14,13,'coffee maker',NULL),(15,14,'bbq grill',NULL),(16,15,'tub',NULL),(17,16,'blender',NULL),(18,17,'stove',NULL),(19,18,'couch',NULL),(20,19,'television',NULL);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `availability_status` varchar(256) NOT NULL,
  `minimum_stay` int NOT NULL,
  `maximum_stay` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (1,'2025-05-10','2025-05-12','available',3,5),(2,'2025-06-12','2025-06-14','available',4,6),(3,'2025-04-09','2025-04-12','unavailable',6,8),(4,'2025-09-07','2025-09-09','available',8,9),(5,'2025-02-11','2025-02-13','unavailable',4,7),(6,'2025-03-16','2025-03-18','available',2,5),(7,'2025-01-11','2025-01-13','available',1,3),(8,'2025-02-19','2025-02-21','unavailable ',9,10),(9,'2025-07-07','2025-07-10','unavailable ',5,8),(10,'2025-08-13','2025-08-15','available',3,6),(11,'2025-03-10','2025-03-13','available',8,9),(12,'2025-10-08','2025-10-11','unavailable ',2,7),(13,'2025-11-13','2025-11-15','available',6,8),(14,'2025-01-16','2025-01-19','available',9,11),(15,'2025-05-17','2025-05-19','unavailable',2,5),(16,'2025-06-18','2025-06-20','available ',5,8),(17,'2025-03-09','2025-03-11','unavailable',7,9),(18,'2025-12-10','2025-12-13','available',8,10),(19,'2025-08-08','2025-08-14','unavailable',1,4),(20,'2025-05-21','2025-05-24','available',9,12);
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `Booking_id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `n.o of guests` int NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  PRIMARY KEY (`Booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2001-07-25',12,'2009-01-25','2010-01-25'),(2,'2012-07-25',14,'2011-01-25','2012-01-25'),(3,'2014-07-25',23,'2013-01-25','2014-01-25'),(4,'2018-07-25',45,'2010-02-25','2012-02-25'),(5,'2022-07-25',65,'2013-02-25','2015-02-25'),(6,'2010-08-25',68,'2006-03-25','2007-03-25'),(7,'2013-08-25',72,'2010-03-25','2011-03-25'),(8,'2016-08-25',78,'2012-03-25','2014-03-25'),(9,'2020-08-25',83,'2016-03-25','2018-03-25'),(10,'2022-08-25',86,'2008-04-25','2010-04-25'),(11,'2009-09-25',88,'2011-04-25','2012-04-25'),(12,'2014-02-25',90,'2013-04-25','2014-04-25'),(13,'2018-03-25',92,'2016-04-25','0008-04-25'),(14,'2021-04-25',95,'2022-04-25','2024-04-25'),(15,'2024-09-25',98,'2008-05-25','2010-05-25'),(16,'2010-05-25',102,'2010-05-25','2012-05-25'),(17,'2019-11-25',105,'2011-05-25','2014-05-25'),(18,'2012-10-25',110,'2012-05-25','2013-05-25'),(19,'2013-07-25',112,'2018-05-25','2020-05-25'),(20,'2012-02-25',115,'2019-06-25','2022-06-25');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guest_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `phone.no` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`guest_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (61,'Sarah','Oaks','569-322-0134','sarah.oaks@gmail.com'),(62,'John','Treys','432-607-8094','john.treys@yahoo.com'),(63,'Emily','Duncans','765-980-4444','emily.duncans@hotmail.com'),(64,'Amanda','Ink','556-000-3425','amanda.ink@yahoo.com'),(65,'Queen','Maya','333-562-1111','queen.maya@gmail.com'),(66,'Rita','Greggs','347-678-9000','rita,greggs@gmail.com'),(67,'Betty','Woods','646-876-9870','betty.woods#hotmail.com'),(68,'Zara','Albert','231-765-4569','zara.albert@hotmail.com'),(69,'Portia','Polls','915-543-2222','portia.polls@gmail.com'),(70,'Peter','Drolls','876-555-5432','peter.drolls@hotmail.com'),(71,'Kukie','Hams','714-766-4320','kukie.hams@gmail.com'),(72,'Tracy','Carton','324-776-0923','tracy.carton@yahoo.com'),(73,'Uriah','Biston','449-000-7897','uriah.biston@gmail.com'),(74,'Azariah','Bens','564-234-5555','azariah.bens@gmail.com'),(75,'Grace','Phillips','324-567-8766','grace.phillips@yahoo.com'),(76,'Dion','Tills','211-890-3456','dion.tills@hotmail.com'),(77,'Fiona','Mars','655-894-4556','fiona.mars@hotmail.com'),(78,'Anold','Ampy','916-780-3333','anold.ampy@yahoo.com'),(79,'Trish','Wells','219-567-2654','trish.wells@gmail.com'),(80,'Chris','Martin','657-873-7777','chris.martin@gmail.com');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `host_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(258) NOT NULL,
  `last_name` varchar(258) NOT NULL,
  `email` varchar(258) NOT NULL,
  `profile pic` varchar(256) DEFAULT NULL,
  `phone.no` varchar(258) NOT NULL,
  `address` varchar(258) NOT NULL,
  PRIMARY KEY (`host_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Nina','Hamilton','nina.hamilton@gmail.com',NULL,'222-967-0989','123 Jack Street Poland '),(2,'Nora','Mouse','nora.mouse@yahoo.com',NULL,'312-567-2222','23 Mills Road Canada'),(3,'Nontle','Retty','nontle.retty@hotmail.com',NULL,'614-900-9021','90 Park Street South Africa'),(4,'Ayanda','Trice','ayanda.trice@gmail.com',NULL,'612-950-4309','21 Red Street Russia'),(5,'Sipho','Buffle','sipho.buffle@hotmail.com',NULL,'278-900-3211','900 Hills Street New York'),(6,'John','Clerk','john.clerk@gmail.com',NULL,'912-345-2333','98 Flock  Street United Kingdom'),(7,'Jacob','Jupiter','jacob.jupiter@gmail.com',NULL,'456-212-3444','76 Hags Street Italy'),(8,'Jeremiah','Alvion','jeremiah.alvion@gmail.com',NULL,'678-344-8765','211 Amos Street New York'),(9,'Lina','Point','lina.point@yahoo.com',NULL,'321-084-2144','56 Bed Street Canada'),(10,'Laurah','Johnson','laurah.johnson@hotmail.com',NULL,'256-897-0000','32 Lily Road Australia'),(11,'Jack','Avon','jack.avon@hotmail.com',NULL,'433-090-2132','19 Rosewell Street Kuala Lumpur'),(12,'Cythnia','Treat','cynthia.treat@gmail.com',NULL,'901-765-2123','13 Garden Road Switzerland '),(13,'Alex','Emilton','alex.emilton@gmail.com',NULL,'324-211-8721','32 Dobby Street Canada'),(14,'Robert','Bricks','robert.bricks@yahoo.com',NULL,'809-709-0321','22 Flames Street United Kingdom'),(15,'Trevor','Drop','trevor.drop@gmail.com',NULL,'255-765-3456','18 Truck Drive Paris'),(16,'Rose','Makky','rose.makky@yahoo.com',NULL,'873-802-1190','10 Reed Street Mexico'),(17,'Alice','Gotwill','alice.gotwill@gmail.com',NULL,'723-211-7004','90 Part Street Thailand '),(18,'Calton','Orbit','calton.orbit@gmail.com',NULL,'568-011-3344','31 Wells Street India'),(19,'Pretty','Kellton','pretty.kelton@yahoo.com',NULL,'709-123-4321','76 George Drive Sweden'),(20,'Susan','Woolies','susan.woolies@yahoo.com',NULL,'612-093-2112','98 Happy Road France');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housekeeper`
--

DROP TABLE IF EXISTS `housekeeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housekeeper` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(258) NOT NULL,
  `last_name` varchar(258) NOT NULL,
  `email` varchar(258) NOT NULL,
  `phone n.o` varchar(258) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housekeeper`
--

LOCK TABLES `housekeeper` WRITE;
/*!40000 ALTER TABLE `housekeeper` DISABLE KEYS */;
INSERT INTO `housekeeper` VALUES (1,'Snow ','Reeds','snow.reeds@gmail.com','567-080-1843'),(2,'Peter ','White','peter.white@hotmail.com','654-030-2110'),(3,'Amos','Red','amos.red@gmail.com','200-902-3041'),(4,'Anabel','High','anabel.high@gmail.com','321-090-4059'),(5,'Trish ','Sweets ','trish.sweets@yahoo.com','512-333-2012'),(6,'Chantel','Leak','chantel.leak@hotmail.com','212-454-2213'),(7,'Lori','Kenneth','lori.kenneth@gmail.com','321-431-9001'),(8,'Courtney ','Harvey','courtney.harvey@gmail.com','402-906-0213'),(9,'Rick','Jones','rick.jones@gmail.com','506-000-2134'),(10,'Sarah','Ross','sarah.ross@gmail.com','312-433-9056'),(11,'Fiona','Wales','fiona.wales@gmail.com','601-456-2245'),(12,'Zack','Suite','zack.suite@yahoo.com','701-009-3455'),(13,'Cory','Tipton','cory,tipton@gmail.com','821-432-0821'),(14,'Raven','Banks','raven.banks@hotmail.com','256-704-4040'),(15,'Amanda','Blue','amanda.blue@gmail.com','450-001-3234'),(16,'Karen','Sky','karen.sky@hotmail.com','509-021-1111'),(17,'Yolanda','Bens','yolanda.bens@yahoo.com','901-305-6548'),(18,'Mirabel','Biston','mirabel.biston@gmail.com','310-033-2900'),(19,'Angel','Hover','angel.hover@gmail.com','600-044-5555'),(20,'Troy ','Bolton','troy.bolton@gmail.com','290-913-3232');
/*!40000 ALTER TABLE `housekeeper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(258) NOT NULL,
  `coverage_type` varchar(258) NOT NULL,
  `coverage_period` varchar(258) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'StayAlert Insurance ','Outdoor property damage ','2025-03-04 to 2027-03-01'),(2,'PeacefulNest','Structural Damage ','2025-06-10 to 2027-06-03'),(3,'SafeHood','Indoor property damage ','2025-09-12 to 2027-09-02'),(4,'Comfort Guard','Water Damage','2025-02-10 to 2027-02-01'),(5,'SecureHome','Rental income loss','2025-10-10 to 2027-10-07'),(6,'AirHaven','Fire Damage','2025-01-02 to 2027-01-02'),(7,'Protect Shield','Liability and Theft','2025-07-08 to 2027-07-09'),(8,'Alert Cover','Residence Damage ','2025-03-12 to 2027-03-14'),(9,'Urban Ease','Emergency coverage ','2025-04-01 to 2027-04-07'),(10,'Suburban Host','Flood coverage ','2025-11-11 to 2027-11-08'),(11,'Cozy Nest','Personal Injury','2025-04-09 to 2027-04-13'),(12,'Quick Scoop Insurance','Flood Damage ','2025-08-08 to 2027-08-08'),(13,'Flexi Cover','Electrical Damage','2025-05-09 to 2027-05-02'),(14,'Safe Guard','Pet Damage Protection','2025-06-19 to 2027-06-15'),(15,'Wise Harbor Protection','Appliances coverage ','2025-12-03 to 2027-12-08');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing`
--

DROP TABLE IF EXISTS `listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `host_id` int DEFAULT NULL,
  `price_per_night` decimal(11,5) NOT NULL,
  `room_type` varchar(256) NOT NULL,
  `rating` decimal(11,5) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Host_id_idx` (`host_id`),
  KEY `fk_listing_host_idx` (`id`,`host_id`),
  CONSTRAINT `fk_listing_host` FOREIGN KEY (`id`) REFERENCES `host` (`host_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing`
--

LOCK TABLES `listing` WRITE;
/*!40000 ALTER TABLE `listing` DISABLE KEYS */;
INSERT INTO `listing` VALUES (1,NULL,65.00000,'bedroom',NULL,NULL),(2,NULL,82.00000,'bathroom',NULL,NULL),(3,NULL,90.00000,'living room',NULL,NULL),(4,NULL,98.00000,'kitchen',NULL,NULL),(5,NULL,100.00000,'pantry',NULL,NULL),(6,NULL,120.00000,'game room',NULL,NULL),(7,NULL,230.00000,'laundry room',NULL,NULL),(8,NULL,250.00000,'dining room',NULL,NULL),(9,NULL,280.00000,'private room',NULL,NULL),(10,NULL,300.00000,'guest suite',NULL,NULL),(11,NULL,310.00000,'home theater',NULL,NULL);
/*!40000 ALTER TABLE `listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(258) DEFAULT NULL,
  `country` varchar(258) NOT NULL,
  `city` varchar(258) NOT NULL,
  `region` varchar(258) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Toronto','Canada','','North America '),(2,'Mexico City','Mexico','','North America '),(3,'Cairo','Egypt','','Northern Africa'),(4,'Madrid','Spain','','Iberian Peninsula'),(5,'Rome','Italy','','Southern Europe'),(6,'Lisbon','Portugal','','Iberian Peninsula'),(7,'Athens','Greece','','Southern Europe'),(8,'Oslo','Norway','','Scandinavia'),(9,'Brussels','Belgium','','Western Europe'),(10,'Amsterdam','Netherlands ','','Wesren Europe'),(11,'New Delhi','India ','','South Asia '),(12,'Beijing','China','','East Asia'),(13,'Luanda','Angola','','Central Africa'),(14,'Dakar','Senegal','r','West Africa '),(15,'Vienna','Austria','','Central Europe'),(16,'New York City','United States ','','North America '),(17,'Tokyo','Japan ','','East Asia'),(18,'Seoul','South Korea','','East Asia'),(19,'Moscow','Russia ','','Eastern Europe'),(20,'Sydney','Australia','','Australia');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `host_id` int DEFAULT NULL,
  `guest_id` int DEFAULT NULL,
  `payment_date` date NOT NULL,
  `amount_paid` decimal(11,5) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `payment_ibfk_1` (`host_id`),
  KEY `payment_ibfk_2` (`guest_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (47,1,61,'2010-01-25',25.00000),(48,2,62,'2018-01-25',32.00000),(49,3,63,'2014-02-25',36.50000),(50,4,64,'2018-02-25',42.50000),(51,5,65,'2013-03-25',45.00000),(52,6,66,'2014-03-25',50.00000),(53,7,67,'2020-03-25',65.00000),(54,8,68,'2022-03-25',68.50000),(55,9,69,'2011-04-25',75.00000),(56,10,70,'2013-04-25',82.50000),(57,11,71,'2019-04-25',90.00000),(58,12,72,'2023-04-25',95.40000),(59,13,73,'2025-04-25',100.00000),(60,14,74,'2012-05-25',120.00000),(61,15,75,'2014-05-25',125.00000),(62,16,76,'2016-06-25',130.00000),(63,17,77,'2017-06-25',220.00000),(64,18,78,'2020-06-25',350.00000),(65,19,79,'2021-06-25',400.00000),(66,20,80,'2024-06-25',450.00000);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `size` int DEFAULT NULL,
  `breed` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Tookie','bird',NULL,NULL),(2,'Rex','dog',NULL,NULL),(3,'Lexy','cat',NULL,NULL),(4,'Rooster','reptile',NULL,NULL),(5,'Bubbles','fish',NULL,NULL),(6,'Shelly','guinea pig',NULL,NULL),(7,'Cookie','dog',NULL,NULL),(8,'Nitty','hamster',NULL,NULL),(9,'Petty','bird',NULL,NULL),(10,'Trookie','rabbit',NULL,NULL);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyfeatures`
--

DROP TABLE IF EXISTS `propertyfeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propertyfeatures` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price_per_night` decimal(11,5) NOT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyfeatures`
--

LOCK TABLES `propertyfeatures` WRITE;
/*!40000 ALTER TABLE `propertyfeatures` DISABLE KEYS */;
INSERT INTO `propertyfeatures` VALUES (1,'dreamy light','house',65.00000),(2,'oatshade','cabin',90.00000),(3,'Willowstar','studio',100.00000),(4,'Treemark','apartment',150.00000),(5,'Castlelight','villa',180.00000),(6,'Dewymount','loft',200.00000),(7,'Nest Pot','cottage',250.00000),(8,'Ghost Pine','treehouse',280.00000),(9,'Red Edge','tent',300.00000);
/*!40000 ALTER TABLE `propertyfeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertypricing`
--

DROP TABLE IF EXISTS `propertypricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propertypricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `price_per_night` decimal(11,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_features` (`property_id`),
  CONSTRAINT `fk_property_features` FOREIGN KEY (`property_id`) REFERENCES `propertyfeatures` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertypricing`
--

LOCK TABLES `propertypricing` WRITE;
/*!40000 ALTER TABLE `propertypricing` DISABLE KEYS */;
INSERT INTO `propertypricing` VALUES (1,1,65.00000),(2,2,90.00000),(3,3,100.00000),(4,4,150.00000),(5,5,180.00000),(6,6,200.00000),(7,7,250.00000),(8,8,280.00000),(9,9,300.00000);
/*!40000 ALTER TABLE `propertypricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `listing_id` int NOT NULL,
  `rating_score` decimal(11,5) NOT NULL,
  `rating_type` varchar(58) NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `fk_rating_listing_idx` (`listing_id`),
  CONSTRAINT `fk_rating_listing` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,3.00000,'communication'),(2,2,2.00000,'friendliness'),(3,3,5.00000,'accuracy'),(4,4,4.00000,'amenities'),(5,5,1.00000,'cleanliness'),(6,6,3.00000,'politeness'),(7,7,5.00000,'responsiveness'),(8,8,2.00000,'noise level'),(9,9,1.00000,'privacy'),(10,10,5.00000,'security'),(11,11,4.00000,'amount of fresh air'),(12,1,2.00000,'scenery'),(13,3,3.00000,'lighting');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(58) NOT NULL,
  `description` varchar(258) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'West Africa ','Subregion','A subregion with 16 countries '),(2,'Northern Africa ','Subregion','This one has mediterranean countries '),(3,'Central Africa','Subregion','A region with rainforests'),(4,'Northern Europe ','Subregion','A region with cold climates '),(5,'Southern Europe ','Subregion','A region known for Mediterranean culture'),(6,'Eastern Europe ','Subregion','A region that inlcudes Poland and Romania'),(7,'Western Europe','Subregion','A highly developed region'),(8,'East Africa ','Subregion','Well known for wildlife'),(9,'Sahara Desert','Desert Region','Largest desert in the world '),(10,'Kalahari Desert','Desert Region','Sandy region in Southern Africa'),(11,'Great Rift Valley ','Geographical Region','A huge valley known for biodiversity'),(12,'Namib Desert','Desert Region','This one is the world\'s oldest desert '),(13,'Atlas Mountains ','Mountain Range','Well known for its rich climate '),(14,'Horn of Africa','Geographical Region','The region is know for drought '),(15,'Drakensberg Mountains','Mountain Range','Well known for how beautiful it is');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regulations`
--

DROP TABLE IF EXISTS `regulations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regulations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(256) NOT NULL,
  `code` varchar(9) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regulations`
--

LOCK TABLES `regulations` WRITE;
/*!40000 ALTER TABLE `regulations` DISABLE KEYS */;
INSERT INTO `regulations` VALUES (1,'Safety',NULL,'Fire extinguisher'),(2,'Health',NULL,'Hand Sanitizer needs to be available'),(3,'Noise',NULL,'Noise monitoring devices '),(4,'Legal',NULL,'Guest Identification'),(5,'Financial',NULL,'Tax should be charged for guest\'s extension period'),(6,'Environmental',NULL,'Recycle Bins for waste '),(7,'Accessibility',NULL,'Proper parking space');
/*!40000 ALTER TABLE `regulations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviews_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `property_id` int NOT NULL,
  `rating` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`reviews_id`),
  KEY `fk_reviews_property_idx` (`property_id`),
  KEY `fk_reviews_booking_idx` (`booking_id`),
  CONSTRAINT `fk_reviews_booking` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reviews_property` FOREIGN KEY (`property_id`) REFERENCES `propertyfeatures` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (11,4,1,3,'2025-06-06'),(12,8,2,2,'2025-07-05'),(13,11,3,5,'2025-06-04'),(14,15,4,1,'2025-08-10'),(15,9,5,4,'2025-09-04'),(16,12,6,2,'2025-04-02'),(17,6,7,1,'2025-03-15'),(18,10,8,5,'2025-06-20'),(19,16,9,2,'2025-02-14'),(20,7,1,4,'2025-01-19');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security features`
--

DROP TABLE IF EXISTS `security features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `Type` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Property_id_security features` FOREIGN KEY (`id`) REFERENCES `listing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security features`
--

LOCK TABLES `security features` WRITE;
/*!40000 ALTER TABLE `security features` DISABLE KEYS */;
INSERT INTO `security features` VALUES (1,2,'security camera','entry'),(2,3,'fire alarm system ','fire'),(3,4,'emergency exit','general'),(4,5,'monitor sensor light','general'),(5,6,'security guards','entry'),(6,7,'intercom system ','entry'),(7,8,'smoke detector','fire'),(8,9,'fire extinguisher','fire'),(9,10,'burglar alarm','entry'),(10,11,'secure gate','entry');
/*!40000 ALTER TABLE `security features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service provider`
--

DROP TABLE IF EXISTS `service provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(258) DEFAULT NULL,
  `phone n.o` varchar(258) DEFAULT NULL,
  `name` varchar(258) DEFAULT NULL,
  `type` varchar(58) DEFAULT NULL,
  `service fee` decimal(12,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service provider`
--

LOCK TABLES `service provider` WRITE;
/*!40000 ALTER TABLE `service provider` DISABLE KEYS */;
INSERT INTO `service provider` VALUES (81,'info@smartshine cleaning.com','312-040-2134','SmartShine Cleaning Co.','Cleaning service ',45.000),(82,'contact@probit plumbing.com','213-345-5211','Probit Plumbing','Plumbing service',65.000),(83,'service@volt edge electricals.com','411-900-3321','Volt Edge Electricals ','Electrician service ',50.000),(84,'name@doodlewise repairs.com','511-099-4333','DoodleWise Repairs','Repair services',85.500),(85,'contact@delicious delicacies.com','602-067-4444','Delicious Delicacies','Cooking sevice ',25.000),(86,'name@sillwood tech support.com','900-233-3445','Sillwood Tech Support','IT service',90.000),(87,'infor@kukie meals.com','712-322-5555','Kukie Meals','Catering service',105.500),(88,'service@beauty hair salon.com','421-678-0000','Beauty Hair Salon','Hairdressing service',150.340),(89,'name@nails by susie.com','302-555-6723','Nails by Susie','Manicure and pedicure service ',165.500),(90,'contact@fancy cuts barber.com','222-700-3421','Fancy Cuts Barber','Barber service ',130.000),(91,'infor@luxurious touch massage.com','503-333-0921','Luxurious Touch Massage','Massage service ',200.500),(92,'name@freshnest dry cleaners.com','303-328-0711','FreshNest Dry Cleaners','Dry cleaning service',250.000),(93,'name@loving touch care.com','754-090-2100','Loving Touch Care ','Babysitting service',300.000),(94,'service@sour guard security.com','621-050-4233','Sour Guard Security','Security service',350.000),(95,'contact@maintenance breed.com','402-222-7801','Maintenance Breed','Pool service',130.000),(96,'infor@fit hub centre.com','600-231-8080','Fit Hub Centre','Gym service',125.000),(97,'name@one time fix.com','300-218-8210','One Time Fix','Gadgets repair service',100.000),(98,'service@soccer hub training.com','206-777-0544','Soccer Hub Training','Football coaching ',145.500),(99,'contact@tennis way training.com','699-033-5477','Tennis Way Training ','Tennis lessons',135.500),(100,'info@swift link relocations.com','890-311-5464','Swift Link Relocations ','Moving service',140.500),(101,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `service provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-29 17:24:56




-- Test case 1: Evaluating listing performance by room type
-- in this query we want to find the total number of listings and the average price per night,
-- we join the listing and payment tables for us to get the total earnings.
-- we are also able to identify the room types which are giving us the highest total sales.   

SELECT
    listing.room_type,
    COUNT(listing.id) AS total_listings,
    ROUND(AVG(listing.price_per_night), 2 ) AS average_price,
    ROUND(SUM(payment.amount_paid), 2) AS total_earnings
FROM
    Listing
Join
    Payment ON listing.host_id = payment.host_id
GROUP BY
    listing.room_type
ORDER BY
    total_earnings DESC;  
    
    
    
    
    -- Test case 2: this query collects information about hosts and their designated housekeepers
    -- also retrieves the amenities and insurance details in each host's property,
    -- host, housekeeper, amenities, location and insurance are the tables used to join data
    
    
SELECT
    host.first_name || ' ' || host.last_name AS host_name,
    host.email AS host_email,
    housekeeper.first_name || ' ' || housekeeper.last_name AS housekeeper_name,
    amenities.name AS amenities_name,
    amenities.type AS amenities_type,
    location.city,
    location.country,
    location.name AS location_name,
    location.region,
    insurance.coverage_type,
    insurance.coverage_period,
    insurance.provider_name
FROM host
JOIN housekeeper ON housekeeper.id = host.host_id
JOIN amenities ON amenities.property_id = host.host_id
JOIN location ON location.id = amenities.property_id
JOIN insurance ON 1 = 1
ORDER BY host.first_name; 




-- Test case 3: Identifying listings with fewer than 3 specific amenities
-- this query extracts the host's information icluding the property listings, room type and price per night,
-- filters to show only listings that have less than 3 of the following amenities(iron, microwave and toaster),
-- this process helps us to identify which listings are poorly equipped and need enhancement.



SELECT
   listing.id,
   host.first_name,
   host.last_name,
   host.email,
   listing.room_type,
   propertypricing.price_per_night,
   COUNT(DISTINCT amenities.name) AS included_amenities
   FROM listing
JOIN host ON listing.host_id = host.host_id
JOIN propertypricing ON propertypricing.property_id = listing.id
LEFT JOIN amenities ON amenities.property_id = listing.id
   AND amenities.name IN ('iron', 'toaster', 'microwave')
GROUP BY id, host.first_name, host.last_name, host.email, listing.room_type, propertypricing.price_per_night
HAVING COUNT(DISTINCT amenities.name) < 3;   
    
    
   

   


