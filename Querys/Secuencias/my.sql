--Para BORRAR BASE DE DATOS
DROP DATABASE IF EXISTS NOMBREDATABASE;
--Para crear base de datos
CREATE DATABASE IF NOT EXISTS NOMBREDATABASE;

--Para mostrar bases de datos
show databases;


--Para usar base de datos
USE NOMBREDATABASE;

--Para saber en que base de datos estas trabajando
Select database();


-- vaciar LA TABLA
TRUNCATE TABLE clientes;
-- ELIMINAR LA TABLA (ojito)
DROP TABLE clientes;

--CREAR TABLA: nombre (nombre_variable y tipo; tipo char y varchar con (cantidad de caracteres));
CREATE TABLE NOMBRE TABLA(
autor_id INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
genero CHAR(1), -- M o F
fecha_nacimiento DATE,
pais_origen VARCHAR(40)
);
-- conocer el estructura de la tabla
describe clientes;

--Escribir FK
CREATE TABLE nombre_tabla(
nombre_columna1 tipo_dato restriccion,
nombre_columna2 tipo_dato restriccion,
PRIMARY KEY (nombre_columna1),
ADD FOREIGN KEY (nombre_columnafk) REFERENCES otra_tabla(nombre_pk)
);

--AUTOINCREMENT : SI NO AGREGAMOS LA PK EN LA INSERCION, CREA UNA SEGUN  LA SECUENCIA

--direcciones 
CREATE table clientes(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre varchar(30) NOT NULL,
correo varchar(50),
ADD FOREIGN KEY (direccionId) REFERENCES direcciones(id)
);

--Para insertar datos en la tabla NO IMPORTA EL ORDEN sí el tipo de variable, varchar y DATE con ''
INSERT INTO NOMBRE TABLA(autor_id, nombre, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Codi', 'M', '2018-01-01', 'México'),
        (2, 'Codi', 'M', '2018-01-01', 'México'),
        (3, 'Codi', 'M', '2018-01-01', 'México'
);

--para visualizar LAS COLUMNAS DE tabla
SHOW COLUMNS from NOMBREtabla;
--es igual que poner
DESC nombretabla; /*para ver síntaxis*/

--para visualizar TODOS LOS DATOS
SELECT * FROM autores;


--Para crear una base de datos que se forme a partir de otra tabla (YA CREADA)

CREATE TABLE TablaNueva LIKE TablaBase;
Insert INTO nombretabla(COLUMNA, COLUMNA2)
VALUES (valoresDEACUERDOaSYNTAXISCOLUMNAS),
        (valoresDEACUERDOaSYNTAXISCOLUMNAS
);

--Para que no genere error en caso de que exista la tabla
CREATE TABLE IF NOT EXISTS autores(
autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
seudonimo VARCHAR(50) UNIQUE,
genero ENUM('M', 'F'),
fecha_nacimiento DATE NOT NULL,
pais_origen VARCHAR(40) NOT NULL,
fecha_creacion DATETIME DEFAULT current_timestamp
);

-- tarea
use generationg1;

create table employees(
id (11) int PRIMARY KEY NOT NULL AUTO_INCREMENT,
birth_date DATE,
first_name varchar(14),
last_name varchar(16),
hire_date DATE
);

create table departments(
id int (11)PRIMARY KEY NOT NULL AUTO_INCREMENT,
name varchar(40)
);

create table dept_manager(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
employee_id int(11),
department_id int(11),
from_date DATE,
to_date DATE
);
-- asignar nombre a la relacion
ALTER TABLE dept_manager
ADD CONSTRAINT FK_employees_id_dept_manager  
FOREIGN KEY (employee_id) REFERENCES employees(id),
ADD CONSTRAINT FK_department_id_dept_manager 
FOREIGN KEY (department_id) REFERENCES departments(id);

create table dept_emp(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
employee_id int(11),
department_id int(11),
from_date DATE,
to_date DATE
);

-- asignar nombre a la relacion
ALTER TABLE dept_emp
ADD CONSTRAINT FK_employees_id_dept_emp  
FOREIGN KEY (employee_id) REFERENCES employees(id),
ADD CONSTRAINT FK_department_id_dept_emp 
FOREIGN KEY (department_id) REFERENCES departments(id);

create table salaries(
from_date DATE  PRIMARY KEY NOT NULL,
salary int,
to_date DATE,
employee_id int(11)
);

--asignar nombre a la relacion
ALTER TABLE salaries
ADD CONSTRAINT FK_employees_id_salaries
FOREIGN KEY (employee_id) REFERENCES employees(id);

create table titles(
title varchar(50),
from_date DATE,
to_date DATE,
employee_id int(11),
primary key(title, from_date)
);

-- asignar nombre a la relacion
ALTER TABLE titles
ADD CONSTRAINT FK_employees_id_titles 
FOREIGN KEY (employee_id) REFERENCES employees(id);


--TAREA GRUPAL

--tablas que no tienen foranea SON departamentos y empleados
CREATE TABLE IF NOT EXISTS departamentos(
departamento_id CHAR UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(25) NOT NULL,
);

CREATE TABLE IF NOT EXISTS empleados(
empleados_id CHAR UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(25) NOT NULL,
);

-- 3ra tabla
CREATE TABLE IF NOT EXISTS departamento_empleados(
departamento_id CHAR UNSIGNED PRIMARY KEY AUTO_INCREMENT,
desde DATE NOT NULL,
hasta DATE NOT NULL
);

ALTER TABLE departamento_empleados
ADD FOREIGN KEY (empleado_id) REFERENCES empleados(id);

ALTER TABLE departamento_empleados
ADD CONSTRAINT FK_direccionId
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);


--4ta tabla
CREATE TABLE IF NOT EXISTS departamento_empleados(
departamento_id CHAR UNSIGNED PRIMARY KEY AUTO_INCREMENT,
desde DATE NOT NULL,
hasta DATE NOT NULL
);

ALTER TABLE departamento_empleados
ADD FOREIGN KEY (empleado_id) REFERENCES empleados(id);

ALTER TABLE departamento_empleados
ADD CONSTRAINT FK_direccionId
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);
--fin tarea


--MODIFICAR TABLA

ALTER TABLE nombre_tabla
ADD nombre_columna tipo restriccion;

ALTER TABLE clientes
ADD direccionId int;

--eliminar columna
ALTER TABLE clientes
DROP COLUMN direccionId;

--FILTROS Y ACTUALIZACIONES

-- ACTUALIZAR BASE REGISTRO EN TABLA
UPDATE NOMBRE_TABLA
SET columnaAModificar = valor_a_insertar, columnaAModificar2 = valor_a_insertar2
WHERE CONDICION -- filtrar

-- update sin where
set correo = 'quezada@palma.cl'
Where id = 7;

--where es una condicion booleana true, false
-- WHERE y LIKE 
SELECT * FROM Customers
-- WHERE CustomerName LIKE '%an%'
-- '%%' 
-- WHERE CustomerName LIKE 'fran%'
WHERE CustomerName LIKE '%tion'
and ContactName Like '%von'
;

-- Orden ascendente
SELECT * FROM Products
where price Between 10 and 30
Order by price asc;
;

-- Orden Descendente
SELECT * FROM Products
where price Between 10 and 30
Order by price desc;
;

-- Relacionar tablas
ALTER TABLE clientes
ADD FOREIGN KEY (direccionId) REFERENCES direcciones(id);
ALTER TABLE CLIENTES
ADD CONSTRAINT FK_direccionId -- asignar nombre a la relacion
FOREIGN KEY (direccionId) REFERENCES direcciones(id);



-- ver los resultados
show create table clientes;

--QUERYS 08 06 2022

--0

--busqueda especifica
SELECT population FROM world
WHERE name = 'Germany';

-- IN nos permite comprobar si un elemento está en una lista.
SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

--BETWEENpermite comprobar el rango (el rango especificado incluye los valores límite
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;

--1

--WHERE name LIKE 'B%'para encontrar por nombre lo que comienza con "B"
SELECT name FROM world
WHERE name LIKE 'Y%';

--WHERE name LIKE 'B%'para encontrar por nombre lo que termina con "B"
SELECT name FROM world
WHERE name LIKE '%Y';

--WHERE name LIKE '%B%'para encontrar por nombre lo que termina con "B"
SELECT name FROM world
WHERE name LIKE '%x%';

--como opción única _UNESPACIO UNA LETRA ANTES ___ PARA X ESPACIOS??
SELECT name FROM world
WHERE name LIKE '_n%'
ORDER BY name;

-- pd SI
SELECT name FROM world
WHERE name LIKE '%o__o%'SELECT name FROM world
WHERE name LIKE '%o__o%'

--caracteres especificos ____ solo 4
SELECT name FROM world
WHERE name LIKE '____'
;

--IGUALAR DOS COLUMNAS
SELECT name
FROM world
WHERE name = capital

--concadenar
SELECT name
FROM world
WHERE capital = concat(name, ' City');

--the capital includes the name of the country.
select capital, name
from world
where capital LIKE concat ('%',name,'%')
and capital>name
--Find the capital and the name where the capital 
--is an extension of name of the country.
select capital, name
from world
where capital LIKE concat ('%',name,'%')
and capital>name

--Show the name and the extension where the capital 
--is an extension of name of the country.
SELECT name, 
REPLACE(capital, name, '')
FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;

select nombreColumna, nombreColumna2
from nombreTabla
where condicion DE LLAVES
and condicion2
order by nombreColumnaaOrdenar asc;

--09 05 2022 sqlzoo
SELECT name FROM world
WHERE population >= 200000000

--puedes hacer operaciones matematicas
SELECT name, gdp/population FROM world
WHERE population >= 200000000

SELECT name, population/1000000 FROM world
WHERE continent = 'South America'

-- IN DENTRO DE
select name, population from world
where name IN ('France', 'Germany','Italy')

--hehe OR INCLUYE A AMBOS
SELECT name, population, area
FROM world
WHERE area>3000000 
OR population>250000000

--XOR ES UNA O LA OTRA
SELECT name, population, area
FROM world
WHERE area>3000000 
XOR population>250000000

--ROUND
ROUND(7253.86, 0)    ->  7254
ROUND(7253.86, 1)    ->  7253.9
ROUND(7253.86,-3)    ->  7000

SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'

--??
SELECT * FROM nobel
WHERE yr = 1970
AND subject IN ('Cookery',
'Chemistry',
'Literature');

--RECUERDA OR INCLUYE
select yr, subject, winner
from nobel
where yr = 1980 and subject = 'physics'
OR yr = 1984 and subject = 'chemistry'

--debido a typeos
select * from nobel
where winner = 'EUGENE O''NEILL'

--The expression subject IN ('chemistry','physics') can be used as a value - it will be
-- 0 or 1. Show the 1984 winners and subject ordered by subject and winner name; 
--but list chemistry and physics last.
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject in ('Chemistry','Physics'), subject, winner
--ORDENAR POR FILAS O COLUMNAS

--ANOTA NOBEL QUIZ


--SELECT DENTRO DEL SELECT
SELECT name FROM world
WHERE population >
(SELECT population FROM world
WHERE name='Russia');

--Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
--Per Capita GDP
--The per capita GDP is the gdp/population
select name 
from world
where continent= 'Europe' 
and gdp/population
> (select gdp/population 
from world 
where name = 'United Kingdom');


--List the name and continent of countries in the continents containing either 
--Argentina or Australia. Order by name of the country.
SELECT name, continent FROM world
WHERE continent IN (SELECT continent FROM world WHERE name IN ('Argentina','Australia'))
ORDER BY name

--
SELECT name
FROM world
WHERE population >= ALL(SELECT population
FROM world
WHERE population>0)

-- wtf federation od taekwondo
SELECT continent, name, population FROM world x
WHERE population >= ALL
(SELECT population FROM world y
WHERE y.continent=x.continent
AND population>0);









--INNER entrega la intersección donde se repite PK O FK
select*
from TABLA A
inner JOIN TABLA B
-- on a.key = b.key llaves por medio de la cual se unen 
ON c.customerNumber = o.customerNumber;

--ON ES DEL JOIN