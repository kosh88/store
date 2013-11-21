<%-- 
    Document   : rec_orders
    Created on : May 1, 2013, 9:15:35 PM
    Author     : kosh
--%>
<link type="text/css" rel="stylesheet" href="styles.css"/>
<%@page import="java.util.List"%>
<%@page import="beans.order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="beans.accessor" scope="request"/>
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
        <div class="rec">
              <%
List<order> order = bean.getorders();

%>
<h1>Full order list: </h1>
<%  
for(order c : order) { 
%>
The user is:<%= c.getUser_name() %> <br/>
<b>If i 0 is Not in offer, if is 1 is in offer: <%= c.getOffer() %> </b><br/>
<b>The offer Price is:<%= c.getOfferprice() %> </b><br/>
<b>Normal price is: <%= c.getPrice() %> </b><br/>
<b> Day of the order:<%= c.getDay() %> </b><br/>
<b> Status if received (1) or not (0):<%= c.getReceived() %> </b><br/><br/>

<%
}
%>
        </div>
   <div class="side"> 
        <h3> <a href="main.jsp">Main </h3>
        </div>
    </body>
</html>
