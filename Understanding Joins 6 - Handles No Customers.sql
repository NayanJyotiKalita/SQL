Handles No Customers

'''
Context:
At GlobalSales Inc., employee performance is often evaluated based on the number of customers they handle.
The company keeps track of employee and customer data in a database. Identifying employees who do not handle any customers can help distribute workloads and improve overall efficiency.
As a data analyst at GlobalSales Inc., your manager has tasked you with identifying employees who do not have any customer assignments.

Problem Statement:
Write a SQL query to find the employee details who handles no customers.

Result:
Use the given customers table.
Return the output ordered by employeeNumber in ascending order.
The salesRepEmployeeNumber column refers to the employeeNumber who made sales to the customers.
'''

QUERY:

SELECT E.employeeNumber, E.firstName, E.lastName
FROM customers C
RIGHT JOIN employees E ON C.salesRepEmployeeNumber = E.employeeNumber
WHERE C.salesRepEmployeeNumber is NULL
ORDER BY E.employeeNumber;
