<%-- 
    Document   : index
    Created on : Nov 13, 2017, 1:33:41 PM
    Author     : duynghia
--%>
<%@page contentType="text/html" import="com.dn.travel.service.account.User" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<% 
    User user = (User)session.getAttribute("user");
    if (user != null && user.getRole() == "ADMIN"){
        response.sendRedirect("/admin.jsp");
    }

%>

 <c:import url="/layouts/header.jsp"/>
        
 <c:import url="/layouts/footer.jsp"/>