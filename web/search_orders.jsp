<%-- 
    Document   : search_orders
    Created on : May 2, 2013, 5:25:02 PM
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
        <div class="search">
         <form action="proc_search.jsp" method="post">
                <table>
              
                  <tr>
                    <td>Search an order info by mobile:</td>
                       <td><input type="text" name="search"   /></td>
                </tr>
            
          <tr>
                    <td colspan="2"><input type="submit" value="Search"/> </td>
                      
                </tr>
                
            </table>
        </div>
        <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
        </form>
    </body>
</html>
