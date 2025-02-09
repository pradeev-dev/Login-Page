package FinalProject;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");  // username (first name)
        String password = request.getParameter("password");

        // Hash the password for comparison
        String hashedPassword = hashPassword(password);

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Instagramam", "root", "KawasakiNinjaH2r")) {
            // Modified query: compare the username (first name) and hashed password
            String query = "SELECT * FROM userss WHERE first_name = ? AND password = ?";
            try (PreparedStatement ps = connection.prepareStatement(query)) {
                ps.setString(1, username);   // Compare the first name with the username
                ps.setString(2, hashedPassword);  // Compare the hashed password

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    // User found, redirect to main page
                    response.sendRedirect("MainPage.jsp");
                } else {
                    // Invalid credentials, redirect to login page with error
                    response.sendRedirect("LoginPage.jsp?error=true");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("LoginPage.jsp?error=true");
        }
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
