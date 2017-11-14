<%-- 
    Document   : doRegister
    Created on : Nov 14, 2017, 5:29:41 PM
    Author     : ict-sv-nghiatd
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.dn.travel.controllers.*, com.dn.travel.service.account.User" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    AccountController ac = new AccountController();
    User user = ac.login(username, password);
    boolean success = (user != null);
%>

<c:import url="/layouts/header.jsp" />

<% if (success) {%>
    <p>Đăng nhập thành công! </p>
    <% session.setAttribute("user", user); %>
    <c:redirect url="/index.jsp" />

<% } else {%>
    <% request.setAttribute("message", "Xác thực không thành công!");%>
    <jsp:forward page="login.jsp" />
<% } %>

<c:import url="/layouts/footer.jsp" />