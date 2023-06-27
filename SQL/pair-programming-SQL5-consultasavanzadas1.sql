SELECT MIN(unit_price) AS lowestPrice, 
MAX(unit_price) AS highestPrice
FROM products;

SELECT COUNT(units_in_stock),
AVG(unit_price)
FROM products;
-- Dudábamos entre units_in_stock o product_id, así que nos hemos decidido por units_in_stock.

SELECT MAX(freight),
MIN(freight)
FROM orders
WHERE ship_country = "UK";

SELECT AVG(unit_price)
FROM products;

SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.86
ORDER BY unit_price DESC;

SELECT COUNT(discontinued)
FROM products
WHERE discontinued = 1;


		
