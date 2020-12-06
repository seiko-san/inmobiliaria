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
telefono_usuario varchar(15) not null,
numero_propiedad int null,
certificado_antecedente mediumblob null,
id_sexo int not null,
id_perfil int not null,
primary key(rut_usuario),
foreign key(id_sexo) references sexo(id_sexo),
foreign key(id_perfil) references perfiles(id_perfil));

create table tipo_propiedad(
id_tipo int not null auto_increment,
nombre_propiedad varchar(20) not null,
descripcion_propiedad varchar(100) not null,
primary key (id_tipo));

create table propiedad(
codigo_propiedad int not null auto_increment,
tipo_propiedad int not null,
fotos text, 
descripción varchar(500) not null,
cantbaños int not null,
cantdormitorios int not null,
area_total float not null,
area_construida float not null,
precio_peso float not null,
precio_uf float not null,
fecha_publicación date not null,
opcion_visita boolean not null,
bodega boolean not null,
estacionamiento boolean not null,
logia boolean not null,
cocina_amoblada boolean not null,
antejardin boolean not null,
Patio_trasero boolean not null,
piscina boolean not null,
primary key (codigo_propiedad),
foreign key (tipo_propiedad) references tipo_propiedad(id_tipo));



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

insert into tipo_propiedad(nombre_propiedad,descripcion_propiedad)
values('Casas', 'venta de casas'),
('Departamentos','venta de departamentos'),
('Terrenos','venta de terrenos');

select * from usuarios;