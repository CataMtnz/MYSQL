--crear usuario solo en deskop
CREATE USER 'cata'@'localhost' IDENTIFIED BY 'Admin1234*';

GRANT ALL PRIVILEGES ON *.* TO 'cata'@'localhost' WITH GRANT OPTION;
-- op1
FLUSH PRIVILEGES;

--crear usuario para acceder en todo desk parte2
CREATE USER 'pamela'@'%' IDENTIFIED BY 'Admin1234*';

GRANT ALL PRIVILEGES ON *.* TO 'pamela'@'%' WITH GRANT OPTION;

-- tratar de ejecutar ambas partes sino funciona solo op1
FLUSH PRIVILEGES;

-- ingresar a mysql con el nuevo usuario
mysql -u cata -p

--para acceder a carpeta 

-u pamela <mysqlsampledatabase.sql -p

C:\Users\56950\OneDrive\Escritorio\ClasesRepaso\VsCode G4>mysql -u pamela -p
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.33 MySQL Community Server (GPL)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| generationg1       |
| libreria_cf        |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database g4;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| g4                 |
| generationg1       |
| libreria_cf        |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

mysql> use g4;
Database changed
mysql>

--salir de mysql
exit