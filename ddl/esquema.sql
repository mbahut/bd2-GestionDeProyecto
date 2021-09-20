/*

----------BASE DE DATOS II
BAHUT MATIAS
LUCAS CHICHIZOLA 

*/

Create database GestionProyecto;
use gestionProyecto;

create table  rol (
idRol int primary key auto_increment not null,
rolDescripcion varchar(50));

create table empleado (
legajo int primary key not null,
nombre varchar(50),
apellido varchar(50),
idRol int,
constraint foreign key (idRol) references rol(idRol));

create table cliente (
idCliente int primary key auto_increment not null,
NombreCliente varchar(50),
CentroCosto int,
CentroFacturacion int);

create table proyecto(
idProyecto int primary key auto_increment not null,
idCliente int,
nombreProyecto varchar(50),
constraint foreign key (idCliente) references Cliente(idCliente)
);

create table HorasProyecto(
idHorasProyecto int primary key auto_increment not null,
idProyecto int,
horas decimal(10,2),
fechaInicio date,
fechaFin date,
legajo int, 
constraint foreign key (idProyecto) references Proyecto(idProyecto),
constraint foreign key (legajo) references empleado(legajo));

Create table liquidacion (
idLiquidacion int primary key auto_increment not null,
idCliente int,
idProyecto int,
CantidadHoras decimal (10,2),
valor decimal(10,2),
fechaliquidacion int,
constraint foreign key (idCliente) references Cliente(idCliente),
constraint foreign key (idProyecto) references Proyecto(idProyecto))
