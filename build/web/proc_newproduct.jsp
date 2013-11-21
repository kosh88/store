<%-- 
    Document   : proc_newproduct
    Created on : Apr 17, 2013, 11:27:06 AM
    Author     : kosh
--%>

<%@page import="beans.products"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="bean" class="beans.accessor" scope="request"/>
<%
String pic = request.getParameter("pic");
String nm = request.getParameter("nm");
Double price =  Double.parseDouble(request.getParameter("price"));
String comm = request.getParameter("comm");
Boolean offer = Boolean.parseBoolean( request.getParameter("offer"));
Double offerprice =  Double.parseDouble(request.getParameter("offerprice"));

boolean x = bean.addProduct(pic, nm, price,comm,offer,offerprice);

if(x == false) response.sendRedirect("add_product.jsp?error");
else {
   response.sendRedirect("main.jsp?success");
}
%>
