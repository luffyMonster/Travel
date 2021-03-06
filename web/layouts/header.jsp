<%-- 
    Document   : header
    Created on : Nov 14, 2017, 1:54:18 PM
    Author     : ict-sv-nghiatd
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.dn.travel.service.account.User"%>


<%
    User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- External JS dependencies -->

        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Titillium+Web:400,300,700&amp;subset=latin,latin-ext" />
        <link rel="stylesheet" href="<c:url value="/public/css/main.css"/>" /> 
        <link rel="stylesheet" href="<c:url value="/node_modules/bootstrap-ui/dist/css/bootstrap-ui.min.css" />"/>
        <script src="<c:url value="/node_modules/jquery/dist/jquery.min.js" />"></script>
        <script src="<c:url value="/node_modules/moment/min/moment-with-locales.min.js" />"></script>
        <script src="<c:url value="/node_modules/bootstrap/dist/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/node_modules/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js" />"></script>
        <script src="<c:url value="/node_modules/select2/dist/js/select2.min.js" />"></script>
        <!-- Bootstrap UI JS -->
        <script src="/node_modules/bootstrap.ui/dist/js/bootstrap-ui.min.js"></script>
        <title>Quản lý tour du lịch</title>
    </head>
    <body>
        <nav class="navbar navbar-static-top navbar-primary">
            <div class="container">
                <!-- Brand and menu toggle -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#kssMenu">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand offset-right-large" title="Bootstrap UI">Travel</a>
                </div>
                <!-- Collapsible menu -->
                <div class="collapse navbar-collapse" id="kssMenu">
                    <ul class="navbar-nav nav">
                        <% if (user != null && user.getRole().equals("ADMIN")) { %>
                        <li class="active"> <a href="<c:url value="/pages/admin/createTour.jsp"/>" >Create tour</a></li>
                            <% } %>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="navbar-icon">
                            <a href="<c:url value="/" />" target="_blank" title="Open site in a new tab">
                                <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                                <span class="visible-xs">Home</span>
                            </a>
                        </li>


                        <li class="dropdown">
                            <% if (user != null) { %>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="My profile">
                                <span class="glyphicon glyphicon-user offset-right" aria-hidden="true"></span>
                                <span class="visible-xs-inline offset-right">My Profile</span>
                                <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header"><%=user.getName()%></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="<c:url value="/pages/account/userInfo.jsp" />">
                                        <span class="glyphicon glyphicon-user offset-right icon-shift-down" aria-hidden="true"></span>
                                        Thông tin tài khoản
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/pages/account/editUser.jsp" />">
                                        <span class="glyphicon glyphicon-edit offset-right icon-shift-down" aria-hidden="true"></span>
                                        Cập nhật thông tin
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/pages/account/doLogout.jsp" />">
                                        <span class="glyphicon glyphicon-off offset-right icon-shift-down" aria-hidden="true"></span>
                                        Đăng xuất
                                    </a>
                                </li>
                            </ul>
                            <% }%>
                            <% if (user == null) { %>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Tài khoản">
                                <span class="glyphicon glyphicon-th offset-right" aria-hidden="true"></span>
                                <span class="visible-xs-inline offset-right">Tài khoản</span>
                                <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header"></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="<c:url value="/pages/account/login.jsp" />">
                                        <span class="glyphicon glyphicon-user offset-right icon-shift-down" aria-hidden="true"></span>
                                        Đăng nhập
                                    </a>
                                </li>
                                <li>
                                    <a href="<c:url value="/pages/account/register.jsp" />">
                                        <span class="glyphicon glyphicon-off offset-right icon-shift-down" aria-hidden="true"></span>
                                        Đăng ký
                                    </a>
                                </li>
                            </ul>
                            <% }%>
                        </li><!-- .dropdown -->
                    </ul><!-- .nav -->
                </div><!-- .collapsible -->
            </div><!-- .container -->
        </nav>
