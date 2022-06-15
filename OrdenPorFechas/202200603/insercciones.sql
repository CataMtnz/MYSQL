--use generationg1;
--INSERT INTO nombre_tabla (columna1, columna2..., columnaN) VALUES (valor1, valor2,....valorN);

INSERT INTO cursos (nombre, descripcion) VALUES ('Alfa','aplicados'), ('Beta','inteligentes'),('Gamma','Astutos');

INSERT INTO registros (codigo_registro,	rut) values('ZP202201','123456-8'), ('AP202201','2345678-9'),('TL202203','34567898-1'); 

INSERT INTO direcciones (nombre,numero,	ciudad) values
('Prat','123','Arica'),
('Bulnes','444','Punta arenas'),
('Arana','765','Concepcion'); 

INSERT INTO alumnos (nombre,	apellido,	edad,	curso_id,	direccion_id,registro_id)
values 
('Zoe','Palma','3','','3','1'),
('Ayun','Palma','3','1','3','2'),
('Tom','Loren','5','3','1','3');