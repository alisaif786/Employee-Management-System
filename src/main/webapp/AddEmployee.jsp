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
    background:linear-gradient(135deg,#11998e,#38ef7d);
}

.card{
    width:500px;
    background:#fff;
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,.3);
}

h1{
    color:#28a745;
    margin-bottom:20px;
}

.message{
    font-size:20px;
    color:#444;
    margin:25px 0;
    font-weight:bold;
}

a{
    display:block;
    width:100%;
    padding:14px;
    margin:15px 0;
    text-decoration:none;
    background:#1565c0;
    color:white;
    border-radius:8px;
    transition:.3s;
    font-size:17px;
}

a:hover{
    background:#0d47a1;
}

.footer{
    margin-top:20px;
    color:#888;
    font-size:14px;
}

</style>

</head>

<body>

<div class="card">

<h1>Employee Added Successfully</h1>

<div class="message">

<%
String data=(String)request.getAttribute("msg");

if(data!=null){
    out.println(data);
}
%>

</div>

<a href="emp.html">Add Another Employee</a>

<a href="View">View Employee Records</a>

<a href="index.html">Home</a>

<div class="footer">
Employee Management System
</div>

</div>

</body>
</html>