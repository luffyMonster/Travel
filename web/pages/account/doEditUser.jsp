<%-- 
    Document   : doEditUser
    Created on : Nov 15, 2017, 2:54:34 AM
    Author     : duynghia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.dn.travel.controllers.*, com.dn.travel.service.account.User" %>

<jsp:useBean id="user" class="com.dn.travel.service.account.User" scope="request"/>
<jsp:setProperty name="user" property="*" />
<% 
    User userOld = (User)session.getAttribute("user");
    AccountController ac = new AccountController();
    user.setId(userOld.getId());
    user.setUsername(userOld.getUsername());
    user.setPassword(userOld.getPassword());
    User res = ac.updateUser(user);
%>
<% if (res != null) {%>
    <% request.setAttribute("messageSuccess", "Cập thành công!");%>
    <% session.setAttribute("user", res); %>
    <jsp:forward page="userInfo.jsp" />

<% } else {%>
    <% request.setAttribute("messageErr", "Cập nhật không thành công!");%>
    <jsp:forward page="userInfo.jsp" />
<% } %>
