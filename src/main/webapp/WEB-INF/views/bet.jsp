<%--
  Created by IntelliJ IDEA.
  User: wojciech
  Date: 22.09.19
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><html>
<head>
    <title>Title</title>
</head>
<body>

    <form:form method="post" modelAttribute="bet">
        <label>Zastawione pieniądze:
            <form:input path="cashDeposit" type="number" step="0.01" min="1"/>
            <form:errors path="cashDeposit" element="div" cssStyle="color:red"/>
        </label>

        <label>Mecz:
            <form:select path="match.id" items="${matches}" itemLabel="allTeams" itemValue="id"/>
            <form:errors path="match" element="div" cssStyle="color:red"/>
        </label>

        <label>Rodzaj obstawienia - 0 gospodarze, 1 remis, 2 goście:
            <form:input path="kindOfBet" type="number" min="0" max="2"/>
            <form:errors path="kindOfBet" element="div" cssStyle="color:red"/>
        </label>


        <input type="submit" value="Zapisz">
    </form:form>

</body>
</html>
