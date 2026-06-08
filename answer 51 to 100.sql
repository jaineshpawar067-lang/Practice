use data_1_to_50;
select count(*) as total_employees  
from employees ;
select avg(salary) as average_salary 
from employees;
select max(salary) as maximum_salary
from employees;
select min(price) as minimum_price 
from products ;
select country, count(*) as total_customer
from customers 
group by country ;
select sum(total_amount) as total_sales 
from orders ;
select avg(marks) as total_marks 
from students ;
select grade ,count(*) as total_grade
from students 
group by grade ;
select max(total_amount) as highest_amount 
from orders;
select sum(salary) as total_salary 
from employees ;
select department , count(*) as employee_count
from employees 
group by department;
select department ,avg(salary) as avg_salary
from employees 
group by department ;
select customer_id, sum(total_amount) as total_sales 
from orders 
group by customer_id ;
select year(order_date) as order_year 
           , count(*) as total_order 
from orders 
group by year(order_date) ;
select category , count(*) as product_count 
from products 
group by category ;
select department , count(*) as employee_count
from employees 
group by department 
having count(*) < 10;
select grade , avg(marks) as average_grade 
from students 
group by grade 
having avg(marks) > 75;
select customer_id ,count(*) as total_orders
from orders 
group by customer_id
having count(*) > 0;
 select category , avg(price) 
 from products 
 group by category 
 having avg(price) >100;
 select country , count(*)
 from customers 
 group by country 
 having count(*) <100;
 select month(order_date),
sum(total_amount)
from orders
group by month(order_date);
select year(order_date),
sum(total_amount)
from orders 
group by year(order_date)
having sum(total_amount)>10000;
select department , avg(salary)
from employees 
group by department
having avg(salary) >4000;

select  manager_id, count(*) as employee_count
from employees 
group by manager_id;

select grade, max(marks) as max_marks
from students 
group by grade ;
select customer_id ,sum(total_amount)
from orders 
group by customer_id 
having sum(total_amount)>2000;
select  department, sum(salary)
from employees 
group by department;
select department , min(salary)
from employees 
group by department;
select name ,sum(stock)
from products 
group by name;
select id , count(category)
from products 
group by id 
having count(category)>0;  
select name , avg(stock)
from products 
group by name;  
select department, max(salary) as total_max_salary
from employees 
group by department 
having max(salary)>8000;
select country , count(*) 
from customers 
group by country 
having count(*)>1;
select name , count(id)
from students 
group by name 
having count(id)>0;
select id , count(published_year) 
from books
group by id 
having count(published_year)>0;
select created_at , count(*) 
from users 
group by created_at 
having count(*) <6;
select year(age),count(department)
from employees 
group by year(age)
having count(department);
select year(order_date) as year, count(*) 
from orders 
group by year(order_date)
having count(*)>0;
select customer_id , sum(total_amount)
from orders 
group by customer_id
having sum(total_amount);
select category , sum(stock)
from products 
group by category
having sum(stock);
select age , sum(marks)
from students
group by age
having sum(marks);
select name , sum(marks)
from students
group by name 
having sum(marks)>50;
select department , max(salary)
from employees 
group by department 
having max(salary);
select customer_id , min(total_amount)
from orders
group by customer_id
having min(total_amount);
select department , max(age)
from employees
group by department 
limit 3;
select department , avg(age)
from employees 
group by department;
select customer_id , sum(total_amount) as total_spending
from orders 
group by customer_id
order by total_spending desc;
select age , avg(salary) as avg_salary
from employees
group by age 
order by avg_salary desc;
select category , sum(stock) as total_selling 
from products
group by category 
order by total_selling desc;
select department , max(salary) as total_salary
from employees 
group by department 
order by total_salary desc;