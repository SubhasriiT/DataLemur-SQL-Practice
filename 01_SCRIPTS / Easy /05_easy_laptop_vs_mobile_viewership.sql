-- Laptop vs. Mobile Viewership --

with viewers as (
  select
    case when device_type = 'laptop' then 1 else 0 end as laptop,
    case when device_type in ('tablet', 'phone') then 1 else 0 end as mobile
  from viewership
)

select sum(laptop) as laptop_views, sum(mobile) as mobile_views
from viewers;
