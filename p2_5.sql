ALTER TABLE infectious_cases
DROP COLUMN Entity,
DROP COLUMN Code;

ALTER TABLE infectious_cases
MODIFY COLUMN Country_ID INT FIRST;