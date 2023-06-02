<%-- 
    Document   : viewdata
    Created on : 15 May, 2023, 7:02:33 AM
    Author     : chand
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Page</title>
    </head>
    <style>
        body{
            background-color: yellow;
            font-family: arial;
            justify-content: center;
            display: flex;
            align-items: center;
            height: 100vh;
            font-size: 100px;
        }
    </style>
    <body>
        <%
    String name = request.getParameter("name");
    try{
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "1234");
        Statement st = con.createStatement();

        String selectQuery = "SELECT name, email, password FROM chandu WHERE name=?";
        PreparedStatement ps = con.prepareStatement(selectQuery);
        ps.setString(1, name);

        ResultSet rs = ps.executeQuery();

        if(rs.next()) {
            String email = rs.getString("email");
            String password = rs.getString("password");

            out.println("Name: " + name + "<br/>");
            out.println("Email: " + email + "<br/>");
            out.println("Password: " + password + "<br/>");
        } else {
            out.println("No records found for name: " + name);
        }

    } catch(Exception e) {
        out.println(e);
    }
%>

    </body>
</html>
