<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 24.09.19
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="match">

    <form:hidden path="id" value="${match.id}" />
    <form:hidden path="homeTeam" value="${match.homeTeam}" />
    <form:hidden path="awayTeam" value="${match.awayTeam}" />
    <form:hidden path="homeCourse" value="${match.homeCourse}" />
    <form:hidden path="drawCourse" value="${match.drawCourse}" />
    <form:hidden path="awayCourse" value="${match.awayCourse}" />
    <form:hidden path="startDate" value="${match.startDate}" />
    <form:hidden path="startTime" value="${match.startTime}" />
    <form:hidden path="round" value="${match.round.id}" />


    <label>Gole dla gospodarzy:
        <form:input path="homeGoals" type="number" min="0"/>
        <form:errors path="homeGoals" element="div" cssStyle="color:red"/>
    </label>
    <label>Gole dla gości:
        <form:input path="awayGoals" type="number" min="0"/>
        <form:errors path="awayGoals" element="div" cssStyle="color:red"/>
    </label>
    <input type="submit" value="Zapisz">

</form:form>
</body>
</html>
