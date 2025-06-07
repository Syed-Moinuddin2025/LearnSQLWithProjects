-- INNER JOIN: List all orders with customer and product details
SELECT 
    o.order_id,
    o.order_date,
    c.first_name AS customer,
    p.product_name,
    o.quantity,
    o.sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
