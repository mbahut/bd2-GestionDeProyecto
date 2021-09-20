/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/

drop procedure ActualizarCargaDeHoras;
delimiter $$
create procedure ActualizarCargaDeHoras (in plegajo int, in phoras int, in pidproyecto int, in pfechaInicio date, in pfechaFin date)
BEGIN
	 update horasproyecto 
      set horas  = phoras
     where legajo = plegajo 
      and idproyecto = pidproyecto
      and fechaInicio = pfechaInicio
      and fechaFin = pfechaFin;
END $$

/* legajo, horas, idproyecto, fechaInicio, FechaFin*/
-- call ActualizarCargaDeHoras (10, 8, 1,'2021-09-21' ,'2021-09-22');