<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/rounds/add">Dodaj kolejkę</a>

    <br>
    <br>

    <table border="1">
        <tr>
            <th>Numer</th>
            <th>Liga</th>
            <th colspan="2">Akcje</th>
        </tr>
        <c:forEach items="${rounds}" var="round">
            <tr>
                <td>${round.number}</td>
                <td>${round.league.name}</td>
                <td><a href="/rounds/update/${round.id}">Zaktualizuj</a></td>
                <td><a href="/rounds/delete/${round.id}">Usuń</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
