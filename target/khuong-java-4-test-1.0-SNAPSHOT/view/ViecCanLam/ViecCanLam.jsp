<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: kn134
  Date: 7/10/2023
  Time: 6:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Việc cần làm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <button class="btn btn-secondary">
        <a style="color: white;text-decoration: none" href="/viec-can-lam/them-moi">Thêm mới</a>
    </button>
</div>
<br/>
<table class="table container">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Tên công việc</th>
        <th scope="col">Ngày làm</th>
        <th scope="col">Đã xong</th>
        <th scope="col">Tiền đồ</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${viecCanLamList}" var="vcl">
        <tr>
            <td>${vcl.maCongViec}</td>
            <td>${vcl.tenCongViec}</td>
            <td>
                <fmt:formatDate pattern="dd-MM-yyyy" value="${vcl.ngayLam}"/>
            </td>
            <td>
                <c:if test="${vcl.daXong == true}">Đã xong</c:if>
                <c:if test="${vcl.daXong == false}">Đang làm</c:if>
            </td>
            <td>${vcl.tienDo}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
