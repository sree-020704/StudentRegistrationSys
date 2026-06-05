<%@ page import="com.model.Student" %>

<%
Student s=(Student)request.getAttribute("student");

if(s==null){
    response.sendRedirect("view");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

<style>

body{
    background:#f8f9fa;
    font-family:"Segoe UI", Arial, sans-serif;
}

.container{
    width:500px;
    margin:50px auto;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0 8px 25px rgba(0,0,0,0.15);
}

h2{
    text-align:center;
    color:#202124;
    margin-bottom:25px;
}

label{
    font-weight:600;
}

input[type=text],
input[type=email]{

    width:100%;
    padding:12px;
    margin-top:5px;
    margin-bottom:15px;

    border:1px solid #dadce0;
    border-radius:6px;
}

input[type=text]:focus,
input[type=email]:focus{

    outline:none;
    border:2px solid #FBBC05;
}

input[type=submit]{

    width:100%;
    padding:12px;

    background:#FBBC05;
    color:white;

    border:none;
    border-radius:6px;

    font-size:16px;
    cursor:pointer;
}

input[type=submit]:hover{
    background:#e9a800;
}

.link{
    text-align:center;
    margin-top:15px;
}

a{
    text-decoration:none;
    color:#4285F4;
}

</style>

</head>
<body>

<div class="container">

<h2>Update Student Details</h2>

<form action="update" method="post">

<input type="hidden"
name="id"
value="<%=s.getId()%>">

<label>Name</label>

<input type="text"
name="name"
value="<%=s.getName()%>"
required>

<label>Email</label>

<input type="email"
name="email"
value="<%=s.getEmail()%>"
required>

<label>Course</label>

<input type="text"
name="course"
value="<%=s.getCourse()%>"
required>

<input type="submit"
value="Update Student">

</form>

<div class="link">
<a href="view">Back to Student List</a>
</div>

</div>

</body>
</html>