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



    <div class="card mt-4">
        <div class="card-body">

            <form:form method="post" modelAttribute="match">

                <form:hidden path="round.id" value="${match.round.id}"/>

                <div class="row">
                    <div class="form-group col-md-3">
                        <label>Gospodarze:
                            <form:input path="homeTeam" class="form-control"/>
                            <form:errors path="homeTeam" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Goście:
                            <form:input path="awayTeam" class="form-control"/>
                            <form:errors path="awayTeam" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Kurs na zwycięstwo gospodarzy:
                            <form:input path="homeCourse" class="form-control"/>
                            <form:errors path="awayCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Kurs na remis:
                            <form:input path="drawCourse" class="form-control"/>
                            <form:errors path="drawCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Kurs na zwycięstwo gości:
                            <form:input path="awayCourse" class="form-control"/>
                            <form:errors path="awayCourse" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Data rozpoczęcie meczu:
                            <form:input path="startDate" type="date" class="form-control"/>
                            <form:errors path="startDate" element="div" cssClass="error"/>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label>Godzina rozpoczęcia meczu:
                            <form:input path="startTime" class="form-control" type="time"/>
                            <form:errors path="startTime" element="div" cssClass="error"/>
                        </label>
                    </div>
                </div>

                <input type="submit" value="Save" class="btn btn-primary">
            </form:form>
        </div>
    </div>



</div>

</body>
</html>
