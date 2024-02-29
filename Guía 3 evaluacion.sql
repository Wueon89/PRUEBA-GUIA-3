DROP DATABASE if EXISTS Quick_biteBD;
CREATE DATABASE Quick_biteBD;
USE Quick_biteBD;


-- CREACION DE LAS TABLAS 

CREATE TABLE clientes (
  cliente_id varchar(33) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  telefono VARCHAR(10) NOT NULL,
  direccion VARCHAR(255) NOT NULL
);

CREATE TABLE empleados (
  empleado_id varchar(33) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  fecha_contratacion DATE NOT NULL,
  salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE productos (
  producto_id varchar(33) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  existencias INT NOT NULL
);

CREATE TABLE pedidos (
  pedido_id varchar(33) PRIMARY KEY,
  cliente_id varchar(33) NOT NULL,
  fecha_pedido DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  estado VARCHAR(20) NOT NULL,
  empleado_id varchar(33) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
  FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id)
);

CREATE TABLE detalles_pedido (
  detalle_id varchar(33) PRIMARY KEY,
  pedido_id varchar(33) NOT NULL,
  producto_id varchar(33) NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
  FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

-- INSERCCIONES PARA LA TABLA clientes 
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Oscar Móran');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Juan Pérez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Ana Martínez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Laura Gómez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Elena García');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Miguel Pérez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'José Gutiérrez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Martín Fernández');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Pablo Jiménez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Antonio López');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Manuel García');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Javier Pérez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Diego Rodríguez');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Sergio Fernández');
INSERT INTO clientes (cliente_id, nombre) VALUES (UUID(), 'Andrea Martínez');
select*from clientes;

-- Insercciones para la tabla empleados

INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Juan', 'Pérez', 'Gerente', '2023-01-15', 5000.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'María', 'González', 'Asistente de Gerencia', '2023-02-20', 3500.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Pedro', 'López', 'Analista de Marketing', '2023-03-10', 4000.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Ana', 'Martínez', 'Diseñador Gráfico', '2023-04-05', 3800.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Carlos', 'Sánchez', 'Desarrollador de Software', '2023-05-12', 4500.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Laura', 'Gómez', 'Analista de Datos', '2023-06-18', 4200.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Roberto', 'Rodríguez', 'Contador', '2023-07-25', 3800.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Sofía', 'Hernández', 'Recursos Humanos', '2023-08-30', 3700.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Miguel', 'Ruiz', 'Ingeniero de Producción', '2023-09-05', 4800.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Luisa', 'Torres', 'Asistente Administrativo', '2023-10-10', 3500.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'José', 'Gutiérrez', 'Técnico de Soporte', '2023-11-15', 3800.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Carmen', 'Fernández', 'Analista de Finanzas', '2023-12-20', 4000.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Martín', 'Díaz', 'Coordinador de Ventas', '2024-01-25', 4700.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Isabel', 'Vargas', 'Asistente de Marketing', '2024-02-29', 3600.00);
INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
VALUES (UUID(), 'Pablo', 'Núñez', 'Gerente de Proyectos', '2024-03-05', 5200.00);

-- INSERCCIONES PARA LA TABLA productos
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Camisa de algodón', 'Camisa de manga larga, color blanco', 29.99, 50);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Pantalón vaquero', 'Pantalón vaquero azul, estilo clásico', 39.99, 30);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Zapatos de cuero', 'Zapatos de cuero marrón, talla 42', 59.99, 20);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Reloj de pulsera', 'Reloj analógico con correa de acero inoxidable', 79.99, 15);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Bolso de piel', 'Bolso de piel sintética, color negro', 49.99, 25);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Gafas de sol', 'Gafas de sol con montura de metal, cristales polarizados', 34.99, 40);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Cartera de cuero', 'Cartera de cuero genuino, color marrón', 19.99, 35);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Bufanda de lana', 'Bufanda de lana suave, color gris', 14.99, 60);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Guantes de piel', 'Guantes de piel de oveja, color negro', 24.99, 45);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Sombrero de fieltro', 'Sombrero de fieltro de alta calidad, color marrón', 49.99, 18);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Bufanda de seda', 'Bufanda de seda estampada, color azul', 29.99, 30);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Pulsera de plata', 'Pulsera de plata esterlina con diseño de cadena', 64.99, 22);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Anillo de oro', 'Anillo de oro de 18 quilates con diamante', 199.99, 10);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Billetera de cuero', 'Billetera de cuero genuino, color negro', 29.99, 28);
INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias) VALUES (UUID(), 'Corbata de seda', 'Corbata de seda tejida, color rojo', 19.99, 50);

-- INSERCCIONES PARA LA TABLA pedidos
INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Andrea Martínez'), '2024-11-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Pablo'));
INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Sergio Fernández'), '2014-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Isabel')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Oscar Móran'), '2018-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Juan')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Juan Pérez'), '2019-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='María')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Ana Martínez'), '2020-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Miguel')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Laura Gómez'), '2021-01-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Carlos')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Elena García'), '2022-02-12', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Laura')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='José Gutiérrez'), '2023-01-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Roberto')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Martín Fernández'), '2022-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Sofía')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Pablo Jiménez'), '2023-02-28', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Miguel')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Antonio López'), '2024-02-04', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Luisa')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Manuel García'), '2024-01-08', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='José')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Javier Pérez'), '2024-05-24', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Carmen')); 
 INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
VALUES (UUID(), (select cliente_id from clientes where nombre='Diego Rodríguez'), '2024-03-18', 100.00, 'En Proceso',
 (select empleado_id from empleados where nombre='Martín')); 

-- INSERCCIONES PARA LA TABLA detalle_pedido

INSERT INTO detalles_pedido (detalle_id, pedido_id, producto_id, cantidad, precio_unitario, subtotal)
VALUES (UUID(), (select pedido_id from pedidos where fecha_pedido='2024-03-18'), 
 (select producto_id from productos where nombre='Camisa de algodón'),12,10,20); 
 
-- Insercciones con el procedimiento almacenado
 
 DELIMITER //
CREATE PROCEDURE InsertarCliente(IN p_cliente_id VARCHAR(36), IN p_nombre VARCHAR(50), IN p_apellido VARCHAR(50), IN p_telefono VARCHAR(10), IN p_direccion VARCHAR(255))
BEGIN
  INSERT INTO clientes (cliente_id, nombre, apellido, telefono, direccion)
  VALUES (UUID(), p_nombre, p_apellido, p_telefono, p_direccion);
END//

 call InsertarCliente(UUID(), 'Teresa', 'Ricgonzanles','23456','A saber')
 -- Insercciones con el procedimiento almacenado

DELIMITER $$
CREATE PROCEDURE InsertarEmpleado(
    IN p_empleado_id VARCHAR(36),
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_cargo VARCHAR(50),
    IN p_fecha_contratacion DATE,
    IN p_salario DECIMAL(10,2)
)
BEGIN
    INSERT INTO empleados (empleado_id, nombre, apellido, cargo, fecha_contratacion, salario)
    VALUES (UUID(), p_nombre, p_apellido, p_cargo, p_fecha_contratacion, p_salario);
END$$
DELIMITER ;

call InsertarEmpleado(UUID(),'martinez','peña','licenciado','20/02/24','23.00');
select * from empleados;

DELIMITER //
CREATE PROCEDURE InsertarProducto(IN p_producto_id VARCHAR(36), IN p_nombre VARCHAR(100), IN p_descripcion VARCHAR(100), IN p_precio DECIMAL(10,2), IN p_existencias INT)
BEGIN
  INSERT INTO productos (producto_id, nombre, descripcion, precio, existencias)
  VALUES (UUID(), p_nombre, p_descripcion, p_precio, p_existencias);
END//
DELIMITER ;

call InsertarProducto(UUID(),'telefono','movil de alta gama','20.00','23');
select * from productos;

DELIMITER //
CREATE PROCEDURE InsertarPedido(IN p_pedido_id VARCHAR(36),IN p_cliente_nombre VARCHAR(50), IN p_fecha_pedido DATE,
IN p_total DECIMAL(10,2),IN p_estado VARCHAR(36),IN p_empleado_nombre VARCHAR(50))
BEGIN
    DECLARE p_id_cliente VARCHAR(36);
    DECLARE p_id_empleado VARCHAR(36);

    -- Obtener la ID del cliente
    SELECT cliente_id INTO p_id_cliente FROM clientes WHERE nombre = p_cliente_nombre;

    -- Obtener la ID del empleado
    SELECT empleado_id INTO p_id_empleado FROM empleados WHERE nombre = p_empleado_nombre;

    -- Insertar el pedido utilizando las IDs obtenidas
    INSERT INTO pedidos (pedido_id, cliente_id, fecha_pedido, total, estado, empleado_id)
    VALUES (p_pedido_id, p_id_cliente, p_fecha_pedido, p_total, p_estado, p_id_empleado);
END//
DELIMITER ;

call InsertarPedido(UUID(),'Andrea Martínez','2020-02-13','20','activo','Carlos');

-- Creación del trigger que descuente automaticamente las existencias de un producto cuando este sea comprado

DELIMITER //
CREATE TRIGGER actualizar_existencias AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE productos
    SET existencias = existencias - NEW.cantidad
    WHERE producto_id = NEW.producto_id;
END//
DELIMITER ;
