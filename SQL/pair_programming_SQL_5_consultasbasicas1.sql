SELECT employee_id, last_name, first_name 
FROM employees; 

SELECT product_id, product_name, unit_price
FROM products 
WHERE unit_price <= 5; 

SELECT product_id, product_name, unit_price
FROM products 
WHERE unit_price <= 20 
AND unit_price >= 18;

SELECT product_id, product_name, unit_price
FROM products 
WHERE unit_price <= 50 
AND unit_price >= 15;

SELECT product_id, product_name, unit_price
FROM products 
WHERE unit_price IS NULL;

SELECT product_id, product_name, unit_price
FROM products 
WHERE unit_price < 15
AND product_id > 10;

SELECT ship_country
FROM orders;



