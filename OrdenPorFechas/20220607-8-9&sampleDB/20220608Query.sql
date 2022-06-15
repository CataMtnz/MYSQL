use generationg1

--uso de alias custumer==c
Select from * costumers c;

-- run selection ctrl f9, seleccionando todo el query
SELECT * FROM customers c
WHERE c.custumerName LIKE '%toy%';

--nos permite mostrar los datos que cumplen
SELECT c.customerNumber, c.customerName
FROM customers c 
WHERE c.customerName LIKE '%toy%';

--especificamos con ciudad ''
SELECT c.customerNumber, c.customerName,c.city
FROM customers c 
WHERE c.city = 'Madrid';

--ver imagen vamos a ver 2  customer and orders, por PK Y FK, trae las llaves
SELECT *
FROM customers c, orders o;

--ontenemos TODOS LOS REGISTROS DE AMBAS TABLAS ya que no pusimos restriccion y trajimos todo
SELECT *
FROM customers c, orders o
ORDER BY c.customerNumber DESC;

SELECT *
--where considerando la PK se ven todos los order number
where c.customerNumber = o.custumer
FROM customers c, orders o
ORDER BY c.customerNumber DESC;

--obtener todas las ordenes por cliente
SELECT c.customerNumber , o.orderNumber, c.customerName
FROM customers c, orders o
-- de la imagen order y custumer tienen la vinculacion de PK CON FK-- se buscan todos aquellos que tengan esta relacion --4 ordenes asociadas con el id de orden, cuando se hacen consultas sueltas--order id es igual, a distintas ventas
--un usuario va a salir repetido muchas veces la compra es distinta--la misma persona customer Number hizo muchas relaciones
where c.customerNumber = o.customerNumber
and c.customerNumber =496
ORDER BY c.customerNumber DESC;

--el match entre todas las ordenes que hizo, hace un  bucle
--fecha y estado de entrega son distintas--algunas estan canceladas
select
from
where
order by

SELECT*
FROM products p;

--categorias para clasficar el producto
SELECT*
FROM productlines pl;

--filtrar por todos los productos de motercylces
select p.productName , pl.productLine 
from products p , productlines pl
where p.productLine  = pl.productLine
and pl.productLine = 'Motorcycles'  ;

select p.productName , pl.productLine, pl.textDescription
from products p , productlines pl
where p.productLine  = pl.productLine
and pl.productLine = 'Motorcycles'  ;

--preguntar motorcycles en la columna producto

select p.productName , pl.productLine 
from products p , productlines pl
where p.productLine  = pl.productLine
and p.productLine = 'Motorcycles'  ;
--muestra lo mismo se puede por el where

-- El category manager de Motorcycles necesita saber cuáles son los productos más inventariados, para hacer una campaña de ventas con esos productos. Se necesita crear una query que retorne el listado de productos de la categoría “Motorcycles”, con su inventario ordenado de mayor a menor.
 customers              |
| employees              |
| offices                |
| orderdetails           |
| orders                 |
| payments               |
| productlines           |
| products

--VE LA IMAGEN
--SELECCIONAR TODO A LO QUE PERTENEZCA la busqueda y luego ir especificando

select p.productName , pl.productLine , p.quantityInStock
from products p , productlines pl
where p.productLine  = pl.productLine
AND pl.productLine = 'Motorcycles' 
ORDER BY p.quantityInStock DESC;

--a)	El category manager de Motorcycles necesita saber cuáles son los productos más inventariados, 
--para hacer una campaña de ventas con esos productos. Se necesita crear una query 
--que retorne el listado de productos de la categoría “Motorcycles”, con su inventario ordenado de mayor a menor.
SELECT p.productName, p.productLine, p.quantityInStock FROM products p
WHERE p.productLine = 'Motorcycles'
ORDER BY p.quantityInStock DESC;

--b)	El Gerente Comercial desea saber cuántos productos en stock se tiene de la marca “Ford” 
--en las distintas líneas de producto, ordenado alfabéticamente por línea de producto
SELECT p.productName, p.productLine, p.quantityInStock
FROM products p
--Like para que entre la palabra ford, if the sentences is equal, just fort enter to the order
WHERE p.productName LIKE '%Ford%'
--ASC se puede eliminar ya que es por defecto 
ORDER BY p.productLine asc;

--inicio AND termino 
SELECT name FROM world
WHERE name LIKE 'C%' 
and name Like '%ia'

--para repticion de ej3 veces
SELECT name FROM world
WHERE name LIKE '%a%a%a%'

-- EN ESTE CASO name = nombre pais, ME COSTO
SELECT name
FROM world
WHERE name = capital

--otra forma
SELECT name, capital
from world
Where LENGHT(name) = LENGHT(capital);

--COSTO MÁS AGREGAR RESTRICCIONES
select capital, name
from world
where capital LIKE concat ('%',name,'%')
and capital>name

--REPLACE OBJETO, A CAMBIAR, ELCAMBIO
REPLACE('vessel','e','a') -> 'vassal'

--la ejecute por inercia más que comprender
SELECT name, 
REPLACE(capital, name, '')
FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;
--

-- comandos
SELECT * FROM customers c;

SELECT c.customerNumber, c.customerName,c.city
FROM customers c 
WHERE c.city = 'Madrid';

SELECT *
FROM customers c, orders o
where c.customerNumber = o.customerNumber
ORDER BY c.customerNumber DESC;

SELECT c.customerNumber , o.orderNumber, c.customerName
FROM customers c, orders o
where c.customerNumber = o.customerNumber
and c.customerNumber =496
ORDER BY c.customerNumber DESC;

SELECT*
FROM products p;

SELECT*
FROM productlines pl;

select p.productName , pl.productLine, pl.textDescription
from products p , productlines pl
where p.productLine  = pl.productLine
and pl.productLine = 'Motorcycles'  ;

select p.productName , pl.productLine 
from products p , productlines pl
where p.productLine  = pl.productLine
and p.productLine = 'Motorcycles'  ;

select p.productName , pl.productLine , p.quantityInStock
from products p , productlines pl
where p.productLine  = pl.productLine
AND pl.productLine = 'Motorcycles' 
ORDER BY p.quantityInStock DESC;

select p.productName , pl.productLine , p.quantityInStock
from products p , productlines pl
where p.productLine  = pl.productLine
AND pl.productLine = 'Motorcycles' 
ORDER BY p.quantityInStock DESC;

select p.productName , pl.productLine , p.quantityInStock
from p
where p.productLine  = 'Motorcycles' 
ORDER BY p.quantityInStock DESC;

 
SELECT p.productName, p.productLine, p.quantityInStock FROM products p
WHERE p.productLine = 'Motorcycles'
ORDER BY p.quantityInStock DESC;

SELECT p.productName, p.productLine, p.quantityInStock
FROM products p
WHERE p.productName LIKE '%Ford%'
ORDER BY p.productLine asc;

select nombreColumna, nombreColumna2
from nombreTabla
where condicion and condicion2
order by nombreColumnaaOrdenar asc;



--la TABLA A se establece 1 , a la primera le consideramos A 
--una de las dos es FOREIGN key

--obtiene los ordenes y clientes que tienen la misma ID
select*
from TABLA A
inner JOIN TABLA B
-- on a.key = b.key
ON c.customerNumber = o.customerNumber;

SELECT * 
FROM customers c -- tabla A
INNER JOIN orders o -- tabla B
ON c.customerNumber = o.customerNumber;

SELECT * 
FROM orders -- tabla A
INNER JOIN productCode-- tabla B
ON orderNumber = productCode;

union all
--muestra datos repetidos
select * from (select a.id, a.nombre as 'alumno',g.id as 'grupoId',  g.nombre as 'nombreGrupo'
				FROM alumnos a
				Right JOIN grupos g 
				on a.grupo_id = g.id
				UNION
				select a.id, a.nombre as 'alumno',g.id as 'grupoId', g.nombre as 'nombreGrupo'
				FROM alumnos a
				LEFT JOIN grupos g 
				on a.grupo_id = g.id
				) as universo
-- where -- is null
	;
