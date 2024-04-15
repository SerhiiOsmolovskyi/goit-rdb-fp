SELECT
    Year,
    CalculateYearDifference(Year) AS Year_difference
FROM
    infectious_cases;
