CREATE DATABASE  IF NOT EXISTS `reinotrebol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reinotrebol`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: reinotrebol
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `asignaciongrimorio`
--

DROP TABLE IF EXISTS `asignaciongrimorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaciongrimorio` (
  `idAsig` int NOT NULL AUTO_INCREMENT,
  `idEstu` varchar(25) DEFAULT NULL,
  `idGrimorio` int DEFAULT NULL,
  PRIMARY KEY (`idAsig`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciongrimorio`
--

LOCK TABLES `asignaciongrimorio` WRITE;
/*!40000 ALTER TABLE `asignaciongrimorio` DISABLE KEYS */;
INSERT INTO `asignaciongrimorio` VALUES (1,'123KARLA',4);
/*!40000 ALTER TABLE `asignaciongrimorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus`
--

DROP TABLE IF EXISTS `estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatus` (
  `idEstatus` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus`
--

LOCK TABLES `estatus` WRITE;
/*!40000 ALTER TABLE `estatus` DISABLE KEYS */;
INSERT INTO `estatus` VALUES (1,'Aprobado'),(2,'Rechazado'),(3,'Pendiente');
/*!40000 ALTER TABLE `estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idEstu` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `ide` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Karlita','Hernandez',27,'123KARLA');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grimorio`
--

DROP TABLE IF EXISTS `grimorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grimorio` (
  `idGrimorio` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `tipoTrebol` int DEFAULT NULL,
  PRIMARY KEY (`idGrimorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grimorio`
--

LOCK TABLES `grimorio` WRITE;
/*!40000 ALTER TABLE `grimorio` DISABLE KEYS */;
INSERT INTO `grimorio` VALUES (1,'Sinceridad',1),(2,'Esperanza',2),(3,'Amor',3),(4,'Buena Fortuna',4),(5,'Desesperacion',5);
/*!40000 ALTER TABLE `grimorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magia`
--

DROP TABLE IF EXISTS `magia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magia` (
  `idMagia` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMagia`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magia`
--

LOCK TABLES `magia` WRITE;
/*!40000 ALTER TABLE `magia` DISABLE KEYS */;
INSERT INTO `magia` VALUES (1,'Magia de Acero'),(2,'Magia de Agua'),(3,'Magia de Aire'),(4,'Magia de Alas'),(5,'Magia de Algodón'),(6,'Magia de Almagre'),(7,'Anti-Magia'),(8,'Magia de Arena'),(9,'Magia de Arenisca'),(10,'Magia de Barro'),(11,'Magia de Bestia'),(12,'Magia de Bestia Demoníaca'),(13,'Magia de Bronce'),(14,'Magia de Brújula'),(15,'Magia de Burbujas'),(16,'Magia de Cadenas'),(17,'Magia de Cabello'),(18,'Magia de Canto'),(19,'Magia de Cenizas'),(20,'Magia de Cerezos'),(21,'Magia de Cobre'),(22,'Magia de Comida'),(23,'Magia Compuesta'),(24,'Magia de Comunicación'),(25,'Magia de Corindón'),(26,'Magia de Corte'),(27,'Magia de Creación'),(28,'Magia de Cristal'),(29,'Magia de Cuerpo'),(30,'Magia Curativa'),(31,'Magia de Dados'),(32,'Magia de Danza'),(33,'Magia Debilitante'),(34,'Magia de Espacio'),(35,'Magia de Espadas'),(36,'Magia de Espectros'),(37,'Magia de Espejo'),(38,'Magia de Espinas'),(39,'Magia Espiritual'),(40,'Magia de Fuego'),(41,'Magia de Gel'),(42,'Magia de Gravedad'),(43,'Magia de Hielo'),(44,'Magia de Hilos'),(45,'Magia de Hongos'),(46,'Magia de Huesos'),(47,'Magia de Humo'),(48,'Magia de Ilusión'),(49,'Magia de Imitación'),(50,'Magia de Juego'),(51,'Magia Kotodama'),(52,'Magia del Árbol del Mundo'),(53,'Magia de Luz'),(54,'Magia de Maleficio'),(55,'Magia de Plantas Venenosas'),(56,'Magia de Maldición'),(57,'Método de Maná'),(58,'Magia de Memoria'),(59,'Magia de Mercurio'),(60,'Magia de Mosquito'),(61,'Magia de Mucosidad'),(62,'Magia de Niebla'),(63,'Magia de Nieve'),(64,'Magia de Ojos'),(65,'Magia de Oscuridad'),(66,'Magia de Piedra'),(67,'Magia de Pintura'),(68,'Magia de Plantas'),(69,'Magia de Plumas'),(70,'Magia prohibida'),(71,'Magia de Rayo'),(72,'Magia de Recombinación'),(73,'Magia de Reencarnación'),(74,'Magia Reforzante'),(75,'Magia de Restricción'),(76,'Magia de Roca'),(77,'Magia de Sangre'),(78,'Magia de Sellado'),(79,'Magia de Shakudo'),(80,'Magia de Sombra'),(81,'Magia de Sueños'),(82,'Magia de Tiempo'),(83,'Magia de Tierra'),(84,'Trampa Mágica'),(85,'Magia de Transformación'),(86,'Magia de Transparencia'),(87,'Magia de Veneno'),(88,'Magia de Vidrio'),(89,'Magia de Viento'),(90,'Magia de Vídes'),(91,'Magia de Vórtice'),(92,'Magia de Árboles');
/*!40000 ALTER TABLE `magia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portadatrebol`
--

DROP TABLE IF EXISTS `portadatrebol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portadatrebol` (
  `idtrebol` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtrebol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portadatrebol`
--

LOCK TABLES `portadatrebol` WRITE;
/*!40000 ALTER TABLE `portadatrebol` DISABLE KEYS */;
INSERT INTO `portadatrebol` VALUES (1,'Trebol 1 hoja'),(2,'Trebol 2 hoja'),(3,'Trebol 3 hoja'),(4,'Trebol 4 hoja'),(5,'Trebol 5 hoja');
/*!40000 ALTER TABLE `portadatrebol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `idSoli` int NOT NULL AUTO_INCREMENT,
  `idEstu` varchar(25) NOT NULL,
  `idMagia` int DEFAULT NULL,
  `estatus` int DEFAULT NULL,
  PRIMARY KEY (`idSoli`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reinotrebol'
--

--
-- Dumping routines for database 'reinotrebol'
--
/*!50003 DROP PROCEDURE IF EXISTS `obtener_asignaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ReyMago`@`localhost` PROCEDURE `obtener_asignaciones`()
BEGIN
	SELECT ide,concat(nombre,' ',apellido) as nombreCompleto, edad, gri.descripcion as grimorio, trebol.tipo portada
    FROM (((estudiante est inner join asignaciongrimorio asgG on est.ide = asgG.idEstu) 
							inner join grimorio gri on asgG.idGrimorio = gri.idGrimorio)
                            inner join portadatrebol trebol on gri.tipoTrebol = trebol.idtrebol);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_solicitudes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ReyMago`@`localhost` PROCEDURE `obtener_solicitudes`()
BEGIN
	SELECT ide,concat(nombre,' ',apellido) as nombreCompleto, edad, mag.descripcion as magia, estatus.descripcion as estatus FROM ((( estudiante est inner join solicitud sol on est.ide = sol.idEstu) 
									inner join magia mag on sol.idMagia = mag.idMagia) 
                                    inner join estatus on sol.estatus = estatus.idEstatus);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 18:23:06
