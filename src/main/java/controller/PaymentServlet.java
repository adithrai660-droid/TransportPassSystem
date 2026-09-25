package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;

public class PaymentServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {

        String name =
        request.getParameter("name");

        try
        {
            Connection con =
            DBConnection.getConnection();

            String sql =
            "UPDATE pass_application SET payment_status=? WHERE name=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, "Paid");

            ps.setString(2, name);

            int i =
            ps.executeUpdate();

            if(i > 0)
            {
                response.sendRedirect(
                "dashboard.jsp");
            }
            else
            {
                response.getWriter().println(
                "Payment Failed");
            }

        }
        catch(Exception e)
        {
            response.getWriter().println(e);
        }
    }
}