<%-- 
    Document   : doCreateTour
    Created on : Nov 15, 2017, 4:27:28 AM
    Author     : duynghia
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" import="com.dn.travel.controllers.*, com.dn.travel.service.tour.Tour" pageEncoding="UTF-8"%>

<jsp:useBean id="tour" class="com.dn.travel.service.tour.Tour" scope="request"/>
<jsp:setProperty name="tour" property="*" />

<% 
    TourController tc = new TourController();
    String res = tc.createTour(tour);
%>
<% if (res == null) {%>
    <% request.setAttribute("messageSuccess", "Tạo tour thành công!");%>
    <jsp:forward page="createTour.jsp" />

<% } else {%>
    <% request.setAttribute("messageErr", "Tạo tour không thành công!");%>
    <jsp:forward page="createTour.jsp" />
<% } %>