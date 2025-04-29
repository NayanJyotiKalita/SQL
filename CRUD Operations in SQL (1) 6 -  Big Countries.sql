Big Countries

A country is big if:

it has an area greater than 300000 km2, AND
it has a population greater than 20000000.

Write an SQL query to report the name, population, and area of the big countries.

Return the resultant table ordered by population in ascending order.

Explanation: Both Maseru and Vitória have area greater than 300000 and population greater than 20000000.

QUERY:

SELECT name,population,area
FROM world
WHERE area>300000
AND population>20000000
order by population asc;
