CREATE DATABASE TestJoin
GO

USE TestJoin
GO

CREATE TABLE Grupos
( grupo_id int PRIMARY KEY NOT NULL,
    Nombre varchar(20)
);

CREATE TABLE Alumnos
(
    id_lugar int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nombre varchar(20),
    grupo_id int
    ADD FOREIGN KEY (grupo_id) REFERENCES grupos(id);
);

INSERT INTO Grupos VALUES
(1, 'Grupo1'),
(2, 'Grupo2'),
(3, 'Grupo3'),
(4, 'Grupo4'),
(5, 'Grupo5'),
(6, 'Grupo6'),


INSERT INTO Alumnos (nombre,grupo_id) VALUES
('Leonardo Utreras', 1),
('Luis Mejias', 1),
('Francisco Cid', 1),
('Francisco Perez', 1),
('Marysabel Aedo', 1),
('Ignacio Romero', 1),

('Nicolas Neira', 2),
('Genesis Quezada', 2),
('Catalina Castillo', 2),
('Carlos Iturra', 2),
('Gabriel Guzman', 2),

('Alejandro', 3),
('Luis', 3),
('Cristobal', 3),
('Joao', 3),
('Cristian', 3),

('Katherina', 4),
('Esteban', 4),
('Danko', 4),
('Wladimir', 4),
('Catalina', 4),

('Nicole Olivares', 5),
('Hector Gomez', 5),
('Fernando Faundez',5),
('Ignacio Galaz', 5),
('Constanza Mardones', 5),

('Alondra', 6),
('Diana', 6),
('Matias', 6),
('Michael', 6),
('Paulino', 6);

