<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List" %>
<%@ page import="com.epam.model.UserRegister" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<%
    UserRegister userRegister =(UserRegister) session.getAttribute("user");

%>
<body style="background: linear-gradient(to bottom, #0e0a2d, #5e56b1, #24243e)"/>
<div align="center">
    <h1 style="margin: 170px">You have login successfully</h1>
    <table cellpadding="2" border="2" align="center">

        <tr>
            <td>First name</td>
            <td>Last name</td>
            <td>Username</td>
            <td>Password</td>
            <td>Address</td>
            <td>Email</td>
        </tr>
        <tr>
            <td><%=userRegister.getFirst_name()%></td>
            <td><%=userRegister.getLast_name()%></td>
            <td><%=userRegister.getUsername()%></td>
            <td><%=userRegister.getPassword()%></td>
            <td><%=userRegister.getAddress()%></td>
            <td><%=userRegister.getEmail()%></td>
        </tr>
</div>
<style>
    td{
        border: 2px solid #ffffff;
        color: white;
        text-align: center;
    }
    table{
        margin: 120px;
    }
</style>
<%--<body>--%>
<%--<% UserRegister userRegister=(UserRegister) request.getAttribute("user"); %>--%>
<%--<%= "Hello " + userRegister.getFirst_name()+" " +userRegister.getLast_name()--%>
<%--        +" "+userRegister.getUsername() +" " +userRegister.getEmail()+ "!"%>--%>
<%--</body>--%>
</body>
</html>