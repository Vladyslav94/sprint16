<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing Record</title>
</head>
<body>
<%@include file="homepage.html"%>
<form action="/records/update" method="post">
    <%
        String info = (String) request.getAttribute("address");
        String[] s = info.split(" ");
    %>

    <table>
        <tr>
            <td>
                <label for="firstName">First name: </label>
            </td>
            <td>
                <input type="text" id="firstName" name="firstName" value="<%=s[0]%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastName" name="lastName" value="<%=s[1]%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <textarea type="text" id="address" name="address" value="<%=s[2]%>"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
