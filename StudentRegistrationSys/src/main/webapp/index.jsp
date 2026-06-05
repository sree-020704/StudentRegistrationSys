<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Segoe UI, Arial, sans-serif;
}

body{
    background:#f8fafc;
}

.header{
    background:#0f172a;
    color:white;
    padding:25px;
    text-align:center;
}

.container{
    width:500px;
    margin:80px auto;
    background:white;
    padding:40px;
    border-radius:10px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.15);
    text-align:center;
}

h1{
    margin-bottom:25px;
}

.btn{
    display:block;
    width:100%;
    background:#2563eb;
    color:white;
    text-decoration:none;
    padding:14px;
    margin-top:15px;
    border-radius:6px;
    font-size:18px;
}

.btn:hover{
    background:#1d4ed8;
}

</style>

</head>
<body>

<div class="header">
    <h1>ABC College Student Portal</h1>
</div>

<div class="container">

    <h2>Student Registration System</h2>

    <a href="addStudent.jsp" class="btn">
        Register Student
    </a>

    <a href="view" class="btn">
        View Students
    </a>

</div>

</body>
</html>