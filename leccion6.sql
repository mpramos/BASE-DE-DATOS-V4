
--? Encuentra las ventas nacionales e internacionales de cada película.

select P.titulo as pelicula,
	T.ventas_locales, T.ventas_internacionales
from movie as P
JOIN taquilla as T on P.identficacion=T.id_pelicula