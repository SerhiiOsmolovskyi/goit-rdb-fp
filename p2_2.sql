ALTER TABLE pandemic.infectious_cases
ADD COLUMN Country_ID INT,
ADD FOREIGN KEY (Country_ID) REFERENCES pandemic.countries(ID);