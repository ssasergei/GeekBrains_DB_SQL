DELIMITER //
CREATE PROCEDURE trans_time (sec INT)
BEGIN
	DECLARE days INT DEFAULT 0;
    DECLARE hours INT DEFAULT 0;
    DECLARE mins INT DEFAULT 0 ;
    
    WHILE sec >= 86400 DO
    SET days = sec /86400;
    SET sec = sec % 86400;
    END WHILE;
    
	WHILE sec >= 3600 DO
    SET hours = sec / 3600;
    SET sec = sec % 3600;
	END WHILE;
    
	WHILE sec >= 60 DO
    SET mins = sec / 60;
    SET sec = sec % 60;
    END WHILE;

SELECT days, hours, mins, sec ;
END //
DELIMITER ;

CALL trans_time(123456);