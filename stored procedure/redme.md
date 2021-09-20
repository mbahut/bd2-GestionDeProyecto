#BASE DE DATOS II

#ALUMNOS:

#BAHUT MATIAS
#LUCAS CHICHIZOLA 

##  CARPETA : stored procedure ### 
#En la carpeta stored procedure se encontrar 4 archivos:

#VerHorasCargadasPorFecha.sp
#ActualizarCargaDeHoras.sp
#RendicionDeHoras_V1.sp
#CalcularLiquidacionMensual.sp



##VerHorasCargadasPorFecha.sp ##  
##El sp contiene DOS parametro (FechaInicio y FechaFin). El mismo nos devolvera los siguientes campos;
##legajo, horas, idProyecto, nombreProyecto, idcliente, NombreCliente, fechaInicio, fechafin
#con el fin de observar si hay información cargada o facilitar la actualizacion de los datos.


##ActualizarCargaDeHoras.sp ##  
##El sp contiene CINCO parametro de entrada: legajo, horas, idproyecto, fechaInicio, FechaFin
# No devuelve información.


##RendicionDeHoras_V1.sp ##  
#El sp contiene CINCO parametro de entrada: proyecto - legajo - horas - fechaInicio - FechaFin
#No devuelve información.
#Está pensado para cargar las horas trabajadas.
#ejemplo:
#8 -  2021-09-20 - 2021-09-21
#16 - 2021-09-20 - 2021-09-22
#24 - 2021-09-20 - 2021-09-23

##CalcularLiquidacionMensual.sp ##  

#El sp contiene CINCO parametro de entrada: Usuario, Cliente, Proyecto, fecha liquidacion Mes inicio y Fecha Mes fin 
#El procedimiento está pensado para realizar la liquidacion de horas para un CLIENTE , PROYETO y FECHAS DADAS.

#En este caso, el usuario autorizado para ejecutar la liquidacion es el Rol de Administrador. (ROl = 4).
#La ejecución por cualquier otro ROL devolvera un Mensaje con dicha leyenda.

#Si en la TABLA HorasProyectos hay algun cambio de HORAS para algunos de los proyectos,
#al ejecutar nuevamente este Procedimiento, insertara una nueva lidacion con dicha diferencia de horas.

#En el caso que no se detecten cambios de HORAS para los proyectos, el mismo no insertara datos extras