
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <title>Title</title>
</head>
<body>

<form method="post" action="addCustomer">

  <div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="name" placeholder="M.D.John">
    <label for="floatingInput">Name</label>
  </div>


  <div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" name="age" placeholder="22">
  <label for="floatingInput">age</label>
</div>

<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
  <label for="floatingInput">Email address</label>
</div>

<div class="form-floating">
  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>

  <button type="Submit" class="btn btn-secondary">Submit</button>

</form>

</body>
</html>
