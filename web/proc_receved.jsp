<%-- 
    Document   : receved
    Created on : May 7, 2013, 1:10:31 PM
    Author     : kosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="beans.accessor" scope="request" />
<%
String cid = request.getParameter("cid");



boolean success = bean.updorder(cid);
if(success) response.sendRedirect("main.jsp?orderReceived");
else response.sendRedirect("main.jsp?error");

%>