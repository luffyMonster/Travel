<%-- 
    Document   : doLogout
    Created on : Nov 15, 2017, 2:40:41 AM
    Author     : duynghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
session.invalidate();
response.sendRedirect(request.getContextPath());
%>