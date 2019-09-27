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

    <div class="card mt-4">
        <div class="card-body">


                <form:hidden path="round.id" value="${match.round.id}"/>

                <div class="row">
                    <div class="form-group col-md-3 text-center">
                        <label>Gospodarze:
                            <form:input path="homeTeam" class="form-control"/>
                            <form:errors path="homeTeam" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Goście:
                            <form:input path="awayTeam" class="form-control"/>
                            <form:errors path="awayTeam" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Kurs na zwycięstwo gospodarzy:
                            <form:input path="homeCourse" class="form-control" type="number" step="0.01" min="1"/>
                            <form:errors path="awayCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Kurs na remis:
                            <form:input path="drawCourse" class="form-control" type="number" step="0.01" min="1"/>
                            <form:errors path="drawCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Kurs na zwycięstwo gości:
                            <form:input path="awayCourse" class="form-control" type="number" step="0.01" min="1"/>
                            <form:errors path="awayCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Data rozpoczęcie meczu:
                            <form:input path="startDate" type="date" class="form-control"/>
                            <form:errors path="startDate" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3 text-center">
                        <label>Godzina rozpoczęcia meczu:
                            <form:input path="startTime" class="form-control" type="time"/>
                            <form:errors path="startTime" element="div" cssClass="error"/>
                        </label>
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
