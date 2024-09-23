-- borrar esquema
drop schema if exists demtech;
-- crear esquema
create schema if not exists demtech;
-- usar la DB creada
USE demtech;

-- crear tabla cliente

create table cliente(
id_cliente INT AUTO_INCREMENT NOT NULL primary key,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
correo VARCHAR(200) NOT NULL,
domicilio VARCHAR (200) NOT NULL
);

-- crear tabla categoria

create table categoria(
id_categoria INT AUTO_INCREMENT NOT NULL primary key,
nombre VARCHAR(45) NOT NULL
);

-- crear tabla productos

create table productos(
id_producto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_categoria INT NOT NULL,
nombre VARCHAR (30) NOT NULL,
descripcion VARCHAR (300) NOT NULL,
precio INT NOT NULL,
foreign key (id_categoria) references categoria(id_categoria)
);

-- crear tabla ventas

create table ventas(
id_ventas INT AUTO_INCREMENT NOT NULL primary key,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
fecha DATE,
foreign key (id_producto) references productos(id_producto),
foreign key (id_cliente) references cliente(id_cliente)
);