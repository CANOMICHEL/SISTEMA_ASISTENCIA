
use BDControlAsistencia
--======================================================================================
--================================== TALUMNO ===========================================
--======================================================================================
-- SPU Insertar Alumno
if exists (select * from dbo.sysobjects where name = 'spuTAlumno_Insertar')
	drop procedure spuTAlumno_Insertar
go
create procedure spuTAlumno_Insertar
	@CodAlumno varchar (8),
	@DNI varchar (8),
	@Nombre varchar (100), 
	@Direccion varchar (100),
	@Telefono varchar (10)
as
begin
	-- Validacion del codigo
	if (@CodAlumno != '' and not exists (select * from TAlumno where CodAlumno = @CodAlumno))
	begin
		-- Validar el Nombre
		if (@DNI != '')
		begin
			-- Validad el RUC
			if (@Nombre != '')
			begin
				-- Insertar nuevo cliente
				insert into TAlumno
				values(@CodAlumno,@DNI,@Nombre,@Direccion,@Telefono)
				-- COnfirmacion operacion
				select CodError = 0, Mensaje = 'Registro insertado exitosamente'
			end
			else
				select CodError = 1, Mensaje = 'El nombre del alumno no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El DNI del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del alumno se encuentra en blanco o est� duplicado'
end
go

--=======================================================================================
-- SPU Actualizar Alumno
if exists (select * from dbo.sysobjects where name = 'spuTAlumno_Actualizar')
	drop procedure spuTAlumno_Actualizar
go
create procedure spuTAlumno_Actualizar
	@CodAlumno varchar (8),
	@DNI varchar (8),
	@Nombre varchar (100), 
	@Direccion varchar (100),
	@Telefono varchar (10)
as
begin
	-- Validacion del codigo
	if (@CodAlumno != '' and exists (select * from TAlumno where CodAlumno = @CodAlumno))
	begin
		-- Validar el DNI
		if (@DNI != '')
		begin
			-- Validad el Nombre
			if (@Nombre != '')
			begin
				-- Insertar nuevo alumno
				update TAlumno set 
					Nombre = @Nombre,
					Direccion = @Direccion,
					Telefono = @Telefono,
					DNI = @DNI
					where CodAlumno = @CodAlumno
				-- Confirmacion operacion
				select CodError = 0, Mensaje = 'Registro insertado exitosamente'
			end
			else
				select CodError = 1, Mensaje = 'El nombre del alumno no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El DNI del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del alumno no existe en la base de datos'
end
go
--=======================================================================================
-- SPU Listar Alumnos
if exists (select * from dbo.sysobjects where name = 'spuTAlumno_Listar')
	drop procedure spuTAlumno_Listar
go
create procedure spuTAlumno_Listar
as
begin
	select * from TAlumno
end
go

--======================================================================================
--================================== TDOCENTE ==========================================
--======================================================================================
-- SPU Insertar Docente
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Insertar')
	drop procedure spuTDocente_Insertar
go
create procedure spuTDocente_Insertar
	@CodDocente varchar (8),
	@Contrase�a varchar(20),
	@DNI varchar (8),
	@Nombre varchar (100), 
	@Direccion varchar (100),
	@Telefono varchar (10)
as
begin
	-- Validacion del codigo
	if (@CodDocente != '' and not exists (select * from TDocente where CodDocente = @CodDocente))
	begin
		-- Validar contrase�a
		if (@Contrase�a != '')
		begin
			-- Validar el Nombre
			if (@DNI != '')
			begin
				-- Validad el RUC
				if (@Nombre != '')
				begin
					-- Insertar nuevo cliente
					insert into TDocente
					values(@CodDocente,@Contrase�a,@DNI,@Nombre,@Direccion,@Telefono)
					-- COnfirmacion operacion
					select CodError = 0, Mensaje = 'Registro insertado exitosamente'
				end
				else
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'La contrase�a no puede estar vac�a'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del docente se encuentra en blanco o est� duplicado'
end
go

--=======================================================================================
-- SPU Actualizar Docente
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Actualizar')
	drop procedure spuTDocente_Actualizar
go
create procedure spuTDocente_Actualizar
	@CodDocente varchar (8),
	@Contrase�a varchar(20),
	@DNI varchar (8),
	@Nombre varchar (100), 
	@Direccion varchar (100),
	@Telefono varchar (10)
as
begin
	-- Validacion del codigo
	if (@CodDocente != '' and exists (select * from TDocente where CodDocente = @CodDocente))
	begin
		if (@Contrase�a != '')
		begin
			-- Validar el DNI
			if (@DNI != '')
			begin
				-- Validad el Nombre
				if (@Nombre != '')
				begin
					-- Insertar nuevo alumno
					update TDocente set 
						Contrase�a = @Contrase�a,
						Nombre = @Nombre,
						Direccion = @Direccion,
						Telefono = @Telefono,
						DNI = @DNI
						where CodDocente = @CodDocente
					-- Confirmacion operacion
					select CodError = 0, Mensaje = 'Registro insertado exitosamente'
				end
				else
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'La contrase�a no puede estar vac�a'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del docente no existe en la base de datos'
end
go

--=======================================================================================
-- SPU Listar Docentes
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Listar')
	drop procedure spuTDocente_Listar
go
create procedure spuTDocente_Listar
as
begin
	select * from TDocente
end
go

--=======================================================================================
-- SPU Validar Docente
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Validar')
	drop procedure spuTDocente_Validar
go
create procedure spuTDocente_Validar
	@CodDocente varchar (8),
	@Contrase�a varchar(20)
	
as
begin
	if (exists (select * from TDocente where CodDocente = @CodDocente and Contrase�a = @Contrase�a))
	begin
		select CodError = 0, Mensaje = 'Existe usuario en la BD'
	end
	else
		select CodError = 1, Mensaje = 'No existe usuario en la BD'	
end
go

--exec spuTDocente_Validar 'DP091', '1234'

--======================================================================================
--=================================== TGRADO ===========================================
--======================================================================================
-- SPU Insertar Grado
if exists (select * from dbo.sysobjects where name = 'spuTGrado_Insertar')
	drop procedure spuTGrado_Insertar
go
create procedure spuTGrado_Insertar
	@CodGrado varchar(8),
	@Grado varchar(2),
	@Seccion varchar (20),
	@Nivel varchar(8)
as
begin
	-- Validacion del codigo
	if (@CodGrado != '')
	begin
		if (@Grado != '')
		begin
			-- Validar contrase�a
			if (@Seccion != '')
			begin
				-- Validar el Nombre
				if (@Nivel != '')
				begin
					if (not exists (select * from TGrado where CodGrado = @CodGrado))
					begin
						-- Insertar nuevo cliente
						insert into TGrado
						values(@CodGrado,@Grado,@Seccion,@Nivel)
						-- COnfirmacion operacion
						select CodError = 0, Mensaje = 'Registro insertado exitosamente'
					end
					else
						select CodError = 1, Mensaje = 'Ya existe un grado con esas caracter�sticas'

				end
				else
					select CodError = 1, Mensaje = 'Se debe completar el espacio designado para nivel'
			end
			else
				select CodError = 1, Mensaje = 'Se debe completar el espacio designado para seccion'
		end
		else
			select CodError = 1, Mensaje = 'Se debe completar el espacio designado para grado'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del grado se encuentra en blanco'
end
go

--=======================================================================================
-- SPU Actualizar Grado
if exists (select * from dbo.sysobjects where name = 'spuTGrado_Actualizar')
	drop procedure spuTGrado_Actualizar
go
create procedure spuTGrado_Actualizar
	@CodGrado varchar(8),
	@Grado varchar(2),
	@Seccion varchar (20),
	@Nivel varchar(8)
as
begin
	-- Validacion del codigo docente
	if (@CodGrado != '' and exists (select * from TGrado where CodGrado = @CodGrado))
	begin
		if (@Grado != '')
		begin
			-- Validar el DNI
			if (@Seccion != '')
			begin
				-- Validad el Nombre
				if (@Nivel != '')
				begin
					-- Insertar nuevo alumno
					update TGrado set 
						Grado = @Grado,
						Seccion = @Seccion,
						Nivel = @Nivel
						where CodGrado = @CodGrado
					-- Confirmacion operacion
					select CodError = 0, Mensaje = 'Registro insertado exitosamente'
				end
				else
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'La contrase�a no puede estar vac�a'
	end
	else
		select CodError = 1, Mensaje = 'El c�digo del docente no existe en la base de datos'
end
go

--=======================================================================================
-- SPU Listar Grados
if exists (select * from dbo.sysobjects where name = 'spuTGrado_Listar')
	drop procedure spuTGrado_Listar
go
create procedure spuTGrado_Listar
as
begin
	select * from TGrado
end
go


--======================================================================================
--================================ TMATRICULA ==========================================
--======================================================================================
-- SPU Insertar Matricula
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_Insertar')
	drop procedure spuTMatricula_Insertar
go
create procedure spuTMatricula_Insertar
	@A�oCurricular varchar(8),
	@CodAlumno varchar(8),
	@CodGrado varchar(8),
	@CodDocente varchar(8)
as
begin
	-- Validacion del a�o curricular
	if (@A�oCurricular != '' and not exists (select * from TMatricula where A�oCurricular = @A�oCurricular and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@CodGrado != '')
			begin
						if (@CodDocente != '')
						begin
							-- Insertar nueva Matricula
							insert into TMatricula
							values(@A�oCurricular,@CodAlumno,@CodGrado,@CodDocente)
							-- COnfirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'
						end
						else
							select CodError = 1, Mensaje = 'El codigo del docente no puede estar vac�o'
					
			end
			else
				select CodError = 1, Mensaje = 'El campo grado no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'El a�o curricular se encuentra en blanco o ya existe matr�cula'
end
go

--=======================================================================================
-- SPU Actualizar Matricula
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_Actualizar')
	drop procedure spuTMatricula_Actualizar
go
create procedure spuTMatricula_Actualizar
	@A�oCurricular varchar(8),
	@CodAlumno varchar(8),
	@CodGrado varchar(8),
	@CodDocente varchar(8)
as
begin
	-- Validacion del a�o curricular
	if (@A�oCurricular != '' and exists (select * from TMatricula where A�oCurricular = @A�oCurricular and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@CodGrado != '')
			begin

						if (@CodDocente != '')
						begin
							-- Insertar nuevo alumno
							update TMatricula set 
								CodGrado = @CodGrado,

								CodDocente = @CodDocente
								where A�oCurricular = @A�oCurricular and CodAlumno = @CodAlumno
							-- Confirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'
						
				end
				else
					select CodError = 1, Mensaje = 'El campo seccion no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El campo grado no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'El a�o curricular se encuentra en blanco o no existe matr�cula'
end
go


--=======================================================================================
-- SPU Listar Matricula
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_Listar')
	drop procedure spuTMatricula_Listar
go
create procedure spuTMatricula_Listar
as
begin
	select * from TMatricula
end
go

--=======================================================================================
-- SPU Listar Grado por Docente
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_GradoPorDocente')
	drop procedure spuTMatricula_GradoPorDocente
go
create procedure spuTMatricula_GradoPorDocente
	@CodDocente varchar(8)
as
begin
	select  distinct TM.CodGrado,Grado+' '+Seccion as GradoSeccion
		from TMatricula TM INNER JOIN TGrado TG on TM.CodGrado = TG.CodGrado
		where CodDocente = @CodDocente
end
go

--exec spuTMatricula_GradoPorDocente 'DP001'
--=======================================================================================
-- SPU Listar Grado por Docente
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_AlumnosPorGrado')
	drop procedure spuTMatricula_AlumnosPorGrado
go
create procedure spuTMatricula_AlumnosPorGrado
	@CodGrado varchar(8)
as
begin
	select  TA.CodAlumno,Nombre
		from TMatricula TM INNER JOIN TAlumno TA on TM.CodAlumno = TA.CodAlumno
		where CodGrado = @CodGrado
		order by Nombre
end
go

--exec spuTMatricula_AlumnosPorGrado 'G01'
--============================================================================================
--================================ TASISTENCIAALUMNO =========================================
--============================================================================================
-- SPU Insertar Asistencia
if exists (select * from dbo.sysobjects where name = 'spuTAsistenciaAlumno_Insertar')
	drop procedure spuTAsistenciaAlumno_Insertar
go
create procedure spuTAsistenciaAlumno_Insertar
	@Fecha DateTime,
	@CodAlumno varchar(8),
	@A�oCurricular varchar(8),
	@Estado varchar(8),
	@Observacion varchar (50)
as
begin
	-- Validacion del a�o curricular
	if (@Fecha != '' and not exists (select * from TAsistenciaAlumno where day(Fecha) = day(@Fecha) and 
	month(Fecha) = month(@Fecha) and year(Fecha) = year(@Fecha) and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@A�oCurricular != '')
			begin
				-- Validad el Seccion
				if (@Estado != '')
				begin
							-- Insertar nueva Matricula
							insert into TAsistenciaAlumno
							values(@Fecha,@CodAlumno,@A�oCurricular,@Estado,@Observacion)
							-- COnfirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'

				end
				else
					select CodError = 1, Mensaje = 'El campo estado no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El campo a�o curricular no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'La fecha se encuentra en blanco o ya existe asistencia de alumno'
end
go

--=======================================================================================
-- SPU Actualizar Asistencia
if exists (select * from dbo.sysobjects where name = 'spuTAsistenciaAlumno_Actualizar')
	drop procedure spuTAsistenciaAlumno_Actualizar
go
create procedure spuTAsistenciaAlumno_Actualizar
	@Fecha DateTime,
	@CodAlumno varchar(8),
	@A�oCurricular varchar(8),
	@Estado varchar(8),
	@Observacion varchar (50)
as
begin
	-- Validacion del a�o curricular
	if (@Fecha != '' and exists (select * from TAsistenciaAlumno where day(Fecha) = day(@Fecha) and 
	month(Fecha) = month(@Fecha) and year(Fecha) = year(@Fecha) and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@A�oCurricular != '')
			begin
				-- Validad el Seccion
				if (@Estado != '')
				begin
					-- Actualizar Asistencia de alumno
							update TAsistenciaAlumno set 
								A�oCurricular = @A�oCurricular,
								Estado = @Estado,
								Observacion = @Observacion

								where Fecha = @Fecha and CodAlumno = @CodAlumno
							-- Confirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'

				end
				else
					select CodError = 1, Mensaje = 'El campo estado no puede estar vac�o'
			end
			else
				select CodError = 1, Mensaje = 'El campo a�o curricular no puede estar vac�o'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vac�o'
	end
	else
		select CodError = 1, Mensaje = 'La fecha se encuentra en blanco o ya existe asistencia de alumno'
end
go

--=======================================================================================
-- SPU Listar Asistencia
if exists (select * from dbo.sysobjects where name = 'spuTAsistenciaAlumno_Listar')
	drop procedure spuTAsistenciaAlumno_Listar
go
create procedure spuTAsistenciaAlumno_Listar
as
begin
	select * from TAsistenciaAlumno
end
go

--=======================================================================================
-- SPU Datos Docente
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Datos')
	drop procedure spuTDocente_Datos
go
create procedure spuTDocente_Datos
	@CodDocente varchar(8)
as
begin
	select Nombre from TDocente
	where TDocente.CodDocente=@CodDocente
end
go

--exec spuTDocente_Datos 'DP001'