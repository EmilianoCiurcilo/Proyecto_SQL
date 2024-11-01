-- borrar esquema
drop schema if exists demtech;
-- crear esquema
create schema if not exists demtech;
-- usar la DB creada
USE demtech;

-- crear tabla categorias
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(50) NOT NULL
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
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
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
    id_cliente INT NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- crear tabla intermedia ventas_productos
CREATE TABLE ventas_productos (
    id_venta INT,
    id_producto INT,
    cantidad INT,
    PRIMARY KEY (id_venta, id_producto),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- crear vista envios
CREATE OR REPLACE VIEW datos_envios AS
(SELECT nombre, apellido, direccion FROM clientes);

-- SELECT * FROM datos_envios;

-- crear vista de stock bajo
CREATE OR REPLACE VIEW productos_bajo_stock AS
SELECT p.id_producto, c.nombre_categoria, p.nombre, p.stock
FROM productos p
JOIN categorias c ON p.id_categoria = c.id_categoria
WHERE p.stock < 3;

-- SELECT * FROM productos_bajo_stock;

-- crear vista de venta por cliente
CREATE VIEW total_ventas_por_cliente AS
SELECT c.id_cliente, c.nombre, c.apellido, SUM(vp.cantidad * p.precio_venta) AS total_ventas
FROM clientes c
INNER JOIN ventas v ON c.id_cliente = v.id_cliente
INNER JOIN ventas_productos vp ON v.id_venta = vp.id_venta
INNER JOIN productos p ON vp.id_producto = p.id_producto
GROUP BY c.id_cliente, c.nombre, c.apellido;

-- SELECT * FROM total_ventas_por_cliente

-- crear funcion para calcular el total de una venta 
DELIMITER //
CREATE FUNCTION calcular_total_venta(id_venta INT)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT SUM(vp.cantidad * p.precio_venta) INTO total
    FROM ventas_productos vp
    INNER JOIN productos p ON vp.id_producto = p.id_producto
    WHERE vp.id_venta = id_venta;
    RETURN total;
END //
DELIMITER ;

-- SELECT calcular_total_venta(2) AS total_venta;

-- crear funcion para encontrar el nombre del producto segun su ID
DELIMITER //
CREATE FUNCTION obtener_nombre_producto(id_producto INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE nombre_producto VARCHAR(100);
    SELECT nombre INTO nombre_producto FROM productos WHERE id_producto = id_producto;
    RETURN nombre_producto;
END //
DELIMITER ;

-- SELECT obtener_nombre_producto(7) AS nombre_producto; ME DA ERROR
-- select nombre from productos where id_producto = 7; ESTO DEBERIA DAR

-- crear SP para insertar un nuevo producto
DELIMITER //
CREATE PROCEDURE insertar_producto(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_precio_compra INT,
    IN p_stock INT,
    IN p_id_categoria INT
)
BEGIN
    INSERT INTO productos (nombre, descripcion, precio_compra, stock, id_categoria)
    VALUES (p_nombre, p_descripcion, p_precio_compra, p_stock, p_id_categoria);
END //
DELIMITER ;

-- CALL insertar_producto ('ASUS Dual GeForce RTX 4090 16GB', 'Las tarjetas grÃ¡ficas Nvidia son dispositivos de alto rendimiento que permiten la representaciÃ³n y el procesamiento de grÃ¡ficos potentes para su uso en ediciÃ³n de video, videojuegos y otras operaciones informÃ¡ticas complejas.',
-- 800000, 1, 3);
-- SELECT * FROM productos

-- crear SP para insertar los productos vendidos y la cantidad
DELIMITER //
CREATE PROCEDURE insertar_venta_producto(
    IN p_id_venta INT,
    IN p_id_producto INT,
    IN p_cantidad INT
)
BEGIN
    INSERT INTO ventas_productos (id_venta, id_producto, cantidad)
    VALUES (p_id_venta, p_id_producto, p_cantidad);
END //
DELIMITER ;

-- CALL insertar_venta_producto (2, 41, 1);

-- crear SP para insertar una nueva venta
DELIMITER //
CREATE PROCEDURE insertar_venta(IN id_cliente INT)
BEGIN
    DECLARE total_venta INT;
    SET total_venta = calcular_total_venta(LAST_INSERT_ID());
    INSERT INTO ventas (id_cliente, total) VALUES (id_cliente, total_venta);
END //
DELIMITER ;

-- CALL insertar_venta(2);

-- crear Trigger para actualizar el stock de nuestros productos
DELIMITER //
CREATE TRIGGER actualizar_stock_venta
AFTER INSERT ON ventas_productos
FOR EACH ROW
BEGIN
    UPDATE productos SET stock = stock - NEW.cantidad WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;

-- SELECT stock FROM productos WHERE id_producto = 7; 

