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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `online`;
USE `online`;


-- MySQL dump 10.16  Distrib 10.1.41-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wfo3
-- ------------------------------------------------------
-- Server version	10.1.41-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `smf_admin_info_files`
--

DROP TABLE IF EXISTS `smf_admin_info_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_admin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_admin_info_files`
--

LOCK TABLES `smf_admin_info_files` WRITE;
/*!40000 ALTER TABLE `smf_admin_info_files` DISABLE KEYS */;
INSERT INTO `smf_admin_info_files` VALUES (1,'current-version.js','/smf/','version=%3$s','window.smfVersion = \"SMF 2.0.17\";','text/javascript'),(2,'detailed-version.js','/smf/','language=%1$s&version=%3$s','window.smfVersions = {\n	\'SMF\': \'SMF 2.0.17\',\n	\'SourcesAdmin.php\': \'2.0.16\',\n	\'SourcesAgreement.php\': \'2.0.16\',\n	\'SourcesBoardIndex.php\': \'2.0\',\n	\'SourcesCalendar.php\': \'2.0.12\',\n	\'SourcesClass-CurlFetchWeb.php\': \'2.0.16\',\n	\'SourcesClass-Graphics.php\': \'2.0\',\n	\'SourcesClass-Package.php\': \'2.0.8\',\n	\'SourcesDbExtra-mysql.php\': \'2.0.15\',\n	\'SourcesDbExtra-postgresql.php\': \'2.0.15\',\n	\'SourcesDbExtra-sqlite.php\': \'2.0.15\',\n	\'SourcesDbPackages-mysql.php\': \'2.0.15\',\n	\'SourcesDbPackages-postgresql.php\': \'2.0.10\',\n	\'SourcesDbPackages-sqlite.php\': \'2.0\',\n	\'SourcesDbSearch-mysql.php\': \'2.0\',\n	\'SourcesDbSearch-postgresql.php\': \'2.0.7\',\n	\'SourcesDbSearch-sqlite.php\': \'2.0.7\',\n	\'SourcesDisplay.php\': \'2.0.12\',\n	\'SourcesDumpDatabase.php\': \'2.0\',\n	\'SourcesErrors.php\': \'2.0.16\',\n	\'SourcesGroups.php\': \'2.0.16\',\n	\'SourcesHelp.php\': \'2.0.16\',\n	\'SourcesKarma.php\': \'2.0\',\n	\'SourcesLoad.php\': \'2.0.17\',\n	\'SourcesLockTopic.php\': \'2.0\',\n	\'SourcesLogInOut.php\': \'2.0.14\',\n	\'SourcesManageAttachments.php\': \'2.0.12\',\n	\'SourcesManageBans.php\': \'2.0\',\n	\'SourcesManageBoards.php\': \'2.0\',\n	\'SourcesManageCalendar.php\': \'2.0\',\n	\'SourcesManageErrors.php\': \'2.0.4\',\n	\'SourcesManageMail.php\': \'2.0\',\n	\'SourcesManageMaintenance.php\': \'2.0.16\',\n	\'SourcesManageMembergroups.php\': \'2.0.7\',\n	\'SourcesManageMembers.php\': \'2.0.15\',\n	\'SourcesManageNews.php\': \'2.0.16\',\n	\'SourcesManagePaid.php\': \'2.0.12\',\n	\'SourcesManagePermissions.php\': \'2.0\',\n	\'SourcesManagePosts.php\': \'2.0.12\',\n	\'SourcesManageRegistration.php\': \'2.0.16\',\n	\'SourcesManageScheduledTasks.php\': \'2.0\',\n	\'SourcesManageSearch.php\': \'2.0.16\',\n	\'SourcesManageSearchEngines.php\': \'2.0\',\n	\'SourcesManageServer.php\': \'2.0.16\',\n	\'SourcesManageSettings.php\': \'2.0.16\',\n	\'SourcesManageSmileys.php\': \'2.0\',\n	\'SourcesMemberlist.php\': \'2.0.12\',\n	\'SourcesMessageIndex.php\': \'2.0.2\',\n	\'SourcesModerationCenter.php\': \'2.0.12\',\n	\'SourcesModlog.php\': \'2.0.16\',\n	\'SourcesMoveTopic.php\': \'2.0\',\n	\'SourcesNews.php\': \'2.0.17\',\n	\'SourcesNotify.php\': \'2.0.16\',\n	\'SourcesPackageGet.php\': \'2.0.13\',\n	\'SourcesPackages.php\': \'2.0.12\',\n	\'SourcesPersonalMessage.php\': \'2.0.16\',\n	\'SourcesPoll.php\': \'2.0.16\',\n	\'SourcesPost.php\': \'2.0.16\',\n	\'SourcesPostModeration.php\': \'2.0\',\n	\'SourcesPrintpage.php\': \'2.0\',\n	\'SourcesProfile-Actions.php\': \'2.0.14\',\n	\'SourcesProfile-Modify.php\': \'2.0.16\',\n	\'SourcesProfile-View.php\': \'2.0.14\',\n	\'SourcesProfile.php\': \'2.0.16\',\n	\'SourcesQueryString.php\': \'2.0.16\',\n	\'SourcesRecent.php\': \'2.0.16\',\n	\'SourcesRegister.php\': \'2.0.16\',\n	\'SourcesReminder.php\': \'2.0.14\',\n	\'SourcesRemoveTopic.php\': \'2.0.12\',\n	\'SourcesRepairBoards.php\': \'2.0\',\n	\'SourcesReports.php\': \'2.0\',\n	\'SourcesSSI.php\': \'2.0.17\',\n	\'SourcesScheduledTasks.php\': \'2.0.16\',\n	\'SourcesSearch.php\': \'2.0.9\',\n	\'SourcesSearchAPI-Custom.php\': \'2.0.15\',\n	\'SourcesSearchAPI-Fulltext.php\': \'2.0.16\',\n	\'SourcesSearchAPI-Standard.php\': \'2.0\',\n	\'SourcesSecurity.php\': \'2.0.16\',\n	\'SourcesSendTopic.php\': \'2.0.15\',\n	\'SourcesSplitTopics.php\': \'2.0.14\',\n	\'SourcesStats.php\': \'2.0.15\',\n	\'SourcesSubs-Admin.php\': \'2.0.16\',\n	\'SourcesSubs-Auth.php\': \'2.0.16\',\n	\'SourcesSubs-BoardIndex.php\': \'2.0.16\',\n	\'SourcesSubs-Boards.php\': \'2.0.15\',\n	\'SourcesSubs-Calendar.php\': \'2.0\',\n	\'SourcesSubs-Categories.php\': \'2.0\',\n	\'SourcesSubs-Charset.php\': \'2.0.12\',\n	\'SourcesSubs-Compat.php\': \'2.0\',\n	\'SourcesSubs-Db-mysql.php\': \'2.0.16\',\n	\'SourcesSubs-Db-postgresql.php\': \'2.0.4\',\n	\'SourcesSubs-Db-sqlite.php\': \'2.0.16\',\n	\'SourcesSubs-Editor.php\': \'2.0.11\',\n	\'SourcesSubs-Graphics.php\': \'2.0.16\',\n	\'SourcesSubs-List.php\': \'2.0\',\n	\'SourcesSubs-Membergroups.php\': \'2.0\',\n	\'SourcesSubs-Members.php\': \'2.0.16\',\n	\'SourcesSubs-MembersOnline.php\': \'2.0.12\',\n	\'SourcesSubs-Menu.php\': \'2.0.12\',\n	\'SourcesSubs-MessageIndex.php\': \'2.0\',\n	\'SourcesSubs-OpenID.php\': \'2.0.11\',\n	\'SourcesSubs-Package.php\': \'2.0.17\',\n	\'SourcesSubs-Post.php\': \'2.0.16\',\n	\'SourcesSubs-Recent.php\': \'2.0\',\n	\'SourcesSubs-Sound.php\': \'2.0.16\',\n	\'SourcesSubs.php\': \'2.0.16\',\n	\'SourcesSubscriptions-PayPal.php\': \'2.0.12\',\n	\'SourcesThemes.php\': \'2.0.16\',\n	\'SourcesViewQuery.php\': \'2.0\',\n	\'SourcesWho.php\': \'2.0.16\',\n	\'SourcesXml.php\': \'2.0\',\n	\'Sourcessubscriptions.php\': \'2.0.12\',\n	\'DefaultAdmin.template.php\': \'2.0.16\',\n	\'DefaultAgreement.template.php\': \'2.0.16\',\n	\'DefaultBoardIndex.template.php\': \'2.0\',\n	\'DefaultCalendar.template.php\': \'2.0\',\n	\'DefaultCompat.template.php\': \'2.0\',\n	\'DefaultDisplay.template.php\': \'2.0.16\',\n	\'DefaultErrors.template.php\': \'2.0\',\n	\'DefaultGenericControls.template.php\': \'2.0\',\n	\'DefaultGenericList.template.php\': \'2.0\',\n	\'DefaultGenericMenu.template.php\': \'2.0\',\n	\'DefaultHelp.template.php\': \'2.0.6\',\n	\'DefaultLogin.template.php\': \'2.0.16\',\n	\'DefaultManageAttachments.template.php\': \'2.0\',\n	\'DefaultManageBans.template.php\': \'2.0\',\n	\'DefaultManageBoards.template.php\': \'2.0\',\n	\'DefaultManageCalendar.template.php\': \'2.0\',\n	\'DefaultManageMail.template.php\': \'2.0\',\n	\'DefaultManageMaintenance.template.php\': \'2.0\',\n	\'DefaultManageMembergroups.template.php\': \'2.0\',\n	\'DefaultManageMembers.template.php\': \'2.0\',\n	\'DefaultManageNews.template.php\': \'2.0.16\',\n	\'DefaultManagePaid.template.php\': \'2.0\',\n	\'DefaultManagePermissions.template.php\': \'2.0.9\',\n	\'DefaultManageScheduledTasks.template.php\': \'2.0\',\n	\'DefaultManageSearch.template.php\': \'2.0\',\n	\'DefaultManageSmileys.template.php\': \'2.0\',\n	\'DefaultMemberlist.template.php\': \'2.0.16\',\n	\'DefaultMessageIndex.template.php\': \'2.0\',\n	\'DefaultModerationCenter.template.php\': \'2.0\',\n	\'DefaultMoveTopic.template.php\': \'2.0\',\n	\'DefaultNotify.template.php\': \'2.0.16\',\n	\'DefaultPackages.template.php\': \'2.0\',\n	\'DefaultPersonalMessage.template.php\': \'2.0.16\',\n	\'DefaultPoll.template.php\': \'2.0\',\n	\'DefaultPost.template.php\': \'2.0.10\',\n	\'DefaultPrintpage.template.php\': \'2.0\',\n	\'DefaultProfile.template.php\': \'2.0.16\',\n	\'DefaultRecent.template.php\': \'2.0\',\n	\'DefaultRegister.template.php\': \'2.0.16\',\n	\'DefaultReminder.template.php\': \'2.0\',\n	\'DefaultReports.template.php\': \'2.0\',\n	\'DefaultSearch.template.php\': \'2.0.10\',\n	\'DefaultSendTopic.template.php\': \'2.0\',\n	\'DefaultSettings.template.php\': \'2.0\',\n	\'DefaultSplitTopics.template.php\': \'2.0\',\n	\'DefaultStats.template.php\': \'2.0\',\n	\'DefaultThemes.template.php\': \'2.0.12\',\n	\'DefaultWho.template.php\': \'2.0\',\n	\'DefaultWireless.template.php\': \'2.0.16\',\n	\'DefaultXml.template.php\': \'2.0.16\',\n	\'Defaultindex.template.php\': \'2.0.14\',\n	\'TemplateAdmin.template.php\': \'2.0.16\',\n	\'TemplateAgreement.template.php\': \'2.0.16\',\n	\'TemplateBoardIndex.template.php\': \'2.0\',\n	\'TemplateCalendar.template.php\': \'2.0\',\n	\'TemplateCompat.template.php\': \'2.0\',\n	\'TemplateDisplay.template.php\': \'2.0.16\',\n	\'TemplateErrors.template.php\': \'2.0\',\n	\'TemplateGenericControls.template.php\': \'2.0\',\n	\'TemplateGenericList.template.php\': \'2.0\',\n	\'TemplateGenericMenu.template.php\': \'2.0\',\n	\'TemplateHelp.template.php\': \'2.0.6\',\n	\'TemplateLogin.template.php\': \'2.0.16\',\n	\'TemplateManageAttachments.template.php\': \'2.0\',\n	\'TemplateManageBans.template.php\': \'2.0\',\n	\'TemplateManageBoards.template.php\': \'2.0\',\n	\'TemplateManageCalendar.template.php\': \'2.0\',\n	\'TemplateManageMail.template.php\': \'2.0\',\n	\'TemplateManageMaintenance.template.php\': \'2.0\',\n	\'TemplateManageMembergroups.template.php\': \'2.0\',\n	\'TemplateManageMembers.template.php\': \'2.0\',\n	\'TemplateManageNews.template.php\': \'2.0.16\',\n	\'TemplateManagePaid.template.php\': \'2.0\',\n	\'TemplateManagePermissions.template.php\': \'2.0.9\',\n	\'TemplateManageScheduledTasks.template.php\': \'2.0\',\n	\'TemplateManageSearch.template.php\': \'2.0\',\n	\'TemplateManageSmileys.template.php\': \'2.0\',\n	\'TemplateMemberlist.template.php\': \'2.0.16\',\n	\'TemplateMessageIndex.template.php\': \'2.0\',\n	\'TemplateModerationCenter.template.php\': \'2.0\',\n	\'TemplateMoveTopic.template.php\': \'2.0\',\n	\'TemplateNotify.template.php\': \'2.0.16\',\n	\'TemplatePackages.template.php\': \'2.0\',\n	\'TemplatePersonalMessage.template.php\': \'2.0.16\',\n	\'TemplatePoll.template.php\': \'2.0\',\n	\'TemplatePost.template.php\': \'2.0.10\',\n	\'TemplatePrintpage.template.php\': \'2.0\',\n	\'TemplateProfile.template.php\': \'2.0.16\',\n	\'TemplateRecent.template.php\': \'2.0\',\n	\'TemplateRegister.template.php\': \'2.0.16\',\n	\'TemplateReminder.template.php\': \'2.0\',\n	\'TemplateReports.template.php\': \'2.0\',\n	\'TemplateSearch.template.php\': \'2.0.10\',\n	\'TemplateSendTopic.template.php\': \'2.0\',\n	\'TemplateSettings.template.php\': \'2.0\',\n	\'TemplateSplitTopics.template.php\': \'2.0\',\n	\'TemplateStats.template.php\': \'2.0\',\n	\'TemplateThemes.template.php\': \'2.0.12\',\n	\'TemplateWho.template.php\': \'2.0\',\n	\'TemplateWireless.template.php\': \'2.0.16\',\n	\'TemplateXml.template.php\': \'2.0.16\',\n	\'Templateindex.template.php\': \'2.0.14\',\n};\n\nwindow.smfLanguageVersions = {\n	\'Admin\': \'2.0.16\',\n	\'Agreement\': \'2.0.16\',\n	\'EmailTemplates\': \'2.0.16\',\n	\'Errors\': \'2.0.16\',\n	\'Help\': \'2.0.16\',\n	\'index\': \'2.0.16\',\n	\'Install\': \'2.0.16\',\n	\'Login\': \'2.0.16\',\n	\'ManageBoards\': \'2.0\',\n	\'ManageCalendar\': \'2.0\',\n	\'ManageMail\': \'2.0\',\n	\'ManageMaintenance\': \'2.0\',\n	\'ManageMembers\': \'2.0\',\n	\'ManagePaid\': \'2.0.10\',\n	\'ManagePermissions\': \'2.0\',\n	\'ManageScheduledTasks\': \'2.0\',\n	\'ManageSettings\': \'2.0.16\',\n	\'ManageSmileys\': \'2.0\',\n	\'Manual\': \'2.0\',\n	\'ModerationCenter\': \'2.0\',\n	\'Modifications\': \'2.0\',\n	\'Modlog\': \'2.0.16\',\n	\'Packages\': \'2.0\',\n	\'PersonalMessage\': \'2.0\',\n	\'Post\': \'2.0\',\n	\'Profile\': \'2.0.16\',\n	\'Reports\': \'2.0\',\n	\'Search\': \'2.0\',\n	\'Settings\': \'2.0\',\n	\'Stats\': \'2.0\',\n	\'Themes\': \'2.0\',\n	\'Who\': \'2.0.16\',\n	\'Wireless\': \'2.0\'\n};\n','text/javascript'),(3,'latest-news.js','/smf/','language=%1$s&format=%2$s','\nwindow.smfAnnouncements = [\n	{\n		subject: \'SMF 2.0.17 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=571067.0\',\n		time: \'December 30, 2019, 07:43:24 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.17 fixes a bug in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some warning messages that could appear when using SSI.php. We recommend updating as soon as possible.\'\n	},\n	{\n		subject: \'SMF 2.0.16 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=570986.0\',\n		time: \'December 27, 2019, 07:44:07 PM\',\n		author: \'Sesquipedalian\',\n		message: \'SMF 2.0.16 fixes some important security issues and adds support for the EU\\\'s General Data Protection Regulation (GDPR) requirements.\'\n	},\n	{\n		subject: \'SMF 2.1 RC2 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=566669.0\',\n		time: \'March 30, 2019, 12:27:45 PM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is pleased to announce SMF 2.1 RC2. This second release candidate brings a number of bugfixes and improvements over SMF 2.1 RC1.\'\n	},\n	{\n		subject: \'SMF 2.1 RC1 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=564881.0\',\n		time: \'February 04, 2019, 08:02:47 PM\',\n		author: \'Sesquipedalian\',\n		message: \'Simple Machines is proud to announce the first release candidate of the next version of SMF, which contains many bugfixes and a number of new features since 2.1 Beta 3.\'\n	},\n	{\n		subject: \'SMF 2.0.15 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=557176.0\',\n		time: \'November 19, 2017, 09:03:58 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.14 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 3 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=554301.0\',\n		time: \'May 31, 2017, 09:21:59 PM\',\n		author: \'Colin\',\n		message: \'Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.\'\n	},\n	{\n		subject: \'SMF 2.0.14 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=553855.0\',\n		time: \'May 14, 2017, 05:23:46 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.13 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=551061.0\',\n		time: \'January 04, 2017, 07:00:00 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.12 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=548871.0\',\n		time: \'September 27, 2016, 07:00:00 AM\',\n		author: \'CoreISP\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.11 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=539888.0\',\n		time: \'September 18, 2015, 10:56:19 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=538198.0\',\n		time: \'July 16, 2015, 05:45:30 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!\'\n	},\n	{\n		subject: \'SMF 2.0.10 and 1.1.21 have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=535828.0\',\n		time: \'April 24, 2015, 10:09:00 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=530233.0\',\n		time: \'November 20, 2014, 07:40:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!\'\n	},\n	{\n		subject: \'SMF 2.0.9 and 1.1.20 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=528448.0\',\n		time: \'October 02, 2014, 07:13:50 PM\',\n		author: \'Oldiesmann\',\n		message: \'Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.8 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=524016.0\',\n		time: \'June 18, 2014, 10:11:32 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.7 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=517205.0\',\n		time: \'January 20, 2014, 09:48:07 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.6 and 1.1.19 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=512964.0\',\n		time: \'October 22, 2013, 09:00:00 AM\',\n		author: \'Illori\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.5 security patches has been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=509417.0\',\n		time: \'August 12, 2013, 08:34:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.4 and 1.1.18 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=496403.0\',\n		time: \'February 01, 2013, 05:27:00 PM\',\n		author: \'emanuele\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=492786.0\',\n		time: \'December 16, 2012, 11:41:05 PM\',\n		author: \'emanuele\',\n		message: \'Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.2 and 1.1.16 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=463103.0\',\n		time: \'December 23, 2011, 12:41:31 AM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.1 and 1.1.15 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=452888.0\',\n		time: \'September 18, 2011, 04:48:18 PM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Gold\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'June 04, 2011, 05:00:00 PM\',\n		author: \'Norv\',\n		message: \'SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.\'\n	},\n	{\n		subject: \'SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'February 11, 2011, 03:16:35 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC4 and SMF 1.1.12 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=407256.0\',\n		time: \'November 01, 2010, 12:14:21 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC3 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=369616.0\',\n		time: \'March 08, 2010, 06:03:11 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.11 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=351341.0\',\n		time: \'December 01, 2009, 05:59:19 PM\',\n		author: \'SleePy\',\n		message: \'A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.\'\n	},\n	{\n		subject: \'SMF 2.0 RC2 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=346813.0\',\n		time: \'November 08, 2009, 07:10:03 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.10 and 2.0 RC1.2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=324169.0\',\n		time: \'July 14, 2009, 07:05:19 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.9 and 2.0 RC1-1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=311899.0\',\n		time: \'May 20, 2009, 08:40:41 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 RC1 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290609.0\',\n		time: \'February 04, 2009, 11:10:01 PM\',\n		author: \'Compuart\',\n		message: \'Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.8\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290608.0\',\n		time: \'February 04, 2009, 11:08:44 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.7\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=272861.0\',\n		time: \'November 07, 2008, 02:15:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.6\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=260145.0\',\n		time: \'September 07, 2008, 04:38:05 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.5\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=236816.0\',\n		time: \'April 20, 2008, 09:56:14 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 3 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=228921.0\',\n		time: \'March 17, 2008, 03:20:21 PM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.4\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=196380.0\',\n		time: \'September 24, 2007, 09:07:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 1 Released to Charter Members\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=190812.0\',\n		time: \'August 25, 2007, 07:29:25 AM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\\'s new\'\n	},\n	{\n		subject: \'SMF 1.1.3\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=178757.0\',\n		time: \'June 24, 2007, 09:52:40 PM\',\n		author: \'Thantos\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.2\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=149553.0\',\n		time: \'February 11, 2007, 08:35:45 AM\',\n		author: \'Grudge\',\n		message: \'A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.\'\n	},\n	{\n		subject: \'SMF 1.1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=134971.0\',\n		time: \'December 17, 2006, 09:33:41 AM\',\n		author: \'Grudge\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=131008.0\',\n		time: \'December 02, 2006, 02:53:16 PM\',\n		author: \'Grudge\',\n		message: \'SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.\'\n	}\n];\nif (window.smfVersion < \"SMF 2.0\")\n{\n	window.smfUpdateNotice = \'SMF 2.0 Final has now been released. To take advantage of the improvements available in SMF 2.0 we recommend upgrading as soon as is practical.\';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById(\"yourVersion\"))\n{\n	var yourVersion = getInnerHTML(document.getElementById(\"yourVersion\"));\n	if (yourVersion == \"SMF 1.0.4\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.5\" || yourVersion == \"SMF 1.0.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.7\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.8\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.10\" || yourVersion == \"SMF 1.1.2\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.11\" || yourVersion == \"SMF 1.1.3\" || yourVersion == \"SMF 2.0 beta 1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.12\" || yourVersion == \"SMF 1.1.4\" || yourVersion == \"SMF 2.0 beta 3 Public\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip\";\n	else if (yourVersion == \"SMF 1.0.13\" || yourVersion == \"SMF 1.1.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.14\" || yourVersion == \"SMF 1.1.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.15\" || yourVersion == \"SMF 1.1.7\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.16\" || yourVersion == \"SMF 1.1.8\" || yourVersion == \"SMF 2.0 RC1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip\";\n	else if (yourVersion == \"SMF 1.0.17\" || yourVersion == \"SMF 1.1.9\" || yourVersion == \"SMF 2.0 RC1-1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip\";\n	else if (yourVersion == \"SMF 1.0.18\" || yourVersion == \"SMF 1.1.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.19\" || yourVersion == \"SMF 1.1.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz\";\n	}\n	else if (yourVersion == \"SMF 1.0.20\" || yourVersion == \"SMF 1.1.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.15\" || yourVersion == \"SMF 1.0.21\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.16\" || yourVersion == \"SMF 1.0.22\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.17\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.2\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.3\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.4\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.18\" || yourVersion == \"SMF 2.0.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.19\" || yourVersion == \"SMF 2.0.8\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.20\" || yourVersion == \"SMF 2.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip\";\n	else if (yourVersion == \"SMF 2.0.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz\";\n	else if (yourVersion == \"SMF 2.0.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.13\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.15\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.16\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/anyone we may have missed/, \'<span title=\"And you thought you had escaped the credits, hadn\\\'t you, Zef Hemel?\">anyone we may have missed</span>\'));\n','text/javascript'),(4,'latest-packages.js','/smf/','language=%1$s&version=%3$s','var actionurl = \'?action=admin;area=packages;sa=download;get;package=\';if (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nif (typeof(window.smfVersion) != \"undefined\")\n{\n	var version = window.smfVersion;\n\n	// We might need this...\n	var smf_modificationInfo = {};\n	\n	switch (version)\n	{\n		case \"SMF 2.0 Beta 1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 Beta 3 Public\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1-1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC4\":\n			if (typeof(window.smfRC4patch) == \"undefined\")\n				window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			else\n				showLatestPackages();\n			break;\n		case \"SMF 2.0\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.1\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.2\":\n			window.smfLatestPackages = \'A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.3\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.4\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.5\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.5 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.6\":\n			window.smfLatestPackages = \'PHP 5.5 compatibility issues and several other bugs have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.7.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.7.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.7\":\n			window.smfLatestPackages = \'Memory issues encountered with SMF 2.0.7, some MySQL 5.6 compatibility issues and a rare bug with the memberlist search feature have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.8.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.8.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.8\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.8 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.9\":\n			window.smfLatestPackages = \'A few bugs in SMF 2.0.9 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.10\":\n			window.smfLatestPackages = \'A security vulnerability has been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.11\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.11 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.12\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.12 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.13\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.13 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.14\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.14 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.15\":\n			window.smfLatestPackages = \'SMF 2.0.16 fixes some important security issues and adds support for the EU\\\'s General Data Protection Regulation (GDPR) requirements. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.16.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.16\":\n			window.smfLatestPackages = \'SMF 2.0.17 fixes a bug introduced in 2.0.16 that could cause significant performance issues when retrieving RSS feeds, and fixes some annoying warning messages that could appear when using SSI.php. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.17.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.17.<br /><br />If you have any problems applying it, you can use the \"Large upgrade\" posted on the <a href=\"https://download.simplemachines.org/\">Download</a> page - although, any modifications you have installed will need to be reinstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php\">forum</a> if you need more help.\';\n			break;\n        default:\n			showLatestPackages();\n			break;\n	}\n}\nelse\n{\n	window.smfLatestPackages = \'For the package manager to function properly, please upgrade to the latest version of SMF.\';\n}\n\n// This function shows latest mods when there isn\'t anything else to display\nfunction showLatestPackages()\n{\n	smf_modificationInfo = {\n	\n		4251: {\n			name: \'Invitation System 1.3\',\n			versions: [\'95\'],\n			desc: \'<div align=\"center\"><span style=\"color: brown;\" class=\"bbc_color\"><span style=\"font-size: 20pt;\" class=\"bbc_size\"><strong>Invitation System</strong></span></span><br /><span style=\"color: brown;\" class=\"bbc_color\">Invitation system to your forum | Version 1.3</span><br />Original Author: <a href=\"https://www.simplemachines.org/community/index.php?topic=391962.0\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">hadesflames</a> | <a href=\"https://creativecommons.org/licenses/by-nc-sa/3.0/legalcode\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">License</a></div><br /><span style=\"color: teal;\" class=\"bbc_color\"><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>Introduction</strong></span></span><br /><hr />The referral part adds a field to a user&#039;s profile that shows who invited that user. For other members to see this field, they need to have permission to do so, which can be granted to different member groups in the permissions section of the admin panel. Regardless of that permission, users will be able to see who invited them.<br /><br />The gift is a unique feature that allows members to send their own gifts to other members of the forum. In order for a member to be able to gift their invites to other members, they need to have the appropriate permission, same as the referral permission. If you don&#039;t want to use this feature, simply don&#039;t give anyone the permission.<br /><br /><span style=\"color: teal;\" class=\"bbc_color\"><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>Language</strong></span></span><br /><hr />Is available in:<br /><ul class=\"bbc_list\"><li>English</li><li>Spanish Latin</li><li>Spanish Es</li><li>Turkish</li></ul><br /><span style=\"color: teal;\" class=\"bbc_color\"><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>Compatibility</strong></span></span><br /><hr />Prepared to work with the branch 2.0.x of SMF, it is tested only with the default theme. Also you do not have to worry about damaging the source code of your installation because this modification uses hooks.<br /><br /><span style=\"color: teal;\" class=\"bbc_color\"><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong>License</strong></span></span><br /><hr />This mod is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported license. If you plan on distributing this mod in any way, there must be a link back to this page unless otherwise stated by a written agreement with the author. For full license details, visit this page: <br /><br /><a href=\"https://creativecommons.org/licenses/by-nc-sa/3.0/legalcode\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://creativecommons.org/licenses/by-nc-sa/3.0/legalcode</a> <br /><br />or for a summary, visit this page, but take note of the disclaimer: <br /><br /><a href=\"https://creativecommons.org/licenses/by-nc-sa/3.0/\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://creativecommons.org/licenses/by-nc-sa/3.0/</a>\',\n			file: \'Invitation System v1.3.zip\'\n		},\n		4250: {\n			name: \'Track IP on ip-adress.com 1.2\',\n			versions: [\'95\', \'93\'],\n			desc: \'<hr /><div align=\"center\"><span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>Track_IP_on_ip-adress.com</strong></span></span><br /><strong>By Lesmond</strong><br /></div><hr /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Install Requirements</span></span></strong></span><br />This mod was tested on SMF 2.0.17, as well as SMF 2.1 RC* and up. SMF 1.x is not and will not be supported.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Introduction</span></span></strong></span><br />This mod adds a new IP lookup to your forum, to the &quot;Look up IP on a regional whois-server&quot; page.\',\n			file: \'ip-adress.com-Tracker.zip\'\n		},\n		4249: {\n			name: \'Stack Trace 1.0\',\n			versions: [\'95\'],\n			desc: \'<span style=\"font-family: Times New Roman;\" class=\"bbc_font\"><span style=\"color: #cc6633;\" class=\"bbc_color\"><span style=\"font-size: 1.45em;\" class=\"bbc_size\"><strong>Stack Trace</strong> 1.0</span></span></span><br /><hr /><a href=\"http://opensource.org/licenses/MIT\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://camo.githubusercontent.com/d7b0ca6383644d5ac81e234f8d2249b731a1407b/687474703a2f2f696d672e736869656c64732e696f2f62616467652f6c6963656e73652d4d49542d3030393939392e737667\" alt=\"\" class=\"bbc_img\" /></a> <a href=\"https://www.paypal.me/JohnRayes\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://camo.githubusercontent.com/e03e24ac37094afa6d1d089fc32de8027e9b4988/687474703a2f2f696d672e736869656c64732e696f2f62616467652f50617950616c2d242d3030393936362e737667\" alt=\"\" class=\"bbc_img\" /></a><br /><hr />Show the backtrace in the error log<br /><br /><span style=\"font-family: Times New Roman;\" class=\"bbc_font\"><span style=\"color: #cc6633;\" class=\"bbc_color\"><span style=\"font-size: 1.35em;\" class=\"bbc_size\"><strong>Introduction:</strong></span></span></span><br /><hr />In simple terms, a stack trace is a list of the method calls that the application was in the middle of when an error was encountered.<br /><br />Tracing the call stack is important for complex codebases such as SMF because doing so helps software engineers and other developers find bugs in the program. Because of the nature of modern code syntax, and the complexity of the average project, looking for bugs can be very difficult. A stack trace is just one of many tools that can be useful in finding bugs or glitches.<br /><br />This mod works by calling <tt class=\"bbc_tt\">debug_backtrace()</tt> from <tt class=\"bbc_tt\">log_error</tt> to ask PHP to trace the call stack. The results are then serialized into a database field for viewing by the admin when the error log is opened.\',\n			file: \'stack_trace.zip\'\n		},\n		3952: {\n			name: \'Styled Maintenance Mode Message 1.4\',\n			versions: [\'80\', \'82\', \'91\', \'90\', \'93\'],\n			desc: \'<hr /><div align=\"center\"><span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>STYLED MAINTENANCE MODE MESSAGE v1.4</strong></span></span><br /><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=253913\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>By Dougiefresh</strong></a> -&gt; <a href=\"http://custom.simplemachines.org/mods/index.php?mod=3952\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Link to Mod</a><br /></div><hr /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Introduction</span></span></strong></span><br />SMF has <strong>TWO</strong> maintenance modes, as defined in <strong>Settings.php</strong> by the variable <strong>$maintenance</strong> in your forum folder.&nbsp; Setting this variable to <strong>1</strong> allows the adminstrators access to perform any necessary actions that don&#039;t require taking the database offline.&nbsp; Setting this variable to <strong>2</strong> (hardcore maintenance mode) makes the forum itself unaccessable for <strong>EVERYBODY</strong>.&nbsp; Not even adminstrators can log into the forum.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">What This Mod Changes</span></span></strong></span><br />When any Simple Machines forum is in maintenance mode (where <em>$maintenance</em> in <strong>Settings.php</strong> is set to 2), there is absolutely no CSS style to make the maintenance message look consistent with the rest of the site.&nbsp; This mod attempts to resolves this issue, using the default theme CSS, to style the maintenance mode message shown to the user.&nbsp; <br /><br /><a href=\"https://www.simplemachines.org/community/index.php?action=profile;u=318771\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Arantor</a> stated in <a href=\"https://www.simplemachines.org/community/index.php?topic=528839.msg3755027#msg3755027\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">this post</a>:<br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Quote</div></div><blockquote class=\"bbc_standard_quote\">There are two levels of maintenance mode. General maintenance mode - which shows the theme like it should, and hardcore maintenance mode, which shows a basic page.<br /><br />Considering that the ONLY time the white screen should be applicable is during upgrades - in which state even the default theme is by definition in flux and not necessarily reliable to be used<br /></blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>(Yes, there are several more lines in the post which are omitted!)<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Restrictions</span></span></strong></span><br />Since theme support has not been loaded as of this point, other themes cannot be selected within the UI at this point.&nbsp; This may change in future versions, but I doubt it.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Admin Settings</span></span></strong></span><br />There are none.&nbsp; You must uninstall this mod to remove it.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Compatibility Notes</span></span></strong></span><br />This mod was tested on SMF 2.0.9, but should work on SMF 2.1 Beta 1, as well as SMF 2.0 and up.&nbsp; SMF 1.x is not and will not be supported.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Changelog</span></span></strong></span><br />The changelog can be viewed at <a href=\"http://www.xptsp.com/board/free-modifications/styled-maintenance-mode-message/?tab=1\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">XPtsp.com</a>.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">License</span></span></strong></span><br />Copyright (c) 2015 - 2018, Douglas Orend<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br /><br />1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br /><br />2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n			file: \'Styled_Maintenance_Mode_Message_v1.4.zip\'\n		}	};\n	var smf_latestModifications = [4251, 4250, 4249];\n	\n	window.smfLatestPackages = \'\\\n		<div id=\"smfLatestPackagesWindow\"style=\"overflow: auto;\">\\\n			<h3 style=\"margin: 0; padding: 4px;\">New Packages:</h3>\\\n			<img src=\"https://www.simplemachines.org/smf/images/package.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n			<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n	\n	for (var i = 0; i < smf_latestModifications.length; i++)\n	{\n		var id_mod = smf_latestModifications[i];\n	\n		window.smfLatestPackages += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_modificationInfo[id_mod].name + \'</a></li>\';\n	}\n	\n	window.smfLatestPackages += \'\\\n			</ul>\';\n	\n	if (typeof(window.smfVersion) != \"undefined\" && (window.smfVersion < \"SMF 1.0.6\" || (window.smfVersion == \"SMF 1.1 RC2\" && !in_array(\'smf:smf-1.0.7\', window.smfInstalledPackages))))\n		window.smfLatestPackages += \'\\\n			<h3 class=\"error\" style=\"margin: 0; padding: 4px;\">Updates for SMF:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Security update (X-Forwarded-For header vulnerability)</a>\\\n			</div>\';\n	else\n		window.smfLatestPackages += \'\\\n			<h3 style=\"margin: 0; padding: 4px;\">Package of the Moment:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"javascript:smf_packagesMoreInfo(3952);void(0);\">Styled Maintenance Mode Message 1.4</a>\\\n			</div>\';\n	\n	window.smfLatestPackages += \'\\\n		</div>\';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById(\"smfLatestPackagesWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_modificationInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_modificationInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_modificationInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestPackagesWindow\")) - 10);\n}\n','text/javascript'),(5,'latest-smileys.js','/smf/','language=%1$s&version=%3$s','var actionurl = \'?action=admin;area=smileys;sa=install;set_gz=\';\nif (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nvar smf_smileysInfo = {\n\n	4233: {\n		name: \'unicode emoji for smf 1.1\',\n		versions: [\'91\', \'93\'],\n		desc: \'unicode emoji Smilies by ~ibtisam midlet<br /><br />how to install:<br />firstly to active the Smilies after instalation go to [your forum name]/admin/?area=smileys;sa=modifyset<br /><br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/1.PNG\" alt=\"\" width=\"600\" height=\"92\" class=\"bbc_img resized\" /><br />save then that go to [your forum name]/admin/?area=smileys;sa=settings;<br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/2.PNG\" alt=\"\" width=\"600\" height=\"195\" class=\"bbc_img resized\" /><br />save then then it will works <img src=\"https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif\" alt=\"&#58;&#41;\" title=\"Smiley\" class=\"smiley\" /><br /><img src=\"https://github.com/ibtisammidlet/unicode-emoji-for-smf/raw/master/3.PNG\" alt=\"\" width=\"600\" height=\"301\" class=\"bbc_img resized\" /><br /><br /><a href=\"https://justinmidlet.blogspot.com/2019/05/unicode-emoji-smilies-for-simple.html\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">unicode emoji v1.0 mod for SMF</a> is licensed under MIT and CC-BY 4.0<br /><br />emoji icons are licensed to:<br />Copyright 2019 Twitter, Inc and other contributors<br />Code licensed under the MIT License: <a href=\"http://opensource.org/licenses/MIT\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">http://opensource.org/licenses/MIT</a><br />Graphics licensed under CC-BY 4.0: <a href=\"https://creativecommons.org/licenses/by/4.0/\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://creativecommons.org/licenses/by/4.0/</a><br />&gt;&gt;<a href=\"https://twemoji.twitter.com/\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">https://twemoji.twitter.com/</a><br /><br /><br />Enjoy the Smilies :&quot;)<br /><br />change log:<br />1.1 - fixed the big size of the icon compared to the text<br />&nbsp; &nbsp; - fixed bug the previous version not working like it should do<br />&nbsp;&nbsp;&nbsp;<br />1.0 - first version\',\n		file: \'unicode emoji v1.1.zip\'\n	},\n	4099: {\n		name: \'EmojiOne 0.3.2\',\n		versions: [\'84\'],\n		desc: \'EmojiOne is not BBC but functions in the same space as BBC.<br /><br />This mod add some support for converting emoji decimal input into their hexadecimal counterpart. With the hexadecimal data this mod replaces the decimal data with the appropriate emoji from the EmojiOne CDN server.<br /><br /><strong>License</strong><br />Copyright (c) 2016, Russell Najar<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without<br />modification, are permitted provided that the following conditions are met:<br /><br />* Redistributions of source code must retain the above copyright notice, this<br />&nbsp; list of conditions and the following disclaimer.<br /><br />* Redistributions in binary form must reproduce the above copyright notice,<br />&nbsp; this list of conditions and the following disclaimer in the documentation<br />&nbsp; and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot;<br />AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE<br />IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE<br />FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL<br />DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR<br />SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER<br />CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,<br />OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE<br />OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n		file: \'SMF-EmojiOne.tar.gz\'\n	},\n	4049: {\n		name: \'Flat emoji (Twitter Emoji) 1.0.1\',\n		versions: [\'81\', \'82\'],\n		desc: \'<div align=\"center\"><strong>Flat Emoji</strong><br /><hr /><img src=\"http://img.iammichael.nl/d26d3.png\" alt=\"\" class=\"bbc_img\" /><br /><hr /><br />These flat twitter emoji will make your forum look much better, especially when you like flat design!<br />Originally made for NMOT (<a href=\"http://nmot.nl\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">http://nmot.nl</a>).</div>\',\n		file: \'FlatEmoji.zip\'\n	},\n	1072: {\n		name: \'AC in Black Smilies (OVERSIZED) 1.0\',\n		versions: [\'31\', \'81\', \'82\'],\n		desc: \'Some oversized black/silver smilies for your forum <img src=\"https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif\" alt=\"&#58;&#41;\" title=\"Smiley\" class=\"smiley\" /><br /><br />THE EXTRAS PACK BY ITSELF IS MANUAL INSTALL<br /><br />With extras:<br />58 total smilies<br />23 animated smilies<br />35 static smilies<br /><br />Without Extras:<br />43 Total smilies<br />12 animated smilies<br />31 static smilies.<br /><br />The default pack is designed to work with the original AC in Black smilies set (though this is not required or needed for these to work) <img src=\"https://static.simplemachinesweb.com/smf/smileys/default/smiley.gif\" alt=\"&#58;&#41;\" title=\"Smiley\" class=\"smiley\" /><br /><br />See them all here: <a href=\"http://www.jades-world.com/personal/oversized-ac-in-black-smilies\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">http://www.jades-world.com/personal/oversized-ac-in-black-smilies</a> (animated!)<br /><br /><br />TOO BIG? TRY THE <a href=\"http://custom.simplemachines.org/mods/index.php?mod=1043\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">NORMAL SIZED</a> set!\',\n		file: \'OversizedACinBlack_WITH_EXTRAS_PACKS.zip\'\n	},};\nvar smf_latestSmileys = [4233, 4099, 4049];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById(\"smfLatestSmileysWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_smileysInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'https://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_smileysInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_smileysInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestSmileysWindow\")) - 10);\n}\n\nwindow.smfLatestSmileys = \'\\\n	<div id=\"smfLatestSmileysWindow\" style=\"overflow: auto;\">\\\n		<img src=\"https://www.simplemachines.org/smf/images/smileys.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n		<h3 style=\"margin: 0; padding: 4px;\">Smiley of the Moment:</h3>\\\n		<div style=\"padding: 0 4px;\">\\\n			<a href=\"javascript:smf_packagesMoreInfo(1072);void(0);\">AC in Black Smilies (OVERSIZED) 1.0</a>\\\n		</div>\';\n\nwindow.smfLatestSmileys += \'\\\n		<h3 style=\"margin: 0; padding: 4px;\">New Smileys:</h3>\\\n		<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_smileysInfo[id_mod].name + \'</a></li>\';\n}\n\nwindow.smfLatestSmileys += \'\\\n		</ul>\';\n\nwindow.smfLatestSmileys += \'\\\n	</div>\';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}','text/javascript'),(6,'latest-support.js','/smf/','language=%1$s&version=%3$s','window.smfLatestSupport = \'<div style=\"font-size: 0.85em;\"><div style=\"font-weight: bold;\">SMF 2.0.17</div>This version fixes a bug in 2.0.16 that could cause significant performance issues when retrieving RSS feeds and fixes some warning messages that could appear when using SSI.php. Please <a href=\"https://download.simplemachines.org/\">try it</a> before requesting support.</div>\';\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/thank you!/, \'<span onclick=\"alert(\\\'Kupo!\\\');\">thank you!</span>\'));\n','text/javascript'),(7,'latest-themes.js','/smf/','language=%1$s&version=%3$s','\r\nvar smf_themeInfo = {\r\n	2806: {\r\n		name: \'Reseller\',\r\n		desc: \'<div align=\"center\"><a href=\"https://smftricks.com\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://smftricks.com/logos/logo.png\" alt=\"\" class=\"bbc_img\" /></a><br /><span style=\"font-size: 10pt;\" class=\"bbc_size\">Free &amp; Premium Responsive Themes for SMF</span><br /><br /><div align=\"center\"><img src=\"https://i.imgur.com/9nONUnH.png\" alt=\"\" width=\"600\" height=\"306\" class=\"bbc_img resized\" /><br /><br /><strong>Theme by <a href=\"https://smftricks.com/index.php?action=profile;u=2\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Daniiel</a>. Designed by <a href=\"https://smftricks.com/index.php?action=profile;u=1342\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Brian Casillas</a></strong><br /><br /><span style=\"font-size: 18pt;\" class=\"bbc_size\"><strong><a href=\"http://demo.smftricks.com/index.php\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Demo online</a> </strong></span></div></div>\',\r\n		file: \'Reseller.zip\',\r\n		author: \'Daniiel\'\r\n	},\r\n	2943: {\r\n		name: \'Wgame Smf 2.0 Themes\',\r\n		desc: \'<a href=\"https://ibb.co/NyY2wNL\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://i.ibb.co/6Ws06t4/wegame.jpg\" alt=\"\" width=\"600\" height=\"337\" class=\"bbc_img resized\" /></a><br /><br />Terms of use :<br />This theme is free for personal and commercial use. You are allowed to use it in your projects, change it and adapt for your purposes. You are not allowed to remove the authors copyright.<br /><br />&gt;&gt;<a href=\"http://smftheme.byethost18.com/index.php?theme=6\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Live demo</a>&lt;&lt;\',\r\n		file: \'Wgame.zip\',\r\n		author: \'gecitli\'\r\n	},\r\n	2941: {\r\n		name: \'Ant&#039;s Mutant Curve\',\r\n		desc: \'This is the monster that evolved from an apparently simple question:<br />&nbsp;&nbsp;&nbsp;<br /><a href=\"https://www.simplemachines.org/community/index.php?topic=569433.0\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Has anyone improved /main_block.png to have transparent rounded edges?</a><br /><br />The short version is that it&#039;s Curve, but substantially revamped to be responsive everywhere, without relying on any frameworks or libraries that SMF 2.0.x does not call by default.<br /><br />Like the original Curve it comes with full support for RTL languages. It also has some custom functionality, and minimal use of images.<br /><br />Do note that the reworking required for this result may mean that not all mods will install without manual editing.<br /><br /><hr /><br /><strong>Note: The following information is provided for anyone who is already using 1.0.4.</strong><br /><br />The only difference between 1.0.4 and 1.0.5 is that the latter hides the registration button and greeting if registration is disabled.<br />This fixes a minor bug with the default code in 2.0.x (default code will show register button and register link even if registration is disabled).<br /><br />If your forum does not have registration disabled, 1.0.4 will be just as good as 1.0.5.<br />If your forum does have registration disabled, 1.0.5 will prevent some error messages being shown to guests, and in the error log.<br /><br />If anyone needs a 1.0.4 to 1.0.5 patch, that can be arranged. <br /><br /><hr /><br />01/03/2020 - New 1.0.5 zip uploaded. Fix for minor 2.0.x bug (only relevant if registration is disabled).<br />27/02/2020 - New 1.0.4 zip uploaded. Gremlins critically endangered. WWF Concerned.<br />26/02/2020 - New 1.0.3 zip uploaded, now with hardly any gremlins!<br />24/02/2020 - New 1.0.2 zip uploaded, now with fewer gremlins!<br />23/02/2020 - New 1.0.1 zip uploaded, hopefully sans gremlins.\',\r\n		file: \'Ant\\\'s_Mutant_Curve_1.0.5.zip\',\r\n		author: \'Antechinus\'\r\n	},\r\n	2940: {\r\n		name: \'Averus\',\r\n		desc: \'Averus is a dark, flat and modern theme.&nbsp; Perfect for gaming forums or those that just want a dark theme.&nbsp; Using Font Awesome for the display icons on the front it is a nice simple lightweight theme.<br /><br />Terms of use :<br />This theme is free for personal and commercial use. You are allowed to use it in your projects, change it and adapt for your purposes. You are not allowed to remove the authors copyright.<br /><br /><a href=\"https://forum.bryandeakin.com/index.php?theme=04\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">&gt;&gt;Live demo&lt;&lt;</a>\',\r\n		file: \'averus.zip\',\r\n		author: \'Deaks\'\r\n	},\r\n	2308: {\r\n		name: \'Curve Minimal Multicolor\',\r\n		desc: \'<img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=6.0;attach=24;image\" alt=\"\" width=\"600\" height=\"486\" class=\"bbc_img resized\" /><br /><br /><a href=\"http://themes.e-debatten.dk/index.php?topic=7.0\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span style=\"color: #c27e00;\" class=\"bbc_color\">Support &amp; Comments</span></span></strong></a><br /><br />Did you like this theme?<br /><a href=\"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=9993480\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\"><img src=\"https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif\" alt=\"\" class=\"bbc_img\" /></a><br /><br /><strong>7 very different themes in 1</strong><br /><br />This theme is a multicolor theme, but with 7 themes that are a lot different from each other. The theme is based on my theme <a href=\"http://custom.simplemachines.org/themes/index.php?lemma=2270\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Curve Minimal</a>.<br /><br />This theme contains these variations: Curve Minimal Curve , Curve Minimal Inverted, Curve Minimal Ferrari, Curve Minimal Bad Company, Curve Minimal Stone, Curve Minimal Christmas and Curve Minimal Stone.<br /><br />The theme takes advantage of SMF&#039;s ability to create color variations of themes, but takes this a step further, but making the themes very different. Bacially these 7 variations are a 7 themes in one package.<br /><br />An admin can select a variation from the theme as default theme.<br /><br />If you don&#039;t want your users to be able to select some of the variations, you can just edit the index.template.php file.<br />Browse to<br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Quote</div></div><blockquote class=\"bbc_standard_quote\">&nbsp;&nbsp;&nbsp;/* Theme variants */<br />&nbsp;&nbsp;&nbsp;$settings&#91;&#039;theme_variants&#039;] = array(&#039;Default&#039;, &#039;Inverted&#039;, &#039;Ferrari&#039;, &#039;Bad-Company&#039;, &#039;Stone&#039;, &#039;Christmas&#039;, &#039;Stroke&#039;);</blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>There, you can just remove the line for those themes you don&#039;t want your users to use.<br /><br />December 2011:<br />+ Added SMF 2.1 style drop down menu<br /><br />Demos:<br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Inverted\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Inverted</a><br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Ferrari\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Ferrari</a><br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Bad-Company\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Bad-Company</a><br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Stone\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Stone</a><br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Christmas\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Christmas</a><br /><a href=\"http://themes.e-debatten.dk/index.php?action=forum;theme=9;variant=Stroke\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">Stroke</a><br /><br />Download: <a href=\"http://themes.e-debatten.dk/index.php?action=tpmod;dl=item10\" class=\"bbc_link\" target=\"_blank\" rel=\"noopener noreferrer\">http://themes.e-debatten.dk/index.php?action=tpmod;dl=item10</a><br /><br />Additional images:<br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=26;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" /><br /><br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=28;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" /><br /><br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=30;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" /><br /><br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=32;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" /><br /><br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=34;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" /><br /><br /><img src=\"http://themes.e-debatten.dk/index.php?action=dlattach;topic=7.0;attach=36;image\" alt=\"\" width=\"300\" class=\"bbc_img resized\" />\',\r\n		file: \'Curve_Minimal_Multicolor_2.0.zip\',\r\n		author: \'Akyhne\'\r\n	}\r\n};\r\nvar smf_featured = 2806;\r\nvar smf_random = 2308;\r\nvar smf_latestThemes = [2943, 2941, 2940];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById(\"smfLatestThemesWindow\").innerHTML;\r\n\r\n	// !!! Why not just always auto?\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"auto\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"),\r\n	\'\\\r\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_themeInfo[id].name + \'</h3>\\\r\n		<h4 style=\"margin: 0;padding: 4px;\"><a href=\"https://custom.simplemachines.org/themes/index.php?lemma=\' + id + \'\">View Theme Now!</a></h4>\\\r\n		<div style=\"overflow: auto;\">\\\r\n			<img src=\"https://custom.simplemachines.org/themes/index.php?action=download;lemma=\'+id+\';image=thumb\" alt=\"\" style=\"float: right; margin: 10px;\" />\\\r\n			<div style=\"padding:8px;\">\' + smf_themeInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\r\n		</div>\\\r\n		<div style=\"padding: 4px;\" class=\"smalltext\"><a href=\"javascript:smf_themesBack();void(0);\">(go back)</a></div>\');\r\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"), window.smfLatestThemes_temp);\r\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestThemesWindow\")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = \'\\\r\n	<div id=\"smfLatestThemesWindow\">\\\r\n		<div>\\\r\n			<img src=\"https://www.simplemachines.org/smf/images/themes.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 0 0 10px 10px;\" alt=\"(package)\" />\\\r\n			<ul style=\"list-style: none; padding: 0; margin: 0 0 0 5px;\">\';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += \'\\\r\n				<li style=\"list-style: none;\"><a href=\"javascript:smf_themesMoreInfo(\' + id_theme + \');void(0);\">\' + smf_themeInfo[id_theme].name + \' by \' + smf_themeInfo[id_theme].author + \'</a></li>\';\r\n}\r\n\r\nwindow.smfLatestThemes += \'\\\r\n			</ul>\';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px; margin: 0;\">Featured Theme</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_featured+\');void(0);\">\'+smf_themeInfo[smf_featured].name + \' by \' + smf_themeInfo[smf_featured].author+\'</a>\\\r\n				</p>\';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px;margin: 0;\">Theme of the Moment</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_random+\');void(0);\">\'+smf_themeInfo[smf_random].name + \' by \' + smf_themeInfo[smf_random].author+\'</a>\\\r\n				</p>\';\r\n}\r\nwindow.smfLatestThemes += \'\\\r\n		</div>\\\r\n	</div>\';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == \"undefined\")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\r\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}','text/javascript');
/*!40000 ALTER TABLE `smf_admin_info_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_approval_queue`
--

DROP TABLE IF EXISTS `smf_approval_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_approval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_approval_queue`
--

LOCK TABLES `smf_approval_queue` WRITE;
/*!40000 ALTER TABLE `smf_approval_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_approval_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_attachments`
--

DROP TABLE IF EXISTS `smf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_attachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_attachments`
--

LOCK TABLES `smf_attachments` WRITE;
/*!40000 ALTER TABLE `smf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_ban_groups`
--

DROP TABLE IF EXISTS `smf_ban_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_ban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_ban_groups`
--

LOCK TABLES `smf_ban_groups` WRITE;
/*!40000 ALTER TABLE `smf_ban_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_ban_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_ban_items`
--

DROP TABLE IF EXISTS `smf_ban_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_ban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_ban_items`
--

LOCK TABLES `smf_ban_items` WRITE;
/*!40000 ALTER TABLE `smf_ban_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_ban_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_board_permissions`
--

DROP TABLE IF EXISTS `smf_board_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_board_permissions`
--

LOCK TABLES `smf_board_permissions` WRITE;
/*!40000 ALTER TABLE `smf_board_permissions` DISABLE KEYS */;
INSERT INTO `smf_board_permissions` VALUES (-1,1,'poll_view',1),(0,1,'remove_own',1),(0,1,'lock_own',1),(0,1,'mark_any_notify',1),(0,1,'mark_notify',1),(0,1,'modify_own',1),(0,1,'poll_add_own',1),(0,1,'poll_edit_own',1),(0,1,'poll_lock_own',1),(0,1,'poll_post',1),(0,1,'poll_view',1),(0,1,'poll_vote',1),(0,1,'post_attachment',1),(0,1,'post_new',1),(0,1,'post_reply_any',1),(0,1,'post_reply_own',1),(0,1,'post_unapproved_topics',1),(0,1,'post_unapproved_replies_any',1),(0,1,'post_unapproved_replies_own',1),(0,1,'post_unapproved_attachments',1),(0,1,'delete_own',1),(0,1,'report_any',1),(0,1,'send_topic',1),(0,1,'view_attachments',1),(2,1,'moderate_board',1),(2,1,'post_new',1),(2,1,'post_reply_own',1),(2,1,'post_reply_any',1),(2,1,'post_unapproved_topics',1),(2,1,'post_unapproved_replies_any',1),(2,1,'post_unapproved_replies_own',1),(2,1,'post_unapproved_attachments',1),(2,1,'poll_post',1),(2,1,'poll_add_any',1),(2,1,'poll_remove_any',1),(2,1,'poll_view',1),(2,1,'poll_vote',1),(2,1,'poll_lock_any',1),(2,1,'poll_edit_any',1),(2,1,'report_any',1),(2,1,'lock_own',1),(2,1,'send_topic',1),(2,1,'mark_any_notify',1),(2,1,'mark_notify',1),(2,1,'delete_own',1),(2,1,'modify_own',1),(2,1,'make_sticky',1),(2,1,'lock_any',1),(2,1,'remove_any',1),(2,1,'move_any',1),(2,1,'merge_any',1),(2,1,'split_any',1),(2,1,'delete_any',1),(2,1,'modify_any',1),(2,1,'approve_posts',1),(2,1,'post_attachment',1),(2,1,'view_attachments',1),(3,1,'moderate_board',1),(3,1,'post_new',1),(3,1,'post_reply_own',1),(3,1,'post_reply_any',1),(3,1,'post_unapproved_topics',1),(3,1,'post_unapproved_replies_any',1),(3,1,'post_unapproved_replies_own',1),(3,1,'post_unapproved_attachments',1),(3,1,'poll_post',1),(3,1,'poll_add_any',1),(3,1,'poll_remove_any',1),(3,1,'poll_view',1),(3,1,'poll_vote',1),(3,1,'poll_lock_any',1),(3,1,'poll_edit_any',1),(3,1,'report_any',1),(3,1,'lock_own',1),(3,1,'send_topic',1),(3,1,'mark_any_notify',1),(3,1,'mark_notify',1),(3,1,'delete_own',1),(3,1,'modify_own',1),(3,1,'make_sticky',1),(3,1,'lock_any',1),(3,1,'remove_any',1),(3,1,'move_any',1),(3,1,'merge_any',1),(3,1,'split_any',1),(3,1,'delete_any',1),(3,1,'modify_any',1),(3,1,'approve_posts',1),(3,1,'post_attachment',1),(3,1,'view_attachments',1),(-1,2,'poll_view',1),(0,2,'remove_own',1),(0,2,'lock_own',1),(0,2,'mark_any_notify',1),(0,2,'mark_notify',1),(0,2,'modify_own',1),(0,2,'poll_view',1),(0,2,'poll_vote',1),(0,2,'post_attachment',1),(0,2,'post_new',1),(0,2,'post_reply_any',1),(0,2,'post_reply_own',1),(0,2,'post_unapproved_topics',1),(0,2,'post_unapproved_replies_any',1),(0,2,'post_unapproved_replies_own',1),(0,2,'post_unapproved_attachments',1),(0,2,'delete_own',1),(0,2,'report_any',1),(0,2,'send_topic',1),(0,2,'view_attachments',1),(2,2,'moderate_board',1),(2,2,'post_new',1),(2,2,'post_reply_own',1),(2,2,'post_reply_any',1),(2,2,'post_unapproved_topics',1),(2,2,'post_unapproved_replies_any',1),(2,2,'post_unapproved_replies_own',1),(2,2,'post_unapproved_attachments',1),(2,2,'poll_post',1),(2,2,'poll_add_any',1),(2,2,'poll_remove_any',1),(2,2,'poll_view',1),(2,2,'poll_vote',1),(2,2,'poll_lock_any',1),(2,2,'poll_edit_any',1),(2,2,'report_any',1),(2,2,'lock_own',1),(2,2,'send_topic',1),(2,2,'mark_any_notify',1),(2,2,'mark_notify',1),(2,2,'delete_own',1),(2,2,'modify_own',1),(2,2,'make_sticky',1),(2,2,'lock_any',1),(2,2,'remove_any',1),(2,2,'move_any',1),(2,2,'merge_any',1),(2,2,'split_any',1),(2,2,'delete_any',1),(2,2,'modify_any',1),(2,2,'approve_posts',1),(2,2,'post_attachment',1),(2,2,'view_attachments',1),(3,2,'moderate_board',1),(3,2,'post_new',1),(3,2,'post_reply_own',1),(3,2,'post_reply_any',1),(3,2,'post_unapproved_topics',1),(3,2,'post_unapproved_replies_any',1),(3,2,'post_unapproved_replies_own',1),(3,2,'post_unapproved_attachments',1),(3,2,'poll_post',1),(3,2,'poll_add_any',1),(3,2,'poll_remove_any',1),(3,2,'poll_view',1),(3,2,'poll_vote',1),(3,2,'poll_lock_any',1),(3,2,'poll_edit_any',1),(3,2,'report_any',1),(3,2,'lock_own',1),(3,2,'send_topic',1),(3,2,'mark_any_notify',1),(3,2,'mark_notify',1),(3,2,'delete_own',1),(3,2,'modify_own',1),(3,2,'make_sticky',1),(3,2,'lock_any',1),(3,2,'remove_any',1),(3,2,'move_any',1),(3,2,'merge_any',1),(3,2,'split_any',1),(3,2,'delete_any',1),(3,2,'modify_any',1),(3,2,'approve_posts',1),(3,2,'post_attachment',1),(3,2,'view_attachments',1),(-1,3,'poll_view',1),(0,3,'remove_own',1),(0,3,'lock_own',1),(0,3,'mark_any_notify',1),(0,3,'mark_notify',1),(0,3,'modify_own',1),(0,3,'poll_view',1),(0,3,'poll_vote',1),(0,3,'post_attachment',1),(0,3,'post_reply_any',1),(0,3,'post_reply_own',1),(0,3,'post_unapproved_replies_any',1),(0,3,'post_unapproved_replies_own',1),(0,3,'post_unapproved_attachments',1),(0,3,'delete_own',1),(0,3,'report_any',1),(0,3,'send_topic',1),(0,3,'view_attachments',1),(2,3,'moderate_board',1),(2,3,'post_new',1),(2,3,'post_reply_own',1),(2,3,'post_reply_any',1),(2,3,'post_unapproved_topics',1),(2,3,'post_unapproved_replies_any',1),(2,3,'post_unapproved_replies_own',1),(2,3,'post_unapproved_attachments',1),(2,3,'poll_post',1),(2,3,'poll_add_any',1),(2,3,'poll_remove_any',1),(2,3,'poll_view',1),(2,3,'poll_vote',1),(2,3,'poll_lock_any',1),(2,3,'poll_edit_any',1),(2,3,'report_any',1),(2,3,'lock_own',1),(2,3,'send_topic',1),(2,3,'mark_any_notify',1),(2,3,'mark_notify',1),(2,3,'delete_own',1),(2,3,'modify_own',1),(2,3,'make_sticky',1),(2,3,'lock_any',1),(2,3,'remove_any',1),(2,3,'move_any',1),(2,3,'merge_any',1),(2,3,'split_any',1),(2,3,'delete_any',1),(2,3,'modify_any',1),(2,3,'approve_posts',1),(2,3,'post_attachment',1),(2,3,'view_attachments',1),(3,3,'moderate_board',1),(3,3,'post_new',1),(3,3,'post_reply_own',1),(3,3,'post_reply_any',1),(3,3,'post_unapproved_topics',1),(3,3,'post_unapproved_replies_any',1),(3,3,'post_unapproved_replies_own',1),(3,3,'post_unapproved_attachments',1),(3,3,'poll_post',1),(3,3,'poll_add_any',1),(3,3,'poll_remove_any',1),(3,3,'poll_view',1),(3,3,'poll_vote',1),(3,3,'poll_lock_any',1),(3,3,'poll_edit_any',1),(3,3,'report_any',1),(3,3,'lock_own',1),(3,3,'send_topic',1),(3,3,'mark_any_notify',1),(3,3,'mark_notify',1),(3,3,'delete_own',1),(3,3,'modify_own',1),(3,3,'make_sticky',1),(3,3,'lock_any',1),(3,3,'remove_any',1),(3,3,'move_any',1),(3,3,'merge_any',1),(3,3,'split_any',1),(3,3,'delete_any',1),(3,3,'modify_any',1),(3,3,'approve_posts',1),(3,3,'post_attachment',1),(3,3,'view_attachments',1),(-1,4,'poll_view',1),(0,4,'mark_any_notify',1),(0,4,'mark_notify',1),(0,4,'poll_view',1),(0,4,'poll_vote',1),(0,4,'report_any',1),(0,4,'send_topic',1),(0,4,'view_attachments',1),(2,4,'moderate_board',1),(2,4,'post_new',1),(2,4,'post_reply_own',1),(2,4,'post_reply_any',1),(2,4,'post_unapproved_topics',1),(2,4,'post_unapproved_replies_any',1),(2,4,'post_unapproved_replies_own',1),(2,4,'post_unapproved_attachments',1),(2,4,'poll_post',1),(2,4,'poll_add_any',1),(2,4,'poll_remove_any',1),(2,4,'poll_view',1),(2,4,'poll_vote',1),(2,4,'poll_lock_any',1),(2,4,'poll_edit_any',1),(2,4,'report_any',1),(2,4,'lock_own',1),(2,4,'send_topic',1),(2,4,'mark_any_notify',1),(2,4,'mark_notify',1),(2,4,'delete_own',1),(2,4,'modify_own',1),(2,4,'make_sticky',1),(2,4,'lock_any',1),(2,4,'remove_any',1),(2,4,'move_any',1),(2,4,'merge_any',1),(2,4,'split_any',1),(2,4,'delete_any',1),(2,4,'modify_any',1),(2,4,'approve_posts',1),(2,4,'post_attachment',1),(2,4,'view_attachments',1),(3,4,'moderate_board',1),(3,4,'post_new',1),(3,4,'post_reply_own',1),(3,4,'post_reply_any',1),(3,4,'post_unapproved_topics',1),(3,4,'post_unapproved_replies_any',1),(3,4,'post_unapproved_replies_own',1),(3,4,'post_unapproved_attachments',1),(3,4,'poll_post',1),(3,4,'poll_add_any',1),(3,4,'poll_remove_any',1),(3,4,'poll_view',1),(3,4,'poll_vote',1),(3,4,'poll_lock_any',1),(3,4,'poll_edit_any',1),(3,4,'report_any',1),(3,4,'lock_own',1),(3,4,'send_topic',1),(3,4,'mark_any_notify',1),(3,4,'mark_notify',1),(3,4,'delete_own',1),(3,4,'modify_own',1),(3,4,'make_sticky',1),(3,4,'lock_any',1),(3,4,'remove_any',1),(3,4,'move_any',1),(3,4,'merge_any',1),(3,4,'split_any',1),(3,4,'delete_any',1),(3,4,'modify_any',1),(3,4,'approve_posts',1),(3,4,'post_attachment',1),(3,4,'view_attachments',1);
/*!40000 ALTER TABLE `smf_board_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_boards`
--

DROP TABLE IF EXISTS `smf_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_boards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `coins_per_post` int(11) NOT NULL,
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_boards`
--

LOCK TABLES `smf_boards` WRITE;
/*!40000 ALTER TABLE `smf_boards` DISABLE KEYS */;
INSERT INTO `smf_boards` VALUES (1,1,0,0,1,0,0,'-1,0,2',1,'General Discussion','Feel free to talk about anything and everything in this board.',0,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `smf_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_calendar`
--

DROP TABLE IF EXISTS `smf_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_calendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_calendar`
--

LOCK TABLES `smf_calendar` WRITE;
/*!40000 ALTER TABLE `smf_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_calendar_holidays`
--

DROP TABLE IF EXISTS `smf_calendar_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_calendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_calendar_holidays`
--

LOCK TABLES `smf_calendar_holidays` WRITE;
/*!40000 ALTER TABLE `smf_calendar_holidays` DISABLE KEYS */;
INSERT INTO `smf_calendar_holidays` VALUES (1,'0004-01-01','New Year\'s'),(2,'0004-12-25','Christmas'),(3,'0004-02-14','Valentine\'s Day'),(4,'0004-03-17','St. Patrick\'s Day'),(5,'0004-04-01','April Fools'),(6,'0004-04-22','Earth Day'),(7,'0004-10-24','United Nations Day'),(8,'0004-10-31','Halloween'),(9,'2010-05-09','Mother\'s Day'),(10,'2011-05-08','Mother\'s Day'),(11,'2012-05-13','Mother\'s Day'),(12,'2013-05-12','Mother\'s Day'),(13,'2014-05-11','Mother\'s Day'),(14,'2015-05-10','Mother\'s Day'),(15,'2016-05-08','Mother\'s Day'),(16,'2017-05-14','Mother\'s Day'),(17,'2018-05-13','Mother\'s Day'),(18,'2019-05-12','Mother\'s Day'),(19,'2020-05-10','Mother\'s Day'),(20,'2008-06-15','Father\'s Day'),(21,'2009-06-21','Father\'s Day'),(22,'2010-06-20','Father\'s Day'),(23,'2011-06-19','Father\'s Day'),(24,'2012-06-17','Father\'s Day'),(25,'2013-06-16','Father\'s Day'),(26,'2014-06-15','Father\'s Day'),(27,'2015-06-21','Father\'s Day'),(28,'2016-06-19','Father\'s Day'),(29,'2017-06-18','Father\'s Day'),(30,'2018-06-17','Father\'s Day'),(31,'2019-06-16','Father\'s Day'),(32,'2020-06-21','Father\'s Day'),(33,'2010-06-21','Summer Solstice'),(34,'2011-06-21','Summer Solstice'),(35,'2012-06-20','Summer Solstice'),(36,'2013-06-21','Summer Solstice'),(37,'2014-06-21','Summer Solstice'),(38,'2015-06-21','Summer Solstice'),(39,'2016-06-20','Summer Solstice'),(40,'2017-06-20','Summer Solstice'),(41,'2018-06-21','Summer Solstice'),(42,'2019-06-21','Summer Solstice'),(43,'2020-06-20','Summer Solstice'),(44,'2010-03-20','Vernal Equinox'),(45,'2011-03-20','Vernal Equinox'),(46,'2012-03-20','Vernal Equinox'),(47,'2013-03-20','Vernal Equinox'),(48,'2014-03-20','Vernal Equinox'),(49,'2015-03-20','Vernal Equinox'),(50,'2016-03-19','Vernal Equinox'),(51,'2017-03-20','Vernal Equinox'),(52,'2018-03-20','Vernal Equinox'),(53,'2019-03-20','Vernal Equinox'),(54,'2020-03-19','Vernal Equinox'),(55,'2010-12-21','Winter Solstice'),(56,'2011-12-22','Winter Solstice'),(57,'2012-12-21','Winter Solstice'),(58,'2013-12-21','Winter Solstice'),(59,'2014-12-21','Winter Solstice'),(60,'2015-12-21','Winter Solstice'),(61,'2016-12-21','Winter Solstice'),(62,'2017-12-21','Winter Solstice'),(63,'2018-12-21','Winter Solstice'),(64,'2019-12-21','Winter Solstice'),(65,'2020-12-21','Winter Solstice'),(66,'2010-09-22','Autumnal Equinox'),(67,'2011-09-23','Autumnal Equinox'),(68,'2012-09-22','Autumnal Equinox'),(69,'2013-09-22','Autumnal Equinox'),(70,'2014-09-22','Autumnal Equinox'),(71,'2015-09-23','Autumnal Equinox'),(72,'2016-09-22','Autumnal Equinox'),(73,'2017-09-22','Autumnal Equinox'),(74,'2018-09-22','Autumnal Equinox'),(75,'2019-09-23','Autumnal Equinox'),(76,'2020-09-22','Autumnal Equinox'),(77,'0004-07-04','Independence Day'),(78,'0004-05-05','Cinco de Mayo'),(79,'0004-06-14','Flag Day'),(80,'0004-11-11','Veterans Day'),(81,'0004-02-02','Groundhog Day'),(82,'2010-11-25','Thanksgiving'),(83,'2011-11-24','Thanksgiving'),(84,'2012-11-22','Thanksgiving'),(85,'2013-11-28','Thanksgiving'),(86,'2014-11-27','Thanksgiving'),(87,'2015-11-26','Thanksgiving'),(88,'2016-11-24','Thanksgiving'),(89,'2017-11-23','Thanksgiving'),(90,'2018-11-22','Thanksgiving'),(91,'2019-11-28','Thanksgiving'),(92,'2020-11-26','Thanksgiving'),(93,'2010-05-31','Memorial Day'),(94,'2011-05-30','Memorial Day'),(95,'2012-05-28','Memorial Day'),(96,'2013-05-27','Memorial Day'),(97,'2014-05-26','Memorial Day'),(98,'2015-05-25','Memorial Day'),(99,'2016-05-30','Memorial Day'),(100,'2017-05-29','Memorial Day'),(101,'2018-05-28','Memorial Day'),(102,'2019-05-27','Memorial Day'),(103,'2020-05-25','Memorial Day'),(104,'2010-09-06','Labor Day'),(105,'2011-09-05','Labor Day'),(106,'2012-09-03','Labor Day'),(107,'2013-09-02','Labor Day'),(108,'2014-09-01','Labor Day'),(109,'2015-09-07','Labor Day'),(110,'2016-09-05','Labor Day'),(111,'2017-09-04','Labor Day'),(112,'2018-09-03','Labor Day'),(113,'2019-09-02','Labor Day'),(114,'2020-09-07','Labor Day'),(115,'0004-06-06','D-Day');
/*!40000 ALTER TABLE `smf_calendar_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_categories`
--

DROP TABLE IF EXISTS `smf_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_categories`
--

LOCK TABLES `smf_categories` WRITE;
/*!40000 ALTER TABLE `smf_categories` DISABLE KEYS */;
INSERT INTO `smf_categories` VALUES (1,0,'General Category',1);
/*!40000 ALTER TABLE `smf_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_collapsed_categories`
--

DROP TABLE IF EXISTS `smf_collapsed_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_collapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_collapsed_categories`
--

LOCK TABLES `smf_collapsed_categories` WRITE;
/*!40000 ALTER TABLE `smf_collapsed_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_collapsed_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_custom_fields`
--

DROP TABLE IF EXISTS `smf_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_custom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_custom_fields`
--

LOCK TABLES `smf_custom_fields` WRITE;
/*!40000 ALTER TABLE `smf_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_group_moderators`
--

DROP TABLE IF EXISTS `smf_group_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_group_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_group_moderators`
--

LOCK TABLES `smf_group_moderators` WRITE;
/*!40000 ALTER TABLE `smf_group_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_group_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_inventory`
--

DROP TABLE IF EXISTS `smf_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_inventory` (
  `id_member` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `is_equipped` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_inventory`
--

LOCK TABLES `smf_inventory` WRITE;
/*!40000 ALTER TABLE `smf_inventory` DISABLE KEYS */;
INSERT INTO `smf_inventory` VALUES (1,1,1,1),(1,2,1,0),(1,3,1,0),(1,4,1,1),(1,5,1,0),(1,6,1,0),(1,7,1,1),(1,8,1,1);
/*!40000 ALTER TABLE `smf_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_items`
--

DROP TABLE IF EXISTS `smf_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_items` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` int(11) NOT NULL,
  `name_eng` varchar(80) NOT NULL,
  `icon_url` varchar(500) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  `img_0_layer` int(11) NOT NULL DEFAULT '-1',
  `img_sec_1_url` varchar(500) NOT NULL,
  `img_1_layer` int(11) NOT NULL DEFAULT '-1',
  `img_sec_2_url` varchar(500) NOT NULL,
  `img_2_layer` int(11) NOT NULL DEFAULT '-1',
  `equip_slot` int(11) NOT NULL DEFAULT '-1',
  `cost` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `date_added` int(11) NOT NULL,
  `last_modified` int(11) NOT NULL,
  `created_by_userid` int(11) NOT NULL,
  PRIMARY KEY (`id_item`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_items`
--

LOCK TABLES `smf_items` WRITE;
/*!40000 ALTER TABLE `smf_items` DISABLE KEYS */;
INSERT INTO `smf_items` VALUES (1,0,'Goldfish Gold','/fish/img/items/GoldfishGold_5eb501c16fdf0_icon.png','/fish/img/items/GoldfishGold_5eb501c16fdf0_0.png',-1,'',-1,'',-1,0,0,1,1588920769,1588920769,1),(2,0,'Prolapse Pink','/fish/img/items/ProlapsePink_5eb501cb56418_icon.png','/fish/img/items/ProlapsePink_5eb501cb56418_0.png',-1,'',-1,'',-1,0,0,1,1588920779,1588920779,1),(3,0,'Cool Ranch Blue','/fish/img/items/CoolRanchBlue_5eb501d455cdb_icon.png','/fish/img/items/CoolRanchBlue_5eb501d455cdb_0.png',-1,'',-1,'',-1,0,0,1,1588920788,1588920788,1),(4,0,'Sad Puppy','/fish/img/items/SadPuppy_5eb50266d9cd2_icon.png','/fish/img/items/SadPuppy_5eb50266d9cd2_0.png',-1,'',-1,'',-1,1,0,1,1588920934,1588920934,1),(5,0,'Annoyed','/fish/img/items/Annoyed_5eb502bf8c72f_icon.png','/fish/img/items/Annoyed_5eb502bf8c72f_0.png',-1,'',-1,'',-1,1,0,1,1588921023,1588921023,1),(6,0,'Surprised','/fish/img/items/Surprised_5eb50421eb007_icon.png','/fish/img/items/Surprised_5eb50421eb007_0.png',-1,'',-1,'',-1,1,0,1,1588921377,1588921377,1),(7,0,'Sweatshorts','/fish/img/items/Sweatshorts_5eb502d6184aa_icon.png','/fish/img/items/Sweatshorts_5eb502d6184aa_0.png',-1,'',-1,'',-1,106,0,1,1588921046,1588921046,1),(8,0,'Baggy T-Shirt','/fish/img/items/BaggyTShirt_5eb502f453c0d_icon.png','/fish/img/items/BaggyTShirt_5eb502f453c0d_0.png',-1,'',-1,'',-1,101,0,1,1588921076,1588921076,1),(9,0,'Fancy Pipe','/fish/img/items/FancyPipe_5eb503039bab2_icon.png','/fish/img/items/FancyPipe_5eb503039bab2_0.png',-1,'',-1,'',-1,116,500,3,1588921091,1588921091,1);
/*!40000 ALTER TABLE `smf_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_actions`
--

DROP TABLE IF EXISTS `smf_log_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_actions`
--

LOCK TABLES `smf_log_actions` WRITE;
/*!40000 ALTER TABLE `smf_log_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_activity`
--

DROP TABLE IF EXISTS `smf_log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_activity`
--

LOCK TABLES `smf_log_activity` WRITE;
/*!40000 ALTER TABLE `smf_log_activity` DISABLE KEYS */;
INSERT INTO `smf_log_activity` VALUES ('2020-04-01',0,2,2,1,2);
/*!40000 ALTER TABLE `smf_log_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_banned`
--

DROP TABLE IF EXISTS `smf_log_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_banned`
--

LOCK TABLES `smf_log_banned` WRITE;
/*!40000 ALTER TABLE `smf_log_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_boards`
--

DROP TABLE IF EXISTS `smf_log_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_boards`
--

LOCK TABLES `smf_log_boards` WRITE;
/*!40000 ALTER TABLE `smf_log_boards` DISABLE KEYS */;
INSERT INTO `smf_log_boards` VALUES (1,1,2);
/*!40000 ALTER TABLE `smf_log_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_comments`
--

DROP TABLE IF EXISTS `smf_log_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_comments`
--

LOCK TABLES `smf_log_comments` WRITE;
/*!40000 ALTER TABLE `smf_log_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_digest`
--

DROP TABLE IF EXISTS `smf_log_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_digest`
--

LOCK TABLES `smf_log_digest` WRITE;
/*!40000 ALTER TABLE `smf_log_digest` DISABLE KEYS */;
INSERT INTO `smf_log_digest` VALUES (2,2,'topic',0,1);
/*!40000 ALTER TABLE `smf_log_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_errors`
--

DROP TABLE IF EXISTS `smf_log_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_errors`
--

LOCK TABLES `smf_log_errors` WRITE;
/*!40000 ALTER TABLE `smf_log_errors` DISABLE KEYS */;
INSERT INTO `smf_log_errors` VALUES (1,1585730041,1,'127.0.0.1','?action=admin;area=logs;sa=errorlog;desc','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/Errors.template.php (body_above sub template - eval?)',349),(2,1585730041,1,'127.0.0.1','?action=admin;area=logs;sa=errorlog;desc','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/Errors.template.php (body_above sub template - eval?)',384),(3,1585730042,1,'127.0.0.1','?action=admin;area=logs;sa=banlog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',349),(4,1585730042,1,'127.0.0.1','?action=admin;area=logs;sa=banlog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',384),(5,1585730043,1,'127.0.0.1','?action=admin;area=logs;sa=pruning;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/languages/Help.english.php (body_above sub template - eval?)',349),(6,1585730043,1,'127.0.0.1','?action=admin;area=logs;sa=pruning;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/languages/Help.english.php (body_above sub template - eval?)',384),(7,1585730044,1,'127.0.0.1','?action=admin;area=logs;sa=tasklog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',349),(8,1585730044,1,'127.0.0.1','?action=admin;area=logs;sa=tasklog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',384),(9,1585730047,1,'127.0.0.1','?action=admin;area=logs;sa=tasklog','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',349),(10,1585730047,1,'127.0.0.1','?action=admin;area=logs;sa=tasklog','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',384),(11,1585730050,1,'127.0.0.1','?action=admin;area=logs;sa=banlog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',349),(12,1585730050,1,'127.0.0.1','?action=admin;area=logs;sa=banlog;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/GenericList.template.php (body_above sub template - eval?)',384),(13,1585730051,1,'127.0.0.1','?action=admin;area=logs;sa=errorlog;desc;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/Errors.template.php (body_above sub template - eval?)',349),(14,1585730051,1,'127.0.0.1','?action=admin;area=logs;sa=errorlog;desc;f5153bb3f0b=b8ca0ca83df7e5f86606597ee11a84a0','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/default/Errors.template.php (body_above sub template - eval?)',384),(15,1585730146,1,'127.0.0.1','?action=profile;area=forumprofile;','8: Undefined index: coins','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1256),(16,1585730146,1,'127.0.0.1','?action=profile;area=forumprofile;','8: Undefined index: last_feature_purchase','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1257),(17,1585730146,1,'127.0.0.1','?action=profile;area=forumprofile;','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',349),(18,1585730146,1,'127.0.0.1','?action=profile;area=forumprofile;','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',384),(19,1585730153,1,'127.0.0.1','?action=profile;area=account;u=1','8: Undefined index: coins','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1256),(20,1585730153,1,'127.0.0.1','?action=profile;area=account;u=1','8: Undefined index: last_feature_purchase','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1257),(21,1585730153,1,'127.0.0.1','?action=profile;area=account;u=1','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',349),(22,1585730153,1,'127.0.0.1','?action=profile;area=account;u=1','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',384),(23,1585730165,1,'127.0.0.1','?action=profile;area=account;u=1;save','8: Undefined index: coins','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1256),(24,1585730165,1,'127.0.0.1','?action=profile;area=account;u=1;save','8: Undefined index: last_feature_purchase','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1257),(25,1585730165,1,'127.0.0.1','?action=profile;area=account;updated','8: Undefined index: coins','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1256),(26,1585730165,1,'127.0.0.1','?action=profile;area=account;updated','8: Undefined index: last_feature_purchase','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Sources/Load.php',1257),(27,1585730165,1,'127.0.0.1','?action=profile;area=account;updated','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',349),(28,1585730165,1,'127.0.0.1','?action=profile;area=account;updated','8: Undefined index: canonical_url','b8ca0ca83df7e5f86606597ee11a84a0','undefined_vars','/var/www/forum/Themes/Redsy/GenericMenu.template.php (body_above sub template - eval?)',384),(29,1585730169,0,'','?','8: Undefined index: coins','a7156d929eada44d4796acdc55194b87','undefined_vars','/var/www/forum/Sources/Load.php',545),(30,1585730169,0,'','?','8: Undefined index: last_feature_purchase','a7156d929eada44d4796acdc55194b87','undefined_vars','/var/www/forum/Sources/Load.php',546);
/*!40000 ALTER TABLE `smf_log_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_floodcontrol`
--

DROP TABLE IF EXISTS `smf_log_floodcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_floodcontrol`
--

LOCK TABLES `smf_log_floodcontrol` WRITE;
/*!40000 ALTER TABLE `smf_log_floodcontrol` DISABLE KEYS */;
INSERT INTO `smf_log_floodcontrol` VALUES ('',1585725654,'login'),('127.0.0.1',1585729217,'post');
/*!40000 ALTER TABLE `smf_log_floodcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_group_requests`
--

DROP TABLE IF EXISTS `smf_log_group_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_group_requests`
--

LOCK TABLES `smf_log_group_requests` WRITE;
/*!40000 ALTER TABLE `smf_log_group_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_group_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_karma`
--

DROP TABLE IF EXISTS `smf_log_karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_karma`
--

LOCK TABLES `smf_log_karma` WRITE;
/*!40000 ALTER TABLE `smf_log_karma` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_karma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_mark_read`
--

DROP TABLE IF EXISTS `smf_log_mark_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_mark_read`
--

LOCK TABLES `smf_log_mark_read` WRITE;
/*!40000 ALTER TABLE `smf_log_mark_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_mark_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_member_notices`
--

DROP TABLE IF EXISTS `smf_log_member_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_member_notices`
--

LOCK TABLES `smf_log_member_notices` WRITE;
/*!40000 ALTER TABLE `smf_log_member_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_member_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_notify`
--

DROP TABLE IF EXISTS `smf_log_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_notify`
--

LOCK TABLES `smf_log_notify` WRITE;
/*!40000 ALTER TABLE `smf_log_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_online`
--

DROP TABLE IF EXISTS `smf_log_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_online`
--

LOCK TABLES `smf_log_online` WRITE;
/*!40000 ALTER TABLE `smf_log_online` DISABLE KEYS */;
INSERT INTO `smf_log_online` VALUES ('ip',1585730169,0,0,0,'');
/*!40000 ALTER TABLE `smf_log_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_packages`
--

DROP TABLE IF EXISTS `smf_log_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_packages`
--

LOCK TABLES `smf_log_packages` WRITE;
/*!40000 ALTER TABLE `smf_log_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_polls`
--

DROP TABLE IF EXISTS `smf_log_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_polls`
--

LOCK TABLES `smf_log_polls` WRITE;
/*!40000 ALTER TABLE `smf_log_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_reported`
--

DROP TABLE IF EXISTS `smf_log_reported`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_reported`
--

LOCK TABLES `smf_log_reported` WRITE;
/*!40000 ALTER TABLE `smf_log_reported` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_reported` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_reported_comments`
--

DROP TABLE IF EXISTS `smf_log_reported_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_reported_comments`
--

LOCK TABLES `smf_log_reported_comments` WRITE;
/*!40000 ALTER TABLE `smf_log_reported_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_reported_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_scheduled_tasks`
--

DROP TABLE IF EXISTS `smf_log_scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_scheduled_tasks`
--

LOCK TABLES `smf_log_scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `smf_log_scheduled_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_messages`
--

DROP TABLE IF EXISTS `smf_log_search_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_messages`
--

LOCK TABLES `smf_log_search_messages` WRITE;
/*!40000 ALTER TABLE `smf_log_search_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_results`
--

DROP TABLE IF EXISTS `smf_log_search_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_results`
--

LOCK TABLES `smf_log_search_results` WRITE;
/*!40000 ALTER TABLE `smf_log_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_subjects`
--

DROP TABLE IF EXISTS `smf_log_search_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_subjects`
--

LOCK TABLES `smf_log_search_subjects` WRITE;
/*!40000 ALTER TABLE `smf_log_search_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_search_topics`
--

DROP TABLE IF EXISTS `smf_log_search_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_search_topics`
--

LOCK TABLES `smf_log_search_topics` WRITE;
/*!40000 ALTER TABLE `smf_log_search_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_search_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_spider_hits`
--

DROP TABLE IF EXISTS `smf_log_spider_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_spider_hits`
--

LOCK TABLES `smf_log_spider_hits` WRITE;
/*!40000 ALTER TABLE `smf_log_spider_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_spider_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_spider_stats`
--

DROP TABLE IF EXISTS `smf_log_spider_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_spider_stats`
--

LOCK TABLES `smf_log_spider_stats` WRITE;
/*!40000 ALTER TABLE `smf_log_spider_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_spider_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_subscribed`
--

DROP TABLE IF EXISTS `smf_log_subscribed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_subscribed`
--

LOCK TABLES `smf_log_subscribed` WRITE;
/*!40000 ALTER TABLE `smf_log_subscribed` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_subscribed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_log_topics`
--

DROP TABLE IF EXISTS `smf_log_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_log_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_log_topics`
--

LOCK TABLES `smf_log_topics` WRITE;
/*!40000 ALTER TABLE `smf_log_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_log_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_mail_queue`
--

DROP TABLE IF EXISTS `smf_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_mail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_mail_queue`
--

LOCK TABLES `smf_mail_queue` WRITE;
/*!40000 ALTER TABLE `smf_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_membergroups`
--

DROP TABLE IF EXISTS `smf_membergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_membergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 NOT NULL,
  `online_color` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_membergroups`
--

LOCK TABLES `smf_membergroups` WRITE;
/*!40000 ALTER TABLE `smf_membergroups` DISABLE KEYS */;
INSERT INTO `smf_membergroups` VALUES (1,'Administrator','','#FF0000',-1,0,'',0,0,-2),(5,'Moderator','','',-1,0,'',0,0,-2),(3,'Individual Moderator (unused)','','',-1,0,'',0,0,-2),(4,'Member','','',0,0,'',0,0,0),(6,'NPC','','',-1,0,'',0,0,-2);
/*!40000 ALTER TABLE `smf_membergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_members`
--

DROP TABLE IF EXISTS `smf_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_members` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `coins` int(11) NOT NULL,
  `last_feature_purchase` int(10) NOT NULL,
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_members`
--

LOCK TABLES `smf_members` WRITE;
/*!40000 ALTER TABLE `smf_members` DISABLE KEYS */;
INSERT INTO `smf_members` VALUES (1,'Wetfish Online',1585725371,0,1,'',1585730146,'Wetfish Online',0,0,0,'','',0,'','','c5c62e6348d1e0b9e37ddd857e8b0fcd0224da5b','','admin@wetfish.net','',0,'0001-01-01','','','','','','','',0,1,'','',0,'',0,0,0,'',1,1,0,2,'127.0.0.1','127.0.0.1','','',3,1,'',1,'','',4,1843,'f6ba','',0,'',1,0,0);
/*!40000 ALTER TABLE `smf_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_message_icons`
--

DROP TABLE IF EXISTS `smf_message_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_message_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_message_icons`
--

LOCK TABLES `smf_message_icons` WRITE;
/*!40000 ALTER TABLE `smf_message_icons` DISABLE KEYS */;
INSERT INTO `smf_message_icons` VALUES (1,'Standard','xx',0,0),(2,'Thumb Up','thumbup',0,1),(3,'Thumb Down','thumbdown',0,2),(4,'Exclamation point','exclamation',0,3),(5,'Question mark','question',0,4),(6,'Lamp','lamp',0,5),(7,'Smiley','smiley',0,6),(8,'Angry','angry',0,7),(9,'Cheesy','cheesy',0,8),(10,'Grin','grin',0,9),(11,'Sad','sad',0,10),(12,'Wink','wink',0,11);
/*!40000 ALTER TABLE `smf_message_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_message_tips`
--

DROP TABLE IF EXISTS `smf_message_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_message_tips` (
  `id_message_tip` int(11) NOT NULL AUTO_INCREMENT,
  `id_message` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `coins` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_message_tip`),
  KEY `id_message` (`id_message`) COMMENT 'Frequent lookup of tips for each message'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_message_tips`
--

LOCK TABLES `smf_message_tips` WRITE;
/*!40000 ALTER TABLE `smf_message_tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_message_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_messages`
--

DROP TABLE IF EXISTS `smf_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_messages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_messages`
--

LOCK TABLES `smf_messages` WRITE;
/*!40000 ALTER TABLE `smf_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_moderators`
--

DROP TABLE IF EXISTS `smf_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_moderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_moderators`
--

LOCK TABLES `smf_moderators` WRITE;
/*!40000 ALTER TABLE `smf_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_npc_post_shop_items`
--

DROP TABLE IF EXISTS `smf_npc_post_shop_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_npc_post_shop_items` (
  `id_msg` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  PRIMARY KEY (`id_msg`,`id_item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_npc_post_shop_items`
--

LOCK TABLES `smf_npc_post_shop_items` WRITE;
/*!40000 ALTER TABLE `smf_npc_post_shop_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_npc_post_shop_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_openid_assoc`
--

DROP TABLE IF EXISTS `smf_openid_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_openid_assoc`
--

LOCK TABLES `smf_openid_assoc` WRITE;
/*!40000 ALTER TABLE `smf_openid_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_openid_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_package_servers`
--

DROP TABLE IF EXISTS `smf_package_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_package_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_package_servers`
--

LOCK TABLES `smf_package_servers` WRITE;
/*!40000 ALTER TABLE `smf_package_servers` DISABLE KEYS */;
INSERT INTO `smf_package_servers` VALUES (1,'Simple Machines Third-party Mod Site','http://custom.simplemachines.org/packages/mods');
/*!40000 ALTER TABLE `smf_package_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_permission_profiles`
--

DROP TABLE IF EXISTS `smf_permission_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_permission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_permission_profiles`
--

LOCK TABLES `smf_permission_profiles` WRITE;
/*!40000 ALTER TABLE `smf_permission_profiles` DISABLE KEYS */;
INSERT INTO `smf_permission_profiles` VALUES (1,'default'),(2,'no_polls'),(3,'reply_only'),(4,'read_only'),(5,'Disable Moderators');
/*!40000 ALTER TABLE `smf_permission_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_permissions`
--

DROP TABLE IF EXISTS `smf_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_permissions`
--

LOCK TABLES `smf_permissions` WRITE;
/*!40000 ALTER TABLE `smf_permissions` DISABLE KEYS */;
INSERT INTO `smf_permissions` VALUES (-1,'calendar_view',1),(4,'search_posts',1),(0,'profile_extra_own',1),(0,'profile_identity_own',1),(5,'profile_extra_own',1),(0,'pm_send',1),(0,'pm_read',1),(5,'profile_identity_own',1),(4,'profile_view_own',1),(5,'manage_bans',1),(5,'pm_send',1),(4,'profile_identity_own',1),(5,'pm_read',1),(5,'profile_view_any',1),(5,'profile_view_own',1),(4,'profile_extra_own',1),(5,'calendar_view',1),(4,'pm_read',1),(5,'search_posts',1),(0,'profile_view_any',1),(0,'profile_view_own',1),(4,'pm_send',1),(4,'calendar_view',1),(0,'calendar_view',1),(0,'search_posts',1),(4,'profile_view_any',1),(6,'profile_identity_own',1),(6,'pm_send',1),(6,'pm_read',1),(6,'create_npc_shop',1),(6,'profile_view_any',1),(6,'profile_view_own',1),(6,'calendar_view',1),(6,'search_posts',1),(6,'profile_extra_own',1);
/*!40000 ALTER TABLE `smf_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_personal_messages`
--

DROP TABLE IF EXISTS `smf_personal_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_personal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_personal_messages`
--

LOCK TABLES `smf_personal_messages` WRITE;
/*!40000 ALTER TABLE `smf_personal_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_personal_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_pm_recipients`
--

DROP TABLE IF EXISTS `smf_pm_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_pm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_pm_recipients`
--

LOCK TABLES `smf_pm_recipients` WRITE;
/*!40000 ALTER TABLE `smf_pm_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_pm_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_pm_rules`
--

DROP TABLE IF EXISTS `smf_pm_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_pm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_pm_rules`
--

LOCK TABLES `smf_pm_rules` WRITE;
/*!40000 ALTER TABLE `smf_pm_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_pm_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_poll_choices`
--

DROP TABLE IF EXISTS `smf_poll_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_poll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_poll_choices`
--

LOCK TABLES `smf_poll_choices` WRITE;
/*!40000 ALTER TABLE `smf_poll_choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_poll_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_polls`
--

DROP TABLE IF EXISTS `smf_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_polls`
--

LOCK TABLES `smf_polls` WRITE;
/*!40000 ALTER TABLE `smf_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_scheduled_tasks`
--

DROP TABLE IF EXISTS `smf_scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_scheduled_tasks`
--

LOCK TABLES `smf_scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `smf_scheduled_tasks` DISABLE KEYS */;
INSERT INTO `smf_scheduled_tasks` VALUES (1,1585735200,0,2,'h',0,'approval_notification'),(2,1586304000,0,7,'d',0,'auto_optimize'),(3,1585785660,60,1,'d',0,'daily_maintenance'),(5,1585785600,0,1,'d',0,'daily_digest'),(6,1586304000,0,1,'w',0,'weekly_digest'),(7,1585821420,122258,1,'d',0,'fetchSMfiles'),(8,0,0,1,'d',1,'birthdayemails'),(9,1586304000,0,1,'w',0,'weekly_maintenance'),(10,0,120,1,'d',1,'paid_subscriptions');
/*!40000 ALTER TABLE `smf_scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_sessions`
--

DROP TABLE IF EXISTS `smf_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_sessions`
--

LOCK TABLES `smf_sessions` WRITE;
/*!40000 ALTER TABLE `smf_sessions` DISABLE KEYS */;
INSERT INTO `smf_sessions` VALUES ('nin3aef63sst156frjeri1njj0',1585726289,'session_value|s:32:\"63b9dd77d3efe0da87ae480b3d3603f0\";session_var|s:12:\"b80fed031ec4\";mc|a:7:{s:4:\"time\";i:1585726289;s:2:\"id\";i:0;s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1585726289;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:9:\"127.0.0.1\";s:5:\"email\";s:0:\"\";}log_time|i:1585726289;timeOnlineUpdated|i:1585726289;guest_inventory|a:0:{}old_url|s:40:\"http://127.0.0.1/wfotest/forum/index.php\";USER_AGENT|s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";'),('94v2qdv3fq3is9u7nnfu58l8c7',1585726101,'session_value|s:32:\"736ee1d7298fa17f7f7d47ad68aaa373\";session_var|s:9:\"ef3fe3ac4\";mc|a:7:{s:4:\"time\";i:1585726096;s:2:\"id\";i:0;s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1585726101;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:9:\"127.0.0.1\";s:5:\"email\";s:0:\"\";}log_time|i:1585726096;timeOnlineUpdated|i:1585726096;guest_inventory|a:0:{}old_url|s:56:\"http://127.0.0.1/wfotest/forum/index.php?action=register\";USER_AGENT|s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";register_vv|a:5:{s:5:\"count\";i:3;s:6:\"errors\";i:0;s:8:\"did_pass\";b:0;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"BNYYXK\";}registration_agreed|b:1;'),('sau2n2gr59dce9qd05nblo2b35',1585730169,'session_value|s:32:\"a7156d929eada44d4796acdc55194b87\";session_var|s:10:\"bf825b71bb\";mc|a:7:{s:4:\"time\";i:1585730169;s:2:\"id\";i:0;s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1585730169;s:9:\"id_member\";i:0;s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:9:\"127.0.0.1\";s:5:\"email\";s:0:\"\";}log_time|i:1585730169;timeOnlineUpdated|i:1585730169;guest_inventory|a:0:{}old_url|s:36:\"http://gforum/index.php\";USER_AGENT|s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";');
/*!40000 ALTER TABLE `smf_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_settings`
--

DROP TABLE IF EXISTS `smf_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_settings` (
  `variable` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_settings`
--

LOCK TABLES `smf_settings` WRITE;
/*!40000 ALTER TABLE `smf_settings` DISABLE KEYS */;
INSERT INTO `smf_settings` VALUES ('smfVersion','2.0.12'),('news','SMF - Just Installed!'),('compactTopicPagesContiguous','5'),('compactTopicPagesEnable','1'),('enableStickyTopics','1'),('todayMod','1'),('karmaMode','0'),('karmaTimeRestrictAdmins','1'),('enablePreviousNext','0'),('pollMode','0'),('enableVBStyleLogin','1'),('enableCompressedOutput','1'),('karmaWaitTime','1'),('karmaMinPosts','0'),('karmaLabel','Karma:'),('karmaSmiteLabel','[smite]'),('karmaApplaudLabel','[applaud]'),('attachmentSizeLimit','128'),('attachmentPostLimit','192'),('attachmentNumPerPostLimit','4'),('attachmentDirSizeLimit','10240'),('attachmentUploadDir','/var/www/forum/attachments'),('attachmentExtensions','doc,gif,jpg,mpg,pdf,png,txt,zip'),('attachmentCheckExtensions','0'),('attachmentShowImages','1'),('attachmentEnable','0'),('attachmentEncryptFilenames','1'),('attachmentThumbnails','1'),('attachmentThumbWidth','150'),('attachmentThumbHeight','150'),('censorIgnoreCase','1'),('mostOnline','0'),('mostOnlineToday','1'),('mostDate','1480484886'),('allow_disableAnnounce','1'),('trackStats','1'),('userLanguage','1'),('titlesEnable','0'),('topicSummaryPosts','15'),('enableErrorLogging','1'),('max_image_width','0'),('max_image_height','0'),('onlineEnable','0'),('cal_enabled','0'),('cal_maxyear','2020'),('cal_minyear','2008'),('cal_daysaslink','0'),('cal_defaultboard',''),('cal_showholidays','1'),('cal_showbdays','1'),('cal_showevents','1'),('cal_showweeknum','0'),('cal_maxspan','7'),('smtp_host',''),('smtp_port','25'),('smtp_username',''),('smtp_password',''),('mail_type','0'),('timeLoadPageEnable','0'),('totalMembers','1'),('totalTopics','0'),('totalMessages','0'),('simpleSearch','0'),('censor_vulgar',''),('censor_proper',''),('enablePostHTML','0'),('theme_allow','0'),('theme_default','1'),('theme_guests','3'),('enableEmbeddedFlash','0'),('xmlnews_enable','1'),('xmlnews_maxlen','255'),('hotTopicPosts','15'),('hotTopicVeryPosts','25'),('registration_method','0'),('send_validation_onChange','0'),('send_welcomeEmail','0'),('allow_editDisplayName','0'),('allow_hideOnline','1'),('guest_hideContacts','1'),('spamWaitTime','5'),('pm_spam_settings','10,5,20'),('reserveWord','0'),('reserveCase','1'),('reserveUser','1'),('reserveName','1'),('reserveNames','Admin\nWebmaster\nGuest\nroot'),('autoLinkUrls','1'),('banLastUpdated','1480183540'),('smileys_dir','/var/www/forum/Smileys'),('smileys_url','http://gforum/Smileys'),('avatar_directory','/var/www/forum/avatars'),('avatar_url','gforum/avatars'),('avatar_max_height_external','128'),('avatar_max_width_external','128'),('avatar_action_too_large','option_html_resize'),('avatar_max_height_upload','128'),('avatar_max_width_upload','128'),('avatar_resize_upload','1'),('avatar_download_png','1'),('failed_login_threshold','9'),('oldTopicDays','0'),('edit_wait_time','90'),('edit_disable_time','0'),('autoFixDatabase','1'),('allow_guestAccess','1'),('time_format','%B %d, %Y, %I:%M:%S %p'),('number_format','1234.00'),('enableBBC','1'),('max_messageLength','20000'),('signature_settings','0,300,0,0,0,0,0,0:abbr,acronym,anchor,b,bdo,black,blue,br,center,code,code,color,email,email,flash,font,ftp,ftp,glow,green,html,hr,i,img,img,iurl,iurl,left,li,list,list,ltr,me,move,nobbc,php,pre,quote,quote,quote,quote,quote,red,right,rtl,s,shadow,size,size,sub,sup,table,td,time,tr,tt,u,url,url,white'),('autoOptMaxOnline','0'),('defaultMaxMessages','5'),('defaultMaxTopics','20'),('defaultMaxMembers','30'),('enableParticipation','0'),('recycle_enable','0'),('recycle_board','0'),('maxMsgID','2'),('enableAllMessages','0'),('fixLongWords','0'),('knownThemes','3'),('who_enabled','0'),('time_offset','0'),('cookieTime','60'),('lastActive','15'),('smiley_sets_known','default,aaron,akyhne'),('smiley_sets_names','Alienine\'s Set\nAaron\'s Set\nAkyhne\'s Set'),('smiley_sets_default','default'),('cal_days_for_index','7'),('requireAgreement','1'),('unapprovedMembers','0'),('default_personal_text',''),('package_make_backups','1'),('databaseSession_enable','1'),('databaseSession_loose','1'),('databaseSession_lifetime','2880'),('search_cache_size','50'),('search_results_per_page','30'),('search_weight_frequency','30'),('search_weight_age','25'),('search_weight_length','20'),('search_weight_subject','15'),('search_weight_first_message','10'),('search_max_results','1200'),('search_floodcontrol_time','5'),('permission_enable_deny','0'),('permission_enable_postgroups','0'),('mail_next_send','0'),('mail_recent','0000000000|0'),('settings_updated','1541124346'),('next_task_time','1585731600'),('warning_settings','0,20,0'),('search_pointer','2'),('admin_features','cp'),('last_mod_report_action','1481393142'),('pruningOptions','30,180,180,180,30,0'),('cache_enable','0'),('reg_verification','0'),('visual_verification_type','0'),('enable_buddylist','0'),('birthday_email','happy_birthday'),('dont_repeat_theme_core','1'),('dont_repeat_smileys_20','1'),('dont_repeat_buddylists','1'),('attachment_image_reencode','1'),('attachment_image_paranoid','0'),('attachment_thumb_png','1'),('avatar_reencode','1'),('avatar_paranoid','0'),('default_timezone','America/Vancouver'),('memberlist_updated','1546661231'),('latestMember','40'),('latestRealName','testcache'),('rand_seed','927006344'),('mostOnlineUpdated','2020-04-01'),('currentAttachmentUploadDir','0'),('calendar_updated','1585730020'),('disable_wysiwyg','1'),('disabledBBC','abbr,acronym,anchor,bdo,black,blue,br,color,email,email,flash,font,ftp,ftp,glow,green,html,iurl,iurl,li,ltr,me,move,nobbc,php,pre,red,rtl,shadow,size,size,sub,sup,time,tt,white'),('spider_name_cache','a:19:{i:1;s:6:\"Google\";i:2;s:6:\"Yahoo!\";i:3;s:3:\"MSN\";i:4;s:15:\"Google (Mobile)\";i:5;s:14:\"Google (Image)\";i:6;s:16:\"Google (AdSense)\";i:7;s:16:\"Google (Adwords)\";i:8;s:15:\"Yahoo! (Mobile)\";i:9;s:14:\"Yahoo! (Image)\";i:10;s:12:\"MSN (Mobile)\";i:11;s:11:\"MSN (Media)\";i:12;s:4:\"Cuil\";i:13;s:3:\"Ask\";i:14;s:5:\"Baidu\";i:15;s:9:\"Gigablast\";i:16;s:15:\"InternetArchive\";i:17;s:5:\"Alexa\";i:18;s:6:\"Omgili\";i:19;s:9:\"EntireWeb\";}'),('disabled_profile_fields','icq,msn,aim,yim,location,gender,warning_status'),('enableErrorQueryLogging','1'),('custom_avatar_url',''),('custom_avatar_dir',''),('queryless_urls','0'),('notify_new_registration','0'),('global_character_set','UTF-8'),('previousCharacterSet','utf8');
/*!40000 ALTER TABLE `smf_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_smileys`
--

DROP TABLE IF EXISTS `smf_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_smileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `filename` varchar(48) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_smileys`
--

LOCK TABLES `smf_smileys` WRITE;
/*!40000 ALTER TABLE `smf_smileys` DISABLE KEYS */;
INSERT INTO `smf_smileys` VALUES (1,':)','smiley.gif','Smiley',0,0,0),(2,';)','wink.gif','Wink',0,1,0),(3,':D','cheesy.gif','Cheesy',0,2,0),(4,';D','grin.gif','Grin',0,3,0),(5,'>:(','angry.gif','Angry',0,4,0),(6,':(','sad.gif','Sad',0,5,0),(7,':o','shocked.gif','Shocked',0,6,0),(8,'8)','cool.gif','Cool',0,7,0),(9,'???','huh.gif','Huh?',0,8,0),(10,'::)','rolleyes.gif','Roll Eyes',0,9,0),(11,':P','tongue.gif','Tongue',0,10,0),(12,':-[','embarrassed.gif','Embarrassed',0,11,0),(13,':-X','lipsrsealed.gif','Lips Sealed',0,12,0),(14,':-\\','undecided.gif','Undecided',0,13,0),(15,':-*','kiss.gif','Kiss',0,14,0),(16,':\'(','cry.gif','Cry',0,15,0),(17,'>:D','evil.gif','Evil',0,16,1),(18,'^-^','azn.gif','Azn',0,17,1),(19,'O0','afro.gif','Afro',0,18,1),(20,':))','laugh.gif','Laugh',0,19,1),(21,'C:-)','police.gif','Police',0,20,1),(22,'O:-)','angel.gif','Angel',0,21,1);
/*!40000 ALTER TABLE `smf_smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_spiders`
--

DROP TABLE IF EXISTS `smf_spiders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_spiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_spiders`
--

LOCK TABLES `smf_spiders` WRITE;
/*!40000 ALTER TABLE `smf_spiders` DISABLE KEYS */;
INSERT INTO `smf_spiders` VALUES (1,'Google','googlebot',''),(2,'Yahoo!','slurp',''),(3,'MSN','msnbot',''),(4,'Google (Mobile)','Googlebot-Mobile',''),(5,'Google (Image)','Googlebot-Image',''),(6,'Google (AdSense)','Mediapartners-Google',''),(7,'Google (Adwords)','AdsBot-Google',''),(8,'Yahoo! (Mobile)','YahooSeeker/M1A1-R2D2',''),(9,'Yahoo! (Image)','Yahoo-MMCrawler',''),(10,'MSN (Mobile)','MSNBOT_Mobile',''),(11,'MSN (Media)','msnbot-media',''),(12,'Cuil','twiceler',''),(13,'Ask','Teoma',''),(14,'Baidu','Baiduspider',''),(15,'Gigablast','Gigabot',''),(16,'InternetArchive','ia_archiver-web.archive.org',''),(17,'Alexa','ia_archiver',''),(18,'Omgili','omgilibot',''),(19,'EntireWeb','Speedy Spider','');
/*!40000 ALTER TABLE `smf_spiders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_subscriptions`
--

DROP TABLE IF EXISTS `smf_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_subscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_subscriptions`
--

LOCK TABLES `smf_subscriptions` WRITE;
/*!40000 ALTER TABLE `smf_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_themes`
--

DROP TABLE IF EXISTS `smf_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_themes`
--

LOCK TABLES `smf_themes` WRITE;
/*!40000 ALTER TABLE `smf_themes` DISABLE KEYS */;
INSERT INTO `smf_themes` VALUES (0,1,'name','SMF Default Theme - Curve'),(0,1,'theme_url','Themes/default'),(0,1,'images_url','Themes/default/images'),(0,1,'theme_dir','/var/www/forum/Themes/default'),(0,1,'show_bbc','1'),(0,1,'show_latest_member','0'),(0,1,'show_modify','1'),(0,1,'show_user_images','1'),(0,1,'show_blurb','0'),(0,1,'show_gender','0'),(0,1,'show_newsfader','0'),(0,1,'number_recent_posts','0'),(0,1,'show_member_bar','1'),(0,1,'linktree_link','1'),(0,1,'show_profile_buttons','0'),(0,1,'show_mark_read','1'),(0,1,'show_stats_index','0'),(0,1,'linktree_inline','0'),(0,1,'show_board_desc','1'),(0,1,'newsfader_time','5000'),(0,1,'allow_no_censored','0'),(0,1,'additional_options_collapsable','0'),(0,1,'use_image_buttons','1'),(0,1,'enable_news','0'),(0,1,'forum_width','90%'),(0,2,'name','Core Theme'),(0,2,'theme_url','http://Themes/core'),(0,2,'images_url','Themes/core/images'),(0,2,'theme_dir','/var/www/forum/Themes/core'),(-1,1,'display_quick_reply','1'),(-1,1,'posts_apply_ignore_list','1'),(0,3,'theme_layers','html,body'),(0,3,'theme_url','Themes/Redsy'),(0,1,'header_logo_url',''),(0,1,'site_slogan',''),(0,1,'smiley_sets_default','none'),(0,1,'show_group_key','0'),(0,1,'display_who_viewing','0'),(0,1,'hide_post_group','0'),(0,3,'theme_dir','/var/www/forum/Themes/Redsy'),(0,3,'name','Redsy'),(-1,1,'wysiwyg_default','0'),(-1,1,'show_board_desc','0'),(-1,1,'show_children','0'),(-1,1,'use_sidebar_menu','0'),(-1,1,'show_no_avatars','0'),(-1,1,'show_no_signatures','0'),(-1,1,'show_no_censored','0'),(-1,1,'return_to_post','1'),(-1,1,'no_new_reply_warning','0'),(-1,1,'view_newest_first','0'),(-1,1,'view_newest_pm_first','0'),(-1,1,'popup_messages','0'),(-1,1,'copy_to_outbox','1'),(-1,1,'pm_remove_inbox_label','0'),(-1,1,'auto_notify','0'),(-1,1,'topics_per_page','0'),(-1,1,'messages_per_page','0'),(-1,1,'display_quick_mod','0'),(0,3,'images_url','Themes/Redsy/images'),(0,3,'theme_templates','index'),(1,3,'collapse_header','0'),(2,3,'collapse_header','0'),(0,3,'header_logo_url',''),(0,3,'redsy_copyright',''),(0,3,'redsy_navbar','0'),(0,3,'redsy_navbar_height',''),(0,3,'forum_width','90%'),(0,3,'smiley_sets_default','none'),(0,3,'facebook_check','0'),(0,3,'facebook_text',''),(0,3,'twitter_check','0'),(0,3,'twitter_text',''),(0,3,'youtube_check','0'),(0,3,'youtube_text',''),(0,3,'rss_check','0'),(0,3,'rss_text',''),(0,3,'linktree_link','1'),(0,3,'show_mark_read','1'),(0,3,'allow_no_censored','0'),(0,3,'show_newsfader','0'),(0,3,'newsfader_time','5000'),(0,3,'number_recent_posts','0'),(0,3,'show_stats_index','0'),(0,3,'show_latest_member','0'),(0,3,'show_group_key','0'),(0,3,'display_who_viewing','0'),(0,3,'show_modify','1'),(0,3,'show_profile_buttons','0'),(0,3,'show_user_images','1'),(0,3,'show_blurb','0'),(0,3,'show_gender','0'),(0,3,'hide_post_group','1'),(0,3,'show_bbc','1'),(0,3,'additional_options_collapsable','0'),(1,3,'collapse_header_ic','0'),(3,3,'collapse_header','0'),(1,1,'show_board_desc','0'),(1,1,'show_children','0'),(1,1,'use_sidebar_menu','0'),(1,1,'show_no_avatars','0'),(1,1,'show_no_signatures','0'),(1,1,'return_to_post','1'),(1,1,'no_new_reply_warning','0'),(1,1,'view_newest_first','0'),(1,1,'topics_per_page','0'),(1,1,'messages_per_page','0'),(1,1,'display_quick_reply','1'),(1,1,'display_quick_mod','0'),(1,1,'auto_notify','0'),(15,1,'display_quick_reply','1'),(17,1,'display_quick_reply','1'),(19,1,'display_quick_reply','1'),(19,3,'collapse_header','1'),(18,3,'collapse_header','0'),(21,1,'display_quick_reply','1'),(23,1,'display_quick_reply','1'),(1,1,'admin_preferences','a:3:{s:2:\"pv\";s:7:\"classic\";s:3:\"app\";s:1:\"0\";s:2:\"sb\";s:8:\"internal\";}'),(1,1,'collapse_header','0'),(24,1,'display_quick_reply','1'),(25,1,'display_quick_reply','1'),(26,1,'display_quick_reply','1'),(27,1,'display_quick_reply','1'),(28,1,'display_quick_reply','1'),(30,1,'display_quick_reply','1'),(31,1,'display_quick_reply','1'),(32,1,'display_quick_reply','1'),(33,1,'display_quick_reply','1'),(34,1,'display_quick_reply','1'),(35,1,'display_quick_reply','1'),(36,1,'display_quick_reply','1'),(37,1,'display_quick_reply','1'),(38,1,'display_quick_reply','1'),(40,1,'display_quick_reply','1'),(39,1,'display_quick_reply','1');
/*!40000 ALTER TABLE `smf_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_topic_bans`
--

DROP TABLE IF EXISTS `smf_topic_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_topic_bans` (
  `id_topic_ban` int(11) NOT NULL AUTO_INCREMENT,
  `id_topic` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `id_msg` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_topic_ban`),
  KEY `id_topic_ban` (`id_topic_ban`),
  KEY `id_topic_ban_2` (`id_topic_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_topic_bans`
--

LOCK TABLES `smf_topic_bans` WRITE;
/*!40000 ALTER TABLE `smf_topic_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_topic_bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smf_topics`
--

DROP TABLE IF EXISTS `smf_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smf_topics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smf_topics`
--

LOCK TABLES `smf_topics` WRITE;
/*!40000 ALTER TABLE `smf_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `smf_topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01  9:36:42
