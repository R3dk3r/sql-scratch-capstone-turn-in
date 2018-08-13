

select *
from survey
limit 10;



select question,
	count(distinct user_id)
  from survey
  group by 1;


  
select *,
count(distinct user_id)
from survey;



select *
from quiz
limit 5;

select *
from home_try_on
limit 5;

select *
from purchase
limit 5;



select distinct q.user_id,
h.user_id IS NOT NULL as 'is_home_try_on',
h.number_of_pairs,
p.user_id IS NOT NULL as 'is_purchase'
from quiz q
left join home_try_on h
	on q.user_id = h.user_id
left join purchase p
	on p.user_id = q.user_id
  limit 10;