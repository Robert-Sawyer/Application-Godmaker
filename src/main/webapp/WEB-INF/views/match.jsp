<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 18:04
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
        <label>Gospodarze:
            <form:input path="homeTeam"/>
            <form:errors path="homeTeam" element="div" cssStyle="color:red"/>
        </label>
        <label>Goście:
            <form:input path="awayTeam"/>
            <form:errors path="awayTeam" element="div" cssStyle="color:red"/>
        </label>
        <label>Kurs na zwycięstwo gospodarzy:
            <form:input path="homeCourse" type="number" step="0.01" min="1"/>
            <form:errors path="homeCourse" element="div" cssStyle="color:red"/>
        </label>
        <label>Kurs na remis:
            <form:input path="drawCourse" type="number" step="0.01" min="1"/>
            <form:errors path="drawCourse" element="div" cssStyle="color:red"/>
        </label>
        <label>Kurs na zwycięstwo gości:
            <form:input path="awayCourse" type="number" step="0.01" min="1"/>
            <form:errors path="awayCourse" element="div" cssStyle="color:red"/>
        </label>


        <label>Data rozpoczęcia meczu:
            <form:input path="startDate" type="date"/>
            <form:errors path="startDate" element="div" cssStyle="color:red"/>
        </label>
        <label>Godzina rozpoczęcia meczu:
            <form:input path="startTime" type="time"/>
            <form:errors path="startTime" element="div" cssStyle="color:red"/>
        </label>

        <label>Kolejka:
            <form:select path="round.id" items="${rounds}" itemLabel="fullData" itemValue="id"/>
            <form:errors path="round" element="div" cssStyle="color:red"/>
        </label>









        <input type="submit" value="Zapisz">
    </form:form>

</body>
</html>
