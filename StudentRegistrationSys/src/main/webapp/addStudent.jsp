<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>

<style>

body{
    background:#f1f5f9;
    font-family:Segoe UI, Arial;
}

.container{
    width:500px;
    margin:50px auto;
    background:white;
    padding:35px;
    border-radius:10px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.15);
}

h2{
    text-align:center;
    color:#0f172a;
    margin-bottom:20px;
}

label{
    font-weight:bold;
    color:#334155;
}

input[type=text],
input[type=email]{

    width:100%;
    padding:12px;
    margin-top:5px;
    margin-bottom:15px;

    border:1px solid #cbd5e1;
    border-radius:5px;
}

input[type=submit]{

    width:100%;
    padding:12px;

    background:#2563eb;
    color:white;

    border:none;
    border-radius:5px;
    cursor:pointer;
}

input[type=submit]:hover{
    background:#1d4ed8;
}

.link{
    text-align:center;
    margin-top:15px;
}

a{
    text-decoration:none;
    color:#2563eb;
}

</style>

</head>
<body>

<div class="container">

<h2>Student Registration Form</h2>

<form action="add" method="post">

<label>Student Name</label>

<input type="text"
name="name"
required>

<label>Email Address</label>

<input type="email"
name="email"
required>

<label>Course</label>

<input type="text"
name="course"
required>

<input type="submit"
value="Register Student">

</form>

<div class="link">
<a href="view">View Students</a>
</div>

</div>

</body>
</html>