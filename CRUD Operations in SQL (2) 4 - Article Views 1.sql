Article Views 1

Write an SQL query to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.

QUERY:

SELECT DISTINCT viewer_id AS id
FROM views
WHERE viewer_id = author_id
ORDER BY id;
