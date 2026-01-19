###### NUB Food Delivery Project by useing SQL Start ########

use nub_sql_project;

drop table if exists orders;
drop table if exists customers;
drop table if exists restrurent;
drop table if exists rider;
drop table if exists delivery;

############################## Customer Table Design Start ##############################
create table customers(

customer_id int PRIMARY KEY,
customer_name varchar(100),
reg_date date
);

############################## Customer Table Design End ##############################

############################## Restrurent Table Design start ##############################

create table restrurent(

restaurant_id int PRIMARY KEY,
restaurant_name varchar(100),
city varchar(50),
opening_hour varchar(50)

);

############################## Restrurent Table Design End ##############################

############################## Customers Order table design start ##############################

create table orders(

	order_id int PRIMARY KEY,
    customer_id int,	-- This is comeing from customer table
    restrurent_id int NOT NULL,	-- This is comeing from restrurent table
    order_item varchar(50),
    order_date date,
    order_time time,
    order_status varchar(20),
    total_amount int

);

-- ############################## Adding Fk Constrant  End ##############################

-- ############################## Adding Fk Constrant from Order table  Start ##############################

alter table orders
add constraint fk_customers
foreign key (customer_id)
references customers(customer_id);

-- ############################## Adding Fk Constrant from restrurent  Start ##############################
alter table orders
add constraint fk_restrurents
foreign key (restrurent_id)
references restrurent(restaurant_id);

-- ############################## Adding Fk Constrant  End ##############################



############################## Customers Order table design End ##############################

############################## Rider table design Start ##############################

create table rider(

rider_id int primary key,
rider_name varchar(100),
signup date

);

############################## Rider table design End ##############################

############################## Delivery Status table design Start ##############################
drop table if exists delivery;
create table delivery(

delivery_id int primary key,
order_id int,	-- This is comeing from order table
delivery_status varchar(15),
delivery_time time,
rider_id int,	-- This is comeing from rider table

-- ############################## Adding FK constrant ##############################

constraint fk_orders foreign key(order_id) references orders(order_id),
constraint fk_riders foreign key(rider_id) references rider(rider_id)

);

############################## Delivery Status table design End ##############################

############################## NUB Food Delivery Project by useing SQL End ##############################