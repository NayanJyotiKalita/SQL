Joined first

'''
Context:
Bright Tech Solutions is a leading technology firm specializing in innovative software solutions and advanced data analytics. 
The company values understanding workforce dynamics to foster better management and team development.
As a data analyst at Bright Tech Solutions, you are tasked with generating a report that lists the details of employees who joined the company before their managers. 
Understanding the hierarchy and timelines of employee and manager join dates can provide insights into team dynamics and leadership transitions. Analyzing cases where employees joined the company before their managers did can highlight unique mentorship scenarios and organizational adjustments.

Problem Statement:
Write a query to display the details of the employees who joined the company before their managers joined the company.

Result:
Return the columns 'employee_id', 'first_name', and 'last_name'.
Return the result ordered by employee_id in ascending order.
'''

QUERY:

select e1.employee_id, e1.first_name, e1.last_name 
from employees e1 
join employees e2 
on e1.manager_id = e2.employee_id
where e1.hire_date < e2.hire_date
order by e1.employee_id;
