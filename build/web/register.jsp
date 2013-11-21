<%-- 
    Document   : register
    Created on : Apr 7, 2013, 4:33:36 PM
    Author     : kosh
--%>
<link type="text/css" rel="stylesheet" href="styles.css"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function checkPass (a, b) {
                if(a != b) {
                    alert("passwords do not match");
                    document.getElementById("pwd").focus()
                }
            }
        </script>
    </head>
    <body>
        <div class="title"
        <h1> Welcome to E-STORE </h1>
        </div>
        <div class="login">
        <h1>Register</h1>
        <form action="do_register.jsp" method="post">
            <table border="0">             
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="usn"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pwd" id="pwd"/></td>
                </tr>
                <tr>
                    <td>Retype Password</td>
                    <td><input type="password" name="pwd2" onchange="checkPass(pwd.value, pwd2.value);"/></td>
                </tr>
                    <tr>
                    <td>Telephone:</td>
                    <td><input type="text" name="mob" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Register"/></td>
                </tr>
            </table>
        </form>
        </DIV>
          <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
    </body>

</html>
