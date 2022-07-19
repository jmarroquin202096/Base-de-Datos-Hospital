/*Josué Daniel Marroquín Hernández 2020296, 
Aldo Eduardo Ruiz Monzón 2020217, 
Erwin Esteban Vicente Hernández 2020325*/
CREATE DATABASE Laboratorio3;

USE Laboratorio3 ;

-- -----------------------------------------------------
-- Table Sueldos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Sueldos (
  idSueldo INT NOT NULL AUTO_INCREMENT,
  Sueldo DECIMAL(10,2) NOT NULL,
  Bonificacion DECIMAL(10,2) NOT NULL,
  Bono14 DECIMAL(10,2) NOT NULL,
  Aguinaldo DECIMAL(10,2) NOT NULL,
  SueldoTotal DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (idSueldo)
);
-- -----------------------------------------------------
-- Table Lugar
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Lugar (
  idLugar INT NOT NULL AUTO_INCREMENT,
  DepartamentoGuatemala VARCHAR(100) NULL,
  PRIMARY KEY (idLugar)
);
-- -----------------------------------------------------
-- Table Region
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Region (
  idRegion INT NOT NULL,
  NombreRegion VARCHAR(45) NOT NULL,
  Telefono INT NOT NULL,
  PRIMARY KEY (idRegion)
);
-- -----------------------------------------------------
-- Table Departamento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Departamento (
  idDepartamento INT NOT NULL,
  NombreDepartamento VARCHAR(100) NOT NULL,
  Telefono INT NOT NULL,
  Descripcion VARCHAR(100) NOT NULL,
  Region_idRegion INT NOT NULL,
  PRIMARY KEY (idDepartamento),
  CONSTRAINT fk_Departamento_Region1
    FOREIGN KEY (Region_idRegion) REFERENCES Region (idRegion)
);
-- -----------------------------------------------------
-- Table TiposEmpleados
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS TiposEmpleados (
  idTiposEmpleado INT NOT NULL AUTO_INCREMENT,
  NombreTipoEmpleado VARCHAR(100) NOT NULL,
  Puesto VARCHAR(100) NOT NULL,
  Descripcion VARCHAR(500) NOT NULL,
  PRIMARY KEY (idTiposEmpleado)
  );
-- -----------------------------------------------------
-- Table Empleados
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Empleados (
  idEmpleado INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(100) NOT NULL,
  Apellidos VARCHAR(100) NOT NULL,
  Edad INT NULL,
  Telefono INT NOT NULL,
  FechaContratación DATE NOT NULL,
  TiposEmpleados_idTiposEmpleado INT NOT NULL,
  Sueldos_idSueldo INT NOT NULL,
  Lugar_idLugar INT NOT NULL,
  Departamento_idDepartamento INT NOT NULL,
  PRIMARY KEY (idEmpleado),
  CONSTRAINT fk_Empleados_TiposEmpleados
    FOREIGN KEY (TiposEmpleados_idTiposEmpleado) REFERENCES TiposEmpleados (idTiposEmpleado),
  CONSTRAINT fk_Empleados_Sueldos1
    FOREIGN KEY (Sueldos_idSueldo) REFERENCES Sueldos (idSueldo),
  CONSTRAINT fk_Empleados_Lugar1
    FOREIGN KEY (Lugar_idLugar) REFERENCES Lugar (idLugar),
  CONSTRAINT fk_Empleados_Departamento1
    FOREIGN KEY (Departamento_idDepartamento) REFERENCES Departamento (idDepartamento)
);

DROP TABLE Empleados;