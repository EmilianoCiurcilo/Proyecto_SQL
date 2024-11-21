DROP SCHEMA IF EXISTS demtech;

CREATE SCHEMA IF NOT EXISTS demtech;

USE demtech;

-- crear tabla categorias
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL
);

-- crear tabla marcas
CREATE TABLE marcas (
    id_marca INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- crear tabla productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio_compra INT NOT NULL,
    precio_venta INT AS (precio_compra * 1.15),
	ganancia INT AS (precio_venta - precio_compra),
    stock INT NOT NULL,
    categoria_id INT NOT NULL,
    marca_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria),
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

-- crear tabla clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    direccion TEXT
);

-- crear tabla ventas
CREATE TABLE ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    total INT DEFAULT '0',
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente)
);

-- crear tabla intermedia de ventas_productos
CREATE TABLE ventas_productos (
    id_venta INT,
    id_producto INT,
    cantidad INT,
    PRIMARY KEY (id_venta, id_producto),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- crear tabla proveedores
CREATE TABLE proveedores (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
	marca_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion TEXT,
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

-- crear tabla stock
CREATE TABLE stock (
    id_stock INT PRIMARY KEY AUTO_INCREMENT,
    proveedor_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    fecha_ingreso DATE,
    marca_id INT NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES productos(id_producto),
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id_proveedor)
);

-- crear tabla stock
CREATE TABLE facturas (
    id_factura INT PRIMARY KEY AUTO_INCREMENT,
    venta_id INT,
    fecha_emision DATE,
    total DECIMAL(10,2),
    forma_pago VARCHAR(50),
    FOREIGN KEY (venta_id) REFERENCES ventas(id_venta)
);

SAVEPOINT tablas_completas;

-- insertar datos en la tabla marcas
INSERT INTO marcas (id_marca, nombre)
VALUES (null, "AMD"), (null, "INTEL"), (null, "ASUS"), (null, "ASROCK"), (null, "GIGABYTE"), (null, "X RADEON"), (null, "GEIL"), (null, "TEAM"), (null, "PATRIOT VIPER"), (null, "WD"), (null, "ADATA"), (null, "COOLER MASTER"), (null, "CORSAIR"), (null, "SAMSUNG"), (null, "RAZER"), (null, "LOGITECH"), (null, "REDRAGON");

-- insertar datos en la tabla proveedores
INSERT INTO proveedores (id_proveedor,marca_id, nombre, contacto, telefono, email, direccion)
VALUES 
(null,1 , "Carlos", "AMD", "5772145831", "lpallasch0@vistaprint.com", "560 Norway Maple Crossing"), 
(null,2 , "Juan", "INTEL", "1057864407", "jcamplejohn1@webmd.com", "449 Pearson Point"), 
(null,3 , "Santiago", "ASUS", "1427730599", "amccarrell2@bloglovin.com", "3 Arizona Plaza"), 
(null,4 , "Federico", "ASROCK", "8145280221", "kfantin3@google.com", "423 Hoepker Drive"), 
(null,5 , "Pablo", "GIGABYTE", "7385028762", "afonte4@hibu.com", "9567 Mifflin Hill"), 
(null,6 , "Mauro", "X RADEON", "4222948562", "ahalliday5@ow.ly", "5593 Mayfield Lane"), 
(null,7 , "Martin", "GEIL", "3896311263", "golivera6@pcworld.com", "80599 Dapin Parkway"), 
(null,8 , "Santino", "TEAM", "1428011566","agladtbach7@quantcast.com", "44 Independence Way"), 
(null,9 , "Joel", "PATRIOT VIPER", "3122040351", "eklebes8@cmu.edu", "8 Mallory Hill"), 
(null,10 , "Agustin", "WD", "5498668564", "anecolds9@sun.com", "5 Maywood Circle"), 
(null,11 , "Leonel", "ADATA", "6362343399", "ariplya@npr.org", "23812 Oakridge Alley"), 
(null,12 , "Rafael", "COOLER MASTER", "4842398187", "tbrumhamb@paginegialle.it", "65892 Monterey Alley"), 
(null,13 , "Emiliano", "CORSAIR", "4604124466", "jpiechnikc@cornell.edu", "227 Green Ridge Junction"), 
(null,14 , "Nahuel", "SAMSUNG", "4984285657", "wlefeaverd@kickstarter.com", "94 Maple Wood Trail"), 
(null,15 , "Cristian", "RAZER", "7746396256", "dmacdonalde@tripadvisor.com", "952 Ridgeway Park"), 
(null,16 , "Gonzalo","LOGITECH", "5724981376", "vrolyf@woothemes.com", "0 Portage Plaza"), 
(null,17 , "Angel", "REDRAGON", "3774664823", "hsalvadoreg@pcworld.com", "65 Armistice Pass");

SAVEPOINT insercion_nuevas_tablas;

-- crear vista envios
CREATE OR REPLACE VIEW datos_envios AS
(SELECT nombre, apellido, direccion FROM clientes);

-- SELECT * FROM datos_envios;

-- crear vista lista de productos
CREATE OR REPLACE VIEW lista_productos AS
SELECT p.id_producto, p.nombre AS producto, p.descripcion, p.precio_venta AS precio, p.stock, c.nombre_categoria AS categoria
FROM productos p 
JOIN categorias c ON p.categoria_id = c.id_categoria;

-- SELECT * FROM lista_productos;

-- crear vista de stock bajo
CREATE OR REPLACE VIEW productos_bajo_stock AS
SELECT p.id_producto, c.nombre_categoria, p.nombre, p.stock
FROM productos p
JOIN categorias c ON p.categoria_id = c.id_categoria
WHERE p.stock < 3;

-- SELECT * FROM productos_bajo_stock;

-- crear vista de venta por cliente
CREATE OR REPLACE VIEW total_ventas_por_cliente AS
SELECT c.id_cliente, c.nombre, c.apellido, SUM(vp.cantidad * p.precio_venta) AS monto_total
FROM clientes c
INNER JOIN ventas v ON c.id_cliente = v.cliente_id
INNER JOIN ventas_productos vp ON v.id_venta = vp.id_venta
INNER JOIN productos p ON vp.id_producto = p.id_producto
GROUP BY c.id_cliente, c.nombre, c.apellido;

-- SELECT * FROM total_ventas_por_cliente;

SAVEPOINT ejecucion_vistas;

-- crear funcion para calcular el total de una venta 
DELIMITER //
CREATE FUNCTION calcular_total_venta(id_venta INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(vp.cantidad * p.precio_venta) INTO total
    FROM ventas_productos vp
    INNER JOIN productos p ON vp.id_producto = p.id_producto
    WHERE vp.id_venta = id_venta;
    RETURN total;
END //
DELIMITER ;

-- SELECT calcular_total_venta(1) AS total_venta;

-- crear funcion para calcular el total gastado por un cliente en especifico
DELIMITER //
CREATE FUNCTION calcular_total_gastado_cliente(cliente_id INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE total_gastado DECIMAL(10,2);
    SELECT SUM(vp.cantidad * p.precio_venta) INTO total_gastado
    FROM ventas v
    INNER JOIN ventas_productos vp ON v.id_venta = vp.id_venta
    INNER JOIN productos p ON vp.id_producto = p.id_producto
    WHERE v.cliente_id = cliente_id;

    RETURN total_gastado;
END //
DELIMITER ;
-- SELECT calcular_total_gastado_cliente(25) AS gasto_total_historial;

SAVEPOINT ejecucion_funciones;

-- crear SP para insertar una venta de un producto con su cantidad
DELIMITER //
CREATE PROCEDURE insertar_venta_producto(
    IN vp_id_venta INT,
    IN vp_id_producto INT,
    IN vp_cantidad INT
)
BEGIN
    INSERT INTO ventas_productos (id_venta, id_producto, cantidad)
    VALUES (vp_id_venta, vp_id_producto, vp_cantidad);
END //
DELIMITER ;

-- CALL insertar_venta_producto (3, 41, 1);

-- crear SP para insertar una nueva compra de un cliente
DELIMITER //
CREATE PROCEDURE insertar_venta(cliente_id INT, total DECIMAL(10,2))
BEGIN
	DECLARE suma_total DECIMAL(10,2);
    SET suma_total = calcular_total_gastado_cliente(cliente_id);
    INSERT INTO ventas (cliente_id, total) 
    VALUES (cliente_id, suma_total);
END //
DELIMITER ;

-- CALL insertar_venta(4, null);

-- crear SP para crear una nueva factura
DELIMITER //
CREATE PROCEDURE insertar_factura(venta_id INT, fecha_emision DATE, forma_pago VARCHAR(50))
BEGIN
    DECLARE total_venta DECIMAL(10,2);
    SET total_venta = calcular_total_venta(venta_id);
    INSERT INTO facturas (venta_id, fecha_emision, total, forma_pago)
    VALUES (venta_id, fecha_emision, total_venta, forma_pago);
END //
DELIMITER ;

-- CALL insertar_factura(3, '2024-08-10', 'Mercado Pago');

-- crear SP para agregar stock de un producto
DELIMITER //
CREATE PROCEDURE insertar_stock(proveedor_id INT, producto_id INT, cantidad INT, fecha_ingreso DATE, marca_id INT)
BEGIN
    INSERT INTO stock (proveedor_id, producto_id, cantidad, fecha_ingreso, marca_id)
    VALUES (proveedor_id, producto_id, cantidad, fecha_ingreso, marca_id);
END //
DELIMITER ;

-- CALL insertar_stock(1, 41, 10, '2024-05-19', 1);

-- crear SP para insertar un nuevo producto
DELIMITER //
CREATE PROCEDURE insertar_producto(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio_compra INT,
    IN p_stock INT,
    IN p_categoria_id INT,
    IN p_marca_id INT
)
BEGIN
    INSERT INTO productos (nombre, descripcion, precio_compra, stock, categoria_id, marca_id)
    VALUES (p_nombre, p_descripcion, p_precio_compra, p_stock, p_categoria_id, p_marca_id);
END //
DELIMITER ;

-- CALL insertar_producto ('ASUS Dual GeForce RTX 4090 16GB', 'Las tarjetas grÃ¡ficas Nvidia son dispositivos de alto rendimiento que permiten la representaciÃ³n y el procesamiento de grÃ¡ficos potentes para su uso en ediciÃ³n de video, videojuegos y otras operaciones informÃ¡ticas complejas.', 800000, 1, 3, 3);

SAVEPOINT ejecucion_SP;

-- crear trigger para actualizar el stock despues de una venta
DELIMITER //
CREATE TRIGGER actualizar_stock_venta
AFTER INSERT ON ventas_productos
FOR EACH ROW
BEGIN
    UPDATE productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;

-- crear trigger para actualizar el stock despues de un ingreso de productos
DELIMITER //
CREATE TRIGGER actualizar_stock_ingreso
AFTER INSERT ON stock
FOR EACH ROW
BEGIN
    UPDATE productos
    SET stock = stock + NEW.cantidad
    WHERE id_producto = NEW.producto_id;
END //
DELIMITER ;

SAVEPOINT ejecucion_triggers;