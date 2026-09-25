<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #ff4e50 0%, #f9d423 100%);
    margin: 0;
    padding: 0;
    text-align: center;
}

.container {
    margin-top: 100px;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    background: #fff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    animation: fadeIn 1s ease-in-out;
}

h2 {
    margin-bottom: 30px;
    color: #333;
}

/* Base button style */
a {
    display: inline-block;
    margin: 15px;
    padding: 12px 20px;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-size: 16px;
    transition: background 0.3s, transform 0.2s, color 0.3s;
}

/* Specific colors */
.view { background-color: #2196F3; }   /* Blue */
.update { background-color: #ff9800; } /* Orange */
.delete { background-color: #f44336; } /* Red */
.back-btn { background-color: #2196F3; }   /* Blue for Back */
.home-btn { background-color: #673AB7; }   /* Purple for Home */

/* Hover effect */
a:hover {
    transform: scale(1.05);
}

/* Active (clicked) effect */
.view:active,
.update:active,
.delete:active,
.back-btn:active,
.home-btn:active {
    background-color: white;
    color: black;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>
</head>

<body>

<div class="container">
    <h2>🛡️ Welcome Admin</h2>

    <a href="viewStatus.jsp" class="view">👁️ View Applications</a>
    <a href="update.jsp" class="update">🔄 Update Status</a>
    <a href="deletePass.jsp" class="delete">🗑️ Delete Application</a>

    <!-- Navigation buttons -->
    <div style="margin-top:30px;">
        <a href="javascript:history.back()" class="back-btn">&#x2B05; Back</a>
        <a href="adminDashboard.jsp" class="home-btn">&#x1F3E0; Home</a>
    </div>
</div>

</body>
</html>
