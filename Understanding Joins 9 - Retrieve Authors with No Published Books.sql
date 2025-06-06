Retrieve Authors with No Published Books

'''
Consider the database with the following tables:
Authors: author_id (Integer, Primary Key), author_name (Text)
Books: book_id (Integer, Primary Key), book_title (Text), author_id (Integer)

Write an SQL query to retrieve the names of authors who havent published any books.
Include NULL values for book-related columns.

Return the output ordered by author_name in ascending order.
'''

QUERY:

SELECT 
    A.author_id,
    A.author_name,
    B.book_title
FROM 
    Authors A
LEFT JOIN 
    Books B ON A.author_id = B.author_id
WHERE 
    B.book_id IS NULL
ORDER BY
    A.author_name;
