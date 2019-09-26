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
            <p>${num}</p>
            <c:if test="${lig.id == 1}">
                <img src="/resources/pol.png" alt="logo" width="120" height="120" >
            </c:if>
            <c:if test="${lig.id == 2}">
                <img src="/resources/ang.jpeg" alt="logo" width="240" height="120" >
            </c:if>
            <c:if test="${lig.id == 3}">
                <img src="/resources/esp.png" alt="logo" width="120" height="120" >
            </c:if>
            <c:if test="${lig.id == 4}">
                <img src="/resources/ita.jpeg" alt="logo" width="80" height="120" >
            </c:if>
            <c:if test="${lig.id == 5}">
                <img src="/resources/fra.jpeg" alt="logo" width="120" height="120" >
            </c:if>
        </div>
    </div>


    <div class="card mt-4">
        <div class="card-body">
            <table class="table table-hover text-center">
                <tr>
                    <th>Numer kolejki</th>
                    <th>Mecze</th>
                </tr>
                <c:forEach items="${rounds}" var="round">
                    <tr>
                        <td>${round.number}</td>
                        <td><a href="/matches/check/${round.id}">Sprawdź!</a></td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <sec:authorize access="hasRole('ADMIN')">
        <div class="card text-center">
            <div class="card-body">
                <a href="/rounds/add/${x}" class="btn btn-primary">Dodaj rundę</a>
            </div>
        </div>
    </sec:authorize>

</div>

</body>
</html>
