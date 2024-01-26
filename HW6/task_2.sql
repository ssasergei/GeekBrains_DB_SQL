DELIMITER //
CREATE PROCEDURE even_numbers()
BEGIN
	DECLARE n INT DEFAULT 0;
    DROP TABLE IF EXISTS numbers;
    CREATE TABLE numbers (n INT);
    
    WHILE n < 10 DO
    SET n = n + 2;
    INSERT INTO numbers VALUES(n);
    END WHILE;
    
SELECT * FROM numbers;
END //
DELIMITER ; 

CALL even_numbers();