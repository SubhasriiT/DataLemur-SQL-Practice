-- Average Post Hiatus (Part 1) --

select user_id,
       datediff(max(date(post_date)), min(date(post_date))) as days_between
from posts
where year(post_date) = 2021
group by user_id
having count(post_date) > 1;
