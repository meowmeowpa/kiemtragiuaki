<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.example.baikiemtragki.OrderServlet" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/4/2024
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order List</title>
</head>
<body>
<%
    List<OrderServlet> orderServletList = new ArrayList<>();
    orderServletList.add(new OrderServlet("01", new Date(), "Khách hàng 1", "Chưa giao"));
    orderServletList.add(new OrderServlet("02", new Date(), "Khách hàng 2", "Đang giao"));
    orderServletList.add(new OrderServlet("03", new Date(), "Khách hàng 3", "Đã giao"));
    request.setAttribute("orderServletList", orderServletList);
%>
<table border="1px">
    <tr>
        <td>Order ID</td>
        <td>Order Date</td>
        <td>Customer</td>
        <td>Status</td>
    </tr>
    <c:forEach var="order" items="${orderServletList}">
        <tr>
            <td>${order.orderId}</td>
            <td>${order.orderDate}</td>
            <td>${order.customer}</td>
            <td>${order.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
