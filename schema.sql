CREATE TABLE winter (
	winter_id INT PRIMARY KEY,
	year INT,
	city VARCHAR,
	sport VARCHAR,
	discipline VARCHAR,
	athlete VARCHAR,
	country VARCHAR,
	gender VARCHAR,
	event VARCHAR,
	medal VARCHAR
);

CREATE TABLE summer (
	summer_id INT PRIMARY KEY,
	year INT,
	city VARCHAR,
	sport VARCHAR,
	discipline VARCHAR,
	athlete VARCHAR,
	country VARCHAR,
	gender VARCHAR,
	event VARCHAR,
	medal VARCHAR
);

CREATE TABLE countries (
    country_code VARCHAR PRIMARY KEY,
    country VARCHAR,
    population INTEGER,
    gdp_per_capita INTEGER,
);

ALTER TABLE summer ADD CONSTRAINT fk_summer_country_code FOREIGN KEY(country_code)
REFERENCES countries (country_code);

ALTER TABLE winter ADD CONSTRAINT fk_winter_country_code FOREIGN KEY(country_code)
REFERENCES countries (country_code);