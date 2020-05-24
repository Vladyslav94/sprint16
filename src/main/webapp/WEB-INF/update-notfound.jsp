<%@ page import="java.sql.SQLClientInfoException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Not Found</title>
</head>
<body>
<%
    String nameAndSurname = (String) request.getAttribute("person");
    response.setStatus(HttpServletResponse.SC_NOT_FOUND);
%>

<p5>Person with name ' <%=nameAndSurname%> ' not found in address book</p5>
</body>
</html>
