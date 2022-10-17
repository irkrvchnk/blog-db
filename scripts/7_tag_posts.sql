SELECT t.tag, COUNT(pt.post_id) tag_frequency
FROM tag t
JOIN post_tag pt
 ON pt.tag_id = t.tag_id
GROUP BY t.tag
ORDER BY tag_frequency DESC;
