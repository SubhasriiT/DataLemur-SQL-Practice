-- Page With No Likes --

select p.page_id
from pages p
left join page_likes pl on p.page_id = pl.page_id
where pl.liked_date is NULL
order by p.page_id asc;
