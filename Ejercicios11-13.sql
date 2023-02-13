-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio12
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
-- Current Database: `ejercicio12`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejercicio12` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ejercicio12`;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `matriculaCoche` varchar(8) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `marcaCoche` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `colorCoche` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloCoche` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`matriculaCoche`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES ('12345ABC','Kia','Plateado','Omen'),('12345DEF','Killer','Negro','Gralent'),('12345GHI','Sage','Blanco','Neverless'),('12345JKL','Brimstone','Rojo','Breach'),('12345MNÑ','Ravel','Gris','Rest'),('12345OPQ','Dacia','Blanco','Net');
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `idHistorico` int NOT NULL AUTO_INCREMENT,
  `matriculaCocheFK` varchar(8) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniPersonaFK` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaDesde` date DEFAULT NULL,
  `fechaHasta` date DEFAULT NULL,
  PRIMARY KEY (`idHistorico`),
  KEY `matriculaCocheFK` (`matriculaCocheFK`),
  KEY `dniPersonaFK` (`dniPersonaFK`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`matriculaCocheFK`) REFERENCES `coches` (`matriculaCoche`),
  CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`dniPersonaFK`) REFERENCES `personas` (`dniPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'12345ABC','12345678A','2014-03-24','2018-06-17'),(2,'12345DEF','12345678B','2016-07-21','2022-05-19'),(6,'12345GHI','12345678C','2018-02-12','2037-02-11'),(7,'12345JKL','12345678D','2009-04-27','2031-01-31'),(8,'12345MNÑ','12345678E','2005-02-12','2027-04-28'),(9,'12345OPQ','12345678F','2006-07-16','2032-03-01');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `dniPersona` varchar(9) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombrePersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosPersona` varchar(75) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionPersona` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`dniPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES ('12345678A','Javier','Adame','C/ Onotedoy'),('12345678B','Clara','Mente','C/ Chia'),('12345678C','Jaime','Ostos','C/ Calvin'),('12345678D','Victoria','Tumbado','C/ Derrota'),('12345678E','Armando','Paredes','C/ Ladrillo'),('12345678F','Dima','Troski','C/ Turco');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ejercicio13`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejercicio13` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ejercicio13`;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `idAlumno` int NOT NULL AUTO_INCREMENT,
  `numeroMatriculaAlumno` int DEFAULT NULL,
  `nombreAlumno` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionAlumno` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idCentroFK` int DEFAULT NULL,
  PRIMARY KEY (`idAlumno`),
  KEY `idCentroFK` (`idCentroFK`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`idCentroFK`) REFERENCES `centros` (`idCentro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_asignatura`
--

DROP TABLE IF EXISTS `alumnos_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_asignatura` (
  `idAlumnoFK` int NOT NULL,
  `idAsignaturaFK` int NOT NULL,
  `fechaApertura` date DEFAULT NULL,
  `nota` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`idAlumnoFK`,`idAsignaturaFK`),
  KEY `idAsignaturaFK` (`idAsignaturaFK`),
  CONSTRAINT `alumnos_asignatura_ibfk_1` FOREIGN KEY (`idAlumnoFK`) REFERENCES `alumnos` (`idAlumno`),
  CONSTRAINT `alumnos_asignatura_ibfk_2` FOREIGN KEY (`idAsignaturaFK`) REFERENCES `asignaturas` (`idAsignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_asignatura`
--

LOCK TABLES `alumnos_asignatura` WRITE;
/*!40000 ALTER TABLE `alumnos_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaturas` (
  `idAsignatura` int NOT NULL AUTO_INCREMENT,
  `nombreAsignatura` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `horasAsignatura` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`idAsignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centros`
--

DROP TABLE IF EXISTS `centros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centros` (
  `idCentro` int NOT NULL AUTO_INCREMENT,
  `direccionCentro` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idCentro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centros`
--

LOCK TABLES `centros` WRITE;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ejercicio11`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejercicio11` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ejercicio11`;

--
-- Table structure for table `aperturas`
--

DROP TABLE IF EXISTS `aperturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aperturas` (
  `idClienteFK` int NOT NULL,
  `idCuentaFK` int NOT NULL,
  `fechaApertura` date DEFAULT NULL,
  PRIMARY KEY (`idClienteFK`,`idCuentaFK`),
  KEY `idCuentaFK` (`idCuentaFK`),
  CONSTRAINT `aperturas_ibfk_1` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `aperturas_ibfk_2` FOREIGN KEY (`idCuentaFK`) REFERENCES `cuentas` (`idCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aperturas`
--

LOCK TABLES `aperturas` WRITE;
/*!40000 ALTER TABLE `aperturas` DISABLE KEYS */;
INSERT INTO `aperturas` VALUES (1,1,'2018-11-24'),(2,2,'2021-04-13'),(3,3,'2015-03-17'),(4,4,'2003-11-22'),(5,5,'2011-04-28'),(6,6,'2017-01-19');
/*!40000 ALTER TABLE `aperturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `dniCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'12345678A','Álvaro','Avda/ Alavastro nº 5 - Portal A'),(2,'12345678B','Jorge','C/ Agonía nº 2 - Bloq. 10 - 5º B'),(3,'12345678C','Javier','C/ Santo Elite 1º A'),(4,'12345678D','Victor','Ctra. Carmona nº 13'),(5,'12345678E','Dima','C/ Nohouse nº 8'),(6,'12345678F','Jaime','C/ Concepción - Portal 2');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `idCuenta` int NOT NULL AUTO_INCREMENT,
  `tipoCuenta` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `saldoCuenta` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,'Ahorro',302.78),(2,'Online',1789.14),(3,'NoCuenta',456.17),(4,'Jóven',6182.91),(5,'Online',12614.48),(6,'Ahorro',24945.11);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-13 10:12:43
