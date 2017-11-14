<%-- 
    Document   : userInfo
    Created on : Nov 15, 2017, 2:55:26 AM
    Author     : duynghia
--%>

<%@page contentType="text/html" import="com.dn.travel.service.account.User" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    User user = (User)session.getAttribute("user");
%>


<c:import url="/layouts/header.jsp"/>

<div class="container">
    <div class="row">
        <div class="span2" >
            <img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">
        </div>

        <div class="span8">
            <h3>User Name: <%=user.getUsername()%></h3>
            <h6>Họ tên:  <%=user.getName()%></h6>
            <h6>Role: <%=user.getRole()%></h6>
        </div>
    </div>
</div>

<c:import url="/layouts/footer.jsp"/>