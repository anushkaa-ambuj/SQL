select project_id, ROUND(SUM(experience_years)/COUNT(*),2) as average_years
from project
join employee
using (employee_id)
group by project_id