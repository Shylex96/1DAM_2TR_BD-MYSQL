CREATE DATABASE  IF NOT EXISTS `ejercicio10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio10`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio10
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `nombrePersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `primerApellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `segundoApellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoPersona` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoPersona` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posesiones`
--

DROP TABLE IF EXISTS `posesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posesiones` (
  `idPosesion` int NOT NULL AUTO_INCREMENT,
  `idVehiculoFK` int DEFAULT NULL,
  `idPersonaFK` int DEFAULT NULL,
  `fechaDesde` date DEFAULT NULL,
  `fechaHasta` date DEFAULT NULL,
  PRIMARY KEY (`idPosesion`),
  KEY `idVehiculoFK` (`idVehiculoFK`),
  KEY `idPersonaFK` (`idPersonaFK`),
  CONSTRAINT `posesiones_ibfk_1` FOREIGN KEY (`idVehiculoFK`) REFERENCES `vehiculos` (`idVehiculo`),
  CONSTRAINT `posesiones_ibfk_2` FOREIGN KEY (`idPersonaFK`) REFERENCES `personas` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posesiones`
--

LOCK TABLES `posesiones` WRITE;
/*!40000 ALTER TABLE `posesiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `posesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL AUTO_INCREMENT,
  `marcaVehiculo` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaFabricacionVehiculo` date DEFAULT NULL,
  `tipoVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `matriculaVehiculo` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaMatriculacionVehiculo` date DEFAULT NULL,
  `fechaBajaVehiculo` date DEFAULT NULL,
  PRIMARY KEY (`idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 10:47:34
