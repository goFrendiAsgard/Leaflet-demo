-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: geo
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `OGR_FID` int(11) NOT NULL AUTO_INCREMENT,
  `SHAPE` geometry NOT NULL,
  `cat` decimal(10,0) DEFAULT NULL,
  `na3` varchar(80) DEFAULT NULL,
  `elev` double(32,3) DEFAULT NULL,
  `f_code` varchar(80) DEFAULT NULL,
  `iko` varchar(80) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `use` varchar(80) DEFAULT NULL,
  UNIQUE KEY `OGR_FID` (`OGR_FID`),
  SPATIAL KEY `SHAPE` (`SHAPE`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'\0\0\0\0\0\0o˙5_d¿*H ˘„P@',1,'US00157',78.000,'Airport/Airfield','PA','NOATAK','Other'),(2,'\0\0\0\0\0\0cß˚øPªc¿ùxÄ ∆P@',2,'US00229',264.000,'Airport/Airfield','PA','AMBLER','Other'),(3,'\0\0\0\0\0\0]¢˝ﬂÂb¿¢¶\0\0î∫P@',3,'US00186',585.000,'Airport/Airfield','PABT','BETTLES','Other'),(4,'\0\0\0\0\0\0¥˙_\'Sd¿ca†û∏P@',4,'US59150',9.000,'Airport/Airfield','PAOT','RALPH WIEN MEM','Civilian/Public'),(5,'\0\0\0\0\0\0Y‹˙ﬂéˇc¿9Ò‡f¶P@',5,'US00173',21.000,'Airport/Airfield','PA','SELAWIK','Other'),(6,'\0\0\0\0\0\0≠Œ¸â6c¿X\n‡âP@',6,'US00193',1113.000,'Airport/Airfield','PA','INDIAN MOUNTAIN LRRS','Other'),(7,'\0\0\0\0\0\0]˙ˇ‹$d¿¨P¿›~P@',7,'US00177',21.000,'Airport/Airfield','PA','BUCKLAND','Other'),(8,'\0\0\0\0\0\0§˛˜Ö˝d¿\r@dP@',8,'US00146',243.000,'Airport/Airfield','PATC','TIN CITY LRRS','Other'),(9,'\0\0\0\0\0\0A8˙øı(d¿}ÄÎYP@',9,'US00150',1329.000,'Airport/Airfield','PA','GRANITE MOUNTAIN AFS','Other'),(10,'\0\0\0\0\0\0ÀL¯ˇx€d¿›ﬂ <PP@',10,'US03057',9.000,'Airport/Airfield','PA','PORT CLARENCE CGS','Other'),(11,'\0\0\0\0\0\0=+˝Äc¿√\0@)KP@',11,'US00188',207.000,'Airport/Airfield','PATA','RALPH M CALHOUN','Other'),(12,'\0\0\0\0\0\0Ø-˙ø%d¿ßï‡Õ;P@',12,'US00155',108.000,'Airport/Airfield','PA','KOYUK','Other'),(13,'\0\0\0\0\0\0\'ç˚ˇˇùc¿»Ä/P@',13,'US75867',138.000,'Airport/Airfield','PAGA','EDWARD G PITKA SR','Joint Military/Civilian'),(14,'\0\0\0\0\0\0+’˘ø‘Ad¿‰Ÿ\0≠,P@',14,'US60244',12.000,'Airport/Airfield','PA','MOSES POINT','Other'),(15,'\0\0\0\0\0\0Ê•¯?Æd¿¿‡« P@',15,'US42171',33.000,'Airport/Airfield','PAOM','NOME','Civilian/Public'),(16,'\0\0\0\0\0\0?á˚ü¸öc¿	‘ *P@',16,'US00211',1461.000,'Airport/Airfield','PA','KALAKAKET CREEK  AS','Military'),(17,'\0\0\0\0\0\0s˙ˇêd¿!ê‡µÒO@',17,'US00436',18.000,'Airport/Airfield','PAUN','UNALAKLEET','Other'),(18,'\0\0\0\0\0\0&‰¸ü	c¿—P\0∂O@',18,'US00327',624.000,'Airport/Airfield','PA','MINCHUMINA','Other'),(19,'\0\0\0\0\0\0deˆ_swe¿lﬂ¿%‚O@',19,'US91222',24.000,'Airport/Airfield','PA','GAMBELL','Other'),(20,'\0\0\0\0\0\0,Àˆø√Oe¿Ç†€◊O@',20,'US00453',48.000,'Airport/Airfield','PA','SAVOONGA','Other'),(21,'\0\0\0\0\0\0h≠˚bsc¿À@¯yO@',21,'US80563',306.000,'Airport/Airfield','PAMC','MC GRATH','Civilian/Public'),(22,'\0\0\0\0\0\0ÿã˚ü>c¿éˆ }rO@',22,'US00342',858.000,'Airport/Airfield','PATL','TATALINA LRRS','Other'),(23,'\0\0\0\0\0\0¬©¯∑èd¿i!\0ÑdO@',23,'US00466',12.000,'Airport/Airfield','PA','EMMONAK','Other'),(24,'\0\0\0\0\0\0«˙üd¿ÆÒ¿SO@',24,'US00455',282.000,'Airport/Airfield','PA','ANVIK','Other'),(25,'\0\0\0\0\0\0GN˝ˇ¬b¿. )O@',25,'US95665',327.000,'Airport/Airfield','PATK','TALKEETNA','Civilian/Public'),(26,'\0\0\0\0\0\0A¯ø´id¿®Ó@¿O@',26,'US00458',282.000,'Airport/Airfield','PA','ST MARYS','Other'),(27,'\0\0\0\0\0\02Ù˜ü>¡d¿z√	 ‡„N@',27,'US00440',417.000,'Airport/Airfield','PACZ','CAPE ROMANZOF LRRS','Other'),(28,'\0\0\0\0\0\07!˙ü`Òc¿µ3¿q N@',28,'US00317',78.000,'Airport/Airfield','PA','ANIAK','Other'),(29,'\0\0\0\0\0\0y]˚drc¿rí¿qåN@',29,'US00338',1449.000,'Airport/Airfield','PASV','SPARREVOHN LRRS','Other'),(30,'\0\0\0\0\0\0Ü5˘ﬂ–:d¿rÁ¿œcN@',30,'US38091',111.000,'Airport/Airfield','PABE','BETHEL','Civilian/Public'),(31,'\0\0\0\0\0\0W®¸øÎÁb¿˜@7IN@',31,'US45021',87.000,'Airport/Airfield','PAEN','KENAI MUNI','Civilian/Public'),(32,'\0\0\0\0\0\0«¥¸_9·b¿\0@Ã<N@',32,'US34970',96.000,'Airport/Airfield','PA','SOLDOTNA','Other'),(33,'\0\0\0\0\0\0ü˜ﬂ®»d¿zˆ\n†ä/N@',33,'US00447',42.000,'Airport/Airfield','PA','MEKORYUK','Other'),(34,'\0\0\0\0\0\0Fbˇ(b¿:\"\0†ë§P@',34,'US00201',393.000,'Airport/Airfield','PFYU','FORT YUKON','Other'),(35,'\0\0\0\0\0\0Ùs˛©sb¿Çs\0†ô5P@',35,'US99779',408.000,'Airport/Airfield','PAFB','WAINWRIGHT AAF','Military'),(36,'\0\0\0\0\0\0˙`˛_Ç{b¿yz\0 4P@',36,'US90129',396.000,'Airport/Airfield','PAFA','FAIRBANKS INTL','Civilian/Public'),(37,'\0\0\0\0\0\0 í˛ü>cb¿kj\0Äò*P@',37,'US49463',501.000,'Airport/Airfield','PAEI','EIELSON AFB','Military'),(38,'\0\0\0\0\0\0v˚˝Z¢b¿^£\0`\"#P@',38,'US18668',330.000,'Airport/Airfield','PA','NENANA MUNI','Other'),(39,'\0\0\0\0\0\0uÌ˝?ÿ£b¿Â´\0‡FP@',39,'US00191',504.000,'Airport/Airfield','PACL','CLEAR','Other'),(40,'\0\0\0\0\0\0◊ÿ˛ø7b¿Ã≠\0`MˇO@',40,'US11435',1167.000,'Airport/Airfield','PABI','ALLEN AAF','Military'),(41,'\0\0\0\0\0\0ÕbˇΩÍa¿óY\0\0ÎØO@',41,'US34092',1416.000,'Airport/Airfield','PA','TANACROSS','Other'),(42,'\0\0\0\0\0\0Û≠ˇªΩa¿˛-\0\0\r{O@',42,'US33180',1569.000,'Airport/Airfield','PAOR','NORTHWAY','Civilian/Public'),(43,'\0\0\0\0\0\0Vü˛øú.b¿9Ú\0`”O@',43,'US91368',1443.000,'Airport/Airfield','PAGK','GULKANA','Civilian/Public'),(44,'\0\0\0\0\0\0Ñ|˝ü◊¢b¿äÄ ÃN@',44,'US33235',225.000,'Airport/Airfield','PAAQ','PALMER MUNI','Civilian/Public'),(45,'\0\0\0\0\0\0=B˝∫b¿óAÄçƒN@',45,'US00343',135.000,'Airport/Airfield','PA','BIG LAKE','Other'),(46,'\0\0\0\0\0\0›B˝?Û¥b¿HI†ô°N@',46,'US00341',345.000,'Airport/Airfield','PAFR','BRYANT AHP','Military'),(47,'\0\0\0\0\0\0§6˝ﬂŒπb¿}V†,†N@',47,'US58704',192.000,'Airport/Airfield','PAED','ELMENDORF AFB','Military'),(48,'\0\0\0\0\0\0¸1˝øªb¿ó\\ qõN@',48,'US01693',123.000,'Airport/Airfield','PAMR','MERRILL FLD','Civilian/Public'),(49,'\0\0\0\0\0\0û$˝ø‡øb¿l PñN@',49,'US77679',129.000,'Airport/Airfield','PANC','ANCHORAGE INTL','Civilian/Public'),(50,'\0\0\0\0\0\0_<˛üÚGb¿KX %ëN@',50,'US96982',108.000,'Airport/Airfield','PAVD','VALDEZ','Other'),(51,'\0\0\0\0\0\0Y˛ﬂH/b¿ƒI`Ù>N@',51,'US40776',36.000,'Airport/Airfield','PACV','MERLE K MUDHOLE SMITH','Other'),(52,'\0\0\0\0\0\0¥$˝ﬂf≠b¿ªåÄ?N@',52,'US80341',18.000,'Airport/Airfield','PA','SEWARD','Other'),(53,'\0\0\0\0\0\0-Y˚ﬂY]c¿»ﬁ\0[‡M@',53,'US00483',189.000,'Airport/Airfield','PAIL','ILIAMNA','Other'),(54,'\0\0\0\0\0\0?n¸@Ôb¿˝t†°“M@',54,'US53682',75.000,'Airport/Airfield','PAHO','HOMER','Other'),(55,'\0\0\0\0\0\0ñ+˚;hc¿Ô3 KÆM@',55,'US00488',606.000,'Airport/Airfield','PA','BIG MOUNTAIN AFS','Military'),(56,'\0\0\0\0\0\0$	˙_–c¿ –ÖM@',56,'US07889',78.000,'Airport/Airfield','PADL','DILLINGHAM','Civilian/Public'),(57,'\0\0\0\0\0\0Êó˙ˇ≈îc¿¯7\0ùVM@',57,'US81498',51.000,'Airport/Airfield','PAKN','KING SALMON','Joint Military/Civilian'),(58,'\0\0\0\0\0\0¡¡¯Ad¿5`	 ÿRM@',58,'US00476',492.000,'Airport/Airfield','PAEH','CAPE NEWENHAM LRRS','Other'),(59,'\0\0\0\0\0\0LÀ˚øÕc¿Eö ˇﬂL@',59,'US22587',66.000,'Airport/Airfield','PADQ','KODIAK','Joint Military/Civilian'),(60,'\0\0\0\0\0\0˜∂ıﬂ\rGe¿4ö kïL@',60,'US00475',57.000,'Airport/Airfield','PASN','ST PAUL ISLAND','Other'),(61,'\0\0\0\0\0\0⁄¢˘ﬂ7‘c¿„9¿ŒzL@',61,'US00482',78.000,'Airport/Airfield','PA','PORT HEIDEN','Other'),(62,'\0\0\0\0\0\0Õı*5e¿∏ù‡JL@',62,'US00477',114.000,'Airport/Airfield','PA','ST GEORGE','Other'),(63,'\0\0\0\0\0\0gÒ˜-Wd¿ QöK@',63,'US95048',87.000,'Airport/Airfield','PACD','COLD BAY','Civilian/Public'),(64,'\0\0\0\0\0\0\rjˆ_d—d¿Ú¿7ÛJ@',64,'US95921',18.000,'Airport/Airfield','PADU','UNALASKA','Other'),(65,'\0\0\0\0\0\0+yı?3e¿ØÄàxJ@',65,'US00578',66.000,'Airport/Airfield','PA','NIKOLSKI AS','Military'),(66,'\0\0\0\0\0\0ªïÛ_ö∆e¿°û`4J@',66,'US76610',51.000,'Airport/Airfield','PA','ATKA','Other'),(67,'\0\0\0\0\0\0¶≥ˇ ua¿%5\0 n¿M@',67,'US47439',30.000,'Airport/Airfield','PAYA','YAKUTAT','Civilian/Public'),(68,'\0\0\0\0\0\05®\0\0\ZÍ`¿böˇ„∫M@',68,'US97565',39.000,'Airport/Airfield','PAGY','SKAGWAY','Other'),(69,'\0\0\0\0\0\0åï\0\0∂`¿:£ˇ?eüM@',69,'US62749',12.000,'Airport/Airfield','PA','HAINES','Other'),(70,'\0\0\0\0\0\0‘m\0‡£ˆ`¿ï∂ˇT6M@',70,'US19342',30.000,'Airport/Airfield','PA','GUSTAVUS','Other'),(71,'\0\0\0\0\0\0œq\0@Ì`¿¿≤ˇLM@',71,'US47648',18.000,'Airport/Airfield','PA','HOONAH','Other'),(72,'\0\0\0\0\0\0\'ó\0ÄΩ`¿\rñˇˇzL@',72,'US94530',156.000,'Airport/Airfield','PA','KAKE','Other'),(73,'\0\0\0\0\0\0¡\0¿?û`¿s{ˇˇúfL@',73,'US14079',96.000,'Airport/Airfield','PA','PETERSBURG JAMES A JOHNSON','Other'),(74,'\0\0\0\0\0\0∫—\0†’ã`¿Öoˇ_˛=L@',74,'US38648',39.000,'Airport/Airfield','PA','WRANGELL','Other'),(75,'\0\0\0\0\0\0zë\0Äo¢`¿:ìˇ\" K@',75,'US05477',72.000,'Airport/Airfield','PA','KLAWOCK','Other'),(76,'\0\0\0\0\0\0P«\0¿Or`¿ÏlˇnÖK@',76,'US11438',108.000,'Airport/Airfield','PANT','ANNETTE ISLAND','Other');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geometry_columns`
--

DROP TABLE IF EXISTS `geometry_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geometry_columns` (
  `F_TABLE_CATALOG` varchar(256) DEFAULT NULL,
  `F_TABLE_SCHEMA` varchar(256) DEFAULT NULL,
  `F_TABLE_NAME` varchar(256) NOT NULL,
  `F_GEOMETRY_COLUMN` varchar(256) NOT NULL,
  `COORD_DIMENSION` int(11) DEFAULT NULL,
  `SRID` int(11) DEFAULT NULL,
  `TYPE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geometry_columns`
--

LOCK TABLES `geometry_columns` WRITE;
/*!40000 ALTER TABLE `geometry_columns` DISABLE KEYS */;
INSERT INTO `geometry_columns` VALUES (NULL,NULL,'airports','SHAPE',2,1,'POINT');
/*!40000 ALTER TABLE `geometry_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spatial_ref_sys`
--

DROP TABLE IF EXISTS `spatial_ref_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spatial_ref_sys` (
  `SRID` int(11) NOT NULL,
  `AUTH_NAME` varchar(256) DEFAULT NULL,
  `AUTH_SRID` int(11) DEFAULT NULL,
  `SRTEXT` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spatial_ref_sys`
--

LOCK TABLES `spatial_ref_sys` WRITE;
/*!40000 ALTER TABLE `spatial_ref_sys` DISABLE KEYS */;
INSERT INTO `spatial_ref_sys` VALUES (1,NULL,NULL,'GEOGCS[\"WGS 84\",DATUM[\"WGS_1984\",SPHEROID[\"WGS 84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY[\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\",\"8901\"]],UNIT[\"degree\",0.0174532925199433,AUTHORITY[\"EPSG\",\"9122\"]],AUTHORITY[\"EPSG\",\"4326\"]]');
/*!40000 ALTER TABLE `spatial_ref_sys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-17 14:24:49
