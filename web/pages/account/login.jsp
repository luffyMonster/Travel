<%-- 
    Document   : login
    Created on : Nov 14, 2017, 5:06:04 PM
    Author     : ict-sv-nghiatd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:import url="/layouts/header.jsp" />
<div class="container">
    <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="username" class="sr-only">Username</label>
        <input type="text" id="username" class="form-control" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="remember" value="remember-me"> Nhớ mật khẩu
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
        <div class="login-register">
            Chưa có tài khoản? <a href="<c:url value="login.jsp" />">Đăng ký</a>
        </div>
    </form>
</div>

<c:import url="/layouts/footer.jsp" />