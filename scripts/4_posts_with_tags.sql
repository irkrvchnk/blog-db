SELECT p.post_id, p.body, GROUP_CONCAT(t.tag)  AS  tags
FROM post p JOIN post_tag pt 
 ON p.post_id = pt.post_id 
JOIN tag t 
 ON pt.tag_id = t.tag_id 
GROUP BY p.post_id;
