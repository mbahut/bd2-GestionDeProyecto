
/* Algunos datos para empezar a ejecutar los sp */

insert into rol (roldescripcion)
values ("PM"), ("Desarrollador"), ("Tester"), ("Administrador"), ("DevOps");

insert into empleado (legajo, nombre, apellido, idRol)
values (5, "Mariano", "Perez", 1),(10, "Juan", "Reyes", 2),(12, "Silvia", "Rolan", 3),(15, "Maria", "Martinez", 4),(16, "Demian", "Martin", 5);

insert into Cliente (nombreCliente,CentroCosto,CentroFacturacion)
Values 
("PowerCenter", 10,15),
("Fravega", 11,10),
("HML", 12,13),
("Banco Hipotecario", 10,15),
("Banco Itau", 11,10),
("Mercado Libre", 12,13),
("BANCHO HSBC", 10,15),
("Mercado Pago", 11,10),
("Banorte", 12,13),
("BANCO CIUDAD", 10,15);


insert into proyecto (idCliente,nombreproyecto)
Values 
(1, "PowerProject"), 
(2, "FravegaPro"), 
(3, "HMLPro"),
(4, "Hipotecas"), 
(5, "Itau PP"), 
(6, "Libre TC"),
(4, "Credito UVA"), 
(5, "Itau TC"), 
(6, "Libre Inversion"),
(7, "HSBC TD"), 
(8, "Pago Libre"), 
(9, "Creditos Norte"),
(9, "Creditos Sur"), 
(10, "Ciudad PP"),
(10, "Ciudad CABA");


