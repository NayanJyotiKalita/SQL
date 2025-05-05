Combine Unique Customers from Two Tables

'''
Consider the database with the following tables:
Customers1: customer_id (Integer, Primary Key), customer_name (Text)
Customers2: customer_id (Integer, Primary Key), customer_name (Text)

Write an SQL query to combine all unqiue entries from Customers1 and Customers2.

Return the output ordered by customer_name in descending order.
'''

QUERY:

SELECT customer_id,customer_name FROM Customers1
UNION
SELECT customer_id,customer_name FROM Customers2
ORDER BY 
customer_name DESC;
