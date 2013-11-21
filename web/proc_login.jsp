<%-- 
    Document   : proc_login
    Created on : Apr 5, 2013, 5:36:05 PM
    Author     : kosh
--%>

<%@page import="beans.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="beans.accessor" scope="request"/>
<%
String usn = request.getParameter("usn");
String pwd = request.getParameter("pwd");
user me = bean.checkLogin(usn, pwd);
if(me != null) {
    session.setAttribute("me", me);
    response.sendRedirect("main.jsp");
}
else {
    response.sendRedirect("index.jsp?error");
}
%>