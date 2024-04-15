ALTER TABLE pandemic.countries MODIFY COLUMN Code VARCHAR(10);

INSERT INTO pandemic.countries (Entity, Code)
SELECT DISTINCT Entity, Code FROM pandemic.infectious_cases;