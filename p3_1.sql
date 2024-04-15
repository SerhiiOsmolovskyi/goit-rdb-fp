SELECT
    countries.Entity,
    countries.Code,
    AVG(CAST(NULLIF(infectious_cases.Number_rabies, '') AS DECIMAL(10,2))) AS Avg_Number_rabies,
    MIN(CAST(NULLIF(infectious_cases.Number_rabies, '') AS DECIMAL(10,2))) AS Min_Number_rabies,
    MAX(CAST(NULLIF(infectious_cases.Number_rabies, '') AS DECIMAL(10,2))) AS Max_Number_rabies,
    SUM(CAST(NULLIF(infectious_cases.Number_rabies, '') AS DECIMAL(10,2))) AS Sum_Number_rabies
FROM
    countries
JOIN
    infectious_cases ON countries.ID = infectious_cases.Country_ID
GROUP BY
    countries.Entity,
    countries.Code;
