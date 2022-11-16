--Data Creation--

-- create Database to store the data --
CREATE DATABASE dannys_diner

-- create schema to store the data --
CREATE SCHEMA dannys_diner;

-- Use Database dannys_diner --
use dannys_diner

-- create sales table that consists customer_id, order_date and product_id --
CREATE TABLE sales (
  "customer_id" VARCHAR(1),
  "order_date" DATE,
  "product_id" INTEGER
);

-- inserting data into the sales table --
INSERT INTO sales
  ("customer_id", "order_date", "product_id")
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 
-- create menu table that consists product_id, product_name and price --
CREATE TABLE menu (
  "product_id" INTEGER,
  "product_name" VARCHAR(5),
  "price" INTEGER
);

-- inserting data into the menu table --
INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  
-- create members table that consists customer_id and join_date --
CREATE TABLE members (
  "customer_id" VARCHAR(1),
  "join_date" DATE
);

-- inserting data into the members table --
INSERT INTO members
  ("customer_id", "join_date")
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');

-- Table Creation end check the tables which we made just now --
SELECT *
FROM members;

SELECT *
FROM menu;

SELECT *
FROM sales;

-- END --