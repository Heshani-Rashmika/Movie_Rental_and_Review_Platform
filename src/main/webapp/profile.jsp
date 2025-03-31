<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
</head>
<body>
<%@ include file="navbar.jsp" %>

<div class="container mt-5">
    <div class="card" style="max-width: 500px; margin: 0 auto;">
        <div class="card-header bg-primary text-white">
            <h3 class="mb-0">My Profile</h3>
        </div>
        <div class="card-body">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <dl class="row">
                        <dt class="col-sm-4">Full Name</dt>
                        <dd class="col-sm-8">${sessionScope.user.name}</dd>

                        <dt class="col-sm-4">Age</dt>
                        <dd class="col-sm-8">${sessionScope.user.age}</dd>

                        <dt class="col-sm-4">Email</dt>
                        <dd class="col-sm-8">${sessionScope.user.email}</dd>

                        <dt class="col-sm-4">Password</dt>
                        <dd class="col-sm-8">••••••••</dd>
                    </dl>
                </c:when>
                <c:otherwise>
                    <div class="alert alert-warning">
                        No user logged in! <a href="login.jsp" class="alert-link">Login here</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/JS/bootstrap.bundle.min.js"></script>
</body>
</html>