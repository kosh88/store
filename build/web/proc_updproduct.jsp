<%-- 
    Document   : proc_updproduct
    Created on : Apr 30, 2013, 1:35:00 PM
    Author     : kosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="beans.accessor" scope="request" />
<%
String cid = request.getParameter("cid");
String pic = request.getParameter("pic");
String nm = request.getParameter("nm");
Double price =  Double.parseDouble(request.getParameter("price"));
String comm = request.getParameter("comm");
Boolean offer = Boolean.parseBoolean( request.getParameter("offer"));
Double offerprice =  Double.parseDouble(request.getParameter("offerprice"));

boolean success = bean.updproduct(cid,pic, nm, price,comm,offer,offerprice);
if(success) response.sendRedirect("main.jsp");
else response.sendRedirect("main.jsp?error");

%>