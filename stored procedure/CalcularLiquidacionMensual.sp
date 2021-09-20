/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

para una fecha dada, el Procedimiento verifica si ya se realizó la liquidacion del mes.
si  hay diferencias, se calcula  la diferencia e inserta un registro nuevo en la tabla liquidacion

*/

drop procedure CalcularLiquidacionMensual;
delimiter $$
create procedure CalcularLiquidacionMensual (in psuario int, in pidCliente int, in pidProyecto int, pfechaMesInicio date, pfechaMesFin date)
BEGIN
	declare vResultadoHoras decimal(10,2);
    declare vResultadoHorasNuevaLiq decimal(10,2);
    declare vcanths decimal (10,2);
    declare vDiferenciaDeHs Decimal (10,2);
    declare vmesliq int DEFAULT 0 ;
    declare vmesliq2 int ;
    
				set vmesliq = (select fechaliquidacion  from liquidacion where fechaliquidacion =  month(pfechaMesInicio)  group by fechaliquidacion); /******* averiguo si ya se liquido el mes */  
                if isnull(vmesliq) then set vmesliq = 0; end if;     /**** si no hay liquidacion, seteamos en 0 */ 
				set vmesliq2 = month(pfechaMesInicio);               /*********** Mes que se intenta Liquidar por parametro */ 
                
          
    IF vmesliq != vmesliq2 THEN  /* validamos si la liquidacion ya se hizo y si hay diferencias en la rendicion de horas */ 
    select vmesliq;
    select vmesliq2;
	/* ROl 4 autorizado para realizar la liquidacion */ 
				IF psuario = 4 then 
			
					/* calculo  las horas que hay en horasproyecto  */
					set vResultadoHoras= (select sum(horas) from horasproyecto h, proyecto p
						where  h.idProyecto = pidProyecto 
						and    p.idProyecto = pidProyecto
						and    p.idCliente = pidCliente
						and    h.fechaInicio >=  pfechaMesInicio
						and    h.fechaFin <= pfechaMesFin);

						insert into liquidacion (idCliente, idProyecto, CantidadHoras,valor, fechaliquidacion)
						values (pidCliente,pidProyecto,vResultadoHoras,vResultadoHoras * 150, MONTH(pfechaMesInicio));
						  
				ELSE
						select "usuario no valida para realizar liquidación";
				END IF; 
    ELSE
						/* calculo de nuevo las horas que hay en horasproyecto para determinado proyecto */
								set vResultadoHorasNuevaLiq = (select sum(horas) from horasproyecto h, proyecto p
											where h.idProyecto = pidProyecto 
											and  p.idProyecto = pidProyecto
											and  p.idCliente = pidCliente
											and h.fechaInicio >=  pfechaMesInicio
											and h.fechaFin <= pfechaMesFin);
                                            
                         /* consulto cuantas horas hay para la liquidacion del mes liquidado */     
                                  set vcanths =( select CantidadHoras from liquidacion where idCliente =pidCliente and idproyecto = pidProyecto);
                                 
					IF vcanths != vResultadoHorasNuevaLiq THEN
                    
							set vDiferenciaDeHs = (vcanths - vResultadoHorasNuevaLiq);
										
							insert into liquidacion (idCliente, idProyecto, CantidadHoras,valor, fechaliquidacion)
							values (pidCliente,pidProyecto,vDiferenciaDeHs,vDiferenciaDeHs * 150, MONTH(pfechaMesInicio));
					END IF;
                    
	END IF;
END $$

/* Usuario, Cliente, Proyecto, fecha liquidacion Mes inicio y Fecha Mes fin 
4 - administrador (usuario valido) */

-- call CalcularLiquidacionMensual(4,1,1, '2021-09-01','2021-09-30');


                        
                        