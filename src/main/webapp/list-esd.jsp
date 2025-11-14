<%@ page import="java.util.*, model.Register" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<jsp:include page="admin-header.jsp" />

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Quản lí đăng kí</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>
    <form action="list-esd" method="get" class="mb-2">
        <button type="submit" class="btn btn-outline-success">🔄 Tải lại dữ liệu</button>
    </form>
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
</div>
<jsp:include page="admin-footer.jsp" />
