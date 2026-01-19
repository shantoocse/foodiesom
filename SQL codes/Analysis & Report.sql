-- ############### Analysis And Report Section Start ###############

use nub_sql_project;

-- Q.1: Write a query to find the top 5 most frequesntly ordered dished by customer called "Customer_4" in the last 1 year.

-- How I Solve this problem

		-- join cx and orders 
		-- filter the data for last 1 year
		-- filer 'customer_4'
		-- group by cx id, dishes, cnt

SELECT 
    customer_name,
    dishes,
    total_orders
FROM (
    SELECT 
        c.customer_id, 
        c.customer_name, 
        o.order_item AS dishes, 
        COUNT(*) AS total_orders,
        DENSE_RANK() OVER (ORDER BY COUNT(o.order_id) DESC) AS rnk
    FROM orders AS o
    JOIN customers AS c ON c.customer_id = o.customer_id
    WHERE o.order_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
      AND c.customer_name = 'customer_4'
    GROUP BY 1, 2, 3
) AS t1
WHERE rnk <= 5;
SELECT DATE_SUB(CURDATE(), INTERVAL 1 YEAR);


-- This will check if customer_4 has placed any orders in the last 2 days.
SELECT COUNT(*) 
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_name = 'customer_4'
AND o.order_date >= DATE_SUB(CURDATE(), INTERVAL 2 DAY);



-- 2: Popular Time Slots
-- Questions: Identity the time slots during which the most order are placed. based on two hour intervals.

SELECT 
    CASE
        WHEN HOUR(order_time) BETWEEN 0 AND 1 THEN '00:00 - 02:00'
        WHEN HOUR(order_time) BETWEEN 2 AND 3 THEN '02:00 - 04:00'
        WHEN HOUR(order_time) BETWEEN 4 AND 5 THEN '04:00 - 06:00'
        WHEN HOUR(order_time) BETWEEN 6 AND 7 THEN '06:00 - 08:00'
        WHEN HOUR(order_time) BETWEEN 8 AND 9 THEN '08:00 - 10:00'
        WHEN HOUR(order_time) BETWEEN 10 AND 11 THEN '10:00 - 12:00'
        WHEN HOUR(order_time) BETWEEN 12 AND 13 THEN '12:00 - 14:00'
        WHEN HOUR(order_time) BETWEEN 14 AND 15 THEN '14:00 - 16:00'
        WHEN HOUR(order_time) BETWEEN 16 AND 17 THEN '16:00 - 18:00'
        WHEN HOUR(order_time) BETWEEN 18 AND 19 THEN '18:00 - 20:00'
        WHEN HOUR(order_time) BETWEEN 20 AND 21 THEN '20:00 - 22:00'
        WHEN HOUR(order_time) BETWEEN 22 AND 23 THEN '22:00 - 00:00'
    END AS time_slot,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY time_slot
ORDER BY order_count DESC;

-- select 00:59:59AM -- 0
-- select 01:59:59AM -- 1
-- 0


-- 3: Order Value Analysis
-- Questions: Identy the time slots during which the most order are placed more than 7 orders
-- return customer_name and aov(average order value)

SELECT 
    c.customer_name,
    AVG(o.order_amount) AS aov,
    CASE
        WHEN HOUR(o.order_time) BETWEEN 0 AND 1 THEN '00:00 - 02:00'
        WHEN HOUR(o.order_time) BETWEEN 2 AND 3 THEN '02:00 - 04:00'
        WHEN HOUR(o.order_time) BETWEEN 4 AND 5 THEN '04:00 - 06:00'
        WHEN HOUR(o.order_time) BETWEEN 6 AND 7 THEN '06:00 - 08:00'
        WHEN HOUR(o.order_time) BETWEEN 8 AND 9 THEN '08:00 - 10:00'
        WHEN HOUR(o.order_time) BETWEEN 10 AND 11 THEN '10:00 - 12:00'
        WHEN HOUR(o.order_time) BETWEEN 12 AND 13 THEN '12:00 - 14:00'
        WHEN HOUR(o.order_time) BETWEEN 14 AND 15 THEN '14:00 - 16:00'
        WHEN HOUR(o.order_time) BETWEEN 16 AND 17 THEN '16:00 - 18:00'
        WHEN HOUR(o.order_time) BETWEEN 18 AND 19 THEN '18:00 - 20:00'
        WHEN HOUR(o.order_time) BETWEEN 20 AND 21 THEN '20:00 - 22:00'
        WHEN HOUR(o.order_time) BETWEEN 22 AND 23 THEN '22:00 - 00:00'
    END AS time_slot
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name, time_slot
HAVING COUNT(o.order_id) > 7
ORDER BY aov DESC;




-- 4: High value Customers
-- Questions: List the customers who have spent more than 100k in total on food orders.
-- return customer_name and customer_id

SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.order_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.order_amount) > 100000;

-- 5: Order With Delivery
-- Question - Write a query to find orders that were placed but not delivered
-- Return each restrurant name, city and number of not delivered orders.

SELECT r.restaurant_name,
       r.city,
       COUNT(o.order_id) AS not_delivered_orders
FROM restaurants r
JOIN orders o
    ON r.restaurant_id = o.restaurant_id
WHERE o.order_status != 'Delivered'
GROUP BY r.restaurant_name, r.city;




-- ######################### These are the Feature that we will Update in Future. #########################

-- Question no. 06
-- Restaurant Revenue Ranking
-- Rank restrurents by their enutotal erve from the last year, including their name,
-- totall revenue amd rank within their city




-- Question no. 07
-- Most popular dish by city
-- Identify the most popular dish in each city based on the number or orders.


-- Question no. 08
-- Find customers who haven't placed an order in 2024 but did in 2023.

-- Question no. 09
-- Calculate and compare the order cancellation rate for each restaurant between the current year and the previous year.


-- Question no. 10
-- Riders Average Delivery time
-- Determine each riders average delivery time.


-- ############### Analysis And Report Section End ###############
