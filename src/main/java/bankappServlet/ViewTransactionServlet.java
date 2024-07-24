package bankappServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DatabaseUtil;

@WebServlet("/ViewTransactionServlet")
public class ViewTransactionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("customerName") == null) {
            response.sendRedirect("CustomerLogin.jsp");
            return;
        }

        String accountNumber = (String) session.getAttribute("accountNumber");
        String sortOrder = request.getParameter("sortOrder");
        if (sortOrder == null) sortOrder = "DESC";

        String pageStr = request.getParameter("page");
        int page = pageStr == null ? 1 : Integer.parseInt(pageStr);
        int pageSize = 10;
        int offset = (page - 1) * pageSize;

        List<Transaction> transactions = getTransactions(accountNumber, sortOrder, pageSize, offset);
        int totalPages = getTotalPages(accountNumber, pageSize);

        request.setAttribute("transactions", transactions);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("ViewTransaction.jsp").forward(request, response);
    }

    private List<Transaction> getTransactions(String accountNumber, String sortOrder, int pageSize, int offset) {
        List<Transaction> transactions = new ArrayList<>();
        String query = "SELECT * FROM transactions WHERE AccountNo = ? ORDER BY date " + sortOrder + " LIMIT ? OFFSET ?";

        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pst = conn.prepareStatement(query)) {

            pst.setString(1, accountNumber);
            pst.setInt(2, pageSize);
            pst.setInt(3, offset);

            try (ResultSet rs = pst.executeQuery()) {
                while (rs.next()) {
                    Transaction transaction = new Transaction();
                    transaction.setDate(rs.getDate("date"));
                    transaction.setType(rs.getString("type"));
                    transaction.setAmount(rs.getDouble("amount"));
                    transactions.add(transaction);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return transactions;
    }

    private int getTotalPages(String accountNumber, int pageSize) {
        int totalPages = 0;
        String countQuery = "SELECT COUNT(*) FROM transactions WHERE AccountNo = ?";

        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pst = conn.prepareStatement(countQuery)) {

            pst.setString(1, accountNumber);

            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    int totalRecords = rs.getInt(1);
                    totalPages = (int) Math.ceil(totalRecords / (double) pageSize);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return totalPages;
    }

    public static class Transaction {
        private java.sql.Date date;
        private String type;
        private double amount;

        public java.sql.Date getDate() {
            return date;
        }

        public void setDate(java.sql.Date date) {
            this.date = date;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public double getAmount() {
            return amount;
        }

        public void setAmount(double amount) {
            this.amount = amount;
        }
    }
}
