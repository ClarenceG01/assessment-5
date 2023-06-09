SELECT TOP 5 customer_id, COUNT(*) AS total_orders
FROM sales.orders
GROUP BY customer_id;



/*SELECT *
FROM sales.orders
WHERE customer_id=1355; */

