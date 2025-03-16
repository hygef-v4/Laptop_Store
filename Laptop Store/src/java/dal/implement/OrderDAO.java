package dal.implement;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import model.Order;

public class OrderDAO extends DBContext {

    public int insertOrder(Order order) {
        String sql = "INSERT INTO [dbo].[tblOrders] (amount, userID, fullName, address, phone, note) VALUES (?, ?, ?, ?, ?, ?)";
        int orderId = -1; // Default value if insert fails

        try (PreparedStatement ptm = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            // Set amount
            ptm.setInt(1, order.getAmount());

            // Handle nullable userID
            if (order.getUserID() != null) {
                ptm.setInt(2, order.getUserID());
            } else {
                ptm.setNull(2, java.sql.Types.INTEGER);
            }
            ptm.setString(3, order.getFullname());
            ptm.setString(4, order.getAddress());
            ptm.setString(5, order.getPhone());
            ptm.setString(6, order.getNote());

            // Execute the insert
            int n = ptm.executeUpdate();
            if (n > 0) {
                try (ResultSet rs = ptm.getGeneratedKeys()) {
                    if (rs.next()) {
                        orderId = rs.getInt(1); // Get the generated order ID
                    }
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return orderId; // Returns order ID if successful, -1 if failed
    }
}
