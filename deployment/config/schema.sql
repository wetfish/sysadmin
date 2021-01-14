CREATE DATABASE /*!32312 IF NOT EXISTS*/ `danger`;
USE `danger`;

CREATE TABLE IF NOT EXISTS `Posts` (
  `Hash` varchar(32) NOT NULL,
  `Author` varchar(32) NOT NULL,
  `Content` longtext NOT NULL,
  `Time` int(10) NOT NULL,
  PRIMARY KEY  (`Hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `click`;
USE `click`;


-- MySQL dump 10.13  Distrib 5.1.73, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: click
-- ------------------------------------------------------
-- Server version	5.1.73-1-log

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
-- Temporary table structure for view `BiggestPages`
--

DROP TABLE IF EXISTS `BiggestPages`;
/*!50001 DROP VIEW IF EXISTS `BiggestPages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `BiggestPages` (
 `ID` tinyint NOT NULL,
  `Page` tinyint NOT NULL,
  `Time` tinyint NOT NULL,
  `IP` tinyint NOT NULL,
  `Data` tinyint NOT NULL,
  `Deleted` tinyint NOT NULL,
  `LENGTH(``Data``)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Page` varchar(255) NOT NULL,
  `Time` int(10) NOT NULL,
  `IP` varchar(32) NOT NULL,
  `Data` longtext NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Deleted` (`Deleted`),
  KEY `Page` (`Page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `BiggestPages`
--

/*!50001 DROP TABLE IF EXISTS `BiggestPages`*/;
/*!50001 DROP VIEW IF EXISTS `BiggestPages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `BiggestPages` AS select `Pages`.`ID` AS `ID`,`Pages`.`Page` AS `Page`,`Pages`.`Time` AS `Time`,`Pages`.`IP` AS `IP`,`Pages`.`Data` AS `Data`,`Pages`.`Deleted` AS `Deleted`,length(`Pages`.`Data`) AS `LENGTH(``Data``)` from `Pages` where (`Pages`.`Deleted` = '0') order by length(`Pages`.`Data`) desc limit 0,50 */;
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

-- Dump completed on 2015-01-23  2:35:09

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wiki`;
USE `wiki`;

-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wiki
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb8u1

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


DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Time` int(10) NOT NULL,
  `Score` int(10) NOT NULL,
  `Account` varchar(32) NOT NULL,
  `Original URL` varchar(255) NOT NULL,
  `File` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki Searches`
--

DROP TABLE IF EXISTS `Wiki Searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki Searches` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Time` int(10) NOT NULL,
  `Results` int(10) NOT NULL,
  `Search` varchar(255) NOT NULL,
  `IP` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki_Accounts`
--

DROP TABLE IF EXISTS `Wiki_Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki_Accounts` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Verification` varchar(10) NOT NULL,
  `Verified` int(1) NOT NULL,
  `EditTime` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki_Edits`
--

DROP TABLE IF EXISTS `Wiki_Edits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki_Edits` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageID` int(10) NOT NULL,
  `AccountID` int(10) NOT NULL,
  `EditTime` int(10) NOT NULL,
  `Size` int(10) NOT NULL,
  `Tags` int(11) NOT NULL,
  `TagList` varchar(255) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Archived` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki_Pages`
--

DROP TABLE IF EXISTS `Wiki_Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki_Pages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Views` int(11) NOT NULL,
  `Path` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Edits` text NOT NULL,
  `EditTime` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Views` (`Views`),
  KEY `Path_2` (`Path`),
  FULLTEXT KEY `Path` (`Path`,`Title`,`Content`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki_Tag_Statistics`
--

DROP TABLE IF EXISTS `Wiki_Tag_Statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki_Tag_Statistics` (
  `statisticsID` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(64) NOT NULL,
  `count` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`statisticsID`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Wiki_Tags`
--

DROP TABLE IF EXISTS `Wiki_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wiki_Tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `pageID` int(11) NOT NULL,
  `tag` varchar(64) NOT NULL,
  PRIMARY KEY (`tagID`),
  KEY `pageID` (`pageID`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-17 23:48:32
