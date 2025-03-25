package controller.admin;

import java.io.PrintWriter;
import dal.implement.OrderDAO;
import dal.implement.OrderDetailDAO;
import dal.implement.ProductDAO;
import dal.implement.ProductDetailDAO;
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
import model.ProductDetail;

/**
 *
 * @author hungs
 */
public class AdminDashboardServlet extends HttpServlet {

    private OrderDetailDAO orderDetailsDAO = new OrderDetailDAO();
    ProductDAO productDAO = new ProductDAO();
    OrderDAO orderDAO = new OrderDAO();
    ProductDetailDAO productDetailDAO = new ProductDetailDAO();

    private static final String productListSQL = "SELECT * FROM [dbo].[tblProducts]";

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
        Vector<Product> productList = productDAO.getAllProduct(productListSQL);
        session.setAttribute("productList", productList);

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
            case "add-product":
                request.getRequestDispatcher("/view/admin/addProduct.jsp").forward(request, response);
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
        switch (action) {

            case "add-product":
                addProductDoPost(request, response);
                response.sendRedirect(request.getContextPath() + "/admin/dashboard");
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/dashboard");
                break;

        }
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

    private void addProductDoPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve product details from request
            String productName = request.getParameter("product-name").trim();
            String brandID = request.getParameter("brandID");
            String categoryID = request.getParameter("catID");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double price = Double.parseDouble(request.getParameter("price"));
            String importDate = request.getParameter("date");
            int warrantyMonths = Integer.parseInt(request.getParameter("warranty"));
            String imageUrl = request.getParameter("imageURL").trim();
            boolean isFeatured = request.getParameter("isFeatured") != null && request.getParameter("isFeatured").equals("1");
            String description = request.getParameter("description").trim();

            // Retrieve product detail specifications
            String cpu = request.getParameter("cpu");
            String ram = request.getParameter("ram");
            String storage = request.getParameter("storage");
            String screen = request.getParameter("screen");
            String gpu = request.getParameter("gpu");

            // Create Product object
            Product product = new Product();
            product.setProductName(productName);
            product.setBrandID(brandID);
            product.setCategoryID(categoryID);
            product.setQuantity(quantity);
            product.setPrice(price);
            product.setImportDate(java.sql.Date.valueOf(importDate)); // Convert to SQL Date
            product.setWarrantyMonths(warrantyMonths);
            product.setImage(imageUrl);
            product.setFeatured(isFeatured);
            product.setDescription(description);

            // Insert Product into Database
            int productId = productDAO.addProduct(product); // Assume this returns generated productID

            // Create ProductDetail object
            ProductDetail productDetail = new ProductDetail();
            productDetail.setProductID(productId);
            productDetail.setCpu(cpu);
            productDetail.setRam(ram);
            productDetail.setStorage(storage);
            productDetail.setScreen(screen);
            productDetail.setGpu(gpu);

            // Insert ProductDetail into Database
            productDetailDAO.addProductDetail(productDetail);

            // Redirect back to product list
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
