<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Already Exist</title>
</head>
<body>
<form action="/records/create" method="post">
    <p>An error occurred! Please try again!</p>
    <table>
        <tr>
            <td>
                <label for="firstName">First name: </label>
            </td>
            <td>
                <input type="text" id="firstName" name="firstName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last name: </label>
            </td>
            <td>
                <input type="text" id="lastName" name="lastName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <textarea type="text" id="address" name="address"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
