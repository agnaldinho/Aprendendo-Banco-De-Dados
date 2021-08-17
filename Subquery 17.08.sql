-- Escreva uma consulta para encontrar o nome (first_name, last_name) e o salário dos funcionários que têm um salário mais alto do que o funcionário cujo sobrenome = 'Bull'.

select salary from employees where last_name = 'bull';

select 
first_name,last_name,salary
from employees
where SALARY > (select salary from employees where last_name = 'bull')
order by salary desc;
 
-- Escreva uma consulta para encontrar o nome (first_name, last_name) de todos os funcionários que trabalham no departamento de TI.

select DEPARTMENT_ID from departments where DEPARTMENT_NAME = 'IT';

select first_name, last_name, salary
from employees
where DEPARTMENT_ID =/*Ou in*/ (select DEPARTMENT_ID from departments where DEPARTMENT_NAME = 'IT');


