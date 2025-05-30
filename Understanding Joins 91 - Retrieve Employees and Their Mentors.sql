Retrieve Employees and Their Mentors

'''
Consider the database with the following table:
Employees: employee_id (Integer, Primary Key), employee_name (Text), hire_date (Date), mentor_id (Integer)

Write an SQL query to retrieve the names of employees along with the names of their mentors (as 'mentor_name'). 
Include only employees who have mentors, and the mentor relationship is established when an employee is hired within 30 days of their mentor.

Return the output ordered by mentor_name in ascending order.

Note: You may use DATE_ADD() funcion here. The DATE_ADD() function adds a time/date interval to a date and then returns the date.
'''

QUERY:

SELECT 
    E1.employee_name AS employee_name,
    E2.employee_name AS mentor_name
FROM 
    Employees E1
JOIN 
    Employees E2 ON E1.mentor_id = E2.employee_id
WHERE 
    E1.hire_date BETWEEN E2.hire_date AND DATE_ADD(E2.hire_date, INTERVAL 30 DAY)
ORDER BY
    mentor_name;
