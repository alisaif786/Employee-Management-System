<%@page import="java.util.Iterator"%>
<%@page import="com.bean.EmployeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employees</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f7fc;
    padding:40px;
}

.container{
    width:90%;
    max-width:1000px;
    margin:auto;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 30px rgba(0,0,0,.2);
}

h2{
    text-align:center;
    color:#1565c0;
    margin-bottom:25px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#1565c0;
    color:white;
    padding:14px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f8f8f8;
}

tr:hover{
    background:#eef5ff;
}

.message{
    text-align:center;
    color:red;
    font-size:22px;
    margin:30px 0;
}

.buttons{
    text-align:center;
    margin-top:30px;
}

.buttons a{
    text-decoration:none;
    background:#1565c0;
    color:white;
    padding:12px 20px;
    margin:0 10px;
    border-radius:6px;
    display:inline-block;
    transition:.3s;
}

.buttons a:hover{
    background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<h2>Employee Records</h2>

<%

ArrayList<EmployeeBean> al =
(ArrayList<EmployeeBean>)request.getAttribute("list");

if(al==null || al.size()==0){

%>

<div class="message">
No Employee Records Found.
</div>

<%

}else{

%>

<table>

<tr>
<th>Employee ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Salary</th>
<th>Address</th>
</tr>

<%

Iterator<EmployeeBean> i = al.iterator();

while(i.hasNext()){

EmployeeBean eb = i.next();

%>

<tr>

<td><%=eb.getE_id()%></td>
<td><%=eb.getE_fname()%></td>
<td><%=eb.getE_lname()%></td>
<td><%=eb.getE_sal()%></td>
<td><%=eb.getAdd()%></td>

</tr>

<%

}

%>

</table>

<%

}

%>

<div class="buttons">

<a href="emp.html">Add Employee</a>

<a href="index.html">Home</a>

</div>

</div>

</body>
</html>