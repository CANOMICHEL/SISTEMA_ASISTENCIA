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
	Contraseña varchar(20) not null, 
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
	AñoCurricular varchar(8) not null,
	CodAlumno varchar(8) not null,
	CodGrado varchar(8) not null,
	CodDocente varchar(8) not null,

	primary key (AñoCurricular,CodAlumno),

	foreign key (CodAlumno) references TAlumno(CodAlumno),
	foreign key (CodGrado) references TGrado(CodGrado),
	foreign key (CodDocente) references TDocente(CodDocente),
	

)

create table TAsistenciaAlumno
(
	-- lista de atributos
	Fecha DateTime,
	CodAlumno varchar(8) not null,
	AñoCurricular varchar(8) not null,
	Estado varchar(8),
	Observacion varchar (50) not null,

	primary key (Fecha,CodAlumno),

	foreign key (AñoCurricular,CodAlumno) references TMatricula(AñoCurricular,CodAlumno),
	--foreign key (CodCargo) references TCargo(CodCargo),
	--foreign key (CodAlumno) references TAlumno(CodAlumno),
)
go

--============================================= ALUMNO ====================================================
insert into TAlumno values('A0001','91758846','Aguado López, Mayra','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0002','34251217','Alcusón Marco, Guillermo','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0003','10229388','Bernad Albiol, María','Urb. Por allí','275891')
insert into TAlumno values('A0004','10229388','Concha Rios, Eduardo','Urb. Por allí','275891')
insert into TAlumno values('A0005','10229388','Ebrahim Asghar, Zadeh','Urb. Por allí','275891')
insert into TAlumno values('A0006','10229388','Harris, Marcela Moira','Urb. Por allí','275891')
insert into TAlumno values('A0007','10229388','González Sánchez, Rosana','Urb. Por allí','275891')
insert into TAlumno values('A0008','10229388','Martínez Lorente, Francisco','Urb. Por allí','275891')
insert into TAlumno values('A0009','10229388','Ortiz Ortuño, Raúl','Urb. Por allí','275891')
insert into TAlumno values('A0010','10229388','Rubio Blaya, Alfonso','Urb. Por allí','275891')
insert into TAlumno values('A0011','10229388','Zuzunaga Bedón, Mirna Ofelia','Urb. Por allí','275891')
insert into TAlumno values('A0012','10229388','Spadaro, Davide','Urb. Por allí','275891')

--=========================================== TIPO DOCENTE ====================================================
--insert into TTipoDocente values('SE','Docente Secundaria')

--============================================= DOCENTE ====================================================
insert into TDocente values('DP001','1234','24943726','El profesor de Jaimito','Urb. Michi','984758836')
insert into TDocente values('DP002','1234','48495867','El profesor Jirafales','Av. Andinoncio','944203953')
insert into TDocente values('DS001','1234','68495867','Rubencito','Av. AKLSD','944203944')
insert into TDocente values('DS002','1234','47495867','Juan Pablo Fernández Trujillo','Av. Cultura','944203933')
insert into TDocente values('DS003','1234','24943726','Encarnación Aguayo Giménez','Urb. Michi','984758836')
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

--============================================= ASISTENCIA ====================================================
insert into TAsistenciaAlumno values('01/10/2016','A0001','2016','P','El alumno se comportó mal')
insert into TAsistenciaAlumno values('01/10/2016','A0002','2016','T','')
insert into TAsistenciaAlumno values('01/10/2016','A0003','2016','F','Sus papás pidieron permiso')

