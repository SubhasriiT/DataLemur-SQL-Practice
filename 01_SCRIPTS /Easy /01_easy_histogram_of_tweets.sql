-- Histogram of Tweets --

with cte AS (
  select user_id, count(tweet_id) as tweet_num
  from tweets
  where EXTRACT(YEAR FROM tweet_date) = '2022'
  group by user_id
)

select tweet_num as tweet_bucket, count(user_id) as users_num
from cte
group by tweet_num;
