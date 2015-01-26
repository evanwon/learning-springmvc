<%--
  Created by IntelliJ IDEA.
  User: ewondrasek
  Date: 1/22/15
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Add Minutes</title>
</head>
<body>
<h1>Add Minutes</h1>

Language: <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>

<form:form modelAttribute="minutesModel">
  <table>
    <tr>
      <td>
        <spring:message code="goal.text" />
      </td>
      <td>
        <form:input path="minutes" />
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Add Minutes" />
      </td>
    </tr>
  </table>
</form:form>

<h1>Our goal for today is: ${goal.minutes}</h1>
</body>
</html>
