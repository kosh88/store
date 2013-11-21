<%-- 
    Document   : delete_product
    Created on : Apr 24, 2013, 10:48:24 AM
    Author     : kosh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<jsp:useBean id="bean" class="beans.accessor" scope="request" />
<%
String cid = request.getParameter("cid");
boolean success = bean.delComment(Integer.parseInt(cid));
if(success) response.sendRedirect("main.jsp");
else response.sendRedirect("main.jsp?error");
%>