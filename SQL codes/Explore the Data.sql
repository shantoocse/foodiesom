-- ################### Explore The Data Start ###################
USE nub_sql_project;
select * from customers;
select * from restrurent;
select * from orders;
select * from rider;
select * from delivery;

-- ################### Import the data ###################

INSERT INTO rider (rider_id, rider_name, signup) VALUES
(1, 'Rider A', '2024-01-01'),
(2, 'Rider B', '2024-01-02'),
(3, 'Rider C', '2024-01-03'),
(4, 'Rider D', '2024-01-04'),
(5, 'Rider E', '2024-01-05'),
(6, 'Rider F', '2024-01-06'),
(7, 'Rider G', '2024-01-07'),
(8, 'Rider H', '2024-01-08'),
(9, 'Rider I', '2024-01-09'),
(10, 'Rider J', '2024-01-10'),
(11, 'Rider K', '2024-01-11'),
(12, 'Rider L', '2024-01-12'),
(13, 'Rider M', '2024-01-13'),
(14, 'Rider N', '2024-01-14'),
(15, 'Rider O', '2024-01-15'),
(16, 'Rider P', '2024-01-16'),
(17, 'Rider Q', '2024-01-17'),
(18, 'Rider R', '2024-01-18'),
(19, 'Rider S', '2024-01-19'),
(20, 'Rider T', '2024-01-20'),
(21, 'Rider U', '2024-01-21'),
(22, 'Rider V', '2024-01-22'),
(23, 'Rider W', '2024-01-23'),
(24, 'Rider X', '2024-01-24'),
(25, 'Rider Y', '2024-01-25'),
(26, 'Rider Z', '2024-01-26'),
(27, 'Rider AA', '2024-01-27'),
(28, 'Rider AB', '2024-01-28'),
(29, 'Rider AC', '2024-01-29'),
(30, 'Rider AD', '2024-01-30'),
(31, 'Rider AE', '2024-02-01'),
(32, 'Rider AF', '2024-02-02'),
(33, 'Rider AG', '2024-02-03'),
(34, 'Rider AH', '2024-02-04'),
(35, 'Rider AI', '2024-02-05'),
(36, 'Rider AJ', '2024-02-06'),
(37, 'Rider AK', '2024-02-07'),
(38, 'Rider AL', '2024-02-08'),
(39, 'Rider AM', '2024-02-09'),
(40, 'Rider AN', '2024-02-10'),
(41, 'Rider AO', '2024-02-11'),
(42, 'Rider AP', '2024-02-12'),
(43, 'Rider AQ', '2024-02-13'),
(44, 'Rider AR', '2024-02-14'),
(45, 'Rider AS', '2024-02-15'),
(46, 'Rider AT', '2024-02-16'),
(47, 'Rider AU', '2024-02-17'),
(48, 'Rider AV', '2024-02-18'),
(49, 'Rider AW', '2024-02-19'),
(50, 'Rider AX', '2024-02-20');


INSERT INTO delivery (delivery_id, order_id, delivery_status, delivery_time, rider_id) VALUES
(1, 1, 'Delivered', '12:30:00', 1),
(2, 2, 'Delivered', '12:45:00', 2),
(3, 3, 'Delivered', '13:00:00', 3),
(4, 4, 'Pending',   '13:15:00', 4),
(5, 5, 'Delivered', '13:30:00', 5),
(6, 6, 'Delivered', '13:45:00', 6),
(7, 7, 'Pending',   '14:00:00', 7),
(8, 8, 'Delivered', '14:15:00', 8),
(9, 9, 'Delivered', '14:30:00', 9),
(10, 10, 'Delivered', '14:45:00', 10),
(11, 11, 'Pending', '15:00:00', 11),
(12, 12, 'Delivered', '15:15:00', 12),
(13, 13, 'Delivered', '15:30:00', 13),
(14, 14, 'Delivered', '15:45:00', 14),
(15, 15, 'Pending', '16:00:00', 15),
(16, 16, 'Delivered', '16:15:00', 16),
(17, 17, 'Delivered', '16:30:00', 17),
(18, 18, 'Delivered', '16:45:00', 18),
(19, 19, 'Pending', '17:00:00', 19),
(20, 20, 'Delivered', '17:15:00', 20),
(21, 21, 'Delivered', '17:30:00', 21),
(22, 22, 'Pending', '17:45:00', 22),
(23, 23, 'Delivered', '18:00:00', 23),
(24, 24, 'Delivered', '18:15:00', 24),
(25, 25, 'Pending', '18:30:00', 25),
(26, 26, 'Delivered', '18:45:00', 26),
(27, 27, 'Delivered', '19:00:00', 27),
(28, 28, 'Delivered', '19:15:00', 28),
(29, 29, 'Pending', '19:30:00', 29),
(30, 30, 'Delivered', '19:45:00', 30),
(31, 31, 'Delivered', '20:00:00', 31),
(32, 32, 'Pending', '20:15:00', 32),
(33, 33, 'Delivered', '20:30:00', 33),
(34, 34, 'Delivered', '20:45:00', 34),
(35, 35, 'Pending', '21:00:00', 35),
(36, 36, 'Delivered', '21:15:00', 36),
(37, 37, 'Delivered', '21:30:00', 37),
(38, 38, 'Delivered', '21:45:00', 38),
(39, 39, 'Pending', '22:00:00', 39),
(40, 40, 'Delivered', '22:15:00', 40),
(41, 41, 'Delivered', '22:30:00', 41),
(42, 42, 'Pending', '22:45:00', 42),
(43, 43, 'Delivered', '23:00:00', 43),
(44, 44, 'Delivered', '23:15:00', 44),
(45, 45, 'Pending', '23:30:00', 45),
(46, 46, 'Delivered', '23:45:00', 46),
(47, 47, 'Delivered', '10:15:00', 47),
(48, 48, 'Delivered', '10:30:00', 48),
(49, 49, 'Pending', '10:45:00', 49),
(50, 50, 'Delivered', '11:00:00', 50);

-- ################### Check Null Values ###################

SELECT COUNT(*)
FROM customers
WHERE customer_name IS NULL
   OR reg_date IS NULL;

SELECT COUNT(*)
FROM restrurent
WHERE restaurant_name IS NULL
   OR city IS NULL
   OR opening_hour IS NULL;

SELECT COUNT(*)
FROM orders
WHERE order_item IS NULL
   OR order_date IS NULL
   OR order_time IS NULL
   OR order_status IS NULL
   OR total_amount IS NULL;
   
SELECT COUNT(*)
FROM riders
WHERE order_item IS NULL
   OR order_date IS NULL
   OR order_time IS NULL
   OR order_status IS NULL
   OR total_amount IS NULL;
   

-- select count(*) from customers where customer_name is null or reg_date is null;

-- ################### Explore The Data End ###################







