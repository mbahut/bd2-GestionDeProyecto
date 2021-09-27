 /*
 ################################################
 ## 1 ) INSERTAR INPUT HASTA LA LINEA 42       ##  
 ## 2 ) luego continuar de la linea 173 al 188 ##
 ## 3 ) continuar de la linea 198 al 203       ##
 ## 3) continuar con la linea 215 a 225        ##
 ################################################
 
 
  SEPTIEMBRE
  Lun - MAR - MIE - JUE - VIE 
              01  - 02  - 03
  04  - 05  - 06  - 07  - 08
  13  - 14  - 15  - 16  - 17
  20  - 21  - 22  - 23  - 24
  27  - 28  - 29  - 30 
  
  legajo -  proyecto - horas - fechaInicio - FechaFin */
  
call rendicionDeHoras(5,1,24,'2021-09-01','2021-09-04');
call rendicionDeHoras(5,7,40,'2021-09-06','2021-09-11');
call rendicionDeHoras(5,1,40,'2021-09-13','2021-09-18');
call rendicionDeHoras(5,5,8 ,'2021-09-20','2021-09-21');
call rendicionDeHoras(5,1,32,'2021-09-21','2021-09-25');
call rendicionDeHoras(5,5,8,'2021-09-27','2021-09-28');

call rendicionDeHoras(10,2,8 ,'2021-09-01','2021-09-02');
call rendicionDeHoras(10,8,40,'2021-09-06','2021-09-11');
call rendicionDeHoras(10,3,40,'2021-09-13','2021-09-18');
call rendicionDeHoras(10,6,40,'2021-09-20','2021-09-25');

call rendicionDeHoras(12,3 ,24,'2021-09-01','2021-09-04');
call rendicionDeHoras(12,4 ,8 ,'2021-09-06','2021-09-07');
call rendicionDeHoras(12,9 ,32,'2021-09-07','2021-09-11');
call rendicionDeHoras(12,8 ,40,'2021-09-13','2021-09-18');
call rendicionDeHoras(12,10,8 ,'2021-09-17','2021-09-18');
call rendicionDeHoras(12,7 ,40,'2021-09-20','2021-09-25');
call rendicionDeHoras(12,8 ,32,'2021-09-27','2021-10-01');

call rendicionDeHoras(15,5,40,'2021-09-20','2021-09-25');


call rendicionDeHoras(16,6, 24,'2021-09-01','2021-09-04');
call rendicionDeHoras(16,10,40,'2021-09-06','2021-09-11');
call rendicionDeHoras(16,3, 40,'2021-09-13','2021-09-18');

/*
 LEGAJO 5
                PROYECTO VS HORAS
       PROYECTO 1  | 24hs
       PROYECTO 1  | 40hs
       PROYECTO 1  | 32 hs
                    ====SubTOTAL 96
       PROYECTO 7  | 40hs
                    ====SubTOTAL 40
       PROYECTO 5  | 8hs
       PROYECTO 5  | 8hs
                    ====SubTOTAL 16

                ## TOTAL = 152hs 
*/
---------------------------------------------------------------------------------------
/*
LEGAJO 10
                PROYECTO VS HORAS
       PROYECTO 2 | 8hs
                    ====SubTOTAL 8
       PROYECTO 8 |40hs
                    ====SubTOTAL 40
       PROYECTO 3 |40 hs
                    ====SubTOTAL 40
       PROYECTO 6 |40 hs
                    ====SubTOTAL 40

                ## TOTAL = 128hs
*/
---------------------------------------------------------------------------------------
/*
LEGAJO 12
                PROYECTO VS HORAS
       PROYECTO 3  | 24hs
                    ====SubTOTAL 24
       PROYECTO 4  | 8hs
                    ====SubTOTAL 8
       PROYECTO 9  | 32 hs
                    ====SubTOTAL 32
       PROYECTO 8  |40 hs
       PROYECTO 8  | 32 hs
                    ====SubTOTAL 72
       PROYECTO 10 | 8 hs
                    ====SubTOTAL 8
       PROYECTO 7 | 40 hs
                    ====SubTOTAL 40

                ## TOTAL = 184hs
*/
---------------------------------------------------------------------------------------
/*
LEGAJO 15
                PROYECTO VS HORAS
                PROYECTO 5 | 40hs
                    ====SubTOTAL 40

                ## TOTAL = 40hs
*/
---------------------------------------------------------------------------------------
/*
LEGAJO 16   PROYECTO VS HORAS   
              
            PROYECTO 6 | 24hs
                    ====SubTOTAL 24
            PROYECTO 10| 40hs
                    ====SubTOTAL 40
            PROYECTO 3 |40 hs
                    ====SubTOTAL 40

              ## TOTAL = 104hs
*/
---------------------------------------------------------------------------------------
                    /*
### HORAS ANTES Y DESPUES POR # LEGAJO #

                    Legajo 5  | 152 horas | 176 horas    
                    Legajo 10 | 128 horas | 160 horas
                    Legajo 12 | 184 horas | 176 horas
                    Legajo 15 | 40 horas  | 8 horas.
                    Legajo 16 | 104 horas | 112 horas.


                    Total  :  608 horas   |  632 horas
                    */
                        

  /* ### HORAS POR  # PROYECTO #
                    PROYECTO 1  : 96 hs
                    PROYECTO 2  : 8 hs
                    PROYECTO 3  : 104 hs
                    PROYECTO 4  : 8 hs
                    PROYECTO 5  : 56 hs
                    PROYECTO 6  : 64 hs
                    PROYECTO 7  : 80 hs
                    PROYECTO 9  : 32 hs
                    PROYECTO 8  : 112 hs
                    PROYECTO 10 : 48 hs
                    
                    TOTAL =  608 hs
                    */



/* ###  HORAS POR PROYECTO LUEGO DE ACTUALIZAR HORAS Y VOLVER A CALCULAR LIQUIDACION
                    PROYECTO 1  : 96 hs
                    PROYECTO 2  : 8 hs
                    PROYECTO 3  : 72* (tiene que restar el -32)  hs
                    PROYECTO 4  : 8 hs
                    PROYECTO 5  : 80 * - > 48* ( +24 -32) tiene que restar  8 hs
                    PROYECTO 6  : 64 hs
                    PROYECTO 7  : 112* (tiene que sumar +32)
                    PROYECTO 9  : 32 hs
                    PROYECTO 8  : 104* (tiene que restar -8) hs
                    PROYECTO 10 : 88* (tiene que sumar +40) hs
                    
                    TOTAL =  632 hs	
                    */


/* 
#########################################################################################################
#########################################################################################################


REALIZAMOS LA LIQUIDACION HASTA EL MOMENTO DE LOS CLIENTES Y PROYECTOS CARGADOS ########
   
   
   Usuario, Cliente, Proyecto, fecha liquidacion Mes inicio y Fecha Mes fin  4 - administrador (usuario valido) */

 call CalcularLiquidacionMensual(4,1,1, '2021-09-01','2021-10-01');
  call CalcularLiquidacionMensual(4,2,2, '2021-09-01','2021-10-01');
   call CalcularLiquidacionMensual(4,3,3, '2021-09-01','2021-10-01');
    call CalcularLiquidacionMensual(4,4,4, '2021-09-01','2021-10-01');
     call CalcularLiquidacionMensual(4,5,5, '2021-09-01','2021-10-01');
      call CalcularLiquidacionMensual(4,6,6, '2021-09-01','2021-10-01');
       call CalcularLiquidacionMensual(4,4,7, '2021-09-01','2021-10-01');
        call CalcularLiquidacionMensual(4,5,8, '2021-09-01','2021-10-01');
         call CalcularLiquidacionMensual(4,6,9, '2021-09-01','2021-10-01');
          call CalcularLiquidacionMensual(4,7,10, '2021-09-01','2021-10-01');
          select sum(cantidadhoras) 'HP antes' from liquidacion;


/* 
#########################################################################################################
#########################################################################################################

              ACTUALIZO RENDICION DE HORAS E INSERTO NUEVAS RENDICIONES ### 

/* ACTUALIZA:  legajo - idproyecto - horas - fechaInicio Vieja - FechaFin vieja - fechaInicio Nueva - FechaFin NUeva */
/* RENDICION:  legajo - proyecto   - horas - fechaInicio - FechaFin - */

call ActualizarCargaDeHoras(5 ,5 ,32,'2021-09-27','2021-09-28','2021-09-27','2021-10-01');  -- Legajo 5 : Se actualiza el ultimo registro de 8 a 32 hs. TOTAL de HORAS 176 hs para ese legajo
call rendicionDeHoras      (10,7 ,32,'2021-09-27','2021-10-01');                            -- Legajo 10: Se Insertan horas que no estaban. -- TOTAL DE HORAS 128 a 160 hs. para ese legajo.
call ActualizarCargaDeHoras(12,8 ,24,'2021-09-27','2021-10-01','2021-09-27','2021-09-30');  -- Legajo 12: Se Eliminan 3 días -- TOTAL DE HORAS 184 a 176 hs para ese legajo.
call ActualizarCargaDeHoras(15,5 ,8,'2021-09-20','2021-09-25','2021-09-27','2021-09-21');   -- Legajo 15: Se Eliminan horas. de 40 a 8 para ese legajo.
call rendicionDeHoras      (16,10,40,'2021-09-20','2021-09-25');                            -- Legajo 16: Se Adiciona un proyecto. Se insertan 40 horas.
call ActualizarCargaDeHoras(16,3 ,8,'2021-09-13','2021-09-18','2021-09-13','2021-09-14');   -- Legajo 16: Se eliminan horas para otro proyecto de 40 a 8 -- TOTAL DE HORAS : 112 horas



/* 
#########################################################################################################
#########################################################################################################

EJECUTAMOS NUEVAMENTE EL SP PARA CALCULAR LA LIQUIDACION ######## */

 call CalcularLiquidacionMensual(4,1,1, '2021-09-01','2021-10-01');
  call CalcularLiquidacionMensual(4,2,2, '2021-09-01','2021-10-01');
   call CalcularLiquidacionMensual(4,3,3, '2021-09-01','2021-10-01');
    call CalcularLiquidacionMensual(4,4,4, '2021-09-01','2021-10-01');
     call CalcularLiquidacionMensual(4,5,5, '2021-09-01','2021-10-01');
      call CalcularLiquidacionMensual(4,6,6, '2021-09-01','2021-10-01');
       call CalcularLiquidacionMensual(4,4,7, '2021-09-01','2021-10-01');
        call CalcularLiquidacionMensual(4,5,8, '2021-09-01','2021-10-01');
         call CalcularLiquidacionMensual(4,6,9, '2021-09-01','2021-10-01');
          call CalcularLiquidacionMensual(4,7,10, '2021-09-01','2021-10-01');
          select sum(cantidadhoras) 'HP DESPUES' from liquidacion

