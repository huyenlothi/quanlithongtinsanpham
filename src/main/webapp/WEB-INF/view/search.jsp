<%--
  Created by IntelliJ IDEA.
  User: X1 Carbon
  Date: 11/11/2020
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            width: 100%;

            border-collapse: collapse;


        }
        form{
            width: 60%;
            box-shadow: 0 19px 38px rgba(0,0,0,0.30), 0 15px 12px rgba(0,0,0,0.22);
            margin: 0 auto;
            padding-bottom: 2px;
            padding-top: 20px;
        }
        caption {
            font-size: 22px;
            font-weight: bold;
        }
        table.th,td,tr{
            border: 1px solid #ececec;

        }
        th{
            text-align: left;
            padding: 10px;
        }
        td{
            padding: 10px;

        }

    </style>
</head>
<body>
<form action="">
    <a href="/product?action=add">Add new product</a><br/>
    <input type="text"  name="search">
    <input type="submit" src="/product?action=search" value="Search">
    <table>
        <caption>Danh sách sản phẩm</caption>
        <tr>
            <th> # </th>
            <th> Product Name </th>
            <th> Price </th>
            <th> Quantity </th>
            <th> Color </th>
            <th> Category </th>
            <th> Action </th>
        </tr>
        <c:forEach items="${product}" var="product">
            <tr>
                <td><c:out value="${product.getProId()}"></c:out> </td>
                <td> <c:out value="${product.getName()}"></c:out></td>
                <td> <c:out value="${product.getPrice()}"></c:out></td>
                <td> <c:out value="${product.getQuantity()}"></c:out></td>
                <td> <c:out value="${product.getColor()}"></c:out></td>
                <td> <c:out value="${product.getCateName()}"></c:out></td>
                <td><a href="/product?action=edit&id=${product.getProId()}">Edit</a>
                    <a href="/product?action=delete&id=${product.getProId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
