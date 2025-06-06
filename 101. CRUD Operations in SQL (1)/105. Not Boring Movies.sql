Not Boring Movies

Table: Cinema

Column Name	  Type
     id	       int
   movie	   varchar
description	 varchar
  rating	     int

  - id is the primary key for this table.
  - Each row contains information about the name of a movie, its genre, and its rating.
  - rating is a 2 decimal places float in the range [0, 10]

Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order and id in ascending order.

Note: Use the mod(column_name,number) function to find out an odd-numbered or even-numbered ID.

QUERY:

SELECT id, movie, description, rating
FROM Cinema
WHERE MOD(id, 2) = 1 AND description != 'boring'
ORDER BY rating DESC, id ASC;
