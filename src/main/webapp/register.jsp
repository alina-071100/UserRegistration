<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <form action="<%= request.getContextPath() %>/login" method="post"/>

    <title>User Registration page</title>
    <link rel="stylesheet"  href="style.css">

    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    </head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
        <form>
            <label for="chk" aria-hidden="true">Sign up</label>
            <input type="text" name=" first_name" required="">
            <input type="text" name="last_name" required="">
            <input type="text" name="username" placeholder="User name" required="">
            <input type="password" name="password" placeholder="Password" required="">
            <input type="text" name="address" required="">
            <input type="text" name="email" required="">
            <button>Sign up</button>
        </form>

    </div>

<%--    <div class="login">--%>
<%--        <form>--%>
<%--            <label for="chk" aria-hidden="true">Login</label>--%>
<%--            <input type="username" name="username" placeholder="Username" required="">--%>
<%--            <input type="password" name="pswd" placeholder="Password" required="">--%>
<%--            <button>Login</button>--%>
<%--        </form>--%>
<%--    </div>--%>
</div>
</body>
</html>



