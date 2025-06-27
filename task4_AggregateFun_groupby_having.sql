-- Use the Ecommerce database
USE Ecommerce;

-- 1. SUM: Total quantity ordered per order
SELECT order_id, SUM(quantity) AS total_quantity
FROM OrderDetails
GROUP BY order_id;

-- 2. COUNT: Number of orders placed by each customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id;

-- 3. AVG: Average stock of all products
SELECT AVG(stock) AS average_stock
FROM Products;

-- 4. GROUP BY: Products grouped by stock value
SELECT stock, COUNT(*) AS number_of_products
FROM Products
GROUP BY stock;

-- 5. HAVING: Orders where total quantity > 1
SELECT order_id, SUM(quantity) AS total_quantity
FROM OrderDetails
GROUP BY order_id
HAVING SUM(quantity) > 1;
