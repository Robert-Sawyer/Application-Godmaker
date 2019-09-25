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
<div class="card mt-4">
    <div class="card-body">
        <table class="table table-hover">
    <tr>
        <th>Nazwa</th>
        <th colspan="1">Akcje</th>
    </tr>
            <c:forEach items="${leagues}" var="league">
                <tr>
                    <td>${league.name}</td>
                    <td><a href="/rounds/check/${league.id}">Zobacz kolejki</a></td>

                </tr>
            </c:forEach>
</table>
    </div>
</div>
</div>

</body>
</html>
