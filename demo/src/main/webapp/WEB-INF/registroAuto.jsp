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
                    <form:form action="/auto/guardar" method="post" modelAttribute="auto">

                        <form:label path="modelo">Modelo: </form:label>
                        <form:input path="modelo" for="modelo" />
                        <br>
                        <br>
                        <form:label path="marca">Marca: </form:label>
                        <form:input path="marca" for="marca" />
                        <br>
                        <br>
                        <form:label path="tipoCombustible">Tipo combustible: </form:label>
                        <form:input path="tipoCombustible" for="tipoCombustible" />
                        <br>
                        <form:label path="cantidadPuerta">Cantidad de puertas: </form:label>
                        <form:input type="number" path="cantidadPuerta" for="cantidadPuerta" />
                        <br>
                        <form:label path="cantidadRueda">Cantidad de ruedas: </form:label>
                        <form:input type="number" path="cantidadRueda" for="cantidadRueda" />
                        <br>
                        <br>
                        <form:label path="dueno">Dueño: </form:label>
                        <form:input type="password" path="dueno" for="dueno" />
                        <br>
                        <br>
                        <input type="submit" value="Registrar">

                    </form:form>

                </div>
            </body>
            </body>

            </html>