Manager left

'''
Context:
In the dynamic environment of StarTech Solutions, employee management requires precise tracking of current employees and their reporting structures.
It’s crucial to identify situations where employees are left without active managers due to managerial turnover.

As a data analyst at StarTech Solutions, your manager has tasked you with generating a report that identifies employees whose salaries 
are below $15000 and who are currently reporting to managers who have left the company. This will help in reassigning these employees to active managers to ensure smooth operations.

Problem Statement:
Write a query to find the employee_id of the employees whose salary is strictly less than $15000 and whose manager left the company.
When a manager leaves the company, their information is deleted from the employees table, but the reporters still have their manager_id set to the manager that left.

Result:
Return the column 'employee_id'
Return the result ordered by employee_id in ascending order.
'''

QUERY:

select a.employee_id
from employees as a
left join employees as b
on a.manager_id = b.employee_id
where a.salary < 15000 
and a.manager_id is not null
and b.employee_id is null
order by 1;
