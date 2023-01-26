-- CREACION DE LA BASE DE DATOS

CREATE DATABASE IF NOT EXISTS proyecto_HISTORIAL_medico;
USE proyecto_HISTORIAL_medico;
-- CREACION DE LAS ENTIDADES


CREATE TABLE IF NOT EXISTS especialidad(
idEspecialidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS historial_clinico(
idHClinico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
edad INT NOT NULL,
altura INT NOT NULL,
peso INT NOT NULL,
tipo_sangre VARCHAR (20),
enfermedades VARCHAR (255)
);

CREATE TABLE IF NOT EXISTS consultorio(
idConsultorio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
direccion VARCHAR (255),
cp INT NOT NULL,
telefono VARCHAR (100) NOT NULL,
mail VARCHAR (200) NOT NULL
);

CREATE TABLE IF NOT EXISTS contacto_pacientes(
idCPacientes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) UNIQUE,
telefono VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS pacientes(
idPacientes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
genero VARCHAR (1) NOT NULL,
dni INT NOT NULL,
idCPacientes INT NOT NULL,
idHClinico INT NOT NULL,
FOREIGN KEY (idCPacientes) REFERENCES contacto_pacientes(idCPacientes),
FOREIGN KEY (idHClinico) REFERENCES historial_clinico(idHClinico)
);

CREATE TABLE IF NOT EXISTS doctor(
idDoctor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
fechaNacimiento DATE NOT NULL,
matricula VARCHAR(255) NOT NULL,
dni INT NOT NULL,
idEspecialidad INT NOT NULL,
idPacientes INT NOT NULL,
FOREIGN KEY (idEspecialidad) REFERENCES especialidad(idEspecialidad),
FOREIGN KEY (idPacientes) REFERENCES pacientes(idPacientes)
);


CREATE TABLE IF NOT EXISTS consultas(
idConsultas INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fecha DATE NOT NULL,
receta VARCHAR(255) NOT NULL,
idDoctor INT NOT NULL,
idPacientes INT NOT NULL,
idConsultorio INT NOT NULL,
idHClinico INT NOT NULL,
FOREIGN KEY (idDoctor) REFERENCES doctor(idDoctor),
FOREIGN KEY (idPacientes) REFERENCES pacientes(idPacientes),
FOREIGN KEY (idConsultorio) REFERENCES consultorio(idConsultorio),
FOREIGN KEY (idHClinico) REFERENCES historial_clinico(idHClinico)
);

INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (1,'ALERGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (2,'INMUNOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (3,'ANESTESIOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (4,'CARDIOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (5,'HEMODINAMIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (6,'CIRUGIA CARDIOVASCULAR');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (7,'CIRUGIA GENERAL');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (8,'CIRUGIA PLASTICA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (9,'CLINICA MEDICA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (10,'DERMATOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (11,'ENDOCRINOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (12,'GASTROENTEROLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (13,'GINECOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (14,'OBSTETRICIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (15,'HEMATOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (16,'INFECTOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (17,'NEUROLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (18,'NUTRICION');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (19,'OFTALMOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (20,'ONCOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (21,'PEDIATRIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (22,'PSIQUIATRIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (23,'ECOGRAFIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (24,'ORTOPEDIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (25,'OSTEOLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (26,'TRAUMATOLOGIA Y ORTOPEDIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (27,'UROLOGIA');
INSERT INTO especialidad (`idEspecialidad`,`nombre`) VALUES (28,'VARIOS / OTROS');

INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (100,27,178,96,'A','tiroides');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (101,30,198,76,'AB','asma');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (102,33,154,64,'B','sifilis');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (103,35,168,65,'O','epilepsia');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (104,37,156,56,'AB','gonorrhea');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (105,39,187,58,'B','poliomelitis');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (106,25,164,59,'O','tabaquismo');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (107,26,190,67,'O','cancer');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (108,48,180,94,'O','diabetes');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (109,37,175,85,'AB','clamidia');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (110,30,136,46,'AB','hemofilia');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (111,23,169,56,'AB','herpes');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (112,43,187,54,'A','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (113,38,192,52,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (114,52,165,58,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (115,20,145,59,'A','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (116,49,167,76,'A','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (117,55,179,97,'O','diabetes');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (118,65,165,86,'B','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (119,41,171,76,'A','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (120,28,173,75,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (121,31,165,86,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (122,36,149,79,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (123,39,163,73,'AB','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (124,50,167,74,'A','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (125,62,198,65,'B','cancer');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (126,58,182,98,'B','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (127,27,167,52,'O','');
INSERT INTO historial_clinico (`idHClinico`,`edad`,`altura`,`peso`,`tipo_sangre`,`enfermedades`) VALUES (128,29,159,64,'O','diabetes');

INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (1,'callao 23',1221,'45216599','consultorio1@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (2,'petragal 36',1222,'44459599','consultorio2@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (3,'chalay 65',1223,'43633699','consultorio3@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (5,'estonia 50',1225,'47484887','consultorio5@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (6,'barcelona 98',1226,'40344323','consultorio6@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (7,'madrid 85',1227,'49996923','consultorio7@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (8,'rosario 32',1228,'43464710','consultorio8@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (9,'temperley 74',1229,'42003310','consultorio9@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (10,'abdul 145',1230,'40999970','consultorio10@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (11,'rota 321',1231,'42665540','consultorio11@gmail.com');
INSERT INTO consultorio (`idConsultorio`,`direccion`,`cp`,`telefono`,`mail`) VALUES (12,'tornado 45',1232,'41878740','consultorio12@gmail.com');

INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (100,'víctormontoya@gmail.com','45216532');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (101,'joségomez@gmail.com','44459532');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (102,'juancayuela@gmail.com','43633663');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (103,'ana maríasobrino@gmail.com','42121212');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (104,'isabelfernanedez@gmail.com','47484848');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (105,'rodolfobaeza@gmail.com','40344343');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (106,'mirtadi nardo@gmail.com','49996936');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (107,'estebantoledo@gmail.com','43464947');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (108,'rauldel marmol@gmail.com','42003300');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (109,'monicabrito@gmail.com','40999989');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (110,'estefanialezama@gmail.com','42665588');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (111,'ceciliarodriguez@gmail.com','41878787');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (112,'melinaberge@gmail.com','43656565');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (113,'darioaquili@gmail.com','44776677');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (114,'josefinacalvi@gmail.com','44989838');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (115,'teodorogambino@gmail.com','46784545');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (116,'melisamassa@gmail.com','49393939');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (117,'agustinacifre@gmail.com','40404040');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (118,'gastonespacavento@gmail.com','42404349');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (119,'juan cruzespindola@gmail.com','48787779');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (120,'telmaramirez@gmail.com','40936382');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (121,'rosariogonzalez@gmail.com','45103212');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (122,'brendaboris@gmail.com','46009700');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (123,'jorgetermopilas@gmail.com','40888888');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (124,'gustavoplayadito@gmail.com','49998877');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (125,'natanaelrosamonte@gmail.com','45555555');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (126,'irmacruz de malta@gmail.com','43002020');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (127,'yaninahelmans@gmail.com','43984572');
INSERT INTO contacto_pacientes (`idCPacientes`,`email`,`telefono`) VALUES (128,'diego armandobolsonaro@gmail.com','42720828');

INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (100,'Víctor','Montoya','M',39456978,100,100);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (101,'José','Gomez','M',36147258,101,101);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (102,'Juan','Cayuela','M',33369582,102,102);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (103,'Ana María','Sobrino','F',31358247,103,103);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (104,'Isabel','Fernanedez','F',29259142,104,104);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (105,'Rodolfo','Baeza','M',27231987,105,105);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (106,'Mirta','Di Nardo','F',41357519,106,106);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (107,'Esteban','Toledo','M',40465357,107,107);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (108,'Raul','Del Marmol','M',18897936,108,108);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (109,'Monica','Brito','F',29247111,109,109);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (110,'Estefania','Lezama','F',36773355,110,110);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (111,'Cecilia','Rodriguez','F',42392817,111,111);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (112,'Melina','Berge','F',23316497,112,112);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (113,'Dario','Aquili','M',28567823,113,113);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (114,'Josefina','Calvi','F',14193728,114,114);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (115,'Teodoro','Gambino','M',46976521,115,115);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (116,'Melisa','Massa','F',17468255,116,116);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (117,'Agustina','Cifre','F',13256479,117,117);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (118,'Gaston','Espacavento','M',9518478,118,118);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (119,'Juan Cruz','Espindola','M',24621595,119,119);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (120,'Telma','Ramirez','F',38111999,120,120);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (121,'Rosario','Gonzalez','F',35459878,121,121);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (122,'Brenda','Boris','F',32513265,122,122);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (123,'Jorge','Termopilas','M',30824578,123,123);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (124,'Gustavo','Playadito','M',20773356,124,124);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (125,'Natanael','Rosamonte','M',10985241,125,125);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (126,'Irma','Cruz de Malta','F',11365274,126,126);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (127,'Yanina','Helmans','F',39269582,127,127);
INSERT INTO pacientes (`idPacientes`,`nombre`,`apellido`,`genero`,`dni`,`idCPacientes`,`idHClinico`) VALUES (128,'Diego Armando','Bolsonaro','M',37955332,128,128);
