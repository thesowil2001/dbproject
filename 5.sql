select *
from habitaciones
left join plantas on (
habitaciones.id = plantas.id
)