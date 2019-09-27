<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
            <p>${league}, kolejka ${round}</p>
        </div>
    </div>


    <div class="card mt-4">
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Gospodarz</th>
                    <th>Goście</th>
                    <th>Wynik</th>
                    <th>Kurs na gospodarzy</th>
                    <th>Kurs na remis</th>
                    <th>Kurs na gości</th>
                    <th>Data meczu</th>
                    <th>Godzina meczu</th>



                    <sec:authorize access="hasRole('USER')">

                        <th colspan="1"></th>
                    </sec:authorize>


                    <sec:authorize access="hasRole('ADMIN')">
                        <td>
                            Metody Admina
                        </td>
                    </sec:authorize>


                </tr>
                <c:forEach items="${matches}" var="match">
                    <tr>
                        <td>${match.homeTeam}</td>
                        <td>${match.awayTeam}</td>


                        <c:if test="${not empty match.homeGoals}">
                            <td>${match.homeGoals}:${match.awayGoals}</td>
                        </c:if>
                        <c:if test="${empty match.homeGoals}">
                            <td>-:-</td>
                        </c:if>

                        <td>${match.homeCourse}</td>
                        <td>${match.drawCourse}</td>
                        <td>${match.awayCourse}</td>
                        <td>${match.startDate}</td>
                        <td>${match.startTime}</td>




                        <sec:authorize access="hasRole('USER')">

                            <c:if test="${not empty match.homeGoals}">
                                <td>Nie możesz juz obstawić</td>
                            </c:if>
                            <c:if test="${empty match.homeGoals}">
                                <td><a href="/bets/do/${match.id}">Obstaw!</a></td>
                            </c:if>
                        </sec:authorize>



                        <sec:authorize access="hasRole('ADMIN')">
                            <td>
                                <c:if test="${empty match.homeGoals}">

                                <a href="/matches/bigupdate/${match.id}" class="btn btn-primary">Podlicz</a>

                                </c:if>
                            </td>
                        </sec:authorize>



                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>



    <sec:authorize access="hasRole('ADMIN')">
        <div class="card text-center">
            <div class="card-body">
                <a href="/matches/add/${idRound}" class="btn btn-primary">Dodaj mecz</a>
            </div>
        </div>
    </sec:authorize>





</div>

</body>
</html>
