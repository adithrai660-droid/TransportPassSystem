<%@ page import="java.sql.*" %>
<%@ page import="model.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Status</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
    margin: 0;
    padding: 0;
    text-align: center;
}

h2 {
    margin-top: 40px;
    color: #333;
    font-size: 28px;
}

table {
    width: 90%;
    margin: 30px auto;
    border-collapse: collapse;
    background-color: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    animation: fadeIn 1s ease-in-out;
}

th {
    background-color: #2196F3;
    color: white;
    padding: 14px;
    font-size: 16px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    font-size: 15px;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
    transition: background 0.3s;
}

/* Navigation buttons */
.nav-btn {
    display: inline-block;
    margin: 15px;
    padding: 12px 20px;
    border-radius: 6px;
    text-decoration: none;
    color: white;
    font-size: 15px;
    transition: background 0.3s, transform 0.2s;
}

.back-btn { background: #2196F3; }   /* Blue */
.home-btn { background: #673AB7; }   /* Purple */

.nav-btn:hover {
    transform: scale(1.05);
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>
</head>

<body>

<h2> Pass Application Status</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Source</th>
    <th>Destination</th>
    <th>Pass Type</th>
    <th>Status</th>
    <th>Payment</th>
</tr>

<%
try {
    Connection con = DBConnection.getConnection();
    String sql = "SELECT * FROM pass_application";
    PreparedStatement ps = con.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();

    while(rs.next()) {
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("source") %></td>
    <td><%= rs.getString("destination") %></td>
    <td><%= rs.getString("pass_type") %></td>
    <td><%= rs.getString("status") %></td>
    <td><%= rs.getString("payment_status") %></td>
</tr>
<%
    }
} catch(Exception e) {
    out.println(e);
}
%>
</table>

<!-- Navigation buttons -->
<div style="margin-top:20px;">
    <a href="adminDashboard.jsp" class="nav-btn back-btn">&#x2B05 Back</a>
    <a href="index.jsp" class="nav-btn home-btn">&#x1F3E0; Home</a>
</div>

</body>
</html>
