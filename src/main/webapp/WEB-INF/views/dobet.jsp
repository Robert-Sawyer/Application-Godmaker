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

    <form:form method="post" modelAttribute="bet">


    <div class="card text-center">
        <div class="card-body">
            <p>${bet.match.homeTeam} vs. ${bet.match.awayTeam}</p>
        </div>
    </div>





    <div class="card mt-4 text-center">
        <div class="card-body">


                <form:hidden path="match.id" value="${bet.match.id}"/>
                <form:hidden path="gain" value="${bet.gain}"/>

                <div class="row">


                    <div class="form-group col-md-6">
                        <label for="cashId">Ile postawić pieniędzy?</label>
                        <form:input path="cashDeposit" type="number" step="0.01" min="1" class="form-control" id="cashId"/>
                        <form:errors path="cashDeposit" element="div" cssClass="error"/>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="kindId">Rodzaj obstawienia - 0 gospodarze, 1 remis, 2 goście:</label>
                        <form:input path="kindOfBet" type="number" min="0" max="2" class="form-control" id="kindId"/>
                        <form:errors path="kindOfBet" element="div" cssClass="error"/>
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
