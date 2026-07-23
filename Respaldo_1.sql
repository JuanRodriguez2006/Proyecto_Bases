CREATE DATABASE  IF NOT EXISTS `LigaProfesional` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LigaProfesional`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: reseau.proxy.rlwy.net    Database: LigaProfesional
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `Equipos`
--

DROP TABLE IF EXISTS `Equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipos` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `fecha_fundacion` date DEFAULT NULL,
  `presidente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipos`
--

LOCK TABLES `Equipos` WRITE;
/*!40000 ALTER TABLE `Equipos` DISABLE KEYS */;
INSERT INTO `Equipos` VALUES (1,'Barcelona SC','Guayaquil','1925-05-01','Antonio Álvarez'),(2,'Liga Deportiva Universitaria','Quito','1930-01-11','Isaac Álvarez'),(3,'Club Sport Emelec','Guayaquil','1929-04-28','Jorge Guzmán'),(4,'Independiente del Valle','Sangolquí','1958-03-01','Franklin Tello'),(5,'Sociedad Deportiva Aucas','Quito','1945-02-06','Danny Walker'),(6,'Poderosos de Ballenita','Ballenita','1988-06-14','Pedro Salazar'),(7,'Chancla Dura FC','Guayaquil','1995-07-11','Manuel Ortega'),(8,'Los Tiburones del Barrio','Manta','2001-02-27','Rosa Villacis'),(9,'Rayo Veloz','Quito','1979-02-21','Jaime Chavez'),(10,'Union Norte','Quito','2005-01-26','Nelly Farinango'),(11,'Deportivo La Esquina','Cuenca','1999-04-11','Segundo Quishpe'),(12,'Los Craneos FC','Ambato','2010-02-23','Alba Zambrano'),(13,'Atletico Chamo','Loja','1985-07-12','Romulo Castro'),(14,'Real Guayabo','Portoviejo','1992-04-12','Mariana Suarez'),(15,'Deportivo Cebollal','Riobamba','2003-09-23','Wilson Pena'),(16,'Los Vecinos FC','Machala','1997-01-28','Carmen Loor'),(17,'San Roque Futbol Club','Ibarra','2008-02-17','Fabian Andrade'),(18,'Atletico del Barrio','Babahoyo','1990-01-28','Doris Cevallos'),(19,'Estrella del Sur','Esmeraldas','1982-07-11','Galo Merizalde'),(20,'Deportivo Bomboli','Esmeraldas','2012-04-11','Lourdes Yepez'),(21,'Rayados de la Loma','Latacunga','1975-09-14','Hugo Balladares'),(22,'Los Pana FC','Santo Domingo','2000-05-23','Piedad Arevalo'),(23,'Deportivo El Chagra','Tulcan','2015-03-27','Edgar Pilco'),(24,'Unidos Venceremos','Milagro','1993-02-28','Teresa Guaman'),(25,'Deportivo La Pulga','Quevedo','1987-05-27','Ramiro Toapanta');
/*!40000 ALTER TABLE `Equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbitros`
--

DROP TABLE IF EXISTS `arbitros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbitros` (
  `id_arbitro` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `experiencia` int DEFAULT NULL,
  PRIMARY KEY (`id_arbitro`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitros`
--

LOCK TABLES `arbitros` WRITE;
/*!40000 ALTER TABLE `arbitros` DISABLE KEYS */;
INSERT INTO `arbitros` VALUES (1,'Carlos','Orbe','Ecuatoriana','FIFA',12),(2,'Augusto','Aragón','Ecuatoriana','FIFA',10),(3,'Guillermo','Guerrero','Ecuatoriana','FIFA',11),(4,'Franklin','Congo','Ecuatoriana','Nacional',8),(5,'Marlon','Vera','Ecuatoriana','Nacional',7),(6,'Carlos','Orbe','Ecuatoriana','Barrial',15),(7,'Augusto','Aragon','Ecuatoriana','Cantonal',12),(8,'Guillermo','Guerrero','Ecuatoriana','Barrial',4),(9,'Franklin','Congo','Ecuatoriana','Cantonal',3),(10,'Marlon','Vera','Ecuatoriana','Provincial',11),(11,'Byron','Salinas','Ecuatoriana','Barrial',11),(12,'Wellington','Tenesaca','Ecuatoriana','Cantonal',12),(13,'Homero','Chuquimarca','Ecuatoriana','Barrial',5),(14,'Nixon','Quinde','Ecuatoriana','Cantonal',7),(15,'Klever','Rea','Ecuatoriana','Provincial',3),(16,'Milton','Pilamunga','Ecuatoriana','Barrial',10),(17,'Xavier','Zurita','Ecuatoriana','Cantonal',13),(18,'Alexis','Vintimilla','Ecuatoriana','Barrial',3),(19,'Ivan','Naranjo','Ecuatoriana','Cantonal',11),(20,'Freddy','Chalen','Ecuatoriana','Provincial',2),(21,'Patricio','Puco','Ecuatoriana','Barrial',11),(22,'Bolivar','Mero','Ecuatoriana','Cantonal',5),(23,'Anibal','Yugsi','Ecuatoriana','Barrial',9),(24,'Cesar','Lechon','Ecuatoriana','Cantonal',12),(25,'Rene','Farinango','Ecuatoriana','Provincial',10);
/*!40000 ALTER TABLE `arbitros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratos`
--

DROP TABLE IF EXISTS `contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratos` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `id_jugador` int DEFAULT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `id_jugador` (`id_jugador`),
  CONSTRAINT `contratos_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratos`
--

LOCK TABLES `contratos` WRITE;
/*!40000 ALTER TABLE `contratos` DISABLE KEYS */;
INSERT INTO `contratos` VALUES (1,'2026-01-01','2028-12-31',15000.00,1),(2,'2026-01-01','2027-12-31',28000.00,2),(3,'2026-01-01','2028-12-31',32000.00,3),(4,'2026-01-01','2028-12-31',50000.00,4),(5,'2026-01-01','2027-12-31',35000.00,5),(6,'2026-01-01','2029-12-31',42000.00,6),(7,'2026-01-01','2028-12-31',38000.00,7),(8,'2026-01-01','2027-12-31',29000.00,8),(9,'2026-01-01','2028-12-31',34000.00,9),(10,'2026-01-01','2029-12-31',47000.00,10),(11,'2026-01-01','2028-12-31',33000.00,11),(12,'2026-01-01','2027-12-31',36000.00,12),(13,'2026-01-01','2028-12-31',30000.00,13),(14,'2026-01-01','2027-12-31',31000.00,14),(15,'2026-01-01','2029-12-31',39000.00,15),(16,'2026-01-01','2027-12-31',882.19,1),(17,'2026-01-01','2027-12-31',712.65,2),(18,'2026-01-01','2026-12-31',505.62,3),(19,'2026-01-01','2028-12-31',737.31,4),(20,'2026-01-01','2026-12-31',542.82,5),(21,'2026-01-01','2027-12-31',889.13,6),(22,'2026-01-01','2026-12-31',308.55,7),(23,'2026-01-01','2028-12-31',744.53,8),(24,'2026-01-01','2027-12-31',558.44,9),(25,'2026-01-01','2026-12-31',350.69,10),(26,'2026-01-01','2027-12-31',822.32,11),(27,'2026-01-01','2028-12-31',882.56,12),(28,'2026-01-01','2028-12-31',445.33,13),(29,'2026-01-01','2027-12-31',327.14,14),(30,'2026-01-01','2026-12-31',394.52,15),(31,'2026-01-01','2027-12-31',302.17,16),(32,'2026-01-01','2027-12-31',877.07,17),(33,'2026-01-01','2028-12-31',494.12,18),(34,'2026-01-01','2026-12-31',879.40,19),(35,'2026-01-01','2027-12-31',430.72,20),(36,'2026-01-01','2026-12-31',300.64,21),(37,'2026-01-01','2027-12-31',350.33,22),(38,'2026-01-01','2027-12-31',601.66,23),(39,'2026-01-01','2026-12-31',448.91,24),(40,'2026-01-01','2026-12-31',354.51,25),(41,'2026-01-01','2026-12-31',386.32,26),(42,'2026-01-01','2028-12-31',325.00,27),(43,'2026-01-01','2026-12-31',479.79,28),(44,'2026-01-01','2028-12-31',439.69,29),(45,'2026-01-01','2028-12-31',874.58,30),(46,'2026-01-01','2026-12-31',694.53,31),(47,'2026-01-01','2028-12-31',770.42,32),(48,'2026-01-01','2028-12-31',533.71,33),(49,'2026-01-01','2027-12-31',732.41,34),(50,'2026-01-01','2027-12-31',389.68,35),(51,'2026-01-01','2028-12-31',671.22,36),(52,'2026-01-01','2026-12-31',326.27,37),(53,'2026-01-01','2028-12-31',835.17,38),(54,'2026-01-01','2028-12-31',557.55,39),(55,'2026-01-01','2028-12-31',787.33,40),(56,'2026-01-01','2026-12-31',845.93,41),(57,'2026-01-01','2028-12-31',641.09,42),(58,'2026-01-01','2026-12-31',795.85,43),(59,'2026-01-01','2028-12-31',778.78,44),(60,'2026-01-01','2028-12-31',709.74,45),(61,'2026-01-01','2028-12-31',685.73,46),(62,'2026-01-01','2026-12-31',318.70,47),(63,'2026-01-01','2026-12-31',682.27,48),(64,'2026-01-01','2026-12-31',525.97,49),(65,'2026-01-01','2027-12-31',635.12,50),(66,'2026-01-01','2028-12-31',311.30,51),(67,'2026-01-01','2028-12-31',708.40,52),(68,'2026-01-01','2027-12-31',458.28,53),(69,'2026-01-01','2027-12-31',778.62,54),(70,'2026-01-01','2028-12-31',859.50,55),(71,'2026-01-01','2028-12-31',355.17,56),(72,'2026-01-01','2028-12-31',339.63,57),(73,'2026-01-01','2028-12-31',584.32,58),(74,'2026-01-01','2026-12-31',807.68,59),(75,'2026-01-01','2026-12-31',737.60,60);
/*!40000 ALTER TABLE `contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenadores`
--

DROP TABLE IF EXISTS `entrenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenadores` (
  `id_entrenador` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_equipo` int DEFAULT NULL,
  PRIMARY KEY (`id_entrenador`),
  KEY `id_equipo` (`id_equipo`),
  CONSTRAINT `entrenadores_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `Equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores`
--

LOCK TABLES `entrenadores` WRITE;
/*!40000 ALTER TABLE `entrenadores` DISABLE KEYS */;
INSERT INTO `entrenadores` VALUES (1,'Segundo','Castillo','Ecuatoriana','1982-05-15',1),(2,'Pablo','Sánchez','Argentina','1973-01-15',2),(3,'Jorge','Célico','Argentina','1964-04-22',3),(4,'Javier','Rabanal','Española','1978-09-10',4),(5,'Gabriel','Pereyra','Uruguaya','1978-01-28',5),(6,'Segundo','Castillo','Ecuatoriana','1978-06-24',1),(7,'Pablo','Sanchez','Ecuatoriana','1983-08-21',2),(8,'Jorge','Celico','Ecuatoriana','1974-04-15',3),(9,'Javier','Rabanal','Ecuatoriana','1987-04-12',4),(10,'Gabriel','Pereyra','Ecuatoriana','1983-05-26',5),(11,'Washington','Coello','Ecuatoriana','1980-06-24',6),(12,'Ruben','Tello','Ecuatoriana','1974-02-13',7),(13,'Eduardo','Zapata','Ecuatoriana','1981-07-15',8),(14,'Nestor','Alvear','Ecuatoriana','1989-06-14',9),(15,'Fausto','Guaman','Ecuatoriana','1980-07-11',10),(16,'Marcelo','Chila','Ecuatoriana','1986-02-27',11),(17,'Danilo','Erazo','Ecuatoriana','1983-06-20',12),(18,'Wilmer','Vaca','Ecuatoriana','1987-06-25',13),(19,'Cristian','Landeta','Ecuatoriana','1983-08-12',14),(20,'Bayron','Simbana','Ecuatoriana','1967-05-25',15),(21,'Enrique','Puglla','Ecuatoriana','1987-02-11',16),(22,'Oswaldo','Cuadrado','Ecuatoriana','1988-05-28',17),(23,'Geovanny','Mafla','Ecuatoriana','1986-08-19',18),(24,'Richard','Espinoza','Ecuatoriana','1987-07-21',19),(25,'Anderson','Solorzano','Ecuatoriana','1965-08-21',20);
/*!40000 ALTER TABLE `entrenadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenamientos`
--

DROP TABLE IF EXISTS `entrenamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenamientos` (
  `id_entrenamiento` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `id_equipo` int DEFAULT NULL,
  `id_entrenador` int DEFAULT NULL,
  PRIMARY KEY (`id_entrenamiento`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_entrenador` (`id_entrenador`),
  CONSTRAINT `entrenamientos_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `Equipos` (`id_equipo`),
  CONSTRAINT `entrenamientos_ibfk_2` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenadores` (`id_entrenador`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenamientos`
--

LOCK TABLES `entrenamientos` WRITE;
/*!40000 ALTER TABLE `entrenamientos` DISABLE KEYS */;
INSERT INTO `entrenamientos` VALUES (1,'2026-02-10','09:00:00','Complejo Deportivo Barcelona SC','Entrenamiento táctico y físico previo al inicio del torneo.',1,1),(2,'2026-02-11','10:00:00','Centro de Alto Rendimiento LDU','Práctica de jugadas ofensivas y estrategia de ataque.',2,2),(3,'2026-02-12','08:30:00','Complejo Deportivo Los Samanes','Entrenamiento enfocado en resistencia y posesión del balón.',3,3),(4,'2026-02-13','09:30:00','Complejo Independiente del Valle','Sesión técnica con ejercicios de definición y presión alta.',4,4),(5,'2026-02-14','08:00:00','Complejo Deportivo Aucas','Preparación táctica y práctica de jugadas a balón parado.',5,5),(6,'2026-02-11','09:00:00','Complejo Deportivo Ballenita','Entrenamiento tactico y fisico previo a la liga barrial.',1,1),(7,'2026-02-12','10:00:00','Complejo Deportivo Guayaquil','Entrenamiento tactico y fisico previo a la liga barrial.',2,2),(8,'2026-02-13','11:00:00','Complejo Deportivo Manta','Entrenamiento tactico y fisico previo a la liga barrial.',3,3),(9,'2026-02-14','08:00:00','Complejo Deportivo Quito','Entrenamiento tactico y fisico previo a la liga barrial.',4,4),(10,'2026-02-15','09:00:00','Complejo Deportivo Quito','Entrenamiento tactico y fisico previo a la liga barrial.',5,5),(11,'2026-02-16','10:00:00','Complejo Deportivo Cuenca','Entrenamiento tactico y fisico previo a la liga barrial.',6,6),(12,'2026-02-17','11:00:00','Complejo Deportivo Ambato','Entrenamiento tactico y fisico previo a la liga barrial.',7,7),(13,'2026-02-18','08:00:00','Complejo Deportivo Loja','Entrenamiento tactico y fisico previo a la liga barrial.',8,8),(14,'2026-02-19','09:00:00','Complejo Deportivo Portoviejo','Entrenamiento tactico y fisico previo a la liga barrial.',9,9),(15,'2026-02-20','10:00:00','Complejo Deportivo Riobamba','Entrenamiento tactico y fisico previo a la liga barrial.',10,10),(16,'2026-02-21','11:00:00','Complejo Deportivo Machala','Entrenamiento tactico y fisico previo a la liga barrial.',11,11),(17,'2026-02-22','08:00:00','Complejo Deportivo Ibarra','Entrenamiento tactico y fisico previo a la liga barrial.',12,12),(18,'2026-02-23','09:00:00','Complejo Deportivo Babahoyo','Entrenamiento tactico y fisico previo a la liga barrial.',13,13),(19,'2026-02-24','10:00:00','Complejo Deportivo Esmeraldas','Entrenamiento tactico y fisico previo a la liga barrial.',14,14),(20,'2026-02-10','11:00:00','Complejo Deportivo Esmeraldas','Entrenamiento tactico y fisico previo a la liga barrial.',15,15),(21,'2026-02-11','08:00:00','Complejo Deportivo Latacunga','Entrenamiento tactico y fisico previo a la liga barrial.',16,16),(22,'2026-02-12','09:00:00','Complejo Deportivo Santo Domingo','Entrenamiento tactico y fisico previo a la liga barrial.',17,17),(23,'2026-02-13','10:00:00','Complejo Deportivo Tulcan','Entrenamiento tactico y fisico previo a la liga barrial.',18,18),(24,'2026-02-14','11:00:00','Complejo Deportivo Milagro','Entrenamiento tactico y fisico previo a la liga barrial.',19,19),(25,'2026-02-15','08:00:00','Complejo Deportivo Quevedo','Entrenamiento tactico y fisico previo a la liga barrial.',20,20),(26,'2026-02-10','09:00:00','cancha principal','entrenamiento tactico',1,1);
/*!40000 ALTER TABLE `entrenamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadios`
--

DROP TABLE IF EXISTS `estadios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadios` (
  `id_estadio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_estadio`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadios`
--

LOCK TABLES `estadios` WRITE;
/*!40000 ALTER TABLE `estadios` DISABLE KEYS */;
INSERT INTO `estadios` VALUES (1,'Estadio Monumental Banco Pichincha','Guayaquil',59283,'Av. Barcelona y Av. Velasco Ibarra'),(2,'Estadio Rodrigo Paz Delgado','Quito',41575,'Av. John F. Kennedy y Gustavo Lemos'),(3,'Estadio George Capwell','Guayaquil',40000,'Av. Quito y General Gómez'),(4,'Estadio Banco Guayaquil','Sangolquí',12000,'Vía a Amaguaña, Sangolquí'),(5,'Estadio Gonzalo Pozo Ripalda','Quito',18799,'Chillogallo, Quito'),(6,'Cancha El Rosal','Ballenita',300,'Barrio El Rosal, calle Principal'),(7,'Cancha La Tola','Guayaquil',450,'Coop. La Tola, Av. Chancla'),(8,'Cancha San Pedro','Manta',250,'Barrio San Pedro'),(9,'Cancha La Loma','Quito',600,'Barrio La Loma, calle Sucre'),(10,'Cancha El Panecillo','Quito',350,'Barrio El Panecillo'),(11,'Cancha Totoracocha','Cuenca',500,'Barrio Totoracocha'),(12,'Cancha Ficoa','Ambato',280,'Barrio Ficoa'),(13,'Cancha Las Pitas','Loja',320,'Barrio Las Pitas'),(14,'Cancha 24 de Mayo','Portoviejo',400,'Av. 24 de Mayo'),(15,'Cancha Bellavista','Riobamba',260,'Barrio Bellavista'),(16,'Cancha El Retiro','Machala',340,'Barrio El Retiro'),(17,'Cancha Alpachaca','Ibarra',380,'Barrio Alpachaca'),(18,'Cancha Camilo Ponce','Babahoyo',300,'Barrio Camilo Ponce'),(19,'Cancha Las Palmas','Esmeraldas',420,'Barrio Las Palmas'),(20,'Cancha Codesa','Esmeraldas',270,'Barrio Codesa'),(21,'Cancha La Estacion','Latacunga',310,'Barrio La Estacion'),(22,'Cancha Zaracay','Santo Domingo',360,'Barrio Zaracay'),(23,'Cancha Fronteriza','Tulcan',290,'Barrio Fronterizo'),(24,'Cancha Chirijos','Milagro',330,'Barrio Chirijos'),(25,'Cancha Siete de Octubre','Quevedo',400,'Barrio 7 de Octubre');
/*!40000 ALTER TABLE `estadios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goles`
--

DROP TABLE IF EXISTS `goles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goles` (
  `id_gol` int NOT NULL AUTO_INCREMENT,
  `minuto` int DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `id_jugador` int DEFAULT NULL,
  `id_partido` int DEFAULT NULL,
  PRIMARY KEY (`id_gol`),
  KEY `id_jugador` (`id_jugador`),
  KEY `id_partido` (`id_partido`),
  CONSTRAINT `goles_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`),
  CONSTRAINT `goles_ibfk_2` FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goles`
--

LOCK TABLES `goles` WRITE;
/*!40000 ALTER TABLE `goles` DISABLE KEYS */;
INSERT INTO `goles` VALUES (1,18,'Jugada',3,1),(2,55,'Cabeza',2,1),(3,73,'Penal',6,1),(4,34,'Jugada',9,2),(5,81,'Tiro Libre',12,2),(6,15,'Jugada',3,3),(7,48,'Penal',3,3),(8,86,'Cabeza',2,3),(9,21,'Jugada',6,4),(10,39,'Cabeza',9,4),(11,62,'Penal',6,4),(12,88,'Jugada',9,4),(13,70,'Jugada',12,5),(14,78,'Cabeza',49,1),(15,47,'Penal',49,1),(16,63,'Tiro Libre',50,1),(17,21,'Jugada',49,1),(18,88,'Tiro Libre',17,1),(19,39,'Penal',17,1),(20,45,'Tiro Libre',17,1),(21,16,'Cabeza',17,1),(22,42,'Cabeza',25,2),(23,16,'Penal',8,3),(24,2,'Cabeza',9,3),(25,48,'Jugada',8,3),(26,50,'Jugada',35,4),(27,55,'Cabeza',35,4),(28,36,'Jugada',34,4),(29,85,'Cabeza',52,4),(30,20,'Penal',54,4),(31,56,'Cabeza',29,5),(32,48,'Tiro Libre',1,6),(33,81,'Tiro Libre',1,6),(34,71,'Penal',3,6),(35,11,'Jugada',15,6),(36,53,'Tiro Libre',15,6),(37,18,'Cabeza',33,7),(38,7,'Penal',32,7),(39,61,'Tiro Libre',31,7),(40,37,'Cabeza',32,7),(41,84,'Cabeza',56,7),(42,84,'Penal',56,7),(43,62,'Tiro Libre',5,8),(44,22,'Penal',4,8),(45,27,'Tiro Libre',4,8),(46,29,'Tiro Libre',39,8),(47,58,'Tiro Libre',38,8),(48,71,'Penal',37,8),(49,12,'Penal',46,9),(50,72,'Jugada',47,9),(51,31,'Cabeza',47,9),(52,73,'Penal',23,10),(53,53,'Tiro Libre',22,10),(54,68,'Penal',23,10),(55,35,'Cabeza',23,10),(56,64,'Cabeza',19,10),(57,47,'Penal',18,11),(58,65,'Penal',18,11),(59,35,'Penal',58,12),(60,52,'Tiro Libre',59,12),(61,40,'Jugada',59,12),(62,5,'Tiro Libre',40,13),(63,61,'Tiro Libre',42,13),(64,10,'Tiro Libre',7,13),(65,60,'Tiro Libre',9,13),(66,14,'Penal',7,13),(67,20,'Jugada',34,14),(68,90,'Tiro Libre',36,14),(69,71,'Jugada',34,14),(70,17,'Penal',34,14),(71,5,'Cabeza',30,15),(72,81,'Cabeza',28,15),(73,82,'Tiro Libre',30,15),(74,15,'Jugada',12,15),(75,39,'Penal',10,15),(76,34,'Penal',14,16),(77,1,'Jugada',15,16),(78,39,'Tiro Libre',15,16),(79,41,'Penal',2,16),(80,68,'Penal',56,17),(81,32,'Jugada',39,18),(82,84,'Cabeza',38,18),(83,3,'Penal',37,18),(84,87,'Tiro Libre',38,18),(85,33,'Penal',43,19),(86,55,'Cabeza',48,19),(87,64,'Jugada',46,19),(88,44,'Tiro Libre',48,19),(89,88,'Tiro Libre',47,19),(90,1,'Cabeza',19,20),(91,65,'Jugada',21,20),(92,64,'Penal',22,20),(93,25,'Penal',23,20),(94,35,'cabeza',1,1);
/*!40000 ALTER TABLE `goles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `posicion` varchar(30) DEFAULT NULL,
  `dorsal` int DEFAULT NULL,
  `altura` decimal(4,2) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `id_equipo` int NOT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `id_equipo` (`id_equipo`),
  CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `Equipos` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Javier','Burrai','1990-09-16','Argentina','Portero',1,1.83,82.50,1),(2,'Álex','Rangel','2003-03-15','Ecuatoriana','Defensa',3,1.85,79.00,1),(3,'Joaquín','Valiente','2001-08-29','Uruguaya','Delantero',11,1.77,72.00,1),(4,'Alexander','Domínguez','1987-06-05','Ecuatoriana','Portero',22,1.95,88.00,2),(5,'Ricardo','Adé','1990-02-21','Haitiana','Defensa',4,1.89,81.00,2),(6,'Álex','Arce','1995-06-03','Paraguaya','Delantero',19,1.87,80.00,2),(7,'Pedro','Ortiz','1990-02-19','Ecuatoriana','Portero',12,1.82,80.00,3),(8,'Luis','Fernando León','1993-04-11','Ecuatoriana','Defensa',2,1.83,77.00,3),(9,'Facundo','Castelli','1995-02-18','Argentina','Delantero',9,1.80,75.00,3),(10,'Guido','Villar','1998-03-24','Argentina','Portero',1,1.89,83.00,4),(11,'Mateo','Carabajal','1997-02-14','Argentina','Defensa',14,1.85,79.00,4),(12,'Michael','Hoyos','1991-08-13','Argentina','Delantero',10,1.78,74.00,4),(13,'Hamilton','Piedra','1993-03-16','Ecuatoriana','Portero',1,1.83,80.00,5),(14,'Luis','Cangá','1995-06-23','Ecuatoriana','Defensa',4,1.86,82.00,5),(15,'Jean','Carlos Blanco','1992-04-24','Colombiana','Delantero',9,1.82,78.00,5),(16,'Javier','Burrai','1995-05-14','Ecuatoriana','Portero',20,1.69,66.47,1),(17,'Alex','Rangel','1997-02-15','Ecuatoriana','Defensa',13,1.77,86.79,1),(18,'Joaquin','Valiente','2004-07-27','Ecuatoriana','Delantero',13,1.81,87.08,1),(19,'Alexander','Dominguez','1998-07-17','Ecuatoriana','Portero',23,1.77,73.97,2),(20,'Ricardo','Ade','1994-04-10','Ecuatoriana','Defensa',3,1.70,70.80,2),(21,'Mateo','Carabajal','2005-01-14','Ecuatoriana','Delantero',27,1.83,71.57,2),(22,'Pedro','Ortiz','2003-03-26','Ecuatoriana','Portero',18,1.76,79.16,3),(23,'Luis','Fernando Leon','1991-09-22','Ecuatoriana','Defensa',15,1.92,84.50,3),(24,'Facundo','Castelli','2002-07-11','Ecuatoriana','Delantero',13,1.77,77.04,3),(25,'Guido','Villar','1996-02-20','Ecuatoriana','Portero',3,1.95,76.02,4),(26,'Michael','Hoyos','1991-02-21','Ecuatoriana','Defensa',4,1.65,68.78,4),(27,'Hamilton','Piedra','1990-03-18','Ecuatoriana','Delantero',3,1.91,80.35,4),(28,'Jean','Canga','2001-08-24','Ecuatoriana','Portero',20,1.76,68.07,5),(29,'Bryan','Blanco','2005-06-18','Ecuatoriana','Defensa',16,1.74,68.60,5),(30,'Kevin','Suquilanda','2005-04-26','Ecuatoriana','Delantero',27,1.86,77.91,5),(31,'Erick','Moran','2001-09-19','Ecuatoriana','Portero',5,1.86,87.85,6),(32,'Steven','Quinonez','1992-03-21','Ecuatoriana','Defensa',23,1.90,77.96,6),(33,'Jhonny','Angulo','1997-04-16','Ecuatoriana','Delantero',18,1.81,77.57,6),(34,'Jefferson','Preciado','1997-04-26','Ecuatoriana','Portero',27,1.77,85.08,7),(35,'Angel','Caicedo','2005-05-25','Ecuatoriana','Defensa',12,1.87,89.74,7),(36,'Marlon','Vera','1998-08-21','Ecuatoriana','Delantero',7,1.86,88.91,7),(37,'Wellington','Zambrano','2001-04-20','Ecuatoriana','Portero',3,1.72,70.67,8),(38,'Jorge','Chala','1996-01-25','Ecuatoriana','Defensa',16,1.84,87.51,8),(39,'Cristopher','Mera','2001-02-22','Ecuatoriana','Delantero',26,1.84,85.87,8),(40,'David','Bone','1996-06-12','Ecuatoriana','Portero',16,1.92,75.85,9),(41,'Diego','Loor','2002-03-15','Ecuatoriana','Defensa',15,1.77,88.67,9),(42,'Fernando','Cedeno','1994-03-25','Ecuatoriana','Delantero',1,1.70,87.62,9),(43,'Gonzalo','Alcivar','2001-01-13','Ecuatoriana','Portero',5,1.81,68.27,10),(44,'Henry','Pinargote','2006-04-16','Ecuatoriana','Defensa',24,1.93,75.85,10),(45,'Israel','Ganchozo','1990-06-18','Ecuatoriana','Delantero',9,1.71,77.53,10),(46,'Jonathan','Delgado','2003-06-24','Ecuatoriana','Portero',27,1.69,87.75,11),(47,'Kleber','Macias','2006-03-27','Ecuatoriana','Defensa',14,1.90,86.95,11),(48,'Leonardo','Zambrano','1994-03-10','Ecuatoriana','Delantero',17,1.80,86.82,11),(49,'Marcos','Pico','1994-02-27','Ecuatoriana','Portero',6,1.69,80.48,12),(50,'Nicolas','Menendez','1991-08-13','Ecuatoriana','Defensa',11,1.85,78.27,12),(51,'Oscar','Rezabala','1991-02-26','Ecuatoriana','Delantero',8,1.71,66.05,12),(52,'Patricio','Sabando','2004-02-24','Ecuatoriana','Portero',18,1.66,87.35,13),(53,'Ronald','Vera','2000-04-18','Ecuatoriana','Defensa',20,1.94,80.15,13),(54,'Santiago','Intriago','2004-04-26','Ecuatoriana','Delantero',17,1.81,76.95,13),(55,'Tomas','Cevallos','1998-08-14','Ecuatoriana','Portero',30,1.82,88.58,14),(56,'Andres','Chele','2003-04-23','Ecuatoriana','Defensa',4,1.77,72.90,14),(57,'Bolivar','Panta','1992-03-21','Ecuatoriana','Delantero',7,1.85,84.60,14),(58,'Carlos','Reyes','1994-04-13','Ecuatoriana','Portero',9,1.91,89.19,15),(59,'Dennis','Farinango','2002-04-15','Ecuatoriana','Defensa',29,1.80,89.75,15),(60,'Efrain','Guaman','2003-06-20','Ecuatoriana','Delantero',17,1.77,75.53,15),(61,'Franklin','Toapanta','1992-08-24','Ecuatoriana','Portero',24,1.76,73.45,16),(62,'Gustavo','Chicaiza','1990-09-12','Ecuatoriana','Defensa',13,1.75,80.60,16),(63,'Hector','Chuquitarco','1993-02-12','Ecuatoriana','Delantero',30,1.89,89.29,16),(64,'Ismael','Pilco','1998-05-14','Ecuatoriana','Portero',9,1.66,84.47,17),(65,'Jhon','Guaman','2003-05-22','Ecuatoriana','Defensa',28,1.92,85.47,17),(66,'Kevin','Cachimuel','1994-06-12','Ecuatoriana','Delantero',18,1.93,79.26,17),(67,'Leo','Tuquerres','1998-02-18','Ecuatoriana','Portero',2,1.89,69.58,18),(68,'Miguel','Fuertes','1990-04-12','Ecuatoriana','Defensa',21,1.68,71.51,18),(69,'Nestor','Cabezas','1998-09-23','Ecuatoriana','Delantero',28,1.69,65.29,18),(70,'Omar','Males','1998-04-13','Ecuatoriana','Portero',20,1.69,78.17,19),(71,'Paul','Rosero','1995-05-19','Ecuatoriana','Defensa',9,1.67,70.04,19),(72,'Ruben','Andrade','2006-03-18','Ecuatoriana','Delantero',25,1.71,76.14,19),(73,'Samuel','Chamorro','2001-01-10','Ecuatoriana','Portero',26,1.66,71.26,20),(74,'Telmo','Cadena','2006-04-24','Ecuatoriana','Defensa',18,1.94,77.86,20),(75,'Ulises','Benitez','1993-08-27','Ecuatoriana','Delantero',22,1.90,75.80,20),(76,'Carlos','Perez','2000-05-10','Ecuatoriana','Delantero',9,1.78,75.50,1);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesiones`
--

DROP TABLE IF EXISTS `lesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesiones` (
  `id_lesion` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha_lesion` date DEFAULT NULL,
  `gravedad` varchar(30) DEFAULT NULL,
  `tiempo_recuperacion` int DEFAULT NULL,
  `id_jugador` int DEFAULT NULL,
  PRIMARY KEY (`id_lesion`),
  KEY `id_jugador` (`id_jugador`),
  CONSTRAINT `lesiones_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesiones`
--

LOCK TABLES `lesiones` WRITE;
/*!40000 ALTER TABLE `lesiones` DISABLE KEYS */;
INSERT INTO `lesiones` VALUES (1,'Esguince de tobillo derecho','2026-03-02','Moderada',21,3),(2,'Distensión muscular en el muslo','2026-03-05','Leve',10,6),(3,'Fractura de dedo de la mano','2026-03-08','Grave',45,9),(4,'Lesión en el ligamento de la rodilla','2026-03-10','Grave',90,12),(5,'Sobrecarga muscular','2026-03-12','Leve',7,15),(6,'Esguince de tobillo derecho','2026-03-01','Grave',58,13),(7,'Distension muscular en el muslo','2026-03-02','Leve',8,29),(8,'Fractura de dedo de la mano','2026-03-03','Moderada',23,16),(9,'Lesion en el ligamento de la rodilla','2026-03-04','Leve',5,12),(10,'Sobrecarga muscular','2026-03-05','Leve',5,58),(11,'Golpe en la cabeza','2026-03-06','Leve',8,56),(12,'Desgarro en el gemelo','2026-03-07','Leve',10,10),(13,'Luxacion de hombro','2026-03-08','Leve',7,19),(14,'Contusion en la cadera','2026-03-09','Leve',6,38),(15,'Fisura costal','2026-03-10','Grave',46,60),(16,'Esguince de rodilla','2026-03-11','Moderada',25,21),(17,'Tendinitis rotuliana','2026-03-12','Grave',71,5),(18,'Distension lumbar','2026-03-13','Leve',8,26),(19,'Corte superficial en la ceja','2026-03-14','Moderada',26,17),(20,'Torcedura de muneca','2026-03-15','Leve',10,55),(21,'Contractura cervical','2026-03-16','Moderada',22,33),(22,'Esguince de tobillo izquierdo','2026-03-17','Moderada',23,34),(23,'Desgarro isquiotibial','2026-03-18','Leve',7,15),(24,'Golpe en la nariz','2026-03-19','Moderada',25,42),(25,'Fatiga muscular general','2026-03-20','Moderada',26,7),(26,'desgarro muscular','2026-02-01','grave',60,2);
/*!40000 ALTER TABLE `lesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `id_partido` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_equipo_local` int DEFAULT NULL,
  `id_equipo_visitante` int DEFAULT NULL,
  `id_estadio` int DEFAULT NULL,
  `id_arbitro` int DEFAULT NULL,
  `id_torneo` int DEFAULT NULL,
  `goles_local` int DEFAULT '0',
  `goles_visitante` int DEFAULT '0',
  PRIMARY KEY (`id_partido`),
  KEY `id_equipo_local` (`id_equipo_local`),
  KEY `id_equipo_visitante` (`id_equipo_visitante`),
  KEY `id_estadio` (`id_estadio`),
  KEY `id_arbitro` (`id_arbitro`),
  KEY `id_torneo` (`id_torneo`),
  CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`id_equipo_local`) REFERENCES `Equipos` (`id_equipo`),
  CONSTRAINT `partidos_ibfk_2` FOREIGN KEY (`id_equipo_visitante`) REFERENCES `Equipos` (`id_equipo`),
  CONSTRAINT `partidos_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadios` (`id_estadio`),
  CONSTRAINT `partidos_ibfk_4` FOREIGN KEY (`id_arbitro`) REFERENCES `arbitros` (`id_arbitro`),
  CONSTRAINT `partidos_ibfk_5` FOREIGN KEY (`id_torneo`) REFERENCES `torneos` (`id_torneo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'2026-03-01','16:00:00',1,2,1,1,1,2,1),(2,'2026-03-02','19:00:00',3,4,3,2,1,1,1),(3,'2026-03-03','15:30:00',5,1,5,3,1,0,3),(4,'2026-03-04','18:00:00',2,3,2,4,1,2,2),(5,'2026-03-05','20:00:00',4,5,4,5,1,1,0),(6,'2026-03-01','15:00:00',17,6,17,1,17,4,4),(7,'2026-03-02','16:00:00',9,20,9,2,9,1,0),(8,'2026-03-03','17:00:00',3,14,3,3,3,3,0),(9,'2026-03-04','18:00:00',12,18,12,4,12,3,2),(10,'2026-03-05','19:00:00',4,10,4,5,4,0,1),(11,'2026-03-06','15:00:00',1,5,1,6,1,3,2),(12,'2026-03-07','16:00:00',11,19,11,7,11,4,2),(13,'2026-03-08','17:00:00',2,13,2,8,2,3,3),(14,'2026-03-09','18:00:00',16,15,16,9,16,3,0),(15,'2026-03-10','19:00:00',8,7,8,10,8,4,1),(16,'2026-03-11','15:00:00',6,17,6,11,6,2,0),(17,'2026-03-12','16:00:00',20,9,20,12,20,3,0),(18,'2026-03-13','17:00:00',14,3,14,13,14,2,3),(19,'2026-03-14','18:00:00',18,12,18,14,18,0,4),(20,'2026-03-15','19:00:00',10,4,10,15,10,3,2),(21,'2026-04-16','15:00:00',5,1,5,16,5,3,1),(22,'2026-04-17','16:00:00',19,11,19,17,19,1,0),(23,'2026-04-18','17:00:00',13,2,13,18,13,4,0),(24,'2026-04-19','18:00:00',15,16,15,19,15,1,4),(25,'2026-04-20','19:00:00',7,8,7,20,7,2,2),(26,'2026-01-15','18:00:00',1,2,1,1,1,2,1);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id_tarjeta` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('Amarilla','Roja') DEFAULT NULL,
  `minuto` int DEFAULT NULL,
  `id_jugador` int DEFAULT NULL,
  `id_partido` int DEFAULT NULL,
  PRIMARY KEY (`id_tarjeta`),
  KEY `id_jugador` (`id_jugador`),
  KEY `id_partido` (`id_partido`),
  CONSTRAINT `tarjetas_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`),
  CONSTRAINT `tarjetas_ibfk_2` FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id_partido`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,'Amarilla',25,2,1),(2,'Amarilla',67,5,1),(3,'Amarilla',40,8,2),(4,'Roja',89,11,2),(5,'Amarilla',32,13,3),(6,'Amarilla',75,3,3),(7,'Amarilla',18,6,4),(8,'Amarilla',84,9,4),(9,'Amarilla',52,12,5),(10,'Roja',90,15,5),(11,'Amarilla',40,35,14),(12,'Amarilla',7,28,5),(13,'Roja',70,14,16),(14,'Amarilla',47,41,13),(15,'Amarilla',81,58,2),(16,'Amarilla',49,43,9),(17,'Amarilla',33,19,20),(18,'Amarilla',44,21,20),(19,'Amarilla',6,18,1),(20,'Amarilla',39,5,18),(21,'Amarilla',30,10,5),(22,'Roja',33,38,8),(23,'Amarilla',64,1,16),(24,'Amarilla',20,18,1),(25,'Amarilla',59,17,1),(26,'Amarilla',26,42,13),(27,'Amarilla',53,37,18),(28,'Amarilla',71,59,12),(29,'Roja',14,23,10),(30,'Amarilla',11,6,18),(31,'Amarilla',58,32,17),(32,'Amarilla',59,29,15),(33,'Amarilla',69,6,8),(34,'Amarilla',38,2,6),(35,'Amarilla',33,41,3);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneos`
--

DROP TABLE IF EXISTS `torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneos` (
  `id_torneo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `temporada` varchar(20) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_torneo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
INSERT INTO `torneos` VALUES (1,'LigaPro Serie A','2026','2026-02-15','2026-12-10'),(2,'Copa Ecuador','2026','2026-05-10','2026-11-20'),(3,'Supercopa Ecuador','2026','2026-02-01','2026-02-01'),(4,'LigaPro Serie A','2025','2025-02-14','2025-12-08'),(5,'Copa Ecuador','2025','2025-05-15','2025-11-25'),(6,'Liga Barrial Ballenita','2026','2026-02-10','2026-11-10'),(7,'Liga Barrial Guayaquil','2025','2025-02-11','2025-11-11'),(8,'Liga Barrial Manta','2026','2026-02-12','2026-11-12'),(9,'Liga Barrial Quito','2025','2025-02-13','2025-11-13'),(10,'Liga Barrial Quito','2026','2026-02-14','2026-11-14'),(11,'Liga Barrial Cuenca','2025','2025-02-15','2025-11-15'),(12,'Liga Barrial Ambato','2026','2026-02-16','2026-11-16'),(13,'Liga Barrial Loja','2025','2025-02-17','2025-11-17'),(14,'Liga Barrial Portoviejo','2026','2026-02-18','2026-11-18'),(15,'Liga Barrial Riobamba','2025','2025-02-19','2025-11-19'),(16,'Liga Barrial Machala','2026','2026-02-20','2026-11-20'),(17,'Liga Barrial Ibarra','2025','2025-02-21','2025-11-21'),(18,'Liga Barrial Babahoyo','2026','2026-02-22','2026-11-22'),(19,'Liga Barrial Esmeraldas','2025','2025-02-23','2025-11-23'),(20,'Liga Barrial Esmeraldas','2026','2026-02-24','2026-11-24'),(21,'Liga Barrial Latacunga','2025','2025-02-10','2025-11-10'),(22,'Liga Barrial Santo Domingo','2026','2026-02-11','2026-11-11'),(23,'Liga Barrial Tulcan','2025','2025-02-12','2025-11-12'),(24,'Liga Barrial Milagro','2026','2026-02-13','2026-11-13'),(25,'Liga Barrial Quevedo','2025','2025-02-14','2025-11-14');
/*!40000 ALTER TABLE `torneos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_contratos_jugadores`
--

DROP TABLE IF EXISTS `vista_contratos_jugadores`;
/*!50001 DROP VIEW IF EXISTS `vista_contratos_jugadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_contratos_jugadores` AS SELECT 
 1 AS `id_contrato`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `equipo`,
 1 AS `fecha_inicio`,
 1 AS `fecha_fin`,
 1 AS `salario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_entrenadores_equipos`
--

DROP TABLE IF EXISTS `vista_entrenadores_equipos`;
/*!50001 DROP VIEW IF EXISTS `vista_entrenadores_equipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_entrenadores_equipos` AS SELECT 
 1 AS `id_entrenador`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `nacionalidad`,
 1 AS `equipo`,
 1 AS `ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_goleadores`
--

DROP TABLE IF EXISTS `vista_goleadores`;
/*!50001 DROP VIEW IF EXISTS `vista_goleadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_goleadores` AS SELECT 
 1 AS `id_gol`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `minuto`,
 1 AS `tipo`,
 1 AS `fecha`,
 1 AS `id_partido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_jugadores_equipos`
--

DROP TABLE IF EXISTS `vista_jugadores_equipos`;
/*!50001 DROP VIEW IF EXISTS `vista_jugadores_equipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_jugadores_equipos` AS SELECT 
 1 AS `id_jugador`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `posicion`,
 1 AS `dorsal`,
 1 AS `nacionalidad`,
 1 AS `equipo`,
 1 AS `ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_partidos_completo`
--

DROP TABLE IF EXISTS `vista_partidos_completo`;
/*!50001 DROP VIEW IF EXISTS `vista_partidos_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_partidos_completo` AS SELECT 
 1 AS `id_partido`,
 1 AS `fecha`,
 1 AS `hora`,
 1 AS `equipo_local`,
 1 AS `equipo_visitante`,
 1 AS `goles_local`,
 1 AS `goles_visitante`,
 1 AS `estadio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_tarjetas`
--

DROP TABLE IF EXISTS `vista_tarjetas`;
/*!50001 DROP VIEW IF EXISTS `vista_tarjetas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_tarjetas` AS SELECT 
 1 AS `id_tarjeta`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `tipo`,
 1 AS `minuto`,
 1 AS `fecha`,
 1 AS `id_partido`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_contratos_jugadores`
--

/*!50001 DROP VIEW IF EXISTS `vista_contratos_jugadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_contratos_jugadores` AS select `c`.`id_contrato` AS `id_contrato`,`j`.`nombres` AS `nombres`,`j`.`apellidos` AS `apellidos`,`eq`.`nombre` AS `equipo`,`c`.`fecha_inicio` AS `fecha_inicio`,`c`.`fecha_fin` AS `fecha_fin`,`c`.`salario` AS `salario` from ((`contratos` `c` join `jugadores` `j` on((`c`.`id_jugador` = `j`.`id_jugador`))) join `Equipos` `eq` on((`j`.`id_equipo` = `eq`.`id_equipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_entrenadores_equipos`
--

/*!50001 DROP VIEW IF EXISTS `vista_entrenadores_equipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_entrenadores_equipos` AS select `en`.`id_entrenador` AS `id_entrenador`,`en`.`nombres` AS `nombres`,`en`.`apellidos` AS `apellidos`,`en`.`nacionalidad` AS `nacionalidad`,`eq`.`nombre` AS `equipo`,`eq`.`ciudad` AS `ciudad` from (`entrenadores` `en` join `Equipos` `eq` on((`en`.`id_equipo` = `eq`.`id_equipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_goleadores`
--

/*!50001 DROP VIEW IF EXISTS `vista_goleadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_goleadores` AS select `g`.`id_gol` AS `id_gol`,`j`.`nombres` AS `nombres`,`j`.`apellidos` AS `apellidos`,`g`.`minuto` AS `minuto`,`g`.`tipo` AS `tipo`,`p`.`fecha` AS `fecha`,`p`.`id_partido` AS `id_partido` from ((`goles` `g` join `jugadores` `j` on((`g`.`id_jugador` = `j`.`id_jugador`))) join `partidos` `p` on((`g`.`id_partido` = `p`.`id_partido`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_jugadores_equipos`
--

/*!50001 DROP VIEW IF EXISTS `vista_jugadores_equipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_jugadores_equipos` AS select `j`.`id_jugador` AS `id_jugador`,`j`.`nombres` AS `nombres`,`j`.`apellidos` AS `apellidos`,`j`.`posicion` AS `posicion`,`j`.`dorsal` AS `dorsal`,`j`.`nacionalidad` AS `nacionalidad`,`e`.`nombre` AS `equipo`,`e`.`ciudad` AS `ciudad` from (`jugadores` `j` join `Equipos` `e` on((`j`.`id_equipo` = `e`.`id_equipo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_partidos_completo`
--

/*!50001 DROP VIEW IF EXISTS `vista_partidos_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_partidos_completo` AS select `p`.`id_partido` AS `id_partido`,`p`.`fecha` AS `fecha`,`p`.`hora` AS `hora`,`el`.`nombre` AS `equipo_local`,`ev`.`nombre` AS `equipo_visitante`,`p`.`goles_local` AS `goles_local`,`p`.`goles_visitante` AS `goles_visitante`,`es`.`nombre` AS `estadio` from (((`partidos` `p` join `Equipos` `el` on((`p`.`id_equipo_local` = `el`.`id_equipo`))) join `Equipos` `ev` on((`p`.`id_equipo_visitante` = `ev`.`id_equipo`))) join `estadios` `es` on((`p`.`id_estadio` = `es`.`id_estadio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_tarjetas`
--

/*!50001 DROP VIEW IF EXISTS `vista_tarjetas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tarjetas` AS select `t`.`id_tarjeta` AS `id_tarjeta`,`j`.`nombres` AS `nombres`,`j`.`apellidos` AS `apellidos`,`t`.`tipo` AS `tipo`,`t`.`minuto` AS `minuto`,`p`.`fecha` AS `fecha`,`p`.`id_partido` AS `id_partido` from ((`tarjetas` `t` join `jugadores` `j` on((`t`.`id_jugador` = `j`.`id_jugador`))) join `partidos` `p` on((`t`.`id_partido` = `p`.`id_partido`))) */;
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

-- Dump completed on 2026-07-22 19:56:55
