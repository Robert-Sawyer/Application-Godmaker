<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/leagues/add">Dodaj ligę</a>

    <br>
    <br>

    <table border="1">
        <tr>
            <th>Nazwa</th>
            <th colspan="2">Akcje</th>
        </tr>
        <c:forEach items="${leagues}" var="league">
            <tr>
                <td>${league.name}</td>
                <td><a href="/leagues/update/${league.id}">Zaktualizuj</a></td>
                <td><a href="/leagues/delete/${league.id}">Usuń</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>