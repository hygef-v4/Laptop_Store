package dal.implement;

import model.OrderDetails;
import dal.DBContext;
import java.sql.*;

/**
 *
 * @author hungs
 */
public class OrderDetailDAO extends DBContext {

    public int insert(OrderDetails od) {
        String sql = "INSERT INTO [dbo].[tblOrderDetails] (quantity, productID, orderID) VALUES (?, ?, ?)";
        int n = 0;
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);

            // Set quantity
            ptm.setInt(1, od.getQuantity());

            // Set productID
            ptm.setInt(2, od.getProductID());

            // Set orderID (handle null case if necessary)
            ptm.setInt(3, od.getOrderID());

            // Execute update
            n = ptm.executeUpdate();

            // Close resources
            ptm.close();

        } catch (SQLException ex) {
            ex.printStackTrace(); // Log error
        }
        return n;
    }

}
