
--! encuentra el title de cada pelicula
select titulo from movie
select titulo as title from movie

--! encuentra el dicrector de cada pelicula
select director from movie

--! Encuentra el titledirector de cada película:
select titulo || '-' || director as titledirector from movie
select titulo || '👨‍🦰' || director as titledirector from movie

--! Encuentra el titleyear de cada película:
select titulo || '  ' || ano as titleyear from movie

--! Encuentra all la información de cada película:
select * from movie