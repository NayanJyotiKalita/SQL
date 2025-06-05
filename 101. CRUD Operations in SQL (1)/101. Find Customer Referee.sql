Find Customer Referee

Write an SQL query to fetch the names of the customer that are not referred by the customer with id = 102.

QUERY:

SELECT name 
from customer 
where referee_id != 102;
