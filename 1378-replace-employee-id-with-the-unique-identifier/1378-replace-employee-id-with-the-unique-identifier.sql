select unique_id, name
from Employees e left join EmployeeUNI U using (id)
