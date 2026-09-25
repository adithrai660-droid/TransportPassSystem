package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;

public class UpdatePassStatusServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {

        int id =
        Integer.parseInt(request.getParameter("id"));

        String status =
        request.getParameter("status");

        String payment =
        request.getParameter("payment");

        try
        {
            Connection con =
            DBConnection.getConnection();

            String sql =
            "UPDATE pass_application SET status=?, payment_status=? WHERE id=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, status);

            ps.setString(2, payment);

            ps.setInt(3, id);

            int i =
            ps.executeUpdate();

            if(i > 0)
            {
                response.sendRedirect(
                "viewStatus.jsp");
            }
            else
            {
                response.getWriter().println(
                "Update Failed");
            }

        }
        catch(Exception e)
        {
            response.getWriter().println(e);
        }
    }
}