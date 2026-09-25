<%@ page import="java.sql.*" %>
<%@ page import="model.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<style>

body
{
    font-family: Arial;
    background-color: #f2f2f2;
    text-align: center;
}

.container
{
    margin-top: 100px;
}

a
{
    display: inline-block;
    margin: 15px;
    padding: 12px 20px;
    background-color: blue;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.status
{
    font-size: 24px;
    color: green;
    margin-top: 20px;
}

</style>

</head>

<body>

<div class="container">

<h2>
Welcome
<%= session.getAttribute("name") %>
</h2>

<%

String name =
(String)session.getAttribute("name");

try
{
    Connection con =
    DBConnection.getConnection();

    String sql =
    "SELECT status,payment_status FROM pass_application WHERE name=?";

    PreparedStatement ps =
    con.prepareStatement(sql);

    ps.setString(1, name);

    ResultSet rs =
    ps.executeQuery();

    if(rs.next())
    {
%>

<div class="status">

Pass Status :
<%= rs.getString("status") %>

<br><br>

Payment :
<%= rs.getString("payment_status") %>

</div>

<%
    }
    else
    {
%>

<div class="status">

No Pass Application Found

</div>

<%
    }
}
catch(Exception e)
{
    out.println(e);
}

%>

<br><br>

<a href="applyPass.jsp">
Apply Pass
</a>

<a href="payment.jsp">
Payment
</a>

<!-- ========================= -->
<!-- ADDED BUTTONS ONLY -->
<!-- ========================= -->

<br><br>

<a href="index.jsp" style="
    display:inline-block;
    margin-top:10px;
    padding:12px 20px;
    background:gray;
    color:white;
    text-decoration:none;
    border-radius:5px;
">
    Home
</a>

<a href="javascript:history.back()" style="
    display:inline-block;
    margin-top:10px;
    padding:12px 20px;
    background:black;
    color:white;
    text-decoration:none;
    border-radius:5px;
">
    Back
</a>

</div>

</body>
</html>