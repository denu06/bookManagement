CREATE DATABASE  IF NOT EXISTS `bms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bms`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bms
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`BookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (1,4,19,'2019-03-03 11:14:29',1);
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbooks`
--

DROP TABLE IF EXISTS `tblbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbooks` (
  `BookId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `BookName` varchar(200) NOT NULL,
  `BookType` varchar(150) NOT NULL,
  `BookAuthor` varchar(255) NOT NULL,
  `BookPrice` int(11) NOT NULL,
  `BookDetails` mediumtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `BookImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`BookId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooks`
--

LOCK TABLES `tblbooks` WRITE;
/*!40000 ALTER TABLE `tblbooks` DISABLE KEYS */;
INSERT INTO `tblbooks` VALUES (1,0,'nameeeppp','type1','authord',10000,'dddd',0,'IMG_5777.JPG','2018-12-15 07:27:57','2018-12-16 10:55:29'),(2,0,'name','type1','authord',10000,'dd',0,'IMG_5788.JPG','2018-12-15 07:43:28','2018-12-15 07:45:13'),(3,0,'denish','type1','authord',10000,'dd',0,'IMG_5788.JPG','2018-12-15 07:43:28','2018-12-15 07:45:13'),(4,16,'zxcvbn','ertyui','ertyui',1000,'xcvbn',0,'2018-03-08_124651.jpg','2019-03-03 10:06:15','2019-03-03 10:06:15'),(5,16,'zxcv','ertyu','ertyu',100,'rtyuio',1,'2018-03-08_124651.jpg','2019-03-03 10:16:31','2019-03-03 10:22:41');
/*!40000 ALTER TABLE `tblbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenquiry`
--

LOCK TABLES `tblenquiry` WRITE;
/*!40000 ALTER TABLE `tblenquiry` DISABLE KEYS */;
INSERT INTO `tblenquiry` VALUES (1,'anuj','anuj.lpu1@gmail.com','2354235235','The standard Lorem Ipsum passage, used since the 1500s','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2017-05-13 22:23:53',1),(2,'efgegter','terterte@gmail.com','3454353453','The standard Lorem Ipsum passage','nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup','2017-05-13 22:27:00',1),(3,'wertyu','werty@gmail.com','9016666617','asdfghj','sdfghjlsdfhu','2018-12-15 06:02:26',1);
/*!40000 ALTER TABLE `tblenquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpages`
--

LOCK TABLES `tblpages` WRITE;
/*!40000 ALTER TABLE `tblpages` DISABLE KEYS */;
INSERT INTO `tblpages` VALUES (1,'terms','<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),(2,'privacy','<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),(3,'aboutus','										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test</span>'),(11,'contact','										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');
/*!40000 ALTER TABLE `tblpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `shopName` varchar(150) DEFAULT NULL,
  `shopAddress` varchar(500) DEFAULT NULL,
  `Role` varchar(7) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES (1,'Anuj kumar','1111111111','anuj@gmail.com','5c428d8875d2948607f3e3fe134d71b4',NULL,NULL,'Admin',1,'2017-05-10 10:38:17','2018-12-16 10:29:47'),(3,'sarita','9999999999','sarita@gmail.com','5c428d8875d2948607f3e3fe134d71b4',NULL,NULL,'',0,'2017-05-10 10:50:48','2019-03-03 12:00:48'),(7,'test','7676767676','test@gm.com','f925916e2754e5e03f75dd58a5733251',NULL,NULL,'',0,'2017-05-10 10:54:56','2019-03-03 12:07:09'),(8,'Anuj kumar','9999999999','demo@gmail.com','f925916e2754e5e03f75dd58a5733251',NULL,NULL,'',1,'2017-05-14 07:17:44','2019-03-03 12:00:36'),(9,'XYZabc','3333333333','xyz@gmail.com','f925916e2754e5e03f75dd58a5733251',NULL,NULL,'',1,'2017-05-14 07:25:13','2019-03-03 11:44:01'),(10,'Anuj Kumar','4543534534','demo@test.com','f925916e2754e5e03f75dd58a5733251',NULL,NULL,'',1,'2017-05-14 07:43:23','2019-03-03 11:44:01'),(11,'XYZ','8888888888','abc@g.com','f925916e2754e5e03f75dd58a5733251',NULL,NULL,'',1,'2017-05-14 07:54:32','2019-03-03 11:44:01'),(12,'qwerty','9874563210','denish@gmail.com','d8578edf8458ce06fbc5bb76a58c5ca4',NULL,NULL,'Seller',1,'2018-09-16 14:08:10','2018-12-16 12:53:17'),(13,'asdfgh','1234567890','asdfgh@gmail.com','b427ebd39c845eb5417b7f7aaf1f9724',NULL,NULL,'User',1,'2018-09-16 14:15:28','2019-03-03 11:44:01'),(14,'Denish','9016666617','vasumakwana02@gmail.com','2c87dedeed26a82beaea2bc760707022',NULL,NULL,'User',1,'2018-10-19 13:03:43','2019-03-02 16:16:40'),(15,'asdfgh xcfbhj','9016666617','anuj1@gmail.com','a3ad6b5902e3e9279e858b6bc7c2fd5c',NULL,'','User',1,'2018-12-15 06:34:03','2019-03-03 11:44:01'),(16,'Denish','9016666617','d@d.com','202cb962ac59075b964b07152d234b70','Replex Plastic','Ahmedabad, India','Admin',1,'2018-12-16 10:06:41','2019-03-03 11:05:15'),(17,'edrghj','9514252525','xcvbn@g.com','827ccb0eea8a706c4c34a16891f84e7b',NULL,NULL,'User',1,'2018-12-16 11:05:11','2018-12-16 11:05:11'),(18,'xcvb','9016666661','xcvb@ghj.om','827ccb0eea8a706c4c34a16891f84e7b',NULL,NULL,'Seller',1,'2018-12-16 11:05:39','2018-12-16 12:53:35'),(19,'qwerty','9999999999','asdf@cvb.com','202cb962ac59075b964b07152d234b70','','','User',1,'2019-03-03 10:54:54','2019-03-03 11:11:57'),(20,'zxcvb','1234567890','sdfgh@fgh.com','b427ebd39c845eb5417b7f7aaf1f9724','sdfg','ertyu','Seller',1,'2019-03-03 10:56:04','2019-03-03 10:56:35');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bms'
--

--
-- Dumping routines for database 'bms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-03 17:42:06
