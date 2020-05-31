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
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>JSP Blutein-Board Web Site</title>
</head>
<body>
    <%
        UserDAO userDAO = new UserDAO();
        int result = userDAO.login(user.getUserID(), user.getUserPassword());
        System.out.println(result);
        if (result == 1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
        else if (result == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Invalid Password')");
            script.println("history.back()");
            script.println("</script>");
        }
        else if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Not exist user ID')");
            script.println("history.back()");
            script.println("</script>");
        }
        else if (result == -2) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Database error occurred')");
            script.println("history.back()");
            script.println("</script>");
        }
    %>
</body>
</html>
