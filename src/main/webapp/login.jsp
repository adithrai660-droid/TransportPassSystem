<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #2196F3 0%, #6dd5fa 100%);
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
    border-color: #2196F3;
    outline: none;
}

button {
    width: 100%;
    padding: 12px;
    background: #2196F3;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s;
}

button:hover {
    background: #0b7dda;
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

<h2>User Login</h2>

<form action="login" method="post">

<input type="email" name="email" placeholder="Enter Email" required>
<input type="password" name="password" placeholder="Enter Password" required>

<button type="submit">Login</button>

</form>

<br>
<a href="index.jsp">Home</a>
<a href="javascript:history.back()">Back</a>

</div>

</body>
</html>
