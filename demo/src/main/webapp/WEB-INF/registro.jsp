<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Registro</title>
        </head>

        <body>
            <div>|
                <form action="/registro/usuario" method="Post">
                    <label for="nombre"> Nombre: </label>
                    <input type="text" id="nombre" name="nombre">
                    <br>
                    <label for="apellido"> Apellido: </label>
                    <input type="text" id="apeliido" name="apellido">
                    <br>
                    <label for="edad"> Edad: </label>
                    <input type="number" id="edad" name="edad">
                    <br>
                    <input type="submit" value="registrar">
                    <input type="button" value="enviar">
                </form>
            </div>
        </body>
        </body>

        </html>