CREATE VIEW Details
AS	
	SELECT product_name,production.products.list_price AS product_price,model_year ,((sales.order_items.list_price*quantity)-discount) AS total_sales,(sales.order_items.list_price-production.products.list_price) AS revenue
	FROM production.products
	INNER JOIN sales.order_items
	ON production.products.product_id=sales.order_items.product_id

/* SELECT ((list_price*quantity)-discount) AS total_sales FROM sales.order_items;

SELECT * FROM production.products;
SELECT * FROM sales.order_items WHERE product_id=1; */
SELECT * FROM Details;