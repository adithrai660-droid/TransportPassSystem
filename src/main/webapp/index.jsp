<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transport Pass System - Dashboard</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    margin: 0;
    background: #eef2f7;
}

.header {
    background: #4CAF50;
    color: white;
    padding: 20px;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    box-shadow: 0 2px 8px rgba(0,0,0,0.2);
}

.container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
    padding: 40px;
    max-width: 1000px;
    margin: auto;
}

.card {
    background: white;
    border-radius: 12px;
    padding: 30px;
    text-align: center;
    box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    transition: transform 0.2s, box-shadow 0.2s;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 6px 16px rgba(0,0,0,0.15);
}

.card a {
    display: inline-block;
    margin-top: 15px;
    padding: 10px 20px;
    text-decoration: none;
    color: white;
    border-radius: 6px;
    transition: background 0.3s;
}

.add { background: #4CAF50; }
.add:hover { background: #2e7d32; }

.view { background: #2196F3; }
.view:hover { background: #0b7dda; }

.update { background: #ff9800; }
.update:hover { background: #e68900; }

.delete { background: #f44336; }
.delete:hover { background: #c62828; }

.report { background: #9c27b0; }
.report:hover { background: #6a1b9a; }
</style>
</head>
<body>

<div class="header">
 &#x1F68C Transport Pass System 
</div>

<div class="container">
    <div class="card">
        <h3>&#x1F464 User Register</h3>
        <p>Create a new user account.</p>
        <a href="register.jsp" class="add">Register</a>
    </div>

    <div class="card">
        <h3>&#x1F511  User Login</h3>
        <p>Access your account securely.</p>
        <a href="login.jsp" class="view">Login</a>
    </div>

    <div class="card">
        <h3>&#x1F468  Admin Login</h3>
        <p>Administrator access panel.</p>
        <a href="adminLogin.jsp" class="update">Admin</a>
    </div>
</div>

</body>
</html>
