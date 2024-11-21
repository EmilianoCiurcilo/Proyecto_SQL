CREATE DATABASE  IF NOT EXISTS `demtech` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `demtech`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: demtech
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'procesador'),(2,'motherboard'),(3,'placa de video'),(4,'memoria RAM'),(5,'almacenamiento'),(6,'gabinete'),(7,'monitor'),(8,'mouse'),(9,'teclado'),(10,'auricular'),(11,'mousepad');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Evey','Ammer','eammer0@hubpages.com','2413 Morning Parkway'),(2,'Reinwald','Berks','rberks1@house.gov','0 Cordelia Hill'),(3,'Selina','MacGibbon','smacgibbon2@reverbnation.com','2 Forest Run Road'),(4,'Paul','Ransome','pransome3@samsung.com','39491 Eagle Crest Pass'),(5,'Way','Skidmore','wskidmore4@delicious.com','49762 Shasta Lane'),(6,'Faber','McGillivray','fmcgillivray5@list-manage.com','28309 Fieldstone Pass'),(7,'Ramonda','Antonoyev','rantonoyev6@businessweek.com','9 Mendota Parkway'),(8,'Aili','Hugin','ahugin7@buzzfeed.com','53267 Arizona Hill'),(9,'Issiah','O\'Shields','ioshields8@myspace.com','7 Paget Street'),(10,'Torry','Johantges','tjohantges9@wiley.com','0 Granby Pass'),(11,'Charin','Setford','csetforda@live.com','576 Pierstorff Hill'),(12,'Nealy','Dodridge','ndodridgeb@abc.net.au','5885 Dennis Crossing'),(13,'Bogart','Studd','bstuddc@studiopress.com','168 Warbler Terrace'),(14,'Desiree','Farrar','dfarrard@google.it','89810 Hazelcrest Way'),(15,'Hamil','Hedger','hhedgere@squarespace.com','17 Moose Plaza'),(16,'Retha','Marxsen','rmarxsenf@latimes.com','6 Northfield Alley'),(17,'Charita','Shalloo','cshalloog@archive.org','5 Utah Circle'),(18,'Terrell','Kidner','tkidnerh@usatoday.com','3364 Messerschmidt Place'),(19,'Jilli','Baggs','jbaggsi@unc.edu','3 Elmside Street'),(20,'Delaney','Finessy','dfinessyj@blogspot.com','5 Lunder Crossing'),(21,'Talyah','Corkill','tcorkillk@wiley.com','3313 Forest Dale Drive'),(22,'Raffarty','Placstone','rplacstonel@biglobe.ne.jp','02562 Mosinee Drive'),(23,'Kelci','Konmann','kkonmannm@nydailynews.com','8 Sutteridge Park'),(24,'Leah','Epdell','lepdelln@loc.gov','09 Prairie Rose Parkway'),(25,'Fleming','Perryn','fperryno@addthis.com','44 Reinke Junction'),(26,'Tan','Orys','torysp@google.cn','87882 Park Meadow Parkway'),(27,'Jobi','Eat','jeatq@free.fr','30802 Meadow Ridge Circle'),(28,'Brunhilde','Hatrick','bhatrickr@statcounter.com','7579 Weeping Birch Trail'),(29,'Madison','Harradine','mharradines@google.co.uk','5 Michigan Road'),(30,'Isa','Mucklo','imucklot@fema.gov','16 Bultman Center');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `datos_envios`
--

DROP TABLE IF EXISTS `datos_envios`;
/*!50001 DROP VIEW IF EXISTS `datos_envios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `datos_envios` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `venta_id` int DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `forma_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `venta_id` (`venta_id`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2024-08-10',460000.00,'Mercado Pago'),(2,2,'2024-08-10',NULL,'Mercado Pago'),(3,3,'2024-08-10',920000.00,'Mercado Pago');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_productos`
--

DROP TABLE IF EXISTS `lista_productos`;
/*!50001 DROP VIEW IF EXISTS `lista_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_productos` AS SELECT 
 1 AS `id_producto`,
 1 AS `producto`,
 1 AS `descripcion`,
 1 AS `precio`,
 1 AS `stock`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'AMD'),(2,'INTEL'),(3,'ASUS'),(4,'ASROCK'),(5,'GIGABYTE'),(6,'X RADEON'),(7,'GEIL'),(8,'TEAM'),(9,'PATRIOT VIPER'),(10,'WD'),(11,'ADATA'),(12,'COOLER MASTER'),(13,'CORSAIR'),(14,'SAMSUNG'),(15,'RAZER'),(16,'LOGITECH'),(17,'REDRAGON');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio_compra` int NOT NULL,
  `precio_venta` int GENERATED ALWAYS AS ((`precio_compra` * 1.15)) VIRTUAL,
  `ganancia` int GENERATED ALWAYS AS ((`precio_venta` - `precio_compra`)) VIRTUAL,
  `stock` int NOT NULL,
  `categoria_id` int NOT NULL,
  `marca_id` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `categoria_id` (`categoria_id`),
  KEY `marca_id` (`marca_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio_compra`, `stock`, `categoria_id`, `marca_id`) VALUES (1,'AMD Ryzen 3 4100','Los procesadores AMD son productos de la compaÃ±Ã­a estadounidense Advanced Micro Devices, Inc. (AMD), que se especializa en semiconductores y tecnologÃ­a.',80000,100,1,1),(2,'AMD Ryzen 5 5600','Los procesadores AMD son productos de la compaÃ±Ã­a estadounidense Advanced Micro Devices, Inc. (AMD), que se especializa en semiconductores y tecnologÃ­a.',169000,5,1,1),(3,'AMD Ryzen 7 5700X','Los procesadores AMD son productos de la compaÃ±Ã­a estadounidense Advanced Micro Devices, Inc. (AMD), que se especializa en semiconductores y tecnologÃ­a.',234000,5,1,1),(4,'AMD Ryzen 9 7950X','Los procesadores AMD son productos de la compaÃ±Ã­a estadounidense Advanced Micro Devices, Inc. (AMD), que se especializa en semiconductores y tecnologÃ­a.',705000,5,1,1),(5,'Intel Core i3 12100F','Los procesadores Intel son una lÃ­nea de procesadores fabricados por Intel Corporation que ofrecen un rendimiento potente y eficiente',97000,5,1,2),(6,'Intel Core i5 12400F','Los procesadores Intel son una lÃ­nea de procesadores fabricados por Intel Corporation que ofrecen un rendimiento potente y eficiente',143000,5,1,2),(7,'Intel Core i7 12700KF','Los procesadores Intel son una lÃ­nea de procesadores fabricados por Intel Corporation que ofrecen un rendimiento potente y eficiente',332000,5,1,2),(8,'Intel Core i9 14900K','Los procesadores Intel son una lÃ­nea de procesadores fabricados por Intel Corporation que ofrecen un rendimiento potente y eficiente',669000,5,1,2),(9,'ASUS PRIME A520M-K','La motherboard, tambiÃ©n conocida como placa base o tarjeta madre, es un componente central de una computadora que se encarga de conectar todos los componentes internos del ordenador: Procesador, Discos duros, Memoria RAM, Tarjeta grÃ¡fica, Fuente de alimentaciÃ³n.',75000,10,2,3),(10,'ASUS PRIME B650M-A II','La motherboard, tambiÃ©n conocida como placa base o tarjeta madre, es un componente central de una computadora que se encarga de conectar todos los componentes internos del ordenador: Procesador, Discos duros, Memoria RAM, Tarjeta grÃ¡fica, Fuente de alimentaciÃ³n.',151000,10,2,3),(11,'Asrock B660M','La motherboard, tambiÃ©n conocida como placa base o tarjeta madre, es un componente central de una computadora que se encarga de conectar todos los componentes internos del ordenador: Procesador, Discos duros, Memoria RAM, Tarjeta grÃ¡fica, Fuente de alimentaciÃ³n.',99000,10,2,4),(12,'Gigabyte Z791','La motherboard, tambiÃ©n conocida como placa base o tarjeta madre, es un componente central de una computadora que se encarga de conectar todos los componentes internos del ordenador: Procesador, Discos duros, Memoria RAM, Tarjeta grÃ¡fica, Fuente de alimentaciÃ³n.',252000,10,2,5),(13,'ASUS Dual GeForce RTX 3050 6GB','Las tarjetas grÃ¡ficas Nvidia son dispositivos de alto rendimiento que permiten la representaciÃ³n y el procesamiento de grÃ¡ficos potentes para su uso en ediciÃ³n de video, videojuegos y otras operaciones informÃ¡ticas complejas .',229000,5,3,3),(14,'ASUS Dual GeForce RTX 4060 Ti 8GB','Las tarjetas grÃ¡ficas Nvidia son dispositivos de alto rendimiento que permiten la representaciÃ³n y el procesamiento de grÃ¡ficos potentes para su uso en ediciÃ³n de video, videojuegos y otras operaciones informÃ¡ticas complejas .',559000,5,3,3),(15,'XFX Radeon RX 6650 XT 8GB','Las tarjetas grÃ¡ficas AMD Radeon son productos de Radeon Technologies Group, una divisiÃ³n de AMD',322000,5,3,6),(16,'ASUS Dual Radeon RX 7800 XT 16GB','Las tarjetas grÃ¡ficas AMD Radeon son productos de Radeon Technologies Group, una divisiÃ³n de AMD',697000,5,3,3),(17,'Memoria GeiL DDR4 16GB (2x8GB) 3200MHz','La memoria RAM (memoria de acceso aleatorio) es un hardware que se encuentra en la motherboard de una computadora y que almacena temporalmente los datos que el procesador estÃ¡ utilizando',53000,15,4,7),(18,'Team DDR5 16GB (2x8GB) 5600MHz','La memoria RAM (memoria de acceso aleatorio) es un hardware que se encuentra en la motherboard de una computadora y que almacena temporalmente los datos que el procesador estÃ¡ utilizando',71000,15,4,8),(19,'Patriot Viper DDR4 32GB (2x16GB) 3600Mhz','La memoria RAM (memoria de acceso aleatorio) es un hardware que se encuentra en la motherboard de una computadora y que almacena temporalmente los datos que el procesador estÃ¡ utilizando',95000,15,4,9),(20,'Team DDR5 32GB (2x16GB) 6400MHz','La memoria RAM (memoria de acceso aleatorio) es un hardware que se encuentra en la motherboard de una computadora y que almacena temporalmente los datos que el procesador estÃ¡ utilizando',143000,15,4,8),(21,'SSD M.2 Team 500GB T-Force Z440 Lite 5000MB/s NVMe PCI-E','La memoria SSD, o unidad de estado sÃ³lido (SSD), es un dispositivo de almacenamiento que utiliza memoria flash no volÃ¡til para almacenar y recuperar datos. A diferencia de los discos duros (HDD), las SSD no tienen partes mÃ³viles, como el disco giratorio o los cabezales de lectura y escritura.',60000,15,5,8),(22,'SSD M.2 WD 1TB Green SN350 2400MB/s NVMe PCI-E','La memoria SSD, o unidad de estado sÃ³lido (SSD), es un dispositivo de almacenamiento que utiliza memoria flash no volÃ¡til para almacenar y recuperar datos. A diferencia de los discos duros (HDD), las SSD no tienen partes mÃ³viles, como el disco giratorio o los cabezales de lectura y escritura.',75000,15,5,10),(23,'SSD M.2 ADATA 1TB Legend 960 7400MB/s NVMe PCIe','La memoria SSD, o unidad de estado sÃ³lido (SSD), es un dispositivo de almacenamiento que utiliza memoria flash no volÃ¡til para almacenar y recuperar datos. A diferencia de los discos duros (HDD), las SSD no tienen partes mÃ³viles, como el disco giratorio o los cabezales de lectura y escritura.',121000,15,5,11),(24,'Cooler Master Masterbox NR200P White Mini ITX','es la pieza que protege los componentes internos de la computadora. Entre sus funciones se encuentran: Proteger los componentes internos de la computadora, Dar soporte a las piezas de la computadora, Ofrecer ventilaciÃ³n, Dar estÃ©tica a la computadora.',93000,10,6,12),(25,'Corsair 4000D TG Airflow White ATX','es la pieza que protege los componentes internos de la computadora. Entre sus funciones se encuentran: Proteger los componentes internos de la computadora, Dar soporte a las piezas de la computadora, Ofrecer ventilaciÃ³n, Dar estÃ©tica a la computadora.',126000,10,6,13),(26,'Corsair ICUE LINK 2500X TG White Dual Chamber M-ATX','es la pieza que protege los componentes internos de la computadora. Entre sus funciones se encuentran: Proteger los componentes internos de la computadora, Dar soporte a las piezas de la computadora, Ofrecer ventilaciÃ³n, Dar estÃ©tica a la computadora.',238000,10,6,13),(27,'ASUS 24\" VG248QG Full HD 165Hz 0.5ms TN G-Sync FreeSync\"','Un monitor es un dispositivo que muestra informaciÃ³n de una computadora, como imÃ¡genes y textos, en forma visual. Es un dispositivo de salida que se conecta a la computadora a travÃ©s de una tarjeta grÃ¡fica.',250000,2,7,3),(28,'Samsung Odyssey G4 25\" 240Hz IPS Full HD GSync FreeSync\"','Un monitor es un dispositivo que muestra informaciÃ³n de una computadora, como imÃ¡genes y textos, en forma visual. Es un dispositivo de salida que se conecta a la computadora a travÃ©s de una tarjeta grÃ¡fica.',515000,2,7,14),(29,'Razer DeathAdder Essential Ergonomic Black','Un mouse o ratÃ³n es un dispositivo de entrada para computadoras que se usa para manipular objetos en la pantalla y seleccionar acciones',30000,5,8,15),(30,'Logitech G305 Lightspeed Wireless White','Un mouse o ratÃ³n es un dispositivo de entrada para computadoras que se usa para manipular objetos en la pantalla y seleccionar acciones',39000,5,8,16),(31,'ASUS TUF P307 M4 Air Black USB','Un mouse o ratÃ³n es un dispositivo de entrada para computadoras que se usa para manipular objetos en la pantalla y seleccionar acciones',54000,5,8,3),(32,'Razer Viper V3 HyperSpeed Wireless Esports Black 280Hs','Un mouse o ratÃ³n es un dispositivo de entrada para computadoras que se usa para manipular objetos en la pantalla y seleccionar acciones',91000,5,8,15),(33,'Redragon Fizz Pro K616-RGB 60% White/Pink Wireless','Un teclado es un dispositivo de entrada que se usa para introducir caracteres y funciones en un sistema informÃ¡tico. Los teclados tienen entre 99 y 108 teclas, y se dividen en cuatro bloques: alfanumÃ©rico, numÃ©rico, especial y de funciones.',52000,5,9,16),(34,'Logitech G413 SE Retroluminado Blanco Switch Brown','Un teclado es un dispositivo de entrada que se usa para introducir caracteres y funciones en un sistema informÃ¡tico. Los teclados tienen entre 99 y 108 teclas, y se dividen en cuatro bloques: alfanumÃ©rico, numÃ©rico, especial y de funciones.',79000,5,9,16),(35,'ASUS ROG M602 Falchion Ace RGB White Switch Brown','Un teclado es un dispositivo de entrada que se usa para introducir caracteres y funciones en un sistema informÃ¡tico. Los teclados tienen entre 99 y 108 teclas, y se dividen en cuatro bloques: alfanumÃ©rico, numÃ©rico, especial y de funciones.',91000,5,9,3),(36,'Razer BlackWidow V4 X RGB Switch Yellow Linear','Un teclado es un dispositivo de entrada que se usa para introducir caracteres y funciones en un sistema informÃ¡tico. Los teclados tienen entre 99 y 108 teclas, y se dividen en cuatro bloques: alfanumÃ©rico, numÃ©rico, especial y de funciones.',136000,5,9,15),(37,'Logitech Aurora G735 Wireless White RGB','Los headsets para gaming son una herramienta esencial para los jugadores en lÃ­nea que buscan mejorar su experiencia de juego. Estos dispositivos estÃ¡n diseÃ±ados para ofrecer una calidad de sonido superior, comodidad y otras caracterÃ­sticas Ãºtiles.',247000,5,10,16),(38,'Razer BLACKSHARK V2 PRO Wireless USB-C White','Los headsets para gaming son una herramienta esencial para los jugadores en lÃ­nea que buscan mejorar su experiencia de juego. Estos dispositivos estÃ¡n diseÃ±ados para ofrecer una calidad de sonido superior, comodidad y otras caracterÃ­sticas Ãºtiles.',333000,5,10,15),(39,'Razer Gigantus V2 XXL','las alfombrillas para ratÃ³n son un accesorio esencial para cualquier persona que utilice un ordenador de manera regular. Ofrecen una superficie lisa y consistente para el ratÃ³n, protegen la mesa y pueden aliviar la fatiga y la tensiÃ³n en la muÃ±eca y el brazo.',44000,5,11,15),(40,'ASUS ROG NC08 Scabbard II','las alfombrillas para ratÃ³n son un accesorio esencial para cualquier persona que utilice un ordenador de manera regular. Ofrecen una superficie lisa y consistente para el ratÃ³n, protegen la mesa y pueden aliviar la fatiga y la tensiÃ³n en la muÃ±eca y el brazo.',73000,5,11,3),(41,'ASUS Dual GeForce RTX 4090 16GB','Las tarjetas grÃ¡ficas Nvidia son dispositivos de alto rendimiento que permiten la representaciÃ³n y el procesamiento de grÃ¡ficos potentes para su uso en ediciÃ³n de video, videojuegos y otras operaciones informÃ¡ticas complejas.',800000,10,3,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productos_bajo_stock`
--

DROP TABLE IF EXISTS `productos_bajo_stock`;
/*!50001 DROP VIEW IF EXISTS `productos_bajo_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_bajo_stock` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre_categoria`,
 1 AS `nombre`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `marca_id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` text,
  PRIMARY KEY (`id_proveedor`),
  KEY `marca_id` (`marca_id`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,1,'Carlos','AMD','5772145831','lpallasch0@vistaprint.com','560 Norway Maple Crossing'),(2,2,'Juan','INTEL','1057864407','jcamplejohn1@webmd.com','449 Pearson Point'),(3,3,'Santiago','ASUS','1427730599','amccarrell2@bloglovin.com','3 Arizona Plaza'),(4,4,'Federico','ASROCK','8145280221','kfantin3@google.com','423 Hoepker Drive'),(5,5,'Pablo','GIGABYTE','7385028762','afonte4@hibu.com','9567 Mifflin Hill'),(6,6,'Mauro','X RADEON','4222948562','ahalliday5@ow.ly','5593 Mayfield Lane'),(7,7,'Martin','GEIL','3896311263','golivera6@pcworld.com','80599 Dapin Parkway'),(8,8,'Santino','TEAM','1428011566','agladtbach7@quantcast.com','44 Independence Way'),(9,9,'Joel','PATRIOT VIPER','3122040351','eklebes8@cmu.edu','8 Mallory Hill'),(10,10,'Agustin','WD','5498668564','anecolds9@sun.com','5 Maywood Circle'),(11,11,'Leonel','ADATA','6362343399','ariplya@npr.org','23812 Oakridge Alley'),(12,12,'Rafael','COOLER MASTER','4842398187','tbrumhamb@paginegialle.it','65892 Monterey Alley'),(13,13,'Emiliano','CORSAIR','4604124466','jpiechnikc@cornell.edu','227 Green Ridge Junction'),(14,14,'Nahuel','SAMSUNG','4984285657','wlefeaverd@kickstarter.com','94 Maple Wood Trail'),(15,15,'Cristian','RAZER','7746396256','dmacdonalde@tripadvisor.com','952 Ridgeway Park'),(16,16,'Gonzalo','LOGITECH','5724981376','vrolyf@woothemes.com','0 Portage Plaza'),(17,17,'Angel','REDRAGON','3774664823','hsalvadoreg@pcworld.com','65 Armistice Pass');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `proveedor_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `marca_id` int NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `producto_id` (`producto_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,100,'2024-05-19',1),(2,1,41,10,'2024-05-19',1);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_stock_ingreso` AFTER INSERT ON `stock` FOR EACH ROW BEGIN
    UPDATE productos
    SET stock = stock + NEW.cantidad
    WHERE id_producto = NEW.producto_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `total_ventas_por_cliente`
--

DROP TABLE IF EXISTS `total_ventas_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `total_ventas_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_ventas_por_cliente` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `monto_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `total` int DEFAULT '0',
  PRIMARY KEY (`id_venta`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,29,NULL),(2,29,460000),(3,4,NULL),(4,4,920000);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_productos`
--

DROP TABLE IF EXISTS `ventas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_productos` (
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `ventas_productos_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  CONSTRAINT `ventas_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_productos`
--

LOCK TABLES `ventas_productos` WRITE;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
INSERT INTO `ventas_productos` VALUES (1,1,5),(3,41,1);
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_stock_venta` AFTER INSERT ON `ventas_productos` FOR EACH ROW BEGIN
    UPDATE productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'demtech'
--

--
-- Dumping routines for database 'demtech'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_total_gastado_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_total_gastado_cliente`(cliente_id INT) RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
    DECLARE total_gastado DECIMAL(10,2);
    SELECT SUM(vp.cantidad * p.precio_venta) INTO total_gastado
    FROM ventas v
    INNER JOIN ventas_productos vp ON v.id_venta = vp.id_venta
    INNER JOIN productos p ON vp.id_producto = p.id_producto
    WHERE v.cliente_id = cliente_id;

    RETURN total_gastado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calcular_total_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_total_venta`(id_venta INT) RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(vp.cantidad * p.precio_venta) INTO total
    FROM ventas_productos vp
    INNER JOIN productos p ON vp.id_producto = p.id_producto
    WHERE vp.id_venta = id_venta;
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_factura`(venta_id INT, fecha_emision DATE, forma_pago VARCHAR(50))
BEGIN
    DECLARE total_venta DECIMAL(10,2);
    SET total_venta = calcular_total_venta(venta_id);
    INSERT INTO facturas (venta_id, fecha_emision, total, forma_pago)
    VALUES (venta_id, fecha_emision, total_venta, forma_pago);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_producto`(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio_compra INT,
    IN p_stock INT,
    IN p_categoria_id INT,
    IN p_marca_id INT
)
BEGIN
    INSERT INTO productos (nombre, descripcion, precio_compra, stock, categoria_id, marca_id)
    VALUES (p_nombre, p_descripcion, p_precio_compra, p_stock, p_categoria_id, p_marca_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_stock`(proveedor_id INT, producto_id INT, cantidad INT, fecha_ingreso DATE, marca_id INT)
BEGIN
    INSERT INTO stock (proveedor_id, producto_id, cantidad, fecha_ingreso, marca_id)
    VALUES (proveedor_id, producto_id, cantidad, fecha_ingreso, marca_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_venta`(cliente_id INT, total DECIMAL(10,2))
BEGIN
	DECLARE suma_total DECIMAL(10,2);
    SET suma_total = calcular_total_gastado_cliente(cliente_id);
    INSERT INTO ventas (cliente_id, total) 
    VALUES (cliente_id, suma_total);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_venta_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_venta_producto`(
    IN vp_id_venta INT,
    IN vp_id_producto INT,
    IN vp_cantidad INT
)
BEGIN
    INSERT INTO ventas_productos (id_venta, id_producto, cantidad)
    VALUES (vp_id_venta, vp_id_producto, vp_cantidad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `datos_envios`
--

/*!50001 DROP VIEW IF EXISTS `datos_envios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datos_envios` AS select `clientes`.`nombre` AS `nombre`,`clientes`.`apellido` AS `apellido`,`clientes`.`direccion` AS `direccion` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_productos`
--

/*!50001 DROP VIEW IF EXISTS `lista_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_productos` AS select `p`.`id_producto` AS `id_producto`,`p`.`nombre` AS `producto`,`p`.`descripcion` AS `descripcion`,`p`.`precio_venta` AS `precio`,`p`.`stock` AS `stock`,`c`.`nombre_categoria` AS `categoria` from (`productos` `p` join `categorias` `c` on((`p`.`categoria_id` = `c`.`id_categoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_bajo_stock`
--

/*!50001 DROP VIEW IF EXISTS `productos_bajo_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_bajo_stock` AS select `p`.`id_producto` AS `id_producto`,`c`.`nombre_categoria` AS `nombre_categoria`,`p`.`nombre` AS `nombre`,`p`.`stock` AS `stock` from (`productos` `p` join `categorias` `c` on((`p`.`categoria_id` = `c`.`id_categoria`))) where (`p`.`stock` < 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_ventas_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `total_ventas_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_ventas_por_cliente` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,sum((`vp`.`cantidad` * `p`.`precio_venta`)) AS `monto_total` from (((`clientes` `c` join `ventas` `v` on((`c`.`id_cliente` = `v`.`cliente_id`))) join `ventas_productos` `vp` on((`v`.`id_venta` = `vp`.`id_venta`))) join `productos` `p` on((`vp`.`id_producto` = `p`.`id_producto`))) group by `c`.`id_cliente`,`c`.`nombre`,`c`.`apellido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 19:24:55
