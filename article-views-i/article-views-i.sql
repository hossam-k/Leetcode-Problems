# Write your MySQL query statement below
SELECT author_id as id
FROM Views
WHERE author_id = viewer_id
GROUP By author_id
ORDER By author_id