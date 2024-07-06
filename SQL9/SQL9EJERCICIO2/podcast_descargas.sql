CREATE DATABASE  IF NOT EXISTS `podcast` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `podcast`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: podcast
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `descargas`
--

DROP TABLE IF EXISTS `descargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descargas` (
  `id_descargas` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_descarga` datetime NOT NULL DEFAULT current_timestamp(),
  `usuario_id_usuario` int(11) NOT NULL,
  `podcast_id_podcast` int(11) NOT NULL,
  PRIMARY KEY (`id_descargas`),
  KEY `fk_descargas_usuario_idx` (`usuario_id_usuario`),
  KEY `fk_descargas_podcast1_idx` (`podcast_id_podcast`),
  CONSTRAINT `fk_descargas_podcast1` FOREIGN KEY (`podcast_id_podcast`) REFERENCES `podcast` (`id_podcast`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_descargas_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descargas`
--

LOCK TABLES `descargas` WRITE;
/*!40000 ALTER TABLE `descargas` DISABLE KEYS */;
INSERT INTO `descargas` VALUES (1,'2024-06-19 20:19:19',1,3),(2,'2024-06-19 20:19:19',2,2),(3,'2024-06-19 20:19:19',3,1),(4,'2024-06-19 20:32:59',2,1),(5,'2024-06-19 20:47:42',1,1),(6,'2024-06-19 20:47:42',2,2),(7,'2024-06-19 20:47:42',3,3),(8,'2024-06-19 20:47:42',4,4),(9,'2024-06-19 20:47:42',5,5),(10,'2024-06-19 20:47:42',6,6),(11,'2024-06-19 20:47:42',7,7),(12,'2024-06-19 20:47:42',8,8),(13,'2024-06-19 20:47:42',9,9),(14,'2024-06-19 20:47:42',10,10),(15,'2024-06-19 20:47:42',2,1),(16,'2024-06-19 20:47:42',3,2),(17,'2024-06-19 20:47:42',4,3),(18,'2024-06-19 20:47:42',5,4),(19,'2024-06-19 20:47:42',6,5),(20,'2024-06-19 20:47:42',7,6),(21,'2024-06-19 20:47:42',8,7),(22,'2024-06-19 20:47:42',9,8),(23,'2024-06-19 20:47:42',10,9),(24,'2024-06-19 20:47:42',1,10);
/*!40000 ALTER TABLE `descargas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 20:31:29
