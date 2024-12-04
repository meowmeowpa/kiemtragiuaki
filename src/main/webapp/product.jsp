<%@ page import="java.util.List" %>
<%@ page import="com.example.baikiemtragki.ProductServlet" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<%
    List<ProductServlet> productServletList = new ArrayList<>();
    productServletList.add(new ProductServlet("mèo anh", 2000, "Mèo anh lông ngắn", "https://petnow.com.vn/wp-content/uploads/2023/07/z4512403771355_aed28eee2080f124fa47a5f1c302723a.jpg"));
    productServletList.add(new ProductServlet("mèo anh", 2000, "Mèo anh lông dài", "https://vanchuyenchomeo.com/wp-content/uploads/2024/04/meo-ALD-xinh-2.jpg"));
    productServletList.add(new ProductServlet("mèo xiêm", 2000, "Mèo xiêm", "https://sieupet.com/sites/default/files/xiem1_1.jpg"));
    productServletList.add(new ProductServlet("mèo ai cập", 2000, "Mèo ai cập", "https://vanchuyenchomeo.com/wp-content/uploads/2024/04/meo-ALD-xinh-2.jpg"));
    productServletList.add(new ProductServlet("mèo", 2000, "Mèo anh lông dài", "https://vanchuyenchomeo.com/wp-content/uploads/2024/04/meo-ALD-xinh-2.jpg"));
    request.setAttribute("productServletList", productServletList);
%>
<table border="1px">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Image</td>
    </tr>
    <c:forEach var="product" items="${productServletList}">
        <tr>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td><img style="width: 100px; height: 100px" src="${product.urlImage}" alt="Image error"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
