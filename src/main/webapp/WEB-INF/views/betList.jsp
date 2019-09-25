<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/bets/add">Dodaj obstawienie</a>

    <br>
    <br>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Użytkownik</th>
            <th>Mecz</th>
            <th>Zastawione pieniądze</th>
            <th>Rodzaj obstawienia</th>
            <th colspan="2">Akcje</th>
        </tr>
        <c:forEach items="${bets}" var="bet">
            <tr>
                <td>${bet.id}</td>
                <td>${bet.user.username}</td>
                <td>${bet.match.allTeams}</td>
                <td>${bet.cashDeposit}</td>
                <td>${bet.kindOfBet}</td>
                <td><a href="/bets/update/${bet.id}">Zaktualizuj</a></td>
                <td><a href="/bets/delete/${bet.id}">Usuń</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
