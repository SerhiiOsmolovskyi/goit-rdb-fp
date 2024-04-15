DELIMITER //

DROP FUNCTION IF EXISTS CalculateYearDifference //

CREATE FUNCTION CalculateYearDifference(year_value INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE current_year INT;
    DECLARE year_difference INT;
    
    SET current_year = YEAR(CURDATE());
    SET year_difference = current_year - year_value;
    
    RETURN year_difference;
END //

DELIMITER ;


