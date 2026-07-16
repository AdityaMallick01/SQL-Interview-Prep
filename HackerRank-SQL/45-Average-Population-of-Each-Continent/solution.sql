SELECT t.Continent,
       FLOOR(AVG(c.Population))
FROM CITY c
JOIN COUNTRY t
ON c.CountryCode = t.Code
GROUP BY t.Continent;