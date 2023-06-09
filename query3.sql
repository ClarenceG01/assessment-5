CREATE PROCEDURE Orders @customer_id int
AS 
	SELECT order_id 
	FROM sales.orders 
	WHERE customer_id=@customer_id;
;
EXEC Orders @customer_id=259

SELECT * FROM sales.order_items;


