CREATE TABLE brewries(
	SALES_ID INT,	
	SALES_REP CHAR(30),
	EMAILS VARCHAR, 	
	BRANDS CHAR(30),	
	PLANT_COST INT,
	UNIT_PRICE INT,
	QUANTITY INT,
	COSTS INT,	
	PROFIT BIGINT,	
	COUNTRIES CHAR(30),	
	REGION CHAR(30),
	MONTHS CHAR(30),
	YEARS INT
);

SELECT * FROM brewries;

1. /*Within the space of the last three years, what was the profit worth of the breweries,inclusive of
the anglophone and the francophone territories?*/

SELECT SUM(profit) AS sum_profit
FROM brewries;

/* Question 2: Compare the total profit between these two territories in order for the territory
manager, Mr. Stone made a strategic decision that will aid profit maximization in 2020.*/

SELECT CASE
WHEN countries = 'Nigeria' THEN 'Anglophone'
WHEN countries = 'Benin' THEN 'Francophone'
WHEN countries = 'Senegal' THEN 'Francophone'
WHEN countries = 'Ghana' THEN 'Anglophone'
WHEN countries = 'Togo' THEN 'Francophone'
END AS region,
SUM(profit) AS sum_profit
FROM brewries
GROUP BY 1
ORDER BY 2 DESC;


-- Question 3: Country that generated the highest profit in 2019. --

SELECT countries, SUM(profit)
FROM brewries
WHERE years = 2019
GROUP BY 1
ORDER BY 2 DESC;

-- Question 4: Help him find the year with the highest profit. --

SELECT years, SUM(profit)
FROM brewries
GROUP BY 1
ORDER BY 2 DESC;

-- Question 5: Which month in the three years was the least profit generated?--

SELECT months, SUM(profit)
FROM brewries
GROUP BY 1
ORDER BY 2;

-- Question 6: What was the minimum profit in the month of December 2018?--

SELECT MIN(profit), months
FROM brewries
WHERE months = 'December' AND years = 2018
GROUP BY 2
ORDER BY 1

-- Question 7: Compare the profit in percentage for each of the month in 2019--

SELECT months, profit_per_month,
((profit_per_month * 100.00)/
(SELECT SUM(profit)
FROM brewries
WHERE years = 2019)) AS percent_profit
FROM
(SELECT SUM(profit) AS profit_per_month, months
FROM brewries
WHERE years = 2019
GROUP BY 2) as sub1;

-- Question 8: Which particular brand generated the highest profit in Senegal?--

SELECT brands, SUM(profit)
FROM brewries
WHERE countries = 'Senegal'
GROUP BY 1
ORDER BY 2 DESC;

--SECTION B: BRAND ANALYSIS--
/*
Question 1: Within the last two years, the brand manager wants to know the top three
brands consumed in the francophone countries
*/
SELECT brands, SUM(quantity)
FROM brewries
WHERE years IN (2019, 2018)
AND countries IN ('Benin', 'Senegal', 'Togo')
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Question 2: Find out the top two choice of consumer brands in Ghana--

SELECT brands, SUM(quantity)
FROM brewries
WHERE countries = 'Ghana'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

/* Question 3: Find out the details of beers consumed in the past three years
in the most oil reached country in West Africa.*/
SELECT brands, region, SUM(quantity)
FROM brewries
WHERE brands NOT ILIKE '%Malt%' AND countries = 'Nigeria'
GROUP BY 1, 2
ORDER BY 3 DESC;

-- Question 4: Favorites malt brand in Anglophone region between 2018 and 2019 --
SELECT brands, SUM(quantity)
FROM brewries
WHERE brands ILIKE '%Malt%'
AND years IN (2018, 2019)
AND countries IN ('Nigeria', 'Ghana')
GROUP BY 1
ORDER BY 2 DESC;

-- Question 5: Which brands sold the highest in 2019 in Nigeria? --
SELECT brands, SUM(quantity)
FROM brewries
WHERE years = 2019 AND countries = 'Nigeria'
GROUP BY 1
ORDER BY 2 DESC;

-- Question 6: Favorites brand in South_South region in Nigeria --
SELECT brands, SUM(quantity)
FROM brewries
WHERE region = 'southsouth' AND countries = 'Nigeria'
GROUP BY 1
ORDER BY 2 DESC;

-- Question 7: Bear consumption in Nigeria --
SELECT brands, SUM(quantity)
FROM brewries
WHERE brands NOT LIKE '%Malt%' AND countries = 'Nigeria'
GROUP BY 1
ORDER BY 2;

-- Question 8: Level of consumption of Budweiser in the regions in Nigeria --
SELECT region, SUM(quantity)
FROM brewries
WHERE brands = 'Budweiser' AND countries = 'Nigeria'
GROUP BY 1
ORDER BY 2 DESC;

/*Question 9: Level of consumption of Budweiser
in the regions in Nigeria in 2019 (Decision on Promo)*/
SELECT region, SUM(quantity)
FROM brewries
WHERE brands = 'Budweiser' AND countries = 'Nigeria' AND years = 2019
GROUP BY 1
ORDER BY 2 DESC;

--COUNTRIES ANALYSIS--

-- Question 1: Country with the highest consumption of beer --
SELECT countries, SUM(quantity)
FROM brewries
WHERE brands NOT LIKE '%Malt%'
GROUP BY 1
ORDER BY 2 DESC;




-- Question 2: Highest sales personnel of Budweiser in Senegal --
SELECT sales_rep, SUM(quantity)
FROM brewries
WHERE brands = 'Budweiser' AND countries = 'Senegal'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;


-- Question 3: Country with the highest profit of the fourth quarter in 2019 --
SELECT countries, SUM(profit)
FROM brewries
WHERE months IN ('October', 'November', 'December') AND years = 2019
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;










































