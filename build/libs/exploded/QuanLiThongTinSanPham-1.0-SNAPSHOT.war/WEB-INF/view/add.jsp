<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 11/11/2020
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add product</title>
</head>
<body>

<c:out value="${message}"></c:out>
<h2>Add new product</h2>
<form method="post" >
    Name <input type="text" name="name" value=""><br>
    Price <input type="number" name="price" value=""><br>
    Quantity <input type="text" name="quantity" value=""><br>
    color <input type="text" name="color" value=""><br>
    Description  <input type="text" name="description" value=""><br>
    Category <select name="cateId" >
    <option value="1">Phone</option>
    <option value="2">Television</option>
    <option value="3">computer</option>
</select>
    <input type="submit" value="Submit">
    </form>
<p>
    <a href="/product">Back </a>
</p>
</body>
</html>
