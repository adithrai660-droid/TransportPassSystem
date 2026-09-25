<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Login</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #ff4e50 0%, #f9d423 100%);
    margin: 0;
    padding: 0;
}

.form-box {
    width: 420px;
    margin: 80px auto;
    background: #ffffff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    text-align: center;
    animation: fadeIn 1s ease-in-out;
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

input {
    width: 100%;
    padding: 12px;
    margin: 12px 0;
    border: 1px solid #ccc;
    border-radius: 6px;
    transition: border-color 0.3s;
}

input:focus {
    border-color: #f44336;
    outline: none;
}

button {
    width: 100%;
    padding: 12px;
    background: #f44336;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s;
}

button:hover {
    background: #c62828;
}

a {
    display:inline-block;
    margin-top:12px;
    padding:10px 15px;
    background:#333;
    color:white;
    text-decoration:none;
    border-radius:6px;
    transition: background 0.3s;
}

a:hover {
    background:#555;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>

</head>

<body>

<div class="form-box">

<h2>Admin Login</h2>

<form action="adminLogin" method="post">

<input type="text" name="username" placeholder="Admin Username" required>
<input type="password" name="password" placeholder="Admin Password" required>

<button type="submit">Login</button>

</form>

<br>
<a href="index.jsp">Home</a>
<a href="javascript:history.back()">Back</a>

</div>

</body>
</html>
