Human Resources

'''
Problem Statement:
Write a query to find details of the employees who work in the 'Human Resources' department.

Return the columns 'employee_id', 'department_id', 'first_name', 'last_name', 'job_id', and 'department_name'.
Return the result ordered by employee_id in ascending order.
'''

QUERY:

SELECT e.employee_id, e.department_id, e.first_name, e.last_name, e.job_id, d.department_name 
FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
WHERE d.department_name = 'Human Resources'
