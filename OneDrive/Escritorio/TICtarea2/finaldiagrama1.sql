-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: finaldiagrama1
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accersorios`
--

DROP TABLE IF EXISTS `accersorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accersorios` (
  `idAccersorios` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `Altura (cm)` int(11) DEFAULT NULL,
  `Precio (CLP)` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAccersorios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accersorios`
--

LOCK TABLES `accersorios` WRITE;
/*!40000 ALTER TABLE `accersorios` DISABLE KEYS */;
INSERT INTO `accersorios` VALUES (1,'Acuario Grande','Vidrio',20,6990),(2,'Acuario Mediano','Vidrio',16,4990),(3,'Acuario Pequeño','Vidrio',8,3990),(4,'Florero Europeo','Vidrio',25,6990),(5,'Florero Lord','Vidrio',23,6990),(6,'Florero Moreado','Vidrio',29,6990),(7,'Florero Velón Grande','-',25,6990),(8,'Florero Velón Mediano','-',20,4990),(9,'Florero Velón Pequeño','-',15,3990),(10,'Lechero Grande 8 Lts.','Latón',50,7990);
/*!40000 ALTER TABLE `accersorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arreglos`
--

DROP TABLE IF EXISTS `arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arreglos` (
  `idArreglos` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripci├│n` varchar(45) DEFAULT NULL,
  `Precio (CLP)` int(11) DEFAULT NULL,
  PRIMARY KEY (`idArreglos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arreglos`
--

LOCK TABLES `arreglos` WRITE;
/*!40000 ALTER TABLE `arreglos` DISABLE KEYS */;
INSERT INTO `arreglos` VALUES (1,'Alexandra','Fino y romántico',19990),(2,'Carlota','Amor',32990),(3,'Catalina','Poder',24990),(4,'Carlota','Pureza y femineidad',25990),(5,'Elizabeth','Femineidad',17990),(6,'Helena','Romántico',25990),(7,'Isabel','Paz',22990),(8,'Matilde','Juventud y optimismo',16990),(9,'Margarita','Campestre',17990),(10,'Juliana','Dulzura',22990);
/*!40000 ALTER TABLE `arreglos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arreglos_has_flores`
--

DROP TABLE IF EXISTS `arreglos_has_flores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arreglos_has_flores` (
  `Arreglos_idArreglos` int(11) NOT NULL,
  `Flores_idFlores` int(11) NOT NULL,
  `Cantidad de flores` int(11) DEFAULT NULL,
  KEY `fk_Arreglos_has_Flores_Flores1_idx` (`Flores_idFlores`),
  KEY `fk_Arreglos_has_Flores_Arreglos1_idx` (`Arreglos_idArreglos`),
  CONSTRAINT `fk_Arreglos_has_Flores_Arreglos1` FOREIGN KEY (`Arreglos_idArreglos`) REFERENCES `arreglos` (`idarreglos`),
  CONSTRAINT `fk_Arreglos_has_Flores_Flores1` FOREIGN KEY (`Flores_idFlores`) REFERENCES `flores` (`idflores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arreglos_has_flores`
--

LOCK TABLES `arreglos_has_flores` WRITE;
/*!40000 ALTER TABLE `arreglos_has_flores` DISABLE KEYS */;
INSERT INTO `arreglos_has_flores` VALUES (1,1,5),(1,4,6),(2,4,6),(2,5,6),(2,6,6),(3,7,2),(3,7,2),(3,4,6),(4,6,8),(5,2,5),(5,3,5),(6,7,3),(6,4,5),(7,5,12),(8,8,5),(9,9,15),(10,6,15);
/*!40000 ALTER TABLE `arreglos_has_flores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flores`
--

DROP TABLE IF EXISTS `flores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flores` (
  `idFlores` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFlores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flores`
--

LOCK TABLES `flores` WRITE;
/*!40000 ALTER TABLE `flores` DISABLE KEYS */;
INSERT INTO `flores` VALUES (1,'Gerbera Blanca',800),(2,'Gerbera Rosa',800),(3,'Gerbera Rosa pálido',800),(4,'Rosa Roja',1500),(5,'Rosa Blanca',1500),(6,'Rosa Rosa',1500),(7,'Lilium Blanco',1000),(8,'Girasol Amarillo',1000),(9,'Paquete Maules',5000),(10,'Paquete Lisianthum',5000);
/*!40000 ALTER TABLE `flores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mes` (
  `idMes` int(11) NOT NULL,
  `Mes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'Enero'),(2,'Febrero'),(3,'Marzo'),(4,'Abril'),(5,'Mayo'),(6,'Junio'),(7,'Julio'),(8,'Agosto'),(9,'Septiembre'),(10,'Octubre');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_accesorios`
--

DROP TABLE IF EXISTS `movimiento_accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movimiento_accesorios` (
  `idMovimiento Accesorios` int(11) NOT NULL,
  `Mes_idMes` int(11) NOT NULL,
  `Accersorios_idAccersorios` int(11) NOT NULL,
  PRIMARY KEY (`idMovimiento Accesorios`,`Mes_idMes`,`Accersorios_idAccersorios`),
  KEY `fk_Movimiento Accesorios_Mes1_idx` (`Mes_idMes`),
  KEY `fk_Movimiento Accesorios_Accersorios1_idx` (`Accersorios_idAccersorios`),
  CONSTRAINT `fk_Movimiento Accesorios_Accersorios1` FOREIGN KEY (`Accersorios_idAccersorios`) REFERENCES `accersorios` (`idaccersorios`),
  CONSTRAINT `fk_Movimiento Accesorios_Mes1` FOREIGN KEY (`Mes_idMes`) REFERENCES `mes` (`idmes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_accesorios`
--

LOCK TABLES `movimiento_accesorios` WRITE;
/*!40000 ALTER TABLE `movimiento_accesorios` DISABLE KEYS */;
INSERT INTO `movimiento_accesorios` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,3,1),(22,3,2),(23,3,3),(24,3,4),(25,3,5),(26,3,6),(27,3,7),(28,3,8),(29,3,9),(30,3,10),(31,4,1),(32,4,2),(33,4,3),(34,4,4),(35,4,5),(36,4,6),(37,4,7),(38,4,8),(39,4,9),(40,4,10),(41,5,1),(42,5,2),(43,5,3),(44,5,4),(45,5,5),(46,5,6),(47,5,7),(48,5,8),(49,5,9),(50,5,10),(51,6,1),(52,6,2),(53,6,3),(54,6,4),(55,6,5),(56,6,6),(57,6,7),(58,6,8),(59,6,9),(60,6,10),(61,7,1),(62,7,2),(63,7,3),(64,7,4),(65,7,5),(66,7,6),(67,7,7),(68,7,8),(69,7,9),(70,7,10),(71,8,1),(72,8,2),(73,8,3),(74,8,4),(75,8,5),(76,8,6),(77,8,7),(78,8,8),(79,8,9),(80,8,10),(81,9,1),(82,9,2),(83,9,3),(84,9,4),(85,9,5),(86,9,6),(87,9,7),(88,9,8),(89,9,9),(90,9,10),(91,10,1),(92,10,2),(93,10,3),(94,10,4),(95,10,5),(96,10,6),(97,10,7),(98,10,8),(99,10,9),(100,10,10);
/*!40000 ALTER TABLE `movimiento_accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_flores`
--

DROP TABLE IF EXISTS `movimiento_flores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movimiento_flores` (
  `idMovimiento Flores` int(11) NOT NULL,
  `Mes_idMes` int(11) NOT NULL,
  `Flores_idFlores` int(11) NOT NULL,
  PRIMARY KEY (`idMovimiento Flores`,`Mes_idMes`,`Flores_idFlores`),
  KEY `fk_Movimiento Flores_Mes1_idx` (`Mes_idMes`),
  KEY `fk_Movimiento Flores_Flores1_idx` (`Flores_idFlores`),
  CONSTRAINT `fk_Movimiento Flores_Flores1` FOREIGN KEY (`Flores_idFlores`) REFERENCES `flores` (`idflores`),
  CONSTRAINT `fk_Movimiento Flores_Mes1` FOREIGN KEY (`Mes_idMes`) REFERENCES `mes` (`idmes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_flores`
--

LOCK TABLES `movimiento_flores` WRITE;
/*!40000 ALTER TABLE `movimiento_flores` DISABLE KEYS */;
INSERT INTO `movimiento_flores` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,3,1),(22,3,2),(23,3,3),(24,3,4),(25,3,5),(26,3,6),(27,3,7),(28,3,8),(29,3,9),(30,3,10),(31,4,1),(32,4,2),(33,4,3),(34,4,4),(35,4,5),(36,4,6),(37,4,7),(38,4,8),(39,4,9),(40,4,10),(41,5,1),(42,5,2),(43,5,3),(44,5,4),(45,5,5),(46,5,6),(47,5,7),(48,5,8),(49,5,9),(50,5,10),(51,6,1),(52,6,2),(53,6,3),(54,6,4),(55,6,5),(56,6,6),(57,6,7),(58,6,8),(59,6,9),(60,6,10),(61,7,1),(62,7,2),(63,7,3),(64,7,4),(65,7,5),(66,7,6),(67,7,7),(68,7,8),(69,7,9),(70,7,10),(71,8,1),(72,8,2),(73,8,3),(74,8,4),(75,8,5),(76,8,6),(77,8,7),(78,8,8),(79,8,9),(80,8,10),(81,9,1),(82,9,2),(83,9,3),(84,9,4),(85,9,5),(86,9,6),(87,9,7),(88,9,8),(89,9,9),(90,9,10),(91,10,1),(92,10,2),(93,10,3),(94,10,4),(95,10,5),(96,10,6),(97,10,7),(98,10,8),(99,10,9),(100,10,10);
/*!40000 ALTER TABLE `movimiento_flores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales` (
  `idSucursales` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Ñuñoa'),(2,'Providencia1'),(3,'Providencia2');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_accersorios`
--

DROP TABLE IF EXISTS `sucursales_has_accersorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_accersorios` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Accersorios_idAccersorios` int(11) NOT NULL,
  `Cantidad Inicial` int(11) DEFAULT NULL,
  `Cantidad Actual` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Accersorios_idAccersorios`),
  KEY `fk_Sucursales_has_Accersorios_Accersorios1_idx` (`Accersorios_idAccersorios`),
  KEY `fk_Sucursales_has_Accersorios_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Accersorios_Accersorios1` FOREIGN KEY (`Accersorios_idAccersorios`) REFERENCES `accersorios` (`idaccersorios`),
  CONSTRAINT `fk_Sucursales_has_Accersorios_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_accersorios`
--

LOCK TABLES `sucursales_has_accersorios` WRITE;
/*!40000 ALTER TABLE `sucursales_has_accersorios` DISABLE KEYS */;
INSERT INTO `sucursales_has_accersorios` VALUES (1,1,500,450),(1,2,500,450),(1,3,500,450),(1,4,500,450),(1,5,500,450),(1,6,500,450),(1,7,500,450),(1,8,500,450),(1,9,500,450),(1,10,500,450),(2,1,500,450),(2,2,500,450),(2,3,500,450),(2,4,500,450),(2,5,500,450),(2,6,500,450),(2,7,500,450),(2,8,500,450),(2,9,500,450),(2,10,500,450),(3,1,500,450),(3,2,500,450),(3,3,500,450),(3,4,500,450),(3,5,500,450),(3,6,500,450),(3,7,500,450),(3,8,500,450),(3,9,500,450),(3,10,500,450);
/*!40000 ALTER TABLE `sucursales_has_accersorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_arreglos`
--

DROP TABLE IF EXISTS `sucursales_has_arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_arreglos` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Arreglos_idArreglos` int(11) NOT NULL,
  `Cantidad Inicial` int(11) DEFAULT NULL,
  `Cantidad Actual` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Arreglos_idArreglos`),
  KEY `fk_Sucursales_has_Arreglos_Arreglos1_idx` (`Arreglos_idArreglos`),
  KEY `fk_Sucursales_has_Arreglos_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Arreglos_Arreglos1` FOREIGN KEY (`Arreglos_idArreglos`) REFERENCES `arreglos` (`idarreglos`),
  CONSTRAINT `fk_Sucursales_has_Arreglos_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_arreglos`
--

LOCK TABLES `sucursales_has_arreglos` WRITE;
/*!40000 ALTER TABLE `sucursales_has_arreglos` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales_has_arreglos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_flores`
--

DROP TABLE IF EXISTS `sucursales_has_flores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_flores` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Flores_idFlores` int(11) NOT NULL,
  `Cantidad Inicial` int(11) DEFAULT NULL,
  `Cantidad Actual` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Flores_idFlores`),
  KEY `fk_Sucursales_has_Flores_Flores1_idx` (`Flores_idFlores`),
  KEY `fk_Sucursales_has_Flores_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Flores_Flores1` FOREIGN KEY (`Flores_idFlores`) REFERENCES `flores` (`idflores`),
  CONSTRAINT `fk_Sucursales_has_Flores_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_flores`
--

LOCK TABLES `sucursales_has_flores` WRITE;
/*!40000 ALTER TABLE `sucursales_has_flores` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales_has_flores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_movimiento_accesorios`
--

DROP TABLE IF EXISTS `sucursales_has_movimiento_accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_movimiento_accesorios` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Movimiento Accesorios_idMovimiento Accesorios` int(11) NOT NULL,
  `Ingresaron` int(11) DEFAULT NULL,
  `Vendieron` int(11) DEFAULT NULL,
  `Ingresos (CLP)` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Movimiento Accesorios_idMovimiento Accesorios`),
  KEY `fk_Sucursales_has_Movimiento Accesorios_Movimiento Accesori_idx` (`Movimiento Accesorios_idMovimiento Accesorios`),
  KEY `fk_Sucursales_has_Movimiento Accesorios_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Movimiento Accesorios_Movimiento Accesorios1` FOREIGN KEY (`Movimiento Accesorios_idMovimiento Accesorios`) REFERENCES `movimiento_accesorios` (`idmovimiento accesorios`),
  CONSTRAINT `fk_Sucursales_has_Movimiento Accesorios_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_movimiento_accesorios`
--

LOCK TABLES `sucursales_has_movimiento_accesorios` WRITE;
/*!40000 ALTER TABLE `sucursales_has_movimiento_accesorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales_has_movimiento_accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_movimiento_flores`
--

DROP TABLE IF EXISTS `sucursales_has_movimiento_flores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_movimiento_flores` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Movimiento Flores_idMovimiento Flores` int(11) NOT NULL,
  `Ingresaron` int(11) DEFAULT NULL,
  `Vendieron` int(11) DEFAULT NULL,
  `Ingresos (CLP)` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Movimiento Flores_idMovimiento Flores`),
  KEY `fk_Sucursales_has_Movimiento Flores_Movimiento Flores1_idx` (`Movimiento Flores_idMovimiento Flores`),
  KEY `fk_Sucursales_has_Movimiento Flores_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Movimiento Flores_Movimiento Flores1` FOREIGN KEY (`Movimiento Flores_idMovimiento Flores`) REFERENCES `movimiento_flores` (`idmovimiento flores`),
  CONSTRAINT `fk_Sucursales_has_Movimiento Flores_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_movimiento_flores`
--

LOCK TABLES `sucursales_has_movimiento_flores` WRITE;
/*!40000 ALTER TABLE `sucursales_has_movimiento_flores` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales_has_movimiento_flores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales_has_venta_arreglos`
--

DROP TABLE IF EXISTS `sucursales_has_venta_arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sucursales_has_venta_arreglos` (
  `Sucursales_idSucursales` int(11) NOT NULL,
  `Venta Arreglos_idVenta Arreglos` int(11) NOT NULL,
  `Vendidosl` int(11) DEFAULT NULL,
  `Ingresos (CLP)` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sucursales_idSucursales`,`Venta Arreglos_idVenta Arreglos`),
  KEY `fk_Sucursales_has_Venta Arreglos_Venta Arreglos1_idx` (`Venta Arreglos_idVenta Arreglos`),
  KEY `fk_Sucursales_has_Venta Arreglos_Sucursales1_idx` (`Sucursales_idSucursales`),
  CONSTRAINT `fk_Sucursales_has_Venta Arreglos_Sucursales1` FOREIGN KEY (`Sucursales_idSucursales`) REFERENCES `sucursales` (`idsucursales`),
  CONSTRAINT `fk_Sucursales_has_Venta Arreglos_Venta Arreglos1` FOREIGN KEY (`Venta Arreglos_idVenta Arreglos`) REFERENCES `venta_arreglos` (`idventa arreglos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales_has_venta_arreglos`
--

LOCK TABLES `sucursales_has_venta_arreglos` WRITE;
/*!40000 ALTER TABLE `sucursales_has_venta_arreglos` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales_has_venta_arreglos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_arreglos`
--

DROP TABLE IF EXISTS `venta_arreglos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta_arreglos` (
  `idVenta Arreglos` int(11) NOT NULL,
  `Arreglos_idArreglos` int(11) NOT NULL,
  `Mes_idMes` int(11) NOT NULL,
  PRIMARY KEY (`idVenta Arreglos`,`Arreglos_idArreglos`,`Mes_idMes`),
  KEY `fk_Venta Arreglos_Arreglos1_idx` (`Arreglos_idArreglos`),
  KEY `fk_Venta Arreglos_Mes1_idx` (`Mes_idMes`),
  CONSTRAINT `fk_Venta Arreglos_Arreglos1` FOREIGN KEY (`Arreglos_idArreglos`) REFERENCES `arreglos` (`idarreglos`),
  CONSTRAINT `fk_Venta Arreglos_Mes1` FOREIGN KEY (`Mes_idMes`) REFERENCES `mes` (`idmes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_arreglos`
--

LOCK TABLES `venta_arreglos` WRITE;
/*!40000 ALTER TABLE `venta_arreglos` DISABLE KEYS */;
INSERT INTO `venta_arreglos` VALUES (1,1,1),(11,1,2),(21,1,3),(31,1,4),(41,1,5),(51,1,6),(61,1,7),(71,1,8),(81,1,9),(91,1,10),(2,2,1),(12,2,2),(22,2,3),(32,2,4),(42,2,5),(52,2,6),(62,2,7),(72,2,8),(82,2,9),(92,2,10),(3,3,1),(13,3,2),(23,3,3),(33,3,4),(43,3,5),(53,3,6),(63,3,7),(73,3,8),(83,3,9),(93,3,10),(4,4,1),(14,4,2),(24,4,3),(34,4,4),(44,4,5),(54,4,6),(64,4,7),(74,4,8),(84,4,9),(94,4,10),(5,5,1),(15,5,2),(25,5,3),(35,5,4),(45,5,5),(55,5,6),(65,5,7),(75,5,8),(85,5,9),(95,5,10),(6,6,1),(16,6,2),(26,6,3),(36,6,4),(46,6,5),(56,6,6),(66,6,7),(76,6,8),(86,6,9),(96,6,10),(7,7,1),(17,7,2),(27,7,3),(37,7,4),(47,7,5),(57,7,6),(67,7,7),(77,7,8),(87,7,9),(97,7,10),(8,8,1),(18,8,2),(28,8,3),(38,8,4),(48,8,5),(58,8,6),(68,8,7),(78,8,8),(88,8,9),(98,8,10),(9,9,1),(19,9,2),(29,9,3),(39,9,4),(49,9,5),(59,9,6),(69,9,7),(79,9,8),(89,9,9),(99,9,10),(10,10,1),(20,10,2),(30,10,3),(40,10,4),(50,10,5),(60,10,6),(70,10,7),(80,10,8),(90,10,9),(100,10,10);
/*!40000 ALTER TABLE `venta_arreglos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 17:07:40
