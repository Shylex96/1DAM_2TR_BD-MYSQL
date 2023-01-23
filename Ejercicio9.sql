CREATE DATABASE  IF NOT EXISTS `ejercicio9` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio9`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio9
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Juan','Pérez','Gutiérrez','657123123','jperez1@gmail.com'),(2,'María','Sánchez','Meléndez','655123123','msmelendez@gmail.com'),(3,'Álvaro','Gómez','Baena','633666555','agomezba@gmail.com'),(4,'Javier','Menso','Tabil','678123456','mensojata@gmail.com'),(5,'Elena','Astra','Lenco','678123456','ealenco@gmail.com'),(6,'Saray','Brimstone','Fastro','649472581','sarayfas@gmail.com');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL AUTO_INCREMENT,
  `marcaVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaFabricacionVehiculo` date DEFAULT NULL,
  `tipoVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `matriculaVehiculo` varchar(8) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idVehiculoFK` int DEFAULT NULL,
  `idPersonaFK` int DEFAULT NULL,
  PRIMARY KEY (`idVehiculo`),
  KEY `idPersonaFK` (`idPersonaFK`),
  CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`idPersonaFK`) REFERENCES `personas` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'Astra','Universe','2023-01-22','Deportivo','12345AWT',1,1),(2,'Toyota','Rider','2019-04-13','Familiar','12345EAT',2,2),(3,'Viper','Sage','2018-01-01','Deportivo','65465JDL',3,3),(4,'Omen','Breach','2017-01-16','Deportivo','81639DPA',4,4),(5,'Lamstrom','Nemesis','2015-09-23','Unifamiliar','83628JFO',5,6),(6,'Kpol','Viapol','2013-07-15','Familiar','73619KFN',5,6);
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

-- Dump completed on 2023-01-23 10:47:25
