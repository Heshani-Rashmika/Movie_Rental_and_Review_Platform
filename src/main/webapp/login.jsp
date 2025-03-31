<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>CineCinema - Login</title>
  <link rel="stylesheet" href="CSS/bootstrap.min.css">
  <style>
    body {
      background: linear-gradient(120deg, #2c3e50, #3498db);
      height: 100vh;
    }
    .login-card {
      background: rgba(255, 255, 255, 0.95);
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0,0,0,0.2);
    }
  </style>
</head>
<body class="d-flex align-items-center">
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
      <div class="login-card p-4">
        <h2 class="text-center mb-4">Welcome to CineCinema</h2>

        <%-- Error Messages --%>
        <% if (request.getParameter("error") != null) { %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          <% switch(request.getParameter("error")) {
            case "invalid_credentials": %>Invalid email or password<% break;
          case "file_error": %>System error. Please try again<% break;
        } %>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <% } %>

        <form action="login" method="post">
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" required
                   placeholder="Enter your email">
          </div>
          <div class="mb-4">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required
                   placeholder="Enter your password">
          </div>
          <button type="submit" class="btn btn-primary w-100 mb-3">Sign In</button>
          <div class="text-center">
            <p class="text-muted">Don't have an account?
              <a href="register.jsp" class="text-decoration-none">Create one</a>
            </p>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="JS/bootstrap.bundle.min.js"></script>
</body>
</html>