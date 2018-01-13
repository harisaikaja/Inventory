-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: inventoryapp
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add inv_location',7,'add_inv_location'),(20,'Can change inv_location',7,'change_inv_location'),(21,'Can delete inv_location',7,'delete_inv_location'),(22,'Can add inv_status',8,'add_inv_status'),(23,'Can change inv_status',8,'change_inv_status'),(24,'Can delete inv_status',8,'delete_inv_status'),(25,'Can add jts_employees',9,'add_jts_employees'),(26,'Can change jts_employees',9,'change_jts_employees'),(27,'Can delete jts_employees',9,'delete_jts_employees'),(28,'Can add inv_warehouse',10,'add_inv_warehouse'),(29,'Can change inv_warehouse',10,'change_inv_warehouse'),(30,'Can delete inv_warehouse',10,'delete_inv_warehouse'),(31,'Can add inv_position',11,'add_inv_position'),(32,'Can change inv_position',11,'change_inv_position'),(33,'Can delete inv_position',11,'delete_inv_position'),(34,'Can add inv_products',12,'add_inv_products'),(35,'Can change inv_products',12,'change_inv_products'),(36,'Can delete inv_products',12,'delete_inv_products'),(37,'Can add inv_material type',13,'add_inv_materialtype'),(38,'Can change inv_material type',13,'change_inv_materialtype'),(39,'Can delete inv_material type',13,'delete_inv_materialtype'),(40,'Can add inv_ unit of measure',14,'add_inv_unitofmeasure'),(41,'Can change inv_ unit of measure',14,'change_inv_unitofmeasure'),(42,'Can delete inv_ unit of measure',14,'delete_inv_unitofmeasure');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'InventoryApp','inv_location'),(13,'InventoryApp','inv_materialtype'),(11,'InventoryApp','inv_position'),(12,'InventoryApp','inv_products'),(8,'InventoryApp','inv_status'),(14,'InventoryApp','inv_unitofmeasure'),(10,'InventoryApp','inv_warehouse'),(9,'InventoryApp','jts_employees'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'InventoryApp','0001_initial','2017-12-02 12:30:28.467794'),(2,'contenttypes','0001_initial','2017-12-02 12:30:29.319430'),(3,'auth','0001_initial','2017-12-02 12:30:42.168532'),(4,'admin','0001_initial','2017-12-02 12:30:45.020206'),(5,'admin','0002_logentry_remove_auto_add','2017-12-02 12:30:45.336795'),(6,'contenttypes','0002_remove_content_type_name','2017-12-02 12:30:47.452980'),(7,'auth','0002_alter_permission_name_max_length','2017-12-02 12:30:47.696471'),(8,'auth','0003_alter_user_email_max_length','2017-12-02 12:30:48.038410'),(9,'auth','0004_alter_user_username_opts','2017-12-02 12:30:48.175863'),(10,'auth','0005_alter_user_last_login_null','2017-12-02 12:30:48.907283'),(11,'auth','0006_require_contenttypes_0002','2017-12-02 12:30:49.000732'),(12,'auth','0007_alter_validators_add_error_messages','2017-12-02 12:30:49.109261'),(13,'auth','0008_alter_user_username_max_length','2017-12-02 12:30:49.701521'),(14,'sessions','0001_initial','2017-12-02 12:30:50.678709'),(15,'InventoryApp','0002_auto_20171202_1740','2017-12-02 17:40:25.982689'),(16,'InventoryApp','0003_inv_position','2017-12-06 23:57:00.425315'),(17,'InventoryApp','0004_inv_products','2017-12-07 14:58:05.138142'),(18,'InventoryApp','0005_auto_20171211_1622','2017-12-11 16:22:13.089551'),(19,'InventoryApp','0005_inv_materialtype_inv_unitofmeasure','2017-12-13 13:15:18.012468'),(20,'InventoryApp','0004_inv_materialtype_inv_products_inv_unitofmeasure','2017-12-13 14:05:28.017108'),(21,'InventoryApp','0005_auto_20171213_1418','2017-12-13 14:18:47.695966'),(22,'InventoryApp','0003_auto_20171213_1423','2017-12-13 14:24:05.482960'),(23,'InventoryApp','0004_auto_20171213_1925','2017-12-13 19:26:07.672308'),(24,'InventoryApp','0005_auto_20171220_1700','2017-12-20 17:00:58.275268'),(25,'InventoryApp','0003_auto_20171220_1844','2017-12-20 18:45:58.043597');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_UnitOfMeasure`
--

DROP TABLE IF EXISTS `inv_UnitOfMeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_UnitOfMeasure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurementName` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_UnitOfMeasure`
--

LOCK TABLES `inv_UnitOfMeasure` WRITE;
/*!40000 ALTER TABLE `inv_UnitOfMeasure` DISABLE KEYS */;
INSERT INTO `inv_UnitOfMeasure` VALUES (1,'nos.');
/*!40000 ALTER TABLE `inv_UnitOfMeasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_location`
--

DROP TABLE IF EXISTS `inv_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(15) NOT NULL,
  `locationAddress` varchar(50) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_location_statusId_id_1e00067b` (`statusId_id`),
  CONSTRAINT `inv_location_statusId_id_1e00067b_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_location`
--

LOCK TABLES `inv_location` WRITE;
/*!40000 ALTER TABLE `inv_location` DISABLE KEYS */;
INSERT INTO `inv_location` VALUES (1,'hyderabad','40605, indu',2),(2,'kakinada','kakinada',1),(36,'canada','dadadas',1),(37,'tab','ngp',8),(38,'goa','goa1',1);
/*!40000 ALTER TABLE `inv_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_materialType`
--

DROP TABLE IF EXISTS `inv_materialType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_materialType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialType` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_materialType`
--

LOCK TABLES `inv_materialType` WRITE;
/*!40000 ALTER TABLE `inv_materialType` DISABLE KEYS */;
INSERT INTO `inv_materialType` VALUES (1,'raw material'),(2,'finished goods'),(3,'intermediate');
/*!40000 ALTER TABLE `inv_materialType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_position`
--

DROP TABLE IF EXISTS `inv_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Position` varchar(15) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  `warehouseId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_position_statusId_id_09e69e24_fk_inv_status_id` (`statusId_id`),
  KEY `inv_position_warehouseId_id_db546a53_fk_inv_warehouse_id` (`warehouseId_id`),
  CONSTRAINT `inv_position_statusId_id_09e69e24_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`),
  CONSTRAINT `inv_position_warehouseId_id_db546a53_fk_inv_warehouse_id` FOREIGN KEY (`warehouseId_id`) REFERENCES `inv_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_position`
--

LOCK TABLES `inv_position` WRITE;
/*!40000 ALTER TABLE `inv_position` DISABLE KEYS */;
INSERT INTO `inv_position` VALUES (1,'R0C01',1,1),(2,'R0C02',1,1),(3,'R0C03',1,1);
/*!40000 ALTER TABLE `inv_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_products`
--

DROP TABLE IF EXISTS `inv_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `productDescription` varchar(250) NOT NULL,
  `productModel` varchar(50) NOT NULL,
  `productCompany` varchar(20) NOT NULL,
  `productPackage` varchar(15) NOT NULL,
  `productPurchasable` varchar(5) NOT NULL,
  `productPurchaseListPrice` varchar(10) NOT NULL,
  `productPriceTolerancePercent` varchar(10) NOT NULL,
  `productSellable` varchar(5) NOT NULL,
  `productSerialControlled` varchar(5) NOT NULL,
  `productBatchTracked` varchar(5) NOT NULL,
  `standardCost` varchar(10) NOT NULL,
  `reorderLevel` varchar(10) NOT NULL,
  `reorderQty` varchar(15) NOT NULL,
  `productType_id` int(11) NOT NULL,
  `productUOM_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_products_productType_id_202ff899_fk_inv_materialType_id` (`productType_id`),
  KEY `inv_products_productUOM_id_41a64a20_fk_inv_UnitOfMeasure_id` (`productUOM_id`),
  KEY `inv_products_statusId_id_6361b5df_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `inv_products_productType_id_202ff899_fk_inv_materialType_id` FOREIGN KEY (`productType_id`) REFERENCES `inv_materialType` (`id`),
  CONSTRAINT `inv_products_productUOM_id_41a64a20_fk_inv_UnitOfMeasure_id` FOREIGN KEY (`productUOM_id`) REFERENCES `inv_UnitOfMeasure` (`id`),
  CONSTRAINT `inv_products_statusId_id_6361b5df_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_products`
--

LOCK TABLES `inv_products` WRITE;
/*!40000 ALTER TABLE `inv_products` DISABLE KEYS */;
INSERT INTO `inv_products` VALUES (1,'Wireless motion sensor','COMPONENTS','1','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(2,'4â„¦/5W Speakers','COMPONENTS','2','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(3,'Computer Sockets','COMPONENTS','3','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(4,'Motion sensor','COMPONENTS','4','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(5,'Ceiling mound PIR 360 module','COMPONENTS','5','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(6,'Stepper Servo drive','COMPONENTS','6','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(7,'Stepper motor drive','COMPONENTS','7','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(8,'DC motor-12V','COMPONENTS','8','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(9,'DC motor-05V','COMPONENTS','9','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(10,'DC Solinide volves','COMPONENTS','10','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(11,'Buzzer','COMPONENTS','11','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(12,'Acs-712current sensor','COMPONENTS','12','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(13,'Light sensors','COMPONENTS','13','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(14,'Ultra sonic sensor','COMPONENTS','14','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(15,'204J capacitor','COMPONENTS','15','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(16,'105J/400V capacitor','COMPONENTS','16','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(17,'Temperature sensor','COMPONENTS','17','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(18,'Multi colourLED','COMPONENTS','18','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(19,'3mm',' LEDS','19','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(20,'5mm LEDS',' LEDS','20','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(21,'RED',' LEDS','21','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(22,'yellow',' LEDS','22','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(23,'Green',' LEDS','23','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(24,'MQ3','COMPONENTS','24','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(25,'SPDT Switches','COMPONENTS','25','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(26,'5 amp fuses','COMPONENTS','26','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(27,'GY-30 sensor','COMPONENTS','27','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(28,'474/400V capacitor','COMPONENTS','28','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(29,'LED smd red','COMPONENTS','29','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(30,'10k smd (1206  package)','COMPONENTS','30','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(31,'RFID Reader ','COMPONENTS','31','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(32,'4.7k smd(1206 package)','COMPONENTS','32','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(33,'1k smd(1206 Package)','COMPONENTS','33','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(34,'7805 Regulator','COMPONENTS','34','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(35,'104 PF/3A','COMPONENTS','35','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(36,'ULN 2003(ic)','COMPONENTS','36','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(37,'IC 7473','COMPONENTS','37','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(38,'Temp,humidity sensor','COMPONENTS','38','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(39,'M5 90 E','COMPONENTS','39','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(40,'Moisture sensor','COMPONENTS','40','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(41,'Key pad','COMPONENTS','41','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(42,'Pressure sensor(touch sensor)','COMPONENTS','42','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(43,'6 pin male pins','COMPONENTS','43','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(44,'6 pin female pins','COMPONENTS','44','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(45,'Display(16*20)','COMPONENTS','45','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(46,'Display(4*16)','COMPONENTS','46','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(47,'CP 2102','COMPONENTS','47','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(48,'BC 557','COMPONENTS','48','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(49,'TIP 122','COMPONENTS','49','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(50,'10 pin connector','COMPONENTS','50','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(51,'16 pin IC base','COMPONENTS','51','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(52,'18 pin IC base','COMPONENTS','52','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(53,'IC 7474','COMPONENTS','53','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(54,'6 pin male connector','COMPONENTS','54','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(55,'ULL 2803 IC','COMPONENTS','55','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(56,'smd 557','COMPONENTS','56','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(57,'Push buttons(2 pole 2 mm)','COMPONENTS','57','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(58,'Push buttons(4 pole 10 mm)','COMPONENTS','58','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(59,'BTA-12-600V','COMPONENTS','59','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(60,'IRF 830','COMPONENTS','60','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(61,'Opto 4N35','COMPONENTS','61','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(62,'Iql-74','COMPONENTS','62','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(63,'PB 107(Bridge rectifier)','COMPONENTS','63','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(64,'CD 4050','COMPONENTS','64','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(65,'Gas sensors','COMPONENTS','65','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(66,'RJ 45 pin','COMPONENTS','66','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(67,'RJ 45 pin Sockets pcb mount','COMPONENTS','67','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(68,'Dc Round pins pcb mount','COMPONENTS','68','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(69,'NSB 455j','COMPONENTS','69','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(70,'IRF 3205','COMPONENTS','70','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(71,'LM 356(IC)','COMPONENTS','71','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(72,'LM 1117','COMPONENTS','72','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(73,'10k POT','COMPONENTS','73','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(74,'Ic74138','COMPONENTS','74','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(75,'USB male pins','COMPONENTS','75','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(76,'USB female pins','COMPONENTS','76','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(77,'USB female pins v3','COMPONENTS','77','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(78,'USB female pins V8','COMPONENTS','78','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(79,'LDRS','COMPONENTS','79','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(80,'L293D','COMPONENTS','80','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(81,'LM 311','COMPONENTS','81','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(82,'BC 547','COMPONENTS','82','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(83,'PCF 847','COMPONENTS','83','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(84,'1k POT','COMPONENTS','84','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(85,'Glass breaker sensor','COMPONENTS','85','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(86,'LED Striplet','COMPONENTS','86','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(87,'Motion sensor','COMPONENTS','87','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(88,'Water sensor','COMPONENTS','88','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(89,'RFID Remote&receiver','COMPONENTS','89','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(90,'IR proximity sensor','COMPONENTS','90','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(91,'Bluetooth HC05','COMPONENTS','91','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(92,'IR sensors','COMPONENTS','92','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(93,'6pin female connector','COMPONENTS','93','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(94,'mikes','COMPONENTS','94','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(95,'Dimmer Regulator 1500W','COMPONENTS','95','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(96,'Current sensors 712 ACS 30A','COMPONENTS','96','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(97,'Servo drivers','COMPONENTS','97','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(98,'Rocker Switches','COMPONENTS','98','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(99,'Servo motor SG90','COMPONENTS','99','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(100,'RJ 45 wall sockets','COMPONENTS','100','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(101,'push to on/off','COMPONENTS','101','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(102,'IN5408 diodes','COMPONENTS','102','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(103,'104J','COMPONENTS','103','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(104,'104k','COMPONENTS','104','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(105,'BD 140','COMPONENTS','105','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(106,'0.475/400V','COMPONENTS','106','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(107,'6V Bulb','COMPONENTS','107','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(108,'on/off switch','COMPONENTS','108','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(109,'BD 139','COMPONENTS','109','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(110,'ESP 8266','COMPONENTS','110','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(111,'General purpose pcb IIC','COMPONENTS','111','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(112,'General purpose pcb','COMPONENTS','112','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(113,'20 pin IC base','COMPONENTS','113','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(114,'74HC574','COMPONENTS','114','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(115,'ESP male female jumper pins','COMPONENTS','115','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(116,'PN 2907','COMPONENTS','116','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(117,'IR Tx and Rx TSD1238','COMPONENTS','117','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(118,'4017 IC','COMPONENTS','118','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(119,'32GB memory card with adaptor','COMPONENTS','119','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(120,'memory card 32GB ','COMPONENTS','120','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(121,'3 pin connector(green)AC','COMPONENTS','121','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(122,'2 pin connector AC','COMPONENTS','122','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(123,'4 pin connector AC','COMPONENTS','123','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(124,'10 pin connector pcb male','COMPONENTS','124','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(125,'2 pin jumpers','COMPONENTS','125','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(126,'lockers switches SSR 40','COMPONENTS','126','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(127,'HDMA cable ','COMPONENTS','127','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(128,'Robotic part kits','COMPONENTS','128','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(129,'6 pin connetor(MALE PCB)','COMPONENTS','129','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(130,'AC adaptor with usb slot','COMPONENTS','130','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(131,'limit switches','COMPONENTS','131','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(132,'DC pins(wired)','COMPONENTS','132','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(133,'DC pins(panel mount)','COMPONENTS','133','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(134,'de soldering pumps','COMPONENTS','134','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(135,'GSM,GPS circuit','COMPONENTS','135','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(136,'fore sips ','COMPONENTS','136','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(137,'soldering tips ','COMPONENTS','137','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(138,'9v battery','COMPONENTS','138','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(139,'mobile battery (BL-4c 3.7v 890 mah','COMPONENTS','139','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(140,'3.7v li battery','COMPONENTS','140','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(141,'usb 10 TTLCP2102','COMPONENTS','141','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(142,'S111733','COMPONENTS','142','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(143,'Lugs ','COMPONENTS','143','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(144,'Lugs ','COMPONENTS','144','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(145,'usb to universal serial port','COMPONENTS','145','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(146,'RF 1D Tx and Receiver','COMPONENTS','146','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(147,'LM 317','COMPONENTS','147','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(148,'Tip 42c','COMPONENTS','148','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(149,'Tip 36c','COMPONENTS','149','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(150,'pcf8574 I to c interface','COMPONENTS','150','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(151,'geared motor 10rpm','COMPONENTS','151','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(152,'TIP127','COMPONENTS','152','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(153,'Ic pcf8574','COMPONENTS','153','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(154,'7806 Regulator ','COMPONENTS','154','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(155,'7812 regulator','COMPONENTS','155','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(156,'2N 7000','COMPONENTS','156','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(157,'IN 4007 SMD M7 ','COMPONENTS','157','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(158,'330â„¦ SMD','COMPONENTS','158','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(159,'Relays','COMPONENTS','159','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(160,'12v/16amp','COMPONENTS','160','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(161,'5v/10amp','COMPONENTS','161','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(162,'12v/10amp sp','COMPONENTS','162','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(163,'12v/2amp','COMPONENTS','163','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(164,'12v/10amp','COMPONENTS','164','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(165,'Soldering lead(60/40)50g','COMPONENTS','165','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(166,'De soldering wicks','COMPONENTS','166','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(167,'Soldering flux','COMPONENTS','167','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(168,'Quick fix flux','COMPONENTS','168','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(169,'Mechanical solder paste','COMPONENTS','169','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(170,'Heat sink compound','COMPONENTS','170','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(171,'12-0-12/750mA transformer','COMPONENTS','171','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(172,'6-0-6/500mA transformer','COMPONENTS','172','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(173,'4 1/2-0-4 1/2/200mA transformer','COMPONENTS','173','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(174,'Bread Board','COMPONENTS','174','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(175,'Wheels','COMPONENTS','175','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(176,'Zorric maintance spray','COMPONENTS','176','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(177,'100â„¦/5W','COMPONENTS','177','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(178,'220â„¦/5W','COMPONENTS','178','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(179,'LED SMD white','COMPONENTS','179','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(180,'847 smd Transistors','COMPONENTS','180','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(181,'D-link router','COMPONENTS','181','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(182,'Disc capacitors','COMPONENTS','182','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(183,'4k7 PF','COMPONENTS','183','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(184,'470 PF','COMPONENTS','184','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(185,'12 PF','COMPONENTS','185','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(186,'3K3 PF','COMPONENTS','186','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(187,'30 PF','COMPONENTS','187','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(188,'330 PF','COMPONENTS','188','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(189,'1K1 PF','COMPONENTS','189','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(190,'220 PF','COMPONENTS','190','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(191,'47 PF','COMPONENTS','191','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(192,'7 PF','COMPONENTS','192','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(193,'68 PF','COMPONENTS','193','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(194,'648 PF','COMPONENTS','194','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(195,'10K PF','COMPONENTS','195','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(196,'2K2 PF','COMPONENTS','196','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(197,'15 PF','COMPONENTS','197','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(198,'22 PF','COMPONENTS','198','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(199,'10 PF','COMPONENTS','199','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(200,'0.001ÂµF','COMPONENTS','200','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(201,'0.002ÂµF','COMPONENTS','201','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(202,'0.0022ÂµF','COMPONENTS','202','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(203,'2.2 PF','COMPONENTS','203','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(204,'18 PF','COMPONENTS','204','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(205,'27 PF','COMPONENTS','205','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(206,'0.47 PF','COMPONENTS','206','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(207,'2.7 PF','COMPONENTS','207','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(208,'0.01 Âµf','COMPONENTS','208','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(209,'104 pf','COMPONENTS','209','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(210,'100 pf','COMPONENTS','210','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(211,'40A DC relay','COMPONENTS','211','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(212,'104 pf SMD(1206)','COMPONENTS','212','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(213,'104 pf SMD(0805)','COMPONENTS','213','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(214,'1.5k SMD (1206)','COMPONENTS','214','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(215,'4.7k SMD ','COMPONENTS','215','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(216,'330â„¦ SMD','COMPONENTS','216','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(217,'470k SMD','COMPONENTS','217','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(218,'18 pin IC base','COMPONENTS','218','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(219,'Bluetooth','COMPONENTS','219','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(220,'2k2/10W resistor','COMPONENTS','220','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(221,'1k/10W resistor','COMPONENTS','221','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(222,'Eletronic lab','COMPONENTS','222','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(223,'R & D components','COMPONENTS','223','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(224,'LED holder','COMPONENTS','224','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(225,'135P51010E','COMPONENTS','225','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(226,'4921','COMPONENTS','226','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(227,'BD677','COMPONENTS','227','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(228,'B0405','COMPONENTS','228','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(229,'CD40106','COMPONENTS','229','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(230,'SB8550','COMPONENTS','230','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(231,'BOX54C','COMPONENTS','231','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(232,'TYN616DH2 scr','COMPONENTS','232','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(233,'LA4445','COMPONENTS','233','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(234,'BA5406','COMPONENTS','234','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(235,'2N5322','COMPONENTS','235','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(236,'C33740','COMPONENTS','236','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(237,'2N4918','COMPONENTS','237','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(238,'TIP 32C','COMPONENTS','238','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(239,'TIP 31C','COMPONENTS','239','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(240,'Voltage level shifter','COMPONENTS','240','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(241,'74LS78 IC','COMPONENTS','241','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(242,'S8050','COMPONENTS','242','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(243,'NE555 P','COMPONENTS','243','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(244,'N2907','COMPONENTS','244','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(245,'MJE 3055T','COMPONENTS','245','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(246,'MJE 2955T','COMPONENTS','246','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(247,'10â„¦/5W','COMPONENTS','247','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(248,'UM 3561','COMPONENTS','248','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(249,'Rocker switch-big','COMPONENTS','249','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(250,'push button 5A/250 A','COMPONENTS','250','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(251,'push button on/off switch','COMPONENTS','251','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(252,'79E3HK','COMPONENTS','252','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(253,'Transistor188','COMPONENTS','253','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(254,'Transistor187','COMPONENTS','254','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(255,'74HC118','COMPONENTS','255','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(256,'ESP male jumpers','COMPONENTS','256','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(257,'30amp relays','COMPONENTS','257','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(258,'15v/1.5Aadaptor','COMPONENTS','258','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(259,'12V/2amp adaptor','COMPONENTS','259','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(260,'12V/1amp adaptor','COMPONENTS','260','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(261,'5V/2amp adaptor','COMPONENTS','261','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(262,'5V/1amp adaptor','COMPONENTS','262','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(263,'15V/1amp adaptor','COMPONENTS','263','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(264,'9V/2amp adaptor','COMPONENTS','264','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(265,'1mfd/50V','CAPACITOR','265','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(266,'1mfd/63V','CAPACITOR','266','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(267,'2.2mfd/63V','CAPACITOR','267','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(268,'4.7mfd/63V','CAPACITOR','268','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(269,'10mfd/25V','CAPACITOR','269','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(270,'22mfd/50V','CAPACITOR','270','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(271,'22mfd/63V','CAPACITOR','271','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(272,'47mfd/50V','CAPACITOR','272','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(273,'47mfd/25V','CAPACITOR','273','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(274,'47mfd/63V','CAPACITOR','274','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(275,'100mfd/25V','CAPACITOR','275','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(276,'220mfd/25V','CAPACITOR','276','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(277,'330mfd/25V','CAPACITOR','277','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(278,'470mfd/25V','CAPACITOR','278','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(279,'1000mfd/25V','CAPACITOR','279','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(280,'2200mfd/25V','CAPACITOR','280','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(281,'3300mfd/25V','CAPACITOR','281','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(282,'10mfd/25V smd','CAPACITOR','282','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(283,'RFID reader cards','COMPONENTS','283','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(284,'Arduino','ARDUINO','284','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(285,'Arduino cable','ARDUINO','285','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(286,'IN4007 Diodes','DIODE','286','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(287,'IN4148 zenor','DIODE','287','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(288,'3.3V zenor','DIODE','288','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(289,'4.7V zenor','DIODE','289','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(290,'5.6V zenor','DIODE','290','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(291,'6.2V zenor','DIODE','291','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(292,'6.8V zenor','DIODE','292','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(293,'7.5V zenor','DIODE','293','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(294,'8.2V zenor','DIODE','294','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(295,'9.1V zenor','DIODE','295','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(296,'10V zenor','DIODE','296','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(297,'12V zenor','DIODE','297','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(298,'15V zenor','DIODE','298','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(299,'27V zenor','DIODE','299','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(300,'5.1V zenor','DIODE','300','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(301,'IN5408 Diodes','DIODE','301','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(302,'Aurdino monitor','Arduino','302','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(303,'key board','COMPONENTS','303','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(304,'mouse','COMPONENTS','304','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(305,'Door han photocell pair','COMPONENTS','305','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(306,'Photo cells pair(CAME)','COMPONENTS','306','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(307,'LED 5mm blue','COMPONENTS','307','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(308,'LED smd red','COMPONENTS','308','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(309,'CAT5 cable in  meter','COMPONENTS','309','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(310,'Samsung door lock','COMPONENTS','310','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(311,'cp plus door lock','COMPONENTS','311','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(312,'Godreg security system','COMPONENTS','312','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(313,'4V/1ah lead acid battries','COMPONENTS','313','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(314,'HIKVISON VDP INDOOR unit','COMPONENTS','314','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(315,'HIKVISON VDP OUTDOOR unit','COMPONENTS','315','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(316,'Cable ties with tag','COMPONENTS','316','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(317,'iball/Slide Tab','COMPONENTS','317','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(318,'iball/Slide Tab','COMPONENTS','318','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(319,'acer  11.6\"Laptop','COMPONENTS','319','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(320,'Network  video recorder','COMPONENTS','320','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(321,'L com key switch','COMPONENTS','321','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(322,'panic buttons','COMPONENTS','322','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(323,'MASTECH Multimeter','COMPONENTS','323','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(324,'multimeter','COMPONENTS','324','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(325,'7809regulater','COMPONENTS','325','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(326,'IC7476','COMPONENTS','326','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(327,'Steppermotor45kg/cm torque','COMPONENTS','327','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(328,'Tiny 5V dc motor','COMPONENTS','328','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(329,'1117 smd','COMPONENTS','329','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(330,'ras berry pi','COMPONENTS','330','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(331,'Hard disk 1TB','COMPONENTS','331','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(332,'iball recovery pendrive','COMPONENTS','332','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(333,'sandhya recovery pendrive','COMPONENTS','333','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(334,'krisp recovery pendrive','COMPONENTS','334','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(335,'1/022 single wire packet','COMPONENTS','335','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(336,'wire strippers','COMPONENTS','336','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(337,'cutter(nipper)','COMPONENTS','337','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(338,'wheels','COMPONENTS','338','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(339,'wire less charger','COMPONENTS','339','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(340,'soldering iron25W','COMPONENTS','340','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(341,'micro soldering pen','COMPONENTS','341','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(342,'soldering iron stand','COMPONENTS','342','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(343,'micro soldering station','COMPONENTS','343','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(344,'screw drivers','COMPONENTS','344','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(345,'cutting plier','COMPONENTS','345','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(346,'crimping tool','COMPONENTS','346','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(347,'4C relays','COMPONENTS','347','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(348,'8C relays','COMPONENTS','348','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(349,'power cords 2pin','COMPONENTS','349','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(350,'power cords 3pin','COMPONENTS','350','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(351,'IR blaster','COMPONENTS','351','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(352,'VDP(cp-unb-c22)out door unit','COMPONENTS','352','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(353,'VDP in door unit','COMPONENTS','353','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(354,'Heat sinks','COMPONENTS','354','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(355,'USB data cable','COMPONENTS','355','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(356,'104pf/3A capacitors','COMPONENTS','356','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(357,'BTA-12-600V','COMPONENTS','357','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(358,'16A/240V contactors','COMPONENTS','358','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(359,'GPS tracking system','COMPONENTS','359','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(360,'glue sticks','COMPONENTS','360','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(361,'geared motor 5v','COMPONENTS','361','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(362,'DC motor 60rpm','COMPONENTS','362','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(363,'HDMA extender','COMPONENTS','363','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(364,'LDR','COMPONENTS','364','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(365,'LED holders','COMPONENTS','365','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(366,'20 pin ic base','COMPONENTS','366','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(367,'8 pin ic base','COMPONENTS','367','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(368,'14 pin ic base','COMPONENTS','368','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(369,'PLC18F microcontroller','COMPONENTS','369','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(370,'MJ11015','COMPONENTS','370','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(371,'OBD module','COMPONENTS','371','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(372,'POT100K','COMPONENTS','372','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(373,'POT1M','COMPONENTS','373','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(374,'PLC16F microcontroller','COMPONENTS','374','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(375,'power bank','COMPONENTS','375','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(376,'preset alingers','COMPONENTS','376','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(377,'power supply control 12V/3A','COMPONENTS','377','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(378,'RJ45 sockets(pcb)','COMPONENTS','378','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(379,'SOT23 smd5408','COMPONENTS','379','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(380,'laptop battery','COMPONENTS','380','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(381,'laptop charger','COMPONENTS','381','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(382,'6pin male pins','COMPONENTS','382','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(383,'6pin female pins','COMPONENTS','383','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(384,'10pin connectors','COMPONENTS','384','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(385,'10pin connectors','COMPONENTS','385','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(386,'6pin male connectorâ€¦','COMPONENTS','386','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(387,'4pinconnector','COMPONENTS','387','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(388,'LED light15W','COMPONENTS','388','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(389,'Final version home auto-pcb-withrelay','COMPONENTS','389','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(390,'Final version home auto-pcb-withrelay','COMPONENTS','390','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(391,'2pin connector','COMPONENTS','391','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(392,'usb -universalserial port','COMPONENTS','392','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(393,'RS232 toTTL','COMPONENTS','393','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(394,'FUSES','COMPONENTS','394','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(395,'6amp/big','COMPONENTS','395','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(396,'6amp/small','COMPONENTS','396','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(397,'10amp/big','COMPONENTS','397','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(398,'10amp/small','COMPONENTS','398','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(399,'15amp/big6','COMPONENTS','399','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(400,'15amp/small','COMPONENTS','400','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(401,'Black sleeve 2.0/1 in meters','COMPONENTS','401','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(402,'Black sleeve3.0/1.5 in meters','COMPONENTS','402','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(403,'Black sleeve5.0/1.5 in meters','COMPONENTS','403','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(404,'Black sleeve 1.0/1 in meters','COMPONENTS','404','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(405,'male-female jumper','COMPONENTS','405','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(406,'femele-female jumper','COMPONENTS','406','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(407,'male-male jumper','COMPONENTS','407','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(408,'2pin female wire connector10mm','COMPONENTS','408','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(409,'4pin female wire connector','COMPONENTS','409','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(410,'6pin female wire connector','COMPONENTS','410','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(411,'10wire ribboncable','COMPONENTS','411','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(412,'female-female jumper(red/black','COMPONENTS','412','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(413,'curtain holder','COMPONENTS','413','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(414,'cp cable','COMPONENTS','414','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(415,'cctv power supply12V/10A','COMPONENTS','415','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(416,'8port hub','COMPONENTS','416','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(417,'ARVINDA/Gandipet','COMPONENTS','417','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(418,'Tp10L3C  camera','COMPONENTS','418','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(419,'Power supply 12V/10A','COMPONENTS','419','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(420,'Net work video recorder','COMPONENTS','420','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(421,'Hard disk 1TB','COMPONENTS','421','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(422,'RJ45 pins','COMPONENTS','422','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(423,'RESISTORS/0.25W','RESISTORS','423','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(424,'10E','RESISTORS','424','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(425,'15E','RESISTORS','425','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(426,'22E','RESISTORS','426','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(427,'27E','RESISTORS','427','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(428,'33E','RESISTORS','428','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(429,'47E','RESISTORS','429','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(430,'56E','RESISTORS','430','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(431,'68E','RESISTORS','431','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(432,'82E','RESISTORS','432','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(433,'100E','RESISTORS','433','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(434,'120E','RESISTORS','434','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(435,'150E','RESISTORS','435','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(436,'180E','RESISTORS','436','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(437,'220E','RESISTORS','437','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(438,'330E','RESISTORS','438','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(439,'470E','RESISTORS','439','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(440,'560E','RESISTORS','440','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(441,'680E','RESISTORS','441','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(442,'820E','RESISTORS','442','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(443,'1K','RESISTORS','443','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(444,'270E','RESISTORS','444','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(445,'1K2','RESISTORS','445','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(446,'1K5','RESISTORS','446','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(447,'1K8','RESISTORS','447','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(448,'2K2','RESISTORS','448','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(449,'2K7','RESISTORS','449','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(450,'3K3','RESISTORS','450','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(451,'4K7','RESISTORS','451','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(452,'5K6','RESISTORS','452','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(453,'6K8','RESISTORS','453','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(454,'8K2','RESISTORS','454','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(455,'10K','RESISTORS','455','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(456,'12K','RESISTORS','456','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(457,'15K','RESISTORS','457','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(458,'18K','RESISTORS','458','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(459,'22K','RESISTORS','459','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(460,'33K','RESISTORS','460','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(461,'39K','RESISTORS','461','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(462,'47K','RESISTORS','462','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(463,'56K','RESISTORS','463','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(464,'68K','RESISTORS','464','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(465,'82K','RESISTORS','465','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(466,'100K','RESISTORS','466','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(467,'120K','RESISTORS','467','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(468,'150K','RESISTORS','468','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(469,'180K','RESISTORS','469','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(470,'220K','RESISTORS','470','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(471,'270K','RESISTORS','471','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(472,'330K','RESISTORS','472','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(473,'470K','RESISTORS','473','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(474,'1E','RESISTORS','474','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(475,'680K','RESISTORS','475','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(476,'820K','RESISTORS','476','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(477,'190K','RESISTORS','477','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(478,'1M','RESISTORS','478','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(479,'470E smd (1206)','sensor','479','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(480,'Magnetic sensor','sensor','480','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(481,'G sensor red laser','sensor','481','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(482,'8pin strips','sensor','482','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(483,'16pinstrips','sensor','483','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(484,'8pin slot','sensor','484','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(485,'16pin slot','sensor','485','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(486,'15E/5Wresistor','COMPONENTS','486','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(487,'MOC3021','COMPONENTS','487','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(488,'MOC3023','COMPONENTS','488','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(489,'MOC3041','COMPONENTS','489','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(490,'SFH615 opto','COMPONENTS','490','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(491,'Lugs suitable for30A relays','COMPONENTS','491','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(492,'Spikes','COMPONENTS','492','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(493,'1MP IP camera(CP-UNC-DA10L3s','COMPONENTS','493','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(494,'2MP Ircosmic dome(CP-VCG-SD20L2','COMPONENTS','494','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(495,'2Mp IR bullet(CP-VCG-ST20L2','COMPONENTS','495','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(496,'Bullet camera(CP-VC-113L2AJ','COMPONENTS','496','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(497,'Bullet camera(CP-VC-T10L3','COMPONENTS','497','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(498,'HD camera','COMPONENTS','498','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(499,'IP camera(CP-UNC-D2322L3)','COMPONENTS','499','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(500,'(CP-USC-DA13L2)','COMPONENTS','500','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(501,'(CP-UNC-T4142L3)','COMPONENTS','501','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(502,'(CP-UVC-TA13L2-V1)','COMPONENTS','502','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(503,'Hikvison IR dome(DS-2CD110F)','COMPONENTS','503','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(504,'Hikvison IR mini bullet(DS-2CD2010F','COMPONENTS','504','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(505,'5port hub','COMPONENTS','505','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(506,'Hdmi splitter (1*4)','COMPONENTS','506','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(507,'MicromaxLEDmonitor18.5â€','COMPONENTS','507','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(508,'Biostar mother board','COMPONENTS','508','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(509,'GPS module','COMPONENTS','509','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(510,'Vibration detector ckt','COMPONENTS','510','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(511,'Water pump motor','COMPONENTS','511','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(512,'GSM modules(China)','COMPONENTS','512','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(513,'Neon lamp panel mount RED','COMPONENTS','513','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(514,'Neon lamp panel mount GREEN','COMPONENTS','514','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(515,'Shutter alram locks','COMPONENTS','515','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(516,'Shutter alram speakers','COMPONENTS','516','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(517,'3pin AC female connector (panel)','COMPONENTS','517','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(518,'GSM-sim800l','COMPONENTS','518','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(519,'MIKE','COMPONENTS','519','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(520,'Amplifier','COMPONENTS','520','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(521,'Power supply','COMPONENTS','521','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(522,'cable set','COMPONENTS','522','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(523,'12v/10A relay DP transperent','COMPONENTS','523','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(524,'5v6(sod80)zenor','COMPONENTS','524','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(525,'Battery Holder 3set','COMPONENTS','525','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(526,'Shutter alarm board soldered','COMPONENTS','526','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(527,'LED holder red','COMPONENTS','527','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(528,'LED holder green','COMPONENTS','528','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(529,'Sticker tags','COMPONENTS','529','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(530,'2pin maleconnector(pcb)','COMPONENTS','530','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(531,'VGA cable','COMPONENTS','531','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(532,' 1.5â€magnetic senor without case','COMPONENTS','532','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(533,'TNY267pn','COMPONENTS','533','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(534,'KBP210','COMPONENTS','534','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(535,'SFH6106','COMPONENTS','535','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(536,'BA159 diode','COMPONENTS','536','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(537,'100M/0.5w resistor','COMPONENTS','537','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(538,'10mfd/450v capacitor','COMPONENTS','538','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(539,'Samsung LED monitor','COMPONENTS','539','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(540,'Sensor wire connector','COMPONENTS','540','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(541,'8pin octalM&F','COMPONENTS','541','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(542,'PCF8574smd','COMPONENTS','542','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(543,'PCF8575md','COMPONENTS','543','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(544,'470Esmd(1206)','COMPONENTS','544','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(545,'33k smd(1206)','COMPONENTS','545','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(546,'Msboxes shutter alarm','COMPONENTS','546','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(547,'2N6107transistor','COMPONENTS','547','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(548,'Bar magnet','COMPONENTS','548','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1),(549,'BNCpin','COMPONENTS','549','JTS','DIP','no','10','10','no','no','no','10','10','10',1,1,1);
/*!40000 ALTER TABLE `inv_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_status`
--

DROP TABLE IF EXISTS `inv_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_status`
--

LOCK TABLES `inv_status` WRITE;
/*!40000 ALTER TABLE `inv_status` DISABLE KEYS */;
INSERT INTO `inv_status` VALUES (1,'active'),(2,'Inactive'),(7,'rejected'),(8,'refunded'),(9,'test');
/*!40000 ALTER TABLE `inv_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_warehouse`
--

DROP TABLE IF EXISTS `inv_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouseName` varchar(15) NOT NULL,
  `locationId_id` int(11) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inv_warehouse_locationId_id_aef589f6_fk_inv_location_id` (`locationId_id`),
  KEY `inv_warehouse_statusId_id_79f1bf60_fk_inv_status_id` (`statusId_id`),
  CONSTRAINT `inv_warehouse_statusId_id_79f1bf60_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_warehouse`
--

LOCK TABLES `inv_warehouse` WRITE;
/*!40000 ALTER TABLE `inv_warehouse` DISABLE KEYS */;
INSERT INTO `inv_warehouse` VALUES (1,'hyd',1,1),(2,'hyd2',2,2),(3,'hyd3',1,1),(4,'hyd4',2,1),(8,'hyderabad',1,7),(9,'gcg',1,7),(10,'fnfhj',1,8),(11,'eee',1,7),(12,'d',1,7),(13,'qwe',1,8),(14,'ggqwe',1,1),(15,'jl',1,1);
/*!40000 ALTER TABLE `inv_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jts_employees`
--

DROP TABLE IF EXISTS `jts_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jts_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL,
  `emailId` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `jobRole` varchar(20) NOT NULL,
  `statusId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jts_employees_statusId_id_b4c928ec` (`statusId_id`),
  CONSTRAINT `jts_employees_statusId_id_b4c928ec_fk_inv_status_id` FOREIGN KEY (`statusId_id`) REFERENCES `inv_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jts_employees`
--

LOCK TABLES `jts_employees` WRITE;
/*!40000 ALTER TABLE `jts_employees` DISABLE KEYS */;
INSERT INTO `jts_employees` VALUES (1,'test','test@test','test','male','storemanager',1),(2,'test1','test@test','test1','female','user',1),(3,'harisai','hari,kaja@jochebedtech.com','harisai','male','developer',1),(4,'kumar','emailid@test','kumar','male','mechanical',1);
/*!40000 ALTER TABLE `jts_employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21 13:16:03
