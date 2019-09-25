<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form:form method="post" modelAttribute="league">
        <label>Nazwa:
            <form:input path="name"/>
            <form:errors path="name" element="div" cssStyle="color:red"/>
        </label>

        <input type="submit" value="Zapisz">
    </form:form>

</body>
</html>