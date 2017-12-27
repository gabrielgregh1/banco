CREATE DATABASE  IF NOT EXISTS `faculdade` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `faculdade`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: faculdade
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idcurso` (`idcurso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Gabriel Greghi',1),(2,'Luis Fernando',1),(3,'Rodrigo Quero',1),(4,'Vinicios Zoquete',1),(5,'Rogerio Silva',1),(6,'Flavio Rodrigo',2),(7,'Carlos Algusto',2),(8,'Rogerio Nogueira',2),(9,'Rafael Castro',2),(10,'Eduardo Campos',2),(11,'Carlos Flavinho',3),(12,'Henrique Zamires',3),(13,'Almeida Camilo',3),(14,'Fabio Dantes',3),(15,'Uaizique Figueiredo',3),(16,'Aistem Brasileiro',4),(17,'Mario Aneis',4),(18,'Cuca Beludo',4),(19,'Fabao Criolo',4),(20,'Maria Carmeles',4),(21,'Maria Matos',5),(22,'Carlos Moita',5),(23,'Ana Raio',5),(24,'Ze Trovao',5),(25,'Maria do Bairro',5);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia de Software'),(2,'Engenharia da Computacao'),(3,'Engenharia Civil'),(4,'Engenharia Eletrica'),(5,'Farmacia');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leciona`
--

DROP TABLE IF EXISTS `leciona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leciona` (
  `id` int(11) NOT NULL,
  `idprofessor` int(11) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idprofessor` (`idprofessor`),
  KEY `idcurso` (`idcurso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leciona`
--

LOCK TABLES `leciona` WRITE;
/*!40000 ALTER TABLE `leciona` DISABLE KEYS */;
INSERT INTO `leciona` VALUES (1,8,1),(2,9,1),(3,10,1),(4,11,1),(5,5,2),(6,6,2),(7,10,2),(8,9,2),(9,5,3),(10,6,3),(11,7,3),(12,9,3),(13,2,4),(14,3,4),(15,5,4),(16,6,4),(17,1,5),(18,4,5),(19,3,5),(20,2,5);
/*!40000 ALTER TABLE `leciona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `aula` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Rosana Grilone','Redacao'),(2,'Rogerio Tubarão','Fisica'),(3,'Cleyton Boch','Matematica'),(4,'Mateus','Biologia'),(5,'Carlos Eduardo','Calculo I'),(6,'Vagner','Calculo II'),(7,'Marcos Alvarenga','Calculo III'),(8,'Milene Arantes','Estrutura de Dados I'),(9,'Claudete','Qualidade de Software'),(10,'Thiago','Interface Homem-Computador'),(11,'Luciana Abdo','Programação Web');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 16:21:33
