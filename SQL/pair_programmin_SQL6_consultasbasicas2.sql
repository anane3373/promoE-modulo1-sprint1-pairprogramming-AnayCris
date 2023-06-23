SELECT product_name, unit_price, product_id
FROM products
ORDER BY product_id LIMIT 10;

SELECT product_name, unit_price, product_id
FROM products
ORDER BY product_id DESC LIMIT 10 ;

SELECT DISTINCT order_id FROM order_details;

SELECT order_id FROM order_details
WHERE order_id IN (10248, 10249) 
ORDER BY order_id;

SELECT order_id, unit_price * quantity AS ImporteTotal FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

SELECT order_id, unit_price * quantity AS ImporteTotal FROM order_details
WHERE order_id 
ORDER BY ImporteTotal DESC
LIMIT 5 OFFSET 5;










