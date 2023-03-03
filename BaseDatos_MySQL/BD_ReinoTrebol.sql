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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciongrimorio`
--

LOCK TABLES `asignaciongrimorio` WRITE;
/*!40000 ALTER TABLE `asignaciongrimorio` DISABLE KEYS */;
INSERT INTO `asignaciongrimorio` VALUES (1,'123KARLA',3),(2,'123KARLA',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Karlis','Hernandez',25,'123KARLA'),(2,'Prueba','PruebaApellido',32,'PRUEBA123'),(3,'Prueba2','PruebaApellido',32,'PRUEBA1234');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magia`
--

LOCK TABLES `magia` WRITE;
/*!40000 ALTER TABLE `magia` DISABLE KEYS */;
INSERT INTO `magia` VALUES (1,'Oscuridad'),(2,'Luz'),(3,'Fuego'),(4,'Agua'),(5,'Viento'),(6,'Tierra'),(7,'No magia'),(8,'Magia de Acero'),(9,'Magia de Agua'),(10,'Magia de Aire'),(11,'Magia de Alas'),(12,'Magia de Algodón'),(13,'Magia de Almagre'),(14,'Anti-Magia'),(15,'Magia de Arena'),(16,'Magia de Arenisca'),(17,'Magia de Barro'),(18,'Magia de Bestia'),(19,'Magia de Bestia Demoníaca'),(20,'Magia de Bronce'),(21,'Magia de Brújula'),(22,'Magia de Burbujas'),(23,'Magia de Cadenas'),(24,'Magia de Cabello'),(25,'Magia de Canto'),(26,'Magia de Cenizas'),(27,'Magia de Cerezos'),(28,'Magia de Cobre'),(29,'Magia de Comida'),(30,'Magia Compuesta'),(31,'Magia de Comunicación'),(32,'Magia de Corindón'),(33,'Magia de Corte'),(34,'Magia de Creación'),(35,'Magia de Cristal'),(36,'Magia de Cuerpo'),(37,'Magia Curativa'),(38,'Magia de Dados'),(39,'Magia de Danza'),(40,'Magia Debilitante'),(41,'Magia de Espacio'),(42,'Magia de Espadas'),(43,'Magia de Espectros'),(44,'Magia de Espejo'),(45,'Magia de Espinas'),(46,'Magia Espiritual'),(47,'Magia de Fuego'),(48,'Magia de Gel'),(49,'Magia de Gravedad'),(50,'Magia de Hielo'),(51,'Magia de Hilos'),(52,'Magia de Hongos'),(53,'Magia de Huesos'),(54,'Magia de Humo'),(55,'Magia de Ilusión'),(56,'Magia de Imitación'),(57,'Magia de Juego'),(58,'Magia Kotodama'),(59,'Magia del Árbol del Mundo'),(60,'Magia de Luz'),(61,'Magia de Maleficio'),(62,'Magia de Plantas Venenosas'),(63,'Magia de Maldición'),(64,'Método de Maná'),(65,'Magia de Memoria'),(66,'Magia de Mercurio'),(67,'Magia de Mosquito'),(68,'Magia de Mucosidad'),(69,'Magia de Niebla'),(70,'Magia de Nieve'),(71,'Magia de Ojos'),(72,'Magia de Oscuridad'),(73,'Magia de Piedra'),(74,'Magia de Pintura'),(75,'Magia de Plantas'),(76,'Magia de Plumas'),(77,'Magia prohibida'),(78,'Magia de Rayo'),(79,'Magia de Recombinación'),(80,'Magia de Reencarnación'),(81,'Magia Reforzante'),(82,'Magia de Restricción'),(83,'Magia de Roca'),(84,'Magia de Sangre'),(85,'Magia de Sellado'),(86,'Magia de Shakudo'),(87,'Magia de Sombra'),(88,'Magia de Sueños'),(89,'Magia de Tiempo'),(90,'Magia de Tierra'),(91,'Trampa Mágica'),(92,'Magia de Transformación'),(93,'Magia de Transparencia'),(94,'Magia de Veneno'),(95,'Magia de Vidrio'),(96,'Magia de Viento'),(97,'Magia de Vídes'),(98,'Magia de Vórtice'),(99,'Magia de Árboles');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (3,'123KARLA',1,3),(5,'123KARLA',5,3),(7,'PRUEBA123',4,3),(8,'PRUEBA1234',4,2);
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

-- Dump completed on 2023-03-03  1:58:17
