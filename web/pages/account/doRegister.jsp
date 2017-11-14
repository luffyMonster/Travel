<%-- 
    Document   : doRegister
    Created on : Nov 14, 2017, 5:29:41 PM
    Author     : ict-sv-nghiatd
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.dn.travel.controllers.*, com.dn.travel.service.account.User" %>

<jsp:useBean id="user" class="com.dn.travel.service.account.User" scope="request"/>
<jsp:setProperty name="user" property="*" />
<% 
    AccountController ac = new AccountController();
    String res = ac.createUser(user);
%>
<% if (res == null) {%>
    <% request.setAttribute("messageSuccess", "Đăng ký thành công!");%>
    <jsp:forward page="register.jsp" />

<% } else {%>
    <% request.setAttribute("messageErr", "Đăng ký không thành công!");%>
    <jsp:forward page="register.jsp" />
<% } %>