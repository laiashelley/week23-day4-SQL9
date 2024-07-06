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
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcast` (
  `id_podcast` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_podcast` varchar(45) NOT NULL,
  `tema_podcast` varchar(45) NOT NULL,
  `fecha_carga` datetime NOT NULL DEFAULT current_timestamp(),
  `duracion_podcast` time NOT NULL,
  PRIMARY KEY (`id_podcast`),
  UNIQUE KEY `nombre_podcast_UNIQUE` (`nombre_podcast`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
INSERT INTO `podcast` VALUES (1,'La Cocina','Comida','2024-06-19 20:15:39','01:40:00'),(2,'La Cochera','Mecánica','2024-06-19 20:15:39','00:35:51'),(3,'Chistes de Barrio','Humor','2024-06-19 20:15:39','00:59:59'),(4,'El Mundo de la Ciencia','Ciencia','2024-06-19 20:44:58','00:45:30'),(5,'Historias de Terror','Terror','2024-06-19 20:44:58','01:15:00'),(6,'Comedia para Todos','Humor','2024-06-19 20:44:58','00:50:00'),(7,'Noticias del Día','Noticias','2024-06-19 20:44:58','00:30:00'),(8,'Tecnología Hoy','Tecnología','2024-06-19 20:44:58','01:00:00'),(9,'Aventuras Fantásticas','Fantasía','2024-06-19 20:44:58','01:20:00'),(10,'Cultura y Sociedad','Cultura','2024-06-19 20:44:58','00:40:00'),(11,'Deportes al Día','Deportes','2024-06-19 20:44:58','00:55:00'),(12,'Misterios del Universo','Misterio','2024-06-19 20:44:58','01:10:00'),(13,'Charlas de Filosofía','Filosofía','2024-06-19 20:44:58','01:05:00');
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 20:31:30
