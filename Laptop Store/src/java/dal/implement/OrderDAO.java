package dal.implement;

import dal.DBContext;
import java.sql.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import model.Order;
import model.OrderDetails;

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

    /**
     * Retrieves a list of orders for a given user ID, including their order
     * details.
     *
     * @param userId The ID of the user whose orders are to be retrieved.
     * @return A list of Order objects, each containing its associated
     * OrderDetails.
     */
    public List<Order> getOrdersByUserId(int userId) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM tblOrders WHERE userID = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Order order = new Order();
                    order.setOrderID(rs.getInt("orderID"));
                    order.setUserID(rs.getInt("userID"));
                    order.setOrderDate(rs.getTimestamp("orderDate").toLocalDateTime());
                    order.setFullname(rs.getString("fullName"));
                    order.setAddress(rs.getString("address"));
                    order.setPhone(rs.getString("phone"));
                    order.setNote(rs.getString("note"));
                    orders.add(order);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

}
