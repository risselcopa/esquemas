create schema responsable1;
go
create schema cporcobrar2;
go
create schema inventario3;
go
create schema cporpagar4;
go
create schema itinerario5;
go
create schema venta;
go



CREATE TABLE responsable1.ADMINISTRADOR 
    (
     cod_adm int  NOT NULL , 
     nombre varchar (20) NOT NULL , 
     pago_mensual int NOT NULL , 
     CLUB_cod_club INTEGER NOT NULL 
    )

go
select * from responsable1.ADMINISTRADOR
insert into responsable1.ADMINISTRADOR values (  1,'ALEXANDER BECERRA' , 100, 6)
insert into responsable1.ADMINISTRADOR values (  2,'ALEJANDRA MENDOZA' , 1000, 2)
insert into responsable1.ADMINISTRADOR values (  3,'MARIO COPA' , 1500, 7)
insert into responsable1.ADMINISTRADOR values (  4,'JHONN QUISPE' , 1200, 8)
insert into responsable1.ADMINISTRADOR values (  5,'FERNANDO CHAVEZ' , 1300, 5)
insert into responsable1.ADMINISTRADOR values (  6,'NAYELY AGUILAR' , 1400, 1)
insert into responsable1.ADMINISTRADOR values (  7,'JENNIFER FERNANDEZ' , 1600, 2)
insert into responsable1.ADMINISTRADOR values (  8,'RODRIGO BALDERRAMA' , 1700, 3)
insert into responsable1.ADMINISTRADOR values (  9,'WILFREDO BEJARANO' , 1800, 60)
insert into responsable1.ADMINISTRADOR values (  10,'CHRISTIAN VARGAS' , 1900, 63)

ALTER TABLE ADMINISTRADOR ADD CONSTRAINT ADMINISTRADOR_PK PRIMARY KEY CLUSTERED (cod_adm)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE inventario3.ALMACEN 
    (
     id int NOT NULL , 
     stock varchar (3) NOT NULL , 
     unidades varchar (3) NOT NULL , 
     costo_unitario varchar (3) NOT NULL , 
     fecha_entrega date NOT NULL , 
     fecha_salida date NOT NULL 
    )
GO

select * from inventario3.ALMACEN
insert into inventario3.ALMACEN values ( 1 , 150 , 23 , 6, '04/03/22', '05/04/22')
insert into inventario3.ALMACEN values ( 2 , 250 , 23 , 6, '04/03/22', '07/04/22')
insert into inventario3.ALMACEN values ( 3 , 40 , 24 , 30, '01/02/22', '08/03/22')
insert into inventario3.ALMACEN values ( 4 , 16 , 15 , 60, '04/03/22', '05/05/22')
insert into inventario3.ALMACEN values ( 5 , 150 , 8 , 69, '22/01/22', '15/02/22')
insert into inventario3.ALMACEN values ( 3 , 150 , 89, 80, '19/03/22', '19/04/22')
insert into inventario3.ALMACEN values ( 9 , 200 , 50 , 90, '12/09/22', '30/10/22')
insert into inventario3.ALMACEN values ( 11 , 190 , 15 ,100, '02/11/22', '07/12/22')
insert into inventario3.ALMACEN values ( 18 , 180 , 14 , 45, '22/05/22', '25/06/22')
insert into inventario3.ALMACEN values ( 19 , 110 , 65 , 70, '10/11/22', '28/12/22')


ALTER TABLE ALMACEN ADD CONSTRAINT ALMACEN_PK PRIMARY KEY CLUSTERED (id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE inventario3.ALQUILER 
    (
     cod_alquiler INTEGER NOT NULL, 
     nombre CHAR (20) NOT NULL , 
     horario DATETIME NOT NULL , 
     precio CHAR (5) NOT NULL , 
     ASOCIACION_grupo INTEGER NOT NULL , 
     CLIENTE_ci_cliente INTEGER NOT NULL , 
     ADMINISTRADOR_cod_adm INTEGER NOT NULL 
    )
GO
select * from inventario3.ALQUILER
insert into inventario3.ALQUILER values (3, 'salon evento', '04/03/22 15:00', 1500, 1, 5, 2)
insert into inventario3.ALQUILER values (2, 'cancha futsal', '01/01/22 16:30', 1500, 2, 80, 5)
insert into inventario3.ALQUILER values (4, 'salon evento', '04/03/22 15:00', 1500, 3, 51, 2)
insert into inventario3.ALQUILER values (5, 'cancha fronton1', '04/03/22 15:00', 1500, 4, 7, 2)
insert into inventario3.ALQUILER values (6, 'salon evento', '04/03/22 15:00', 1500, 5, 4, 2)
insert into inventario3.ALQUILER values (7, 'cancha fronton3', '04/03/22 15:00', 1500, 6, 51, 2)
insert into inventario3.ALQUILER values (8, 'cancha fronton3', '04/03/22 15:00', 1500, 7, 53, 2)
insert into inventario3.ALQUILER values (9, 'cancha futsal', '04/03/22 15:00', 1500, 8, 11, 2)
insert into inventario3.ALQUILER values (10, 'salon evento', '04/03/22 15:00', 1500, 9, 5, 2)
insert into inventario3.ALQUILER values (11, 'cancha fronton3', '04/03/22 15:00', 1500, 10, 4, 2)

ALTER TABLE ALQUILER ADD CONSTRAINT ALQUILER_PK PRIMARY KEY CLUSTERED (cod_alquiler)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE responsable1.ASOCIACION 
    (
     grupo INTEGER NOT NULL , 
     socios CHAR (30) NOT NULL , 
     nombre_encargado CHAR (30) NOT NULL , 
     descuentos_porcentaje int NOT NULL , 
     reglas CHAR (150) NOT NULL , 
     CLUB_cod_club INTEGER NOT NULL 
    )
GO

select * from responsable1.ASOCIACION 
insert into  responsable1.ASOCIACION values (1, 'LOS WARNEÑOS' , 'EDILBERTO PONCE', 15 , 'Alquiler con anticipacion', 3)
insert into  responsable1.ASOCIACION values (5, 'LAS DE SIEMPRE' , 'SOFIA ARRIDO', 15 , 'Cuidar el arco', 7)
insert into  responsable1.ASOCIACION values (2, 'THE SEXY GIRLS' , 'MARIA CHACON', 15 , 'Tener cuidado con el cesped ', 8)
insert into  responsable1.ASOCIACION values (10, 'KIVA' , 'CAMILA SORUCO', 15 , 'Dias feriados tiene privilegios', 9)
insert into  responsable1.ASOCIACION values (6, 'ASPCA' , 'ANA MONTALVO', 15 , 'Todos los socios tiene un descuento del 10 % en todos los productos que se vendran en el lugar', 2)
insert into  responsable1.ASOCIACION values (3, 'GOOD WILL' , 'JAVIER TEMO', 15 , 'Sobre el salon de evento los socios tienen prioridad en ocuparlo', 1)
insert into  responsable1.ASOCIACION values (11, 'AFTERWORK' , 'EVANDRO ARTIAGA', 15 , 'La entrega y salida del local deben ser puntual', 5)
insert into  responsable1.ASOCIACION values (12, 'LOS WARNEÑOS' , 'YEFERSON GUZMAN', 15 , 'El administrador dentro de su faculta puede cambiar o asignar las horas asignada a un nuevo grupo o encargado', 38)
insert into  responsable1.ASOCIACION values (16, 'LOS VILLANOS' , 'DANIEL CEDEÑO', 15 , 'Sobre el salon de evento los socios tienen prioridad en ocuparlo', 6)
insert into  responsable1.ASOCIACION values (17, 'LAS INSEPARABLES','ANTHONELA GARECA', 15 , 'Cuidar cada pelota fletada', 11)

ALTER TABLE ASOCIACION ADD CONSTRAINT ASOCIACION_PK PRIMARY KEY CLUSTERED (grupo)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE venta.CLIENTE 
    (
     ci_cliente INTEGER NOT NULL , 
     nombre CHAR (30) NOT NULL , 
     direccion VARCHAR (50) NOT NULL , 
     CLUB_cod_club INTEGER NOT NULL 
    )
GO

SELECT * FROM venta.CLIENTE
insert into venta.CLIENTE values (569, 'edilverto gonzales', 'Av banzer', 1)
insert into venta.CLIENTE values (123, 'fabiola padilla', 'calle ovidio' , 2)
insert into venta.CLIENTE values (569 , 'Estephany salazar', 'calle de las poesias' ,3)
insert into venta.CLIENTE values (635, 'Hugo Torca' , 'calle de la perfeccion' , 4 )
insert into venta.CLIENTE values (235, 'Fatima CAZTROS', 'calle mediterranea' ,5)
insert into venta.CLIENTE values (895, 'Pablo Cervantez' , 'calle pequeña', 6)
insert into venta.CLIENTE values (698, 'Maria Isabel Panihagua' , 'calle asuncion', 7)
insert into venta.CLIENTE values (125, 'Mateo Cabrera', 'calle monarca', 8)
insert into venta.CLIENTE values (238, 'Mart�n Saavedra' , 'calle pacIfico' , 9)
insert into venta.CLIENTE values (541, 'Leo Fernandez', 'calle montalvo', 10)


ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_PK PRIMARY KEY CLUSTERED (ci_cliente)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE responsable1.CLUB 
    (
     cod_club INTEGER NOT NULL , 
     nombre CHAR (30) NOT NULL , 
     ubicacion VARCHAR (30) NOT NULL, 
	 telefono int NOT NULL
    )
GO

select * from responsable1.CLUB 
insert into responsable1.CLUB values (56, ' club Deportivo', 'Av San martin ', 1259354)
insert into responsable1.CLUB values (89, ' club La Rivera', 'Av manuela saenz ', 5951258)
insert into responsable1.CLUB values (23, ' club Amazonas', 'Av  willian', 5962512)
insert into responsable1.CLUB values (75, ' club Warnes', 'Av  bicentenario', 4589235)
insert into responsable1.CLUB values (12, ' club Atlantico', 'Av  alameda', 2568532)
insert into responsable1.CLUB values (89, ' club Apaches', 'Av  guadalupe', 2358456)
insert into responsable1.CLUB values (15, ' club Centro Alto', 'Av  borja', 7889632)
insert into responsable1.CLUB values (22, ' club Amsterdam ', 'Av  españa', 2358945)
insert into responsable1.CLUB values (10, ' club Venecia', 'Av  constitucion', 2321442)
insert into responsable1.CLUB values (12, ' club Cruceños ', 'Av capitan', 1445225)

ALTER TABLE CLUB ADD CONSTRAINT CLUB_PK PRIMARY KEY CLUSTERED (cod_club)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE inventario3.DETALLE_VENTA 
    (
     cod_venta INTEGER NOT NULL , 
     descripcion CHAR (50) NOT NULL, 
     unidad int NOT NULL , 
     precio int NOT NULL  , 
     fecha DATE NOT NULL , 
     hora TIME NOT NULL 
    )
GO


SELECT * FROM inventario3.DETALLE_VENTA
insert into inventario3.DETALLE_VENTA values (1, 'vendido', 5, 3, '01/02/22', '15:00')
insert into inventario3.DETALLE_VENTA values (2, 'vendido', 2, 10, '01/02/22', '14:55')
insert into inventario3.DETALLE_VENTA values (3, 'vendido', 4, 7, '01/02/22', '16:30')
insert into inventario3.DETALLE_VENTA values (4, 'vendido', 2, 3, '01/02/22', '13:20')
insert into inventario3.DETALLE_VENTA values (5, 'vendido', 5, 15, '01/02/22', '17:45')
insert into inventario3.DETALLE_VENTA values (6, 'vendido', 5, 12, '01/02/22', '19:20')
insert into inventario3.DETALLE_VENTA values (7, 'vendido', 6, 7, '01/02/22', '16:23')
insert into inventario3.DETALLE_VENTA values (8, 'vendido', 4, 15, '01/02/22', '15:00')
insert into inventario3.DETALLE_VENTA values (9, 'vendido', 2, 3, '01/02/22', '21:10')
insert into inventario3.DETALLE_VENTA values (10, 'vendido', 1, 5, '01/02/22', '22:00')

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT DETALLE_VENTA_PK PRIMARY KEY CLUSTERED (cod_venta)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE responsable1.ENCARGADO 
    (
     ci_encargado INTEGER NOT NULL , 
     nombre CHAR (20) NOT NULL , 
     telefono int NOT NULL , 
     horario DATETIME NOT NULL , 
     PROPIEDADES_clave INTEGER NOT NULL
    )
GO

select * from responsable1.ENCARGADO
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '11/01/22 10:00', 5)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '12/02/22 10:00', 8)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '13/03/22 10:00', 6)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '14/04/22 10:00', 3)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '15/05/22 10:00', 2)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '16/06/22 10:00', 9)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '17/07/22 10:00', 11)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '17/08/22 10:00', 7)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '18/09/22 10:00', 10)
insert into responsable1.ENCARGADO values ( 5626, 'Arnold Rosales' , 578216964, '19/10/22 10:00', 15)


ALTER TABLE ENCARGADO ADD CONSTRAINT ENCARGADO_PK PRIMARY KEY CLUSTERED (ci_encargado)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE itinerario5.HORARIO 
    (
	cod_horario int NOT NULL,
     sabado TIME NOT NULL , 
     domingo TIME NOT NULL , 
     CLUB_cod_club int  NOT NULL 
    )
GO

select * from itinerario5.HORARIO 
insert into itinerario5.HORARIO values (89, '15:00' , '06:00', 7)
insert into itinerario5.HORARIO values (59, '15:30' , '07:00', 8)
insert into itinerario5.HORARIO values (23, '15:59' , '08:30', 9)
insert into itinerario5.HORARIO values (58, '16:00' , '09:00', 10)
insert into itinerario5.HORARIO values (65, '16:30' , '09:50', 11)
insert into itinerario5.HORARIO values (12, '16:50' , '10:00', 12)
insert into itinerario5.HORARIO values (45, '17:00' , '10:30', 13)
insert into itinerario5.HORARIO values (14, '17:20' , '10:50', 14)
insert into itinerario5.HORARIO values (96, '17:30' , '11:00', 15)
insert into itinerario5.HORARIO values (32, '18:00' , '12:00', 16)


ALTER TABLE HORARIO ADD CONSTRAINT HORARIO_PK PRIMARY KEY CLUSTERED (cod_horario)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE inventario3.PAGO_EGRESO 
    (
     cod_pago int NOT NULL, 
     pago_local MONEY NOT NULL , 
     compra_insumos MONEY NOT NULL , 
     servicios_basicos MONEY NOT NULL , 
     ADMINISTRADOR_cod_adm int NOT NULL 
    )
GO

select * from inventario3.PAGO_EGRESO 
insert into inventario3.PAGO_EGRESO values (12 , 1500, 2000, 6000, 1)
insert into inventario3.PAGO_EGRESO values (13 , 1500, 3000, 3000, 2)
insert into inventario3.PAGO_EGRESO values (14 , 1500, 4000, 2000, 3)
insert into inventario3.PAGO_EGRESO values (15 , 1500, 7000, 8000, 4)
insert into inventario3.PAGO_EGRESO values (16 , 1500, 1000, 10000, 5)
insert into inventario3.PAGO_EGRESO values (17 , 1500, 150.50, 100.10, 6)
insert into inventario3.PAGO_EGRESO values (18 , 1500, 2000, 5000.23, 7)
insert into inventario3.PAGO_EGRESO values (19 , 1500, 3000, 600.58, 8)
insert into inventario3.PAGO_EGRESO values (20 , 1500, 150, 400.56, 9)
insert into inventario3.PAGO_EGRESO values (21 , 1500, 400, 700.56, 10)

ALTER TABLE PAGO_EGRESO ADD CONSTRAINT PAGO_EGRESO_PK PRIMARY KEY CLUSTERED (cod_pago)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE venta.PRODUCTOS 
    (
     cod_prod int NOT NULL , 
     nombre CHAR (30) NOT NULL , 
     precio MONEY NOT NULL , 
     ALMACEN_id int NOT NULL , 
     DETALLE_VENTA_cod_venta int NOT NULL , 
     CLIENTE_ci_cliente int NOT NULL 
    )
GO

select* from venta.PRODUCTOS 
insert into venta.PRODUCTOS values (56, 'raqueta wilson', 1557.05, 0, 1,1 )
insert into venta.PRODUCTOS values (12, 'raqueta head radical junior', 622.75, 1, 2,2)
insert into venta.PRODUCTOS values (23, 'raqueta vintage', 9.64, 2, 3,3)
insert into venta.PRODUCTOS values (78, 'raqueta wilson pro staff', 622.82, 5, 4,4 )
insert into venta.PRODUCTOS values (89, 'raqueta rare vintage', 899.56, 21,  5,5 )
insert into venta.PRODUCTOS values (22, 'raqueta head ti.s', 311.06, 22, 6,6 )
insert into venta.PRODUCTOS values (33, 'pelotas vermont', 66.99, 35, 7,7 )
insert into venta.PRODUCTOS values (12, 'pelota givova',50.81 , 75, 8,8 )
insert into venta.PRODUCTOS values (45, 'pelota baby', 30.30, 90, 9,9 )
insert into venta.PRODUCTOS values (39, 'pelota champions', 100, 99, 10,13 )


ALTER TABLE PRODUCTOS ADD CONSTRAINT PRODUCTOS_PK PRIMARY KEY CLUSTERED (cod_prod)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE cporpagar4.PROPIEDADES 
    (
	 clave int NOT NULL , 
     cancha_futbol CHAR (20) NOT NULL , 
     cancha_fronton CHAR (10) NOT NULL , 
     salon_evento CHAR (20) NOT NULL , 
     tienda_raqueta CHAR (30) NOT NULL , 
     horario DATETIME NOT NULL , 
     CLUB_cod_club INTEGER NOT NULL 
    )
GO

select * from cporpagar4.PROPIEDADES
insert into cporpagar4.PROPIEDADES values (23, 'OCUPADO', 'LIBRE', 'LIBRE', 'ESTAMOS ATENDIENDO', '01/02/22 10:00', 1)
insert into cporpagar4.PROPIEDADES values (29, 'LIBRE', 'LIBRE', 'OCUPADO', 'NO ESTAMOS ATENDIENDO', '17/02/22 11:00', 2)
insert into cporpagar4.PROPIEDADES values (27, 'OCUPADO', 'OCUPADO', 'LIBRE', 'ESTAMOS ATENDIENDO', '18/02/22 17:00', 3)
insert into cporpagar4.PROPIEDADES values (24, 'LIBRE', 'LIBRE', 'LIBRE', 'ESTAMOS ATENDIENDO', '30/04/22 18:00', 4)
insert into cporpagar4.PROPIEDADES values (20, 'OCUPADO', 'OCUPADO', 'OCUPADO', 'NO ESTAMOS ATENDIENDO', '27/05/22 21:30', 5)
insert into cporpagar4.PROPIEDADES values (54, 'OCUPADO', 'LIBRE', 'LIBRE', 'NO ESTAMOS ATENDIENDO', '18/06/22 10:45', 6)
insert into cporpagar4.PROPIEDADES values (03, 'OCUPADO', 'LIBRE', 'OCUPADO', 'ESTAMOS ATENDIENDO', '07/07/22 11:50', 7)
insert into cporpagar4.PROPIEDADES values (71, 'LIBRE', 'OCUPADO', 'LIBRE', 'ESTAMOS ATENDIENDO', '15/07/22 16:27', 8)
insert into cporpagar4.PROPIEDADES values (35, 'OCUPADO', 'LIBRE', 'LIBRE', 'NO ESTAMOS ATENDIENDO', '22/09/22 20:15', 9)
insert into cporpagar4.PROPIEDADES values (89, 'LIBRE', 'LIBRE', 'OCUPADO', 'ESTAMOS ATENDIENDO', '05/09/22 15:40', 10)



ALTER TABLE PROPIEDADES ADD CONSTRAINT PROPIEDADES_PKv1 PRIMARY KEY CLUSTERED (clave)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE cporcobrar2.TARIFA 
    (
	 cod_tarifa int NOT NULL, 
     dia MONEY NOT NULL , 
     noche MONEY NOT NULL , 
     mensualizado_dia MONEY NOT NULL , 
	  mensualizado_noche MONEY NOT NULL , 
     CLUB_cod_club int NOT NULL 
    )
GO

select * from cporcobrar2.TARIFA 
insert into cporcobrar2.TARIFA values (1, 25, 35, 750, 1050, 1)
insert into cporcobrar2.TARIFA values (2, 25, 35, 750, 1050, 2)
insert into cporcobrar2.TARIFA values (3, 25, 35, 750, 1050, 3)
insert into cporcobrar2.TARIFA values (4, 25, 35, 750, 1050, 4)
insert into cporcobrar2.TARIFA values (5, 25, 35, 750, 1050, 5)
insert into cporcobrar2.TARIFA values (6, 25, 35, 750, 1050, 6)
insert into cporcobrar2.TARIFA values (7, 25, 35, 750, 1050, 7)
insert into cporcobrar2.TARIFA values (8, 25, 35, 750, 1050, 8)
insert into cporcobrar2.TARIFA values (9, 25, 35, 750, 1050, 9)
insert into cporcobrar2.TARIFA values (10, 25, 35, 750, 1050, 10)

ALTER TABLE TARIFA ADD CONSTRAINT TARIFA_PK PRIMARY KEY CLUSTERED (cod_tarifa)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE ADMINISTRADOR 
    ADD CONSTRAINT ADMINISTRADOR_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ALQUILER 
    ADD CONSTRAINT ALQUILER_ADMINISTRADOR_FK FOREIGN KEY 
    ( 
     ADMINISTRADOR_cod_adm
    ) 
    REFERENCES ADMINISTRADOR 
    ( 
     cod_adm 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ALQUILER 
    ADD CONSTRAINT ALQUILER_ASOCIACION_FK FOREIGN KEY 
    ( 
     ASOCIACION_grupo
    ) 
    REFERENCES ASOCIACION 
    ( 
     grupo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ALQUILER 
    ADD CONSTRAINT ALQUILER_CLIENTE_FK FOREIGN KEY 
    ( 
     CLIENTE_ci_cliente
    ) 
    REFERENCES CLIENTE 
    ( 
     ci_cliente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ASOCIACION 
    ADD CONSTRAINT ASOCIACION_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE CLIENTE 
    ADD CONSTRAINT CLIENTE_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ENCARGADO 
    ADD CONSTRAINT ENCARGADO_PROPIEDADES_FK FOREIGN KEY 
    ( 
     PROPIEDADES_clave
    ) 
    REFERENCES PROPIEDADES 
    ( 
	clave
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE HORARIO 
    ADD CONSTRAINT HORARIO_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE PAGO_EGRESO 
    ADD CONSTRAINT PAGO_EGRESO_ADMINISTRADOR_FK FOREIGN KEY 
    ( 
     ADMINISTRADOR_cod_adm
    ) 
    REFERENCES ADMINISTRADOR 
    ( 
     cod_adm 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE PRODUCTOS 
    ADD CONSTRAINT PRODUCTOS_ALMACEN_FK FOREIGN KEY 
    ( 
     ALMACEN_id
    ) 
    REFERENCES ALMACEN 
    ( 
     id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE PRODUCTOS 
    ADD CONSTRAINT PRODUCTOS_CLIENTE_FK FOREIGN KEY 
    ( 
     CLIENTE_ci_cliente
    ) 
    REFERENCES CLIENTE 
    ( 
     ci_cliente 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE PRODUCTOS 
    ADD CONSTRAINT PRODUCTOS_DETALLE_VENTA_FK FOREIGN KEY 
    ( 
     DETALLE_VENTA_cod_venta
    ) 
    REFERENCES DETALLE_VENTA 
    ( 
     cod_venta 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE PROPIEDADES 
    ADD CONSTRAINT PROPIEDADES_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE TARIFA 
    ADD CONSTRAINT TARIFA_CLUB_FK FOREIGN KEY 
    ( 
     CLUB_cod_club
    ) 
    REFERENCES CLUB 
    ( 
     cod_club 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO