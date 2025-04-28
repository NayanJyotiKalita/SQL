Find Customers With Positive Revenue this Year

Write an SQL query to report the unique customers with postive revenue in the year 2021.
Note: Use distinct operator to get unique values.

QUERY:

select distinct customer_id 
from customers
where year=2021 and revenue>0;
