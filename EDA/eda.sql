USE houseprice_beijing;

#Data Cleaning
SELECT *
FROM houseprice;

-- duplicates
SELECT id
FROM (
	SELECT id,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS row_num
    FROM houseprice
    ) duplicates
WHERE row_num > 1
;

-- Clean floor
SELECT floor
FROM houseprice;

UPDATE houseprice
SET floor = TRIM(REGEXP_SUBSTR(floor, ' .+'));

-- price
SELECT price, totalPrice
FROM houseprice
WHERE price = 0 OR price = '' OR price IS NULL OR totalPrice = 0 OR totalPrice = '' OR totalPrice IS NULL;

#EDA
-- Location
SELECT district, COUNT(district)
FROM houseprice
GROUP BY district
ORDER BY COUNT(district) DESC;

SELECT district, ROUND(AVG(totalPrice),2), ROUND(AVG(followers),2)
FROM houseprice
GROUP BY district
ORDER BY ROUND(AVG(totalPrice),2);

SELECT subway, ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY subway;


-- Time
SELECT YEAR(tradeTime), COUNT(YEAR(tradeTime))
FROM houseprice
GROUP BY YEAR(tradeTime);

SELECT YEAR(tradeTime), ROUND(AVG(followers),2)
FROM houseprice
GROUP BY YEAR(tradeTime);

SELECT constructionTime, ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY constructionTime;

-- ammenities 
SELECT livingRoom,
ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY livingRoom
ORDER BY ROUND(AVG(totalPrice),2);

SELECT floor, COUNT(floor), ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY floor
ORDER BY ROUND(AVG(totalPrice),2);

SELECT renovationCondition, ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY renovationCondition
ORDER BY ROUND(AVG(totalPrice),2);

SELECT *,
NTILE(4) OVER (ORDER BY square) AS Quartile
FROM houseprice;

SELECT Quartile, ROUND(AVG(totalPrice),2)
FROM (
	SELECT *,
	NTILE(4) OVER (ORDER BY square) AS Quartile
	FROM houseprice
    ) quartile_table
GROUP BY Quartile;

SELECT buildingType, ROUND(AVG(totalPrice),2)
FROM houseprice
GROUP BY buildingType
ORDER BY ROUND(AVG(totalPrice),2);

