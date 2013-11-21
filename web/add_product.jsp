<%-- 
    Document   : add_product
    Created on : Apr 9, 2013, 10:07:10 PM
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
    <body>
         <div class="title"
        <h1> Welcome to E-STORE </h1>
        </div>
        <div class="login">
        <h1>Add new product:</h1>
         <form action="proc_newproduct.jsp" method="post">
            <table border="0">  
                  <tr>
                    <td>Photo for the product</td>
                       <td><input type="file" name="pic" /></td>
                </tr>
                <tr>
                    <td>Name of the product</td>
                    <td><input type="text" name="nm" /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" /></td>
                </tr>
                <tr>
                    <td>Info</td>
                    <td><input type="text" name="comm"  /></td>
                </tr>
                
                <tr>
                    <td>Is in offer?
                    <select type="text" name="offer" >
                    <option value="1">true</option>
                    <option value="0">false</option>
                    </select> </td>            
                </tr>
                 <tr>
                    <td>Offer price</td>
                 <td><input type="text" name="offerprice" value="0" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Add product"/></td>
                </tr>
            </table>
        </form>
        </div>
          <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
    </body>
</html>
