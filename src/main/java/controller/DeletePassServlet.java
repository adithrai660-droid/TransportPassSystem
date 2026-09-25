package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;

public class DeletePassServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String idStr = request.getParameter("id");

        if (idStr == null || idStr.trim().isEmpty()) {
            response.getWriter().println("ID is required");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);

            Connection con = DBConnection.getConnection();

            String sql = "DELETE FROM pass_application WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                response.sendRedirect("viewStatus.jsp?msg=deleted");
            } else {
                response.sendRedirect("deletePass.jsp?msg=notfound");
            }

        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid ID format");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}