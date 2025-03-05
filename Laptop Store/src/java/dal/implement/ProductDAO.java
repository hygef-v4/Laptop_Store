/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import model.Product;

/**
 *
 * @author hungs
 */
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
                        rs.getBoolean(10) // isFeatured
                );
                listProduct.add(p);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Properly print the stack trace
        }
        return listProduct;
    }

}
