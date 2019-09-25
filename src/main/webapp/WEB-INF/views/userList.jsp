<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/users/add">Dodaj użytkownika</a>

    <br>
    <br>

    <table border="1">
        <tr>
            <th>Login</th>
            <th>Email</th>
            <th>Saldo</th>
            <th colspan="2">Akcje</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.login}</td>
                <td>${user.email}</td>
                <td>${user.credit}</td>
                <td><a href="/users/update/${user.id}">Zaktualizuj</a></td>
                <td><a href="/users/delete/${user.id}">Usuń</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
