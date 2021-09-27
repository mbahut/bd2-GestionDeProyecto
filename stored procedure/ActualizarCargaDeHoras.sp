/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/

drop procedure ActualizarCargaDeHoras;
delimiter $$
create procedure ActualizarCargaDeHoras ( in plegajo int, in pidproyecto int, in phoras int, in pfechaInicioOld date, in pfechaFinOld date,in pfechaInicioNew date, in pfechaFinNew date)
BEGIN
	 update horasproyecto 
      set horas  = phoras,
	   fechaInicio = pfechaInicioNew,
       fechaFin = pfechaFinNew
	  
     where legajo = plegajo 
      and idproyecto = pidproyecto
      and fechaInicio = pfechaInicioOld
      and fechaFin = pfechaFinOld;
END $$


