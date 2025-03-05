package dal.implement;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import model.Product;

public class ProductDAO extends DBContext {

    public Vector<Product> getAllProduct(String sql) {
        Vector<Product> listProduct = new Vector<>();
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1), // productID
                        rs.getString(2), // productName
                        rs.getString(3), // image
                        rs.getDouble(4), // price
                        rs.getInt(5), // quantity
                        rs.getString(6), // categoryID
                        rs.getString(7), // brandID (added)
                        rs.getDate(8), // importDate
                        rs.getInt(9), // warrantyMonths (nullable)
                        rs.getBoolean(10),
                        rs.getString(11)
                );
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Properly print the stack trace
        }
        return listProduct;
    }

    public Product searchProduct(int productID) {
        String sql = "SELECT * FROM [dbo].[tblProducts] WHERE productID=?";
        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setInt(1, productID);
            ResultSet rs = ptm.executeQuery();
            if (rs.next()) {
                Integer warranty = rs.getObject(9) != null ? rs.getInt(9) : null; // Handle nullable warrantyMonths
                boolean isFeatured = rs.getBoolean(10); // Retrieve boolean value

                Product pro = new Product(
                        productID,
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        warranty,
                        isFeatured,
                        rs.getString(11)
                );
                return pro;
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Ensure proper error logging
        }
        return null;
    }

    public Vector<Product> getRelatedProducts(int productID) {
        Vector<Product> relatedProducts = new Vector<>();
        String categoryID = null;
        Product targetProduct = searchProduct(productID);

        if (targetProduct == null) {
            return relatedProducts; // Or throw an exception if the productID is invalid
        }
        categoryID = targetProduct.getCategoryID();

        String sql = "SELECT * FROM [dbo].[tblProducts] WHERE categoryID = ? AND productID <> ?"; // Exclude the original product

        try {
            PreparedStatement ptm = connection.prepareStatement(sql);
            ptm.setString(1, categoryID);
            ptm.setInt(2, productID); // Exclude the target product itself
            ResultSet rs = ptm.executeQuery();

            while (rs.next()) {
                Integer warranty = rs.getObject(9) != null ? rs.getInt(9) : null;
                boolean isFeatured = rs.getBoolean(10);

                Product p = new Product(
                        rs.getInt(1), // productID
                        rs.getString(2), // productName
                        rs.getString(3), // image
                        rs.getDouble(4), // price
                        rs.getInt(5), // quantity
                        rs.getString(6), // categoryID
                        rs.getString(7), // brandID
                        rs.getDate(8), // importDate
                        warranty, // warrantyMonths
                        isFeatured, //isFetured
                        rs.getString(11) // description
                );
                relatedProducts.add(p);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();  // Proper error handling
        }

        return relatedProducts;
    }
}
