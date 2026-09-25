// ===========================
// ApplyPassServlet.java
// ===========================

package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;


public class ApplyPassServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {
        String name = request.getParameter("name");
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String passType = request.getParameter("passType");

        try
        {
            Connection con = DBConnection.getConnection();

            String sql =
            "insert into pass_application(name,source,destination,pass_type,status) values(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, source);
            ps.setString(3, destination);
            ps.setString(4, passType);
            ps.setString(5, "Pending");

            int i = ps.executeUpdate();

            if(i > 0)
            {
                response.sendRedirect("payment.jsp");
            }
            else
            {
                response.sendRedirect("applyPass.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}