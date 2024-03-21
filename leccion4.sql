--Enumere todos los directores de las películas de Pixar (alfabéticamente), sin duplicados

select  distinct director  
from movie 
order by director

select *
from movie

--Enumere las últimas cuatro películas de Pixar estrenadas (ordenadas de más reciente a menos)
--donde el director sea Juan Lasseter
select *  
from movie 
order by ano DESC LIMIT 4