select *
from habitaciones 
left join reservas on (
habitaciones.id = reservas.Habitaciones_id
)
where reservas.Habitaciones_id is Null
order by reservas.Habitaciones_id