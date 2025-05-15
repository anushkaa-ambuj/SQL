select customer_id, COUNT(customer_id) as count_no_trans
from visits
left join transactions
using(visit_id)
where transaction_id is NULL
group by customer_id;