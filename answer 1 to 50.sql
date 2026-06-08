use data_1_to_50;
select * from students;
select * from employees;
select * from products;
select id , salary from employees;
select * from customers 
where country ='usa';
select name,age from students 
where age ='18';
select * from products
where price > 100;
select * from employees 
where department ="hr";
select * from orders
where year(order_date)="2023";
select * from users 
where users.username="admin";
select * from employees 
where salary ="50000";
select * from products 
where stock ='0';
select * from customers 
where country ="india";
select * from students 
where grade ="a";
select * from employees 
where age < "30";
select * from orders 
where total_amount >'1000';
select * from books 
where published_year>'2015';
select * from movies 
where rating > '8';
select * from users 
where email like '%@email.com';
select * from employees 
order by salary asc;
select * from students 
order by marks asc;
select * from customers 
order by name asc;
select * from employees 
order by salary asc 
limit 5;

