<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><html>
<head>
    <title>Title</title>
</head>
<body>

    <form:form method="post" modelAttribute="user">
        <label>Login:
            <form:input path="username"/>
            <form:errors path="username" element="div" cssStyle="color:red"/>
        </label>
        <label>Email:
            <form:input path="email"/>
            <form:errors path="email" element="div" cssStyle="color:red"/>
        </label>
        <label>Password:
            <form:password path="password"/>
            <form:errors path="password" element="div" cssStyle="color:red"/>
        </label>


        <input type="submit" value="Zapisz">
    </form:form>

</body>
</html>
