<%-- 
    Document   : login
    Created on : Apr 5, 2013, 5:00:30 PM
    Author     : kosh
--%>
<link type="text/css" rel="stylesheet" href="styles.css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  <div class="title"
        <h1> Welcome to E-STORE </h1>
        </div>
        <div class="login">
         <h1>Login</h1>
        <form action="proc_login.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="usn"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pwd"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Login"/></td>
                </tr>
            </table>
        </form>
       
<%
if(request.getParameter("error") != null) {
    out.println("<h3>Wrong access rights</h3>");
}        
%>
        <h3>Not a user? Click <a href="register.jsp">here</a> to register</h3> </div>
        <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
        </body>
</html>
