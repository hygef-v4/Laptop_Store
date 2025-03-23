package controller.admin;

import java.io.PrintWriter;
import dal.implement.OrderDAO;
import dal.implement.OrderDetailDAO;
import dal.implement.ProductDAO;
import java.io.IOException;
import java.util.List;
import java.util.Vector;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Order;
import model.OrderDetails;
import model.Product;

/**
 *
 * @author hungs
 */
public class AdminDashboardServlet extends HttpServlet {

    private OrderDetailDAO orderDetailsDAO = new OrderDetailDAO();
    ProductDAO productDAO = new ProductDAO();
    OrderDAO orderDAO = new OrderDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DashboardServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashboardServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String action = request.getParameter("action") == null ? "product-list" : request.getParameter("action");

        switch (action) {
            case "order-list":
                // Fetch all orders
                Vector<Order> orderListAll = orderDAO.getAllOrders();

                // Attach order details for each order
                for (Order order : orderListAll) {
                    Vector<OrderDetails> orderDetails = orderDetailsDAO.getOrderDetailsByOrderId(order.getOrderID());
                    order.setListOrderDetails(orderDetails); // Set order details
                }

                // Set orders in session scope
                session.setAttribute("orderListAll", orderListAll);
                request.setAttribute("productDAO", productDAO);
                // Forward to order.jsp
                request.getRequestDispatcher("/view/admin/order.jsp").forward(request, response);
                break;

            case "product-list":
                request.getRequestDispatcher("/view/admin/productList.jsp").forward(request, response);
                break;
            case "update-status":
                updateOrderStatus(request, response);
                break;
            default:
                request.getRequestDispatcher("/view/admin/productList.jsp").forward(request, response);
                break;
        }
    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") != null ? request.getParameter("action") : "";

    }

    private void updateOrderStatus(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        try {
            int orderId = Integer.parseInt(request.getParameter("orderID"));
            boolean newStatus = Boolean.parseBoolean(request.getParameter("status"));

            orderDAO.updateOrderStatus(orderId, newStatus); // Update status in DB

            // Redirect back to order list page after update
            response.sendRedirect(request.getContextPath() + "/admin/dashboard?action=order-list");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/admin/dashboard?action=order-list&error=true");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
