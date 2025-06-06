Total Amount

Problem Description:

Write a query to calculate the sub_total for each order, return the details of the orderNumber, productCode, and sub_total.

Note : Please ensure to read the sample out explanation.

QUERY:

SELECT 
orderNumber, productCode, 
ROUND((quantityOrdered * priceEach),2) AS sub_total
FROM orderdetails
ORDER BY orderNumber, sub_total DESC;
