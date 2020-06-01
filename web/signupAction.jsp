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
    String userID = null;
    if(session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("UserID");
    }
    if(userID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Already Signed in');");
        script.println("location.href = 'main.jsp';");
        script.println("</script>");
    }

    if(user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || user.getUserGender() == null || user.getUserEmail() == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('You need to fill out all elements')");
        script.println("history.back()");
        script.println("</script>");
    } else {
        UserDAO userDAO = new UserDAO();
        int result = userDAO.signup(user);
        System.out.println("The result is "+result);
        if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('ID already exists')");
            script.println("history.back()");
            script.println("</script>");
        } else {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Successfully registered')");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");

            // Login Session
            session.setAttribute("UserID", user.getUserID());
        }
    }
%>
</body>
</html>
