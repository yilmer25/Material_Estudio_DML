CREATE DATABASE Trazabilidad_SVGA;

USE Trazabilidad_SVGA;


CREATE TABLE empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    codigo_empresa VARCHAR(50) NOT NULL UNIQUE,
    nombre_empresa VARCHAR(100) NOT NULL
);

CREATE TABLE trazabilidada (
    id_trazabilidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100),
    encargado VARCHAR(100),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    estado VARCHAR(50),
    fecha_cierre DATE NULL,
    
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);