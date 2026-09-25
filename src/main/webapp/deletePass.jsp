<%@ page import="java.sql.*" %>
<%@ page import="model.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Pass</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #ff4e50, #f9d423);
    text-align: center;
    margin: 0;
    padding: 0;
}

.container {
    width: 420px;
    margin: 100px auto;
    background: #fff;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

input {
    width: 90%;
    padding: 12px;
    margin: 12px 0;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
}

button {
    padding: 12px 20px;
    border: none;
    border-radius: 6px;
    font-size: 15px;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

button:hover {
    transform: scale(1.05);
}

/* Specific button colors */
.fetch-btn { background: #2196F3; color: white; }
.delete-btn { background: #f44336; color: white; }
.yes-btn { background: #4CAF50; color: white; margin: 10px; }
.no-btn { background: gray; color: white; text-decoration: none; padding: 12px 20px; border-radius: 6px; margin: 10px; display: inline-block; }
.home-btn { background: #673AB7; color: white; text-decoration: none; padding: 12px 20px; border-radius: 6px; margin-top: 20px; display: inline-block; }

.details {
    margin-top: 20px;
    background: #f9f9f9;
    padding: 15px;
    border-radius: 8px;
    text-align: left;
}

.msg {
    margin-top: 15px;
    font-weight: bold;
    color: red;
}
</style>
</head>

<body>

<div class="container">
    <h2> Delete Pass Application</h2>

    <form method="post">
        <input type="number" name="id" placeholder="Enter Application ID" required>
        <button type="submit" class="fetch-btn">Fetch</button>
    </form>

<%
String id = request.getParameter("id");

if (id != null && !id.equals("")) {
    try {
        Connection con = DBConnection.getConnection();
        String sql = "SELECT * FROM pass_application WHERE id=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, Integer.parseInt(id));
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
%>
    <div class="details">
        <p><b>Name:</b> <%= rs.getString("name") %></p>
        <p><b>Status:</b> <%= rs.getString("status") %></p>
        <p><b>Payment:</b> <%= rs.getString("payment_status") %></p>

        <!-- Delete button -->
        <form method="post">
            <input type="hidden" name="id" value="<%= id %>">
            <button type="submit" name="action" value="confirm" class="delete-btn">Delete</button>
        </form>

<%
    String action = request.getParameter("action");
    if ("confirm".equals(action)) {
%>
        <div class="msg">Are you sure you want to delete this?</div>
        <form action="deletePass" method="post">
            <input type="hidden" name="id" value="<%= id %>">
            <button type="submit" class="yes-btn">YES</button>
            <a href="deletePass.jsp" class="no-btn">NO</a>
        </form>
<%
    }
%>
    </div>
<%
        } else {
%>
    <div class="msg">No Record Found ❌</div>
<%
        }
    } catch(Exception e) {
%>
    <div class="msg">Error: <%= e.getMessage() %></div>
<%
    }
}
%>

    <!-- Home Button -->
    <a href="adminLogin.jsp" class="home-btn"> &#x1F3E0 Home</a>
</div>

</body>
</html>
