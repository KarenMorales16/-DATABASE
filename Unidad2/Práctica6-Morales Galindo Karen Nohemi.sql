CREATE DATABASE ALUMNOS
USE ALUMNOS

--CREAR TABLA ALUMNOS
CREATE TABLE ALUMNOS(
Id_ALumno  int default '16210977',
Nombre varchar(50) default 'Karen Nohemi Morales Galindo',
Carrera varchar(30),
RFC varchar(40),
Edad int,
Sexo varchar(1))

--CONSTRAINT
ALTER TABLE ALUMNOS
ADD
CONSTRAINT SEXO DEFAULT 'F'
FOR SEXO

--CONSTRAINT
ALTER TABLE ALUMNOS
ADD
CONSTRAINT EDAD DEFAULT 20
FOR EDAD

--DEFAULT FUERA TABLA
create default Carrera as 'Tecnologias'
exec sp_bindefault Carrera, 'ALUMNOS.Carrera'


--DEFAULT FUERA TABLA
create default RFC as 'MOGK971019MBCRLR'
exec sp_bindefault RFC, 'ALUMNOS.RFC'


--INSERCION
INSERT  ALUMNOS VALUES (DEFAULT, DEFAULT, DEFAULT,DEFAULT, DEFAULT, DEFAULT)

--MIRAR TABLA
SELECT * FROM ALUMNOS
