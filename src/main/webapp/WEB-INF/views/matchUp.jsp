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

    <form:form method="post" modelAttribute="match">

    <div class="card text-center">
        <div class="card-body">
            <p>${match.homeTeam} vs. ${match.awayTeam}</p>
        </div>
    </div>





    <div class="card mt-4 text-center">
        <div class="card-body">



                <form:hidden path="id" value="${match.id}" />
                <form:hidden path="homeTeam" value="${match.homeTeam}" />
                <form:hidden path="awayTeam" value="${match.awayTeam}" />
                <form:hidden path="homeCourse" value="${match.homeCourse}" />
                <form:hidden path="drawCourse" value="${match.drawCourse}" />
                <form:hidden path="awayCourse" value="${match.awayCourse}" />
                <form:hidden path="startDate" value="${match.startDate}" />
                <form:hidden path="startTime" value="${match.startTime}" />
                <form:hidden path="round" value="${match.round.id}" />


                <div class="row">
                    <div class="form-group col-md-6">
                <label>Gole dla gospodarzy:
                    <form:input path="homeGoals" type="number" min="0"/>
                    <form:errors path="homeGoals" element="div" cssClass="error"/>
                </label>
                    </div>
                    <div class="form-group col-md-6">
                <label>Gole dla gości:
                    <form:input path="awayGoals" type="number" min="0"/>
                    <form:errors path="awayGoals" element="div" cssClass="error"/>
                </label>
                    </div>
                </div>




        </div>
    </div>

        <div class="card text-center">
            <div class="card-body">
                <input type="submit" value="Podlicz" class="btn btn-primary">
            </div>
        </div>
    </form:form>

</div>

</body>
</html>

