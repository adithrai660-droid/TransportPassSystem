package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;

public class RegisterServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try
        {
            Connection con = DBConnection.getConnection();

            String sql =
            "INSERT INTO users(name,email,password) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int i = ps.executeUpdate();

            if(i > 0)
            {
                out.println("<html><head>");
                out.println("<style>");
                out.println("body { font-family: Arial, sans-serif; background-color: #f0f8ff; text-align: center; }");
                out.println(".success { color: green; font-size: 28px; margin-top: 50px; font-weight: bold; }");
                out.println(".btn { display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; }");
                out.println(".btn:hover { background-color: #45a049; }");
                out.println("</style>");
                out.println("</head><body>");
                out.println("<div class='success'>&#x1F389 Registration Successful &#x1F389</div>");
                out.println("<a href='login.jsp' class='btn'>Go to Login</a>");
                out.println("</body></html>");
            }
            else
            {
                out.println("<html><head>");
                out.println("<style>");
                out.println("body { font-family: Arial, sans-serif; background-color: #fff0f0; text-align: center; }");
                out.println(".error { color: red; font-size: 28px; margin-top: 50px; font-weight: bold; }");
                out.println(".btn { display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #f44336; color: white; text-decoration: none; border-radius: 5px; }");
                out.println(".btn:hover { background-color: #d32f2f; }");
                out.println("</style>");
                out.println("</head><body>");
                out.println("<div class='error'>❌ Registration Failed ❌</div>");
                out.println("<a href='register.jsp' class='btn'>Try Again</a>");
                out.println("</body></html>");
            }
        }
        catch(Exception e)
        {
            out.println("<html><head>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; background-color: #fffbe6; text-align: center; }");
            out.println(".error { color: orange; font-size: 20px; margin-top: 50px; font-weight: bold; }");
            out.println("</style>");
            out.println("</head><body>");
            out.println("<div class='error'>⚠️ Error: " + e.getMessage() + "</div>");
            out.println("</body></html>");
        }
    }
}
