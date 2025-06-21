New Salary

Context:

Zenith Tech Solutions is a growing software development company. 
The company is reviewing employee compensation and considering salary increases as a way to reward employee performance and stay competitive in the job market,
Zenith Tech is considering a salary increase for all staff. To calculate the potential impact of a salary increase, 
Zenith Tech wants to analyze the effects of a 20% raise for all employees. By analyzing the "New_salary" column, 
Zenith Tech can assess the overall financial implications of a company-wide raise and make an informed decision about salary adjustments. 
This can help them retain valuable talent and attract top performers in the competitive tech industry.

Problem Description:
Write a SQL query to create a new column named "New_salary" within their "employees" table. This column will reflect the adjusted salary after applying a 20% raise to the current salary ("salary").

Steps to calculate the salary increment:
Multiply the current salary by the percentage of the increment.
Divide the result by 100.
Then add the result to the current salary.
Name the column as 'New_Salary'
Round off the 'New_salary'. Use Round() for this.

Result:

Return the columns emp_id, name, salary, and 'New_salary'.
Order the output by the emp_id in ascending order.

QUERY:

select emp_id, name, salary, ROUND(((salary * 20) / 100) + salary) AS New_salary 
from employees order by emp_id;
