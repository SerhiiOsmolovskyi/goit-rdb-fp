SELECT
    Year,
    STR_TO_DATE(CONCAT(Year, '-01-01'), '%Y-%m-%d') AS First_day_of_year,
    CURDATE() AS Today_date
FROM
    infectious_cases;