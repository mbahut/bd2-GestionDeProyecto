/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

Para la fecha indicada, el Procedimiento verifica si ya se realizó la liquidacion del mes
si  hay diferencias, se calcula  la diferencia e inserta un registro nuevo en la tabla liquidacion

*/

drop procedure CalcularLiquidacionMensual;
delimiter $$
create procedure CalcularLiquidacionMensual (in psuario int, 
											 in pidCliente int, 
											 in pidProyecto int, 
											 pfechaMesInicio date, 
											 pfechaMesFin date)
BEGIN
	declare vResultadoHoras decimal(10,2);
    declare vResultadoHorasNuevaLiq decimal(10,2);
    declare vDiferenciaDeHs Decimal (10,2);
    declare HorasLiquidadasOLD Decimal (10,2);
    declare HorasLiquidadasNEW Decimal (10,2);
                
                /* Verificamos HORAS en tabla LIQUIDACION para Cliente y Proyecto indicado*/
				set HorasLiquidadasOLD  =( select sum(CantidadHoras) 
											from liquidacion 
											where idCliente =pidCliente 
											and idproyecto = pidProyecto
											and fechaliquidacion =  month(pfechaMesInicio)); 
                                            
                /* si no hay liquidacion, seteamos en 0 */
                 if isnull(HorasLiquidadasOLD) then set HorasLiquidadasOLD = 0; end if; 
				
                /* Verificamos cuantas HORAS hay para Liquidar del Cliente y Proyecto Indicado en la tabla HORASPROYETO*/
				set HorasLiquidadasNEW = (select sum(horas) from horasproyecto h, proyecto p
											where h.idProyecto = pidProyecto 
											and  p.idProyecto = pidProyecto
											and  p.idCliente = pidCliente
											and h.fechaInicio >=  pfechaMesInicio
											and h.fechaFin <= pfechaMesFin);
                
				
		IF psuario = 4 then /* ROl 4 autorizado para realizar la liquidacion */ 
			IF HorasLiquidadasOLD = 0 THEN  /* Si no hay Liquidacion para el proyecto y cliente indicado, procedemos a Insertar las horas */ 

								insert into liquidacion (idCliente, idProyecto, CantidadHoras, valor, fechaliquidacion)
								values (pidCliente,pidProyecto,HorasLiquidadasNEW,HorasLiquidadasNEW * 150, MONTH(pfechaMesInicio));	  
			ELSE
			
								/* Calculamos la diferencia de las HORAS ya liquidadas con la nueva cantidad de horas */ 
									set vDiferenciaDeHs = (HorasLiquidadasNEW - HorasLiquidadasOLD);
												
									insert into liquidacion (idCliente, idProyecto, CantidadHoras,valor, fechaliquidacion)
									values (pidCliente,pidProyecto,vDiferenciaDeHs,vDiferenciaDeHs * 150, MONTH(pfechaMesInicio));
						
			   
			END IF;
		ELSE
			select "usuario no valido para realizar liquidación";
		END IF; 
END $$

