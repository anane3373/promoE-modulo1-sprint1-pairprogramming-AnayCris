CREATE SCHEMA tienda_zapatillas ;

USE tienda_zapatillas ;

CREATE TABLE zapatillas
(id_zapatilla INT NOT NULL AUTO_INCREMENT, 
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatilla)
) ;

CREATE TABLE clientes
(id_cliente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) NOT NULL,
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL,
PRIMARY KEY (id_cliente)
) ;

CREATE TABLE empleados
(id_empleado INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado)
);

CREATE TABLE facturas
(id_factura INT NOT NULL AUTO_INCREMENT,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
PRIMARY KEY (id_factura),
CONSTRAINT fk_id_zapatilla_facturas FOREIGN KEY (id_zapatilla) REFERENCES zapatillas (id_zapatilla) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_id_empleado_facturas FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_id_cliente_facturas FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB ;

-- Pair programming SQL 3. Alteración de tablas.

ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR(45) NOT NULL,
	ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
	MODIFY COLUMN salario FLOAT NOT NULL;

ALTER TABLE clientes
	DROP COLUMN pais;

ALTER TABLE clientes
	MODIFY COLUMN codigo_postal VARCHAR (5)
		CHECK (LENGHT(codigo_postal) = 8);
    
ALTER TABLE facturas
ADD COLUMN total FLOAT;









