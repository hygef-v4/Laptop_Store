package controller.page;

import dal.implement.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author hungs
 */
public class AuthenticationServlet extends HttpServlet {

    // DAO declare 
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") != null ? request.getParameter("action") : "";
        String URL;
        switch (action) {
            case "login":
                URL = "view/page/login.jsp";
                break;
            case "logout":
                URL = logOutDoGet(request, response);    // xu ly o doGet vi chuyen logout tu the <a> 
                break;
            default:
                URL = "home";   // chuyen sang DO POST cua /home 
        }
        request.getRequestDispatcher(URL).forward(request, response);
    }

    // xu ly login form truyen ve do Post
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") != null ? request.getParameter("action") : "";
        String url;
        switch (action) {

            case "login":
                url = loginDoPost(request, response);
                break;
            case "register":
                url = signUpDoPost(request, response);
                break;
            case "change-password":
                url = changePasswordDoPost(request, response);
                break;

            default:
                url = "home";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    private String loginDoPost(HttpServletRequest request, HttpServletResponse response) {
        String URL = null;
        // get username, password 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // find user exist
        User userFound = userDAO.findByUsernamePassword(username, password);
        // check login
        if (userFound != null) {       // if login sucess forward to /home
            HttpSession session = request.getSession();
            session.setAttribute("user", userFound);  // set session user 
            URL = "home";
        } else {                        // if login failed then go alert error 
            request.setAttribute("loginError", "Username or password incorrect!!");
            URL = "view/page/login.jsp";
        }
        return URL;

    }

    private String logOutDoGet(HttpServletRequest request, HttpServletResponse response) {
        // delete session user 
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        session.removeAttribute("cart");  // xoa cart session
        return "home";   // quay ve hom sau khi logout
    }

    private String signUpDoPost(HttpServletRequest request, HttpServletResponse response) {
        String URL = null;
        // get username and password register 

        String registerUsername = request.getParameter("registerUsername");
        String registerPassword = request.getParameter("registerPassword");
        // check username exist 
        boolean isUserExist = userDAO.isUsernameExist(registerUsername);
        // if exist then error
        if (isUserExist) {
            request.setAttribute("registerError", "Username exist !! Try another username");
            URL = "view/page/login.jsp";
        } else {
            //else add user to db and go back to /home 
            User newUser = User.builder()
                    .fullName("Default Name") // Provide a default or input value
                    .username(registerUsername)
                    .password(registerPassword)
                    .roleID(2) // Example: Default role for a new user
                    .address("")
                    .phone("")
                    .email("")
                    .activate(true) // Default value for activation
                    .build();

            userDAO.insert(newUser);
            URL = "home";
        }
        return URL;

    }

    private String changePasswordDoPost(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String currentPassword = request.getParameter("acc-password");
        String newPassword = request.getParameter("acc-new-password");
        String confirmPassword = request.getParameter("acc-confirm-password");
        if (user == null) {
            // Redirect to login page (or handle as appropriate)
            return "view/page/login.jsp"; // Or wherever your login page is
        }
        // 2. Verify current password
        if (!userDAO.checkPassword(user.getUsername(), currentPassword)) {
            request.setAttribute("changePasswordError", "Mật khẩu hiện tại sai.");
            return "view/page/account.jsp"; // Assuming dashboard.jsp has the change password form
        }
        // 3. Check if new password and confirm password match
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("changePasswordError", "Mật khẩu xác nhận không đúng.");
            return "view/page/account.jsp"; // Return to the form with an error
        }
        //4. Check new password and current password are same or not
        if (newPassword.equals(currentPassword)) {
            request.setAttribute("changePasswordError", "Mật khẩu mới phải khác mật khẩu hiện tại.");
            return "view/page/account.jsp";
        }
        // 5. Update password in the database
        if (userDAO.changePassword(user.getUsername(), newPassword)) {
            // Success!  Update the user object in the session (optional, but good practice)
            user.setPassword(newPassword); // Keep session data consistent
            session.setAttribute("user", user);
            session.setAttribute("changePasswordSuccess", "Mật khẩu thay đổi thành công.");
            return "view/page/account.jsp";
        } else {
            // Database update failed.  Handle the error appropriately.
            request.setAttribute("changePasswordError", "Lỗi đổi mật khẩu.");
            return "view/page/account.jsp"; // Return to form
        }

    }

}
