<%-- 
    Document   : poc_logout
    Created on : Apr 5, 2013, 6:22:36 PM
    Author     : kosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    session.removeAttribute("me");
    response.sendRedirect("main.jsp?successlogout");



%>
