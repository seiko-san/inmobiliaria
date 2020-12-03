create database inmobiliaria;
use inmobiliaria;

create table tipo_usuario(
id_tipo int not null auto_increment,
nombre_tipo varchar(40) not null,
descripcion_tipo varchar(100) not null,
primary key(id_tipo));

create table sexo(
id_sexo int not null auto_increment,
nombre_sexo varchar(20) not null,
descripcion_sexo varchar(30),
primary key (id_sexo));

create table usuarios(
rut_usuario varchar(12) not null,
nombre_usuario varchar(50) not null,
apellido_usuario varchar(60) not null,
tipo_usuario int not null,
fechanac_usuario date not null,
correo varchar(50) not null,
clave varchar(20) not null,
tipo_sexo int not null,
telefono int not null,
primary key (rut_usuario),
foreign key (tipo_sexo) references  sexo(id_sexo),
foreign key (tipo_usuario) references  tipo_usuario(id_tipo));

create table tipo_propiedad(
id_tipo int not null auto_increment,
nombre_propiedad varchar(20) not null,
descripcion_propiedad varchar(100) not null,
primary key (id_tipo));

insert into tipo_propiedad(nombre_propiedad,descripcion_propiedad)
values('Casas', 'venta de casas'),
('Departamentos','venta de departamentos'),
('Terrenos','venta de terrenos');

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


INSERT INTO `tipo_usuario` (`id_tipo`, `nombre_tipo`, `descripcion_tipo`)
 VALUES (NULL, 'administrador', 'administrador del sistema de inmueble'), 
 (NULL, 'Dueño de Inmueble o Propietario', 'Dueño del Inmueble o Propietario del mismo'), 
 (NULL, 'Gestor Inmobiliario Free', 'Gestor Inmobiliario Free');
 INSERT INTO `sexo` (`id_sexo`, `nombre_sexo`, `descripcion_sexo`)
 VALUES (NULL, 'femenino', 'tipo de sexo femenino'), 
 (NULL, 'masculino', 'tipo de sexo masculino');
 INSERT INTO `usuarios` (`rut_usuario`, `nombre_usuario`, `apellido_usuario`, `tipo_usuario`,
 `fechanac_usuario`, `correo`, `clave`, `tipo_sexo`, `telefono`) 
 VALUES ('198997986', 'darlyn', 'soazo', '1', '1999-11-08', 'dsaozolara@gmail.com', '123', '1', '55121654'),
 ('176799129','pedro','gatica','2','1991-08-08','pgaticaguajardo@gmail.com','123','2','45361931');

select * from usuarios where rut_usuario = '198997986' and clave = '123'

/*-
INSERT INTO propiedad('codigo_propiedad', 'tipo_propiedad',
 'fotos', 'descripción', 'cantbaños', 'cantdormitorios',
 'area_total', 'area_construida', 'precio_peso','precio_uf', 
 'fecha_publicación', 'opcion_visita', 'bodega', 'estacionamiento',
 'logia', 'cocina_amoblada', 'antejardin', 'Patio_trasero', 'piscina')-*/
 
 