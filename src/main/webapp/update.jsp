<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Pass Status</title>

<style>
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
    margin: 0;
    padding: 0;
    text-align: center;
}

.container {
    width: 420px;
    margin: 100px auto;
    background: #fff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    animation: fadeIn 1s ease-in-out;
}

h2 {
    margin-bottom: 20px;
    color: #333;
    font-size: 24px;
}

input,
select {
    width: 100%;
    padding: 12px;
    margin: 12px 0;
    border: 1px solid #ccc;
    border-radius: 6px;
    transition: border-color 0.3s;
    font-size: 15px;
}

input:focus,
select:focus {
    border-color: #74ebd5;
    outline: none;
}

button {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

button:hover {
    background-color: #45a049;
    transform: scale(1.05);
}

button:active {
    background-color: white;
    color: black;
}

/* Back and Home buttons */
.nav-btn {
    display: inline-block;
    margin: 10px;
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

<div class="container">
    <h2>🔄 Update Pass Status</h2>

    <form action="updatePassStatus" method="post">
        <input type="number" name="id" placeholder="Enter Application ID" required>

        <select name="status">
            <option>Pending</option>
            <option>Approved</option>
            <option>Rejected</option>
        </select>

        <select name="payment">
            <option>Paid</option>
            <option>Unpaid</option>
        </select>

        <br><br>
        <button type="submit">Update</button>
    </form>

    <!-- Navigation buttons -->
    <div style="margin-top:20px;">
        <a href="javascript:history.back()" class="nav-btn back-btn">⬅️ Back</a>
        <a href="adminDashboard.jsp" class="nav-btn home-btn">&#x1F3E0 Home</a>
    </div>
</div>

</body>
</html>
