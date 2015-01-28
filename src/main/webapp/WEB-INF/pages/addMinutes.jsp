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

  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.js" ></script>

  <script type="text/javascript">
    $(document).ready(
            function() {
              $.getJSON('<spring:url value="activities" />', { ajax : 'true' },
                      function(data) {
                        var html = '<option value="">-- Please Select One --</option>';
                        var length = data.length;

                        for (var i = 0; i < length; i++) {
                          html += '<option value="' + data[i].description + '">' + data[i].description + '</option>';
                        }

                       // html += '</option>';

                        $('#activities').html(html);
              });
            });
  </script>
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
      <td>
        <form:select id="activities" path="activity" />
      </td>
    </tr>
    <tr>
      <td colspan="3">
        <input type="submit" value="Add Minutes" />
      </td>
    </tr>
  </table>
</form:form>

<h1>Our goal for today is: ${goal.minutes}</h1>
</body>
</html>
