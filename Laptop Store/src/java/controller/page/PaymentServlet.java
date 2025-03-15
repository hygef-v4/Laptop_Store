/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.page;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashSet;
import model.Order;
import model.OrderDetails;

/**
 *
 * @author hungs
 */
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/page/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null
                ? "" : request.getParameter("action");
        switch (action) {
            case "add-product":
                addProduct(request, response);
                break;
            case "change-quantity":
                changeQuantity(request, response);
                break;
            default:
                throw new AssertionError();
        }
        response.sendRedirect("payment");
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        //get session 
        // get product id 
        int id = Integer.parseInt(request.getParameter("productID"));

        // get quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // get cart tren session 
        Order cart = (Order) session.getAttribute("cart");
        if (cart == null) {
            cart = new Order();
        }
        OrderDetails orderDetail = new OrderDetails();
        orderDetail.setProductID(id);
        orderDetail.setQuantity(quantity);
        // them order details vao cart
        addOrderDetailsToOrder(orderDetail, cart);
        // set new cart to session
        session.setAttribute("cart", cart);

    }

    private void addOrderDetailsToOrder(OrderDetails orderDetail, Order cart) {
        boolean isAdd = false;
        for (OrderDetails od : cart.getListOrderDetails()) {
            if (od.getProductID() == orderDetail.getProductID()) {
                od.setQuantity(od.getQuantity() + orderDetail.getQuantity());  // update quantity when art new order to cart
                isAdd = true;
            }
        }
        if (isAdd == false) {  // neu chua add san pham nao 
            cart.getListOrderDetails().add(orderDetail);
        }
    }

    private void changeQuantity(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();

        try {
            // Get product id 
            int id = Integer.parseInt(request.getParameter("id"));
            // Get new quantity 
            int quantity = Integer.parseInt(request.getParameter("quantity-input"));

            // Get cart 
            Order cart = (Order) session.getAttribute("cart");
            if (cart != null) { // Ensure cart is not null
                for (OrderDetails od : cart.getListOrderDetails()) {
                    if (od.getProductID() == id) {
                        od.setQuantity(quantity);
                        break; // Stop loop after updating the correct product
                    }
                }
                // Update session
                session.setAttribute("cart", cart);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
