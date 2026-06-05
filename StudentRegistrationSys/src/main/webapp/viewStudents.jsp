<%@ page import="java.util.List" %>
<%@ page import="com.model.Student" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;
    padding:20px;
}

h2{
    text-align:center;
    color:#333;
}

table{
    width:80%;
    margin:auto;
    border-collapse:collapse;
    background:white;
}

th{
    background:#2563eb;
    color:white;
    padding:12px;
}

td{
    padding:10px;
    text-align:center;
    border:1px solid #ddd;
}

tr:nth-child(even){
    background:#f9f9f9;
}

a{
    text-decoration:none;
    color:#2563eb;
    font-weight:bold;
}

.add-btn{
    display:block;
    width:200px;
    margin:20px auto;
    text-align:center;
    padding:10px;
    background:#2563eb;
    color:white;
    border-radius:5px;
}
</style>

</head>
<body>

<h2>Student List</h2>

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Course</th>
    <th>Actions</th>
</tr>

<%
List<Student> studentList =
(List<Student>) request.getAttribute("students");

if(studentList != null && !studentList.isEmpty()){

    for(Student s : studentList){
%>

<tr>
    <td><%= s.getId() %></td>
    <td><%= s.getName() %></td>
    <td><%= s.getEmail() %></td>
    <td><%= s.getCourse() %></td>

    <td>
        <a href="edit?id=<%= s.getId() %>">Edit</a>
        |
        <a href="delete?id=<%= s.getId() %>"
           onclick="return confirm('Are you sure?')">
           Delete
        </a>
    </td>
</tr>

<%
    }

}else{
%>

<tr>
    <td colspan="5">No Students Found</td>
</tr>

<%
}
%>

</table>

<a href="addStudent.jsp" class="add-btn">
Add New Student
</a>

</body>
</html>