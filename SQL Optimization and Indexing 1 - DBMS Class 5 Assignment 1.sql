DBMS Class 5 Assignment 1

'''
Query Optimization Basics
NOTE: You need to use test database and orders table. Before attempting the questions make sure to login into mysql server using the below command:

mysql -u user -p***@123!
Objective:
Learn the basics of query optimization by identifying inefficient queries and improving their performance in MySQL.

Instructions:
Task 1: Analyze a Slow Query

You are provided with a query that retrieves all orders placed by customers in the last month from the orders table.

Execute the given query in the terminal and analyze its performance.

-- Provided query
SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH;
Write a query to ana Task 2: Optimize the Query

Create an index named idx_assignment_2_task_2 on order_date to improve the performance of the query.
'''

QUERY:

'''In the terminal: '''

EXPLAIN SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL 1 MONTH;
CREATE INDEX idx_assignment_2_task_2 ON orders(order_date);
