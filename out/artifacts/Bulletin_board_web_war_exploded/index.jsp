<%--
  Created by IntelliJ IDEA.
  User: Joon
  Date: 5/28/2020
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width", initial-scale="1">
  <link rel="stylesheet" href="./css/bootstrap.css">
  <title>JSP Blutein-Board Web Site</title>
</head>
<body>
  <nav class="navbar navbar-light navbar-expand-lg bg-light">
    <a class="navbar-brand" href="#">JSP BBS</a>
    <button class="navbar-toggler" type="button"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item"><a class="nav-link" href="index.jsp">Main</a></li>
        <li class="nav-item"><a class="nav-link" href="bbs.jsp">Board</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button"
              aria-expanded="false" aria-haspopup="true">Access<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="login.jsp">Login</a></li>
            <li><a href="signup.jsp">Sign-up</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <script>
    location.href = 'main.jsp';
  </script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="./js/bootstrap.js"></script>
  </body>
</html>
