<%-- 
    Document   : home
    Created on : 21 avr. 2022, 12:02:25
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="container">
            <h1 class="text-info">Hello ${user.prenom}  ${user.nom}</h1>

            <di>
                <p class="center">Liste des membres </p>

                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th>Nom</th>
                            <th>Prenom</th>
                            <th>Login</th>
                            <th>Date de naissance</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${users}" var="u">
                            <tr>
                                <td>${u.nom}</td>
                                <td>${u.prenom}</td>
                                <td>${u.login}</td>
                                <td>${u.dateNaissance}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </di>
        </div>
    </body>
</html>
