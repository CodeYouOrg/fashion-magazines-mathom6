SELECT customers.customer_name AS 'Customer', (subscriptions.price_per_month * subscriptions.price_per_month) AS 'Amount Due'
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id
INNER JOIN subscriptions
ON subscriptions.subscription_id = orders.subscription_id
WHERE subscriptions.description = 'Fashion Magazine'
AND orders.order_status = 'unpaid'
GROUP BY customers.customer_id;