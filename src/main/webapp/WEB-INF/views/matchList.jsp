<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/matches/add">Dodaj mecz</a>

    <br>
    <br>

    <table border="1">
        <tr>
            <th>Liga</th>
            <th>Kolejka</th>
            <th>Gospodarze</th>
            <th>Goście</th>
            <th>Kurs na zwycięstwo gospodarzy</th>
            <th>Kurs na remis</th>
            <th>Kurs na zwycięstwo gości</th>
            <th>Start meczu data</th>
            <th>Start meczu godzina</th>
            <th>Gole dla gospodarzy</th>
            <th>Gole dla gości</th>
            <th colspan="3">Akcje</th>
        </tr>
        <c:forEach items="${matches}" var="match">
            <tr>
                <td>${match.round.league.name}</td>
                <td>${match.round.number}</td>
                <td>${match.homeTeam}</td>
                <td>${match.awayTeam}</td>
                <td>${match.homeCourse}</td>
                <td>${match.drawCourse}</td>
                <td>${match.awayCourse}</td>
                <td>${match.startDate}</td>
                <td>${match.startTime}</td>
                <td>${match.homeGoals}</td>
                <td>${match.awayGoals}</td>
                <td><a href="/matches/update/${match.id}">Zaktualizuj</a></td>
                <td><a href="/matches/bigupdate/${match.id}">Podlicz</a></td>
                <td><a href="/matches/delete/${match.id}">Usuń</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
