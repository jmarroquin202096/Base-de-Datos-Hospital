/*Josué Daniel Marroquín Hernández, 2020296, IN5BV*/
CREATE DATABASE Hospital;
USE Hospital;

-- -----------------------------------------------------
-- Table Especialidades
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Especialidades(
  CodigoEspecialidades INT NOT NULL,
  NombreEspecialidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (CodigoEspecialidades)
  );
-- -----------------------------------------------------
-- Table Horario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Horario(
  CodigoHorario INT NOT NULL,
  HorarioInicio DATETIME(6) NOT NULL,
  HorarioSalida DATETIME(6) NOT NULL,
  Lunes TINYINT(45) NULL,
  Martes TINYINT(45) NULL,
  Miercoles TINYINT(45) NULL,
  Jueves TINYINT(45) NULL,
  Viernes TINYINT(45) NULL,
  PRIMARY KEY (CodigoHorario)
  );
-- -----------------------------------------------------
-- Table Medicos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Medicos (
  CodigoMedicos INT NOT NULL,
  LicenciaMedica INT NOT NULL,
  Nombres VARCHAR(100) NOT NULL,
  Apellidos VARCHAR(100) NOT NULL,
  HoraEntrada TINYINT(45) NOT NULL,
  HoraSalida TINYINT(45) NOT NULL,
  TurnoMaximo INT NOT NULL,
  Sexo VARCHAR(20) NOT NULL,
  PRIMARY KEY (CodigoMedicos)
  );
-- -----------------------------------------------------
-- Table Medico_Especialidad
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Medico_Especialidad (
  CodigoMedicoEspecialidad INT NOT NULL,
  Especialidades_CodigoEspecialidades INT NOT NULL,
  Horario_CodigoHorario INT NOT NULL,
  Medios_CodigoMedicos INT NOT NULL,
  PRIMARY KEY (CodigoMedicoEspecialidad),
  CONSTRAINT fk_Medico_Especialidad_Especialidades1
    FOREIGN KEY (Especialidades_CodigoEspecialidades) REFERENCES Especialidades (CodigoEspecialidades),
  CONSTRAINT fk_Medico_Especialidad_Horario1
    FOREIGN KEY (Horario_CodigoHorario) REFERENCES Horario (CodigoHorario),
  CONSTRAINT fk_Medico_Especialidad_Medicos1
    FOREIGN KEY (Medios_CodigoMedicos) REFERENCES Medicos (CodigoMedicos)
);
-- -----------------------------------------------------
-- Table Areas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Areas(
  CodigoArea INT NOT NULL,
  NombreArea VARCHAR(45) NOT NULL,
  PRIMARY KEY (CodigoArea)
  );
-- -----------------------------------------------------
-- Table Cargos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cargos(
  CodigoCargo INT NOT NULL,
  NombreCargo VARCHAR(45) NOT NULL,
  PRIMARY KEY (CodigoCargo)
  );
-- -----------------------------------------------------
-- Table ResponsableTurno
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ResponsableTurno(
  CodigoResponsableTurno INT NOT NULL,
  NombreResponsable VARCHAR(75) NOT NULL,
  ApellidoResponsable VARCHAR(45) NOT NULL,
  TelefonoResponsable VARCHAR(45) NOT NULL,
  Areas_CodigoArea INT NOT NULL,
  Cargos_CodigoCargo INT NOT NULL,
  PRIMARY KEY (CodigoResponsableTurno),
  CONSTRAINT fk_ResponsableTurno_Areas1
    FOREIGN KEY (Areas_CodigoArea) REFERENCES Areas (CodigoArea),
    CONSTRAINT fk_ResponsableTurno_Cargos1
    FOREIGN KEY (Cargos_CodigoCargo) REFERENCES Cargos (CodigoCargo)
);
-- -----------------------------------------------------
-- Table Paciente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Paciente(
  CodigoPaciente INT NOT NULL,
  DPI BIGINT(20) NOT NULL,
  Apellidos VARCHAR(45) NOT NULL,
  Nombres VARCHAR(45) NOT NULL,
  FechaNacimiento DATE NOT NULL,
  Edad INT NULL,
  Direccion VARCHAR(150) NOT NULL,
  Ocupacion VARCHAR(50) NOT NULL,
  Sexo VARCHAR(15) NOT NULL,
  PRIMARY KEY (CodigoPaciente)
  );
-- -----------------------------------------------------
-- Table Turno
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Turno(
  CodigoTurno INT NOT NULL,
  FechaTurno DATE NOT NULL,
  FechaCita DATE NOT NULL,
  ValorCita DECIMAL(10,2) NOT NULL,
  ResponsableTurno_CodigoResponsableTurno INT NOT NULL,
  Paciente_CodigoPaciente INT NOT NULL,
  Medico_Especialidad_CodigoMedicoEspecialidad INT NOT NULL,
  PRIMARY KEY (CodigoTurno),
  CONSTRAINT fk_Turno_ResponsableTurno1
    FOREIGN KEY (ResponsableTurno_CodigoResponsableTurno) REFERENCES ResponsableTurno (CodigoResponsableTurno),
      CONSTRAINT fk_Turno_Paciente1
    FOREIGN KEY (Paciente_CodigoPaciente) REFERENCES Paciente (CodigoPaciente),
  CONSTRAINT fk_Turno_Medico_Especialidad
    FOREIGN KEY (Medico_Especialidad_CodigoMedicoEspecialidad) REFERENCES Medico_Especialidad (CodigoMedicoEspecialidad)
);
-- -----------------------------------------------------
-- Table Telefono_Medico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Telefono_Medico(
  CodigoTelefonoMedico INT NOT NULL,
  TelefonoPersonal INT NOT NULL,
  TelefonoTrabajo INT NULL,
  Medicos_CodigoMedicos INT NOT NULL,
  PRIMARY KEY (CodigoTelefonoMedico),
  CONSTRAINT fk_Telefono_Medico_Medicos1
    FOREIGN KEY (Medicos_CodigoMedicos) REFERENCES Medicos (CodigoMedicos)
    );
-- -----------------------------------------------------
-- Table ContactoUrgencia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ContactoUrgencia (
  CodigoContactoUrgencia INT NOT NULL,
  Nombres VARCHAR(100) NOT NULL,
  Apellidos VARCHAR(100) NOT NULL,
  NumeroContacto INT NOT NULL,
  Paciente_CodigoPaciente INT NOT NULL,
  PRIMARY KEY (CodigoContactoUrgencia),
  CONSTRAINT fk_ContactoUrgencia_Paciente1
    FOREIGN KEY (Paciente_CodigoPaciente) REFERENCES Paciente (CodigoPaciente)
    );
