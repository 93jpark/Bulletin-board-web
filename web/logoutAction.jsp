<%--
  Created by IntelliJ IDEA.
  User: Joon
  Date: 5/28/2020
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %> <%--  to write javascript --%>
<%@ page import="user.UserDAO" %> <%--  to use User.java class file; for use java bean --%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>JSP Blutein-Board Web Site</title>
</head>
<body>
<%
    session.invalidate();
%>
<script>
    location.href = 'main.jsp';
</script>
</body>
</html>
