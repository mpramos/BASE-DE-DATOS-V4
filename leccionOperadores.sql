--Encuentra todas las películas de Toy Story

select * 
from movie 
where titulo LIKE 'Toy Story%'

--Encuentra todas las películas dirigidas por Juan Lasseter
select titulo, ano as anio
from movie
where director LIKE 'Juan Lasseter'
--Encuentra todas las películas (y directores) no dirigidas por John Lasseter
select titulo,director, ano as anio
from movie
where director NOT LIKE 'Juan Lasseter'
--Encuentra todas las películas de WALL-*

