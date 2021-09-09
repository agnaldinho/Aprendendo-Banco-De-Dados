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

