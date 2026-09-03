-- Data Science Skills --

select candidate_id
from candidates
group by candidate_id
having sum(
  (case when skill = 'Python' then 1 else 0 end) +
  (case when skill = 'Tableau' then 1 else 0 end) +
  (case when skill = 'PostgreSQL' then 1 else 0 end)
) = 3
order by candidate_id asc;
