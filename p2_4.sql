UPDATE infectious_cases
SET Country_ID = (
    SELECT countries.ID
    FROM countries
    WHERE infectious_cases.Entity = countries.Entity AND infectious_cases.Code = countries.Code
)
WHERE Country_ID IS NULL;