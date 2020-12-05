create database inmobiliaria;
use inmobiliaria;

create table perfiles(
id_perfil int not null auto_increment,
nombre_tipo varchar(40) not null,
primary key(id_perfil));

create table sexo(
id_sexo int not null auto_increment,
nombre_sexo varchar(20) not null,
primary key (id_sexo));

create table usuarios(
rut_usuario varchar(12) not null,
nombre_usuario varchar(50) not null,
fechanac_usuario date not null,
correo_usuario varchar(50) not null,
clave_usuario varchar(20) not null,
telefono_usuario int not null,
numero_propiedad int null,
certificado_antecedente mediumblob null,
id_sexo int not null,
id_perfil int not null,
primary key(rut_usuario),
foreign key(id_sexo) references sexo(id_sexo),
foreign key(id_perfil) references perfiles(id_perfil));





/**********INSERT*******************/
INSERT INTO Perfiles (`nombre_tipo`)
 VALUES ('administrador'), 
 ('Dueño de Inmueble o Propietario'), 
 ('Gestor Inmobiliario Free');

 INSERT INTO sexo (`nombre_sexo`)
 VALUES ('femenino'), 
 ('masculino');

INSERT INTO usuarios(`rut_usuario`,`nombre_usuario`,`fechanac_usuario`,`correo_usuario`,`clave_usuario`,`telefono_usuario`,`id_sexo`,`id_perfil`)
VALUES ('176799129', 'Pedro', '1991-08-08', 'pgaticaguajardo@gmail.com', '123', '123456789','1', '1');

INSERT INTO usuarios(`rut_usuario`,`nombre_usuario`,`fechanac_usuario`,`correo_usuario`,`clave_usuario`,`telefono_usuario`,`id_sexo`,`id_perfil`)
VALUES ('198997986', 'Darlyn', '1999-11-08', 'dsoazolara@gmail.com', '123', '123456789','2', '2');

INSERT INTO usuarios(`rut_usuario`,`nombre_usuario`,`fechanac_usuario`,`correo_usuario`,`clave_usuario`,`telefono_usuario`,`id_sexo`,`id_perfil`)
VALUES ('111111111', 'Marcela', '1991-08-08', 'marcela@gmail.com', '123', '123456789','2', '3');


select * from usuarios;