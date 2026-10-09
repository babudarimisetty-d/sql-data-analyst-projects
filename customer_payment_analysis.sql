-- Customer Payment Analysis
-- Database: Sakila
-- Purpose: Summarize customer payment activity

SELECT
    customer_id,
    COUNT(*) AS total_payments,
    SUM(amount) AS total_amount,
    AVG(amount) AS average_payment
FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC;
