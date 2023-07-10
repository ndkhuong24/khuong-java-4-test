<%--
  Created by IntelliJ IDEA.
  User: kn134
  Date: 7/10/2023
  Time: 6:36 PM
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
<form action="/viec-can-lam/them-moi" method="post" class="container">
    <div class="mb-3 mt-3">
        <label class="form-label">Tên việc cần làm:</label>
        <input type="text" class="form-control" name="tenCongViec">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Ngày làm:</label>
        <input type="date" class="form-control" name="ngayLam">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Tiền đồ:</label>
        <input class="form-control" name="tienDo" type="text">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Tiền đồ:</label><br/>
        <input type="radio" class="form-check-input" value="1" name="daXong" checked> &nbsp; Đã xong
        &emsp;
        <input type="radio" class="form-check-input" value="0" name="daXong"> &nbsp; Đang làm
    </div>
    <button type="submit" class="btn btn-secondary">Thêm mới</button>
</form>
</body>
</html>
