<%-- 
    Document   : register
    Created on : Nov 14, 2017, 5:21:48 PM
    Author     : ict-sv-nghiatd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:import url="/layouts/header.jsp" />
<div class="container">
    <form class="form-horizontal" method="post" action="<c:url value="doRegister.jsp" />">
        <div class="form-group">
            <label for="name" class="cols-sm-2 control-label">Họ tên</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="username" class="cols-sm-2 control-label">Username</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="password" class="cols-sm-2 control-label">Mật khẩu</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                    <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="confirm" class="cols-sm-2 control-label">Xác nhận mật khẩu</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                    <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="role" class="cols-sm-2 control-label">Chức vụ</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                    <label class="radio-inline"><input type="radio" name="role" value="ADMIN">ADMIN</label>
                    <label class="radio-inline"><input type="radio" name="role" value="USER">USER</label>
                    <label class="radio-inline"><input type="radio" name="role" value="EMPLOYEE">EMPLOYEE</label>
                </div>
            </div>
        </div>

        <div class="form-group ">
            <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
        </div>
        <div class="login-register">
            <a href="<c:url value="login.jsp" />">Đăng nhập</a>
        </div>
    </form>
</div>
<c:import url="/layouts/footer.jsp" />