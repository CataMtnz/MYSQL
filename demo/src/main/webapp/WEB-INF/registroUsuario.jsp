<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Registro</title>
            </head>

            <body>
                <div>|
                    <c:if test="${msgError!=null}">
                        <c:out value="${msgError}"></c:out>
                    </c:if>
                    <form:form action="/registro/usuario" method="post" modelAttribute="usuario">

                        <form:label path="nombre">Nombre: </form:label>
                        <form:input path="nombre" for="nombre" />
                        <br>
                        <br>
                        <form:label path="apellido">Apellido: </form:label>
                        <form:input path="apellido" for="apellido" />
                        <br>
                        <br>
                        <form:label path="edad">Edad: </form:label>
                        <form:input type="number" path="edad" for="edad" />
                        <br>
                        <br>
                        <form:label path="password">Password: </form:label>
                        <form:input type="password" path="password" for="password" />
                        <br>
                        <br>
                        <input type="submit" value="Registrar">

                    </form:form>

                </div>
            </body>
            </body>

            </html>