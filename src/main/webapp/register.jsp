<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="CSS/bootstrap.min.css">
  <title>Register Customer</title>
</head>
<body>
<div class="container mt-5" style="max-width: 500px;">
  <%-- Display error message if present --%>
  <% if (request.getParameter("error") != null) { %>
  <div class="alert alert-danger mb-3">
    <% if (request.getParameter("error").equals("missing_fields")) { %>
    Please fill in all required fields.
    <% } else if (request.getParameter("error").equals("file_error")) { %>
    System error. Please try again later.
    <% } %>
  </div>
  <% } %>

  <h2 class="mb-4">Customer Registration</h2>
  <form method="post" action="addCustomerServlet">
    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="name" name="name" placeholder="M.D.John" required>
      <label for="name">Full Name</label>
    </div>
    <div class="form-floating mb-3">
      <input type="number" class="form-control" id="age" name="age" placeholder="22" min="1" max="120">
      <label for="age">Age</label>
    </div>
    <div class="form-floating mb-3">
      <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
      <label for="email">Email address</label>
    </div>
    <div class="form-floating mb-3">
      <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
      <label for="password">Password</label>
    </div>
    <button type="submit" class="btn btn-primary">Register</button>
  </form>
</div>
</body>
</html>