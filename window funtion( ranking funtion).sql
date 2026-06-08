use data_1_to_50;
select * , row_number() 
over(partition by name order by salary desc) 
from employees;

select * , rank()
over(order by salary desc)
from employees; 

select * ,dense_rank()
over(order by salary asc)
from employees;

select*, concat( round(percent_rank()
over(order by name asc) *100,2),'%')
from employees;

SELECT
    *,
    CONCAT(
        ROUND(
            PERCENT_RANK() OVER (ORDER BY name ASC) * 100,
            2
        ),
        '%'
    ) AS percentile_rank
FROM employees;

select * ,
 ntile(10) over(order by salary asc)
 from employees;