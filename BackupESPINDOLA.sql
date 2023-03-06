-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_historial_medico
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `bitacora`
--Descripción: esta tabla contiene información de todos los cambios
--realizados en la tabla pacientes (INSERT, UPDATE, DELETE)

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'create','2023-03-03 17:29:42',100,'root@localhost'),(2,'create','2023-03-03 17:29:42',101,'root@localhost'),(3,'create','2023-03-03 17:29:42',102,'root@localhost'),(4,'create','2023-03-03 17:29:42',103,'root@localhost'),(5,'create','2023-03-03 17:29:42',104,'root@localhost'),(6,'create','2023-03-03 17:29:42',105,'root@localhost'),(7,'create','2023-03-03 17:29:42',106,'root@localhost'),(8,'create','2023-03-03 17:29:42',107,'root@localhost'),(9,'create','2023-03-03 17:29:42',108,'root@localhost'),(10,'create','2023-03-03 17:29:42',109,'root@localhost'),(11,'create','2023-03-03 17:29:42',110,'root@localhost'),(12,'create','2023-03-03 17:29:42',111,'root@localhost'),(13,'create','2023-03-03 17:29:42',112,'root@localhost'),(14,'create','2023-03-03 17:29:42',113,'root@localhost'),(15,'create','2023-03-03 17:29:42',114,'root@localhost'),(16,'create','2023-03-03 17:29:42',115,'root@localhost'),(17,'create','2023-03-03 17:29:42',116,'root@localhost'),(18,'create','2023-03-03 17:29:42',117,'root@localhost'),(19,'create','2023-03-03 17:29:42',118,'root@localhost'),(20,'create','2023-03-03 17:29:42',119,'root@localhost'),(21,'create','2023-03-03 17:29:42',120,'root@localhost'),(22,'create','2023-03-03 17:29:42',121,'root@localhost'),(23,'create','2023-03-03 17:29:42',122,'root@localhost'),(24,'create','2023-03-03 17:29:42',123,'root@localhost'),(25,'create','2023-03-03 17:29:42',124,'root@localhost'),(26,'create','2023-03-03 17:29:42',125,'root@localhost'),(27,'create','2023-03-03 17:29:42',126,'root@localhost'),(28,'create','2023-03-03 17:29:42',127,'root@localhost'),(29,'create','2023-03-03 17:29:42',128,'root@localhost');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consultas`
--Descripción: esta tabla contiene información de casi todas las tablas
--creadas, ya que recopila datos del paciente, doctor, consultorio e
--historial clínico.

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1001,'2021-12-01','ibuprofeno',11,100,1,100),(1002,'2021-08-02','rivotril',24,101,3,101),(1003,'2019-01-13','viagra',23,102,5,102),(1004,'2019-05-24','paracetamol',20,105,7,105),(1005,'2019-10-05','',19,108,9,108),(1006,'2019-12-06','',18,111,11,111),(1007,'2019-12-01','ibuprofeno',15,114,12,114),(1008,'2019-08-02','',12,117,10,117),(1009,'2019-01-13','rivotril',17,120,8,120),(1010,'2019-05-24','',24,123,6,123),(1012,'2018-12-06','',19,101,2,101),(1013,'2018-12-01','',22,103,1,103),(1014,'2018-08-02','ibuprofeno',20,105,9,105),(1015,'2018-12-01','paracetamol',17,107,10,107),(1016,'2018-08-02','',15,109,9,109),(1017,'2018-01-13','rivotril',14,111,8,111),(1018,'2018-05-24','',16,113,7,113),(1019,'2020-10-05','paracetamol',19,115,6,115),(1020,'2020-12-06','ibuprofeno',22,117,1,117),(1021,'2020-12-01','',24,119,2,119),(1022,'2020-08-02','paracetamol',23,110,3,110),(1023,'2020-01-13','',20,120,7,120),(1024,'2020-05-24','',18,101,5,101),(1025,'2020-10-05','',16,102,2,102),(1026,'2020-12-06','ibuprofeno',17,103,9,103),(1027,'2020-12-01','paracetamol',22,104,7,104),(1028,'2020-08-02','',12,105,6,105);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consultorio`
--Descripción: esta tabla contiene información de contacto y dirección
--de cada consultorio del centro medico.

LOCK TABLES `consultorio` WRITE;
/*!40000 ALTER TABLE `consultorio` DISABLE KEYS */;
INSERT INTO `consultorio` VALUES (1,'callao 23',1221,'45216599','consultorio1@gmail.com'),(2,'petragal 36',1222,'44459599','consultorio2@gmail.com'),(3,'chalay 65',1223,'43633699','consultorio3@gmail.com'),(5,'estonia 50',1225,'47484887','consultorio5@gmail.com'),(6,'barcelona 98',1226,'40344323','consultorio6@gmail.com'),(7,'madrid 85',1227,'49996923','consultorio7@gmail.com'),(8,'rosario 32',1228,'43464710','consultorio8@gmail.com'),(9,'temperley 74',1229,'42003310','consultorio9@gmail.com'),(10,'abdul 145',1230,'40999970','consultorio10@gmail.com'),(11,'rota 321',1231,'42665540','consultorio11@gmail.com'),(12,'tornado 45',1232,'41878740','consultorio12@gmail.com');
/*!40000 ALTER TABLE `consultorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contacto_pacientes`
--Descripción: esta tabla contiene información de contacto de cada uno
--de los pacientes, como el email y teléfono.

LOCK TABLES `contacto_pacientes` WRITE;
/*!40000 ALTER TABLE `contacto_pacientes` DISABLE KEYS */;
INSERT INTO `contacto_pacientes` VALUES (100,'víctormontoya@gmail.com','45216532'),(101,'joségomez@gmail.com','44459532'),(102,'juancayuela@gmail.com','43633663'),(103,'ana maríasobrino@gmail.com','53121212'),(104,'isabelfernanedez@gmail.com','47484848'),(105,'rodolfobaeza@gmail.com','40344343'),(106,'mirtadi nardo@gmail.com','49996936'),(107,'estebantoledo@gmail.com','43464947'),(108,'rauldel marmol@gmail.com','42003300'),(109,'monicabrito@gmail.com','40999989'),(110,'estefanialezama@gmail.com','42665588'),(111,'ceciliarodriguez@gmail.com','41878787'),(112,'melinaberge@gmail.com','43656565'),(113,'darioaquili@gmail.com','44776677'),(114,'josefinacalvi@gmail.com','44989838'),(115,'teodorogambino@gmail.com','46784545'),(116,'melisamassa@gmail.com','49393939'),(117,'agustinacifre@gmail.com','40404040'),(118,'gastonespacavento@gmail.com','42404349'),(119,'juan cruzespindola@gmail.com','48787779'),(120,'telmaramirez@gmail.com','40936382'),(121,'rosariogonzalez@gmail.com','45103212'),(122,'brendaboris@gmail.com','46009700'),(123,'jorgetermopilas@gmail.com','40888888'),(124,'gustavoplayadito@gmail.com','49998877'),(125,'natanaelrosamonte@gmail.com','45555555'),(126,'irmacruz de malta@gmail.com','43002020'),(127,'yaninahelmans@gmail.com','43984572'),(128,'diego armandobolsonaro@gmail.com','42720828');
/*!40000 ALTER TABLE `contacto_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doctor`
--Descripción: esta tabla contiene información estratégica de cada
--doctor como su matrícula, especialidad y pacientes asignados.

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (11,'cesar','Milstein','1968-12-01',985623,16564587,15,100),(12,'gabriel','Levi','1962-08-02',784512,12457869,7,128),(13,'marcela','Cohen','1986-01-13',142536,17264815,9,101),(14,'monica','Benjamin','1976-05-24',968574,15595995,10,127),(15,'esteban','Mizrachi','1960-10-05',786512,11464679,13,102),(16,'andrea','Peretz','1983-12-06',124532,18666666,20,126),(17,'susana','Biton','1978-12-01',988765,17555555,21,103),(18,'rodolfo','Dohan','1956-08-02',416385,16999966,23,125),(19,'julian','Abramov','1982-01-13',912478,18897936,26,104),(20,'julieta','Friedman','1990-05-24',791391,19247111,27,124),(21,'miguel','Azoulai','1969-10-05',713928,16773355,9,105),(22,'ricardo','Malka','1971-12-06',783966,12392817,13,123),(23,'luis','Katz','1975-12-01',459876,23316497,15,106),(24,'Dario','Klein','1958-08-02',124466,8567823,9,122);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidad`
--Descripción: esta tabla contiene información de las distintas
--especialidades médicas del centro medico.

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'ALERGIA'),(2,'INMUNOLOGIA'),(3,'ANESTESIOLOGIA'),(4,'HEMATOLOGIA'),(5,'HEMODINAMIA'),(6,'CIRUGIA CARDIOVASCULAR'),(7,'CIRUGIA GENERAL'),(8,'CIRUGIA PLASTICA'),(9,'CLINICA MEDICA'),(10,'DERMATOLOGIA'),(11,'ENDOCRINOLOGIA'),(12,'GASTROENTEROLOGIA'),(13,'GINECOLOGIA'),(14,'OBSTETRICIA'),(15,'CARDIOLOGIA'),(16,'INFECTOLOGIA'),(17,'NEUROLOGIA'),(18,'NUTRICION'),(19,'OFTALMOLOGIA'),(20,'ONCOLOGIA'),(21,'PEDIATRIA'),(22,'PSIQUIATRIA'),(23,'ECOGRAFIA'),(24,'ORTOPEDIA'),(25,'OSTEOLOGIA'),(26,'TRAUMATOLOGIA Y ORTOPEDIA'),(27,'UROLOGIA'),(28,'VARIOS / OTROS');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historial_clinico`
--Descripción: esta tabla contiene información del historial clínico de
--cada paciente.

LOCK TABLES `historial_clinico` WRITE;
/*!40000 ALTER TABLE `historial_clinico` DISABLE KEYS */;
INSERT INTO `historial_clinico` VALUES (100,27,178,96,'A','tiroides'),(101,30,198,76,'AB','asma'),(102,33,154,64,'B','sifilis'),(103,10,168,65,'O','epilepsia'),(104,37,156,56,'AB','gonorrhea'),(105,39,187,58,'B','poliomelitis'),(106,25,164,59,'O','tabaquismo'),(107,26,190,67,'O','cancer'),(108,48,180,94,'O','diabetes'),(109,37,175,85,'AB','clamidia'),(110,30,136,46,'AB','hemofilia'),(111,23,169,56,'AB','herpes'),(112,43,187,54,'A',''),(113,38,192,52,'O',''),(114,52,165,58,'O',''),(115,20,145,59,'A',''),(116,49,167,76,'A',''),(117,55,179,97,'O','diabetes'),(118,65,165,86,'B',''),(119,41,171,76,'A',''),(120,28,173,75,'O',''),(121,31,165,86,'O',''),(122,36,149,79,'O',''),(123,39,163,73,'AB',''),(124,50,167,74,'A',''),(125,62,198,65,'B','cancer'),(126,58,182,98,'B',''),(127,27,167,52,'O',''),(128,29,159,64,'O','diabetes');
/*!40000 ALTER TABLE `historial_clinico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pacientes`
--Descripción: esta tabla contiene información estratégica de cada uno
--de los pacientes que tiene el centro médico. Como datos personales,
--datos de contacto e historial clínico.

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (100,'Víctor','Montoya','M',39456978,'',100,100),(101,'José','Gomez','M',36147258,'',101,101),(102,'Juana','Cayuela','M',33369582,'',102,102),(103,'Ana María','Sobrino','F',51358247,'',103,103),(104,'Isabel','Fernanedez','F',29259142,'',104,104),(105,'Rodolfo','Baeza','M',27231987,'',105,105),(106,'Mirta','Di Nardo','F',41357519,'',106,106),(107,'Esteban','Toledo','M',40465357,'',107,107),(108,'Raul','Del Marmol','M',18897936,'',108,108),(109,'Monica','Brito','F',29247111,'',109,109),(110,'Estefania','Lezama','F',36773355,'',110,110),(111,'Cecilia','Rodriguez','F',42392817,'',111,111),(112,'Melina','Berge','F',23316497,'',112,112),(113,'Dario','Aquili','M',28567823,'',113,113),(114,'Josefina','Calvi','F',14193728,'',114,114),(115,'Teodoro','Gambino','M',46976521,'',115,115),(116,'Melisa','Massa','F',17468255,'',116,116),(117,'Agustina','Cifre','F',13256479,'',117,117),(118,'Gaston','Espacavento','M',9518478,'',118,118),(119,'Juan Cruz','Espindola','M',24621595,'',119,119),(120,'Telma','Ramirez','F',38111999,'',120,120),(121,'Rosario','Gonzalez','F',35459878,'',121,121),(122,'Brenda','Boris','F',32513265,'',122,122),(123,'Jorgelina','Termopilas','M',30824578,'',123,123),(124,'Gustavo','Playadito','M',20773356,'',124,124),(125,'Natanael','Rosamonte','M',10985241,'',125,125),(126,'Irma','Cruz de Malta','F',11365274,'',126,126),(127,'Yanina','Helmans','F',39269582,'',127,127),(128,'Diego Armando','Bolsonaro','M',37955332,'',128,128);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06 15:20:37
