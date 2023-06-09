CREATE VIEW quantityAmount AS
	SELECT production.stocks.quantity AS quantity, ((sales.order_items.quantity * sales.order_items.list_price)-sales.order_items.discount) AS sales_amount
	FROM production.stocks
	INNER JOIN sales.order_items
	ON production.stocks.product_id=sales.order_items.product_id;

SELECT *
FROM quantityAmount;