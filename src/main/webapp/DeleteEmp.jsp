<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Status</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
}

.container{
    width:500px;
    background:white;
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,.35);
}

h1{
    color:#1565c0;
    margin-bottom:25px;
}

.message{
    font-size:20px;
    font-weight:bold;
    color:#333;
    margin-bottom:30px;
    padding:15px;
    background:#f5f5f5;
    border-left:5px solid #1565c0;
    border-radius:5px;
}

a{
    display:block;
    width:100%;
    margin:12px 0;
    padding:13px;
    text-decoration:none;
    background:#1565c0;
    color:white;
    border-radius:6px;
    font-size:16px;
    transition:.3s;
}

a:hover{
    background:#0d47a1;
}

.footer{
    margin-top:20px;
    color:gray;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<h1>Employee Management System</h1>

<div class="message">

<%
String data=(String)request.getAttribute("msg");

if(data!=null){
    out.println(data);
}
%>

</div>

<a href="emp.html">Add Employee</a>

<a href="View">View Employee Records</a>

<a href="index.html">Home</a>

<div class="footer">
Servlet & JSP CRUD Project
</div>

</div>

</body>
</html>