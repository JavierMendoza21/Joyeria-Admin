CREATE DATABASE  IF NOT EXISTS `Joyeria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Joyeria`;
-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: Joyeria
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `Paquetes`
--

DROP TABLE IF EXISTS `Paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquetes` (
  `idpaquete` int NOT NULL AUTO_INCREMENT,
  `idusuario` int NOT NULL,
  `fecha` datetime NOT NULL,
  `precioOriginal` float NOT NULL,
  `precioVenta` float NOT NULL,
  `porcentaje` float NOT NULL,
  PRIMARY KEY (`idpaquete`),
  KEY `idpaquete_idx` (`idpaquete`),
  KEY `fk_usuario_idx` (`idusuario`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paquetes`
--

LOCK TABLES `Paquetes` WRITE;
/*!40000 ALTER TABLE `Paquetes` DISABLE KEYS */;
INSERT INTO `Paquetes` VALUES (1,8,'2020-08-06 07:52:41',4800,4560,5),(3,8,'2020-08-06 20:41:54',8100,6885,15),(4,8,'2020-08-07 17:54:19',80478,64382.4,20),(7,8,'2020-08-14 00:08:15',9400,8178,13);
/*!40000 ALTER TABLE `Paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abonos`
--

DROP TABLE IF EXISTS `abonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonos` (
  `idcompra` int NOT NULL,
  `cantidad` float NOT NULL,
  `fecha` datetime NOT NULL,
  KEY `fk_compra_idx` (`idcompra`),
  CONSTRAINT `fk_compra` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonos`
--

LOCK TABLES `abonos` WRITE;
/*!40000 ALTER TABLE `abonos` DISABLE KEYS */;
INSERT INTO `abonos` VALUES (22,200,'2020-08-13 20:49:24'),(22,1000,'2020-08-13 20:49:52'),(22,500,'2020-08-13 20:50:12'),(22,100,'2020-08-13 20:51:21'),(24,200,'2020-08-13 20:53:45'),(24,300,'2020-08-13 20:55:27'),(23,200,'2020-08-13 20:59:19'),(25,150,'2020-08-13 20:59:28'),(23,300,'2020-08-13 21:00:04'),(23,1300,'2020-08-13 21:00:32'),(24,150,'2020-08-13 22:23:39'),(25,230,'2020-08-13 22:29:42'),(27,1400,'2020-08-14 04:11:38'),(26,300,'2020-08-14 04:11:48'),(28,2400,'2020-08-14 11:06:20'),(28,500,'2020-08-14 11:07:11'),(29,8000,'2020-08-14 11:31:12'),(30,1400,'2020-08-14 22:47:39'),(31,1500,'2020-08-15 03:12:07'),(32,1500,'2020-08-15 03:34:03'),(33,8000,'2020-08-15 03:36:03'),(34,2300,'2020-08-15 13:02:03'),(35,3500,'2020-08-15 13:05:43'),(35,50.5,'2020-08-15 13:05:55'),(36,1500,'2020-08-15 13:17:47'),(37,2500,'2020-08-15 13:26:26'),(38,800,'2020-08-15 13:30:49'),(39,1800,'2020-08-15 13:43:59'),(39,3000,'2020-08-15 13:44:08'),(39,2500,'2020-08-15 13:44:13'),(39,3000,'2020-08-15 13:44:56'),(40,6000,'2020-08-15 13:46:04'),(40,2500,'2020-08-15 13:46:18'),(40,3000,'2020-08-15 13:46:33'),(41,2800,'2020-08-15 17:47:13'),(42,800,'2020-08-16 23:01:55'),(31,5000,'2020-08-16 23:02:03'),(27,10000,'2020-08-16 23:02:12'),(30,5000,'2020-08-16 23:02:22'),(43,1800,'2020-08-16 23:03:23'),(43,800,'2020-08-16 23:03:33'),(24,1000,'2020-08-16 23:24:20'),(24,150,'2020-08-16 23:24:29'),(25,1400,'2020-08-16 23:24:35'),(25,20,'2020-08-16 23:24:44'),(26,1500,'2020-08-16 23:25:09'),(27,6000,'2020-08-16 23:25:16'),(27,1600,'2020-08-16 23:25:24'),(27,1200,'2020-08-16 23:25:32'),(27,45,'2020-08-16 23:25:37'),(30,8000,'2020-08-16 23:26:45'),(30,85,'2020-08-16 23:26:51'),(41,9000,'2020-08-16 23:27:31'),(31,20000,'2020-08-16 23:27:38'),(32,1500,'2020-08-17 03:11:26'),(33,7000,'2020-08-17 03:15:15'),(33,100,'2020-08-17 03:15:20'),(31,40000,'2020-08-17 19:12:35'),(41,200,'2020-08-17 19:12:51'),(42,450,'2020-08-17 19:13:00'),(34,3700,'2020-08-17 19:48:36'),(44,3000,'2020-08-17 19:50:35'),(35,20000,'2020-08-17 23:15:18'),(35,20000,'2020-08-17 23:15:52'),(35,25000,'2020-08-17 23:16:45'),(35,5000,'2020-08-17 23:23:15'),(35,7000,'2020-08-17 23:23:46'),(35,49.5,'2020-08-17 23:24:13'),(35,118,'2020-08-17 23:24:27'),(35,300,'2020-08-17 23:24:34'),(35,300,'2020-08-17 23:24:40'),(45,3500,'2020-08-18 14:22:24'),(31,2000,'2020-08-18 14:57:47'),(43,1100,'2020-08-18 14:57:54'),(43,50,'2020-08-18 14:58:00'),(45,4000,'2020-08-18 14:58:42'),(45,900,'2020-08-18 15:00:10');
/*!40000 ALTER TABLE `abonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `idusuario` int NOT NULL,
  `idproducto` int NOT NULL,
  `cantidadP` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (58,2,2),(58,6,1);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carritoPaquete`
--

DROP TABLE IF EXISTS `carritoPaquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carritoPaquete` (
  `idusuario` int NOT NULL,
  `idpaquete` int NOT NULL,
  `cantidadP` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='La funcion de esta tabla es almacenar temporalmente los paquetes y que desea comprar el comprador final, hasta que pase\na la compra definitiva.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carritoPaquete`
--

LOCK TABLES `carritoPaquete` WRITE;
/*!40000 ALTER TABLE `carritoPaquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `carritoPaquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `idcategoria_producto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Aretes'),(2,'Anillos'),(3,'Dijes'),(4,'Collares'),(5,'Religioso'),(6,'Cadenas'),(7,'Pulseras'),(8,'Joyeria para bebé'),(9,'Joyeria para cabayero'),(11,'Churumbelas'),(12,'categoriaP'),(14,'nskkls'),(15,'Nueva'),(27,'Mascotas'),(28,'Mascotas'),(29,'Aves'),(30,'Osos'),(32,'Otros'),(33,'ultima categoria');
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_usuario`
--

DROP TABLE IF EXISTS `categoria_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_usuario` (
  `idcategoria_usuario` int NOT NULL AUTO_INCREMENT,
  `categoria_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_usuario`
--

LOCK TABLES `categoria_usuario` WRITE;
/*!40000 ALTER TABLE `categoria_usuario` DISABLE KEYS */;
INSERT INTO `categoria_usuario` VALUES (1,'Admin'),(2,'Vendedor'),(3,'Especial');
/*!40000 ALTER TABLE `categoria_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idcompra` int NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(100) NOT NULL,
  `idvendedor` int NOT NULL,
  `total` float NOT NULL,
  `fecha` datetime NOT NULL,
  `costoCubierto` float DEFAULT '0',
  `estado` tinyint(1) DEFAULT '0',
  `pagarVendedor` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idcompra`),
  KEY `fk_vendedor_idx` (`idvendedor`),
  CONSTRAINT `fk_vendedor` FOREIGN KEY (`idvendedor`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla lleva el registro de las ventas de todos los usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (22,'Javier Alexis',8,1800,'2020-08-12 03:32:22',1800,1,1),(23,'isaac jimenez juarez',8,1800,'2020-08-12 17:56:10',1800,1,1),(24,'danira mendoza garcia',8,1800,'2020-08-12 18:30:10',1800,1,1),(25,'jorge lorenzana',8,1800,'2020-08-13 20:56:26',1800,1,1),(26,'alexis alarcon',8,1800,'2020-08-14 03:54:01',1800,1,1),(27,'francisco javier',8,20245,'2020-08-14 04:11:17',20245,1,1),(28,'suleyma parra',53,83945.4,'2020-08-14 11:06:01',2900,0,0),(29,'benito juarez',53,81763,'2020-08-14 11:31:03',8000,0,0),(30,'Alexis alarcon',8,14485,'2020-08-14 22:46:01',14485,1,1),(31,'ultima venta',8,70142.4,'2020-08-15 03:11:54',68500,0,0),(32,'isaac jimenez',57,3000,'2020-08-15 03:33:35',3000,1,1),(33,'perla peralta',57,15100,'2020-08-15 03:35:56',15100,1,1),(34,'isaac',57,6000,'2020-08-15 13:01:45',6000,1,1),(35,'Jorge',42,81318,'2020-08-15 13:05:33',81318,1,1),(36,'Isaac newton',44,12640,'2020-08-15 13:17:35',1500,0,0),(37,'Grecia',45,12900,'2020-08-15 13:26:17',2500,0,0),(38,'Monse',46,1000,'2020-08-15 13:30:37',800,0,0),(39,'jorge',46,11600,'2020-08-15 13:43:49',10300,0,0),(40,'obama',46,13520,'2020-08-15 13:45:49',11500,0,0),(41,'Danira garcia',8,12000,'2020-08-15 17:47:05',12000,1,1),(42,'Isaac',8,1250,'2020-08-16 23:01:44',1250,1,1),(43,'paola',8,3750,'2020-08-16 23:03:12',3750,1,1),(44,'velen perez',57,3000,'2020-08-17 19:50:28',3000,1,1),(45,'david hernandez',63,8400,'2020-08-18 14:22:14',8400,1,1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_productos_temporal`
--

DROP TABLE IF EXISTS `lista_productos_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_productos_temporal` (
  `idproducto` int NOT NULL,
  `cantidad_T` int NOT NULL,
  `idUser` int NOT NULL,
  KEY `fk_usuario_idx` (`idUser`),
  KEY `fk_producto` (`idproducto`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_user` FOREIGN KEY (`idUser`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_productos_temporal`
--

LOCK TABLES `lista_productos_temporal` WRITE;
/*!40000 ALTER TABLE `lista_productos_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_productos_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetesVendidos`
--

DROP TABLE IF EXISTS `paquetesVendidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetesVendidos` (
  `idpaquete` int NOT NULL,
  `idusuario` int NOT NULL,
  `idcompra` int NOT NULL,
  `cantidad` int NOT NULL,
  KEY `fk_idusuario_idx` (`idusuario`),
  KEY `fk_idpaquete_idx` (`idpaquete`),
  KEY `fk_idcompra_idx` (`idcompra`),
  CONSTRAINT `fk_idcompra` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`),
  CONSTRAINT `fk_idpaquete` FOREIGN KEY (`idpaquete`) REFERENCES `Paquetes` (`idpaquete`),
  CONSTRAINT `fk_idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='lleva el registro de los paquetes vendidos por cada vendedor';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetesVendidos`
--

LOCK TABLES `paquetesVendidos` WRITE;
/*!40000 ALTER TABLE `paquetesVendidos` DISABLE KEYS */;
INSERT INTO `paquetesVendidos` VALUES (1,8,24,1),(3,8,25,1),(4,8,26,1),(3,8,27,1),(3,53,28,1),(4,53,28,1),(7,53,28,1),(3,53,29,1),(3,8,30,1),(4,8,31,1),(4,46,38,1),(4,46,40,3);
/*!40000 ALTER TABLE `paquetesVendidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes_venta`
--

DROP TABLE IF EXISTS `paquetes_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetes_venta` (
  `idpaquete` int NOT NULL,
  `idproducto` int NOT NULL,
  `cantidad_T` int NOT NULL,
  KEY `idpaquete` (`idpaquete`),
  KEY `idproducto` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes_venta`
--

LOCK TABLES `paquetes_venta` WRITE;
/*!40000 ALTER TABLE `paquetes_venta` DISABLE KEYS */;
INSERT INTO `paquetes_venta` VALUES (3,4,1),(3,1,1),(3,8,1),(4,1,2),(4,9,2),(4,7,1),(7,1,1),(7,4,2);
/*!40000 ALTER TABLE `paquetes_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porcentajes`
--

DROP TABLE IF EXISTS `porcentajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `porcentajes` (
  `total` float NOT NULL,
  `recompra` float NOT NULL,
  `socio` float NOT NULL,
  `vendedores` float NOT NULL,
  `alexis` float NOT NULL,
  `fechapago` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porcentajes`
--

LOCK TABLES `porcentajes` WRITE;
/*!40000 ALTER TABLE `porcentajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `porcentajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `categoria_kf` int NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `costo_compra` float NOT NULL,
  `costo_venta` float NOT NULL,
  `cantidad_stock` int NOT NULL,
  `img_producto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_producto_categoria_idx` (`categoria_kf`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_kf`) REFERENCES `categoria_producto` (`idcategoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,8,'Aretes de oro',1801,3800,5,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(2,1,'Arracadas de oro blanco',1500,2880,8,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(3,3,'OtroProducto',100,500,20,'c474e4bcb6d2b84d591ae093a26a13422ee89530.jpg'),(4,1,'Aretes de oro blanco arabes ',1500,2800,70,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(5,1,'Aretes para la lengua de plata',500,800,69,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(6,1,'jbkjbiubui',200,1000,0,'c474e4bcb6d2b84d591ae093a26a13422ee89530.jpg'),(7,2,'cambio',267,68878,28,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(8,2,'Aretes laminados',300,1500,400,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(9,2,'Aretes arabes',1500,2000,52,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(11,3,'nsajkbkjb',987,1000,0,'5c9c7d6561333d8c84ce36aff6daff451b2e8977.jpg'),(12,1,'Arete 195',100,180,21,'5c9c7d6561333d8c84ce36aff6daff451b2e8977.jpg'),(17,2,'jbgiuhiuh',1000,5000,300,'producto_default.png'),(18,2,'ultimop',256,1280,250,'producto_default.png'),(19,33,'anillo de diamante 20K',800,4000,180,'producto_default.png'),(20,29,'collar para perico',250,1250,30,'producto_default.png'),(21,5,'Joya ',250,1250,200,'producto_default.png');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosVendidos`
--

DROP TABLE IF EXISTS `productosVendidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productosVendidos` (
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `idusuario` int NOT NULL,
  `idcompra` int NOT NULL,
  KEY `idusuario_idx` (`idusuario`),
  KEY `idcompra_idx` (`idcompra`),
  KEY `idproducto_idx` (`idproducto`),
  CONSTRAINT `idcompra` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`),
  CONSTRAINT `idproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla lleva el registro de los productos que vende cada usuario a cada cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosVendidos`
--

LOCK TABLES `productosVendidos` WRITE;
/*!40000 ALTER TABLE `productosVendidos` DISABLE KEYS */;
INSERT INTO `productosVendidos` VALUES (1,2,8,22),(1,2,8,23),(8,3,8,24),(8,3,8,25),(8,1,8,26),(1,1,8,26),(1,2,8,27),(2,2,8,27),(8,3,53,28),(9,3,53,29),(7,1,53,29),(1,2,8,30),(2,2,8,31),(8,2,57,32),(8,5,57,33),(1,2,57,33),(8,4,57,34),(2,3,42,35),(1,1,42,35),(7,1,42,35),(2,3,44,36),(11,2,44,36),(6,2,44,36),(4,3,45,37),(8,3,45,37),(3,2,46,38),(1,2,46,39),(9,2,46,39),(2,4,46,40),(9,1,46,40),(19,3,8,41),(20,1,8,42),(20,3,8,43),(8,2,57,44),(4,3,63,45);
/*!40000 ALTER TABLE `productosVendidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_paquete`
--

DROP TABLE IF EXISTS `productos_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_paquete` (
  `idpaquete_fk` int NOT NULL,
  `idproducto_fk` int NOT NULL,
  `piezas` int NOT NULL,
  PRIMARY KEY (`idpaquete_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla para almacenar la lista de los productos que son de paquetes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_paquete`
--

LOCK TABLES `productos_paquete` WRITE;
/*!40000 ALTER TABLE `productos_paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockUsuario`
--

DROP TABLE IF EXISTS `stockUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockUsuario` (
  `idUsuario` int NOT NULL,
  `idProducto` int NOT NULL,
  `cantidadProducto` int NOT NULL,
  KEY `fk_stockProducto_idx` (`idProducto`),
  KEY `fk_stockUsuario_idx` (`idUsuario`),
  CONSTRAINT `fk_stockProducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_stockUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockUsuario`
--

LOCK TABLES `stockUsuario` WRITE;
/*!40000 ALTER TABLE `stockUsuario` DISABLE KEYS */;
INSERT INTO `stockUsuario` VALUES (8,1,68),(8,2,78),(8,3,23),(8,4,37),(8,5,60),(8,6,12),(41,4,5),(41,2,10),(41,1,5),(42,1,4),(42,2,27),(42,7,9),(58,1,10),(58,2,18),(58,3,100),(58,6,4),(53,7,3),(53,4,41),(53,8,95),(53,9,18),(8,9,7),(8,11,19),(8,7,23),(8,8,224),(52,1,5),(52,6,5),(52,8,5),(52,5,1),(57,1,3),(57,8,167),(44,2,17),(44,6,28),(44,11,28),(45,4,47),(45,8,217),(45,11,50),(45,18,50),(46,2,28),(46,3,8),(46,7,16),(46,9,4),(8,19,17),(8,20,16),(63,4,17);
/*!40000 ALTER TABLE `stockUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `numeroCelular` varchar(20) DEFAULT NULL,
  `correoElectronico` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `usuario` varchar(30) NOT NULL,
  `contraseña` varchar(300) NOT NULL,
  `imgUsuario` varchar(200) DEFAULT NULL,
  `categoria_usuario` int NOT NULL,
  `targeta` varchar(40) NOT NULL,
  PRIMARY KEY (`idusuarios`),
  KEY `fk_categoria_idx` (`categoria_usuario`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_usuario`) REFERENCES `categoria_usuario` (`idcategoria_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (8,'Javier Alexis','Mendoza','Garcia','7828281183','jamg1819@gmail.com','Poza rica ver.',1,'Admin','admin12345','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',1,'1234 5678 1234 1234'),(41,'Usuario modificado','hjbjhhjglkjjh','gjhgjkhgj','hghjghjghjhgjh','ghjgjh@jjddbj.com','jhajhhbqhehqoiiefho',1,'Usuario','2f4ee895d45feb94d1e8f21298428c7ed43ccba7','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1,'1234 5678 1234 1234'),(42,'Otro usuario','Apellido','bkjbsfkjbka','bkjsdbfjkbfjk','bjbjkbjdk@jbjbhjbhfqfq.com','obdib',1,'usuariovendedor','usuariovendedor','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',2,'1234 5678 1234 1234'),(44,'Jorge','Flores','Lorenzana','278478478742','jkkjhddkj@sjakh.com','',1,'kJHDHJKH','password','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1,'1234 5678 1234 1234'),(45,'Isaac','Jimenez','Juarez','7827689765','isaac@gmail.com','jhbhvjavsljva',1,'kjvhgvkhjvhjv','password','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',3,'1234 5678 1234 1234'),(46,'nayely','Bautista','Ramirez','7827384928','nayely@gmail.com','lbvlkbjhvbh',1,'hvjhvjvjvjhjhv','password','../uploads/a1922eda6502e1ff703ed332f74d6cceecf9b0dc.png',2,'1234 5678 1234 1234'),(50,'afbqjefvq,e fjq jh','vlhbsflhvnjb','hjvbljavhjv','hjvljvajhfvajl','vljavhjLwdbk@kbjbdkjb.com','jkdvkñjñvfjlivhjqbvqfh',0,'jbdlHVJHVdj','235d42b33e0877ad8099bd397921fda9b52524d9','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1,'1234 5678 1234 1234'),(51,'sabjjsvvjhvhjvljv','jhvjvjvjhvjvjlv','jhvjvlhvljhv','jvjlvvljvhjv','hvljvvshjv@jsbjh.co','Actualizacion de direccion',1,'bkbacshcal','password','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',2,'1234 5678 1234 1234'),(52,'Daniel','uchiha','eder','7828281183','correoDaniel@gmail.com','Direccion de daniel',1,'daniel1','0716b9029d0818cbabd7c69aa55d01c877982b54','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',2,'1234 5678 1234 1234'),(53,'UsuarioCorreo','UsuarioCorreo','UsuarioCorreo','782000000','166P0492@itspozarica.edu.mx',',bdnlnflqknefeqnflk',1,'useremail','useremail','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',1,'1234 5678 1234 1234'),(57,'Alexis','Alarcon','Alm','7821143993','alexisalarconalm@gmail.com','Pachuca Hidalgo',1,'AlexisAlarcon','alexis','../uploads/6d0af66942db779c9967cf842b60ea9d33a18589.jpg',1,'1234 5678 1234 1234'),(58,'Perla','Peralta','J','7821143993','perlaj@gmail.com','Calle jade Colonia Actopan Poza rica, Ver.',1,'PerlaPeralta','perla26','../uploads/5c6bd5b53379cb3c1baeca29e028dc1c8d869315.jpg',2,'1234 5678 1234 1234'),(61,'kjhbkjbjbj','hoihoihoihoi','ihohihiohhi','657657676','kjbkjfb@gmail.com','smnkngnj',1,'jhgugugiug','ugiuiugiugi','user-default.jpg',2,'1234 5678 1234 1234'),(62,'javier alexis ','mendoza ','garcia','7828281183','javier1234@gmail.com','',1,'javier782','100%Alexis','user-default.jpg',2,'1234 5678 1234 1234'),(63,'javier alexis','vendedor','usuariotargeta','7828281183','usuariotargeta@gmail.com','poza rica, veracruz',1,'usuariotargeta12','usuariotargeta123','user-default.jpg',2,'1234 5678 1234 1234');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Joyeria'
--

--
-- Dumping routines for database 'Joyeria'
--
/*!50003 DROP FUNCTION IF EXISTS `totalCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalCompra`( idusuario_ int) RETURNS float
    DETERMINISTIC
BEGIN
	declare totalCantidad float default 0;
	declare totalPrecio float default 0;
    declare totalCantidadPaquete float default 0;
	declare totalPrecioPaquete float default 0;
    declare total float default 0;
    
    set totalCantidad=(select count(*) as totalP from carrito inner join producto 
	on producto.idproducto=carrito.idproducto
	where carrito.idusuario=idusuario_);
    
    if(totalCantidad>0)
    then
		set totalPrecio=(select sum(producto.costo_venta*carrito.cantidadP) as totalP from carrito inner join producto 
		on producto.idproducto=carrito.idproducto
		where carrito.idusuario=idusuario_);
	else
		set totalPrecio=0;
    end if;
	
    set totalCantidadPaquete=(select count(*)  from carritoPaquete inner join Paquetes
	on carritoPaquete.idpaquete=Paquetes.idpaquete
	where carritoPaquete.idusuario=idusuario_);
	
    if(totalCantidadPaquete>0)
    then
		set total=(select sum(precioVenta*cantidadP) as totalPack from carritoPaquete inner join Paquetes
		on carritoPaquete.idpaquete=Paquetes.idpaquete
		where carritoPaquete.idusuario=idusuario_);
	else
		set totalPrecioPaquete=0;
    end if;
	set total=totalPrecioPaquete+totalPrecio;
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarCostoPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarCostoPaquete`(
in idprod int,
idpaq int)
BEGIN
	SET SQL_SAFE_UPDATES=0;
	/*DELETE FROM paquetes_venta
	WHERE idproducto=idprod and idpaquete=idpaq;*/
    /*Precio del paquete*/
    set @original= (select sum(cantidad_T * costo_venta) from paquetes_venta
	inner join producto on producto.idProducto=paquetes_venta.idproducto 
	where paquetes_venta.idpaquete =idpaq);
    /*Se optiene el descuento*/
    set @descu=(select porcentaje from Paquetes where idpaquete=idpaq);
    
    /*Se actualiza el precio del paquete, despues de eliminar el producto del paquete*/
    UPDATE Paquetes
	SET	precioOriginal = @original,
	precioVenta = @original-(@original*@descu/100)
	WHERE idpaquete = idpaq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarProducto`(
in id int,
in cat int,
in des varchar(150),
in compra float,
in venta float,
in stock int,
in img varchar(200)
)
BEGIN
	UPDATE producto
	SET	categoria_kf = cat,descripcion = des,costo_compra = compra,
	costo_venta = venta,cantidad_stock = stock,img_producto = img
	WHERE idProducto = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_categoria`(
in id int,
in categoriaP varchar(45))
BEGIN
	UPDATE `Joyeria`.`categoria_producto`
	SET
	`categoria` = categoriaP
	WHERE `idcategoria_producto` = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCarritoPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCarritoPaquete`(
in idpaquete_ int,
idusuario_ int)
BEGIN
	set @mensageSalida="";
	#select 'Entre';
	/*Total de productos en el paquete*/
	set @total=(select count(*) as 'total' from 
    paquetes_venta where paquetes_venta.idpaquete=idpaquete_);
    
    /*Total de productos que tiene el usuario del paquete*/
    set @tproductos=(select count(*) as 'TotalP' from paquetes_venta inner join stockUsuario 
	on stockUsuario.idProducto=paquetes_venta.idproducto
	where paquetes_venta.cantidad_T <= stockUsuario.cantidadProducto 
	and paquetes_venta.idproducto = stockUsuario.idProducto and stockUsuario.idUsuario=idusuario_
	and paquetes_venta.idpaquete=idpaquete_ order by paquetes_venta.idpaquete);
    /*Si el vendedor tiene los productos del paquete entonces*/
    if(@total=@tproductos)
    then 
		/*Comprobar si ya esta el paquete agregado*/
        set @existePaquete=0;
        set @existePaquete=(select count(*) from carritoPaquete
        where idusuario=idusuario_ and idpaquete=idpaquete_);
        
        if(@existePaquete>0)
        then
        
        /***********Inicio actualizacion ****************/
			/*Actualizar*/
			set @cantidad=0;
			set @cantidad=(select cantidadP from carritoPaquete
			where idpaquete=idpaquete_ and idusuario=idusuario_);
			
			/*Comprobar que se puede agregar (existe suficiente producto)*/
			set @tproductoscomprobar=(select count(*) as 'TotalP' from paquetes_venta inner join stockUsuario 
			on stockUsuario.idProducto=paquetes_venta.idproducto
			where (paquetes_venta.cantidad_T) <= stockUsuario.cantidadProducto
			and paquetes_venta.idproducto = stockUsuario.idProducto and stockUsuario.idUsuario=idusuario_
			and paquetes_venta.idpaquete=idpaquete_ order by paquetes_venta.idpaquete);
            
            if(@tproductoscomprobar=@total)
			then
				SET SQL_SAFE_UPDATES = 0;
				UPDATE carritoPaquete SET 
				cantidadP = @cantidad+1
				WHERE idusuario=idusuario_ and idpaquete=idpaquete_;
				set @mensageSalida="1";
			else
				set @mensageSalida="0";
			end if;
            /***********fin actualizacion ****************/
        else
			
			/*Insertar*/
			INSERT INTO carritoPaquete (idusuario,idpaquete,cantidadP)
			VALUES(idusuario_,idpaquete_,1);
			set @mensageSalida="1";
        end if;
        else
			set @mensageSalida="0";
    end if;
    select @mensageSalida as 'msj';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCarritoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCarritoProducto`(
in idproducto_ int,
idusuario_ int)
BEGIN
	set @existe=0;
	set @existe=(select count(*) from stockUsuario where idProducto =idproducto_ and idUsuario=idusuario_);
    
    set @cantidadStock=0;
	set @cantidadStock=(select cantidadProducto from stockUsuario where 
	idUsuario=idusuario_ and idProducto=idproducto_);
    
    if(@cantidadStock > 0 )
    then
		set @existeP=0;
		set @existeP=(select count(*) from carrito where idproducto =idproducto_
        and idusuario=idusuario_);
        
        if(@existeP>0)
        then
			/*Se actualiza*/
            set @cantidad=0;
			set @cantidad=(select cantidadP from carrito where idproducto =idproducto_
			and idusuario=idusuario_);
            
            if(@cantidadStock>0)
            then
				UPDATE carrito SET cantidadP  = @cantidad+1
				WHERE idusuario=idusuario_ and idproducto=idproducto_;
                
                /*Se descuenta del stock del usuario*/
				UPDATE stockUsuario	
				SET cantidadProducto = @cantidadStock-1
				WHERE idUsuario=idusuario_ and idProducto=idproducto_;
            end if;
        else
			/*Se inserta*/
            INSERT INTO carrito(`idusuario`,`idproducto`,`cantidadP`)VALUES
			(idusuario_,idproducto_,1);
            /*Se descuenta del stock del usuario*/
            UPDATE stockUsuario	
            SET cantidadProducto = @cantidadStock-1
			WHERE idUsuario=idusuario_ and idProducto=idproducto_;

        end if;
    end if;
    DELETE FROM stockUsuario
	WHERE cantidadProducto=0;

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarProductoTemporal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarProductoTemporal`(
in idProducto_ int,cantidad_ int,idUser_ int)
BEGIN
	SET @IDUSUARIO=0;
	SET @IDUSUARIO=(SELECT COUNT(*) FROM usuarios where idusuarios=idUser_);
    if(@IDUSUARIO>0)
    then
		SET @IDPRODUCTO=0;
		SET @IDPRODUCTO=(SELECT COUNT(*) FROM producto where idProducto=idProducto_);
		if(@IDPRODUCTO>0)
			then
				######################INICIO
                SET @EXISTE=0;
				SET @EXISTE=(SELECT COUNT(*) FROM lista_productos_temporal
					where idProducto=idProducto_ and idUser=idUser_);
				if(@EXISTE>0)
					then
						set @CANTIDAD=0;
                        SET @CANTIDAD=(SELECT CANTIDAD_T FROM lista_productos_temporal
                        WHERE idUser=idUser_ and idproducto=idProducto_);
						UPDATE `Joyeria`.`lista_productos_temporal`
						SET	`cantidad_T` = cantidad_+@CANTIDAD
						WHERE `idproducto` = idProducto_ and idUser=idUser_;
                    
                    else
						insert into lista_productos_temporal 
                        values (idProducto_,cantidad_,idUser_);
					
					end if;
                ######################FIN
			end if;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarProductoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarProductoUsuario`(in 
idUser int,idProd int,total int)
BEGIN
	/**No se valida el usuario y el producto,
    devido a que el foreing key lo va a validar por el desarrollador**/
    set @validarRegistro=0;
    set @validarRegistro=(select count(*) from stockUsuario
    where idUsuario=idUser and idProducto=idProd);
    
    if(@validarRegistro=0)
    then
		set @stockProducto=0;
		set @stockProducto=(select cantidad_stock from producto where idProducto =idProd);
        
		if(@stockProducto>=total)
			then
			/**Se desconto del stock**/
			UPDATE producto
			SET cantidad_stock = @stockProducto-total
			WHERE idProducto = idProd;
            
            /**No existe el registro**/
			INSERT INTO stockUsuario
			(idUsuario,idProducto,cantidadProducto)VALUES(idUser,idProd,total);
        end if;
		
    else
		/**Existe el producto**/
		/**Comprobar que exista sufuciente producto en el stock**/
		set @stockProducto=0;
		set @stockProducto=(select cantidad_stock from producto where idProducto =idProd);
        
        if(@stockProducto>=total)
        then
			/**Se desconto del stock**/
			UPDATE producto
			SET cantidad_stock = @stockProducto-total
			WHERE idProducto = idProd;

			
			/**Se actualizo el stock del usuario**/
			set @cantidadExistente=(select cantidadProducto from stockUsuario
			where idUsuario=idUser and idProducto=idProd);
			
			UPDATE stockUsuario
			SET cantidadProducto = total+@cantidadExistente
			WHERE idUsuario=idUser and idProducto=idProd;
        end if;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregarProductoUsuarioPaqueteCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarProductoUsuarioPaqueteCarrito`(
in idusuario_ int, idproducto_ int, cantidad_ int)
BEGIN
	set @existeProducto=(select count(*) from stockUsuario where idUsuario=idusuario_ and
    idProducto=idproducto_);
    
    if(@existeProducto>0)
    then
		/*Se hace update*/
        set @total =(select cantidadProducto from stockUsuario where idUsuario=idusuario_ and
		idProducto=idproducto_);
        
        UPDATE stockUsuario	SET
		`cantidadProducto` = cantidad_+@total
		WHERE idUsuario=idusuario_ and idProducto=idproducto_;
    else
		/*Se hace insert*/
		INSERT INTO stockUsuario(`idUsuario`,`idProducto`,`cantidadProducto`)
		VALUES (idusuario_,idProducto_,cantidad_);

    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarPass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarPass`(
in email varchar(45))
BEGIN
	select usuario as 'user',contraseña as 'pass' from usuarios where correoElectronico=email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `costoRealPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `costoRealPaquete`(
in _iduser int )
BEGIN
	set @valor=0;
	set @valor=(select sum(cantidad_T* costo_venta)  from lista_productos_temporal 
	inner join producto on lista_productos_temporal.idproducto= producto.idProducto
    where lista_productos_temporal.idUser=_iduser);
    
    if(@valor<>0)
    then
		select @valor as 'cantidad';
    else
		select 0 as 'cantidad';
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearPaquete`(in
_iduser int,
_costoFinal float)
BEGIN
	/*Comprobar si hay productos en la tabla temporal*/
	set @numLista=0;
    set @numLista=(select count(*) from  lista_productos_temporal
    where iduser=_iduser);
    if(@numLista>0)
    then
		/**Creo el paquete en el que se va a enlazar los productos**/
        
        set @fecha=now();
        set @original= (select sum(cantidad_T* costo_venta)  from lista_productos_temporal 
		inner join producto on lista_productos_temporal.idproducto= producto.idProducto
		where lista_productos_temporal.idUser=_iduser);
        
        INSERT INTO Paquetes
		(idpaquete,idusuario,fecha,precioOriginal,precioVenta,porcentaje)
        VALUES(null,_iduser,@fecha,@original,@original-(@original*_costoFinal/100),_costoFinal);
		/*Optenemos el id del paquete*/
        set @idpack=(select idpaquete from Joyeria.Paquetes where idusuario=_iduser and 
        fecha=@fecha);
        /*Se insertan los datos a la tabla*/
        insert into paquetes_venta (idpaquete,idproducto,cantidad_T)
        select @idpack as 'idpaquete',idproducto,cantidad_T from lista_productos_temporal
        where idUser=_iduser;
        /**Se eliminan los productos de la tabla temporal**/
        delete from lista_productos_temporal 
        where iduser=_iduser;
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPaquete`(in _idpaquete int)
BEGIN
	SET SQL_SAFE_UPDATES=0;
	/*Se eliminan los articulos de la tabala*/
	delete from paquetes_venta
    where idpaquete=_idpaquete;
    
    /*Se elimina el paquete*/
    delete from Paquetes
    where idpaquete=_idpaquete;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProductoPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProductoPaquete`(
in idprod int,
idpaq int)
BEGIN
	SET SQL_SAFE_UPDATES=0;
	DELETE FROM paquetes_venta
	WHERE idproducto=idprod and idpaquete=idpaq;
    /*Precio del paquete*/
    set @original= (select sum(cantidad_T * costo_venta) from paquetes_venta
	inner join producto on producto.idProducto=paquetes_venta.idproducto 
	where paquetes_venta.idpaquete =idpaq);
    /*Se optiene el descuento*/
    set @descu=(select porcentaje from Paquetes where idpaquete=idpaq);
    
    /*Se actualiza el precio del paquete, despues de eliminar el producto del paquete*/
    UPDATE Paquetes
	SET	precioOriginal = @original,
	precioVenta = @original-(@original*@descu/100)
	WHERE idpaquete = idpaq;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProductosTemporal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProductosTemporal`(
in iduser_ int)
BEGIN
	DELETE FROM lista_productos_temporal
	WHERE idUser=iduser_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProductoTemporal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProductoTemporal`(
in idp int,
in idUser_ int)
BEGIN
	DELETE FROM `Joyeria`.`lista_productos_temporal`
	WHERE idproducto=idp and idUser=idUser_;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_categoria_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_categoria_producto`(
in id int)
BEGIN
	set @msj='';
	set @resultado='';
	set @resultado=(select categoria from categoria_producto where idcategoria_producto=id);
    
    if(@resultado='')
    then
		set @msj="NoExiste";
    end if;
	DELETE FROM `Joyeria`.`categoria_producto`
	WHERE idcategoria_producto=id;
    set @msj="Eliminada";
    select @msj as 'msj';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_producto`(
in id int)
BEGIN
	DELETE FROM `Joyeria`.`producto`
	WHERE idProducto=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario`(
in idUser int)
BEGIN
	set @msj='';
	set @verificarId = '';
	set @verificarId=(select idusuarios from usuarios where idusuarios=idUser);
	set @msj =(if (@verificarId is null ,"No existe","Existe"));
    
    if(@verificarId != '')
    then
		DELETE FROM `Joyeria`.`usuarios`
		WHERE idusuarios=idUser;
		
        set @msj='Se elimino';
    end if;
    select @msj as 'Resultado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `existeEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `existeEmail`(in email varchar(45))
BEGIN
	set @totalCorreos='';
	set @totalCorreos=(select count(*) from usuarios where correoElectronico=email);
	select @totalCorreos as total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCountProductosPaquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCountProductosPaquete`(in
idpaquete_ int,
idusuario_ int)
BEGIN
	set @total=(select count(*) as 'total' from 
    paquetes_venta where paquetes_venta.idpaquete=idpaquete_);
    
	select *,@total as 'total' from paquetes_venta inner join stockUsuario 
	on stockUsuario.idProducto=paquetes_venta.idproducto
	where paquetes_venta.cantidad_T <= stockUsuario.cantidadProducto 
	and paquetes_venta.idproducto = stockUsuario.idProducto and stockUsuario.idUsuario=idusuario_
	and paquetes_venta.idpaquete=idpaquete_ order by paquetes_venta.idpaquete;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getIDCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getIDCategoria`(
in cat int)
BEGIN
	select categoria_usuario from categoria_usuario where idcategoria_usuario=cat;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPagoVendedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPagoVendedores`()
BEGIN
	select idvendedor,imgUsuario,concat(nombre,' ',apellidoP) as nombre,
    sum(total)*.3 as pago, sum(total) as total,	targeta from compra
	inner join usuarios on usuarios.idusuarios=idvendedor
	where pagarVendedor=1
	group by idvendedor 
    order by total desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPaquetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPaquetes`(in _idpaquete int)
BEGIN
	SELECT descripcion,cantidad_T
	FROM Joyeria.Paquetes
	inner join paquetes_venta on paquetes_venta.idpaquete = Paquetes.idpaquete
	inner join producto on paquetes_venta.idproducto=producto.idProducto
	where Paquetes.idpaquete=_idpaquete;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPorcentajes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPorcentajes`()
BEGIN
	set @total=(select sum(costoCubierto) from compra where pagarVendedor=1);
	select @total as 'total', @total*.1 as 'recompra', @total*.3 as 'Vendedor'
	, @total*.35 as 'socio', @total*.25 as 'alexis';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_usuarios`(
in nom varchar(45),#No hay problema
in apeP varchar(45),#No hay problema con nombre
in apeM varchar(45),#No hay problema con nombre
in num varchar(20),#Validar numero telefonico
in email varchar(45),
in dir varchar(100),
in usua varchar(30),
in pass varchar(300),
in img varchar(200),
in cat int,
in target varchar(40))
BEGIN

	set @verificarEmail = 0;
	set @verificarEmail=(select count(*) from usuarios where correoElectronico=email);
    
    set @verificarUser = 0;
	set @verificarUser=(select count(*) from usuarios where usuario=usua);
    
	select if (@verificarEmail !=0,"Este email ya existe","No existe") as 'REmail',
    if (@verificarUser !=0,"Este usuario ya existe","No existe") as 'RUser';
    
    if(@verificarEmail = 0 and @verificarUser = 0)
    then
		INSERT INTO usuarios
		(idusuarios,nombre,apellidoP,apellidoM,numeroCelular,correoElectronico,
		direccion,estado,usuario,contraseña,imgUsuario,categoria_usuario,targeta)
		VALUES
		(Null,nom,apeP,apeM,num,email,dir,1,usua,pass,img,cat,target);
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevaCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevaCompra`(
in idusuario_ int,
nombre_ varchar(100))
BEGIN
	
	set @productos=0;
    set @productos=(select count(*) from carrito where idusuario=idusuario_);
    set @paquetes=0;
    set @paquetes=(select count(*) from carritoPaquete where idusuario=idusuario_);
    SET SQL_SAFE_UPDATES = 0;
    if(@productos>0 or @paquetes>0)
    then
		set @fecha=now();
        /*Se creo la compra*/
        set @totalCompra=totalCompra(idusuario_);
        
        #set @totalCompra=1800 ;
        INSERT INTO compra
		(idcompra,nombreCliente,idvendedor,total,fecha)
		VALUES
		(null,nombre_,idusuario_,@totalCompra,@fecha);
        
        /*Id de compra*/
		set @idcompra=(select idcompra from compra where idvendedor=idusuario_ and fecha=@fecha);
        
        select 'Se creo la compra ',@idcompra,@productos,@paquetes;
        /*Verificar tabla productos*/

		/*pasan los productos de la tabla carrito a productos vendidos*/
		INSERT INTO productosVendidos (idproducto,cantidad,idusuario,idcompra)
		select idproducto,cantidadP,idusuario,@idcompra 
		from carrito where idusuario=idusuario_;
		
		/*Eliminar los productos de la tabla carrito*/
		DELETE FROM carrito
		WHERE idusuario=idusuario_;

        /*Verificar tabla paquetes*/

		/*pasan los productos de la tabla carritoPaquete a productos paquetesVendidos*/
		INSERT INTO paquetesVendidos(idpaquete,idusuario,idcompra,cantidad)
		select idpaquete,idusuario,@idcompra,cantidadP 
		from carritoPaquete where idusuario=idusuario_;
		
		/*Eliminar los productos de la tabla carritoPaquete*/
		DELETE FROM carritoPaquete
		WHERE idusuario=idusuario_;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nueva_categoria_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nueva_categoria_producto`(
in cat varchar(45))
BEGIN

    INSERT INTO `Joyeria`.`categoria_producto`
	(`idcategoria_producto`,
	`categoria`)
	VALUES
	(null,
	cat);
    select 'se ingreso' as 'msj';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevo_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_producto`(
in _ategoria_fk int,
in _descripcion varchar(150),
in _costo_compra float,
in _costo_venta float,
in _cantidad_stock int,
in _img varchar(200))
BEGIN
	INSERT INTO producto
	(idProducto,categoria_kf,descripcion,costo_compra,costo_venta,cantidad_stock,img_producto)
	VALUES (null,_ategoria_fk,_descripcion,_costo_compra,_costo_venta,_cantidad_stock,_img);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCostoTotalCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCostoTotalCompra`(in idusuario_ int)
BEGIN  
	set @totalfilas=0;
    set @totalfilas=(select count(*) as totalP from carrito inner join producto 
	on producto.idproducto=carrito.idproducto
	where carrito.idusuario=idusuario_);
    set @total=0;
    if(@totalfilas>0)
    then 
		set @total=(select sum(producto.costo_venta*carrito.cantidadP) as totalP from carrito inner join producto 
		on producto.idproducto=carrito.idproducto
		where carrito.idusuario=idusuario_);
    end if;
    
	set @totalPfilas=0;
    set @totalPfilas=(select count(*) from carritoPaquete inner join Paquetes
		on carritoPaquete.idpaquete=Paquetes.idpaquete
		where carritoPaquete.idusuario=idusuario_);
        
    set @totalP=0;
    if(@totalPfilas>0)
    then
		set @totalP=(select sum(precioVenta*cantidadP) as totalPack from carritoPaquete inner join Paquetes
		on carritoPaquete.idpaquete=Paquetes.idpaquete
		where carritoPaquete.idusuario=idusuario_);
    end if;
    select sum(@total+@totalP) as 'total';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerGanancias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerGanancias`(in idusuario_ int)
BEGIN
	set @categoria=0;
    set @categoria=(select categoria_usuario from usuarios where idusuario=idusuario_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productosUsuario`(in id int)
BEGIN
	select producto.idProducto as 'id_producto',img_producto as 'img',descripcion as 'descripcion',cantidadProducto as 'stock'
	,costo_venta as 'costo',categoria as 'categoria'
	from stockUsuario inner join producto 
	on stockUsuario.idProducto=producto.idProducto
	inner join usuarios on stockUsuario.idUsuario=usuarios.idusuarios
	inner join categoria_producto on producto.categoria_kf=idcategoria_producto
	where stockUsuario.idUsuario=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quitarProductosPorCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quitarProductosPorCarrito`(in 
idUser int,idProd int,total int)
BEGIN
	/**No se valida el usuario y el producto,
    devido a que el foreing key lo va a validar por el desarrollador**/
    set @validarRegistro=0;
    set @validarRegistro=(select count(*) from stockUsuario
    where idUsuario=idUser and idProducto=idProd);
    
    if(@validarRegistro<>0)
        then
        /**stock usuario**/
        set @validar=0;
		set @validar=(select cantidadProducto from stockUsuario
		where idUsuario=idUser and idProducto=idProd);
        
        if(@validar>=total)
        then
			/**Se actualizo el stock del usuario**/
			UPDATE stockUsuario
			SET cantidadProducto = @validar-total
			WHERE idUsuario=idUser and idProducto=idProd;
        end if;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quitarProductoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quitarProductoUsuario`(in 
idUser int,idProd int,total int)
BEGIN
	/**No se valida el usuario y el producto,
    devido a que el foreing key lo va a validar por el desarrollador**/
    set @validarRegistro=0;
    set @validarRegistro=(select count(*) from stockUsuario
    where idUsuario=idUser and idProducto=idProd);
    
    if(@validarRegistro<>0)
        then
        /**stock usuario**/
        set @validar=0;
		set @validar=(select cantidadProducto from stockUsuario
		where idUsuario=idUser and idProducto=idProd);
        
        if(@validar>=total)
        then
            /**Stock inventario**/
            set @validarInventario=0;
			set @validarInventario=(select cantidad_stock from producto
			where idProducto=idProd);
            
			/**Se aumenta al stock**/
			UPDATE producto
			SET cantidad_stock = @validarInventario+total
			WHERE idProducto = idProd;

			/**Se actualizo el stock del usuario**/
			UPDATE stockUsuario
			SET cantidadProducto = @validar-total
			WHERE idUsuario=idUser and idProducto=idProd;
        end if;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removerPaqueteCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removerPaqueteCarrito`(
in idusuario_ int,
idpaquete_ int,
cantidad_ int)
BEGIN
	set @stock=0;
	set @stock=(select cantidadP from carritoPaquete where 
    idusuario=idusuario_ and idpaquete=idpaquete_);
    set @msj="NO";
    if(@stock>=cantidad_)
    then
		/*Lo quito del carrito de paquetes*/
		SET SQL_SAFE_UPDATES = 0;
        UPDATE carritoPaquete SET
		cantidadP = @stock-cantidad_
		WHERE idusuario=idusuario_ and idpaquete=idpaquete_;
        set @msj="SI";
    end if;
    /*Elimino el registro si es cero*/
    DELETE FROM carritoPaquete
	WHERE cantidadP=0;
	select @msj as 'msj';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removerPiezaCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removerPiezaCarrito`(
in idusuario_ int,
idproducto_ int,
cantidad_ int)
BEGIN
	set @stock=0;
	set @stock=(select cantidadP from carrito where 
    idusuario=idusuario_ and idproducto=idproducto_);
    
    if(@stock>=cantidad_)
    then
		SET SQL_SAFE_UPDATES = 0;
		/*Le quito los productos al carrito*/
		UPDATE carrito SET
		cantidadP = @stock-cantidad_
		WHERE idusuario=idusuario_ and idproducto=idproducto_;
        
        set @existeProducto=(select count(*) from stockUsuario 
        where idUsuario=idusuario_ and idProducto=idproducto_);
        
        /*Verifico si existe el producto*/
        if(@existeProducto>0)
        then
			/*Los regreso al vendedor*/
			set @valor=(select cantidadProducto from stockUsuario 
			where idUsuario=idusuario_ and idProducto=idproducto_);
			
			UPDATE stockUsuario	SET
			cantidadProducto = @valor+cantidad_
			WHERE idUsuario=idusuario_ and idProducto=idproducto_;
        else
			INSERT INTO stockUsuario
			(`idUsuario`,`idProducto`,`cantidadProducto`)
			VALUES (idusuario_,idproducto_,cantidad_);


        end if;
        
    end if;
    /*Eliminar los registros que queden en cero*/
    DELETE FROM `Joyeria`.`carrito`
	WHERE cantidadP=0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectCarritoProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectCarritoProductos`(
in idusuario_ int)
BEGIN
	SELECT img_producto as 'img',descripcion,costo_venta*cantidadP as 'costo',
    cantidadP as 'stock',producto.idProducto 
	FROM Joyeria.carrito inner join producto
	on producto.idproducto=carrito.idproducto where idusuario=idusuario_ order by idproducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_productos_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_productos_usuario`(
in iduser int)
BEGIN
	select producto.idProducto as 'id_producto',categoria,descripcion,costo_venta as 'costo',
	cantidadProducto as 'stock',img_producto as 'img'
	from stockUsuario inner join producto 
	on producto.idProducto=stockUsuario.idProducto 
	inner join categoria_producto on categoria_producto.idcategoria_producto=producto.categoria_kf
	where stockUsuario.idUsuario=iduser;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_tabla_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_tabla_productos`()
BEGIN
	select producto.idProducto as 'id_producto', producto.categoria_kf as 'id_categoria', producto.descripcion as 'descripcion',
	producto.costo_venta as 'costo',producto.cantidad_stock as 'stock',img_producto as 'img',
	categoria_producto.categoria as 'categoria'
	from producto inner join categoria_producto
	on categoria_producto.idcategoria_producto=producto.categoria_kf;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tabla_abonos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tabla_abonos`(
in idcompra_ int,
cantidad_ float)
BEGIN
	set @abonado=(select costoCubierto from compra where idcompra=idcompra_);
    set @total=(select total from compra where idcompra=idcompra_);
    
    if(cantidad_+@abonado<=@total)
    then
		set @fecha=now();
        insert into abonos values (idcompra_,cantidad_,@fecha);
        
        set @actualizar=(select sum(cantidad) from abonos where idcompra=idcompra_);
        set @estado=0;
        if(cantidad_+@abonado=@total)
        then
			set @estado=1;
        end if;
        /*Actualizar abono y estado*/
        UPDATE compra
		SET	costoCubierto = cantidad_+@abonado,
        pagarVendedor=@estado,
		estado = @estado
		WHERE idcompra = idcompra_;

    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_user`(
in idP int ,#EXISTA LA ID
in nom varchar(45),#No hay problema
in apeP varchar(45),#No hay problema con nombre
in apeM varchar(45),#No hay problema con nombre
in num varchar(20),#Validar numero telefonico
in email varchar(45),
in dir varchar(100),
in usua varchar(30),
in pass varchar(300),
in img varchar(200),
in cat int,
in target varchar(40))
BEGIN
	set @msj='';
	set @verificarId = '';
	set @verificarId=(select idusuarios from usuarios where idusuarios=idP);
	set @msj =(if (@verificarId is null ,"No existe","Existe"));
    
    if(@verificarId != '')
    then
		UPDATE `Joyeria`.`usuarios`
		SET
		`nombre` = nom,
		`apellidoP` = apeP,
		`apellidoM` = apeM,
		`numeroCelular` = num,
		`correoElectronico` = email,
		`direccion` = dir,
		`usuario` = usua,
		`contraseña` = pass,
		`imgUsuario` = img,
		`categoria_usuario` = cat,
        `targeta`=target
		WHERE `idusuarios` = idP;
        set @msj='Actualizacion exitosa';
    end if;
    select @msj as 'Resultado';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ventaPorUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ventaPorUsuario`(in idusuario_ int)
BEGIN
	set @cat=(select categoria_usuario from usuarios where idusuarios=idusuario_);
    
    if(@cat=1)
    then
		/*Ventas por usuario*/
		select imgUsuario,nombre,sum(total) as venta, sum(costoCubierto) as cubierto 
		from compra inner join usuarios on idvendedor=idusuarios
		group by idvendedor
        order by venta desc;
    else
		/*Ventas del usuario*/
		select imgUsuario,nombre,sum(total) as venta, sum(costoCubierto) as cubierto 
		from compra inner join usuarios on idvendedor=idusuarios
		where idusuarios=idusuario_
        order by venta desc;
    end if;
	
	
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

-- Dump completed on 2020-08-19 22:28:33
