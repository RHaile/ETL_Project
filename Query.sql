
--Show Quantity Gold Medal for Summer Olympic

SELECT country, COUNT(summer_id) AS Gold_Medal_Quantity
FROM summer
JOIN countries ON summer.country_code = countries.country_code
WHERE medal = 'Gold'
GROUP BY country
ORDER BY Gold_Medal_Quantity DESC;


--Show Quantity Gold Medal for Summer Olympic

SELECT country, COUNT(summer_id) AS Silver_Medal_Quantity
FROM summer
JOIN countries ON summer.country_code = countries.country_code
WHERE medal = 'Silver'
GROUP BY country
ORDER BY Silver_Medal_Quantity DESC;

--Show Quantity Gold Medal for Summer Olympic

SELECT country, COUNT(summer_id) AS Bronze_Medal_Quantity
FROM summer
JOIN countries ON summer.country_code = countries.country_code
WHERE medal = 'Bronze'
GROUP BY country
ORDER BY Bronze_Medal_Quantity DESC;


--Show Quantity Gold Medal for Winter Olympic

SELECT country, COUNT(winter_id) AS Gold_Medal_Quantity
FROM winter
JOIN countries ON winter.country_code = countries.country_code
WHERE medal = 'Gold'
GROUP BY country
ORDER BY Gold_Medal_Quantity DESC;


--Show Quantity Gold Medal for Winter Olympic

SELECT country, COUNT(winter_id) AS Silver_Medal_Quantity
FROM winter
JOIN countries ON winter.country_code = countries.country_code
WHERE medal = 'Silver'
GROUP BY country
ORDER BY Silver_Medal_Quantity DESC;

--Show Quantity Gold Medal for Winter Olympic

SELECT country, COUNT(winter_id) AS Bronze_Medal_Quantity
FROM winter
JOIN countries ON winter.country_code = countries.country_code
WHERE medal = 'Bronze'
GROUP BY country
ORDER BY Bronze_Medal_Quantity DESC;


--Count of Medal by countries order by GDP for summer olympic
SELECT countries.country, gdp_per_capita AS GDP, COUNT(medal) AS medal_quantity
FROM summer
JOIN countries ON summer.country_code = countries.country_code
GROUP BY country
ORDER BY GDP DESC;


--Count of Medal by countries order by GDP for winter olympic
SELECT countries.country, gdp_per_capita AS GDP, COUNT(medal) AS medal_quantity
FROM winter
JOIN countries ON winter.country_code = countries.country_code
GROUP BY country
ORDER BY GDP DESC;


--Count of Medal by countries order by population for summer olympic
SELECT countries.country, population, COUNT(medal) AS medal_quantity
FROM summer
JOIN countries ON winter.country_code = countries.country_code
GROUP BY country
ORDER BY population DESC;


--Count of Medal by countries order by population for winter olympic
SELECT countries.country, population, COUNT(medal) AS medal_quantity
FROM winter
JOIN countries ON winter.country_code = countries.country_code
GROUP BY country
ORDER BY population DESC;


--People who joined both summer and winter olympic in same year
SELECT summer.year, summer.athlete, summer.country, summer.gender, summer.city AS Summer_City, summer.sport AS summer_Sport, summer.discipline AS Summer_Discipline, summer.event AS Summer_Event, summer.medal AS Summer_Medal, winter.city AS Winter_City, winter.sport AS Winter_Sport, winter.discipline AS Winter_Discipline, winter.event AS Winter_Event, winter.medal AS Winter_Medal
FROM summer
JOIN winter ON summer.athlete = winter.athlete AND summer.Year = winter.Year;