package controller;

import database.DonHangDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DonHang;
import model.KhachHang;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

@WebServlet("/don-hang")
public class DonHangController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DonHangController() {
        super();
    }

    // Phương thức xử lý GET: Hiển thị danh sách đơn hàng của khách hàng
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        // Kiểm tra nếu chưa đăng nhập thì chuyển hướng đến trang đăng nhập
        if (khachHang == null) {
            response.sendRedirect("khachhang/dangnhap.jsp");
            return;
        }

        DonHangDAO donHangDAO = new DonHangDAO();
        // Lấy danh sách đơn hàng của khách hàng từ cơ sở dữ liệu
        ArrayList<DonHang> allDonHang = donHangDAO.selectAll();
        ArrayList<DonHang> donHangCuaKhach = new ArrayList<>();

        // Lọc đơn hàng của khách hàng
        for (DonHang dh : allDonHang) {
            if (dh.getKhachHang().getMaKhachHang().equals(khachHang.getMaKhachHang())) {
                donHangCuaKhach.add(dh);
            }
        }

        // Lưu danh sách đơn hàng vào request để hiển thị trên giao diện
        request.setAttribute("danhSachDonHang", donHangCuaKhach);

        // Chuyển tiếp đến trang danh sách đơn hàng
        RequestDispatcher dispatcher = request.getRequestDispatcher("/donhang/danhSachDonHang.jsp");
        dispatcher.forward(request, response);
    }

    // Phương thức xử lý POST: Tạo mới đơn hàng cho khách hàng
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        // Kiểm tra nếu chưa đăng nhập thì chuyển hướng đến trang đăng nhập
        if (khachHang == null) {
            response.sendRedirect("khachhang/dangnhap.jsp");
            return;
        }

        // Lấy thông tin từ form đơn hàng
        String diaChiMuaHang = request.getParameter("diaChiMuaHang");
        String diaChiNhanHang = request.getParameter("diaChiNhanHang");
        String hinhThucThanhToan = request.getParameter("hinhThucThanhToan");
        String trangThaiThanhToan = request.getParameter("trangThaiThanhToan");
        double soTienDaThanhToan = Double.parseDouble(request.getParameter("soTienDaThanhToan"));
        double soTienConThieu = Double.parseDouble(request.getParameter("soTienConThieu"));
        Date ngayDatHang = Date.valueOf(request.getParameter("ngayDatHang"));
        Date ngayGiaoHang = Date.valueOf(request.getParameter("ngayGiaoHang"));

        // Tạo đối tượng DonHang và thiết lập các giá trị từ form
        DonHang donHang = new DonHang();
        donHang.setKhachHang(khachHang);
        donHang.setDiaChiMuaHang(diaChiMuaHang);
        donHang.setDiaChiNhanHang(diaChiNhanHang);
        donHang.setTrangThai("Chưa xử lý");  // Trạng thái mặc định là "Chưa xử lý"
        donHang.setHinhThucThanhToan(hinhThucThanhToan);
        donHang.setTrangThaiThanhToan(trangThaiThanhToan);
        donHang.setSoTienDaThanhToan(soTienDaThanhToan);
        donHang.setSoTienConThieu(soTienConThieu);
        donHang.setNgayDatHang(ngayDatHang);
        donHang.setNgayGiaoHang(ngayGiaoHang);

        DonHangDAO donHangDAO = new DonHangDAO();
        int result = donHangDAO.insert(donHang);
        boolean isSuccess = result > 0;
        // Nếu thêm đơn hàng thành công, chuyển đến trang danh sách đơn hàng
        if (isSuccess) {
            response.sendRedirect("don-hang");  // Quay lại trang danh sách đơn hàng
        } else {
            // Nếu có lỗi, hiển thị thông báo lỗi và quay lại trang tạo đơn hàng
            request.setAttribute("errorMessage", "Không thể tạo đơn hàng.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("dattourthanhcong.jsp");
            dispatcher.forward(request, response);
        }
    }
}
