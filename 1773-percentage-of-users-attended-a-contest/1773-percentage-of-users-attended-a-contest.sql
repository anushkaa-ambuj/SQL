select contest_id , ROUND((COUNT(user_id)*100)/(select COUNT(user_id) from users), 2) as percentage
from register
group by contest_id
order by percentage DESC, contest_id