package dal.implement;

import dal.DBContext;
import model.ProductDetail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import model.Product;


public class ProductDetailDAO extends DBContext {

    public ProductDetail getProductDetailByProductID(int productID) {
        String sql = "SELECT * FROM tblProductDetails WHERE productID = ?";
        try (PreparedStatement ptm = connection.prepareStatement(sql)) { // Use try-with-resources
            ptm.setInt(1, productID);
            try (ResultSet rs = ptm.executeQuery()) {
                if (rs.next()) {
                    return new ProductDetail(
                            rs.getInt("detailID"),
                            rs.getInt("productID"),
                            rs.getString("cpu"),
                            rs.getString("ram"),
                            rs.getString("storage"),
                            rs.getString("screen"),
                            rs.getString("gpu")
                    );
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Proper error handling (consider logging)
        }
        return null; // Return null if no detail is found
    }

    // If you need a list of details (in case a product can have multiple detail entries):
    public Vector<ProductDetail> getProductDetailsByProductID(int productID) {
        Vector<ProductDetail> details = new Vector<>();
        String sql = "SELECT * FROM tblProductDetails WHERE productID = ?";
         try (PreparedStatement ptm = connection.prepareStatement(sql)) {  // Use try-with-resources
            ptm.setInt(1, productID);
            try (ResultSet rs = ptm.executeQuery()) {
                while (rs.next()) {
                    details.add(new ProductDetail(
                            rs.getInt("detailID"),
                            rs.getInt("productID"),
                            rs.getString("cpu"),
                            rs.getString("ram"),
                            rs.getString("storage"),
                            rs.getString("screen"),
                            rs.getString("gpu")
                    ));
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return details;
    }
  
}
