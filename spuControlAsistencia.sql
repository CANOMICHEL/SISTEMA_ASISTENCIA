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
--================================ TTIPODOCENTE ========================================
--======================================================================================



--======================================================================================
--================================== TDOCENTE ==========================================
--======================================================================================



--======================================================================================
--=================================== TGRADO ===========================================
--======================================================================================



--======================================================================================
--================================ TMATRICULA ==========================================
--======================================================================================



--======================================================================================
--================================ TASISTENCIA =========================================
--======================================================================================