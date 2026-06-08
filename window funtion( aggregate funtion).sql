use data_1_to_50;
select * ,avg(salary)
over(partition by id,name) as total 
from employees;
select * , sum(id)
over(partition by age,name) as total 
from employees;
select * , min(salary)
over(partition by department) as total 
from employees;
select * , max(salary)
over(partition by department) as total 
from employees;
select * , count(name)
over(partition by departemnt) as total 
from employees;