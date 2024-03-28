
--? Encuentra las ventas nacionales e internacionales de cada película.

select P.titulo as pelicula,
	T.ventas_locales, T.ventas_internacionales
from movie as P
JOIN taquilla as T on P.identficacion=T.id_pelicula


--? Muestre las cifras de ventas de cada película que obtuvo mejores resultados a nivel internacional que a nivel nacional.
select P.titulo as pelicula,
	T.ventas_locales, T.ventas_internacionales
from movie as P
JOIN taquilla as T on P.identficacion=T.id_pelicula
where T.ventas_internacionales > T.ventas_locales

--? Enumere todas las películas por clasificación en orden descendente

