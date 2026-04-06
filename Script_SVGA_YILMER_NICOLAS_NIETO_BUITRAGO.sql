CREATE DATABASE Trazabilidad_SVGA;
USE Trazabilidad_SVGA;

CREATE TABLE empresa (
    codigo_empresa VARCHAR(50),
    nombre_empresa VARCHAR(100) NOT NULL
);

ALTER TABLE empresa
ADD PRIMARY KEY (codigo_empresa);

CREATE TABLE trazabilidad (
    id_trazabilidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100),
    encargado VARCHAR(100),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    estado VARCHAR(50),
    fecha_cierre DATE NOT NULL,
    codigo_empresa VARCHAR(50),

    CONSTRAINT fk_empresa 
    FOREIGN KEY (codigo_empresa)
    REFERENCES empresa(codigo_empresa)
);
insert into empresa
values (