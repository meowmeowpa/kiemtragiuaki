<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.EmployeeServlet" %>
<%@ page import="com.example.baikiemtragki.EmployeeServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
</head>
<body>
<%
    List<EmployeeServlet> employeeList = new ArrayList<>();
    employeeList.add(new EmployeeServlet("Ngọc", "Kinh Doanh", "Trưởng Phòng", 1200.50, "Đang làm"));
    employeeList.add(new EmployeeServlet("Huy", "Nhân Sự", "Nhân Viên", 800.75, "Đang làm"));
    employeeList.add(new EmployeeServlet("Trang", "Kế Toán", "Kế Toán Trưởng", 1500.00, "Nghỉ việc"));
    employeeList.add(new EmployeeServlet("Dân", "IT", "Nhân Viên", 950.25, "Đang làm"));
    request.setAttribute("employeeList", employeeList);
%>
<table border="1px">
    <tr>
        <td>Tên</td>
        <td>Phòng Ban</td>
        <td>Chức Vụ</td>
        <td>Lương</td>
        <td>Trạng Thái</td>
    </tr>
    <c:forEach var="employee" items="${employeeList}">
        <tr>
            <td>${employee.name}</td>
            <td>${employee.department}</td>
            <td>${employee.position}</td>
            <td>${employee.salary}</td>
            <td>${employee.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
