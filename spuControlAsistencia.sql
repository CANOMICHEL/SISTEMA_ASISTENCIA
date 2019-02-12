
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
	@Nombre varchar (20), 
	@Direccion varchar (50),
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
				select CodError = 1, Mensaje = 'El nombre del alumno no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'El DNI del alumno no puede estar vacío'
	end
	else
		select CodError = 1, Mensaje = 'El código del alumno se encuentra en blanco o está duplicado'
end
go

-- SPU Actualizar Alumno
if exists (select * from dbo.sysobjects where name = 'spuTAlumno_Actualizar')
	drop procedure spuTAlumno_Actualizar
go
create procedure spuTAlumno_Actualizar
	@CodAlumno varchar (8),
	@DNI varchar (8),
	@Nombre varchar (20), 
	@Direccion varchar (50),
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
				select CodError = 1, Mensaje = 'El nombre del alumno no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'El DNI del alumno no puede estar vacío'
	end
	else
		select CodError = 1, Mensaje = 'El código del alumno no existe en la base de datos'
end
go

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
	@Contraseña varchar(20),
	@DNI varchar (8),
	@Nombre varchar (20), 
	@Direccion varchar (50),
	@Telefono varchar (10),
	@CodTipoDocente varchar(8)
as
begin
	-- Validacion del codigo
	if (@CodDocente != '' and not exists (select * from TDocente where CodDocente = @CodDocente))
	begin
		-- Validar contraseña
		if (@Contraseña != '')
		begin
			-- Validar el Nombre
			if (@DNI != '')
			begin
				-- Validad el RUC
				if (@Nombre != '')
				begin
					-- Insertar nuevo cliente
					insert into TDocente
					values(@CodDocente,@Contraseña,@DNI,@Nombre,@Direccion,@Telefono,@CodTipoDocente)
					-- COnfirmacion operacion
					select CodError = 0, Mensaje = 'Registro insertado exitosamente'
				end
				else
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vacío'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'La contraseña no puede estar vacía'
	end
	else
		select CodError = 1, Mensaje = 'El código del docente se encuentra en blanco o está duplicado'
end
go

-- SPU Actualizar Docente
if exists (select * from dbo.sysobjects where name = 'spuTDocente_Actualizar')
	drop procedure spuTDocente_Actualizar
go
create procedure spuTDocente_Actualizar
	@CodDocente varchar (8),
	@Contraseña varchar(20),
	@DNI varchar (8),
	@Nombre varchar (20), 
	@Direccion varchar (50),
	@Telefono varchar (10),
	@TipoDocente varchar(8)
as
begin
	-- Validacion del codigo
	if (@CodDocente != '' and exists (select * from TDocente where CodDocente = @CodDocente))
	begin
		if (@Contraseña != '')
		begin
			-- Validar el DNI
			if (@DNI != '')
			begin
				-- Validad el Nombre
				if (@Nombre != '')
				begin
					-- Insertar nuevo alumno
					update TDocente set 
						Contraseña = @Contraseña,
						Nombre = @Nombre,
						Direccion = @Direccion,
						Telefono = @Telefono,
						DNI = @DNI,
						TipoDocente = @TipoDocente
						where CodDocente = @CodDocente
					-- Confirmacion operacion
					select CodError = 0, Mensaje = 'Registro insertado exitosamente'
				end
				else
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vacío'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'La contraseña no puede estar vacía'
	end
	else
		select CodError = 1, Mensaje = 'El código del docente no existe en la base de datos'
end
go

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
			-- Validar contraseña
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
						select CodError = 1, Mensaje = 'Ya existe un grado con esas características'

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
		select CodError = 1, Mensaje = 'El código del grado se encuentra en blanco'
end
go


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
					select CodError = 1, Mensaje = 'El nombre del docente no puede estar vacío'
			end
			else
				select CodError = 1, Mensaje = 'El DNI del docente no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'La contraseña no puede estar vacía'
	end
	else
		select CodError = 1, Mensaje = 'El código del docente no existe en la base de datos'
end
go

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
	@AñoCurricular varchar(8),
	@CodAlumno varchar(8),
	@CodGrado varchar(8),
	@Seccion varchar(20),
	@Nivel varchar(8),
	@CodDocente varchar(8)
as
begin
	-- Validacion del año curricular
	if (@AñoCurricular != '' and not exists (select * from TMatricula where AñoCurricular = @AñoCurricular and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@CodGrado != '')
			begin
				-- Validad el Seccion
				if (@Seccion != '')
				begin
					if (@Nivel != '')
					begin
						if (@CodDocente != '')
						begin
							-- Insertar nueva Matricula
							insert into TMatricula
							values(@AñoCurricular,@CodAlumno,@CodGrado,@Seccion,@Nivel,@CodDocente)
							-- COnfirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'
						end
						else
							select CodError = 1, Mensaje = 'El codigo del docente no puede estar vacío'
					end
					else
						select CodError = 1, Mensaje = 'El campo nivel no puede estar vacío'
				end
				else
					select CodError = 1, Mensaje = 'El campo seccion no puede estar vacío'
			end
			else
				select CodError = 1, Mensaje = 'El campo grado no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vacío'
	end
	else
		select CodError = 1, Mensaje = 'El año curricular se encuentra en blanco o ya existe matrícula'
end
go

-- SPU Actualizar Matricula
if exists (select * from dbo.sysobjects where name = 'spuTMatricula_Actualizar')
	drop procedure spuTMatricula_Actualizar
go
create procedure spuTMatricula_Actualizar
	@AñoCurricular varchar(8),
	@CodAlumno varchar(8),
	@CodGrado varchar(8),
	@Seccion varchar(20),
	@Nivel varchar(8),
	@CodDocente varchar(8)
as
begin
	-- Validacion del año curricular
	if (@AñoCurricular != '' and exists (select * from TMatricula where AñoCurricular = @AñoCurricular and CodAlumno = @CodAlumno))
	begin
		-- Validar CodAlumno
		if (@CodAlumno != '')
		begin
			-- Validar el Nombre
			if (@CodGrado != '')
			begin
				-- Validad el Seccion
				if (@Seccion != '')
				begin
					if (@Nivel != '')
					begin
						if (@CodDocente != '')
						begin
							-- Insertar nuevo alumno
							update TMatricula set 
								CodGrado = @CodGrado,
								Seccion = @Seccion,
								Nivel = @Nivel,
								CodDocente = @CodDocente
								where AñoCurricular = @AñoCurricular and CodAlumno = @CodAlumno
							-- Confirmacion operacion
							select CodError = 0, Mensaje = 'Registro insertado exitosamente'
						end
						else
							select CodError = 1, Mensaje = 'El codigo del docente no puede estar vacío'
					end
					else
						select CodError = 1, Mensaje = 'El campo nivel no puede estar vacío'
				end
				else
					select CodError = 1, Mensaje = 'El campo seccion no puede estar vacío'
			end
			else
				select CodError = 1, Mensaje = 'El campo grado no puede estar vacío'
		end
		else
			select CodError = 1, Mensaje = 'El codigo del alumno no puede estar vacío'
	end
	else
		select CodError = 1, Mensaje = 'El año curricular se encuentra en blanco o no existe matrícula'
end
go



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




--======================================================================================
--================================ TASISTENCIA =========================================
--======================================================================================