<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.CourseServlet" %>
<%@ page import="com.example.baikiemtragki.CourseServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khóa học trực tuyến</title>
</head>
<body>
<%
    List<CourseServlet> courseList = new ArrayList<>();
    courseList.add(new CourseServlet("Java", "Thầy Cấn", 20, 200.00));
    courseList.add(new CourseServlet("Web", "Thầy Cấn", 20, 300.00));
    courseList.add(new CourseServlet("Test", "k biết", 20, 250.00));
    courseList.add(new CourseServlet("Test", "k biết", 25, 280.00));
    request.setAttribute("courseList", courseList);
%>
<table border="1px">
    <tr>
        <td>Tên khóa học</td>
        <td>Giảng viên</td>
        <td>Số giờ học</td>
        <td>Giá tiền</td>
    </tr>
    <c:forEach var="course" items="${courseList}">
        <tr>
            <td>${course.courseName}</td>
            <td>${course.instructor}</td>
            <td>${course.duration}</td>
            <td>${course.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
