create database SistemaDeRegistro;
use SistemaDeRegistro;

create table Usuario(
	Id_Usuario			    INT auto_increment PRIMARY KEY,
	Nombre				    VARCHAR(50),
	Rut					    VARCHAR(12),
	Clave				    VARCHAR(10),
	Nivel		            INT
);

create table Region(
	Id_Region			    INT auto_increment PRIMARY KEY,
	Nombre			        VARCHAR(30) NOT NULL
);

create table Provincia(
	Id_Provincia		    INT auto_increment PRIMARY KEY,
	Nombre			        VARCHAR(50) NOT NULL,
	Id_Region			    INT,
    FOREIGN KEY (Id_Region) REFERENCES Region(Id_Region)
);

create table Comuna(
	Id_Comuna			    INT auto_increment PRIMARY KEY,
	Nombre			        VARCHAR(30) NOT NULL,
	Id_Provincia		    INT,
    FOREIGN KEY (Id_Provincia) REFERENCES Provincia(Id_Provincia)
);

create table TipoPlanDeManejo(
	Id_TipoPlanDeManejo	    INT auto_increment PRIMARY KEY ,
	EstudioTecnico		    VARCHAR(100)  NOT NULL,
	MarcoLegal			    VARCHAR(100)  NOT NULL
);

create table Predio(
	Id_Predio			    INT auto_increment PRIMARY KEY,
	Nombre		            VARCHAR(60) NOT NULL,
	SuperficieTotal		    INT         NOT NULL,
	Rol_Avaluo			    VARCHAR (15) NOT NULL,
	COORDUTMN			    INT,
	COORDUTME			    INT,
	Id_Comuna			    INT,
    FOREIGN KEY (Id_Comuna) REFERENCES Comuna (Id_Comuna),
	Id_Usuario			    INT,
    FOREIGN KEY (Id_Usuario) REFERENCES Usuario (Id_Usuario)
);

create table Propietario(
	Id_RutPropietario	    INT PRIMARY KEY,
	Nombres				VARCHAR(50), 
	ApellidoPaterno		VARCHAR(50) NOT NULL,
	ApellidoMaterno		VARCHAR(50), 
	Direccion			VARCHAR(50) NOT NULL,
	Telefono            INT,
	CorreoElectronico	VARCHAR(90)
);

create table PropietarioPredio(
	Id_Predio			    INT,
    FOREIGN KEY (Id_Predio) REFERENCES Predio(Id_Predio),
	Id_RutPropietario	    INT,
    FOREIGN KEY (Id_RutPropietario) REFERENCES Propietario(Id_RutPropietario)
);

create table CarpetaPredial(
	Id_CarpetaPredial       INT auto_increment PRIMARY KEY,
	NumeroResolucion	    VARCHAR(50) NOT NULL,
	FechaResolucion         DATE,
	Infraccion			    VARCHAR(50),
	EstadoResolucion        VARCHAR(50),
	NumeroCarpeta           INT		    NOT NULL,
	Id_Predio			    INT,
    FOREIGN KEY (Id_Predio) REFERENCES Predio (Id_Predio),
	Id_TipoPlanDeManejo	INT,
    FOREIGN KEY (Id_TipoPlanDeManejo) REFERENCES TipoPlanDeManejo (Id_TipoPlanDeManejo),
	Id_Usuario			INT,
    FOREIGN KEY (Id_Usuario) REFERENCES Usuario (Id_Usuario)
);



----------
select * from Usuario;
INSERT INTO `sistemaderegistro`.`Usuario` (`Nombre`, `Rut`, `Clave`, `Nivel`)VALUES ('Marta', '10805087k', '1234', 1),
                                                                                    ('Alex',  '184930005', '3925', 2);

----------
select * from Region;
INSERT INTO `sistemaderegistro`.`Region` (`Nombre`) VALUES ('Region de Los Lagos');
----------
select * from Provincia;
INSERT INTO `sistemaderegistro`.`Provincia` (`Nombre`, `Id_Region`) VALUES  ('Osorno',	   1),
																			('LLanquihue', 1), 
							                                                ('Chiloe',	   1),
																			('Palena',	   1);
----------
select * from Comuna;
INSERT INTO `sistemaderegistro`.`Comuna` (`Nombre`, `Id_Provincia`)
values('Osorno',               1),
      ('Puerto Octay',         1),
	  ('Purranque',            1),
	  ('Puyehue',              1),
	  ('Rio Negro',            1),
	  ('San Juan de la Costa', 1),
	  ('San Pablo',            1),
	  ('Puerto Montt',         2),
	  ('Calbuco',              2),
	  ('Cochamo',              2),
      ('Fresia',               2),
	  ('Frutillar',            2),
	  ('Los Muermos',          2),
	  ('LLanquihue',           2),
	  ('Maullin',              2),
	  ('Maullin',              2),
	  ('Castro',               3),
	  ('Ancud',                3),
	  ('Chonchi',			   3),
	  ('Curaco de Velez',      3),
	  ('Dalcahue',			   3),
      ('Puqueldon',            3),
	  ('Queilen',              3),
	  ('Quellon',              3),
	  ('Quemchi',              3),
	  ('Quinchao',             3),
	  ('Chaiten',              4),
	  ('Futaleufu',            4),
	  ('Hualaihue',            4),
	  ('Palena',               4);

select * from TipoPlanDeManejo;
select * from CarpetaPredial;

CREATE VIEW VW_CARPETA_PREDIAL
AS
SELECT CarpetaPredial.NumeroResolucion  AS 'Numero de Resolucion',
       CarpetaPredial.FechaResolucion   AS 'Fecha de Resolucion',
	   CarpetaPredial.Infraccion		AS 'Infraccion',
	   CarpetaPredial.EstadoResolucion  AS 'Estado de Resolucion',
	   CarpetaPredial.NumeroCarpeta		AS 'Numero de la Carpeta',
	   Predio.Nombre					AS 'Nombre del Predio',
	   TipoPlanDeManejo.EstudioTecnico  AS 'Estudio Tecnico',
	   TipoPlanDeManejo.MarcoLegal      AS 'Marco Legal'
FROM   CarpetaPredial
	   INNER JOIN Predio ON Predio.Id_Predio = CarpetaPredial.Id_Predio
	   INNER JOIN TipoPlanDeManejo ON TipoPlanDeManejo.Id_TipoPlanDeManejo = CarpetaPredial.Id_TipoPlanDeManejo;
  
select * from VW_CARPETA_PREDIAL;

----Vista Predio

CREATE VIEW VW_Vista_Predio
AS
SELECT Predio.Nombre		   AS Nombre,
	   Predio.SuperficieTotal  AS Superficie,
	   Predio.Rol_Avaluo	   AS 'Rol Avaluo',
	   Predio.COORDUTMN        AS 'Coordenada UTM N',
	   Predio.COORDUTME		   AS 'Coordenada UTM E',
	   Comuna.Nombre           AS Comuna
FROM   Predio 
	   INNER JOIN Comuna ON Comuna.Id_Comuna = Predio.Id_Comuna;

SELECT * FROM VW_Vista_Predio;

-----Vista Propietario

select * from Propietario

select * from TipoPlanDeManejo;
INSERT INTO `sistemaderegistro`.`TipoPlanDeManejo` (`EstudioTecnico`, `MarcoLegal`) 
VALUES  ('NORMA DE MANEJO EUCALIPTUS',  'D.L.701'),
		('NORMA DE MANEJO DE PINO INSIGNE',  'D.L.701'),
		('NORMA DE MANEJO DE PREVENCION Y PROTECCION CONTRA INCENDIO FORESTALES', 'D.L.701'),
		('PLAN DE MANEJO CORRECCION D.L. 701','D.L.701'),
		('PLAN DE MANEJO PLANTACIONES FORESTALES','D.L.701'),
		('INFORME DE EJECUCION DE ACTIVIDADES BONIFICABLES DE LA LEY N 20.283 ART 22 LETRA A',  'LEY 20.283'),
		('INFORME DE EJECUCION DE ACTIVIDADES BONIFICABLES DE LA LEY N 20283 ART.22 LETRA B Y C',  'LEY 20.283'),
	    ('AUTORIZACION SIMPLE DE CORTA',  'LEY 20.283'),
		('AVISO DE POSTERGACION DE PLAN DE MANEJO',  'LEY 20.283'),
		('PLAN DE CORRECCION - LEY 20.283',  'LEY 20.283'),
		('PLAN DE MANEJO BAJO EL CRITERIO ORDENAMIENTO FORESTAL',  'LEY 20.283'),
		('PLAN DE MANEJO CORTA Y REFORESTACION DE BOSQUES PARA EJECUTAR OBRAS CIVILES',  'LEY 20.283'),
		('PLAN DE MANEJO FORESTAL DE BOSQUE NATIVO LEY 20.283',  'LEY 20.283'),
		('PLAN DE MANEJO DE BOSQUE NATIVO, NORMA RORACO',  'LEY 20.283'),
		('PLAN DE MANEJO FORESTAL PARA PEQUEÑAS SUPERFICIES',  'LEY 20.283'),
		('PLAN DE MANEJO TIPO APLICABLE AL TIPO FORESTAL SIEMPREVERDE',  'LEY 20.283'),
		('NORMA DE MANEJO ROBLE-RAULI-COIGUE',  'LEY 20.283'),
		('DECLARACION DE EXISTENCIA GUIAS PRIMARIAS',  'LEY 20.283'),
		('DECLARACION DE EXISTENCIA GUIAS SECUNDARIAS',  'LEY 20.283'),
		('DECLARACION DE EXISTENCIA PARA SOLICITAR EXPECIONALMENTE GLT PARA MOVILIZAR PRODUCTOS PRIMARIOS', 'LEY 20.283'),
		('SOLICITUD DE GLT PRODUCTOS PRIMARIOS PROVENIENTES  ARBOLES NATIVOS AISLADOS LEY 20.283',  'LEY 20.283'),
		('DECLARACION DE EXISTENCIAS',  'D.S.490'),
		('GUIA DE LIBRE TRANSITO',  'D.S.490'),
		('MARCAJE DE PRODUCTOS',  'D.S.490'),
		('PLAN DE EXTRACCION DE ALERCE MUERTO',  'D.S.490');



SELECT * FROM PREDIO;
INSERT INTO `sistemaderegistro`.`PREDIO` (`Nombre`, `SuperficieTotal`, `Rol_Avaluo`, `COORDUTMN`, `COORDUTME`, `Id_Comuna`, `Id_Usuario`) 
			VALUES ('PUQUITRAHUE',            8.42,'340-24',    5468931,   624687,  3, 1),
				   ('LOTE 35 FUNDO QUIHUE',  45.50,'4219-637',   611000,  5517000,  6, 1),
				   ('LOTE A UNO PUTRIHUE',   18.67,'346-445',    635500,  5479000,  2, 1);


SELECT * FROM Propietario;
INSERT INTO `sistemaderegistro`.`Propietario` (`Id_RutPropietario`, `Nombres`, `ApellidoPaterno`, `ApellidoMaterno`, `Direccion`, `Telefono`, `CorreoElectronico`) 
VALUES (781286605,'','AGRICOLA Y FORESTAL SAN JOAQUIN LTDA','','MATTA 595 OF.5 OSORNO', 987666559, 'espinoza.retting@gmail.com'),
       (89956560,'MARIA GUILLERMINA','CATRILEF','GUAITUPAN','LOTE 35 FUNDO QUIHUE', 998776666, 'maria.catrilef@gmail.com'),
	   (33239629,'HILDA ELOINA','OJEDA','MONJE','LOTE A UNO, PUTRIHUE', 983618282, 'hilda.ojeda@gmail.com');
 

SELECT *FROM CarpetaPredial;
INSERT INTO `sistemaderegistro`.`CarpetaPredial` (`NumeroResolucion`, `FechaResolucion`, `Infraccion`, `EstadoResolucion`, `NumeroCarpeta`, `Id_Predio`, `Id_TipoPlanDeManejo`, `Id_Usuario`)
VALUES ('24/32-102/16',   '2016-02-19', 'Sin infracción',  'Aprobada',     365,  1, 5,  1),
       ('39/110-102/19',  '2019-03-26', 'Sin infracción',  'Aprobada',    1761,  2, 8,  1),
       ('244/24-102/19',  '2019-10-30', 'Sin infracción',  'Aprobada',     373,  3, 1,  1);

