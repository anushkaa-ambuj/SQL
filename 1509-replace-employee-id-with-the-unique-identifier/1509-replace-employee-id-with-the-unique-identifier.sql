select unique_id, name
from employees e
left join employeeuni en
on e.id=en.id;