<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show info about</title>
</head>
<body>
<%@include file="homepage.html"%>
<form action="/records/read" method="get">
<%
        String info = (String) request.getAttribute("address");
        String[] a = info.split(" ");
%>
        <p>First name: <%=a[0]%></p>
        <p>Last name: <%=a[1]%></p>
        <p>Address name: <%=a[2]%></p>
</form>
</body>
</html>
