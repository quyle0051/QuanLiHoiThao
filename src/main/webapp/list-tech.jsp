<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.Register" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách đăng ký</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-4">

<h2 class="text-center mb-4 text-primary">Danh sách người đăng ký Hội thảo Công nghệ</h2>

<!-- Nút tải lại -->
<form action="list-tech" method="get" class="mb-2">
    <button type="submit" class="btn btn-outline-success">🔄 Tải lại dữ liệu</button>
</form>

<!-- Bảng danh sách -->
<table class="table table-bordered table-striped">
    <thead class="table-primary">
    <tr>
        <th>ID</th>
        <th>Họ và tên</th>
        <th>Email</th>
        <th>Điện thoại</th>
        <th>Loại khách</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Register> list = (List<Register>) request.getAttribute("list");
        if (list != null && !list.isEmpty()) {
            for (Register r : list) {
    %>
    <tr>
        <td><%= r.getId() %></td>
        <td><%= r.getFullname() %></td>
        <td><%= r.getEmail() %></td>
        <td><%= r.getPhone() %></td>
        <td><%= r.getType() %></td>
        <td>
            <a href="RegisterServlet?action=delete&id=<%= r.getId() %>"
               class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc muốn xóa?')">❌ Xóa</a>
        </td>
    </tr>
    <%      }
    } else { %>
    <tr><td colspan="6" class="text-center">Chưa có ai đăng ký</td></tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
