/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/

drop procedure rendicionDeHOras;
delimiter $$
create procedure RendicionDeHoras (in proyecto int, in legajo int, in horas int, in FechaInicio date, in FechaFin date)
BEGIN

		insert into horasProyecto (idproyecto, horas, fechaInicio,fechafin, legajo)
        values (proyecto,horas,fechainicio,fechafin,legajo);

END $$
 
 /* proyecto - legajo - horas - fechaInicio - FechaFin - */
-- call rendicionDeHoras(1,5,8, '2021-09-19','2021-09-20');
