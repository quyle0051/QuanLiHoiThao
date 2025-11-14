package dao;

import model.Register;
import utils.DataSourceUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RegisterDAO {

    // ✅ Thêm đăng ký mới
    public boolean insert(Register r) {
        String sql = "INSERT INTO registrations (fullname, email, phone, type, event_name) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DataSourceUtil.getDataSource().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, r.getFullname());
            ps.setString(2, r.getEmail());
            ps.setString(3, r.getPhone());
            ps.setString(4, r.getType());
            ps.setString(5, r.getEventName());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // ✅ Lấy danh sách theo từng hội thảo
    public List<Register> getByEvent(String eventName) {
        List<Register> list = new ArrayList<>();
        String sql = "SELECT * FROM dangky WHERE event_name = ? ORDER BY created_at DESC";
        try (Connection conn = DataSourceUtil.getDataSource().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, eventName);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Register r = new Register();
                r.setId(rs.getInt("id"));
                r.setFullname(rs.getString("fullname"));
                r.setEmail(rs.getString("email"));
                r.setPhone(rs.getString("phone"));
                r.setType(rs.getString("type"));
                r.setEventName(rs.getString("event_name"));
                list.add(r);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
