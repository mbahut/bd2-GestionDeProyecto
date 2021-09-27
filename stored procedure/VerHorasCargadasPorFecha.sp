/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/


drop procedure VerHorasCargadasPorFecha;
delimiter $$
create procedure VerHorasCargadasPorFecha (in pfechaMesInicio date, in pfechaMesFin date)
BEGIN
	select h.legajo, h.horas, p.idProyecto, p.nombreProyecto, c.idcliente, C.NombreCliente, h.fechaInicio, h.fechafin From horasProyecto h inner join proyecto p on p.idProyecto = h.idProyecto inner join cliente c ON c.idCliente = p.idCliente
    where  h.fechaInicio >= pfechaMesInicio
    and h.fechaFin <= pfechaMesFin;
END $$

