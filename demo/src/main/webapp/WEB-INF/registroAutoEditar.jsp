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
                    <form:form action="/auto/actualizar/${auto.id}" method="post" modelAttribute="auto">
                        <form:label path="modelo">Modelo: </form:label>
                        <form:input type="modelo" path="modelo" />
                        <br>
                        <br>
                        <form:label path="marca">Marca: </form:label>
                        <form:input type="marca" path="marca" />
                        <br>
                        <br>
                        <form:label path="tipoCombustible">Tipo combustible: </form:label>
                        <form:input type="tipoCombustible" path="tipoCombustible" />
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
                        <button type="submit" class="btn btn-outline-warning">Editar Auto</button>
                        <br>
                        <br>
                        <button type="submit" class="btn btn-outline-danger">Elimnar Auto</button>
                    </form:form>

                </div>
            </body>
            </body>

            </html>