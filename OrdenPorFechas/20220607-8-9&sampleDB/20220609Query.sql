use Testjoin;
--complete el script

/*CREATE DATABASE TestJoin
GO

CREATE DATABASE TestJoin;
​
USE TestJoin;
​
CREATE TABLE grupos
(
    id int PRIMARY KEY NOT NULL,
    nombre varchar(20)
);
​
CREATE TABLE Alumnos
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(20),
    grupo_id int
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
('Paulino', 6);*/

USE TestJoin;

​select * 
FROM alumnos a
inner join grupos g 
on a.grupo_id= g.id;

--INNER JOIN
​select a.id. a.nombre as 'alumno', g.nonmbre as 'nombreGrupo'--cambia el nombre
FROM alumnos a
inner join grupos g 
on a.grupo_id= g.id;
where g.id =4;--datos G4

--LEFT JOIN se da prioridad al primer conjunto(alumnos)
select a.id. a.nombre as 'alumno', g.nonmbre as 'nombreGrupo'
FROM alumnos a
LEFT join grupos g 
on a.grupo_id= g.id;

--Rigth join se da prioridad al segundo conjunto (grupos)
​select * 
FROM alumnos a
inner join grupos g 
on a.grupo_id= g.id;

select a.id. a.nombre as 'alumno', g.nonmbre as 'nombreGrupo'
FROM alumnos a
LEFT join grupos g 
on a.grupo_id= g.id;

--FULL JOIN con la misma 2 estructura FULL outer join 
--debido a version de mysql es hacer un union con un left y right

--UNION sin espacios al generar error 
​select * 
FROM alumnos a
right join grupos g 
on a.grupo_id= g.id;
select a.id. a.nombre as 'alumno', g.nonmbre as 'nombreGrupo'
FROM alumnos a
LEFT join grupos g 
on a.grupo_id= g.id;

