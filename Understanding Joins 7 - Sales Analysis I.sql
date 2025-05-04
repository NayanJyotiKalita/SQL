Sales Analysis I

'''
Consider a database with the following tables:
Sales: sale_id (Integer, Primary Key), product_id (Integer), customer_id (Integer), employee_id (Integer), sale_amount (Integer)
Products: product_id (Integer, Primary Key), product_name (Text), category_id (Integer)
Customers: customer_id (Integer, Primary Key), customer_name (Text), city (Text)
Employees: employee_id (Integer, Primary Key), employee_name (Text), department_id (Integer)

Write an SQL query to retrieve the sale ID, product name, customer name, employee name, and sale amount for all sales. Include details about the product, customer, and employee.

Return the output ordered by sale_amount in descending order.
'''

QUERY:

SELECT 
    S.sale_id,
    P.product_name,
    C.customer_name,
    E.employee_name,
    S.sale_amount
FROM 
    Sales S
INNER JOIN 
    Products P ON S.product_id = P.product_id
INNER JOIN 
    Customers C ON S.customer_id = C.customer_id
INNER JOIN 
    Employees E ON S.employee_id = E.employee_id
ORDER BY
    S.sale_amount DESC;
