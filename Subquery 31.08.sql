/*Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários que têm um gerente e trabalharam em um departamento com sede nos EUA.

select FIRST_NAME, LAST_NAME from employees
where manager_id in (select employee_id
from employees where department_id
in (select department_id from departments where location_id
in (select location_id from locations where country_id= 'US')));
*/ 

 

/* 
 2. Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários que são gerentes.
 
select FIRST_NAME, LAST_NAME from employees
where EMPLOYEE_ID in (select manager_id from employees); */

/* 
3. Escreva uma consulta para encontrar o nome (first_name, last_name) 
e o salário dos funcionários cujo salário é maior que o     salário médio.

select * from employees
where salary > (
select avg(salary) from employees); */

