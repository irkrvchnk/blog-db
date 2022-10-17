SELECT a.auth_id, a.fname, a.lname, COUNT(DISTINCT(pt.tag_id)) tag_number
FROM author a
JOIN post p
 ON a.auth_id = p.auth_id
JOIN post_tag pt
 ON p.post_id = pt.post_id
GROUP BY a.auth_id
ORDER BY tag_number DESC
LIMIT 5;
