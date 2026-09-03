-- Teams Power Users --

select sender_id, count(message_id) as message_count
from messages
where year(sent_date) = 2022 and month(sent_date) = 8
group by sender_id
order by sender_id desc
limit 2;
