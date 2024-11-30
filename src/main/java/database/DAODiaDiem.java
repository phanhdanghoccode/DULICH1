//co sua
package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DiaDiem;


public class DAODiaDiem implements DAOInterface<DiaDiem> {

    public DiaDiem selectById(DiaDiem t) {

        DiaDiem ketQua = null;
        try {
            Connection con = JDBCUtil.getConnection();

            String sql = "SELECT * FROM diadiem WHERE ID=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getID());

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String id = rs.getString("ID");
                String name = rs.getString("name");
                String gioithieu = rs.getString("gioithieu");
                int giaTour = rs.getInt("giatour");
                String thoiGian = rs.getString("thoigian");
                float thoiLuong = rs.getFloat("thoiluong");
                String diaDiem = rs.getString("diadiem");
                String linkggMap = rs.getString("linkggmap");
                String img = rs.getString("img");
                String img2 = rs.getString("img2");
                String img3 = rs.getString("img3");

                String diadiem1 = rs.getString("diadiem1");
                String img_dd1 = rs.getString("img_dd1");
                String mota_dd1 = rs.getString("mota_dd1");

                String diadiem2 = rs.getString("diadiem2");
                String img_dd2 = rs.getString("img_dd2");
                String mota_dd2 = rs.getString("mota_dd2");

                String diadiem3 = rs.getString("diadiem3");
                String img_dd3 = rs.getString("img_dd3");
                String mota_dd3 = rs.getString("mota_dd3");

                String diadiem4 = rs.getString("diadiem4");
                String img_dd4 = rs.getString("img_dd4");
                String mota_dd4 = rs.getString("mota_dd4");

                ketQua = new DiaDiem(id, name, gioithieu, giaTour, thoiGian, thoiLuong, diaDiem, linkggMap, img, img2, img3,
                        diadiem1, img_dd1, mota_dd1,
                        diadiem2, img_dd2, mota_dd2, 
                        diadiem3, img_dd3, mota_dd3, 
                        diadiem4, img_dd4, mota_dd4);
                break;
            }

            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ketQua;
    }

    @Override
    public ArrayList<DiaDiem> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
