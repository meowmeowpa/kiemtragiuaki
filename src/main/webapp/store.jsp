<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.StoreServlet" %>
<%@ page import="com.example.baikiemtragki.StoreServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách giỏ hàng</title>
</head>
<body>
<%
    List<StoreServlet> storeList = new ArrayList<>();
    storeList.add(new StoreServlet("Laptop", 1, 1500.00));
    storeList.add(new StoreServlet("Chuột không dây", 2, 20.00));
    storeList.add(new StoreServlet("Bàn phím cơ", 1, 100.00));
    storeList.add(new StoreServlet("Màn hình 24 inch", 2, 200.00));
    request.setAttribute("storeList", storeList);
%>
<table border="1px">
    <tr>
        <td>Sản phẩm</td>
        <td>Số lượng</td>
        <td>Giá tiền</td>
        <td>Tổng cộng</td>
    </tr>
    <c:forEach var="item" items="${storeList}">
        <tr>
            <td>${item.productName}</td>
            <td>${item.quantity}</td>
            <td>${item.price}</td>
            <td>${item.total}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
