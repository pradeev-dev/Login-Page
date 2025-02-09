package FinalProject;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("fname");
        String middleName = request.getParameter("mname");
        String lastName = request.getParameter("lname");
        String password = request.getParameter("password");
        String mobileNumber = request.getParameter("number");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");

        // Hash the password for security
        String hashedPassword = hashPassword(password);

        // Save user in database
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Instagramam", "root", "KawasakiNinjaH2r")) {
            String query = "INSERT INTO userss (first_name, middle_name, last_name, password, mobile_number, dob, gender, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = connection.prepareStatement(query)) {
                ps.setString(1, firstName);
                ps.setString(2, middleName);
                ps.setString(3, lastName);
                ps.setString(4, hashedPassword);  // Store hashed password
                ps.setString(5, mobileNumber);
                ps.setString(6, dob);
                ps.setString(7, gender);
                ps.setString(8, email);

                int result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("SignUpSuccessPage.jsp");
                } else {
                    response.sendRedirect("SignUpPage.jsp?error=true");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("SignUpPage.jsp?error=true");
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

