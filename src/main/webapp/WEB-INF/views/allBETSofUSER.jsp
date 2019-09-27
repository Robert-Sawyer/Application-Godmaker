<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 25.09.19
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>eee</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>

<%@include file="/WEB-INF/views/fragments/header.jspf" %>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">

    <div class="card text-center">
        <div class="card-body">
            <p>Zakłady</p>
        </div>
    </div>


    <div class="card mt-4">
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Numer seryjny</th>
                    <th>Zespoły</th>
                    <th>Pieniądze obstawione</th>
                    <th>Zespoł obstawiony</th>
                    <th >Wynik</th>
                    <th>Zarobek</th>
                </tr>
                <c:forEach items="${bets}" var="bet">
                    <tr>
                        <td>${bet.id}</td>
                        <td>${bet.match.homeTeam} vs. ${bet.match.awayTeam}</td>
                        <td><fmt:formatNumber value="${bet.cashDeposit}" type="currency" currencySymbol="zł"/></td>

                        <td>
                        <c:if test="${bet.kindOfBet == 0}">
                            ${bet.match.homeTeam}
                        </c:if>
                            <c:if test="${bet.kindOfBet == 1}">
                                Remis
                            </c:if>
                            <c:if test="${bet.kindOfBet == 2}">
                                ${bet.match.awayTeam}
                            </c:if>
                        </td>
                        <c:if test="${not empty bet.match.homeGoals}"><td>${bet.match.homeGoals}:${bet.match.awayGoals}</td></c:if>
                        <c:if test="${empty bet.match.homeGoals}"><td>-:-</td></c:if>

                        <td><fmt:formatNumber value="${bet.gain}" type="currency" currencySymbol="zł"/></td>


                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>

</body>
</html>
