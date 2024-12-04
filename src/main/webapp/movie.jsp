<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.MovieServlet" %>
<%@ page import="com.example.baikiemtragki.MovieServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/4/2024
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách vé xem phim</title>
</head>
<body>
<%
    List<MovieServlet> movieList = new ArrayList<>();
    movieList.add(new MovieServlet("1", "Ma", "15:00", 5.50));
    movieList.add(new MovieServlet("2", "Ma", "17:00", 4.75));
    movieList.add(new MovieServlet("3", "Ma", "20:00", 6.00));
    movieList.add(new MovieServlet("4", "Ma", "10:00", 4.25));
    request.setAttribute("movieList", movieList);
%>
<table border="1px">
    <tr>
        <td>Mã vé</td>
        <td>Tên phim</td>
        <td>Suất chiếu</td>
        <td>Giá vé</td>
    </tr>
    <c:forEach var="movie" items="${movieList}">
        <tr>
            <td>${movie.ticketId}</td>
            <td>${movie.movieName}</td>
            <td>${movie.showTime}</td>
            <td>${movie.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
