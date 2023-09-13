select *
from particulares
left join reservas on (
particulares.id = particulares.id
)