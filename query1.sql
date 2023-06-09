SELECT orders.*,(customers.first_name +' ' + customers.last_name) AS customer_name,(staffs.first_name+' '+staffs.last_name) AS staff_name
FROM sales.orders
INNER JOIN sales.customers
ON sales.orders.customer_id=sales.customers.customer_id
INNER JOIN sales.staffs
ON sales.orders.staff_id=sales.staffs.staff_id;

SELECT *
FROM sales.staffs;