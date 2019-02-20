--------------------------------------------------------------------------
---- CREACION DE LA BASE DE DATOS
--------------------------------------------------------------------------
use master
go
if exists (select * from sysdatabases where name = 'BDControlAsistencia')
	drop database BDControlAsistencia
go
create database BDControlAsistencia
go
--------------------------------------------------------------------------
-- CREACION DE LAS TABLAS
--------------------------------------------------------------------------
use BDControlAsistencia
go
-- Tabla para libros
create table TAlumno
(	-- lista de atributos
	CodAlumno varchar (8) not null,
	DNI varchar (8) not null,
	Nombre varchar (100) not null,
	Direccion varchar (100),
	Telefono varchar (10),
	--Grado varchar (10) not null,
	--Seccion varchar (10),

	-- definicion de la clave foranea
	primary key (CodAlumno)
)
go
--create table TTipoDocente
--(
--	-- Lista de atributos
--	CodTipoDocente varchar(8) not null,
--	TipoDocente varchar(20)not null,

--	primary key (CodTipoDocente)
--)

create table TDocente
(	-- lista de atributos
	CodDocente varchar (8) not null,
	Contrase�a varchar(20) not null, 
	DNI varchar (8) not null,
	Nombre varchar (100) not null,
	Direccion varchar (100),
	Telefono varchar (10),

	-- definicion de la clave foranea
	primary key (CodDocente),

	--foreign key (CodTipoDocente) references TTipoDocente(CodTipoDocente),
)
go
create table TGrado
(
	-- Lista atributos
	CodGrado varchar(8) not null,
	Grado varchar(2) not null,
	Seccion varchar (20) not null,
	Nivel varchar(8)

	primary key (CodGrado)
)
go
--create table TCargo
--(
--	-- Lista atributos
--	CodCargo varchar(8) not null,
--	CodDocente varchar(8) not null,
--	CodGrado varchar(8) not null,
--	CodSeccion varchar(8),
--	Fecha DateTime,

--	primary key (CodCargo),
--	foreign key (CodDocente) references TDocente(CodDocente),
--	foreign key (CodGrado, CodSeccion) references TGrado(CodGrado,CodSeccion),
--)
--go

--create table TRegistrarAsistenciaDocente
--(
--	-- Lista de atributos
--	CodRegistroAsistenciaDocente varchar(8) not null,
--	CodDocente varchar(8) not null,

--	Fecha DateTime,
--	Observacion varchar(50) not null,

--	primary key (CodRegistroAsistenciaDocente),
--	foreign key (CodDocente) references TDocente(CodDocente),
--)
--go

create table TMatricula
(
	A�oCurricular varchar(8) not null,
	CodAlumno varchar(8) not null,
	CodGrado varchar(8) not null,
	CodDocente varchar(8) not null,

	primary key (A�oCurricular,CodAlumno),

	foreign key (CodAlumno) references TAlumno(CodAlumno),
	foreign key (CodGrado) references TGrado(CodGrado),
	foreign key (CodDocente) references TDocente(CodDocente),
	

)

create table TAsistenciaAlumno
(
	-- lista de atributos
	Fecha DateTime,
	CodAlumno varchar(8) not null,
	A�oCurricular varchar(8) not null,
	Estado varchar(8),
	Observacion varchar (50) not null,

	primary key (Fecha,CodAlumno),

	foreign key (A�oCurricular,CodAlumno) references TMatricula(A�oCurricular,CodAlumno),
	--foreign key (CodCargo) references TCargo(CodCargo),
	--foreign key (CodAlumno) references TAlumno(CodAlumno),
)
go

--============================================= ALUMNO ====================================================
insert into TAlumno values('A0001','91758846','Aguado L�pez, Mayra','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0002','34251217','Alcus�n Marco, Guillermo','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0003','10229388','Bernad Albiol, Mar�a','Urb. Por all�','275891')
insert into TAlumno values('A0004','10229388','Concha Rios, Eduardo','Urb. Por all�','275891')
insert into TAlumno values('A0005','10229388','Ebrahim Asghar, Zadeh','Urb. Por all�','275891')
insert into TAlumno values('A0006','10229388','Harris, Marcela Moira','Urb. Por all�','275891')
insert into TAlumno values('A0007','10229388','Gonz�lez S�nchez, Rosana','Urb. Por all�','275891')
insert into TAlumno values('A0008','10229388','Mart�nez Lorente, Francisco','Urb. Por all�','275891')
insert into TAlumno values('A0009','10229388','Ortiz Ortu�o, Ra�l','Urb. Por all�','275891')
insert into TAlumno values('A0010','10229388','Rubio Blaya, Alfonso','Urb. Por all�','275891')
insert into TAlumno values('A0011','10229388','Zuzunaga Bed�n, Mirna Ofelia','Urb. Por all�','275891')
insert into TAlumno values('A0012','10229388','Spadaro, Davide','Urb. Por all�','275891')
insert into TAlumno values('A0013','91758846','Alberola Robles, Rafael','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0014','34251217','Blasco Boix, Jos� Manuel','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0015','10229388','Berenguer Borja, Maria E','Urb. Por all�','275891')
insert into TAlumno values('A0016','10229388','Chaves Fallas, Lilliana','Urb. Por all�','275891')
insert into TAlumno values('A0017','10229388','Dionisio Toledo, Clara','Urb. Por all�','275891')
insert into TAlumno values('A0018','10229388','Gil Mu�oz, Fco Javier','Urb. Por all�','275891')
insert into TAlumno values('A0019','10229388','Gonz�lez Mart�nez, Raquel','Urb. Por all�','275891')
insert into TAlumno values('A0020','10229388','L�pez Calvo, Rebeca, Francisco','Urb. Por all�','275891')
insert into TAlumno values('A0021','10229388','Martos S�nchez, Juan A.','Urb. Por all�','275891')
insert into TAlumno values('A0022','10229388','Onaindia Yurrebaso, Jone','Urb. Por all�','275891')
insert into TAlumno values('A0023','10229388','Par�s Mart�nez, Jorge Luis','Urb. Por all�','275891')
insert into TAlumno values('A0024','10229388','Ripolles Moles, Jos� Lu�s','Urb. Por all�','275891')
insert into TAlumno values('A0025','91758846','�lvarez Cuartas, Mar�a','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0026','34251217','�lvarez Garc�a, Benito','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0027','10229388','Barrera Cuervo, Mois�s','Urb. Por all�','275891')
insert into TAlumno values('A0028','10229388','Campo Rilo, Paula Del','Urb. Por all�','275891')
insert into TAlumno values('A0029','10229388','Fern�ndez Espina, Bruno','Urb. Por all�','275891')
insert into TAlumno values('A0030','10229388','Garc�a Garc�a, Beatriz','Urb. Por all�','275891')
insert into TAlumno values('A0031','10229388','Iglesias Santirso, Luc�a','Urb. Por all�','275891')
insert into TAlumno values('A0032','10229388','Mas Andr�s, Virginia Maria','Urb. Por all�','275891')
insert into TAlumno values('A0033','10229388','Ornosa Miravalles, Peru','Urb. Por all�','275891')
insert into TAlumno values('A0034','10229388','Ortega Moro, Oriol','Urb. Por all�','275891')
insert into TAlumno values('A0035','10229388','Quevedo Alvar�, Mar�a','Urb. Por all�','275891')
insert into TAlumno values('A0036','10229388','Rodr�guez Rodr�guez, Javier','Urb. Por all�','275891')
insert into TAlumno values('A0037','91758846','Ruiz G�mez, Miriam','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0038','34251217','Sanz De Pedro, H�ctor Miguel','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0039','10229388','Serrano Fern�ndez De Travanco, �lvaro','Urb. Por all�','275891')
insert into TAlumno values('A0040','10229388','Torrecillas Reig, Ram�n','Urb. Por all�','275891')
insert into TAlumno values('A0041','10229388','Villa Carro, Mario','Urb. Por all�','275891')
insert into TAlumno values('A0042','10229388','Zapico �lvarez, Jorge','Urb. Por all�','275891')
insert into TAlumno values('A0043','10229388','�lvarez Tamargo, Mar�a','Urb. Por all�','275891')
insert into TAlumno values('A0044','10229388','Blanco Cu�, Graciela','Urb. Por all�','275891')
insert into TAlumno values('A0045','10229388','D�az Ubieta, ��igo','Urb. Por all�','275891')
insert into TAlumno values('A0046','10229388','Garc�a Garc�a, Pablo','Urb. Por all�','275891')
insert into TAlumno values('A0047','10229388','Nicieza Fern�ndez, V�ctor','Urb. Por all�','275891')
insert into TAlumno values('A0048','10229388','P�rez Fern�ndez, Fabi�n','Urb. Por all�','275891')

--=========================================== TIPO DOCENTE ====================================================
--insert into TTipoDocente values('SE','Docente Secundaria')

--============================================= DOCENTE ====================================================
insert into TDocente values('DP001','1234','24943726','El profesor de Jaimito','Urb. Michi','984758836')
insert into TDocente values('DP002','1234','48495867','El profesor Jirafales','Av. Andinoncio','944203953')
insert into TDocente values('DS001','1234','68495867','Rubencito','Av. AKLSD','944203944')
insert into TDocente values('DS002','1234','47495867','Juan Pablo Fern�ndez Trujillo','Av. Cultura','944203933')
insert into TDocente values('DS003','1234','24943726','Encarnaci�n Aguayo Gim�nez','Urb. Michi','984758836')
insert into TDocente values('DS004','1234','48495867','Alessandro Turatti','Av. Andinoncio','944203953')
insert into TDocente values('DI001','1234','68495867','Rubencito','Av. AKLSD','944203944')
insert into TDocente values('AU001','1234','47495867','Alicia Namesny Vallespir','Av. Cultura','944203933')

--============================================= GRADO ====================================================
insert into TGrado values('G01','1','A','P')
insert into TGrado values('G02','1','B','P')
insert into TGrado values('G03','2','A','P')
insert into TGrado values('G04','3','A','P')
insert into TGrado values('G05','3','B','P')
insert into TGrado values('G06','3','C','P')
insert into TGrado values('G07','4','A','P')
insert into TGrado values('G08','5','A','P')
insert into TGrado values('G09','6','A','P')
insert into TGrado values('G10','1','A','S')
insert into TGrado values('G11','2','A','S')
insert into TGrado values('G12','3','A','S')
insert into TGrado values('G13','3','B','S')
insert into TGrado values('G14','4','A','S')
insert into TGrado values('G15','5','A','S')
insert into TGrado values('G16','5','B','S')

-----============================================= MATRICULA ====================================================
insert into TMatricula values('2016','A0001','G01','DP001')
insert into TMatricula values('2016','A0002','G01','DP001')
insert into TMatricula values('2016','A0003','G01','DP001')
insert into TMatricula values('2016','A0004','G01','DP001')
insert into TMatricula values('2016','A0005','G02','DP002')
insert into TMatricula values('2016','A0006','G02','DP002')
insert into TMatricula values('2016','A0007','G14','DS001')
insert into TMatricula values('2016','A0008','G14','DS001')
insert into TMatricula values('2016','A0009','G14','DS001')
insert into TMatricula values('2016','A0010','G15','DS002')
insert into TMatricula values('2016','A0011','G15','DS002')
insert into TMatricula values('2016','A0012','G15','DS002')
insert into TMatricula values('2016','A0013','G15','DS002')
insert into TMatricula values('2016','A0014','G15','DS002')
insert into TMatricula values('2016','A0015','G01','DP001')
insert into TMatricula values('2016','A0016','G01','DP001')
insert into TMatricula values('2016','A0017','G01','DP001')
insert into TMatricula values('2016','A0018','G15','DS003')
insert into TMatricula values('2016','A0019','G15','DS003')
insert into TMatricula values('2016','A0020','G15','DS003')
insert into TMatricula values('2016','A0021','G15','DS004')
insert into TMatricula values('2016','A0022','G15','DS004')
insert into TMatricula values('2016','A0023','G15','DS004')
insert into TMatricula values('2016','A0024','G15','DS004')
insert into TMatricula values('2016','A0025','G01','DP001')
insert into TMatricula values('2016','A0026','G01','DP001')
insert into TMatricula values('2016','A0027','G01','DP001')
insert into TMatricula values('2016','A0028','G01','DP001')
insert into TMatricula values('2016','A0029','G02','DP002')
insert into TMatricula values('2016','A0030','G02','DP002')
insert into TMatricula values('2016','A0031','G14','DS001')
insert into TMatricula values('2016','A0032','G14','DS001')
insert into TMatricula values('2016','A0033','G14','DS001')
insert into TMatricula values('2016','A0034','G15','DS002')
insert into TMatricula values('2016','A0035','G15','DS002')
insert into TMatricula values('2016','A0036','G15','DS002')
insert into TMatricula values('2016','A0037','G15','DS002')
insert into TMatricula values('2016','A0038','G15','DS002')
insert into TMatricula values('2016','A0039','G01','DP001')
insert into TMatricula values('2016','A0040','G01','DP001')
insert into TMatricula values('2016','A0041','G01','DP001')
insert into TMatricula values('2016','A0042','G15','DS003')
insert into TMatricula values('2016','A0043','G15','DS003')
insert into TMatricula values('2016','A0044','G15','DS003')
insert into TMatricula values('2016','A0045','G15','DS004')
insert into TMatricula values('2016','A0046','G15','DS004')
insert into TMatricula values('2016','A0047','G15','DS004')
insert into TMatricula values('2016','A0048','G15','DS004')
--============================================= ASISTENCIA ====================================================
insert into TAsistenciaAlumno values('01/10/2016','A0001','2016','P','El alumno se comport� mal')
insert into TAsistenciaAlumno values('01/10/2016','A0002','2016','T','')
insert into TAsistenciaAlumno values('01/10/2016','A0003','2016','F','Sus pap�s pidieron permiso')

