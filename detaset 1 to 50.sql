drop database if exists data_1_to_50;
create database data_1_to_50;
use data_1_to_50;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS jobs;

-- ======================
-- STUDENTS TABLE
-- ======================
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade CHAR(1),
    marks INT,
    phone VARCHAR(15)
);

INSERT INTO students VALUES
(1,'Aarav',16,'A',88,'9876543210'),
(2,'Vivaan',17,'B',72,NULL),
(3,'Aditya',18,'A',91,'9876543211'),
(4,'Krishna',15,'C',60,'9876543212'),
(5,'Ishaan',19,'B',76,NULL),
(6,'Arjun',20,'A',95,'9876543213'),
(7,'Sai',14,'D',45,NULL),
(8,'Reyansh',18,'B',80,'9876543214'),
(9,'Atharv',17,'A',89,'9876543215'),
(10,'Kabir',16,'C',58,NULL),
(11,'Rudra',15,'B',70,'9876543216'),
(12,'Om',18,'A',92,'9876543217'),
(13,'Yash',19,'B',74,NULL),
(14,'Dev',20,'A',97,'9876543218'),
(15,'Parth',17,'C',62,'9876543219');

-- ======================
-- EMPLOYEES TABLE
-- ======================
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employees VALUES
(1,'Amit',25,'HR',40000,NULL),
(2,'Neha',30,'IT',60000,1),
(3,'Rahul',28,'Finance',55000,1),
(4,'Anjali',35,'IT',70000,2),
(5,'Arun',29,'HR',50000,1),
(6,'Sneha',32,'Finance',45000,3),
(7,'Ajay',27,'IT',38000,2),
(8,'Priya',31,'Marketing',52000,4),
(9,'Karan',26,'Finance',40000,3),
(10,'Aakash',24,'HR',30000,NULL),
(11,'Ritika',33,'IT',65000,2),
(12,'Suresh',38,'Finance',80000,3),
(13,'Alok',29,'Marketing',47000,8),
(14,'Meena',41,'HR',90000,NULL),
(15,'Ankit',23,'IT',35000,2);

-- ======================
-- PRODUCTS TABLE
-- ======================
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    discontinued BOOLEAN
);

INSERT INTO products VALUES
(1,'Laptop Pro','Electronics',1200,10,FALSE),
(2,'Office Chair','Furniture',150,5,FALSE),
(3,'Phone Pro Max','Electronics',900,0,FALSE),
(4,'Desk','Furniture',250,3,FALSE),
(5,'Keyboard','Electronics',45,20,FALSE),
(6,'Mouse','Electronics',25,0,FALSE),
(7,'Sofa','Furniture',700,2,TRUE),
(8,'Tablet Pro','Electronics',500,7,FALSE),
(9,'Bookshelf','Furniture',180,4,FALSE),
(10,'Monitor','Electronics',300,6,FALSE),
(11,'Printer','Electronics',150,0,TRUE),
(12,'Dining Table','Furniture',850,1,FALSE),
(13,'Headphones Pro','Electronics',80,15,FALSE),
(14,'Wardrobe','Furniture',950,2,FALSE),
(15,'Camera Pro','Electronics',1100,0,FALSE);

-- ======================
-- CUSTOMERS TABLE
-- ======================
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'John Smith','USA'),
(2,'Michael Johnson','Canada'),
(3,'Emma Wilson','India'),
(4,'Olivia Anderson','USA'),
(5,'Daniel Brown','UK'),
(6,'Sophia Jackson','Canada'),
(7,'James Wilson','USA'),
(8,'William Thompson','India'),
(9,'Mason Davidson','Australia'),
(10,'Ethan Anderson','USA'),
(11,'Logan Peterson','Canada'),
(12,'Lucas Robinson','Germany'),
(13,'Henry Johnson','USA'),
(14,'Alexander Wilson','India'),
(15,'Jackson Mason','Canada');

-- ======================
-- ORDERS TABLE
-- ======================
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1,1,'2023-01-15',500),
(2,2,'2023-02-10',1500),
(3,3,'2022-11-21',700),
(4,4,'2023-06-12',2500),
(5,5,'2021-03-18',300),
(6,6,'2023-07-19',1200),
(7,7,'2020-09-09',450),
(8,8,'2023-08-22',980),
(9,9,'2022-12-01',2000),
(10,10,'2023-10-10',150),
(11,11,'2023-11-11',3500),
(12,12,'2019-05-05',220),
(13,13,'2023-03-03',1100),
(14,14,'2021-07-07',780),
(15,15,'2023-12-25',5000);

-- ======================
-- USERS TABLE
-- ======================
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    created_at DATE
);

INSERT INTO users VALUES
(1,'admin','admin@gmail.com','2018-01-01'),
(2,'john1','john@yahoo.com','2021-03-15'),
(3,'sarah','sarah@gmail.com','2019-07-20'),
(4,'mike2','mike@hotmail.com','2022-10-11'),
(5,'rohan','rohan@gmail.com','2017-06-06'),
(6,'alexx','alex@gmail.com','2020-09-09'),
(7,'emma1','emma@yahoo.com','2023-01-01'),
(8,'david','david@gmail.com','2016-12-12'),
(9,'lucas','lucas@gmail.com','2024-04-14'),
(10,'sam12','sam@gmail.com','2015-05-05');

-- ======================
-- BOOKS TABLE
-- ======================
CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    published_year INT
);

INSERT INTO books VALUES
(1,'SQL Basics',2012),
(2,'Advanced SQL',2018),
(3,'Python Guide',2020),
(4,'Data Science 101',2016),
(5,'Machine Learning',2022),
(6,'Algorithms',2014),
(7,'Web Development',2019),
(8,'Database Design',2021),
(9,'Java Fundamentals',2015),
(10,'Cloud Computing',2023);

-- ======================
-- MOVIES TABLE
-- ======================
CREATE TABLE movies (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    rating DECIMAL(2,1)
);

INSERT INTO movies VALUES
(1,'Inception',8.8),
(2,'Interstellar',8.6),
(3,'Titanic',7.9),
(4,'Avatar',7.8),
(5,'The Dark Knight',9.0),
(6,'Joker',8.4),
(7,'Avengers Endgame',8.3),
(8,'The Matrix',8.7),
(9,'Frozen',7.5),
(10,'Parasite',8.6);

-- ======================
-- JOBS TABLE
-- ======================
CREATE TABLE jobs (
    id INT PRIMARY KEY,
    job_title VARCHAR(100)
);

INSERT INTO jobs VALUES
(1,'Software Engineer'),
(2,'Data Analyst'),
(3,'HR Manager'),
(4,'Accountant'),
(5,'Project Manager'),
(6,'Software Engineer'),
(7,'Data Scientist'),
(8,'UI Designer'),
(9,'Business Analyst'),
(10,'HR Manager');

-- =========================================================
-- EXTRA BULK DATA (TO EXCEED 100 ROWS)
-- =========================================================

INSERT INTO students
SELECT id + 100,
       CONCAT('Student', id),
       15 + (id % 6),
       CASE
           WHEN id % 4 = 0 THEN 'A'
           WHEN id % 4 = 1 THEN 'B'
           WHEN id % 4 = 2 THEN 'C'
           ELSE 'D'
       END,
       50 + (id % 50),
       NULL
FROM (
    SELECT 1 id UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
    UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
    UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
) x;

INSERT INTO employees
SELECT id + 100,
       CONCAT('Emp', id),
       22 + (id % 20),
       CASE
           WHEN id % 3 = 0 THEN 'IT'
           WHEN id % 3 = 1 THEN 'HR'
           ELSE 'Finance'
       END,
       30000 + (id * 1000),
       NULL
FROM (
    SELECT 1 id UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
    UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
    UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
) x;

INSERT INTO products
SELECT id + 100,
       CONCAT('Product', id),
       CASE
           WHEN id % 2 = 0 THEN 'Electronics'
           ELSE 'Furniture'
       END,
       20 + (id * 15),
       id % 5,
       FALSE
FROM (
    SELECT 1 id UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
    UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
    UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
) x;

-- TOTAL ROWS > 100
-- Ready for solving all 50 SQL questions.