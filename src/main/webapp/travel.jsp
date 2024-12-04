<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.TravelServlet" %>
<%@ page import="com.example.baikiemtragki.TravelServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách tour du lịch</title>
</head>
<body>
<%
    List<TravelServlet> travelList = new ArrayList<>();
    travelList.add(new TravelServlet("Đà Nẵng", "Đà Nẵng", "2024-12-10", 500.00, "Còn chỗ"));
    travelList.add(new TravelServlet("Phú Quốc", "Phú Quốc", "2024-12-15", 650.00, "Hết chỗ"));
    travelList.add(new TravelServlet("Hạ Long", "Hạ Long", "2024-12-20", 400.00, "Còn chỗ"));
    travelList.add(new TravelServlet("Sapa", "Sapa", "2024-12-25", 450.00, "Còn chỗ"));
    request.setAttribute("travelList", travelList);
%>
<table border="1px">
    <tr>
        <td>Tên tour</td>
        <td>Địa điểm</td>
        <td>Ngày khởi hành</td>
        <td>Giá</td>
        <td>Tình trạng</td>
    </tr>
    <c:forEach var="travel" items="${travelList}">
        <tr>
            <td>${travel.tourName}</td>
            <td>${travel.destination}</td>
            <td>${travel.departureDate}</td>
            <td>${travel.price}</td>
            <td>${travel.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
