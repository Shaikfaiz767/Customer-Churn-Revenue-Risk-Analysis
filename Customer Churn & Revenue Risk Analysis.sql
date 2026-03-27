SELECT COUNT(*) FROM transactions;

SELECT SUM("Revenue") AS total_revenue
FROM transactions;

SELECT 
    "Customer ID",
    SUM("Revenue") AS total_spent
FROM transactions
GROUP BY "Customer ID"
ORDER BY total_spent DESC
LIMIT 10;



SELECT 
    "Country",
    SUM("Revenue") AS total_revenue
FROM transactions
GROUP BY "Country"
ORDER BY total_revenue DESC;


SELECT 
    "Customer ID",
    SUM("Revenue") AS total_spent,
    RANK() OVER (ORDER BY SUM("Revenue") DESC) AS customer_rank
FROM transactions
GROUP BY "Customer ID";


SELECT 
    COUNT(*) AS churned_customers
FROM (
    SELECT 
        "Customer ID",
        MAX(TO_TIMESTAMP("InvoiceDate", 'YYYY-MM-DD HH24:MI:SS')) AS last_purchase
    FROM transactions
    GROUP BY "Customer ID"
) sub
WHERE last_purchase < (
    SELECT MAX(TO_TIMESTAMP("InvoiceDate", 'YYYY-MM-DD HH24:MI:SS')) 
    FROM transactions
) - INTERVAL '90 days';