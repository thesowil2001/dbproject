CREATE DATABASE  IF NOT EXISTS `ejercicio_2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio_2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ejercicio_2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `agencias_de_viajes`
--

DROP TABLE IF EXISTS `agencias_de_viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencias_de_viajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Nombre_personas` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencias_de_viajes`
--

LOCK TABLES `agencias_de_viajes` WRITE;
/*!40000 ALTER TABLE `agencias_de_viajes` DISABLE KEYS */;
INSERT INTO `agencias_de_viajes` VALUES (1,'trivago','cra 12','300123','ana'),(2,'destino','cra 1','301212','patricia'),(3,'Rutas','calle 3','306312','alicia'),(4,'Experiencias Caribe','calle 5','30111','maria'),(5,'Viajes del CafÃ© 10','calle 6','301234','donal');
/*!40000 ALTER TABLE `agencias_de_viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tipo_de_Categoria` varchar(45) NOT NULL,
  `IVA` decimal(10,0) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'5 estrellas',19,'exelente calidad'),(2,'4 estrellas',15,'buena calidad'),(3,'3 estrellas',13,'calidad deficiente'),(4,'2 estrellas',10,'mala calidad'),(5,'1 estrella',5,'pesima calida');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tipo_de_habitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (1,'suit'),(2,'dobles'),(3,'individuales');
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteles`
--

DROP TABLE IF EXISTS `hoteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Año_de_Construccion` date NOT NULL,
  `Categorias_id` int NOT NULL,
  `Plantas_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Hoteles_Categorias_idx` (`Categorias_id`),
  KEY `fk_Hoteles_Plantas1_idx` (`Plantas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
INSERT INTO `hoteles` VALUES (1,'trivago','Calle Principal','2008-01-01',1,1),(2,'diamante','Avenida del Sol 456','1970-09-09',2,2),(3,'taroa','Carrera 7','2001-09-23',3,3),(4,'las delicias','Avenida de la Ciudad','1999-01-01',4,4),(5,'Gran Plaza ','Plaza Central','1998-03-23',5,5),(6,'ParaÃ­so','calle 22','2004-09-12',5,6),(7,'MontaÃ±a','cra-54-#09','2000-12-31',4,7),(8,'Playa del atardecer','calle 15','1989-07-12',3,8),(9,'Hotel de cameron','calle 1','1959-11-10',2,9),(10,'Hotel del terror','Pasaje de la Historia, 8765','2010-04-01',3,10);
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `particulares`
--

DROP TABLE IF EXISTS `particulares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `particulares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `particulares`
--

LOCK TABLES `particulares` WRITE;
/*!40000 ALTER TABLE `particulares` DISABLE KEYS */;
INSERT INTO `particulares` VALUES (1,'ana','Cra 39 #12 h13','3144567890'),(2,'juan','Cra 12 ','3012345678'),(3,'MarÃ­a','Cra 10#11  h1','301222'),(4,'carlos','Cra 12 ','3123456789'),(5,'laura','Cra 39 #12  h14','318-2345678'),(6,'pedro','Cra 12 ','3167891234'),(7,'SofÃ­a','Calle 19 #2  h3','300111'),(8,'manuel','Cra 12 ','3178765432'),(9,'Isabela','Cra 9 #12  h13','3001234567'),(10,'alejandro','Cra 3 #11  h11','31676'),(11,'vale','Calle 1 #1  h1','31677'),(12,'David','Cra 39 #14  h12','31678'),(13,'gabri','Cra 12 ','3136543210'),(14,'diego','Calle 9 #12 h13','31671'),(15,'Camila','Cra 69 #69  h69','3003456789');
/*!40000 ALTER TABLE `particulares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantas`
--

DROP TABLE IF EXISTS `plantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Habitaciones_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Plantas_Habitaciones1_idx` (`Habitaciones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantas`
--

LOCK TABLES `plantas` WRITE;
/*!40000 ALTER TABLE `plantas` DISABLE KEYS */;
INSERT INTO `plantas` VALUES (1,1),(6,1),(7,1),(2,2),(5,2),(9,2),(10,2),(3,3),(4,3),(8,3);
/*!40000 ALTER TABLE `plantas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Particulares_id` int NOT NULL,
  `Agencias_de_Viajes_id` int NOT NULL,
  `Precio_Reserva` decimal(10,0) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_final` date NOT NULL,
  `Habitaciones_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reservas_Particulares1_idx` (`Particulares_id`),
  KEY `fk_Reservas_Agencias_de_Viajes1_idx` (`Agencias_de_Viajes_id`),
  KEY `fk_Reservas_Habitaciones1_idx` (`Habitaciones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,5,1,10000,'2023-09-04','2023-09-10',1),(2,3,2,20000,'2023-02-12','2023-02-17',2),(3,4,3,30000,'2023-01-12','2023-01-14',3),(4,5,4,40000,'2023-12-20','2023-12-25',3),(5,6,5,50000,'2023-11-20','2023-11-29',2),(6,7,5,50000,'2023-10-20','2023-10-21',1),(7,8,4,40000,'2023-09-20','2023-09-24',1),(8,9,3,30000,'2023-08-20','2023-08-29',1),(9,2,2,20000,'2023-07-20','2023-07-23',2),(10,2,1,10000,'2023-06-20','2023-06-21',3),(11,2,1,10000,'2023-05-20','2023-05-23',3),(12,1,2,20000,'2023-04-20','2023-04-28',2),(13,11,3,30000,'2023-03-20','2023-03-21',2),(14,2,4,40000,'2023-02-20','2023-02-25',2),(15,1,5,50000,'2023-01-20','2023-01-28',1),(16,4,5,40000,'2023-12-01','2023-12-10',1),(17,2,4,30000,'2023-11-01','2023-11-09',1),(18,6,3,20000,'2023-10-01','2023-10-05',1),(19,7,2,10000,'2023-09-01','2023-09-08',3),(20,8,1,20000,'2023-08-01','2023-08-12',3);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ejercicio_2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-12 22:16:47
