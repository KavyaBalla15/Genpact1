package bankappServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bankappDAO.Customer;

@WebServlet("/CustomerDetails")
public class CustomerDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/webapp";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Honey@1510";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();
        String search = request.getParameter("search");
        String sql = "SELECT FullName, Address, PhoneNo, EmailId, DateOfBirth, AccountNo, AccountType, IdProof FROM customer";
        if (search != null && !search.trim().isEmpty()) {
            sql += " WHERE FullName LIKE ? OR EmailId LIKE ?";
        }

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement ps = conn.prepareStatement(sql)) {
            if (search != null && !search.trim().isEmpty()) {
                String searchPattern = "%" + search + "%";
                ps.setString(1, searchPattern);
                ps.setString(2, searchPattern);
            }

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Customer customer = new Customer();
                    customer.setFullName(rs.getString("FullName"));
                    customer.setAddress(rs.getString("Address"));
                    customer.setPhoneNo(rs.getString("PhoneNo"));
                    customer.setEmailId(rs.getString("EmailId"));
                    customer.setDateOfBirth(rs.getString("DateOfBirth"));
                    customer.setAccountNo(rs.getString("AccountNo"));
                    customer.setAccountType(rs.getString("AccountType"));
                    customer.setIdProof(rs.getString("IdProof"));
                    customers.add(customer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An error occurred while retrieving customer details.");
        }

        request.setAttribute("customers", customers);
        request.getRequestDispatcher("CustomerDetails.jsp").forward(request, response);
    }
}
