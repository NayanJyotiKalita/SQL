Article Views II

'''
Problem Statement:
Write a query to find all the people who viewed more than one article on the same date.

Save the viewer_id as the id.
Return the result sorted by id in ascending order.
'''

QUERY:

SELECT DISTINCT v1.viewer_id AS id
FROM views v1
JOIN views v2
ON v1.viewer_id = v2.viewer_id
AND v1.view_date = v2.view_date
AND v1.article_id != v2.article_id
ORDER BY 1;
