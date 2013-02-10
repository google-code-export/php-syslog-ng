-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: syslog
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.11.10.1-log

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
-- Table structure for table `ui_layout`
--

DROP TABLE IF EXISTS `ui_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ui_layout` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `userid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `pagename` varchar(255) NOT NULL DEFAULT 'Main',
  `col` smallint(5) unsigned NOT NULL DEFAULT '1',
  `rowindex` int(9) NOT NULL DEFAULT '0',
  `header` varchar(40) NOT NULL,
  `group_access` varchar(255) NOT NULL DEFAULT 'users',
  `content` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_header` (`userid`,`header`)
) ENGINE=MyISAM AUTO_INCREMENT=2536 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ui_layout`
--

LOCK TABLES `ui_layout` WRITE;
/*!40000 ALTER TABLE `ui_layout` DISABLE KEYS */;
INSERT INTO `ui_layout` VALUES (219,0,'Admin',1,1,'Server Settings','admins','includes/portlets/portlet-sadmin.php'),(217,0,'Results',1,12,'Search Results','users','includes/portlets/portlet-table.php'),(216,0,'Main',1,1,'Severities','users','includes/portlets/portlet-severities.php'),(215,0,'Main',2,5,'Search Options','users','includes/portlets/portlet-search_options.php'),(213,0,'Main',1,2,'Facilities','users','includes/portlets/portlet-facilities.php'),(211,0,'Main',1,3,'Programs','users','includes/portlets/portlet-programs.php'),(209,0,'Main',3,8,'Messages','users','includes/portlets/portlet-sphinxquery.php'),(208,0,'Main',3,7,'Date and Time','users','includes/portlets/portlet-datepicker.php'),(207,0,'Main',3,6,'Hosts','users','includes/portlets/portlet-hosts.php'),(220,0,'Top_Messages',1,11,'Top Messages','users','includes/portlets/portlet-chart_topmsgs.php'),(221,0,'About',1,13,'About','users','includes/portlets/portlet-about.php'),(222,0,'Bugs',1,1,'Bugs','users','includes/portlets/portlet-known_bugs.php'),(279,0,'Graph',1,0,'Graph Results','users','includes/portlets/portlet-chart_adhoc.php'),(567,0,'User',2,0,'Change Password','users','includes/portlets/portlet-uadmin_chpw.php'),(611,0,'User',1,0,'Delete User','admins','includes/portlets/portlet-uadmin_deluser.php'),(809,0,'User',3,0,'Groups','admins','includes/portlets/portlet-groupadmin.php'),(546,0,'User',1,0,'Add User','admins','includes/portlets/portlet-uadmin_adduser.php'),(1109,0,'Portlet_Admin',2,0,'Portlet Group Permissions','admins','includes/portlets/portlet-portlet_permissions_group.php'),(1182,0,'Portlet_Admin',1,0,'Portlet User Permissions','admins','includes/portlets/portlet-portlet_permissions_user.php'),(2455,1,'Main',1,0,'Severities','admins','includes/portlets/portlet-severities.php'),(2449,1,'Portlet_Admin',1,0,'Portlet User Permissions','admins','includes/portlets/portlet-portlet_permissions_user.php'),(2448,1,'Portlet_Admin',2,0,'Portlet Group Permissions','admins','includes/portlets/portlet-portlet_permissions_group.php'),(2441,1,'Main',3,0,'Messages','admins','includes/portlets/portlet-sphinxquery.php'),(1359,0,'User',3,5,'Group Assignments','admins','includes/portlets/portlet-uadmin_group_assign.php'),(2439,1,'Main',3,0,'Hosts','admins','includes/portlets/portlet-hosts.php'),(2438,1,'User',3,0,'Groups','admins','includes/portlets/portlet-groupadmin.php'),(2437,1,'User',3,0,'Group Assignments','admins','includes/portlets/portlet-uadmin_group_assign.php'),(2436,1,'Graph',1,0,'Graph Results','admins','includes/portlets/portlet-chart_adhoc.php'),(2435,1,'Main',1,0,'Facilities','admins','includes/portlets/portlet-facilities.php'),(2433,1,'User',1,0,'Delete User','admins','includes/portlets/portlet-uadmin_deluser.php'),(2432,1,'Main',3,0,'Date and Time','admins','includes/portlets/portlet-datepicker.php'),(2431,1,'User',2,0,'Change Password','admins','includes/portlets/portlet-uadmin_chpw.php'),(2430,1,'Bugs',1,0,'Bugs','admins','includes/portlets/portlet-known_bugs.php'),(2429,1,'User',1,0,'Add User','admins','includes/portlets/portlet-uadmin_adduser.php'),(2428,1,'About',1,0,'About','admins','includes/portlets/portlet-about.php'),(2450,1,'Main',1,0,'Programs','admins','includes/portlets/portlet-programs.php'),(2452,1,'Main',2,0,'Search Options','admins','includes/portlets/portlet-search_options.php'),(2453,1,'Results',1,0,'Search Results','admins','includes/portlets/portlet-table.php'),(2454,1,'Admin',1,0,'Server Settings','admins','includes/portlets/portlet-sadmin.php'),(2457,1,'Top_Messages',1,0,'Top Messages','admins','includes/portlets/portlet-chart_topmsgs.php'),(1790,1,'Main',2,3,'Mnemonics','admins','includes/portlets/portlet-mnemonics.php'),(1791,0,'Main',2,4,'Mnemonics','users','includes/portlets/portlet-mnemonics.php'),(1793,0,'Email_Alerts',1,0,'Email Alerts','admins','includes/portlets/portlet-email_alerts.php'),(2434,1,'Email_Alerts',1,0,'Email Alerts','admins','includes/portlets/portlet-email_alerts.php'),(1801,0,'Favorites',1,0,'Edit Favorites','users','includes/portlets/portlet-favorites.php'),(1802,1,'Favorites',1,0,'Edit Favorites','admins','includes/portlets/portlet-favorites.php'),(1936,2,'Portlet_Admin',1,0,'Portlet User Permissions','admins','includes/portlets/portlet-portlet_permissions_user.php'),(1935,2,'Portlet_Admin',2,0,'Portlet Group Permissions','admins','includes/portlets/portlet-portlet_permissions_group.php'),(1934,2,'Main',2,4,'Mnemonics','users','includes/portlets/portlet-mnemonics.php'),(1927,2,'Main',3,8,'Messages','users','includes/portlets/portlet-sphinxquery.php'),(1926,2,'Main',3,6,'Hosts','users','includes/portlets/portlet-hosts.php'),(1925,2,'User',3,0,'Groups','admins','includes/portlets/portlet-groupadmin.php'),(1924,2,'User',3,5,'Group Assignments','admins','includes/portlets/portlet-uadmin_group_assign.php'),(1923,2,'Graph',1,0,'Graph Results','users','includes/portlets/portlet-chart_adhoc.php'),(1922,2,'Main',1,2,'Facilities','users','includes/portlets/portlet-facilities.php'),(1920,2,'Email_Alerts',1,0,'Email Alerts','admins','includes/portlets/portlet-email_alerts.php'),(1919,2,'Favorites',1,0,'Edit Favorites','users','includes/portlets/portlet-favorites.php'),(1918,2,'User',1,0,'Delete User','admins','includes/portlets/portlet-uadmin_deluser.php'),(1917,2,'Main',3,7,'Date and Time','users','includes/portlets/portlet-datepicker.php'),(1916,2,'User',2,0,'Change Password','users','includes/portlets/portlet-uadmin_chpw.php'),(1915,2,'Bugs',1,1,'Bugs','users','includes/portlets/portlet-known_bugs.php'),(1914,2,'User',1,0,'Add User','admins','includes/portlets/portlet-uadmin_adduser.php'),(1913,2,'About',1,13,'About','users','includes/portlets/portlet-about.php'),(1937,2,'Main',1,3,'Programs','users','includes/portlets/portlet-programs.php'),(1938,2,'Main',2,5,'Search Options','users','includes/portlets/portlet-search_options.php'),(1939,2,'Results',1,12,'Search Results','users','includes/portlets/portlet-table.php'),(1940,2,'Admin',1,1,'Server Settings','admins','includes/portlets/portlet-sadmin.php'),(1941,2,'Main',1,1,'Severities','users','includes/portlets/portlet-severities.php'),(1942,2,'Top_Messages',1,11,'Top Messages','users','includes/portlets/portlet-chart_topmsgs.php'),(2458,3,'About',1,0,'About','users','includes/portlets/portlet-about.php'),(1944,3,'User',1,0,'Add User','admins','includes/portlets/portlet-uadmin_adduser.php'),(2459,3,'Bugs',1,0,'Bugs','users','includes/portlets/portlet-known_bugs.php'),(2460,3,'User',2,0,'Change Password','users','includes/portlets/portlet-uadmin_chpw.php'),(2461,3,'Main',3,0,'Date and Time','users','includes/portlets/portlet-datepicker.php'),(1948,3,'User',1,0,'Delete User','admins','includes/portlets/portlet-uadmin_deluser.php'),(2462,3,'Favorites',1,0,'Edit Favorites','users','includes/portlets/portlet-favorites.php'),(1950,3,'Email_Alerts',1,0,'Email Alerts','admins','includes/portlets/portlet-email_alerts.php'),(2463,3,'Main',1,0,'Facilities','users','includes/portlets/portlet-facilities.php'),(2464,3,'Graph',1,0,'Graph Results','users','includes/portlets/portlet-chart_adhoc.php'),(1954,3,'User',3,5,'Group Assignments','admins','includes/portlets/portlet-uadmin_group_assign.php'),(1955,3,'User',3,0,'Groups','admins','includes/portlets/portlet-groupadmin.php'),(2465,3,'Main',3,0,'Hosts','users','includes/portlets/portlet-hosts.php'),(2466,3,'Main',3,0,'Messages','users','includes/portlets/portlet-sphinxquery.php'),(2473,3,'Main',2,0,'Mnemonics','users','includes/portlets/portlet-mnemonics.php'),(1965,3,'Portlet_Admin',2,0,'Portlet Group Permissions','admins','includes/portlets/portlet-portlet_permissions_group.php'),(1966,3,'Portlet_Admin',1,0,'Portlet User Permissions','admins','includes/portlets/portlet-portlet_permissions_user.php'),(2474,3,'Main',1,0,'Programs','users','includes/portlets/portlet-programs.php'),(2475,3,'Main',2,0,'Search Options','users','includes/portlets/portlet-search_options.php'),(2476,3,'Results',1,0,'Search Results','users','includes/portlets/portlet-table.php'),(1970,3,'Admin',1,1,'Server Settings','admins','includes/portlets/portlet-sadmin.php'),(2477,3,'Main',1,0,'Severities','users','includes/portlets/portlet-severities.php'),(2479,3,'Top_Messages',1,0,'Top Messages','users','includes/portlets/portlet-chart_topmsgs.php'),(1973,0,'Main',1,0,'Snare EventId','users','includes/portlets/portlet-snare_eid.php'),(1977,0,'Import',1,0,'Import','admins','includes/portlets/portlet-import.php'),(2440,1,'Import',1,0,'Import','admins','includes/portlets/portlet-import.php'),(1979,2,'Import',1,0,'Import','admins','includes/portlets/portlet-import.php'),(1980,3,'Import',1,0,'Import','admins','includes/portlets/portlet-import.php'),(2451,1,'Security',1,0,'RBAC Group Assignment','admins','includes/portlets/portlet-rbac.php'),(2394,0,'Security',1,0,'RBAC Group Assignment','admins','includes/portlets/portlet-rbac.php'),(2456,1,'Main',1,0,'Snare EventId','admins','includes/portlets/portlet-snare_eid.php'),(2478,3,'Main',1,0,'Snare EventId','users','includes/portlets/portlet-snare_eid.php'),(2480,4,'About',1,13,'About','users','includes/portlets/portlet-about.php'),(2481,4,'User',1,0,'Add User','admins','includes/portlets/portlet-uadmin_adduser.php'),(2482,4,'Bugs',1,1,'Bugs','users','includes/portlets/portlet-known_bugs.php'),(2483,4,'User',2,0,'Change Password','users','includes/portlets/portlet-uadmin_chpw.php'),(2484,4,'Main',3,7,'Date and Time','users','includes/portlets/portlet-datepicker.php'),(2485,4,'User',1,0,'Delete User','admins','includes/portlets/portlet-uadmin_deluser.php'),(2486,4,'Favorites',1,0,'Edit Favorites','users','includes/portlets/portlet-favorites.php'),(2487,4,'Email_Alerts',1,0,'Email Alerts','admins','includes/portlets/portlet-email_alerts.php'),(2488,4,'Main',1,2,'Facilities','users','includes/portlets/portlet-facilities.php'),(2489,4,'Graph',1,0,'Graph Results','users','includes/portlets/portlet-chart_adhoc.php'),(2490,4,'User',3,5,'Group Assignments','admins','includes/portlets/portlet-uadmin_group_assign.php'),(2491,4,'User',3,0,'Groups','admins','includes/portlets/portlet-groupadmin.php'),(2492,4,'Main',3,6,'Hosts','users','includes/portlets/portlet-hosts.php'),(2493,4,'Import',1,0,'Import','admins','includes/portlets/portlet-import.php'),(2494,4,'Main',3,8,'Messages','users','includes/portlets/portlet-sphinxquery.php'),(2501,4,'Main',2,4,'Mnemonics','users','includes/portlets/portlet-mnemonics.php'),(2502,4,'Portlet_Admin',2,0,'Portlet Group Permissions','admins','includes/portlets/portlet-portlet_permissions_group.php'),(2503,4,'Portlet_Admin',1,0,'Portlet User Permissions','admins','includes/portlets/portlet-portlet_permissions_user.php'),(2504,4,'Main',1,3,'Programs','users','includes/portlets/portlet-programs.php'),(2505,4,'Security',1,0,'RBAC Group Assignment','admins','includes/portlets/portlet-rbac.php'),(2506,4,'Main',2,5,'Search Options','users','includes/portlets/portlet-search_options.php'),(2507,4,'Results',1,12,'Search Results','users','includes/portlets/portlet-table.php'),(2508,4,'Admin',1,1,'Server Settings','admins','includes/portlets/portlet-sadmin.php'),(2509,4,'Main',1,1,'Severities','users','includes/portlets/portlet-severities.php'),(2510,4,'Main',1,0,'Snare EventId','users','includes/portlets/portlet-snare_eid.php'),(2511,4,'Top_Messages',1,11,'Top Messages','users','includes/portlets/portlet-chart_topmsgs.php'),(2512,0,'EPD',1,0,'Events Per Day','users','includes/portlets/EPD.php'),(2513,1,'EPD',1,0,'Events Per Day','admins','includes/portlets/EPD.php'),(2514,2,'EPD',1,0,'Events Per Day','users','includes/portlets/EPD.php'),(2515,3,'EPD',1,0,'Events Per Day','users','includes/portlets/EPD.php'),(2516,0,'EPS',1,0,'Events Per Second','users','includes/portlets/EPS.php'),(2517,1,'EPS',1,0,'Events Per Second','admins','includes/portlets/EPS.php'),(2518,2,'EPS',1,0,'Events Per Second','users','includes/portlets/EPS.php'),(2519,3,'EPS',1,0,'Events Per Second','users','includes/portlets/EPS.php'),(2520,0,'EPH',1,0,'Events Per Hour','users','includes/portlets/EPH.php'),(2521,1,'EPH',1,0,'Events Per Hour','admins','includes/portlets/EPH.php'),(2522,2,'EPH',1,0,'Events Per Hour','users','includes/portlets/EPH.php'),(2523,3,'EPH',1,0,'Events Per Hour','users','includes/portlets/EPH.php'),(2524,0,'EPMo',1,0,'Events Per Month','users','includes/portlets/EPMo.php'),(2525,1,'EPMo',1,0,'Events Per Month','admins','includes/portlets/EPMo.php'),(2526,2,'EPMo',1,0,'Events Per Month','users','includes/portlets/EPMo.php'),(2527,3,'EPMo',1,0,'Events Per Month','users','includes/portlets/EPMo.php'),(2528,0,'EPM',1,0,'Events Per Minute','users','includes/portlets/EPM.php'),(2529,1,'EPM',1,0,'Events Per Minute','admins','includes/portlets/EPM.php'),(2530,2,'EPM',1,0,'Events Per Minute','users','includes/portlets/EPM.php'),(2531,3,'EPM',1,0,'Events Per Minute','users','includes/portlets/EPM.php'),(2532,0,'EPW',1,0,'Events Per Week','users','includes/portlets/EPW.php'),(2533,1,'EPW',1,0,'Events Per Week','admins','includes/portlets/EPW.php'),(2534,2,'EPW',1,0,'Events Per Week','users','includes/portlets/EPW.php'),(2535,3,'EPW',1,0,'Events Per Week','users','includes/portlets/EPW.php');
/*!40000 ALTER TABLE `ui_layout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-01 15:55:32
