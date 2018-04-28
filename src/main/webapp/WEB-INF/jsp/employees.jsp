<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<style>
body{
text-align:center;
font-weight:bold;
font-size:20px
}
table{
border-collapse:collapse;
border:2px solid black;
}
th,tr,td{
    height:55px;
    border:2px solid black;
}
</style>
<body>
<table style = "width:70%;cellspacing = 0px;cellpadding=0px">
    <tr bgcolor = "#000000" style = "color:#fff" >
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    <c:forEach items = "${message}" var = "employee" varStatus = "status">
        <tr bgcolor="${status.index%2==0?'#F0F0F0':'#FFFFFF'}">
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.age}</td>
            <td>${employee.gender}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
