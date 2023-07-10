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
<form action="/viec-can-lam/them-moi" method="post">
    <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" placeholder="Enter tên công việc" name="tenCongViec">
        <label>Tên việc cần làm</label>
    </div>
    <div class="form-floating mt-3 mb-3">
        <input type="date" class="form-control" placeholder="Enter ngày làm" name="ngayLam">
        <label>Ngày làm</label>
    </div>
    <button type="submit" class="btn btn-primary">Thêm mới</button>
</form>
</body>
</html>
