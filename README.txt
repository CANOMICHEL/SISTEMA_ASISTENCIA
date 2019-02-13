-- ===================================================================================================================
-- Valida si existe un docente o no, devuelve una tabla con una columna de CodError (0 si existe, 1 si no existe)
-- Y otra columna con un mensaje		
	exec spuTDocente_Validar 'D001','1234'

-- ===================================================================================================================
-- Devuelve una tabla con los CodGrados, Grados y Secciones de los cuales está encargado un docente
	exec spuTMatricula_GradoPorDocente 'D001'

-- ===================================================================================================================
-- Lista todos los grados 
	exec spuTGrado_Listar

-- ===================================================================================================================
-- Devuelve una tabla con el CodAlumno y Nombres de los alumnos por un determiando salón
	exec spuTMatricula_AlumnosPorGrado 'G01'