Department (No emp)

'''
Context:
Giant Tech is a large multinational company with numerous departments, each responsible for different business functions. 
The company maintains a detailed database of its departments and employees to manage its workforce efficiently. 
Understanding which departments currently do not have any employees can help in resource allocation and organizational restructuring.
As a data analyst at Giant Tech, you are given the task of identifying departments that currently do not have any employees.
This information will be used to review departmental structures and make necessary adjustments.

Problem Statement:
Write a query to display the details of all those departments that dont have any working employees.

Result:
Return the columns 'department_id', and 'department_name'.
Return the results ordered by 'department_id' in ascending order.
'''

QUERY:

select d.department_id, d.department_name 
from departments d 
left join employees e 
on d.department_id = e.department_id 
WHERE e.department_id is null
order by d.department_id;
