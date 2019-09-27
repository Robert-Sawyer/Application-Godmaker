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


    <form:form method="post" modelAttribute="round">
    <div class="card mt-4">
        <div class="card-body">



                <form:hidden path="league.id" value="${league.id}"/>

                <div class="d-flex row justify-content-center">
                    <div class="form-group col-md-3 text-center">
                        <label for="numId">Numer kolejki</label>
                        <form:input path="number" type="number" min="1" class="form-control" id="numId"/>
                        <form:errors path="number" element="div" cssClass="error"/>
                    </div>

                </div>

        </div>
    </div>

    <div class="card text-center">
        <div class="card-body">
            <input type="submit" value="Zapisz" class="btn btn-primary">
        </div>
    </div>
    </form:form>

</div>

</body>
</html>