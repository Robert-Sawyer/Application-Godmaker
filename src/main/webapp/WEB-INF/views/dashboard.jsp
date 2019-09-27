<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
            <h1>Witaj ${user.username}!</h1>
            <sec:authorize access="hasRole('USER')">

            <br>

            <h3>Aktualnie posiadasz <fmt:formatNumber value="${user.credit}" type="currency" currencySymbol="zł"/>.</h3><br>
            <br>
            <p>Trochę mało. Może obstaw jakiś meczyk...</p>
            </sec:authorize>
            <br>
            <br>
        </div>
    </div>
</div>


</body>

</html>