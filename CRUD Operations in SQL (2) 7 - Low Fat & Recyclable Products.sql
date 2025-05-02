Low Fat & Recyclable Products

'''
Problem Statement:
Write a query to find the ids of products that are both low-fat and recyclable.
Return the result table ordered by product_id in ascending order.
'''

QUERY:

SELECT product_id
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y'
ORDER BY product_id;
