<%-- 
    Document   : do_order
    Created on : Apr 30, 2013, 2:53:08 PM
    Author     : kosh
--%>


<%@page import="beans.products"%>
<%@page import="beans.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="bean" class="beans.accessor" scope="request"/>

<%
user me = (user) session.getAttribute("me");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
if(me==null){ response.sendRedirect("login.jsp"); } 
else{
    
    String cid = request.getParameter("cid");
    Integer uid = me.getPk() ;
    String name=me.getName();
   
    products c = bean.getproduct(Integer.parseInt(cid));
    Boolean offer=c.getOffer();
    String productname = c.getName();
    Double price = c.getPrice();
    Double offerprice = c.getOfferprice();
    Integer mobile = me.getMobile();
    
    boolean x = bean.storeOrder(cid,uid,name,productname,offer,price,offerprice, mobile);
    if (x==true) response.sendRedirect("main.jsp?ordersucces");  else {response.sendRedirect("main.jsp?fail");}}
%>

        
    </body>
</html>
