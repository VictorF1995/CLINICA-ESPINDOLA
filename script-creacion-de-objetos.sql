-- CREACION DE LA BASE DE DATOS

DROP DATABASE IF EXISTS `proyecto_HISTORIAL_medico`;
CREATE DATABASE IF NOT EXISTS `proyecto_HISTORIAL_medico`;
USE proyecto_HISTORIAL_medico;


-- CREACION DE LAS ENTIDADES

DROP TABLE IF EXISTS `especialidad`;
CREATE TABLE IF NOT EXISTS `especialidad`(
idEspecialidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS `historial_clinico`;
CREATE TABLE IF NOT EXISTS `historial_clinico`(
idHClinico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
edad INT NOT NULL,
altura INT NOT NULL,
peso INT NOT NULL,
tipo_sangre VARCHAR (20),
enfermedades VARCHAR (255)
);

DROP TABLE IF EXISTS `consultorio`;
CREATE TABLE IF NOT EXISTS `consultorio`(
idConsultorio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
direccion VARCHAR (255),
cp INT NOT NULL,
telefono VARCHAR (100) NOT NULL,
mail VARCHAR (200) NOT NULL
);

DROP TABLE IF EXISTS `contacto_pacientes`;
CREATE TABLE IF NOT EXISTS `contacto_pacientes`(
idCPacientes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) UNIQUE,
telefono VARCHAR(255)
);

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes`(
idPacientes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
genero VARCHAR (1) NOT NULL,
dni INT NOT NULL,
prepaga VARCHAR(255),
idCPacientes INT NOT NULL,
idHClinico INT NOT NULL,
FOREIGN KEY (idCPacientes) REFERENCES contacto_pacientes(idCPacientes),
FOREIGN KEY (idHClinico) REFERENCES historial_clinico(idHClinico)
);

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor`(
idDoctor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
fechaNacimiento DATE NOT NULL,
matricula INT NOT NULL,
dni INT NOT NULL,
idEspecialidad INT NOT NULL,
idPacientes INT NOT NULL,
FOREIGN KEY (idEspecialidad) REFERENCES especialidad(idEspecialidad),
FOREIGN KEY (idPacientes) REFERENCES pacientes(idPacientes)
);

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas`(
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


create view Listado_Pacientes as
select CONCAT_WS(' ', p.apellido, p.nombre) as NyA, genero, dni
from pacientes as p
order by p.apellido;

create view Contacto_de_Pacientes as
select CONCAT_WS(' ', p.apellido, p.nombre) as Nombre_Apellido, c_p.email 
as Correo, c_p.telefono as Tel
from pacientes as p
join contacto_pacientes as c_p ON (p.idPacientes = c_p.idCPacientes)
order by p.apellido;

create view Datos_Clinicos_de_Pacientes as
select CONCAT_WS(' ', p.apellido, p.nombre) as Nombre_Apellido, 
hc_p.edad as Edad ,hc_p.altura as Altura ,hc_p.peso ,hc_p.tipo_sangre 
as Sangre ,hc_p.enfermedades as Enfermedades
from pacientes as p
join historial_clinico as hc_p ON (p.idHClinico = hc_p.idHClinico)
order by p.apellido;

create view Consultas_de_Pacientes as
select c.idConsultas as Numero_De_Gestion, CONCAT_WS(' ', p.nombre, p.apellido) 
as Nombre_De_Paciente, c.fecha as Fecha, c.receta as Receta, 
CONCAT_WS(' ', d.nombre, d.apellido) as Doctor, a.direccion as Lugar
from consultas as c
join pacientes as p ON (c.idPacientes = p.idPacientes)
join doctor as d ON (c.idDoctor = d.idDoctor)
join consultorio as a  ON (c.idConsultorio = a.idConsultorio)
order by idConsultas;

create view Listado_Doctores as
select CONCAT_WS(' ', d.apellido, d.nombre) as Nombre_De_Doctor,
 d.fechaNacimiento as Fecha_De_Nacimiento, d.matricula as Matricula, 
 e.nombre as Especialidad, CONCAT_WS(' ', p.nombre, p.apellido) as Pacientes
from doctor as d
join especialidad as e ON (d.idEspecialidad = e.idEspecialidad)
join pacientes as p  ON (d.idPacientes = p.idPacientes)
order by d.apellido ;

create view Listado_Especialidades as
select e.nombre as Especialidad , CONCAT_WS(' ', d.apellido, d.nombre) 
as Nombre_De_Doctor
from especialidad as e
join doctor as d ON (d.idEspecialidad = e.idEspecialidad)
order by e.nombre;

create view Datos_De_Consultorios as
select a.idConsultorio as Nro_De_Consultorio, a.direccion as Direccion, 
a.cp as Codigo_Postal, a.telefono as Tel, a.mail as Correo
from consultorio as a
order by a.idConsultorio;

/*Con ésta función podemos hacer un recuento rapido del total de pacientes */
/*que tienen cada uno de los 4 tipos de sangre (A,B,AB,O) */

DROP FUNCTION IF EXISTS `contador_tiposdesangre`
DELIMITER //
CREATE FUNCTION `contador_tiposdesangre` (tipo VARCHAR(3)) RETURNS int(2)
deterministic
  BEGIN
	return (SELECT COUNT(*) FROM historial_clinico WHERE tipo_sangre = tipo);
  END;//

/*Con ésta función podemos calcula el indice de masa corporal de cada paciente*/
/* Indicando que tipo de Peso tiene (Inferior, Normal, superior, obesidad)  */

DROP FUNCTION IF EXISTS `Calculo_del_IMC`
DELIMITER //
CREATE FUNCTION `Calculo_del_IMC` (id_Paciente int (3)) RETURNS VARCHAR(60)
deterministic
  BEGIN
	declare IMC INT(2);
    declare p int (3);
	declare h int (3);
    declare mensaje varchar(60);
    set p = ( SELECT peso from historial_clinico WHERE idHClinico = id_Paciente );
    set h = ( SELECT altura from historial_clinico WHERE idHClinico = id_Paciente );
    set	IMC = p/(POWER(2,h/100));
	case
		WHEN IMC>=28 then 
			set mensaje = "El paciente tiene OBESIDAD";
		when IMC<28 AND IMC>=23 then 
			set mensaje = "El paciente tiene Peso Superior al Normal";
		WHEN IMC<23 AND IMC>=19 then 
			set mensaje = "El paciente tiene Peso Normal";
		WHEN IMC<19 then 
			set mensaje = "El paciente tiene Peso Inferior al Normal";
	end case;
	return (mensaje);
  END;//
  

  /*Procedimiento almacenado que actualiza la prepaga del paciente*/

DROP PROCEDURE IF EXISTS `update_prepaga`
DELIMITER //
CREATE PROCEDURE `update_prepaga` (IN id_paciente INT,IN nombre_prepaga CHAR(20))
BEGIN
   update pacientes set prepaga = nombre_prepaga where idPacientes = id_paciente;   
END//



 /*Procedimiento almacenado que actualiza la los datos del paciente*/
DROP PROCEDURE IF EXISTS `update_paciente`
DELIMITER //
CREATE PROCEDURE `update_paciente` (IN id_paciente INT, IN nombre_nuevo VARCHAR(255), IN apellido_nuevo VARCHAR(255), IN genero_nuevo VARCHAR (1), IN nombre_prepaga VARCHAR(255))
BEGIN
   IF nombre_nuevo != '' THEN
   update pacientes set nombre = nombre_nuevo where idPacientes = id_paciente;
   END IF;
   IF apellido_nuevo != '' THEN
   update pacientes set apellido = apellido_nuevo where idPacientes = id_paciente;
   END IF;
   IF genero_nuevo != '' THEN
   update pacientes set genero = genero_nuevo where idPacientes = id_paciente;
   END IF;
   IF nombre_prepaga != '' THEN
   update pacientes set prepaga = nombre_prepaga where idPacientes = id_paciente; 
   END IF;
END//
