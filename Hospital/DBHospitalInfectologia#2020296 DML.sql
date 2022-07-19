USE Hospital;

INSERT INTO Especialidades(CodigoEspecialidades, NombreEspecialidad)
VALUES (1, 'Neurologia');
INSERT INTO Especialidades(CodigoEspecialidades, NombreEspecialidad)
VALUES (2, 'Odontologia');
INSERT INTO Especialidades(CodigoEspecialidades, NombreEspecialidad)
VALUES (3, 'Endocrinología');
INSERT INTO Especialidades(CodigoEspecialidades, NombreEspecialidad)
VALUES (4, 'Pediatria');
INSERT INTO Especialidades(CodigoEspecialidades, NombreEspecialidad)
VALUES (5, 'Urología');

INSERT INTO Horario(CodigoHorario, HorarioInicio, HorarioSalida, Lunes, Martes, Miercoles, Jueves, Viernes)
VALUES (1, NOW(),'2021-02-13 21:00:00', 08, 16, 17, 18, 26);
INSERT INTO Horario(CodigoHorario, HorarioInicio, HorarioSalida, Lunes, Martes, Miercoles, Jueves, Viernes)
VALUES (2, NOW(), '2021-02-14 02:05:00', 01, 23, 10, 25, 19);
INSERT INTO Horario(CodigoHorario, HorarioInicio, HorarioSalida, Lunes, Martes, Miercoles, Jueves, Viernes)
VALUES (3,NOW(), '2021-02-13 15:30:00', 22, 16, 24, 12, 05);
INSERT INTO Horario(CodigoHorario, HorarioInicio, HorarioSalida, Lunes, Martes, Miercoles, Jueves, Viernes)
VALUES (4, NOW(), '2021-02-15 00:00:00', 15, 09, 03, 19, 26);
INSERT INTO Horario(CodigoHorario, HorarioInicio, HorarioSalida, Lunes, Martes, Miercoles, Jueves, Viernes)
VALUES (5, NOW(), '2021-02-14 10:15:00', 01, 09, 17, 25, 19);

INSERT INTO Medicos(CodigoMedicos, LicenciaMedica, Nombres, Apellidos, HoraEntrada, HoraSalida, TurnoMaximo, Sexo)
VALUES (1, 293013782, 'Andres Fernando', 'Hernandez Fernandez', 08, 13, 2000, 'Masculino');
INSERT INTO Medicos(CodigoMedicos, LicenciaMedica, Nombres, Apellidos, HoraEntrada, HoraSalida, TurnoMaximo, Sexo)
VALUES (2, 390190292, 'Emilia Abigail', 'Lopez Corona', 02, 18, 5000, 'Femenino');
INSERT INTO Medicos(CodigoMedicos, LicenciaMedica, Nombres, Apellidos, HoraEntrada, HoraSalida, TurnoMaximo, Sexo)
VALUES (3, 276810302, 'Federico Arnoldo', 'Marroquin Guitierez', 10, 20, 9000, 'Masculino');
INSERT INTO Medicos(CodigoMedicos, LicenciaMedica, Nombres, Apellidos, HoraEntrada, HoraSalida, TurnoMaximo, Sexo)
VALUES (4, 893013293, 'Amanda Eliza', 'Herrera Figueroa', 13, 01, 1000, 'Feminino');
INSERT INTO Medicos(CodigoMedicos, LicenciaMedica, Nombres, Apellidos, HoraEntrada, HoraSalida, TurnoMaximo, Sexo)
VALUES (5, 748210293, 'Mario Alfonso', 'Jimenez Cruz', 04, 23, 7000, 'Masculino');

INSERT INTO Medico_Especialidad(CodigoMedicoEspecialidad, Especialidades_CodigoEspecialidades, Horario_CodigoHorario, Medios_CodigoMedicos)
VALUES (1, 2, 4, 5);
INSERT INTO Medico_Especialidad(CodigoMedicoEspecialidad, Especialidades_CodigoEspecialidades, Horario_CodigoHorario, Medios_CodigoMedicos)
VALUES (2, 5, 3, 1);
INSERT INTO Medico_Especialidad(CodigoMedicoEspecialidad, Especialidades_CodigoEspecialidades, Horario_CodigoHorario, Medios_CodigoMedicos)
VALUES (3, 4, 2, 3);
INSERT INTO Medico_Especialidad(CodigoMedicoEspecialidad, Especialidades_CodigoEspecialidades, Horario_CodigoHorario, Medios_CodigoMedicos)
VALUES (4, 1, 5, 2);
INSERT INTO Medico_Especialidad(CodigoMedicoEspecialidad, Especialidades_CodigoEspecialidades, Horario_CodigoHorario, Medios_CodigoMedicos)
VALUES (5, 3, 1, 4);

INSERT INTO Areas(CodigoArea, NombreArea)
VALUES (1, 'Urgencias');
INSERT INTO Areas(CodigoArea, NombreArea)
VALUES (2, 'Laboratorios Clinicos');
INSERT INTO Areas(CodigoArea, NombreArea)
VALUES (3, 'Pediatria');
INSERT INTO Areas(CodigoArea, NombreArea)
VALUES (4, 'Anestesiologia');
INSERT INTO Areas(CodigoArea, NombreArea)
VALUES (5, 'Farmacia');

INSERT INTO Cargos(CodigoCargo, NombreCargo)
VALUES (1, 'Médico');
INSERT INTO Cargos(CodigoCargo, NombreCargo)
VALUES (2, 'Especialista');
INSERT INTO Cargos(CodigoCargo, NombreCargo)
VALUES (3, 'Enfermera');
INSERT INTO Cargos(CodigoCargo, NombreCargo)
VALUES (4, 'Defensor del paciente');
INSERT INTO Cargos(CodigoCargo, NombreCargo)
VALUES (5, 'Residente');

INSERT INTO ResponsableTurno(CodigoResponsableTurno, NombreResponsable, ApellidoResponsable, TelefonoResponsable, Areas_CodigoArea, Cargos_CodigoCargo)
VALUES (1, 'Jorge', 'Castillo', 93839293, 1, 4);
INSERT INTO ResponsableTurno(CodigoResponsableTurno, NombreResponsable, ApellidoResponsable, TelefonoResponsable, Areas_CodigoArea, Cargos_CodigoCargo)
VALUES (2, 'Maria', 'Lopez', 99039304, 2, 2);
INSERT INTO ResponsableTurno(CodigoResponsableTurno, NombreResponsable, ApellidoResponsable, TelefonoResponsable, Areas_CodigoArea, Cargos_CodigoCargo)
VALUES (3, 'Alfredo', 'Ruano', 39203920, 3, 1);
INSERT INTO ResponsableTurno(CodigoResponsableTurno, NombreResponsable, ApellidoResponsable, TelefonoResponsable, Areas_CodigoArea, Cargos_CodigoCargo)
VALUES (4, 'Javier', 'Coronado', 94893020, 4, 3);
INSERT INTO ResponsableTurno(CodigoResponsableTurno, NombreResponsable, ApellidoResponsable, TelefonoResponsable, Areas_CodigoArea, Cargos_CodigoCargo)
VALUES (5, 'Andrea', 'Jacinto', 38920029, 5, 5);

INSERT INTO Paciente(CodigoPaciente, DPI, Apellidos, Nombres, FechaNacimiento, Edad, Direccion, Ocupacion, Sexo)
VALUES (1, 22930393039,'Hernandez Jacinto', 'Mario Andres', '2003-05-12', 17, '5ta. Av. Zona 12 Monte Maria', 'Estudiante', 'Masculino');
INSERT INTO Paciente(CodigoPaciente, DPI, Apellidos, Nombres, FechaNacimiento, Edad, Direccion, Ocupacion, Sexo)
VALUES (2, 29303923903, 'Perez Garcia', 'Juan Jose', '1999-11-23', 21, '23 Calle 1-05 Zona 1', 'Maestro', 'Masculino');
INSERT INTO Paciente(CodigoPaciente, DPI, Apellidos, Nombres, FechaNacimiento, Edad, Direccion, Ocupacion, Sexo)
VALUES (3, 39009392939, 'Velasquez  Caal', 'Juana Rosa', '2000-09-30', 20, '20 Calle 7-62 Zona 7', 'Bombero', 'Femenino');
INSERT INTO Paciente(CodigoPaciente, DPI, Apellidos, Nombres, FechaNacimiento, Edad, Direccion, Ocupacion, Sexo)
VALUES (4, 49028294893, 'Aguilar  Mejia', 'Ana Maria', '1997-10-16', 23, '11 Av. 7-38 Zona 1', 'Abogada', 'Femenino');
INSERT INTO Paciente(CodigoPaciente, DPI, Apellidos, Nombres, FechaNacimiento, Edad, Direccion, Ocupacion, Sexo)
VALUES (5, 94892839382, 'Alvarado Alvarez', 'Francisco Miguel', '1980-08-23', 40, '10 Av. 3-76 Zona 4', 'Empresario', 'Masculino');

INSERT INTO Turno(CodigoTurno, FechaTurno, FechaCita, ValorCita, ResponsableTurno_CodigoResponsableTurno, Paciente_CodigoPaciente, Medico_Especialidad_CodigoMedicoEspecialidad)
VALUES (1, NOW(), NOW(), '100.50', 1, 3, 2);
INSERT INTO Turno(CodigoTurno, FechaTurno, FechaCita, ValorCita, ResponsableTurno_CodigoResponsableTurno, Paciente_CodigoPaciente, Medico_Especialidad_CodigoMedicoEspecialidad)
VALUES (2, NOW(), NOW(), '200.25', 2, 4, 3);
INSERT INTO Turno(CodigoTurno, FechaTurno, FechaCita, ValorCita, ResponsableTurno_CodigoResponsableTurno, Paciente_CodigoPaciente, Medico_Especialidad_CodigoMedicoEspecialidad)
VALUES (3, NOW(), NOW(), '5000.40', 3, 5, 1);
INSERT INTO Turno(CodigoTurno, FechaTurno, FechaCita, ValorCita, ResponsableTurno_CodigoResponsableTurno, Paciente_CodigoPaciente, Medico_Especialidad_CodigoMedicoEspecialidad)
VALUES (4, NOW(), NOW(), '300.10', 4, 1, 5);
INSERT INTO Turno(CodigoTurno, FechaTurno, FechaCita, ValorCita, ResponsableTurno_CodigoResponsableTurno, Paciente_CodigoPaciente, Medico_Especialidad_CodigoMedicoEspecialidad)
VALUES (5, NOW(), NOW(), '100.99', 5, 2, 4);

INSERT INTO Telefono_Medico(CodigoTelefonoMedico, TelefonoPersonal, TelefonoTrabajo, Medicos_CodigoMedicos)
VALUES (1, 38238392, 38392839, 4);
INSERT INTO Telefono_Medico(CodigoTelefonoMedico, TelefonoPersonal, TelefonoTrabajo, Medicos_CodigoMedicos)
VALUES (2, 48293303, 29203920, 1);
INSERT INTO Telefono_Medico(CodigoTelefonoMedico, TelefonoPersonal, TelefonoTrabajo, Medicos_CodigoMedicos)
VALUES (3, 48302932, 39049283, 5);
INSERT INTO Telefono_Medico(CodigoTelefonoMedico, TelefonoPersonal, TelefonoTrabajo, Medicos_CodigoMedicos)
VALUES (4, 48932838, 82892834, 3);
INSERT INTO Telefono_Medico(CodigoTelefonoMedico, TelefonoPersonal, TelefonoTrabajo, Medicos_CodigoMedicos)
VALUES (5, 48938474, 83892733, 5);

INSERT INTO ContactoUrgencia(CodigoContactoUrgencia, Nombres, Apellidos, NumeroContacto, Paciente_CodigoPaciente)
VALUES (1, 'Pablo Guillermo', 'Barrios Ordonez', 38393833, 4);
INSERT INTO ContactoUrgencia(CodigoContactoUrgencia, Nombres, Apellidos, NumeroContacto, Paciente_CodigoPaciente)
VALUES (2, 'Carlos Luis', 'Estrada Flores', 38291029, 3);
INSERT INTO ContactoUrgencia(CodigoContactoUrgencia, Nombres, Apellidos, NumeroContacto, Paciente_CodigoPaciente)
VALUES (3, 'Pedro Jorge', 'Chavez Sanchez', 38493829, 2);
INSERT INTO ContactoUrgencia(CodigoContactoUrgencia, Nombres, Apellidos, NumeroContacto, Paciente_CodigoPaciente)
VALUES (4, 'Valeria Guadalupe', 'Mendoza Chub', 28382819, 5);
INSERT INTO ContactoUrgencia(CodigoContactoUrgencia, Nombres, Apellidos, NumeroContacto, Paciente_CodigoPaciente)
VALUES (5, 'Melani Moserrat', 'Jimenez Castro', 93829383, 1);

/*UPDATE*/
UPDATE Especialidades SET NombreEspecialidad = 'Psicologia' WHERE CodigoEspecialidades = 3;
UPDATE Horario SET Viernes = 12 WHERE CodigoHorario = 5;
UPDATE Medicos SET LicenciaMedica = 273938212 WHERE CodigoMedicos = 3;
UPDATE Areas SET NombreArea = 'Cuidados Intesivos' WHERE CodigoArea = 4;
UPDATE Cargos SET NombreCargo = 'Nutricionista' WHERE CodigoCargo = 4;
UPDATE ResponsableTurno SET TelefonoResponsable = 28399380 WHERE CodigoResponsableTurno = 4;
UPDATE Paciente SET Direccion = '19Avenida 8-10 Zona 11' WHERE CodigoPaciente = 1;
UPDATE Turno SET ValorCita = '200.90' WHERE CodigoTurno = 5;
UPDATE Telefono_Medico SET TelefonoPersonal = 28102839 WHERE CodigoTelefonoMedico = 2;
UPDATE ContactoUrgencia SET NumeroContacto = 28391829 WHERE CodigoContactoUrgencia = 2;

/*DELETE*/
DELETE FROM Especialidades WHERE CodigoEspecialidades = 1;
DELETE FROM Horario WHERE NoRevista = 3;
DELETE FROM Medicos WHERE CodigoMedicos = 2;
DELETE FROM Areas WHERE CodigoArea = 1;
DELETE FROM Cargos WHERE CodigoCargo = 3;
DELETE FROM ResponsableTurno WHERE CodigoResponsableTurno = 5;
DELETE FROM Paciente WHERE CodigoPaciente = 4;
DELETE FROM Turno WHERE CodigoTurno = 2;
DELETE FROM Telefono_Medico WHERE CodigoTelefonoMedico = 5;
DELETE FROM ContactoUrgencia WHERE CodigoContactoUrgencia = 5;

/*DROP*/
DROP TABLE Medico_Especialidad;

/*SELECT*/
SELECT*FROM Especialidades;
SELECT*FROM Horario;
SELECT*FROM Medicos;
SELECT*FROM Areas;
SELECT*FROM Cargos;
SELECT*FROM ResponsableTurno;
SELECT*FROM Paciente;
SELECT*FROM Turno;
SELECT*FROM Telefono_Medico;
SELECT*FROM ContactoUrgencia;