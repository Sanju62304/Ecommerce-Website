create database ecommerce_db;
use ecommerce_db;

create table products(
id INT PRIMARY KEY,
cost DECIMAL(10,2),
category VARCHAR(255),
name VARCHAR(255),
brand VARCHAR(100),
retail_price DECIMAL(10,2),
department VARCHAR(100),
sku VARCHAR(50),
distribution_center_id INT
);
create table distribution_centers(
id INT PRIMARY KEY,
name VARCHAR(255),
latitude DOUBLE,
longitude DOUBLE
);

create table inventory_items(
id INT PRIMARY KEY,
product_id INT,
created_at DATETIME,
sold_at DATETIME,
cost DECIMAL(10,2),
product_category VARCHAR(255),
product_name VARCHAR(255),
product_brand VARCHAR(100),
product_retail_price DECIMAL(10,2),
product_department VARCHAR(100),
product_sku VARCHAR(50),
product_distribution_center_id INT
);
Drop table if exists order_items;
create table order_items(
id INT PRIMARY KEY,
order_id INT,
user_id INT,
product_id INT,
inventory_item_id INT,
status VARCHAR(50),
created_at VARCHAR(50),
shipped_at VARCHAR(50),
delivered_at VARCHAR(50),
returned_at VARCHAR(50),
sale_price DECIMAL(10,2)
);

create table orders(
id INT PRIMARY KEY,
user_id INT,
status VARCHAR(50),
gender VARCHAR(10),
created_at VARCHAR(50),
returned_at VARCHAR(50),
shipped_at VARCHAR(50),
delivered_at VARCHAR(50),
num_of_item INT
);

create table users(
id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(255),
age INT,
gender VARCHAR(10),
state VARCHAR(100),
street_address TEXT,
postal_code VARCHAR(20),
city VARCHAR(100),
country VARCHAR(100),
latitude DOUBLE,
longitude DOUBLE,
traffic_source VARCHAR(100),
created_at DATETIME
);

LOAD DATA LOCAL INFILE 'C:\Users\sanju\Downloads\archive\archive\products.csv' INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show databases;
select * FROM products LIMIT 10;
ALTER TABLE order_items
ADD COLUMN sale_price DECIMAL(10,2);
select * FROM inventory_items LIMIT 10;
Alter table users modify column postal_code VARCHAR(50);

