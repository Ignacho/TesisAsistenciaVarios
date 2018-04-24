-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: us-cdbr-iron-east-05.cleardb.net    Database: heroku_dc62854be722bdd
-- ------------------------------------------------------
-- Server version	5.6.36-log

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALUMNOS_UK` (`nombre`,`apellido`,`telefono`,`matricula`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Ignacio','Barberis','226264054','Ignachobarberis@gmail.com','843888','2017-04-15','2017-06-07',NULL),(2,'Gustavo','Medina','2236844258','totemdq08@gmail.com','697165','2017-04-15',NULL,NULL),(3,'Federico','Reale','2235756979','losguindos@gmail.com','860564','2017-04-15',NULL,NULL),(4,'Rocio1','Balmaceda','22368444444','rociobalmaceda@hotmail.com','923080','2017-04-15','2017-05-21',NULL),(5,'Juan Ignacio','Barreca','2235555555','juani_383@hotmail.com','881241','2017-04-15',NULL,NULL),(6,'Jorge Agustin','Campora','2235555555','agustinc_86@hotmail.com','808564','2017-04-15',NULL,NULL),(7,'Carlos Tomas','Chiesa','2235555555','carloschiesa780@hotmail.com','842999','2017-04-15',NULL,NULL),(8,'Garbin','Marianela','2235555555','marianelagarbin@hotmail.com','921103','2017-04-15',NULL,NULL),(9,'Guadalupe','Garcia','2235555555','guady_pr0@hotmail.com','902092','2017-04-15',NULL,NULL),(10,'Eduardo Guido','Garcia Balado','2235555555','guidobalado@hotmail.com','900953','2017-04-15',NULL,NULL),(11,'Guido Exequiel','Materia','2235555555','guidomateria@gmail.com','882027','2017-04-15',NULL,NULL),(12,'Maria Manuela','Perez Marino','2235555555','mperezmarino@hotmail.com.ar','880032','2017-04-15',NULL,NULL),(14,'Nacho','Perez','343434343','f@f.com','876567','2017-04-15',NULL,NULL),(16,'Test','tedt','2432534532','sfQ@sfQ.com','860564','2017-05-27','2017-05-27',NULL),(17,NULL,NULL,NULL,'malvarez@asistencia.com',NULL,'2017-05-28','2017-05-28',NULL),(31,'Ignacio','Barberis','2262',NULL,NULL,NULL,NULL,NULL),(41,'Ignacio','Barberis','alumnos',NULL,NULL,NULL,NULL,NULL),(51,'Ignacio','Barberis','alumnos',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignados`
--

DROP TABLE IF EXISTS `asignados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignados` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_dictado` int(4) NOT NULL,
  `id_docente` int(4) NOT NULL,
  `desc_cargo` varchar(25) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ASIGNADOS_UK` (`id_dictado`,`id_docente`),
  KEY `FKAsignados563748` (`id_dictado`),
  KEY `FKAsignados563749` (`id_docente`),
  CONSTRAINT `FKAsignados563748` FOREIGN KEY (`id_dictado`) REFERENCES `dictados` (`id`),
  CONSTRAINT `FKAsignados563749` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignados`
--

LOCK TABLES `asignados` WRITE;
/*!40000 ALTER TABLE `asignados` DISABLE KEYS */;
INSERT INTO `asignados` VALUES (1,1,1,'titular','2017-06-17',NULL,NULL),(3,12,1,NULL,'2017-06-17',NULL,NULL),(4,22,1,NULL,'2017-06-17',NULL,NULL),(5,32,1,NULL,'2017-06-17',NULL,NULL),(6,42,1,NULL,'2017-06-17',NULL,NULL),(7,52,1,NULL,'2017-06-17',NULL,NULL),(8,62,1,NULL,'2017-06-17',NULL,NULL),(9,72,1,NULL,'2017-06-17',NULL,NULL),(10,82,1,NULL,'2017-06-17',NULL,NULL),(11,3,1,NULL,'2017-06-17',NULL,NULL),(12,2,1,'Ayudante','2017-06-17','2017-06-17',NULL),(13,11,1,NULL,NULL,NULL,NULL),(14,11,2,NULL,NULL,NULL,NULL),(15,13,1,NULL,NULL,NULL,NULL),(17,8,1,NULL,NULL,NULL,NULL),(18,4,1,NULL,NULL,NULL,NULL),(19,6,2,NULL,NULL,NULL,NULL),(20,10,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `asignados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias_cursos`
--

DROP TABLE IF EXISTS `asistencias_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistencias_cursos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_dictado` int(4) NOT NULL,
  `id_docente` int(4) NOT NULL,
  `estado_curso` varchar(1) NOT NULL COMMENT 'G=Guardado, C=Confirmado',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ACS_DTE_FK` (`id_docente`),
  KEY `ACS_DDO_FK` (`id_dictado`),
  CONSTRAINT `ACS_DDO_FK` FOREIGN KEY (`id_dictado`) REFERENCES `dictados` (`id`),
  CONSTRAINT `ACS_DTE_FK` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias_cursos`
--

LOCK TABLES `asistencias_cursos` WRITE;
/*!40000 ALTER TABLE `asistencias_cursos` DISABLE KEYS */;
INSERT INTO `asistencias_cursos` VALUES (1,13,1,'C','2017-10-19','2017-10-19',NULL),(20,52,1,'C','2017-11-15','2018-03-13',NULL),(21,62,1,'C','2017-11-22','2017-11-22',NULL),(31,52,1,'C','2018-02-10','2018-03-13',NULL),(41,52,1,'C','2018-02-11','2018-03-13',NULL),(51,3,1,'C','2018-02-12','2018-02-12',NULL),(61,52,1,'C','2018-02-10','2018-03-13',NULL),(71,52,1,'C','2018-02-17','2018-03-13',NULL),(81,22,1,'C','2018-03-09','2018-03-12',NULL),(91,22,1,'C','2018-03-12','2018-03-17',NULL),(101,52,1,'C','2018-03-13','2018-03-17',NULL),(111,12,1,'C','2018-03-17','2018-03-18',NULL),(121,4,1,'C','2018-03-24','2018-03-24',NULL);
/*!40000 ALTER TABLE `asistencias_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistentes`
--

DROP TABLE IF EXISTS `asistentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistentes` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(6) NOT NULL,
  `id_dictado` int(4) NOT NULL,
  `cod_asist` varchar(1) DEFAULT NULL COMMENT '0=Asistio, 1=No asistio, 2=Media falta',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAsistentes563755` (`id_alumno`),
  KEY `FKAsistentes563777` (`id_dictado`),
  CONSTRAINT `FKAsistentes563755` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`),
  CONSTRAINT `FKAsistentes563777` FOREIGN KEY (`id_dictado`) REFERENCES `dictados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes`
--

LOCK TABLES `asistentes` WRITE;
/*!40000 ALTER TABLE `asistentes` DISABLE KEYS */;
INSERT INTO `asistentes` VALUES (1,4,3,'0','2017-10-19','2017-10-19',NULL),(11,1,3,'0','2017-10-19','2017-10-19',NULL),(21,2,3,'0','2017-10-19','2017-10-19',NULL),(31,3,3,'0','2017-10-19','2017-10-19',NULL),(41,2,32,'0','2017-11-15','2017-11-15',NULL),(51,3,32,'1','2017-11-15','2017-11-15',NULL),(61,2,32,'0','2017-11-22','2017-11-22',NULL),(71,3,32,'1','2017-11-22','2017-11-22',NULL),(81,9,52,'0','2018-02-01','2018-02-01',NULL),(91,12,52,'0','2018-02-01','2018-02-01',NULL),(101,9,52,'0','2018-02-11','2018-02-11',NULL),(111,12,52,'0','2018-02-11','2018-02-11',NULL),(121,4,3,'2','2018-02-12','2018-02-12',NULL),(131,1,3,'0','2018-02-12','2018-02-12',NULL),(141,2,3,'0','2018-02-12','2018-02-12',NULL),(151,3,3,'0','2018-02-12','2018-02-12',NULL),(161,9,52,'2','2018-02-10','2018-02-17',NULL),(171,12,52,'2','2018-02-10','2018-02-17',NULL),(181,9,52,'1','2018-02-17','2018-02-17',NULL),(191,12,52,'1','2018-02-17','2018-02-17',NULL),(201,1,22,'0','2018-03-09','2018-03-09',NULL),(211,2,22,'0','2018-03-09','2018-03-09',NULL),(221,3,22,'0','2018-03-09','2018-03-09',NULL),(231,1,22,'2','2018-03-12','2018-03-12',NULL),(241,2,22,'0','2018-03-12','2018-03-12',NULL),(251,3,22,'0','2018-03-12','2018-03-12',NULL),(261,9,52,'0','2018-03-13','2018-03-13',NULL),(271,12,52,'0','2018-03-13','2018-03-13',NULL),(281,11,12,'0','2018-03-17','2018-03-17',NULL),(291,3,12,'0','2018-03-17','2018-03-17',NULL),(301,1,4,'1','2018-03-24','2018-03-24',NULL),(311,2,4,'1','2018-03-24','2018-03-24',NULL);
/*!40000 ALTER TABLE `asistentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `desc_carr` varchar(100) DEFAULT NULL,
  `plan` varchar(4) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CARRERAS_UK` (`desc_carr`,`plan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'Licenciatura en Sistemas','2017','2017-06-17','2017-06-17',NULL),(3,'Ingeniería en Sistemas','2017','2017-06-17','2017-06-17',NULL);
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictados`
--

DROP TABLE IF EXISTS `dictados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictados` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_materia` int(4) NOT NULL,
  `cuat` smallint(5) NOT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `dia_cursada` varchar(9) DEFAULT NULL,
  `alt_hor` varchar(2) DEFAULT NULL,
  `cant_insc_act` smallint(5) DEFAULT NULL,
  `cant_clases` smallint(5) DEFAULT NULL,
  `cant_faltas_max` smallint(5) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DICTADOS_UK` (`id_materia`,`ano`,`dia_cursada`,`alt_hor`),
  KEY `DDO_MRA_FK` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictados`
--

LOCK TABLES `dictados` WRITE;
/*!40000 ALTER TABLE `dictados` DISABLE KEYS */;
INSERT INTO `dictados` VALUES (1,22,2,'2018','lunes','AM',5,10,4,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(2,3,2,'2018','lunes','PM',12,24,1,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(3,42,1,'2018','lunes','PM',5,17,2,'2016-02-01','2018-01-24','2017-06-17',NULL,NULL),(4,2,1,'2018','sabado','AM',12,24,1,'2018-03-05','2018-06-24','2017-06-17',NULL,NULL),(6,3,1,'2018','miercoles','PM',8,16,2,'2018-03-05','2018-06-30',NULL,NULL,NULL),(7,3,1,'2018','domingo','PM',8,16,2,'2018-03-05','2018-06-30',NULL,NULL,NULL),(8,3,1,'2018','martes','AM',8,16,2,'2018-03-19','2018-08-23',NULL,NULL,NULL),(10,2,1,'2018','sabado','PM',14,24,3,'2018-03-05','2018-06-24','2017-08-01',NULL,NULL),(11,2,1,'2018','martes','PM',14,24,3,'2018-03-05','2018-06-24','2017-08-01',NULL,NULL),(12,12,2,'2018','sabado','PM',12,24,5,'2018-03-05','2019-01-24','2017-06-17',NULL,NULL),(13,72,1,'2018','miercoles','PM',10,20,1,'2017-08-15','2018-01-24','2017-08-01',NULL,NULL),(14,82,2,'2018','miercoles','AM',12,22,1,'2017-08-15','2019-01-24','2017-08-01',NULL,NULL),(22,22,1,'2018','martes','PM',12,24,5,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(32,2,1,'2018','domingo','AM',12,24,1,'2018-03-05','2018-06-24','2017-06-17',NULL,NULL),(42,42,1,'2018','viernes','AM',12,24,5,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(52,52,1,'2018','martes','AM',12,24,2,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(62,62,2,'2018','miercoles','PM',12,24,5,'2015-08-01','2019-01-24','2017-06-17',NULL,NULL),(72,72,2,'2018','viernes','PM',12,24,5,'2015-08-01','2018-01-24','2017-06-17',NULL,NULL),(82,82,1,'2018','martes','AM',12,24,5,'2015-08-01','2018-01-24','2017-06-17',NULL,NULL);
/*!40000 ALTER TABLE `dictados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docentes` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DOCENTES_UK` (`nombre`,`apellido`),
  KEY `DOC_USU_FK` (`id_usuario`),
  CONSTRAINT `DOC_USU_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,2,'Marcela','Alvarez','0223-5123456','2017-06-17',NULL,NULL),(2,22,'Emiliano','Ricci','0223-5122222','2017-06-17',NULL,NULL),(3,23,'Maria Rosa','Del Barco','0223-495958','2017-06-17',NULL,NULL),(4,24,'Roberto','Celentenario','0223666999','2017-06-17',NULL,NULL);
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscriptos`
--

DROP TABLE IF EXISTS `inscriptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscriptos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_alumno` int(6) NOT NULL,
  `id_dictado` int(4) NOT NULL,
  `cant_faltas_act` float DEFAULT NULL,
  `libre` varchar(1) DEFAULT 'F',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `INSCRIPTOS_UK` (`id_alumno`,`id_dictado`),
  KEY `FKInscriptos563746` (`id_alumno`),
  KEY `FKInscriptos563747` (`id_dictado`),
  CONSTRAINT `FKInscriptos563746` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`),
  CONSTRAINT `FKInscriptos563747` FOREIGN KEY (`id_dictado`) REFERENCES `dictados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscriptos`
--

LOCK TABLES `inscriptos` WRITE;
/*!40000 ALTER TABLE `inscriptos` DISABLE KEYS */;
INSERT INTO `inscriptos` VALUES (1,1,3,0,'F',NULL,'2017-06-17',NULL),(2,2,3,1.5,'F',NULL,'2017-10-03',NULL),(3,3,3,2,'F',NULL,'2017-09-05',NULL),(5,4,3,2.5,'T',NULL,'2018-02-12',NULL),(8,5,1,0.5,'F',NULL,'2017-09-25',NULL),(10,7,1,0,'F',NULL,NULL,NULL),(11,1,1,3,'T',NULL,'2017-10-08',NULL),(12,9,2,3,'T',NULL,'2017-10-08',NULL),(52,10,2,3,'T',NULL,'2017-10-08',NULL),(62,11,12,1,'F',NULL,'2017-10-03',NULL),(72,3,12,2,'F',NULL,'2017-10-03',NULL),(122,1,22,2.5,'F',NULL,'2018-03-12',NULL),(132,2,22,1,'F',NULL,'2017-08-28',NULL),(142,3,22,1,'F',NULL,'2017-08-28',NULL),(150,1,4,1,'F',NULL,'2018-03-24',NULL),(151,2,4,1,'F',NULL,'2018-03-24',NULL),(153,1,32,NULL,'F',NULL,NULL,NULL),(192,2,32,0,'F',NULL,'2017-11-29',NULL),(202,3,32,2,'T',NULL,'2017-11-29',NULL),(242,8,22,0,'T',NULL,NULL,NULL),(252,9,42,0,'F',NULL,NULL,NULL),(262,10,42,0,'F',NULL,NULL,NULL),(272,11,42,0,'F',NULL,NULL,NULL),(282,12,42,0.5,'F',NULL,'2017-10-13',NULL),(322,8,52,3,'T',NULL,NULL,NULL),(332,9,52,1.5,'F',NULL,'2018-02-17',NULL),(342,12,52,1.5,'F',NULL,'2018-02-17',NULL),(352,2,62,0,'F',NULL,NULL,NULL),(362,4,62,0,'F',NULL,NULL,NULL),(372,6,62,0,'F',NULL,NULL,NULL),(382,8,62,0,'F',NULL,NULL,NULL),(392,10,62,0,'F',NULL,NULL,NULL),(402,12,62,0,'F',NULL,NULL,NULL),(412,1,72,0,'F',NULL,NULL,NULL),(422,2,72,0,'F',NULL,NULL,NULL),(432,10,72,0,'F',NULL,NULL,NULL),(442,11,13,0,'F',NULL,NULL,NULL),(452,12,14,0,'F',NULL,NULL,NULL);
/*!40000 ALTER TABLE `inscriptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(3) NOT NULL,
  `desc_mat` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MATERIAS_UK` (`desc_mat`),
  KEY `FKMateria12125` (`id_carrera`),
  CONSTRAINT `FKMateria12125` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,1,'Tesis','2017-06-17',NULL,NULL),(2,1,'Ingeniería de Software II','2017-06-17',NULL,NULL),(3,1,'Ingeniería de Software I','2017-06-17',NULL,NULL),(12,1,'Matematica I','2017-06-17',NULL,NULL),(22,1,'Matematica II','2017-06-17',NULL,NULL),(32,1,'Matematica III','2017-06-17',NULL,NULL),(42,1,'Ingles','2017-06-17',NULL,NULL),(52,1,'Redes I','2017-06-17',NULL,NULL),(62,1,'Redes II','2017-06-17',NULL,NULL),(72,1,'Sistemas Operativos I','2017-06-17',NULL,NULL),(82,1,'Sistemas Operativos II','2017-06-17',NULL,NULL),(84,3,'Estadística II','2017-06-17','2017-06-17',NULL);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `permiso` tinyint(1) DEFAULT NULL COMMENT '1=Admin, 2=Docente',
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Activo, 0=Inactivo',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USUARIOS_UK` (`nombre`,`apellido`,`email`,`permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Federico','Reale','federico@asistencia.com','123',1,1,'2017-05-21',NULL,NULL),(2,'Marcela','Alvarez','malvarez@asistencia.com','123',2,1,'2017-05-21',NULL,NULL),(3,'Gustavo','Medina','gustavo@asistencia.com','123',1,1,'2017-05-21',NULL,NULL),(12,'Ignacio','Barberis','ignacio@asistencia.com','123',1,1,'2017-05-21',NULL,NULL),(22,'Emiliano','Ricci','ericci@asistencia.com','123',2,1,'2017-05-21',NULL,NULL),(23,'Maria Rosa','Del Barco','mrdelbarco@asistencia.com','123',2,1,'2017-05-21',NULL,NULL),(24,'Roberto','Celentenario','rcelen@asistencia.com','123',2,1,'2017-05-21',NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26 18:41:32
