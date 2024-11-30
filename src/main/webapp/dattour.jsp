<%@ page import="model.KhachHang"%>
<%@ page import="model.DiaDiem"%>
<%@ page import="database.DAODiaDiem"%>
<%@ page import="database.KhachHangDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String diaDiemId = request.getParameter("id");
    DiaDiem tour = null;
    
    if (diaDiemId != null && !diaDiemId.isEmpty()) {
        DAODiaDiem daoDiaDiem = new DAODiaDiem();
        tour = daoDiaDiem.selectById(new DiaDiem(diaDiemId));  // Lấy thông tin tour
    }
    
    // Kiểm tra nếu không tìm thấy thông tin tour
    if (tour == null) {
        out.println("<h3>Không tìm thấy thông tin địa điểm!</h3>");
        return;
    }

    String fullName = request.getParameter("fullName");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String quantityStr = request.getParameter("quantity");
    boolean isConfirmed = request.getParameter("isConfirmed") != null; // Kiểm tra nếu người dùng đã xác nhận
    
    // Kiểm tra nếu có thông tin xác nhận và lưu vào CSDL
    if (isConfirmed && fullName != null && phone != null && email != null && quantityStr != null) {
        int quantity = Integer.parseInt(quantityStr);
        KhachHang khachHang = new KhachHang(fullName, phone, email, tour.getID());
        KhachHangDAO daoKhachHang = new KhachHangDAO();
        int result = daoKhachHang.insert(khachHang);  // Lưu vào CSDL
        boolean success = result>0;
        if (success) {
            out.println("<h3>Cảm ơn bạn đã đặt tour!</h3>");
            out.println("<p>Thông tin đặt tour của bạn:</p>");
            out.println("<ul>");
            out.println("<li><strong>Họ và Tên:</strong> " + fullName + "</li>");
            out.println("<li><strong>Số điện thoại:</strong> " + phone + "</li>");
            out.println("<li><strong>Email:</strong> " + email + "</li>");
            out.println("<li><strong>Số lượng người tham gia:</strong> " + quantity + "</li>");
            out.println("</ul>");
            out.println("<a href='index.jsp' class='btn btn-success'>Quay lại trang chủ</a>");
            return;
        } else {
            out.println("<h3>Đặt tour thất bại! Vui lòng thử lại.</h3>");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Tour</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="container mt-5">
        <h2>Thông tin Tour: <%= tour.getName() %></h2>
        <p><%= tour.getGioiThieu() %></p>

        <%-- Form đặt tour --%>
        <% if (!isConfirmed) { %>
        <h3>Đặt Tour</h3>
        <form method="post">
            <div class="mb-3">
                <label for="fullName" class="form-label">Họ và Tên</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Số điện thoại</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Số lượng người tham gia</label>
                <input type="number" class="form-control" id="quantity" name="quantity" required>
            </div>
            <input type="hidden" name="id" value="<%= tour.getID() %>">
            <button type="submit" class="btn btn-primary">Tiến hành xác nhận</button>
        </form>
        <% } else { %>
        <%-- Hiển thị thông tin xác nhận --%>
        <h3>Xác nhận Đặt Tour</h3>
        <p><strong>Họ và Tên:</strong> <%= fullName %></p>
        <p><strong>Số điện thoại:</strong> <%= phone %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Số lượng người tham gia:</strong> <%= quantityStr %></p>
        
        <form method="post">
            <input type="hidden" name="fullName" value="<%= fullName %>">
            <input type="hidden" name="phone" value="<%= phone %>">
            <input type="hidden" name="email" value="<%= email %>">
            <input type="hidden" name="quantity" value="<%= quantityStr %>">
            <input type="hidden" name="id" value="<%= tour.getID() %>">
            <input type="hidden" name="isConfirmed" value="true">
            <button type="submit" class="btn btn-success">Xác nhận đặt tour</button>
        </form>
        <% } %>
    </div>
</body>
</html>
