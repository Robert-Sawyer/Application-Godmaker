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


    <form:form method="post" modelAttribute="user">

        <div class="card mt-4">
            <div class="card-body">


                <div class="row">
                    <div class="form-group col-md-6 text-center">
                        <label>Login:
                            <form:input path="username" class="form-control"/>
                            <form:errors path="username" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-6 text-center">
                        <label>Email:
                            <form:input path="email" class="form-control"/>
                            <form:errors path="email" element="div" cssClass="error"/>
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12 text-center">
                        <label>Hasło:
                            <form:password path="password" class="form-control"/>
                            <form:errors path="password" element="div" cssClass="error"/>
                        </label>
                    </div>

                </div>




            </div>
        </div>

        <div class="card text-center">
            <div class="card-body">
                <input type="submit" value="Zarejestruj" class="btn btn-primary">
            </div>
        </div>
    </form:form>

</div>







</body>
</html>

