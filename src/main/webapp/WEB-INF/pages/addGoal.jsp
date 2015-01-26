<%--
  Created by IntelliJ IDEA.
  User: ewondrasek
  Date: 1/25/15
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Goal</title>
</head>
<body>
<h1>Add Goal</h1>

<form:form modelAttribute="goal">

  <table>
    <tr>
      <td>Enter minutes: </td>
      <td><form:input path="minutes" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Save Goal Minutes" />
      </td>
    </tr>
  </table>

</form:form>

</body>
</html>
