<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 11/11/2020
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<c:out value="${message}"></c:out>
<h2>Edit product</h2>
<form method="post" action="">
    Name <input type="text" name="name" value="${product.getName()}"><br>
    Price <input type="number" name="price" value="${product.getPrice}"><br>
    Quantity <input type="text" name="quantity" value="${product.getQuantity()}"><br>
    color <input type="text" name="color" value="${product.getColor()}"><br>
    Description  <input type="text" name="description" value="${product.getDescription()}"><br>
    Category <select name="cateId" >
    <option value="1">Phone</option>
    <option value="2">Television</option>
    <option value="3">computer</option>
</select>
    <input type="submit" value="Update">
</form>
<p>
    <a href="/product">Back </a>
</p>
</body>
</html>
