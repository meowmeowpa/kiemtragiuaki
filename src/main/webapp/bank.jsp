<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.baikiemtragki.BankServlet" %>
<%@ page import="com.example.baikiemtragki.BankServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách tài khoản ngân hàng</title>
</head>
<body>
<%
    List<BankServlet> bankList = new ArrayList<>();
    bankList.add(new BankServlet("1", "Nhung", 1500.75, "Hoạt động"));
    bankList.add(new BankServlet("2", "Mai Anh", 3000.50, "Đóng"));
    bankList.add(new BankServlet("3", "Phạm Linh", 750.00, "Hoạt động"));
    bankList.add(new BankServlet("4", "Khuyên", 1200.25, "Đóng"));
    request.setAttribute("bankList", bankList);
%>
<table border="1px">
    <tr>
        <td>Số tài khoản</td>
        <td>Tên chủ tài khoản</td>
        <td>Số dư</td>
        <td>Trạng thái</td>
    </tr>
    <c:forEach var="bank" items="${bankList}">
        <tr>
            <td>${bank.accountNumber}</td>
            <td>${bank.accountHolderName}</td>
            <td>${bank.balance}</td>
            <td>${bank.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
