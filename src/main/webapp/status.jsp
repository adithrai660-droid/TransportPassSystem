<!-- ========================= -->
<!-- status.jsp -->
<!-- ========================= -->

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Status</title>

<style>

body
{
    font-family: Arial;
    background: #f2f2f2;
    text-align: center;
}

.container
{
    width: 400px;
    margin: 100px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
}

a
{
    display: inline-block;
    margin-top: 20px;
    padding: 12px 20px;
    background: blue;
    color: white;
    text-decoration: none;
}

</style>

</head>

<body>

<div class="container">

<h2>
Your Pass Status : Pending
</h2>

<a href="dashboard.jsp">
Back
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