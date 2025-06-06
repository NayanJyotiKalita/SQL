Sales Analysis II

'''
Consider a database with the following tables:
Sales: sale_id (Integer, Primary Key), product_id (Integer), customer_id (Integer), employee_id (Integer), sale_amount (Integer)
Products: product_id (Integer, Primary Key), product_name (Text), category_id (Integer)
Customers: customer_id (Integer, Primary Key), customer_name (Text), city (Text)
Employees: employee_id (Integer, Primary Key), employee_name (Text), department_id (Integer)

Write an SQL query to fetch the names of the employees who sold ‘Laptop’.

Return the output ordered by employee_name in ascending order.
'''

QUERY:

SELECT DISTINCT E.employee_name
FROM Employees E
INNER JOIN Sales S ON E.employee_id = S.employee_id
INNER JOIN Products P ON S.product_id = P.product_id
WHERE P.product_name = 'Laptop'
ORDER BY E.employee_name;
