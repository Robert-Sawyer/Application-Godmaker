<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 23.09.19
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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


    <div class="card mt-2 md-2" style="width: 80%; left:10%">
        <div class="card-body">

            <form method="post">

                <div class="d-flex jusify-content-center" style="margin-top: 35px">
                    <div class="form-group col-md-6 text-center">
                        <label>Login: <input type="text" name="username"/> </label>
                    </div>
                    <div class="form-group col-md-6 text-center">
                        <label>Hasło: <input type="password" name="password"/> </label>
                    </div>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="form-group col-md-12 text-center">
                        <input type="submit" value="Zaloguj" class="btn btn-primary"/>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    </div>

                </div>
            </form>

        </div>
        <c:if test="${not empty param.error}">

            <div class="alert alert-danger text-center" style="margin-bottom: 0px">
                <strong>Uwaga!</strong> Nazwa użytkownika lub hasło niepoprawne.
            </div>
        </c:if>

    </div>



</div>

</body>
</html>
