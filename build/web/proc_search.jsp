<%-- 
    Document   : proc_search
    Created on : May 2, 2013, 5:55:42 PM
    Author     : kosh
--%>
<link type="text/css" rel="stylesheet" href="styles.css"/>
<%@page import="java.util.List"%>
<%@page import="beans.order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="bean" class="beans.accessor" scope="request" />
<%
   Integer mob= Integer.parseInt(request.getParameter("search"));
  
   List<order> orders = bean.getsearch(mob);
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
         <body>
          <div class="title"
        <h1> Welcome to E-STORE </h1>
        </div>
             <div class="search">
        <%  
for(order c : orders) { if ((c.getReceived() == 0) && (mob != null)) {
%>
</b><br/>
   Day of the order: <%= c.getDay() %></b><br/>
   Telephone of the user: <%= c.getMobile() %></b><br/>
   Name of the user: <%= c.getUser_name() %></b><br/>
   Name of the product: <%= c.getProduct_name() %></b><br/>
   If is 0 is NOT in offer, If is 1 is IN offer: <%= c.getOffer() %></b><br/> 
   Normal price: <%= c.getPrice() %></b><br/> 
   Offer price: <%= c.getOfferprice() %></b><br/> 

   <a href= <%= "proc_receved.jsp?cid=" + c.getOpk() %> >Paid </a> 
        <%
            }  else if(c.getMobile() == null ) {
         %>
         No order found go back and search again!
         <%}}%>
</div>
    </head>
   
     
 
    <div class="side">       
         <h3> <a href="main.jsp">Main </h3>
              <a href= <%= "search_orders.jsp" %> >Back </a> 
       </div>
    </body>
</html>
