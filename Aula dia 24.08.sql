/* 
=Criação do stored=
DELIMITER //
CREATE PROCEDURE getAllProducts() 
BEGIN 
select * from jobs;
END 
//DELIMITER ; */

/*CALL getAllProducts() ;*/

DELIMITER $$
CREATE PROCEDURE GetTotalJobs()
BEGIN 
	DECLARE totalJobs INT DEFAULT 0;
    
    SELECT COUNT(*)
    INTO totalJobs
    FROM Jobs;
    
    SELECT totalJobs;
END $$
DELIMITER ;

CALL GetTotalJobs();