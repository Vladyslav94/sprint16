<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all Records</title>
</head>
<body>
<%@include file="homepage.html"%>
<p><spin>Sort by:<a href="/records/ascending?order=ASC">ascending</a> | <a href="/records/descending?order=DESC">descending</a></spin></p>
<table>
    <tr>
        <th>No.</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3">Operation</th>
    </tr>

    <%  int count = 0;
        for (String strings : (List<String>) request.getAttribute("persons")) {
            String[] a = strings.split(" ");
            int b = a.length-3;
            int c = 0;
            count++;
            String n = "";
            while (c <= b){
                n += a[c+2] + " ";
                c++;
            }
    %>
    <tr>
        <td><%=count%></td>
        <td><%=a[0]%></td>
        <td><%=a[1]%></td>
        <td><%=n.trim()%></td>
        <td>
            <a href="/records/read?firstName=<%=a[0]%>&lastName=<%=a[1]%>">Read</a>
        </td>
        <td>
            <a href="/records/update?firstName=<%=a[0]%>&lastName=<%=a[1]%>">Update</a>
        </td>
        <td>
            <a href="/records/delete?firstName=<%=a[0]%>&lastName=<%=a[1]%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>


</table>

</body>
</html>
