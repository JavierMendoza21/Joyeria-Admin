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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paquetes`
--

LOCK TABLES `Paquetes` WRITE;
/*!40000 ALTER TABLE `Paquetes` DISABLE KEYS */;
INSERT INTO `Paquetes` VALUES (1,8,'2020-08-06 07:52:41',4800,4560,5),(2,53,'2020-08-06 07:58:51',77478,73604.1,5),(3,8,'2020-08-06 20:41:54',7288,6194.8,15),(4,8,'2020-08-07 17:54:19',80478,64382.4,20),(5,8,'2020-08-07 17:54:59',10480,9222.4,12);
/*!40000 ALTER TABLE `Paquetes` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Aretes'),(2,'Anillos'),(3,'Dijes'),(4,'Collares'),(5,'Religioso'),(6,'Cadenas'),(7,'Pulseras'),(8,'Joyeria para bebé'),(9,'Joyeria para cabayero'),(11,'Churumbelas'),(12,'categoriaP'),(14,'nskkls'),(15,'Nueva'),(19,'actualizacion'),(27,'Mascotas'),(28,'Mascotas'),(29,'Aves'),(30,'Osos'),(32,'Otros');
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
INSERT INTO `paquetes_venta` VALUES (1,1,1),(1,3,2),(2,1,2),(2,7,1),(2,11,1),(3,4,1),(3,1,1),(3,8,1),(4,1,2),(4,9,2),(4,7,1),(5,1,2),(5,2,1);
/*!40000 ALTER TABLE `paquetes_venta` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,8,'Aretes de oro',1801,3800,25,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(2,1,'Arracadas de oro blanco',1500,2880,60,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(3,3,'OtroProducto',100,500,30,'c474e4bcb6d2b84d591ae093a26a13422ee89530.jpg'),(4,1,'Aretes de oro blanco arabes ',1500,2800,140,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(5,1,'Aretes para la lengua de plata',500,800,70,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(6,1,'jbkjbiubui',200,1000,35,'c474e4bcb6d2b84d591ae093a26a13422ee89530.jpg'),(7,2,'cambio',267,68878,73,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(8,2,'cambio2',267,688,686682,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(9,2,'Aretes arabes',1500,2000,67,'3883c933c87eaafc77045d74844f55f415cfb8b3.jpg'),(11,3,'nsajkbkjb',987,1000,100,'5c9c7d6561333d8c84ce36aff6daff451b2e8977.jpg'),(12,1,'Arete 195',100,180,21,'5c9c7d6561333d8c84ce36aff6daff451b2e8977.jpg'),(17,2,'jbgiuhiuh',1000,5000,300,'producto_default.png'),(18,2,'ultimop',256,1280,300,'producto_default.png');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
INSERT INTO `stockUsuario` VALUES (8,1,90),(8,2,80),(8,3,40),(8,4,40),(8,5,60),(8,6,11),(41,4,5),(41,2,10),(41,1,5),(8,9,10),(42,1,5),(42,2,30),(42,7,10),(58,1,10),(58,2,20),(58,3,100),(58,6,5),(8,8,5),(53,1,5),(53,7,5),(53,4,45),(53,8,100),(53,9,23);
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
  PRIMARY KEY (`idusuarios`),
  KEY `fk_categoria_idx` (`categoria_usuario`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_usuario`) REFERENCES `categoria_usuario` (`idcategoria_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (8,'Javier Alexis','Mendoza','Garcia','7828281183','jamg1819@gmail.com','Poza rica ver.',1,'Admin','Admin1234','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',1),(41,'Usuario modificado','hjbjhhjglkjjh','gjhgjkhgj','hghjghjghjhgjh','ghjgjh@jjddbj.com','jhajhhbqhehqoiiefho',1,'Usuario','2f4ee895d45feb94d1e8f21298428c7ed43ccba7','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1),(42,'Otro usuario','Apellido','bkjbsfkjbka','bkjsdbfjkbfjk','bjbjkbjdk@jbjbhjbhfqfq.com','obdib',1,'usuariovendedor','usuariovendedor','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',2),(43,'dsfbnkjabgakjb','bkjabdkjadbk','bkjvbajkbaj','kjbkjabjkf','jkakjfn@nakjnfkaj.com','knlknlkfnq',1,'nkjDBKJBKJBW','e510a38100b1ef62df1887853cb0c079de6bbca9','user-default.jpg',2),(44,'skansfjkabkjbkbhbhj','haljkhajhfjkh','jhlkahfkjahñj','278478478742','jkkjhddkj@sjakh.com','',1,'kJHDHJKH','2f660b7d842813af4dab12d4842725a270d83811','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1),(45,'wFJKBFKBJBlkvjh','jhvjhvjhvjh','vjvljhvhv','jlhvjvjhjlv','jhvjhvjhvhjv@BKJBDJ.nkn','jhbhvjavsljva',0,'kjvhgvkhjvhjv','62a6401377520aebe8548fe3cfe3002f2e635223','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',3),(46,'jkffebkwgbkjjvwhvjhv','hjvj','vjhvjvjhvj','hvjvjhvjhv','jhvjvjhvj@lsnlknsa.nj','lbvlkbjhvbh',1,'hvjhvjvjvjhjhv','5568c8ed3790591ed88c8599e1b9c5e0fffa1784','user-default.jpg',2),(50,'afbqjefvq,e fjq jh','vlhbsflhvnjb','hjvbljavhjv','hjvljvajhfvajl','vljavhjLwdbk@kbjbdkjb.com','jkdvkñjñvfjlivhjqbvqfh',0,'jbdlHVJHVdj','235d42b33e0877ad8099bd397921fda9b52524d9','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',1),(51,'sabjjsvvjhvhjvljv','jhvjvjvjhvjvjlv','jhvjvlhvljhv','jvjlvvljvhjv','hvljvvshjv@jsbjh.co','Actualizacion de direccion',0,'bkbacshcal','6d6917cc7820a529a05e56f81469d7f0c5d7cfbc','../uploads/bb0d62180bd9a4e6d33b4d582970ea379ebc3349.jpg',2),(52,'Daniel','uchiha','eder','7828281183','correoDaniel@gmail.com','Direccion de daniel',1,'daniel1','0716b9029d0818cbabd7c69aa55d01c877982b54','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',2),(53,'UsuarioCorreo','UsuarioCorreo','UsuarioCorreo','782000000','166P0492@itspozarica.edu.mx',',bdnlnflqknefeqnflk',1,'useremail','useremail','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',1),(57,'Alexis','Alarcon','Alm','7821143993','alexisalarconalm@gmail.com','Pachuca Hidalgo',1,'AlexisAlarcon','alexis','../uploads/6d0af66942db779c9967cf842b60ea9d33a18589.jpg',1),(58,'Perla','Peralta','J','7821143993','perlaj@gmail.com','Calle jade Colonia Actopan Poza rica, Ver.',1,'PerlaPeralta','perla26','../uploads/5c6bd5b53379cb3c1baeca29e028dc1c8d869315.jpg',2),(59,'UsuarioNuevoAdmin','UsuarioNuevoAdmin','UsuarioNuevoAdmin','575758786','UsuarioNuevoAdmin@gmail.com','UsuarioNuevoAdmin',1,'UsuarioNuevoAdmin','UsuarioNuevoAdmin','../uploads/0142d04266cef9498d696a8c2f2e32896d1b6d95.jpg',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Joyeria'
--
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
	set @existe=(select count(*) from stockUsuario where idProducto =idproducto_ and cantidadProducto>0
    and idUsuario=idusuario_);
    if(@existe > 0)
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
            
            UPDATE carrito SET cantidadP  = @cantidad+1
			WHERE idusuario=idusuario_ and idproducto=idproducto_;

        else
			/*Se inserta*/
            INSERT INTO carrito(`idusuario`,`idproducto`,`cantidadP`)VALUES
			(idusuario_,idproducto_,1);

        end if;
        
    end if;
    
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
in cat int)
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
		direccion,estado,usuario,contraseña,imgUsuario,categoria_usuario)
		VALUES
		(Null,nom,apeP,apeM,num,email,dir,1,usua,pass,img,cat);
    end if;
	/*INSERT INTO usuarios
	(idusuarios,nombre,apellidoP,apellidoM,numeroCelular,correoElectronico,
	direccion,estado,usuario,contraseña,imgUsuario,categoria_usuario)
	VALUES
	(Null,nom,apeP,apeM,num,email,dir,1,usua,pass,img,cat);*/
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
in cat int)
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
		`categoria_usuario` = cat
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-08  7:04:13
