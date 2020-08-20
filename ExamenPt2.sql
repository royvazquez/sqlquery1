select J.Nombre, J.Clave, E.Nombre, E.IdEntrenador, EQ.IdEquipo, eq.Nombre
from JUGADOR J
join entrenador E on TEMPORADA.IdEntrenador=E.IdEntrenador
join Equipo Eq on TEMPORADA.IdEquipo=eq.IdEquipo
join TEMPORADA on jugador.Clave=Temporada.Clave

SELECT JUGADOR.Nombre, EQUIPO.Nombre, Temporada.Temporada
from JUGADOR, Equipo, TEMPORADA
where Temporada.Clave=JUGADOR.Clave and Temporada.IdEquipo=EQUIPO.IdEquipo and (JUGADOR.Clave = 5 or JUGADOR.Clave = 2)

Select J.Nombre, EQUIPO.Nombre, Temporada.Temporada
from Equipo, temporada, (select nombre, clave
                         from JUGADOR
                         where JUGADOR.Clave = 5 or JUGADOR.Clave = 2) J
where Temporada.Clave=J.Clave and Temporada.IdEquipo=EQUIPO.IdEquipo

select J.Clave, J.Nombre, E.Goles, COUNT(TEMPORADA.Temporada) AS 'temporada'
from JUGADOR J, ESTADISTICA E, TEMPORADA
where J.Clave=Temporada.Clave and E.Jugador=J.Clave
group by J.Clave, J.Nombre, e.Goles
order by j.Clave asc

select J.Nombre, count (TEMPORADA.Temporada)
from JUGADOR J, TEMPORADA
where J.Clave=Temporada.Clave
group by J.Nombre

SELECT E.Nombre, 
from ENTRENADOR E
Left join TEMPORADA on E.IdEntrenador=TEMPORADA.IdEntrenador
WHERE TEMPORADA.IdEntrenador IS NULL

SELECT E.Nombre, EQUIPO.Nombre as 'nombre equipo', Temporada.Temporada
from ENTRENADOR E
Left join TEMPORADA on E.IdEntrenador=TEMPORADA.IdEntrenador
Left join EQUIPO on Temporada.IdEquipo = EQUIPO.IdEquipo
WHERE TEMPORADA.IdEntrenador IS NULL

select J.Nombre, J.Clave
from JUGADOR J 
where j.Clave=3

union 

select E.Nombre, E.IdEntrenador
from ENTRENADOR E
where E.IdEntrenador=1

union 

select EQUIPO.Nombre, EQUIPO.IdEquipo
from EQUIPO
where EQUIPO.IdEquipo=3

Select J.Nombre, E.Goles, J.[Estatura(m)], J.Edad
from JUGADOR J 
JOIN (select goles, jugador from ESTADISTICA) E on J.Clave = e.Jugador
join (select max (edad) 'max', min (edad) 'min' from jugador) F on J.Edad=F.max or J.Edad=F.min
order by E.Goles DESC



select max (edad) 'max', min (edad) 'min' from JUGADOR