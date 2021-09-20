/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

Luego de implementar la BBDD y los SP, se pueden ejecutar las siguients lineas
*/

-- TABLAS

select * from cliente;
select * from proyecto;
select * from empleados;
select * from horasproyecto;
select * from liquidacion;


/* VER LAS HORAS CARGADAS EN LA TABLA HORASPROYECTO
 fecha Ini - Fecha fin */
 call VerHorasCargadasPorFecha ('2021-09-01' ,'2021-09-30');


 /* REALIZAR LA CARGA DE HORA POR PROYECTO, LEGAJO Y HORAS SEGUN FECHA 

 proyecto - legajo - horas - fechaInicio - FechaFin - */
 call rendicionDeHoras(1,5,8, '2021-09-19','2021-09-20');
 
 /*
 call rendicionDeHoras(1,5,8,  '2021-09-06','2021-09-07');
 call rendicionDeHoras(4,10,8, '2021-09-13','2021-09-14');
 call rendicionDeHoras(7,12,16,'2021-09-18','2021-09-20');
 call rendicionDeHoras(8,12,8, '2021-09-17','2021-09-18');
 call rendicionDeHoras(9,5,8,  '2021-09-17','2021-09-19');
 call rendicionDeHoras(2,16,8, '2021-09-20','2021-09-21');

*/



/* REALIZAR LIQUIDACION DE HORAS POR PROYECTO Y CLIENTE
/* Usuario, Cliente, Proyecto, fecha liquidacion Mes inicio y Fecha Mes fin 
	4 - administrador (usuario valido) */

 call CalcularLiquidacionMensual(4,1,1, '2021-09-01','2021-09-30');
 
 
/*  ACTUALIZAR LAS HORAS POR LEGAJO - PROYECTO 
legajo, horas, idproyecto, fechaInicio, FechaFin*/
 call ActualizarCargaDeHoras (10, 8, 1,'2021-09-21' ,'2021-09-22');


/*
# legajo, horas, idProyecto, nombreProyecto, idcliente, NombreCliente, fechaInicio, fechafin
'5'		, '8.00', '1'		, 'PowerProject'	, '1', 'PowerCenter', 		'2021-09-06', '2021-09-07'
'10'	, '8.00', '4'		, 'Hipotecas'		, '4', 'Banco Hipotecario', '2021-09-13', '2021-09-14'
'12'	, '16.00', '7'		, 'Credito UVA'		, '4', 'Banco Hipotecario', '2021-09-18', '2021-09-20'
'12'	, '8.00', '8'		, 'Itau TC'			, '5', 'Banco Itau'			, '2021-09-17', '2021-09-18'
'5'		, '8.00', '9'		, 'Libre Inversion'	, '6', 'Mercado Libre'		, '2021-09-17', '2021-09-19'
'16'	, '8.00', '2'		, 'FravegaPro'		, '2', 'Fravega'			, '2021-09-20', '2021-09-21'

*/



