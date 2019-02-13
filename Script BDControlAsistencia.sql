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
	Nombre varchar (20) not null,
	Direccion varchar (50),
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
	Nombre varchar (50) not null,
	Direccion varchar (50),
	Telefono varchar (10),
	TipoDocente varchar(20) not null,

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
insert into TAlumno values('A0001','91758846','Jaimito','Av. Los chistes Cuadra 3','')
insert into TAlumno values('A0002','34251217','Jaime','Av. Loritos Cuadra 1','')
insert into TAlumno values('A0003','10229388','Jaimazo','Urb. Por allí','275891')
--=========================================== TIPO DOCENTE ====================================================
--insert into TTipoDocente values('SE','Docente Secundaria')

--============================================= DOCENTE ====================================================
insert into TDocente values('D001','1234','24943726','El profesor de Jaimito','Urb. Michi','984758836','PRIMARIA')
insert into TDocente values('D002','1234','48495867','El profesor Jirafales','Av. Andinoncio','944203953','SECUNDARIA')

--============================================= GRADO ====================================================
insert into TGrado values('G01','1','A','P')
insert into TGrado values('G02','1','B','P')


insert into TGrado values('G08','1','A','S')

--============================================= MATRICULA ====================================================
insert into TMatricula values('2016','A0001','G01','D001')
insert into TMatricula values('2016','A0002','G01','D001')
insert into TMatricula values('2016','A0003','G08','D002')

--============================================= ASISTENCIA ====================================================
insert into TAsistenciaAlumno values('01/10/2016','A0001','2016','P','El alumno se comportó mal')
insert into TAsistenciaAlumno values('01/10/2016','A0002','2016','T','')
insert into TAsistenciaAlumno values('01/10/2016','A0003','2016','F','Sus papás pidieron permiso')

