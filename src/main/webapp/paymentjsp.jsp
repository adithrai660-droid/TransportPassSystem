<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style>

body
{
    font-family: Arial;
    background-color: #f2f2f2;
}

.container
{
    width: 400px;
    margin: 100px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    text-align: center;
}

input
{
    width: 90%;
    padding: 10px;
    margin: 10px;
}

button
{
    padding: 10px 20px;
    background-color: green;
    color: white;
    border: none;
}

</style>

</head>

<body>

<div class="container">

<h2>Payment Page</h2>

<form action="payment" method="post">

<input type="text"
name="name"
placeholder="Enter Name"
required>

<input type="text"
placeholder="Card Number"
required>

<input type="text"
placeholder="CVV"
required>

<button type="submit">
Pay Now
</button>

</form>

</div>

</body>
</html>