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
    <style type="text/css">
        .error {
            color: firebrick;
        }

        .error-block {
            color: black;
            background-color: #ffEEEE;
            border: 3px solid firebrick;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<h1>Add Goal</h1>

<form:form modelAttribute="goal">
    <!-- path="*" means handle all errors -->
    <form:errors path="*" cssClass="error-block" element="div"/>
    <table>
        <tr>
            <td>Enter minutes:</td>
            <td><form:input path="minutes" cssErrorClass="error"/></td>
            <td><form:errors path="minutes" cssClass="error"/></td>

        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="Save Goal Minutes"/>
            </td>
        </tr>
    </table>

</form:form>

</body>
</html>
