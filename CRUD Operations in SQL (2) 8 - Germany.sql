Germany

'''
Problem Statement:
Write a query to fetch customer details like customerName, phone, addressLine1, city, state, and postalCode who are not from Germany.
Return the result ordered by customerName in ascending order.
'''

QUERY:

select customerName, phone, addressline1, city, state, postalcode
from customers
where country <> 'Germany'
order by customerName;
