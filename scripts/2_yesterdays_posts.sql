SELECT COUNT(post_id) todays_posts_number 
FROM post 
WHERE date BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE();
