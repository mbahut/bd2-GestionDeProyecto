/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/

drop procedure rendicionDeHOras;
delimiter $$
create procedure RendicionDeHoras (in legajo int, in proyecto int,  in horas int, in FechaInicio date, in FechaFin date)
BEGIN

		insert into horasProyecto (idproyecto, horas, fechaInicio,fechafin, legajo)
        values (proyecto,horas,fechainicio,fechafin,legajo);

END $$

