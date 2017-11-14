<%-- 
    Document   : editUser
    Created on : Nov 15, 2017, 2:45:28 AM
    Author     : duynghia
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.dn.travel.controllers.*, com.dn.travel.service.account.User" %>


<% if (session.getAttribute("user") == null ) {%>
<c:redirect url="/pages/account/login.jsp"/>
<% } %>

<% String messageErr = (String)request.getAttribute("messageSuccess"); %>
<% String messageSuccess = (String)request.getAttribute("messageSuccess"); %>


<%
    User user = (User)session.getAttribute("user");
    boolean isAdmin = user.getRole() == "ADMIN";
    boolean isEmp = user.getRole() == "EMPLOYEE";
    boolean isUser = user.getRole() == "USER";
%>
<c:import url="/layouts/header.jsp" />
<div class="container">
    <form class="form-horizontal" method="post" action="<c:url value="doEditUser.jsp" />">
        <div class="form-group">
            <label for="name" class="cols-sm-2 control-label">Họ tên</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" name="name" id="name"  placeholder="Họ tên" value="<%=user.getName()%>"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="username" class="cols-sm-2 control-label">Username</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" name="username" id="username"  placeholder="Username" value="<%=user.getUsername()%>" disabled=""/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="role" class="cols-sm-2 control-label">Chức vụ</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                    <label class="radio-inline"><input type="radio" name="role" value="ADMIN" <%=isAdmin?"checked":""%> >ADMIN</label>
                    <label class="radio-inline"><input type="radio" name="role" value="USER" <%=isUser?"checked":""%>>USER</label>
                    <label class="radio-inline"><input type="radio" name="role" value="EMPLOYEE" <%=isEmp?"checked":""%>>EMPLOYEE</label>
                </div>
            </div>
        </div>

        <div class="form-group ">
            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Cập nhật</button>
        </div>
        <div class="form-group">
            <c:if test="${messageErr != null}" >
                <div class="alert alert-warning">
                    <strong>Lỗi!</strong> Đăng ký không thành công.
                </div>
            </c:if>
            <c:if test="${messageSuccess != null}" >
                <div class="alert alert-success">
                    <strong>Success!</strong> Đăng ký thành công
                </div>
            </c:if>
        </div>
    </form>
</div>
<c:import url="/layouts/footer.jsp" />