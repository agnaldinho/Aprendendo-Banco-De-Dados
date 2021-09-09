/*
DELIMITER //
create PROCEDURE getallProducts (
	in total float
)
begin
	select total*2 as total;
end //
DELIMITER ;

call getallproducts(20);
*/

DELIMITER //
create PROCEDURE CountEmployees (
	/*in total float ou */
)
begin
	declare total int default 0;
	select count(*) into total from employees;
    select total;
end //
DELIMITER ;

call CountEmployees(100);

