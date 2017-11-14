<%-- 
    Document   : createTour
    Created on : Nov 15, 2017, 4:09:00 AM
    Author     : duynghia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:import url="/layouts/header.jsp" />
<div class="container">
    <form class="form-signin" action="doCreateTour.jsp" method="post">
        <h2 class="form-signin-heading">Tạo tour du lịch</h2>
        <label for="name" class="sr-only">Tên tour</label>
        <input type="text" name="name" id="name" class="form-control" placeholder="Tên tour" required autofocus>

        <label for="introduction" class="sr-only">Giới thiệu</label>
        <textarea  name="introduction" id="introduction" class="form-control" required> Giới thiệu </textarea>

        <label for="tourContent" class="sr-only">Nội dung tour</label>
        <textarea name="tourContent" id="tourContent" class="form-control"  required>Nội dung tour</textarea>

        <label for="imageUrl" class="sr-only">Image url</label>
        <input type="text" name="imageUrl" id="imageUrl" class="form-control" placeholder="imageUrl" required>

        <label for="price" class="sr-only">Giá</label>
        <input type="number" name="price" id="price" class="form-control" placeholder="Giá" required>

        <label>Ngày đi</label>
        <input type="date" name="startDate" class="form-control" value = "" />
       

        <label>Ngày về</label>
        <input type="date" name="endDate" class="form-control" value = ""/>
        
        <label for="startPlace" class="sr-only">Nơi đi</label>
        <input type="text" name="startPlace" id="startPlace" class="form-control" placeholder="Nơi đi" required>
        
        <label for="endPlace" class="sr-only">Nơi đến</label>
        <input type="text" name="endPlace" id="endPlace" class="form-control" placeholder="Nơi đến" required>
        
        




        <button class="btn btn-lg btn-primary btn-block" type="submit">Tạo</button>

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