Retrieve Customers with Specific Name

Consider a database schema for customers with the following table:

Customers: customer_id (Integer, Primary Key) ,first_name (Text), last_name (Text), email (Text)

Write an SQL query to search for customers whose first name is "John" or last name is "Smith," and full name is not ‘John Smith’.

Return the output ordered by customer_id in ascending order.

QUERY:

SELECT customer_id, first_name, last_name, email
FROM Customers
WHERE (first_name = 'John' AND last_name <>'Smith')
   OR  (first_name <> 'John'  AND  last_name ='Smith')
ORDER BY customer_id;
