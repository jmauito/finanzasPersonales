-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: finanzaspersonales
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `categoriagasto`
--

DROP TABLE IF EXISTS `categoriagasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriagasto` (
  `categoriagasto` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id de Categoría de gasto',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre de la categoría de gasto',
  PRIMARY KEY (`categoriagasto`),
  UNIQUE KEY `categoriagasto_nombre_UN` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriagasto`
--

LOCK TABLES `categoriagasto` WRITE;
/*!40000 ALTER TABLE `categoriagasto` DISABLE KEYS */;
INSERT INTO `categoriagasto` VALUES (2,'Alimentación'),(6,'Carro'),(8,'Educación'),(1,'Hogar'),(9,'Salud'),(4,'Servicios básicos'),(3,'Transporte'),(5,'Varios'),(7,'Vestido');
/*!40000 ALTER TABLE `categoriagasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `empresa` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id de Empresa',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre de la empresa',
  PRIMARY KEY (`empresa`),
  UNIQUE KEY `empresa_nombre_UN` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (7,'Almacenes Juan Eljuri'),(2,'Coralcentro'),(11,'Escuela Politécnica Nacional'),(8,'Kiwi'),(6,'Mega tienda del sur'),(9,'Multicines'),(10,'Payless'),(1,'Sin descripción'),(3,'Supermaxi'),(5,'Supermercados Santa Cecilia'),(4,'Tía'),(12,'Uparcar');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gasto`
--

DROP TABLE IF EXISTS `gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gasto` (
  `gasto` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del gasto',
  `fecha` date NOT NULL COMMENT 'Fecha',
  `tipogasto` int(3) unsigned NOT NULL COMMENT 'Tipo de gasto',
  `factura` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'Nro. de factura',
  `empresa` int(3) unsigned NOT NULL COMMENT 'Empresa o negocio',
  `monto` decimal(7,2) NOT NULL COMMENT 'Monto',
  `concepto` text COLLATE utf8_spanish2_ci COMMENT 'Concepto',
  PRIMARY KEY (`gasto`),
  KEY `gasto_tipogasto_FK` (`tipogasto`),
  KEY `gasto_empresa_FK` (`empresa`),
  CONSTRAINT `gasto_empresa_FK` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`empresa`) ON UPDATE CASCADE,
  CONSTRAINT `gasto_tipogasto_FK` FOREIGN KEY (`tipogasto`) REFERENCES `tipogasto` (`tipogasto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gasto`
--

LOCK TABLES `gasto` WRITE;
/*!40000 ALTER TABLE `gasto` DISABLE KEYS */;
INSERT INTO `gasto` VALUES (1,'2018-11-08',2,'426953',6,114.70,'Compras mensuales'),(2,'2018-11-01',6,'69072',7,118.61,'MIcroonda y licuadora'),(3,'2018-08-19',2,'159019',6,83.88,''),(4,'2018-08-19',1,'',1,40.00,''),(5,'2018-07-29',2,'240639',6,22.86,''),(6,'2018-08-02',6,'157809',2,30.92,'Regalos para Pózul'),(7,'2018-07-28',6,'225015',2,35.84,''),(8,'2018-07-20',6,'263447',2,16.80,'Cobija'),(9,'2018-02-09',2,'230549',2,4.49,''),(10,'2018-04-14',6,'174240',2,41.65,''),(11,'2018-06-23',6,'207993',7,3.90,''),(12,'0000-00-00',2,'322957',6,70.81,''),(13,'2019-02-24',1,'',1,40.00,''),(14,'2018-06-02',2,'4268',2,82.45,''),(15,'2018-05-26',2,'69677',2,2.49,''),(16,'2018-05-05',2,'231686',6,58.29,''),(17,'2018-05-05',1,'',1,35.00,''),(18,'2018-04-30',2,'436006',6,22.05,''),(19,'2018-04-13',2,'29534',6,48.47,''),(20,'2018-04-29',2,'23212',7,3.00,''),(21,'2018-04-07',2,'310151',6,36.12,''),(22,'2018-04-07',6,'95476',2,58.53,''),(23,'2018-11-02',1,'',1,45.00,''),(24,'2018-11-11',6,'25722',7,108.63,'Mesas para picnic'),(25,'2018-11-10',2,'82170',3,2.03,''),(26,'2018-11-12',7,'',1,9.81,''),(27,'2018-11-12',7,'',1,9.81,''),(28,'0000-00-00',8,'',1,10.31,''),(29,'2018-07-12',7,'',1,8.69,''),(30,'2018-05-11',8,'',1,9.68,''),(31,'2018-05-11',7,'',1,9.63,''),(32,'2018-06-12',8,'',1,10.31,''),(33,'2018-06-12',7,'',1,8.78,''),(34,'2018-04-16',8,'',1,8.43,''),(35,'2018-03-29',7,'',1,22.95,''),(36,'2018-12-12',8,'',1,10.31,''),(37,'2018-12-12',7,'',1,9.00,''),(38,'2018-07-14',3,'',1,10.00,''),(39,'2018-03-07',3,'',1,19.01,''),(40,'2018-06-18',3,'',1,22.00,''),(41,'2018-06-07',3,'',1,10.00,''),(42,'2018-05-28',3,'',1,15.00,''),(43,'2018-05-14',3,'',1,15.00,''),(44,'2018-05-05',3,'',1,10.00,''),(45,'2018-03-17',3,'',1,10.16,''),(46,'2018-04-14',3,'',1,10.00,''),(47,'2018-04-13',9,'',1,19.95,'Torta'),(48,'2018-04-01',3,'',1,10.00,''),(49,'2018-04-22',3,'',1,10.00,''),(50,'2018-03-29',3,'',1,15.00,''),(51,'2018-04-03',3,'',1,10.00,''),(52,'2018-03-18',3,'',1,13.00,''),(53,'2018-02-28',3,'',1,20.00,''),(54,'2018-11-10',3,'',1,14.00,''),(55,'2018-07-14',10,'',1,1.40,''),(56,'2018-06-29',10,'',1,0.50,''),(57,'2018-05-10',6,'',8,46.94,''),(58,'2018-07-17',9,'',9,16.00,'Boletos de cine'),(59,'2018-10-07',9,'4690',1,21.50,'Torta'),(60,'2018-10-27',11,'',1,28.00,'Cambio de aceite y filtros'),(61,'2018-09-08',12,'',1,12.98,''),(62,'2018-09-01',9,'',1,5.00,'Corte de cabello'),(63,'2018-09-08',2,'161515',2,14.80,''),(64,'2018-09-01',2,'8558',2,2.26,''),(65,'2018-09-29',2,'46778',6,102.11,''),(66,'2018-09-29',1,'',1,45.00,''),(67,'2018-09-01',6,'136.77',2,136.77,'Antenta, MINIX, y otros'),(68,'2018-08-26',3,'',1,21.50,''),(69,'2018-08-18',3,'',1,13.01,''),(70,'2018-12-15',13,'',10,57.14,'Zapatos'),(71,'2018-12-21',12,'',1,15.71,''),(72,'2018-12-21',13,'9153',1,130.00,''),(73,'2018-12-21',9,'34969',2,16.77,'Regalos de navidad para Pózul'),(74,'2018-12-23',2,'45894',6,51.37,'Regalos para Pózul'),(75,'2018-10-13',13,'253435',2,14.26,'Regalo para María'),(76,'2018-07-21',6,'946611',1,10.61,'Cortinas del cuarto'),(77,'2018-05-24',14,'',1,10.00,''),(78,'2018-05-31',14,'',1,10.00,''),(79,'2018-05-31',14,'',1,25.00,'Cuota basureros'),(80,'2018-04-12',6,'',1,290.00,'Cama'),(81,'2018-06-05',15,'',11,162.00,'Curso de Java'),(82,'2018-04-12',6,'',1,55.00,'Estante blanco del patio'),(83,'2018-07-14',9,'39852',1,13.39,'Pilas'),(84,'2018-07-04',10,'',12,15.00,''),(85,'2018-07-02',9,'2658',7,200.00,'Forros carro'),(86,'2018-05-02',10,'',12,15.00,''),(87,'2018-05-01',11,'',1,26.00,'Cambio de aceite y filtros'),(88,'2018-05-31',11,'3158',1,119.00,'Arreglo de sensor de árbol de levas.\r\nManteniemiento frenos.'),(89,'2018-03-29',11,'9241',1,23.00,'Zapatas y buje pequeño.'),(90,'2018-03-02',10,'',12,15.00,''),(91,'2018-04-02',10,'',7,15.00,''),(92,'2018-03-29',11,'',1,50.00,'Alineación y balanceo, abc fenos'),(93,'2018-05-26',12,'',1,10.00,''),(94,'2018-02-17',6,'',7,550.20,'Extractor y calefón'),(95,'2018-09-03',16,'',1,26.77,''),(96,'2018-08-01',16,'',1,26.66,''),(97,'2018-07-03',16,'',1,26.77,''),(98,'2018-06-01',16,'',1,26.77,''),(99,'2018-05-03',16,'',1,26.77,''),(100,'2018-04-03',16,'',1,26.77,''),(101,'2018-08-25',6,'19335',1,340.00,'Televisor y soporte de tv'),(102,'2018-08-25',10,'',1,1.75,''),(103,'2018-09-06',3,'',1,13.50,''),(104,'2018-10-06',6,'',2,15.83,'Cobija'),(105,'2018-09-26',3,'',1,10.00,''),(106,'2018-10-01',16,'',1,26.77,''),(107,'2018-10-12',8,'',1,9.06,''),(108,'2018-10-12',7,'',1,10.26,''),(109,'2018-08-13',8,'',1,9.68,''),(110,'2018-08-13',7,'',1,8.72,''),(111,'2018-09-12',8,'',1,7.82,''),(112,'2018-09-12',7,'',1,10.79,''),(113,'2018-01-21',3,'0',1,9.00,'0'),(114,'2018-03-10',22,'0',1,5.00,'RECARGA CELULAR'),(115,'2018-03-10',12,'283960',1,13.00,'MERIENDAS'),(116,'2018-03-06',13,'8615',1,50.43,'ROPA'),(117,'2018-02-23',6,'50171',1,19.39,'MATERIAL INSTALACIÓN CALEFÓN'),(118,'2018-02-10',6,'187677',1,173.28,'IMPLEMENTOS DE BAÑOS'),(119,'2018-02-14',6,'9606',1,14.22,'MATERIAL PARA GARAJE'),(120,'2018-02-14',6,'9505',1,18.97,'MATERIAL PARA GARAJE'),(121,'2018-02-14',6,'964',1,0.76,'MATERIAL PARA GARAJE'),(122,'2018-02-14',6,'1503',1,7.00,'MATERIAL PARA GARAJE'),(123,'2018-02-14',6,'1502',1,3.25,'MATERIAL PARA GARAJE'),(124,'2018-02-12',2,'199553',1,18.74,'COMPRAS EN PLAYAS'),(125,'2018-02-06',6,'4648',1,790.00,'CORTINAS'),(126,'2018-03-11',18,'55327',1,6.60,'0'),(127,'2018-03-10',3,'943912',1,20.00,'0'),(128,'2018-03-03',2,'225346',6,70.75,'0'),(129,'2018-03-03',1,'225346',1,45.00,'0'),(130,'2018-03-03',6,'36596',1,50.49,'TALADRO Y MATERIALES PARA INSTALACIÓN BAÑOS'),(131,'2018-03-03',9,'12895',1,2.03,'GOLOSINAS'),(132,'2018-01-18',11,'807',1,15.00,'CAMBIO DE AMORTIGUADOR'),(133,'2018-01-16',19,'0',1,240.08,'MULTAS ANT LOJA'),(134,'2018-02-03',17,'192',1,220.00,'0'),(135,'2018-01-19',3,'0',1,10.00,'0'),(136,'2018-02-06',8,'0',1,10.91,'0'),(137,'2018-02-06',7,'0',1,8.16,'0'),(138,'2018-01-03',17,'185',1,220.00,'0'),(139,'2018-01-02',10,'327',1,15.00,'0'),(140,'2018-01-11',2,'180598',2,22.16,'0'),(141,'2018-01-11',1,'0',1,45.00,'0'),(142,'2018-01-17',3,'0',1,20.00,'0'),(143,'2018-01-27',10,'0',1,1.85,'0'),(144,'2018-01-27',11,'19847',1,32.00,'AMORTIGUADOR'),(145,'2018-02-09',3,'0',1,10.00,'0'),(146,'2018-01-12',10,'0',1,1.00,'0'),(147,'2018-01-13',21,'2115315',1,1.00,'0'),(148,'2018-01-13',12,'2498',1,17.25,'0'),(149,'2018-01-14',21,'2988979',1,1.00,'0'),(150,'2018-01-13',3,'0',1,10.00,'0'),(151,'2018-01-01',3,'0',1,10.00,'0'),(152,'2018-01-02',7,'0',1,8.34,'0'),(153,'2018-01-02',8,'0',1,10.91,'0'),(154,'2018-02-01',10,'420',1,15.00,'0'),(155,'2018-02-03',2,'341822',6,63.91,'0'),(156,'2018-02-03',1,'0',1,40.00,'0'),(157,'2018-01-30',3,'0',1,10.00,'0'),(158,'2018-03-10',20,'0',1,13.51,'TASA SOLIDARIA'),(159,'2018-03-10',20,'0',1,22.00,'PAGO CUENCA-AIRE'),(160,'2018-01-16',20,'0',1,98.36,'PAGO MATRÍCULA');
/*!40000 ALTER TABLE `gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipogasto`
--

DROP TABLE IF EXISTS `tipogasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipogasto` (
  `tipogasto` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del tipo de gasto',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre del tipo de gasto',
  `categoriagasto` int(3) unsigned NOT NULL COMMENT 'Categoría del tipo de gasto',
  PRIMARY KEY (`tipogasto`),
  UNIQUE KEY `tipogasto_nombre_UN` (`nombre`),
  KEY `tipogasto_categoriagasto_FK` (`categoriagasto`),
  CONSTRAINT `tipogasto_categoriagasto_FK` FOREIGN KEY (`categoriagasto`) REFERENCES `categoriagasto` (`categoriagasto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipogasto`
--

LOCK TABLES `tipogasto` WRITE;
/*!40000 ALTER TABLE `tipogasto` DISABLE KEYS */;
INSERT INTO `tipogasto` VALUES (1,'Compras del mercado',2),(2,'Compras supermercado',2),(3,'Gasolina',3),(4,'Cuota hipoteca',1),(5,'Cenas',2),(6,'Artículos hogar',1),(7,'Electricidad',4),(8,'Agua potable',4),(9,'Varios',5),(10,'Parqueo',3),(11,'Mantenimiento',6),(12,'Comidas fuera de casa',2),(13,'Ropa',7),(14,'Alícuota',1),(15,'Cursos de actualización',8),(16,'Internet',4),(17,'Arriendo',1),(18,'Medicinas',9),(19,'Multas de tránsito',6),(20,'Impuestos vehículo',6),(21,'Peajes',3),(22,'Teléfono',4);
/*!40000 ALTER TABLE `tipogasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usuario` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del usuario',
  `username` varchar(20) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Usuario',
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Clave',
  `rol` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Rol del usuario',
  `realName` varchar(200) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'Usuario' COMMENT 'Nombre real del usuario',
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','$2y$13$uWkpd.ErS0o.oSPxNViGI.JCjZnXW9NruFW6WOBKq5osTCa7zWorm',9,'Administrador'),(2,'user','$2y$13$GpCIcNltQkqB9uP5Oz1S4.TKyg23JToFahR77.pTSrcA8U2m/EkPG',0,'Simple User');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'finanzaspersonales'
--

--
-- Dumping routines for database 'finanzaspersonales'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-15 22:06:24
