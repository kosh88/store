<%-- 
    Document   : update_product
    Created on : Apr 30, 2013, 12:45:44 PM
    Author     : kosh
--%>
<link type="text/css" rel="stylesheet" href="styles.css"/>
<%@page import="java.util.List"%>
<%@page import="beans.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="bean" class="beans.accessor" scope="request" />

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
        <h2>Update your product</h2>        
        <%
        String cid = request.getParameter("cid");
        products c = bean.getproduct(Integer.parseInt(cid));
        
        %>
        <form action="proc_updproduct.jsp" method="post">
            <input type="hidden" name="cid" value=<%= cid %> />
            <table>
              
                  <tr>
                    <td>Photo for the product</td>
                       <td><input type="file" name="pic" value=<%= c.getPic() %>  /></td>
                </tr>
                <tr>
                    <td>Name of the product</td>
                    <td><input type="text" name="nm" value=<%= c.getName() %>  /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" value=<%= c.getPrice() %>  /></td>
                </tr>
                <tr>
                    <td>Info</td>
                    <td><input type="text" name="comm" value=<%= c.getComments() %>   /></td>
                </tr>
                
                <tr>
                    <td>Is in offer?
                    <select type="text" name="offer"    >
                    
                    <option ><%= c.getOffer()%></option>    
                    <option value="1">true</option>
                    <option value="0">false</option>
                    </select> </td>            
                </tr>
                 <tr>
                    <td>Offer price</td>
                 <td><input type="text" name="offerprice" value=<%= c.getOfferprice() %>  /></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Update"/> </td>
                </tr>
            </table>
        </form>
        
       
        </div>
                <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
    </body>
</html>