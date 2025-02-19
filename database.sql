-- Eliminar la base de datos si ya existe
DROP DATABASE IF EXISTS registro_usuarios;

-- Crear la base de datos
CREATE DATABASE registro_usuarios;

-- Usar la base de datos creada
USE registro_usuarios;

-- Crear la tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar un usuario de prueba
INSERT INTO usuarios (nombre, correo, contraseña) 
VALUES ('Usuario Prueba', 'usuario@example.com', 'password123');
