select user_id, IFNULL(ROUND(SUM(action='confirmed')/ COUNT(*),2),0.00) as confirmation_rate
from signups
left join confirmations
using (user_id)
group by user_id