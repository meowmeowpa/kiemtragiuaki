<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.BookServlet" %>
<%@ page import="com.example.baikiemtragki.BookServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách sách</title>
</head>
<body>
<%
    List<BookServlet> bookList = new ArrayList<>();
    bookList.add(new BookServlet("Harry Potter", "J.K. Rowling", "he", 1997));
    bookList.add(new BookServlet("SailorMoon", "K nhớ", "he", 1960));
    bookList.add(new BookServlet("SailorMoon2", "K nhớ", "he", 1949));
    bookList.add(new BookServlet("Pride and Prejudice", " K nhớ", "Romance", 1813));
    request.setAttribute("bookList", bookList);
%>
<table border="1px">
    <tr>
        <td>Tên sách</td>
        <td>Tác giả</td>
        <td>Thể loại</td>
        <td>Năm xuất bản</td>
    </tr>
    <c:forEach var="book" items="${bookList}">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.genre}</td>
            <td>${book.year}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
