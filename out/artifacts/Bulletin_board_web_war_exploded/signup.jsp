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
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="bbs.jsp">Board</a>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown mr-auto mt-2 mt-lg-0">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button"
                   aria-expanded="false" aria-haspopup="true">Access<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="active"><a href="login.jsp">Login</a></li>
                    <li><a href="signup.jsp">Sign-up</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <div class="col-lg-12"></div>
    <div class="col-lg-12" style="padding-top: 20px">
        <div class="jumbotron" style="padding-top: 20px;">
            <form method="post" action="signupAction.jsp">
                <h3 style="text-align: center;">Member Register</h3>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="userPassword" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Name" name="userName" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Email" name="userEmail" maxlength="20">
                </div>
                <div class="form-group" style="text-align: center;">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-primary active">
                            <input type="radio" name="userGender" value="male" autocomplete="off">Male
                        </label>
                        <label class="btn btn-primary">
                            <input type="radio" name="userGender" value="female" autocomplete="off">Female
                        </label>
                    </div>
                </div>
                <input class="btn btn-primary form-control" type="submit" value="SIGN UP">
            </form>
        </div>
    </div>

    <div class="col-lg-12"></div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="./js/bootstrap.js"></script>
</body>
</html>
