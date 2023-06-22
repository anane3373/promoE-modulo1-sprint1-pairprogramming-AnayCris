USE tienda_zapatillas;

INSERT INTO zapatillas (modelo, color, marca, talla)
	VALUES  ("XQYUN", "negro", "Nike", 42),
			("UOPMN", "rosa", "Nike", 39),
            ("OPNYT", "verde", "Adidas", 35);
            
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
	VALUES (1, "Laura", "Alcobendas", 25987, 20100903),
		   (2, "María", "Sevilla", "00000", 20110411),
           (3, "Ester", "Oviedo", 30165.98, 20001129);
           
-- El salario de María queda marcado como 0 porque se desconoce y las columna no puede quedar vacía.


INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES ("Mónica", 1234567289, "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", "28176"),
		   ("Lorena", 289345678, "lorena@email.com", "Calle Alegría", "Barcelona", "Barcelona", "12346"),
           ("Carmen", 298463759, "carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", "23456");
           
INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES (123, 20011211, 1, 2, 1, 54.98),
		   (1234, 20050523, 1, 1, 3, 89.91),
           (12345, 20150918, 2, 3, 3, 76.23);
	
    
UPDATE zapatillas
SET color = "amarillo"
WHERE color = "rosa";
	
UPDATE empleados
SET tienda = "A Coruña"
WHERE tienda = "Alcobendas";

UPDATE clientes
SET numero_telefono = 123456728
WHERE nombre = "Mónica";

UPDATE facturas
SET total = 89.91
WHERE id_zapatilla = 2;