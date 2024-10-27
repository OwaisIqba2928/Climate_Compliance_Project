CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(100) UNIQUE NOT NULL,
    continent VARCHAR(50),
    population INTEGER
);

CREATE TABLE emissions (
    emission_id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(country_id),
    year INTEGER,
    carbon_emissions DECIMAL(10, 2),
    methane_emissions DECIMAL(10, 2),
    nitrous_oxide_emissions DECIMAL(10, 2)
);

CREATE TABLE policies (
    policy_id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(country_id),
    policy_name VARCHAR(100),
    policy_type VARCHAR(50),
    start_year INTEGER,
    end_year INTEGER
);

CREATE TABLE renewables (
    renewable_id SERIAL PRIMARY KEY,
    country_id INTEGER REFERENCES countries(country_id),
    year INTEGER,
    renewable_energy_percent DECIMAL(5, 2)
);

INSERT INTO countries (country_name, continent, population)
VALUES
    ('United States', 'North America', 331000000),
    ('China', 'Asia', 1402000000),
    ('India', 'Asia', 1366000000),
    ('Brazil', 'South America', 213000000),
    ('Germany', 'Europe', 83000000),
    ('Australia', 'Oceania', 26000000),
    ('Canada', 'North America', 38000000),
    ('France', 'Europe', 67000000);

INSERT INTO emissions (country_id, year, carbon_emissions, methane_emissions, nitrous_oxide_emissions)
VALUES
    (1, 2021, 5100.00, 101.50, 49.50),
    (1, 2022, 5000.00, 100.50, 50.20),
    (2, 2021, 10500.00, 210.75, 77.10),
    (2, 2022, 10000.00, 200.75, 75.10),
    (3, 2021, 3200.00, 155.25, 62.30),
    (3, 2022, 3000.00, 150.25, 60.30),
    (4, 2021, 1500.00, 90.10, 30.15),
    (4, 2022, 1400.00, 88.05, 29.10),
    (5, 2021, 6000.00, 102.00, 45.00),
    (5, 2022, 5900.00, 100.50, 44.20),
    (6, 2021, 1800.00, 50.75, 22.10),
    (6, 2022, 1700.00, 48.50, 21.00),
    (7, 2021, 2400.00, 55.50, 35.50),
    (7, 2022, 2300.00, 54.25, 34.50),
    (8, 2021, 5400.00, 96.10, 40.15),
    (8, 2022, 5200.00, 94.00, 39.10);

INSERT INTO policies (country_id, policy_name, policy_type, start_year, end_year)
VALUES
    (1, 'Emission Reduction Act', 'Emission Cap', 2020, 2025),
    (2, 'Green Plan', 'Renewable Incentive', 2018, 2025),
    (3, 'Climate Action Policy', 'Emission Cap', 2019, 2023),
    (4, 'Sustainable Development Plan', 'Green Energy Support', 2019, 2024),
    (5, 'Renewable Revolution', 'Renewable Incentive', 2017, 2025),
    (6, 'Climate Future Initiative', 'Emission Cap', 2021, 2026),
    (7, 'Eco-Friendly Framework', 'Green Energy Support', 2020, 2025),
    (8, 'National Green Initiative', 'Emission Cap', 2018, 2025);

INSERT INTO renewables (country_id, year, renewable_energy_percent)
VALUES
    (1, 2021, 19.50),
    (1, 2022, 20.00),
    (2, 2021, 14.50),
    (2, 2022, 15.50),
    (3, 2021, 17.50),
    (3, 2022, 18.00),
    (4, 2021, 45.00),
    (4, 2022, 46.00),
    (5, 2021, 35.50),
    (5, 2022, 36.00),
    (6, 2021, 28.00),
    (6, 2022, 29.00),
    (7, 2021, 23.00),
    (7, 2022, 24.00),
    (8, 2021, 32.50),
    (8, 2022, 33.00);

