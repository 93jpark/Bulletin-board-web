<%--
  Created by IntelliJ IDEA.
  User: Joon
  Date: 5/28/2020
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width", initial-scale="1">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <title>JSP Blutein-Board Web Site</title>
</head>
<body>

<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    System.out.println(userID);
%>

<nav class="navbar navbar-light navbar-expand-lg bg-light">
    <a class="navbar-brand" href="#">JSP BBS</a>
    <button class="navbar-toggler" type="button"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- BANNER MENU LIST -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active"><a class="nav-link" href="index.jsp">Main</a></li>
            <li class="nav-item"><a class="nav-link" href="bbs.jsp">Board</a></li>
        </ul>
        <%
            if(userID == null) {
        %>
        <!-- UPPER RIGHT SECTION @ GUEST -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <div class="dropdown-toggle" href="#" data-toggle="dropdown" role="button"
                   aria-expanded="false" aria-haspopup="true">Access<span class="caret"></span></div>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="login.jsp">Login</a>
                    <a class="dropdown-item" href="signup.jsp">Sign-up</a>
                </div>
            </li>
        </ul>
        <%
            } else {
        %>
        <!-- UPPER RIGHT SECTION @ MEMBER ON -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown mr-auto mt-2 mt-lg-0">
                <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button"
                   aria-expanded="false" aria-haspopup="true">Member<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="logoutAction.jsp">sign out</a></li>
                </ul>
            </li>
        </ul>
        <%
            }
        %>


    </div>
</nav>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="./js/bootstrap.js"></script>
</body>
</html>
