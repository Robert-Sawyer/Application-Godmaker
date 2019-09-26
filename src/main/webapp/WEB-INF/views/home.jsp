<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Strona główna</title>
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
        <div class="ctr">
            <br>
            <br>
            <h1>Witaj na stronie Bógmacher!</h1>
            <br>
            <br>
            <br>
            <br>
                <h3>Strona dla hazardzistów o mocnych nerwach!</h3><br>
            <br>
            <p>Obstawiaj mecze swoich ulubionych druzyn.</p><br><br><p> Wygrywaj ogromne pieniądze i zostań obrzydliwie bogaty.</p><br><br><p> Do dzieła! Rejestruj się!</p>
            <br>
        </div>
    </div>
</div>
<%--

<h2>Zdobądź Boską fortunę!</h2>
<br>
<br>
<form method="get" action="/users/add">
    <button type="submit">Zarejestruj</button>
</form>
<br>
<sec:authorize access="isAuthenticated()">
    <form method="get" action="/logout">
        <button type="submit">Wyloguj</button>
    </form>
</sec:authorize>
<sec:authorize access="!isAuthenticated()">
    <form method="get" action="/login">
        <button type="submit">Zaloguj</button>
    </form>
</sec:authorize>
<br>
<sec:authorize access="hasRole('ADMIN')">
<a href="/leagues/all">Ligi</a>
<br>
<a href="/rounds/all">Kolejki</a>
<br>
<a href="/matches/all">Mecze</a>
<br>
<a href="/users/all">Użytkownicy</a>
<br>
<a href="/bets/all">Obstawienia</a>
</sec:authorize>
<br>
<br>
--%>
<%--
    <sec:authorize access="isAuthenticated()">
    <h1>Jesteś zalogowany!</h1>
    </sec:authorize>
    <sec:authorize access="hasRole('ADMIN')">
        JESTEŚ ADMINEM!!!
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <p>Zalogowany jako: <sec:authentication property="principal.username"/></p>
        <p>Posiada role: <sec:authentication property="principal.authorities"/></p>
    </sec:authorize>--%>

</body>

</html>
