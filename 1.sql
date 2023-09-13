select *
from hoteles
where
hoteles.id Not in(
select Categorias_id from categorias
)