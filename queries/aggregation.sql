SELECT city,
    SUM(amount) AS total_revenue
FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
GROUP BY city;