<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .case {
            width: 50px;
            height: 50px;
            border: 1px solid black;
            display: inline-block;
            background-color: #68d57e;
            border-radius: 5px;
        }
    </style>

</head>
<body>
<h1 class="bg-info text-white text-center"><%= "Bienvenue sur la Bataille Navale!" %>
</h1>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="bg-info text-white text-center">Grille 1</h2>
<%--            <% for (int k = 0; k < 10; k++) { %>--%>
<%--            <div class="case"><%= k+1 %></div>--%>
<%--<% } %>--%>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col"> </th>
                    <th scope="col">A</th>
                    <th scope="col">B</th>
                    <th scope="col">C</th>
                    <th scope="col">D</th>
                    <th scope="col">E</th>
                    <th scope="col">F</th>
                    <th scope="col">G</th>
                    <th scope="col">H</th>
                    <th scope="col">I</th>
                    <th scope="col">J</th>
                </tr>
                </thead>
                <tbody>
                <% for (int i = 0; i < 10; i++) { %>
                <tr>
                    <th scope="row"><%= i+1 %></th>
                    <% for (int j = 0; j < 10; j++) { %>
                    <td><div class="case"></div></td>
                    <% } %>

                </tr>
                <% } %>
                </tbody>
            </table>

<%--            <c:forEach items="${grille}" var="case">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${case.isVide()}">--%>
<%--                        <td><div class="case">vide</div></td>--%>
<%--                    </c:when>--%>
<%--                    <c:when test="${case.isBateau()}">--%>
<%--                        <td><div class="case">bateau</div></td>--%>
<%--                    </c:when>--%>

<%--                </c:choose>--%>
<%--            </c:forEach>--%>

        </div>
    </div>
</div>


        <%--<a href="hello-servlet">Hello Servlet</a>--%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                crossorigin="anonymous"></script>
</body>
</html>