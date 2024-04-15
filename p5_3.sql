DELIMITER //

DROP FUNCTION IF EXISTS CalculateDiseaseCount //

CREATE FUNCTION CalculateDiseaseCount(disease_count_year INT, divisor INT)
RETURNS DECIMAL(38,0)
DETERMINISTIC
BEGIN
    DECLARE total_disease_count DECIMAL(38,0);
    DECLARE average_disease_count DECIMAL(38,0);
    
    -- Обчислюємо загальну кількість захворювань за рік
    SELECT SUM(CAST(NULLIF(Number_malaria, '') AS DECIMAL(38,0))) INTO total_disease_count
    FROM infectious_cases
    WHERE Year = disease_count_year;
    
    -- Обчислюємо середню кількість захворювань на дільник
    SET average_disease_count = total_disease_count / divisor;
    
    RETURN average_disease_count;
END //

DELIMITER ;
