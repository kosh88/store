<%-- 
    Document   : do_register
    Created on : Apr 7, 2013, 4:37:35 PM
    Author     : kosh
--%>
<%@page import="beans.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="bean" class="beans.accessor" scope="request"/>
<%
String usn = request.getParameter("usn");
String pwd = request.getParameter("pwd");
String mob = request.getParameter("mob");
user me = bean.registerUser(usn, pwd , mob);
if(me == null) response.sendRedirect("register.jsp?error");
else {
    session.setAttribute("me", me);
    response.sendRedirect("main.jsp");
}
%>
