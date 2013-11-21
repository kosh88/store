<%-- 
    Document   : main
    Created on : Apr 4, 2013, 8:26:59 PM
    Author     : kosh
--%>



<%@page import="beans.user"%>
<%@page import="beans.products"%>
<%@page import="java.util.List"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link type="text/css" rel="stylesheet" href="styles.css"/>

<jsp:useBean id="bean" class="beans.accessor" scope="request"/>
<%
user me = (user) session.getAttribute("me");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to E-STORE</title>
    </head>
    <body>
        <div class="title"
        <h1> Welcome to E-STORE </h1>
        </div>
       <%
List<products> product = bean.getproducts();

%>
<div class="main">
<h1>Products: </h1> 
<%  
for(products c : product)if (c.getOffer() == false) { 
%>
Name: <%= c.getName()%> <br/>
<img src ="<%= "img/" +  c.getPic() %>" />  </b><br/>

<b>Price: <%= c.getPrice()%> </b><br/>
Info:<%= c.getComments()%> </br>

                
<a href= <%= "do_order.jsp?cid=" + c.getPk() %> >Order</a> 

    <%
    if((me!=null) && me.isAdv()){
    %>
 <a href= <%= "update_product.jsp?cid=" + c.getPk() %> >Update</a> 
<a href= <%= "delete_product.jsp?cid=" + c.getPk() %> >Delete</a> 
<hr/>
<%
}
%>

<hr/>
<%
}
%>
 </div>
 <div class="side">
<a href="offers.jsp">Offers</a> </br>
<%
if((me!=null) && (me.isAdv()==false)){
%>


<a href= <%= "my_orders.jsp?cid=" + me.getPk() %> > My orders</a> </br>
<%
}
%>
<%
if(me==null){
%>
<a href="login.jsp">Login</a></br>
<a href="register.jsp">Not register yet??</a></br>
<%
}
%>
<%
if(me!=null){
%>

<a href="proc_logout.jsp">Logout</a></br>
<%
}
%>
<%
if((me!=null) && me.isAdv()){
%>
<a href="add_product.jsp">Add product</a></br>
<a href="rec_orders.jsp?cid=">Records</a>  </br>   
<a href="search_orders.jsp">Search</a>  </br>
<%
}
%>
 </div>
    </body>
</html>
