<!-- ========================= -->
<!-- applyPass.jsp -->
<!-- ========================= -->

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Apply Pass</title>

<style>

body
{
    font-family: Arial;
    background: #f2f2f2;
}

.form-box
{
    width: 450px;
    margin: 60px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    text-align: center;
}

input,
select
{
    width: 90%;
    padding: 12px;
    margin: 10px;
}

button
{
    width: 95%;
    padding: 12px;
    background: orange;
    color: white;
    border: none;
}

</style>

</head>

<body>

<div class="form-box">

<h2>Apply Transport Pass</h2>

<form action="applyPass" method="post">

<input type="text"
name="name"
placeholder="Enter Name"
required>

<input type="text"
name="source"
placeholder="Source"
required>

<input type="text"
name="destination"
placeholder="Destination"
required>

<select name="passType">

<option value="Daily">
Daily
</option>

<option value="Weekly">
Weekly
</option>

<option value="Monthly">
Monthly
</option>

</select>

<button type="submit">
Proceed Payment
</button>

</form>

</div>

</body>
</html>