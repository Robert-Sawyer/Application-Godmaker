<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <form:form method="post" modelAttribute="round">
        <label>Numer:
            <form:input path="number" type="number" min="1"/>
            <form:errors path="number" element="div" cssStyle="color:red"/>
        </label>

        <label>Liga:
            <form:select path="league.id" items="${leagues}" itemLabel="name" itemValue="id"/>
            <form:errors path="league" element="div" cssStyle="color:red"/>
        </label>


        <input type="submit" value="Zapisz">
    </form:form>

</body>
</html>